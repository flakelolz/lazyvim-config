local cmp = require("cmp")
-- Doesn't select the first item by default. All three of these options are needed.
return {
  "hrsh7th/nvim-cmp",
  opts = {
    preselect = cmp.PreselectMode.None,
    completion = {
      -- completeopt = "menuone,noselect,preview",
      completeopt = "menu,menuone,noselect,noinsert",
    },
    mapping = {
      ["<CR>"] = cmp.mapping.confirm({ select = false }),

    },
  },
}
