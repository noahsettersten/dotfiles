#!/usr/bin/env ruby
# frozen_string_literal: true

#
# Run tests for files changed in the current branch
#
# This script identifies Ruby files changed in your branch and runs their
# corresponding test files. It handles:
# - Direct test file changes (runs them)
# - Source file changes (finds and runs corresponding tests)
# - Uncommitted changes and committed changes
#
# Usage: bin/test-changes [options]
#
# Options:
#   --base BRANCH    Compare against BRANCH (default: main)
#   --uncommitted    Only test uncommitted changes
#   --dry-run        Show which tests would run without running them
#   --help           Show this help message
#

require "optparse"
require "pathname"

APP_ROOT = Dir.pwd
BASE_BRANCH = "main"

def info(message) = puts "\e[36m#{message}\e[0m" # Cyan
def success(message) = puts "\e[32m#{message}\e[0m" # Green
def warning(message) = puts "\e[33m#{message}\e[0m" # Yellow
def error(message) = puts "\e[31m#{message}\e[0m" # Red

# Get changed files from git
def changed_files(base_branch:, uncommitted:)
  if uncommitted
    `git diff --name-only HEAD`.split("\n")
  else
    `git diff --name-only #{base_branch}...HEAD`.split("\n")
  end
end

# Convert a source file path to its corresponding test file path
def source_to_test_path(source_path)
  # app/controllers/groups/exports_controller.rb -> test/controllers/groups/exports_controller_test.rb
  # app/models/group.rb -> test/models/group_test.rb
  # lib/foo/bar.rb -> test/lib/foo/bar_test.rb

  return nil unless source_path.end_with?(".rb")

  test_path =
    source_path.sub(%r{^app/}, "test/").sub(%r{^lib/}, "test/lib/").sub(/\.rb$/, "_test.rb")

  File.exist?(File.join(APP_ROOT, test_path)) ? test_path : nil
end

# Check if a file is a test helper or fixture (not a runnable test)
def helper_or_fixture?(file)
  file.match?(%r{test/(test_helper|support|fixtures)/}) || file.end_with?("test_helper.rb")
end

# Process changed files and return list of test files to run
def find_test_files(changed_files)
  test_files = []
  skipped_helpers = []

  changed_files.each do |file|
    next unless file.end_with?(".rb")

    if file.start_with?("test/") && file.end_with?("_test.rb")
      # Direct test file change
      test_files << file
    elsif file.start_with?("test/") && helper_or_fixture?(file)
      # Test helper or fixture - skip but track
      skipped_helpers << file
    else
      # Source file - find corresponding test
      test_file = source_to_test_path(file)
      if test_file
        test_files << test_file
      else
        warning "⚠️  No test file found for: #{file}"
      end
    end
  end

  if skipped_helpers.any?
    info "\nℹ️  Skipped helper/fixture files (re-run all tests to verify):"
    skipped_helpers.each { |file| puts "  - #{file}" }
  end

  test_files.filter { File.exist?(_1) }.uniq.sort
end

# Parse command line options
base_branch = BASE_BRANCH
uncommitted = false
dry_run = false

OptionParser
  .new do |opts|
    opts.banner = "Usage: bin/test-changes [options]"
    opts.on("-h", "--help", "Show this help message") do
      puts opts
      exit
    end
    opts.on("-b", "--base BRANCH", "Compare against BRANCH (default: #{BASE_BRANCH})") do |b|
      base_branch = b
    end
    opts.on("-u", "--uncommitted", "Only test uncommitted changes") { uncommitted = true }
    opts.on("-d", "--dry-run", "Show which tests would run without running them") { dry_run = true }
  end
  .parse!

info "\n🔍 Finding changed files..."

files = changed_files(base_branch: base_branch, uncommitted: uncommitted)

if files.empty?
  warning "\n✓ No changed files found"
  exit 0
end

info "Found #{files.length} changed file(s)\n"

test_files = find_test_files(files)

if test_files.empty?
  warning "\n✓ No test files found for changed files"
  exit 0
end

success "\n📝 Test files to run (#{test_files.length}):"
test_files.each { |file| puts "  - #{file}" }

if dry_run
  info "\n✓ Dry run complete - no tests executed"
  exit 0
end

info "\n🧪 Running tests...\n\n"

# Run the tests
exec "bin/rails test #{test_files.join(" ")}"
