" vim:foldmethod=marker:foldlevel=0

" Core Settings {{{
set nocompatible " Disable vi compatibility
filetype plugin indent on
syntax on
set synmaxcol=220 " Stop syntax highlighting for really long lines

" Smart tab settings
set shiftwidth=2 shiftround tabstop=2 softtabstop=2 expandtab smarttab
set nowrap " Disable text wrapping by default
set copyindent

set backspace=indent,eol,start

set number
set cmdheight=2

set ttyfast lazyredraw
set splitbelow splitright
set confirm
set encoding=utf-8
set notimeout ttimeout ttimeoutlen=10
set switchbuf=useopen,usetab "Attempt to edit currently open files instead of opening multiple buffers. FIXME: Not sure if this is working.
set formatoptions=1
set formatoptions-=or
set linebreak
set virtualedit=all

au VimResized * :wincmd =

let mapleader = ","   "remap leader to ',' which is much easier than '\'
let maplocalleader = "\\" "add a local leader of '\'

" also use ; for commands
nnoremap ; :

" }}}

" Auto-install vim-plug {{{
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $VIMRC
endif

source ~/.vim/plugins.vim
" }}}

" External Languages {{{
if !empty($RUBY_ROOT)
  let g:ruby_path = join(split(glob($RUBY_ROOT.'/lib/ruby/*.*')."\n".glob($RUBY_ROOT.'/lib/rubysite_ruby/*'),"\n"),',')
endif
:let g:python_host_prog="/usr/local/bin/python2"
:let g:python3_host_prog="/usr/local/opt/python3/bin/python3"
" }}}

" Theme {{{
set background=dark
colorscheme gotham

" call togglebg#map("<F5>")
set colorcolumn=81

hi Pmenu ctermfg=4
hi PmenuSbar ctermfg=4
hi TabLine ctermfg=4
hi Search ctermbg=5 guibg=#4e5166
" }}}

" File Management {{{
set wildignore+=*/db/dumps/*,*/coverage/*,*/public/uploads/*,*/public/images/*,*/vim_sessions/*,*/node_modules/*,*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
runtime macros/matchit.vim      "Extend % for matching brackets, if/end, and more
set path+=**
set wildmenu

" autoread and autowrite http://albertomiorin.com/blog/2012/12/10/autoread-and-autowrite-in-vim/
augroup save
  au!
  au FocusLost * wall
augroup END
set nohidden nobackup noswapfile nowritebackup autoread autowrite autowriteall

" persistent-undo
set undofile undodir=$HOME/.vim/undo

" Make sure Vim returns to the same line when you reopen a file.
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END
" }}}

" Helpful custom keystrokes {{{
map <leader>1 :set nonumber! number?<CR>

" Disable Ex mode key and help lookup.
noremap Q <nop>
" map K <Nop>
nmap <leader>K <Plug>(devdocs-under-cursor)
" TODO: Figure out how to open in a w3m tmux pane
" https://github.com/rhysd/devdocs.vim/issues/4
" https://github.com/rhysd/devdocs.vim/commit/92f6937d9d08a7d29475ee69b5aa557fcc9d7d56
" let g:devdocs_open_cmd = 'tmux split-window -h -p 30; w3m'

noremap SS :w<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=

" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za

"Shortcut to toggle `set list` which turns on and off the whitespace markers
nmap <leader>il :set list!<CR>
set listchars=tab:▸\ ,eol:¬,trail:~,extends:>,precedes:<
" }}}

" Move lines with meta-j/k {{{
" <m-j> and <m-k> to drag lines in any mode (m is alt/option)
noremap ∆ :m+<CR>
noremap ˚ :m-2<CR>
inoremap ∆ <Esc>:m+<CR>
inoremap ˚ <Esc>:m-2<CR>
vnoremap ∆ :m'>+<CR>gv
vnoremap ˚ :m-2<CR>gv
" }}}

" NERDTree {{{
map <Leader>d :NERDTreeMirrorToggle<CR><CR>
map <Leader>D :NERDTreeFind<CR><CR>

let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeWinSize = 36
let NERDTreeShowLineNumbers=1
let g:nerdtree_tabs_focus_on_files=1
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_smart_startup_focus=2
" list of file types to not auto-open nerdtree for
autocmd FileType vim,tmux,gitcommit,gitconfig,gitrebase let g:nerdtree_tabs_open_on_console_startup=0

" NERDTree file highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('sass', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('scss', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('rb', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('erb', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('slim', 'green', 'none', 'green', '#151515')

let NERDSpaceDelims=1 " For nerdcommenter, add one space after comment char
let g:NERDCustomDelimiters={
	\ 'javascript': { 'left': '//', 'leftAlt': '{/*', 'rightAlt': '*/}' },
	\ 'typescript': { 'left': '//', 'leftAlt': '{/*', 'rightAlt': '*/}' },
