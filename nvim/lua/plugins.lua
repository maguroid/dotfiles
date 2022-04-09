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
    'williamboman/nvim-lsp-installer'
  }
  use{'wbthomason/packer.nvim', opt=true}
end)
