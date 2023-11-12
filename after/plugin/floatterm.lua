-- FloaTerm configuration
-- local function map(mode, key, command)
local function map(mode, key, command)
  vim.api.nvim_set_keymap(mode, key, command, {})
end


vim.keymap.set('n', '<Leader>ft', ":FloatermNew --name=myfloat --height=0.8 --width=0.7 --autoclose=2 fish <CR> ")

