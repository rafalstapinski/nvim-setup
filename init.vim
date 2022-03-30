" for vscode and local setup
if exists('g:vscode')
    " vscode settings
    source $HOME/.config/nvim/vscode.vim
else
    source $HOME/.config/nvim/modules/general.vim

    " empty tab completion
    " inoremap <silent><expr> <c-space> coc#refresh()

    call plug#begin('~/.vim/plugged')

    Plug 'arkav/lualine-lsp-progress'

    " Plug 'easymotion/vim-easymotion'

    Plug 'neovim/nvim-lspconfig'

    Plug 'nvim-lua/lsp-status.nvim'

    Plug 'ray-x/go.nvim'

    Plug 'jiangmiao/auto-pairs'

    " for status line
    Plug 'nvim-lualine/lualine.nvim'

    " git support
    Plug 'airblade/vim-gitgutter'

    " syntax tree parser 
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

    " symbol def under cursor
    Plug 'nvim-treesitter/nvim-treesitter-refactor'

   " " async
    Plug 'nvim-lua/plenary.nvim'

    " rename, better UI
    Plug 'glepnir/lspsaga.nvim'

    " Collection of common configurations for the Nvim LSP client
    Plug 'neovim/nvim-lspconfig'

    " Completion framework
    Plug 'hrsh7th/nvim-cmp'

    " LSP completion source for nvim-cmp
    Plug 'hrsh7th/cmp-nvim-lsp'

    " Snippet completion source for nvim-cmp
    Plug 'hrsh7th/cmp-vsnip'

    " Other usefull completion sources
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-buffer'

    " To enable more of the features of rust-analyzer, such as inlay hints and more!
    Plug 'simrat39/rust-tools.nvim'

    Plug 'rust-lang/rust.vim'

    " Snippet engine
    Plug 'hrsh7th/vim-vsnip'

    " for auto pair completion
    Plug 'rstacruz/vim-closer'

    " for file tree explorer
    Plug 'preservim/nerdtree'

    call plug#end()

    source $HOME/.config/nvim/modules/tree.vim
    source $HOME/.config/nvim/modules/lualine.vim
    source $HOME/.config/nvim/modules/lsp.vim
    source $HOME/.config/nvim/modules/rust.vim
    " note that go.vim depends on treesitter
    source $HOME/.config/nvim/modules/go.vim
    source $HOME/.config/nvim/modules/python.vim

endif
