-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'mhartington/formatter.nvim'

  --use "TimUntersberger/neogit"
  use "sindrets/diffview.nvim"
  use 'nvim-tree/nvim-web-devicons'
  use "nvim-lua/plenary.nvim"
  use "nvim-lua/popup.nvim"
  use "nvim-telescope/telescope.nvim"

  use 'neovim/nvim-lspconfig'
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/nvim-cmp")
--  use {"tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp"}
  use('tpope/vim-fugitive')
  use("github/copilot.vim")
  use("onsails/lspkind-nvim")
  use("nvim-lua/lsp_extensions.nvim")
  use("glepnir/lspsaga.nvim")
  use("simrat39/symbols-outline.nvim")
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
  
  use("f-person/git-blame.nvim")

  use({
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  })

  use("nvim-treesitter/nvim-treesitter", {
      run = ":TSUpdate"
  })

  use("nvim-treesitter/playground")
  use("romgrk/nvim-treesitter-context")

  use("gruvbox-community/gruvbox")

  use "vimwiki/vimwiki"

  -- comment
  use("terrortylor/nvim-comment")

  -- Test
  use {
    "nvim-neotest/neotest",
    opt = true,
    wants = {
      "plenary.nvim",
      "nvim-treesitter",
      "FixCursorHold.nvim",
      "neotest-python",
      "neotest-plenary",
      "neotest-go",
      "neotest-jest",
      "neotest-vim-test",
      "neotest-rust",
      "vim-test",
      "overseer.nvim",
    },
    requires = {
      "vim-test/vim-test",
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-neotest/neotest-python",
      "nvim-neotest/neotest-plenary",
      "nvim-neotest/neotest-go",
      "haydenmeade/neotest-jest",
      "nvim-neotest/neotest-vim-test",
      "rouge8/neotest-rust",
    },
    module = { "neotest", "neotest.async" },
    cmd = {
      "TestNearest",
      "TestFile",
      "TestSuite",
      "TestLast",
      "TestVisit",
    },
    config = function()
      require("config.neotest").setup()
    end,
    disable = false,
  }
end)
