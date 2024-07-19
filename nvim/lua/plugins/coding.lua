return {
  -- -- extend auto completion
  -- {
  --   "hrsh7th/nvim-cmp",
  --   ---@param opts cmp.ConfigSchema
  --   opts = function(_, opts)
  --     local cmp = require("cmp")
  --     opts.mapping = cmp.mapping.preset.insert({
  --       ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
  --       ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
  --       ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
  --       ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
  --       ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
  --       ["<C-e>"] = cmp.mapping({
  --         i = cmp.mapping.abort(),
  --         c = cmp.mapping.close(),
  --       }),
  --       -- Accept currently selected item. If none selected, `select` first item.
  --       -- Set `select` to `false` to only confirm explicitly selected items.
  --       ["<CR>"] = cmp.mapping.confirm({ select = true }),
  --     })
  --   end,
  -- },

  -- extend auto completion
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
        ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
      })
    end,
  },
}
