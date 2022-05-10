local map = vim.api.nvim_set_keymap
map('n', '<Leader>d', ':NvimTreeToggle<CR>', {noremap = true})
map('n', '<Leader>D', ':NvimTreeFindFile<CR>', {noremap = true})

map('n', '<C-f>', '<cmd>Telescope find_files<CR>', {noremap = true})
map('n', '<Leader><C-f>', '<cmd>Telescope live_grep<CR>', {noremap = true})
map('n', '<Leader><C-b>', '<cmd>Telescope buffers<CR>', {noremap = true})
map('n', '<Leader><C-h>', '<cmd>Telescope help_tags<CR>', {noremap = true})

-- TODO: Helpful custom keystrokes from my old .vimrc
-- map <leader>1 :set nonumber! number?<CR>

-- " Disable Ex mode key and help lookup.
-- noremap Q <nop>
-- " map K <Nop>
-- nmap <leader>K <Plug>(devdocs-under-cursor)
-- " TODO: Figure out how to open in a w3m tmux pane
-- " https://github.com/rhysd/devdocs.vim/issues/4
-- " https://github.com/rhysd/devdocs.vim/commit/92f6937d9d08a7d29475ee69b5aa557fcc9d7d56
-- " let g:devdocs_open_cmd = 'tmux split-window -h -p 30; w3m'

-- noremap SS :w<CR>

-- " Adjust viewports to the same size
-- map <Leader>= <C-w>=

-- " Space to toggle folds.
-- nnoremap <Space> za
-- vnoremap <Space> za

-- "Shortcut to toggle `set list` which turns on and off the whitespace markers
-- nmap <leader>il :set list!<CR>
-- set listchars=tab:▸\ ,eol:¬,trail:~,extends:>,precedes:<

-- " <m-j> and <m-k> to drag lines in any mode (m is alt/option)
-- noremap ∆ :m+<CR>
-- noremap ˚ :m-2<CR>
-- inoremap ∆ <Esc>:m+<CR>
-- inoremap ˚ <Esc>:m-2<CR>
-- vnoremap ∆ :m'>+<CR>gv
-- vnoremap ˚ :m-2<CR>gv
--
--
-- " Allow resizing splits with =/- for up/down and +/_ right/left (repeatable w/hold too)
-- if bufwinnr(1)
  -- map = <C-W>+
  -- map - <C-W>-
  -- map _ <C-W>>
  -- map + <C-W><
-- endif

-- Ruby/Rails:
-- map <leader>gr :topleft 40 :split config/routes.rb<CR>
-- map <leader>gg :topleft 40 :split Gemfile<CR>

-- Spotify:
-- nnoremap <leader>mc :echo system('spotify status')<CR>
-- nnoremap <leader>mp :call system('spotify pause')<CR>
-- nnoremap <leader>mn :call system('spotify next')<CR>
--
-- W3m:
-- nnoremap <leader>ws :W3mVSplit
-- " nnoremap <leader>wr :W3m ruby

-- Prose:
-- nnoremap <leader>sc :setlocal spell spelllang=en_us<CR>:set wrap<CR>
