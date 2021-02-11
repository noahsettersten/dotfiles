# Custom commands
Pry::Commands.command(/^$/, 'repeat last command') do
  pry_instance.run_command Pry.history.to_a.last
end

if defined?(Sidekiq)
  require 'sidekiq/api'

  def queue_by_name(name)
    return Sidekiq::RetrySet.new if name.start_with?('ret')
    return Sidekiq::ScheduledSet.new if name.start_with?('sch')

    Sidekiq::Queue.new(name)
  end

  def collect_queues
    Sidekiq::Queue.all.map { |q| { name: q.name, size: q.size } }
  end

  def print_queue_contents
    queues = collect_queues

    output.puts('Sidekiq queues:')
    queues.each { |q| output.puts("#{format('%16s', q[:name])}: #{q[:size]} jobs") }
    output.puts('------------------------')
    output.puts("         Retries: #{queue_by_name('retry').size} jobs")
    output.puts("       Scheduled: #{queue_by_name('scheduled').size} jobs")
  end

  Pry.commands.block_command('sq_list') do
    print_queue_contents
  end

  Pry.commands.block_command('sql') do
    print_queue_contents
  end

  Pry.commands.block_command(/^sq_size (.*?)$/) do |queue_name|
    queue = queue_by_name(queue_name)
    output.puts("'#{queue.name}' size: #{queue.size}")
  end

  Pry.commands.block_command(/^sq_clear (.*?)$/) do |queue_name|
    queue = queue_by_name(queue_name)
    queue.clear
    output.puts("Cleared '#{queue.name}'")
  end

  Pry.commands.block_command('sq_clear_all') do
    print_queue_contents
    Sidekiq::Queue.all.each(&:clear)
    Sidekiq::RetrySet.new.clear
    Sidekiq::ScheduledSet.new.clear
    output.puts('Cleared all Sidekiq queues, including RetrySet and ScheduledSet')
  end
end

class Object
  # list methods which aren't in superclass
  def local_methods(obj = self)
    (obj.methods - obj.class.superclass.instance_methods).sort
  end
end
