vim.g.vscode = true

if vim.g.vscode then
  require "config.vscode_keymaps"
end

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
