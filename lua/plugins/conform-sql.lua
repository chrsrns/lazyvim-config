return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        sqlfluff = {
          command = "sqlfluff",
          args = { "fix", "--nocolor", "--config", ".sqlfluff", "--force", "-" },
          stdin = true,
          condition = function()
            return true
          end,
        },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = function(_, opts)
      -- From code searched in LazyVim repos
      local sql_ft = { "sql", "mysql", "plsql" }
      for _, ft in ipairs(sql_ft) do
        opts.linters_by_ft[ft] = opts.linters_by_ft[ft] or {}
        table.insert(opts.linters_by_ft[ft], "sqlfluff")
      end

      -- Needed to state dialect used
      -- args derived from builtins from `nvim-lint`, but added the config file part
      local sqlfluff_linter = require("lint").linters.sqlfluff
      sqlfluff_linter.args = { "lint", "--format=json", "--config", ".sqlfluff" }
    end,
  },
}
