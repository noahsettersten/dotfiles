call plug#begin('~/.vim/plugged')

Plug 'whatyouhide/vim-gotham'

" File Management
Plug 'preservim/nerdtree'                " project drawer
Plug 'jistr/vim-nerdtree-tabs'            " makes NERDTree awesome if you use tabs
Plug 'Xuyuanp/nerdtree-git-plugin'        " shows git status in NERDTree
" Plug 'justinmk/vim-dirvish'

" Tmux
Plug 'christoomey/vim-tmux-navigator'     " navigate with C-h/j/k/l in tmux and vim
Plug 'edkolev/tmuxline.vim'
Plug 'benmills/vimux'
Plug 'jgdavey/vim-turbux', { 'branch': 'main' }

" Searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'henrik/vim-indexed-search'          " E.g. 'Match 6 of 34'; count of the number of matches and which one you're on

" Programming
let g:coc_global_extensions = [
      \ 'coc-tsserver',
      \ 'coc-prettier',
      \ 'coc-solargraph',
      \ 'coc-eslint',
      \ 'coc-json',
      \ 'coc-elixir',
      \ 'coc-html',
      \ 'coc-css'
      \ ]
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'rhysd/devdocs.vim'                  " devdocs.io lookup
Plug 'liuchengxu/vista.vim'               " Browse ctags and LSP symbols

" Git
Plug 'tpope/vim-fugitive'                 " git wrapper
Plug 'airblade/vim-gitgutter'             " show diff in the left gutter

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Language-specific Enhancements and Syntax Highlighting
" Plug 'thoughtbot/vim-rspec'               " Thoughtbot vim-rspec send to tmux, vim-dispatch, etc
Plug 'slim-template/vim-slim'             " Slim
Plug 'leafgarland/typescript-vim'         " typescript
Plug 'ianks/vim-tsx'                      " typescript with react
Plug 'jparise/vim-graphql'                " GraphQL
Plug 'elixir-editors/vim-elixir'          " Elixir
Plug 'vim-ruby/vim-ruby'                  " Ruby
Plug 'tpope/vim-rails'                    " Rails
Plug 'kchmck/vim-coffee-script'
Plug 'jondkinney/rspec.vim'               " Rspec
Plug 'masukomi/vim-markdown-folding'
Plug 'StanAngeloff/php.vim'

" Misc
Plug 'preservim/nerdcommenter'           " comment multiple lines
Plug 'easymotion/vim-easymotion'          " Quickly move around with motion enhancements
" Plug 'gorodinskiy/vim-coloresque'         " Colorize CSS colors
Plug 'junegunn/vim-peekaboo'              " Pane to view register contents
Plug 'itspriddle/vim-stripper'            " strip trailing whitespace on save

" Unused
" Plug 'yegappan/mru'                       " List of most-recently-used files
" Plug 'Lenovsky/nuake'
" Plug 'yuratomo/w3m.vim'                   " Embed w3m in vim
" Plug 'nathanaelkane/vim-indent-guides'    " show indent guides to the left of the methods (<leader>ig)
" TODO: Plug 'tpope/vim-commentary'               " replace nerdcommenter with Tim Pope's plugin here.
" Plug 'jeetsukumaran/vim-buffergator'      " easily switch between buffers
" Plug 'killphi/vim-legend'                 " Parses and displays x or check in the gutter for covered lines through cadre
" Plug 'junegunn/goyo.vim'                  " Distraction-free writing in Vim

call plug#end()
