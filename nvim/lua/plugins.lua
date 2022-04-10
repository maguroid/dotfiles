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
    -- Language Server
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
    -- Completion
    'tpope/vim-fugitive',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/cmp-buffer',
    'hrsh7th/vim-vsnip',
    'hrsh7th/cmp-nvim-lsp-signature-help',
    'hrsh7th/cmp-nvim-lua',
    'saadparwaiz1/cmp_luasnip',
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
  use {
    'tzachar/cmp-tabnine',
    run = './install.sh',
    requires = 'hrsh7th/nvim-cmp'
  }
  use {'wbthomason/packer.nvim', opt=true }
end)
