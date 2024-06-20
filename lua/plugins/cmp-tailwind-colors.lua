return {
  {
    "js-everts/cmp-tailwind-colors",
    opts = {
      enable_alpha = true, -- requires pumblend > 0.

      format = function(itemColor)
        return {
          fg = itemColor,
          bg = itemColor, -- or nil if you dont want a background color
          text = "  ", -- or use an icon
        }
      end,
    },
  },
}
