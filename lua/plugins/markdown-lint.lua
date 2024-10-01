local HOME = os.getenv("HOME")

return {
  "mfussenegger/nvim-lint",
  optional = true,
  opts = {
    linters = {
      ["markdownlint-cli2"] = {
        -- Modify this path part depending on where the entire config of this is stored.
        args = { "--config", HOME .. "/.config/nvim/.markdownlint-cli2.yaml", "--" },
      },
    },
  },
}
