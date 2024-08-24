return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",

    opts = function(_, opts)
      vim.list_extend(opts.sections.lualine_x, {
        "filesize",
      })
    end,
  },
}
