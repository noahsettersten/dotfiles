-- set nocompatible " Disable vi compatibility
-- filetype plugin indent on
-- syntax on
vim.o.synmaxcol = 220

-- " Smart tab settings
-- set shiftwidth=2 shiftround tabstop=2 softtabstop=2 expandtab smarttab
vim.o.wrap = false --Disable text wrapping by default
-- set copyindent

-- set backspace=indent,eol,start

vim.opt.number = true
vim.opt.cmdheight = 2

-- set ttyfast lazyredraw
-- set splitbelow splitright
-- set confirm
-- set notimeout ttimeout ttimeoutlen=10
-- set switchbuf=useopen,usetab "Attempt to edit currently open files instead of opening multiple buffers. FIXME: Not sure if this is working.
-- set formatoptions=1
-- set formatoptions-=or
-- set linebreak
-- set virtualedit=all

-- au VimResized * :wincmd =

vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- Also use ; for commands
vim.api.nvim_set_keymap('n', ';', ':', {noremap = true})

-- set iskeyword-=\.

-- " Breaks highlighting of vimrc; leave at bottom
-- set breakat=\ ^I!@*-+;:,./?\(\[\{

