-- au BufNewFile,BufRead *.ldg,*.ledger,*.journal setf ledger | comp ledger

-- function! LedgerHistory()
  -- let commandGrid = '~/Dropbox/other/ledger/ledgerbil/main.py grid -m -p "last 2 months" -A Expenses'
  -- call VimuxRunCommand(commandGrid)
-- endfunction

-- function! LedgerBudget()
  -- let command = 'ledger budget -p this --effective'
  -- call VimuxRunCommand(command)
-- endfunction

-- function! LedgerBudgetExport()
  -- let command = '~/Dropbox/other/ledger/export_budget.sh'
  -- call VimuxRunCommand(command)
-- endfunction

-- function! LedgerMonthlyReview()
  -- let command = 'ledger balance -p "this month" --sort "-amount"'
  -- call VimuxRunCommand(command)
-- endfunction

-- function! LedgerBalance()
  -- let command = 'ledger balance Assets'
  -- call VimuxRunCommand(command)
-- endfunction

-- function! LedgerRegister()
  -- let command = 'ledger register -d "d>[last month]" -R Expenses'
  -- call VimuxRunCommand(command)
-- endfunction

-- " Mnemonics: hh History, hb Budgets, ha Accounts, he Entries, hm Monthly budget
-- " p, r, u, s
-- " nmap <leader>hh :call LedgerHistory()<CR>
-- nmap <leader>hb :call LedgerBudget()<CR>
-- " nmap <leader>hm :call LedgerBudgetExport()<CR>
-- nmap <leader>ha :call LedgerBalance()<CR>
-- nmap <leader>he :call LedgerRegister()<CR>

-- nmap <leader>hm :call LedgerMonthlyReview()<CR>
-- nmap <leader>le :call ledger#entry()<CR>
