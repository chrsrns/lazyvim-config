-- From https://github.com/josephsizar/lazyvim-flutter-tools/blob/main/manual.md
return {
  "akinsho/flutter-tools.nvim",
  -- keys = {
  --   { "<leader>r", "<cmd> FlutterRun <CR>" },
  -- },
  dependencies = { "mfussenegger/nvim-dap" },
  opts = {
    fvm = true,
    ui = {
      border = "rounded",
      notification_style = "native",
    },
    decorations = {
      statusline = {
        app_version = false,
        device = true,
      },
    },
    widget_guides = {
      enabled = true,
    },
    closing_tags = {
      highlight = "ErrorMsg",
      prefix = "//",
      enabled = true,
    },
    lsp = {
      color = {
        enabled = false,
        background = false,
        foreground = false,
        virtual_text = true,
        virtual_text_str = "■",
      },
      settings = {
        showTodos = true,
        completeFunctionCalls = true,
        enableSnippets = true,
      },
    },
    debugger = {
      enabled = true,
      run_via_dap = true,
    },
    -- dev_log = {
    --   enabled = true,
    --   open_cmd = "tabedit", -- command to use to open the log buffer
    -- },
  },
}
