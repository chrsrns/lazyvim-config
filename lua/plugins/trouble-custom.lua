return {
  {
    "folke/trouble.nvim",
    cmd = { "Trouble" },
    opts = {
      modes = {
        lsp = {
          win = { position = "right" },
        },
      },
    },
    keys = {
      {
        "<leader>cs",
        "<cmd>Trouble lsp_document_symbols toggle win.position=right win.size=75<cr>",
        desc = "LSP Symbols (Trouble)",
      },
    },
  },
}
