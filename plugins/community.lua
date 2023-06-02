local utils = require "astronvim.utils"
return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.lua" },
  -- { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.project.project-nvim" },
  -- { import = "astrocommunity.code-runner.sniprun"},
  { import = "astrocommunity.utility.transparent-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  {
    "kylechui/nvim-surround",
    opts = {
      keymaps = {
        visual = "m",
      },
    },
  },
  { import = "astrocommunity.indent.indent-tools-nvim" },
  -- {
  --   "jay-babu/mason-nvim-dap.nvim",
  --   opts = function(_, opts)
  --     opts.ensure_installed =
  --         utils.list_insert_unique(opts.ensure_installed, { "isort", "black", "pylint", "pydocstyle", "pyupgrade" })
  --   end,
  -- },
}
