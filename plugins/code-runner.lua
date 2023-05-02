return {
  "CRAG666/code_runner.nvim",
  event = "User AstroFile",
  config = function()
    require("code_runner").setup()
  end,
}
