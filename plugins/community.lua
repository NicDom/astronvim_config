-- local utils = require "astronvim.utils"
return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  -- { import = "astrocommunity.motion.leap-nvim" },
  -- { import = "astrocommunity.motion.flit-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.motion.flash-nvim" },
  -- { import = "astrocommunity.motion.hop-nvim" },
  { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.lua" },
  -- { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.project.project-nvim" },
  -- { import = "astrocommunity.code-runner.sniprun"},
  { import = "astrocommunity.color.transparent-nvim" },
  -- { import = "astrocommunity.indent.indent-tools-nvim" },
  { import = "astrocommunity.lsp.inc-rename-nvim" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  -- { import = "astrocommunity.utility.noice-nvim" },
  -- { import = "astrocommunity.split-and-window.edgy-nvim" },

  --
  -- Exra Settings
  --

  -- Allow f,F,t,T to be used with labels

  {
    "folke/flash.nvim",
    config = function()
      require("flash").setup {
        modes = {
          char = {
            enabled = false,
          },
        },
      }
    end,
  },

  --S in visual mode to surround collides with flash
  {
    "kylechui/nvim-surround",
    opts = {
      keymaps = {
        visual = "m",
      },
    },
  },
  -- install ruff-lsp when installing venv-selector
  {
    "linux-cultist/venv-selector.nvim",
    build = "pip install --user -U ruff-lsp",
  },
  -- enable copilot for markdown
  {
    "zbirenbaum/copilot-cmp",
    opts = {
      filetypes = { "markdown" },
    },
  },
  -- {
  -- "jay-babu/mason-nvim-dap.nvim",
  -- opts = function(_, opts)
  -- opts.ensure_installed =
  -- utils.list_insert_unique(opts.ensure_installed, { "isort", "black", "pylint", "pydocstyle", "pyupgrade" })
  -- end,
  -- },
}
