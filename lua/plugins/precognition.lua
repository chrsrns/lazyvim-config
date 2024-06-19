-- precognition.lua
local enable = true

-- Plugin configuration
-- updated becasue toggle() return a value now
-- https://github.com/tris203/precognition.nvim/pull/73
return {
  {
    "tris203/precognition.nvim",
    -- event = "LazyFile",
    opts = {
      startVisible = false,
    },
    keys = {
      {
        "<leader>uP",
        function()
          if require("precognition").toggle() then
            LazyVim.info("Precognition is on")
          else
            LazyVim.warn("Precognition is off")
          end
        end,
        desc = "toggle Precognition",
      },
    },
  },
}
