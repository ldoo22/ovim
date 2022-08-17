---- Based from https://github.com/nvim-lua/kickstart.nvim/blob/master/init.lua
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute 'packadd packer.nvim'
end

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "plugins.lua",
  command = "source <afile> | PackerCompile",
})

require('packer').init({display = {auto_clean = false}})


require('packer').startup(function(use)

  -- Load lua path
  local lua_path = function(name)
    return string.format("require'plugins.%s'", name)
  end

   use 'wbthomason/packer.nvim'
   use 'morhetz/gruvbox'
   use 'preservim/nerdtree'
   
   use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
   use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
   
   use 'caenrique/nvim-toggle-terminal'

   use 'nvim-lua/plenary.nvim'
   use 'ThePrimeagen/harpoon'

   use {
   'VonHeikemen/lsp-zero.nvim',
   requires = {
       {'neovim/nvim-lspconfig'},
       {'williamboman/nvim-lsp-installer'},

       {'hrsh7th/nvim-cmp'},
       {'hrsh7th/cmp-buffer'},
       {'hrsh7th/cmp-path'},
       {'saadparwaiz1/cmp_luasnip'},
       {'hrsh7th/cmp-nvim-lsp'},
       {'hrsh7th/cmp-nvim-lua'},

       {'L3MON4D3/LuaSnip'},
       {'rafamadriz/friendly-snippets'},
     }
   }

   use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

end)
