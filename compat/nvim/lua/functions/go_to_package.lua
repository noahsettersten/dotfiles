-- Create a GitHub repo and a plugin:
-- https://www.linode.com/docs/guides/write-a-neovim-plugin-with-lua/
-- https://dev.to/evilcel3ri/how-i-wrote-my-first-neovim-plugin-357h

-- Inspired by https://github.com/dkarter/dotfiles/commit/4db8ce69379be13bf94717804963e516dca51198
local M = {}

function CurrentFilename()
  -- local filename = vim.fn.expand('%'):match("^.+/(.+)$")
  -- print(filename)

  return vim.fn.expand('%')
end

function CurrentLineContents()
  local linenr = vim.api.nvim_win_get_cursor(0)[1]
  local curline = vim.api.nvim_buf_get_lines(
    0, linenr - 1, linenr, false)[1]
  -- print("Line: ", curline)

  return curline
end

function ParseNodePackage(line)
  -- Matches lines like: "webpack-cli": "^3.3.2"
  return line:match("([@%w/-]+)")
end

function ParseRubygemsPackage(line)
  -- Matches lines like: gem 'rails', '7.0.1'
  return line:match([[gem '([%w_-]+)']]) or
      line:match([[gem "([%w_-]+)"]])
end

function ParseElixirPackage(line)
  -- Matches lines like {:phoenix_live_view, "~> 0.18.1"},
  return line:match([[{:([%w_]+),]])
end

function ParsePackageName(line, filename)
  if filename == "package.json" then
    return ParseNodePackage(line)
  elseif filename == "mix.exs" then
    return ParseElixirPackage(line)
  elseif filename == "Gemfile" then
    return ParseRubygemsPackage(line)
  end
end

function NodeDocsUrl(package_name)
  return "https://www.npmjs.com/package/" .. package_name
end

function RubygemsDocsUrl(package_name)
  return "https://rubygems.org/gems/" .. package_name
end

function HexDocsUrl(package_name)
  return "https://hex.pm/packages/" .. package_name
end

function PackageDocsUrl(package_name, filename)
  if filename == "package.json" then
    return NodeDocsUrl(package_name)
  elseif filename == "mix.exs" then
    return HexDocsUrl(package_name)
  elseif filename == "Gemfile" then
    return RubygemsDocsUrl(package_name)
  end
end

-- :so ~/.config/lvim/lua/functions/go_to_package.lua
-- :call v:lua.OpenPackageDocs()
-- -or-
-- https://github.com/nvim-lua/plenary.nvim/blob/master/lua/plenary/reload.lua

function M.OpenPackageDocs()
  local curline = CurrentLineContents()
  local filename = CurrentFilename()

  local package_name = ParsePackageName(curline, filename)
  local url = PackageDocsUrl(package_name, filename)

  if url == '' then
    print('Library lookup not supported for ' .. filename)
  else
    -- Only works on macOS right now.
    -- This could be made more robust by detecting the platform: https://stackoverflow.com/a/18864453
    os.execute(string.format('open "%s"', url))
  end
end

function M.OpenGitHub()
  -- local curline = CurrentLineContents()
  -- local filename = CurrentFilename()

  -- TODO :Parse GitHub repository from file?
end

-- Use with:
-- vim.keymap.set("n", "gx", require("functions.go_to_package").OpenPackageDocs, { desc = "Open package docs" })

-- vim.cmd[[
--   autocmd FileType defx call v:lua.require('yourdefx').defx_my_settings()
-- ]]

return M
