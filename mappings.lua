-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>w"] = { "<cmd>w<cr>", desc = "Save" },
    ["<leader>Q"] = { "<cmd>qa<cr>", desc = "Quit all" },
    ["<leader>Dr"] = {
      function()
        local word = vim.fn.expand "<cword>"
        local rp = vim.fn.input "Replace with: "
        vim.cmd("%s/" .. word .. "/" .. rp .. "/g")
      end,
    },
    ["<leader>fp"] = { "<cmd>Telescope projects<CR>", desc = "Find Projects" },
    -- Neotest
    ["<leader>k"] = { name = "Neotest" },
    -- ["<leader>kr"] = { "<cmd>lua require('neotest').run.run({env=require('user.configs.neotest-config').get_env()})<cr>", desc =
    -- "Run" },
    ["<leader>kr"] = { "<cmd>lua require('neotest').run.run()<cr>", desc = "Run" },
    ["<leader>kf"] = { "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", desc = "File" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<esc>"] = { "<C-\\><C-n>", desc = "Exit Terminal" },
  },
}
