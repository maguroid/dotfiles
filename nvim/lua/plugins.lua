vim.cmd[[packadd packer.nvim]]
require'packer'.startup(function()
  use {
    'b0o/mapx.nvim',
    'cespare/vim-toml',
    'vim-airline/vim-airline',
    'preservim/nerdtree',
    'ryanoasis/vim-devicons',
    'Xuyuanp/nerdtree-git-plugin',
    'jacoborus/tender.vim',
    'simeji/winresizer',
    'tpope/vim-surround',
    'airblade/vim-gitgutter',
    'tomtom/tcomment_vim',
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
    'tpope/vim-fugitive',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/cmp-buffer',
    'hrsh7th/vim-vsnip',
    'hrsh7th/cmp-nvim-lsp-signature-help',
    'onsails/lspkind-nvim'
  }
  use {
    'glacambre/firenvim',
    run = function() vim.fn['firenvim#install'](0) end
  }
  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use {
    'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require('trouble').setup{} end
  }
  use {'wbthomason/packer.nvim', opt=true }
end)
