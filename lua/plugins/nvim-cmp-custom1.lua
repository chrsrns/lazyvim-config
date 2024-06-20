local kind_icons = {
  Text = "",
  Method = "󰆧",
  Function = "󰊕",
  Constructor = "",
  Field = "󰇽",
  Variable = "󰂡",
  Class = "󰠱",
  Interface = "",
  Module = "",
  Property = "󰜢",
  Unit = "",
  Value = "󰎠",
  Enum = "",
  Keyword = "󰌋",
  Snippet = "",
  Color = "󰏘",
  File = "󰈙",
  Reference = "",
  Folder = "󰉋",
  EnumMember = "",
  Constant = "󰏿",
  Struct = "",
  Event = "",
  Operator = "󰆕",
  TypeParameter = "󰅲",
}

return {
  {
    "hrsh7th/nvim-cmp",
    opts = {
      formatting = {
        fields = { "kind", "abbr", "menu" }, -- order of columns
        format = function(entry, item)
          item.menu = item.kind
          item = require("cmp-tailwind-colors").format(entry, item)
          if kind_icons[item.kind] then
            item.kind = kind_icons[item.kind] .. " "
          end
          return item
        end,
      },
    },
  },
}
