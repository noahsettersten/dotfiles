require('telescope').load_extension('fzf')

-- " Search as characters are typed, highlight search results, and ignore case intelligently
-- set incsearch hlsearch ignorecase " smartcase

-- " The super-fast FZF
-- nnoremap <C-f> :FZF --multi<CR>
-- let g:fzf_action = {
  -- \ 'ctrl-t': 'tab split',
  -- \ 'ctrl-i': 'split',
  -- \ 'ctrl-v': 'vsplit' }

-- let g:fzf_layout = { 'down': '40%' }

-- function! s:ag_to_qf(line)
  -- let parts = split(a:line, ':')
  -- return {'filename': parts[0], 'lnum': parts[1], 'col': parts[2],
        -- \ 'text': join(parts[3:], ':')}
-- endfunction

-- function! s:ag_handler(lines)
  -- if len(a:lines) < 2 | return | endif

  -- let cmd = get({'ctrl-x': 'split',
               -- \ 'ctrl-v': 'vertical split',
               -- \ 'ctrl-t': 'tabe'}, a:lines[0], 'e')
  -- let list = map(a:lines[1:], 's:ag_to_qf(v:val)')

  -- let first = list[0]
  -- execute cmd escape(first.filename, ' %#\')
  -- execute first.lnum
  -- execute 'normal!' first.col.'|zz'

  -- if len(list) > 1
    -- call setqflist(list, 'a')
    -- copen
    -- wincmd p
  -- endif
-- endfunction

-- command! -nargs=* FzfAg call fzf#run({
-- \ 'source':  printf('ag --nogroup --column --color "%s"',
-- \                   escape(empty(<q-args>) ? '^(?=.)' : <q-args>, '"\')),
-- \ 'sink*':    function('<sid>ag_handler'),
-- \ 'options': '--ansi --expect=ctrl-t,ctrl-v,ctrl-x --delimiter : --nth 4.. '.
-- \            '--multi --bind=ctrl-a:select-all,ctrl-d:deselect-all '.
-- \            '--color hl:68,hl+:110',
-- \ 'down':    '50%'
-- \ })

-- nnoremap <Leader><C-f> :FzfAg<CR>

-- " Search and replace the word under the cursor with user input.
-- nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

-- " Search and replace only within a given selection. This DOES NOT replace all
-- " instances on the line that the highlight is on.
-- vnoremap <Leader>S :s/\%V//g<Left><Left><Left>

-- " Turn highlighting off after a search (and / or turn off highlights)
-- noremap <silent> <leader><space> :noh<cr>:call clearmatches()<cr>

-- " Keeps cursor on star search highlight
-- let g:indexed_search_dont_move=1
