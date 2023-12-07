return {

  -- add systemverilog to treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "verilog" })
      end
    end,
  },

  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   dependencies = { { "JoosepAlviste/nvim-ts-context-commentstring", lazy = true } },
  --   opts = {
  --     context_commentstring = {
  --       enable = true,
  --       config = {
  --         verilog = "// %s",
  --       },
  --     },
  --   },
  -- },

  -- setup mason lsp
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "svls" })
    end,
  },

  -- correctly setup lspconfig
  {
    "neovim/nvim-lspconfig",
    dependancies = { "dalance/svls" },
    setup = {
      function()
        local lspconfig = require("lspconfig")
        lspconfig.svls.setup({
          cmd = { "svls" },
          filetypes = { "systemverilog", "verilog" },
          root_dir = lspconfig.util.root_pattern("Makefile", ".git", ".svls.toml"),
        })
      end,
    },
  },
}
