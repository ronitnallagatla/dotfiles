return {

  -- add catppuccin
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
  },

  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
  },

  -- Configure LazyVim to load catpuccin
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "catppuccin-mocha",
      colorscheme = "tokyonight",
    },
  },
}
