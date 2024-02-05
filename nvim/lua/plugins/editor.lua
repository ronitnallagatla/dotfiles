return {

  -- customize file explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      close_if_last_window = true,
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
        group_empty_dirs = true,
        hijack_netrw_behavior = "open_default",
      },
    },
  },

  -- which key extensions
  -- {
  --   "folke/which-key.nvim",
  --   opts = function()
  --     require("which-key").register({
  --       ["<leader>d"] = { name = "+debug", mode = { "n", "v" } },
  --     })
  --   end,
  -- },
  --
  -- Copilot which key extension
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>a"] = { name = "+ai" },
      },
    },
  },
  vim.keymap.set("n", "<leader>ae", "<cmd>Copilot enable<cr>", { desc = "Enable Copilot" }),
  vim.keymap.set("n", "<leader>ad", "<cmd>Copilot disable<cr>", { desc = "Disable Copilot" }),
}
