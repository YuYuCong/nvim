local enable = false
if not enable then
  return {}
end

return {
  {
    "nvim-telescope/telescope.nvim",
    vscode = true,
    -- add user defined keymaps
    keys = {
      {
        -- browse plugin files
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Plugin File",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = {
          prompt_position = "top",
        },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}