\}
" }}}

" Netrw {{{
map <Leader>dd :Lexplore %:p:h<CR>
map <Leader>da :Lexplore<CR>

" let g:netrw_keepdir = 0
let g:netrw_banner = 0

function! NetrwMapping()
  nmap <buffer> h -^
  nmap <buffer> l <CR>

  nmap <buffer> . gh

  nmap <buffer> L <CR>:Lexplore<CR>
  nmap <buffer> <Leader>dd :Lexplore<CR>
endfunction

augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END
" }}}

" Tmux {{{
let g:tmux_navigator_save_on_switch = 1

" This switches the cursor into a pipe when in insert mode tmux will only
" forward escape sequences to the terminal if surrounded by a DCS sequence
" http://sourceforge.net/mailarchive/forum.php?thread_name=AANLkTinkbdoZ8eNR1X2UobLTeww1jFrvfJxTMfKSq-L%2B%40mail.gmail.com&forum_name=tmux-users
if has('nvim')
  " let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
else
  if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
endif
" }}}

" Searching {{{
" Search as characters are typed, highlight search results, and ignore case intelligently
set incsearch hlsearch ignorecase smartcase

" The super-fast FZF
nnoremap <C-f> :FZF --multi<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_layout = { 'down': '40%' }

function! s:ag_to_qf(line)
  let parts = split(a:line, ':')
  return {'filename': parts[0], 'lnum': parts[1], 'col': parts[2],
        \ 'text': join(parts[3:], ':')}
endfunction

function! s:ag_handler(lines)
  if len(a:lines) < 2 | return | endif

  let cmd = get({'ctrl-x': 'split',
               \ 'ctrl-v': 'vertical split',
               \ 'ctrl-t': 'tabe'}, a:lines[0], 'e')
  let list = map(a:lines[1:], 's:ag_to_qf(v:val)')

  let first = list[0]
  execute cmd escape(first.filename, ' %#\')
  execute first.lnum
  execute 'normal!' first.col.'|zz'

  if len(list) > 1
    call setqflist(list, 'a')
    copen
    wincmd p
  endif
endfunction

command! -nargs=* FzfAg call fzf#run({
\ 'source':  printf('ag --nogroup --column --color "%s"',
\                   escape(empty(<q-args>) ? '^(?=.)' : <q-args>, '"\')),
\ 'sink*':    function('<sid>ag_handler'),
\ 'options': '--ansi --expect=ctrl-t,ctrl-v,ctrl-x --delimiter : --nth 4.. '.
\            '--multi --bind=ctrl-a:select-all,ctrl-d:deselect-all '.
\            '--color hl:68,hl+:110',
\ 'down':    '50%'
\ })

nnoremap <Leader><C-f> :FzfAg<CR>

" Search and replace the word under the cursor with user input.
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" Search and replace only within a given selection. This DOES NOT replace all
" instances on the line that the highlight is on.
vnoremap <Leader>S :s/\%V//g<Left><Left><Left>

" Turn highlighting off after a search (and / or turn off highlights)
noremap <silent> <leader><space> :noh<cr>:call clearmatches()<cr>

" Keeps cursor on star search highlight
let g:indexed_search_dont_move=1
" }}}

" Quickfix {{{
" From https://vi.stackexchange.com/a/21255
" using range-aware function
function! QFdelete(bufnr) range
    " get current qflist
    let l:qfl = getqflist()
    " no need for filter() and such; just drop the items in range
    call remove(l:qfl, a:firstline - 1, a:lastline - 1)
    " replace items in the current list, do not make a new copy of it;
    " this also preserves the list title
    call setqflist([], 'r', {'items': l:qfl})
    " restore current line
    call setpos('.', [a:bufnr, a:firstline, 1, 0])
endfunction

" using buffer-local mappings
" note: still have to check &bt value to filter out `:e quickfix` and such
augroup QFList | au!
    autocmd BufWinEnter quickfix if &bt ==# 'quickfix'
    autocmd BufWinEnter quickfix    nnoremap <silent><buffer>dd :call QFdelete(bufnr())<CR>
    autocmd BufWinEnter quickfix    vnoremap <silent><buffer>d  :call QFdelete(bufnr())<CR>
    autocmd BufWinEnter quickfix endif
augroup end
" }}}

" Splits {{{
" Allow resizing splits with =/- for up/down and +/_ right/left (repeatable w/hold too)
if bufwinnr(1)
  map = <C-W>+
  map - <C-W>-
  map _ <C-W>>
  map + <C-W><
endif
" }}}

" Copy/paste {{{
" Indent pastes properly
nnoremap <leader>pi p`[v`]=

