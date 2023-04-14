return {

  -- customize file explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      close_if_last_window = true,
      filesystem = {
        -- follow_current_file = true,
        hijack_netrw_behavior = "open_default",
      },
    },
  },

  -- which key extensions
  {
    "folke/which-key.nvim",
    opts = function()
      require("which-key").register({
        ["<leader>d"] = { name = "+debug", mode = { "n", "v" } },
      })
    end,
  },
}
