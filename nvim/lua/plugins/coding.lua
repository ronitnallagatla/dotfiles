return {
  -- extend auto completion
  -- {
  --   "hrsh7th/nvim-cmp",
  --   opts = function(_, opts)
  --     local cmp = require("cmp")
  --     opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
  --       ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
  --       ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
  --     })
  --   end,
  -- },

  -- extend blink completion
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },
      },
    },
  },

  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    opts = {
      config = {
        cuda = "// %s",
      },
    },
  },
}