" This allows you to share Vim's clipboard with OS X.
" It does prevent copy/paste in visual block mode though.
set clipboard=unnamed

" Copy current filename to clipboard
noremap <silent> <Leader>cf :let @+=expand("%")<CR>
" }}}

" Testing {{{
let VimuxHeight = "33" "this is percentage
let VimuxOrientation = "h"
let VimuxUseNearestPane = 1
" let test#strategy = "vimux"
let g:turbux_command_prefix = 'clear; b'

nmap <leader>t <Plug>SendTestToTmux
nmap <leader>T <Plug>SendFocusedTestToTmux

" for rspec.vim (syntax highlighting enhancements for rspec)
autocmd BufReadPost,BufNewFile *_spec.rb set syntax=rspec
" }}}

" Fugitive {{{
set diffopt+=vertical
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gst :Git<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>ge :Gedit<cr>
nnoremap <leader>gb :Git blame -w -M<cr>
nnoremap <leader>gB :Gitv!<cr>
nnoremap <leader>gco :Gread<cr>
nnoremap <leader>gcm :Gcommit<cr>
nnoremap <leader>glg :0Glog<cr>
nnoremap <leader>gl :Git log --oneline<cr>
" }}}

" Airline {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_detect_iminsert = 1
let g:airline#extensions#fzf#enabled = 1
let g:airline#extensions#vista#enabled = 0
let g:airline#extensions#wordcount#enabled = 'readingtime'

let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b'    : '#(~/.dotfiles/scripts/unread_gmail.sh) Unread',
      \'c'    : '#W',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W'],
      \'x'    : ['#(~/.dotfiles/scripts/spotify_current_track.sh)', '%a'],
      \'y'    : ['%b %d', '%R'],
      \'z'    : '#h'}
" }}}

" LSP / CTags {{{
nmap <F8> :Vista!!<CR>
let g:vista_default_executive = 'coc'
let g:vista_icon_indent = [">>", "-"]
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
      \ "function": "\u2A0D",
      \ "variable": "\u00D7",
      \ "class": "\u039A",
      \ "property": "\u3A0",
      \ "interface": "\u0399",
\ }
let g:vista_sidebar_width = 45

nnoremap <leader><F> :Vista finder<CR>
" }}}

" Abbreviations {{{
:iab entry 2021/04/01 Transaction<CR>  Account    $0.00<CR>
:iab rbcop # rubocop:disable Metrics/LineLength
:iab pry require 'pry'; binding.pry
" # NOTE: (`strftime("%Y-%m-%d")`) `system("whoami | tr -d '\n'")` => ${1}
:iab note # NOTE: (YYYY-mm-md) Noah Settersten =>
" }}}

" Ruby/Rails {{{
map <leader>gr :topleft 40 :split config/routes.rb<CR>
map <leader>gg :topleft 40 :split Gemfile<CR>
" }}}

" Spotify {{{
nnoremap <leader>mc :echo system('spotify status')<CR>
nnoremap <leader>mp :call system('spotify pause')<CR>
nnoremap <leader>mn :call system('spotify next')<CR>
" }}}

