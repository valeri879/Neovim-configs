local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'folke/tokyonight.nvim'
  use 'nvim-lualine/lualine.nvim'
  use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
          local ts_update = require('nvim-treesitter.install').upadate({ with_sync = true })
        end,
      
      }
  use 'NvChad/nvim-colorizer.lua'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'windwp/nvim-ts-autotag'
  use 'aca/emmet-ls'
  use 'neovim/nvim-lspconfig'
  use 'f-person/git-blame.nvim'
  use {
    "startup-nvim/startup.nvim",
    requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    config = function()
      require"startup".setup()
    end
  }
  -- auto pairs
  use {
    "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }
  -- git conflicts plugin
  use {'akinsho/git-conflict.nvim', 
    tag = "*",
    config = function() require('git-conflict').setup()
    end
  }
  use {
    "L3MON4D3/LuaSnip",
    -- install jsregexp (optional!:).
    run = "make install_jsregexp"
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
  if packer_bootstrap then
    require('packer').sync()
  end
end)
