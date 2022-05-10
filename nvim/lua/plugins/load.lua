return require('packer').startup({
  function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- use 'whatyouhide/vim-gotham'
    -- use 'crusoexia/vim-monokai'
    -- use 'junegunn/seoul256.vim'
    -- use { 'chriskempson/tomorrow-theme', rtp = 'vim' }
    use 'EdenEast/nightfox.nvim'

    -- Directory Browser
    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() require'nvim-tree'.setup {
        open_on_setup = true,
        open_on_tab = true,
        auto_close = true,
      } end
    }
    -- TODO: Something like nerdtree-tabs
    -- TODO: Git plugin for nvim-tree

    -- TODO:
    -- Plug 'christoomey/vim-tmux-navigator'     " navigate with C-h/j/k/l in tmux and vim
    -- Plug 'edkolev/tmuxline.vim'
    -- Plug 'benmills/vimux'
    -- Plug 'jgdavey/vim-turbux', { 'branch': 'main' }

    -- Plug 'henrik/vim-indexed-search'          " E.g. 'Match 6 of 34'; count of the number of matches and which one you're on

    -- Requires ripgrep and fd installed.
    use {
      'nvim-telescope/telescope.nvim',
      requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- Post-install/update hook with neovim command
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- TODO:
    -- Plug 'rhysd/devdocs.vim'                  " devdocs.io lookup
    -- Plug 'liuchengxu/vista.vim'               " Browse ctags and LSP symbols
    --
    -- " Git
    -- Plug 'tpope/vim-fugitive'                 " git wrapper
    -- Plug 'tpope/vim-rhubarb'                  " fugitive extension for GitHub
    -- Plug 'airblade/vim-gitgutter'             " show diff in the left gutter

    -- " Airline
    -- Plug 'vim-airline/vim-airline'
    -- Plug 'vim-airline/vim-airline-themes'

    -- " Language-specific Enhancements and Syntax Highlighting
    -- Plug 'kchmck/vim-coffee-script'           " Coffeescript
    -- Plug 'jparise/vim-graphql'                " GraphQL
    -- Plug 'elixir-editors/vim-elixir'          " Elixir
    -- Plug 'masukomi/vim-markdown-folding'      " Markdown
    -- Plug 'vim-ruby/vim-ruby'                  " Ruby
    -- Plug 'tpope/vim-rails'                    " Rails
    -- Plug 'jondkinney/rspec.vim'               " Rspec
    -- Plug 'slim-template/vim-slim'             " Slim
    -- Plug 'leafgarland/typescript-vim'         " Typescript
    -- Plug 'peitalin/vim-jsx-typescript'        " JSX in Typescript
    -- Plug 'mechatroner/rainbow_csv'            " CSV column highlighting, searching, formatting
    -- " Plug 'ianks/vim-tsx'                    " Typescript with React

    -- " Misc
    -- Plug 'jeetsukumaran/vim-buffergator'      " easily switch between buffers
    -- Plug 'preservim/nerdcommenter'            " comment multiple lines
    -- Plug 'easymotion/vim-easymotion'          " Quickly move around with motion enhancements
    -- " Plug 'gorodinskiy/vim-coloresque'       " Colorize CSS colors
    -- " Plug 'kshenoy/vim-signature'            " Show marks in gutter
    -- Plug 'junegunn/vim-peekaboo'              " Pane to view register contents
    -- Plug 'itspriddle/vim-stripper'            " strip trailing whitespace on save
    -- Plug 'ledger/vim-ledger'
    -- Plug 'Lenovsky/nuake'

    -- " Unused
    -- " Plug 'yuratomo/w3m.vim'                 " Embed w3m in vim
    -- Plug 'nathanaelkane/vim-indent-guides'    " show indent guides to the left of the methods (<leader>ig)
    -- " TODO: Plug 'tpope/vim-commentary'       " Consider replacing nerdcommenter with Tim Pope's plugin here.
    -- " Plug 'killphi/vim-legend'               " Parses and displays x or check in the gutter for covered lines through cadre
    -- " Plug 'junegunn/goyo.vim'                " Distraction-free writing in Vim
    -- https://github.com/kyazdani42/nvim-web-devicons


    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
      require('packer').sync()
    end
  end,
  config = {
    display = {
      open_fn = require('packer.util').float,
    },
  },
})
