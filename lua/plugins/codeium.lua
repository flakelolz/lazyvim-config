return {
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      vim.g.codeium_no_map_tab = true
      vim.keymap.set("i", "<M-;>", function()
        return vim.fn["codeium#Accept"]()
      end, {
        expr = true,
        noremap = true,
        desc = "Codeium Accept",
      })
    end,
  },
}
