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
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
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
    ["<leader>k"] = { name = "ﭧ Test" },
    ["<leader>kr"] = { "<cmd>lua require('neotest').run.run()<cr>", desc = "Run" },
    ["<leader>kf"] = { "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", desc = "File" },
    ["<leader>kk"] = { "<cmd>lua require('neotest').run.run( { suite = true } )<cr>", desc = "Suite" },
    ["<leader>ka"] = { ":wa<cr>:TermExec cmd='pytest -s -vv'<cr>", desc = "All" },
    ["<leader>ks"] = { "<cmd>lua require('neotest').summary.toggle()<cr>", desc = "Summary" },
    ["<leader>kw"] = { "<cmd>lua require('neotest').watch.watch()<cr>", desc = "Watch" },
    ["<leader>kn"] = { "<cmd>lua require('neotest').jump.next({ status = 'failed' })<cr>", desc = "Jump Next Fail" },
    ["<leader>kp"] = { "<cmd>lua require('neotest').jump.prev({ status = 'failed' })<cr>", desc = "Jump Previous Fail" },
    ["<leader>ko"] = { "<cmd>lua require('neotest').output.open( {enter = true, short = false} )<cr>", desc = "Output" },

    -- Code Runner
    ["<leader>r"] = { name = " Run" },
    ["<leader>rr"] = { ":RunCode<CR>", desc = " Run" },
    ["<leader>rf"] = { ":RunFile float<CR>", desc = " Run File" },
    ["<leader>rc"] = { ":RunClose<CR>", desc = " Close" },
    ["<leader>rp"] = { ":RunProject<CR>", desc = " Run Project" },
    ["<leader>rt"] = { ":RunFile toggleterm<CR>", desc = " Run File Terminal" },

    --Motion
    ["J"] = { "<C-d>", desc = "Scroll Down" },
    ["U"] = { "<C-u>", desc = "Scroll Up" },
    ["<Tab>"] = { ":bnext<cr>", desc = "Next Buffer" },
    ["<S-Tab>"] = { ":bprev<cr>", desc = "Previous Buffer" },
    ["ö"] = { ":wincmd w<cr>", desc = "Go window right" },
    ["M"] = { "/", desc = "Search" },
    -- ["<leader>s"] = { name = "Split Window"},
    -- ["<leader>ss"] = {":vsplit<cr>", desc = "Vertically"},
    -- ["<leader>sh"] = {":split<cr>", desc = "Horizontally"},

    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command

    -- toggles
    ["<leader>uP"] = {
      function()
        local status = "online"
        local cp_client_ok, cp_client = pcall(require, "copilot.client")
        if not cp_client_ok then
          status = "offline"
          return
        end
        local client = cp_client.get()
        if not client then
          status = "offline"
          return
        end
        if status == "offline" then
          require("copilot.command").enable()
        else
          require("copilot.command").disable()
        end
      end,
      -- this is some
      desc = "Toggle Copilot",
    },
    ["<leader>BB"] = { "V~<cmd> lua require('comment-box').albox()<cr>v", desc = "Left aligned box and text" },
  },
  v = {
    ["<leader>BB"] = { "~<cmd> lua require('comment-box').albox()<cr>v", desc = "Left aligned box and text" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<esc>"] = { "<C-\\><C-n>", desc = "Exit Insert Mode" },
    ["kj"] = { "<C-\\><C-n>", desc = "Exit Insert Mode" },
    ["jk"] = { "<C-\\><C-n>", desc = "Exit Insert Mode" },
    ["jj"] = { "<C-\\><C-n>", desc = "Exit Insert Mode" },
  },
  x = {
    ["gS"] = { "<Plug>VgSurround", desc = "Visual Add Surround Indent" },
  },
}
