local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"python"},
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    enable = true,

  },
  {
    "williamboman/mason.nvim",
    opts ={
      ensure_installed = {
        "pyright",
        "ruff",
        "mypy",
        "black",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
}
return plugins
