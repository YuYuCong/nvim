return {

  -- LazyVim includes extra specs to properly setup lspconfig,
  -- treesitter, mason and typescript.nvim.
  { import = "lazyvim.plugins.extras.lang.clangd" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "c",
        "cpp",
        "cmake",
      })
    end,
  },

  {
    "nvim-lspconfig",
    opts = {
      on_attach = function(client, bufnr)
        require("lsp-progress").on_attach(client, bufnr)
      end,
    },
  },

  {
    "linrongbin16/lsp-progress.nvim",
    opts = {
      client_progress_message = true,
      client_progress_delay = 1000,
    },
  },
}
