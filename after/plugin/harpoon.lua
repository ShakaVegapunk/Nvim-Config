local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-Left>", function() ui.nav_file(1) end)  -- Control + Left Arrow
vim.keymap.set("n", "<C-Down>", function() ui.nav_file(2) end)  -- Control + Down Arrow
vim.keymap.set("n", "<C-Up>", function() ui.nav_file(3) end)    -- Control + Up Arrow
vim.keymap.set("n", "<C-Right>", function() ui.nav_file(4) end) -- Control + Right Arrow