" Profiling {{{
" Taken from https://github.com/bling/minivimrc/blob/master/vimrc
nnoremap <silent> <leader>DD :exe ":profile start profile.log"<cr>:exe ":profile func *"<cr>:exe ":profile file *"<cr>
nnoremap <silent> <leader>DP :exe ":profile pause"<cr>
nnoremap <silent> <leader>DC :exe ":profile continue"<cr>
nnoremap <silent> <leader>DQ :exe ":profile pause"<cr>:noautocmd qall!<cr>
" }}}

" W3M {{{
nnoremap <leader>ws :W3mVSplit
" nnoremap <leader>wr :W3m ruby
" }}}

 " Ledger {{{
au BufNewFile,BufRead *.ldg,*.ledger,*.journal setf ledger | comp ledger

function! LedgerHistory()
  let commandGrid = '~/Dropbox/other/ledger/ledgerbil/main.py grid -m -p "last 2 months" -A Expenses'
  call VimuxRunCommand(commandGrid)
endfunction

function! LedgerBudget()
  let command = 'ledger budget -p this --effective'
  call VimuxRunCommand(command)
endfunction

function! LedgerBudgetExport()
  let command = '~/Dropbox/other/ledger/export_budget.sh'
  call VimuxRunCommand(command)
endfunction

function! LedgerMonthlyReview()
  let command = 'ledger balance -p "this month" --sort "-amount"'
  call VimuxRunCommand(command)
endfunction

function! LedgerBalance()
  let command = 'ledger balance Assets'
  call VimuxRunCommand(command)
endfunction

function! LedgerRegister()
  let command = 'ledger register -d "d>[last month]" -R Expenses'
  call VimuxRunCommand(command)
endfunction

" Mnemonics: hh History, hb Budgets, ha Accounts, he Entries, hm Monthly budget
" p, r, u, s
" nmap <leader>hh :call LedgerHistory()<CR>
nmap <leader>hb :call LedgerBudget()<CR>
" nmap <leader>hm :call LedgerBudgetExport()<CR>
nmap <leader>ha :call LedgerBalance()<CR>
nmap <leader>he :call LedgerRegister()<CR>

nmap <leader>hm :call LedgerMonthlyReview()<CR>
nmap <leader>le :call ledger#entry()<CR>
" }}}

" Prose {{{
nnoremap <leader>sc :setlocal spell spelllang=en_us<CR>:set wrap<CR>
" }}}

" Buffergator {{{
let g:buffergator_viewport_split_policy="B"
let g:buffergator_split_size=10
let g:buffergator_suppress_keymaps=1
let g:buffergator_sort_regime = "mru"
map <Leader>b :BuffergatorToggle<cr>
" }}}

" COC {{{
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>": "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

call coc#config('coc.preferences', {
      \ "codeLens.enable": 1,
      \ "diagnostic.virtualText": 1,
      \ "diagnostic.virtualTextPrefix": "COC: ",
      \ "solargraph.diagnostics": "true",
      \})

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <leader>p :Format<CR>

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
" xmap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap if <Plug>(coc-funcobj-i)
" omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" " Manage extensions.
" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" " Show commands.
" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document.
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" " Search workspace symbols.
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list.
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
" }}}

" Nuake {{{
tnoremap <C-q> <C-w>N
tnoremap <leader><C-\> <C-\><C-n>:Nuake<CR>
nnoremap <leader><C-\> :Nuake<CR>
inoremap <leader><C-\> <C-\><C-n>:Nuake<CR>
let g:nuake_position = 'bottom'
let g:nuake_size = 0.2
let g:nuake_per_tab = 0
" }}}

" Misc Plugins {{{
let g:StripperIgnoreFileTypes = ['sql']

" Ensures color scheme works for the gutter diff indicators
highlight clear SignColumn "Show the gutter color the same as the number column color

" Indent guides
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1

let g:peekaboo_window="vert bo 50new"

autocmd FileType markdown set foldexpr=NestedMarkdownFolds()
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

nmap <leader>mm :MRU<CR>

nnoremap <F4> :Nuake<CR>
" }}}

set iskeyword-=\.

" Breaks highlighting of vimrc; leave at bottom
set breakat=\ ^I!@*-+;:,./?\(\[\{
