local enable = true
if not enable then
  return {}
end

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
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          keys = {
            { "<leader>ch", "<cmd>ClangdSwitchSourceHeader<cr>", desc = "Switch Source/Header (C/C++)" },
          },
        },
      },
    },
  },

  -- 大工程需要lsp进度条
  {
    "linrongbin16/lsp-progress.nvim",
    event = "VeryLazy",
    opts = {},
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_x = {
          function()
            return require("lsp-progress").progress()
          end,
          "filesize",
          "filetype",
        },
      },
    },
  },
}
