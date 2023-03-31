return {

  -- add c/c++ to treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "c", "cpp" })
    end,
  },

  -- setup mason/dap extensions
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "clangd", "cpptools", "clang-format", "cpplint" })
    end,
  },

  -- setup lspconfig
  {
    "neovim/nvim-lspconfig",
    dependancies = { "clangd" },
    setup = {
      function()
        local lspconfig = require("lspconfig")
        lspconfig.clangd.setup({
          cmd = { "clangd" },
          filetypes = { "c", "cpp" },
          root_dir = lspconfig.util.root_pattern("Makefile", ".git", ".clangd.toml"),
        })
      end,
    },
  },

  --
}
