-- Inspired by https://github.com/dkarter/dotfiles/commit/4db8ce69379be13bf94717804963e516dca51198

function OpenNpmDocs()
end

function OpenGemDocs()
end

function OpenHexDocs()
end

function OpenGitHub()
end

function OpenPackageDocs()
end

vim.keymap.set("n", "<leader>gx", function() OpenPackageDocs() end, { desc = "Open package docs" })
vim.keymap.set("n", "<leader>gh", function() OpenGitHub() end, { desc = "Open package source on GitHub" })

-- vim.cmd[[
--   autocmd FileType defx call v:lua.require('yourdefx').defx_my_settings()
-- ]]
