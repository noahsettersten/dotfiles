-- set wildignore+=*/db/dumps/*,*/coverage/*,*/public/uploads/*,*/public/images/*,*/vim_sessions/*,*/node_modules/*,*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
-- runtime macros/matchit.vim      "Extend % for matching brackets, if/end, and more
-- set path+=**
-- set wildmenu

-- " autoread and autowrite http://albertomiorin.com/blog/2012/12/10/autoread-and-autowrite-in-vim/
-- augroup save
  -- au!
  -- au FocusLost * wall
-- augroup END
-- set nohidden nobackup noswapfile nowritebackup autoread autowrite autowriteall

-- " persistent-undo
-- set undofile undodir=$HOME/.vim/undo

-- " Make sure Vim returns to the same line when you reopen a file.
-- augroup line_return
    -- au!
    -- au BufReadPost *
        -- \ if line("'\"") > 0 && line("'\"") <= line("$") |
        -- \     execute 'normal! g`"zvzz' |
        -- \ endif
-- augroup END


-- TODO: Auto-open nvim-tree, except for these:
-- autocmd FileType vim,tmux,gitcommit,gitconfig,gitrebase let g:nerdtree_tabs_open_on_console_startup=0
