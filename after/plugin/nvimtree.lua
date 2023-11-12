-- Define a global variable to track the state of the nvim-tree
local is_tree_open = false

-- Function to toggle the nvim-tree
function toggle_tree()
  if is_tree_open then
    vim.cmd("NvimTreeClose")
  else
    vim.cmd("NvimTreeOpen")
  end
  is_tree_open = not is_tree_open
end

-- Map leader+e to toggle the nvim-tree
vim.api.nvim_set_keymap('n', '<leader>e', ':lua toggle_tree()<CR>', { noremap = true, silent = true })

-- Your existing nvim-tree configuration
local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
end

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

