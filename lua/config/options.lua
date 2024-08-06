-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- WebC configuration
vim.filetype.add({
  extension = {
    webc = "html",
  },
  filename = { [".webc"] = "html" },
  filetype = { [".webc"] = "html" },
})
vim.treesitter.language.register("html", "webc")
