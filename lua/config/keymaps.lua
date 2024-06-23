-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Prevent the 'd' key from cutting to clipboard
vim.keymap.set({ "n", "x" }, "d", '"_d', { desc = "Delete", remap = false })

-- START For flutter config
-- From https://github.com/josephsizar/lazyvim-flutter-tools/blob/main/manual.md
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

--flutter
map("n", "<leader>rf", "<cmd> FlutterRun <CR>", { desc = "Run Flutter Apps" })
map("n", "<leader>rfw", "<cmd> FlutterRun -t widgetbook/main.dart <CR>", { desc = "Run Flutter widgetbook" })
map("n", "<leader>rr", "<cmd> FlutterReload <CR>", { desc = "Reload Flutter Apps" })
map("n", "<leader>rR", "<cmd> FlutterRestart <CR>", { desc = "Restart Flutter Apps" })
map("n", "<leader>rl", "<cmd> FlutterLogClear <CR>", { desc = "Clear the log of Flutter Apps" })
map("n", "<leader>rd", "<cmd> FlutterDevices <CR>", { desc = "Check available device" })
map("n", "<leader>rq", "<cmd> FlutterQuit <CR>", { desc = "Stop Running Application" })
map("n", "<leader>rt", "<cmd> !flutter_test.sh %:p<CR>", { desc = "run flutter test on current file" })
map("n", "<leader>gt", function()
  package.loaded["fcreate"] = nil
  require("fcreate").cbx()
end, { desc = "flutter create test file" })
map("n", "<leader>rw", function()
  local current_directory = vim.fn.expand("%:p:h")
  -- Get the filename from user input
  local filename = vim.fn.input("Enter the name of the new file: ")
  -- Execute the bash script with current_directory and filename as arguments
  local command = "! /home/skypea/myScript/bin/new_widget.sh "
    .. vim.fn.shellescape(current_directory)
    .. " "
    .. vim.fn.shellescape(filename)
    .. " "
    .. vim.fn.shellescape("%:p")
  vim.cmd(command)
  -- Refresh the file explorer (if you're using any plugin like NERDTree)
  vim.cmd("silent! NERDTreeRefreshRoot")
  -- Add a new line with the desired content to the current file
end, { noremap = true, silent = true, desc = "create a new widget file" })
-- END For flutter config
