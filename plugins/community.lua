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
  { import = "astrocommunity.indent.indent-tools-nvim" },
}
