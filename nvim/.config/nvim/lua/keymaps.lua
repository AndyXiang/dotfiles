-- better cursor movements
vim.keymap.set("n", "H", "0w", { silent = true, desc = "move cursor to the begin of line"} )
vim.keymap.set("n", "L", "$", { silent = true, desc = "move cursor to the end of line"} )
vim.keymap.set("v", "H", "0w", { silent = true, desc = "move cursor to the begin of line"} )
vim.keymap.set("v", "L", "$", { silent = true, desc = "move cursor to the end of line"} )

vim.keymap.set("n", "j", "gj", { silent = true, desc = "jump between screen lines, not file lines."} )
vim.keymap.set("n", "k", "gk", { silent = true, desc = "jump between screen lines, not file lines."} )
vim.keymap.set("v", "j", "gj", { silent = true, desc = "jump between screen lines, not file lines."} )
vim.keymap.set("v", "k", "gk", { silent = true, desc = "jump between screen lines, not file lines."} )

-- copy/yank from/to clipboard
vim.keymap.set("n", "<leader>p", "\"+p", { silent = true, desc = "paste to clipboard", noremap = true })
vim.keymap.set("n", "<leader>y", "\"+y", { silent = true, desc = "yank to clipboard" , noremap = true})
vim.keymap.set("v", "<leader>p", "\"+p", { silent = true, desc = "paste to clipboard" , noremap = true})
vim.keymap.set("v", "<leader>y", "\"+y", { silent = true, desc = "yank to clipboard", noremap = true })
vim.keymap.set("n", "<leader>P", "\"+P", { silent = true, desc = "paste to clipboard", noremap = true })
vim.keymap.set("v", "<leader>P", "\"+P", { silent = true, desc = "paste to clipboard" , noremap = true})

-- move cursor between windows
vim.keymap.set("n", "<leader>wc", ":close<CR>", { silent = true, desc = "close current window" })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { silent = true, desc = "move cursor to window below" })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { silent = true, desc = "move cursor to window above" })
vim.keymap.set("n", "<leader>wh", "<C-w>h", { silent = true, desc = "move cursor to window on the left" })
vim.keymap.set("n", "<leader>wl", "<C-w>l", { silent = true, desc = "move cursor to window on the right" })

-- lsp keymaps
vim.keymap.set("n", "<leader>xx", ":lua vim.diagnostic.setloclist()<CR>")
vim.keymap.set("n", "<leader>xc", ":lua vim.diagnostic.open_float()<CR>")

-- format rust file
vim.keymap.set("n", "<leader>rf", "<cmd>RustFmt<CR>")


