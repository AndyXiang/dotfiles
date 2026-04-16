local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- better cursor movements
map("n", "H", "0w", { silent = true, desc = "move cursor to the begin of line"} )
map("n", "L", "$", { silent = true, desc = "move cursor to the end of line"} )
map("v", "H", "0w", { silent = true, desc = "move cursor to the begin of line"} )
map("v", "L", "$", { silent = true, desc = "move cursor to the end of line"} )

map("n", "j", "gj", { silent = true, desc = "jump between screen lines, not file lines."} )
map("n", "k", "gk", { silent = true, desc = "jump between screen lines, not file lines."} )
map("v", "j", "gj", { silent = true, desc = "jump between screen lines, not file lines."} )
map("v", "k", "gk", { silent = true, desc = "jump between screen lines, not file lines."} )

-- copy/yank from/to clipboard
map("n", "<leader>p", "\"+p", { silent = true, desc = "paste to clipboard", noremap = true })
map("n", "<leader>y", "\"+y", { silent = true, desc = "yank to clipboard" , noremap = true})
map("v", "<leader>p", "\"+p", { silent = true, desc = "paste to clipboard" , noremap = true})
map("v", "<leader>y", "\"+y", { silent = true, desc = "yank to clipboard", noremap = true })
map("n", "<leader>P", "\"+P", { silent = true, desc = "paste to clipboard", noremap = true })
map("v", "<leader>P", "\"+P", { silent = true, desc = "paste to clipboard" , noremap = true})

-- move cursor between windows
map("n", "<leader>wc", ":close<CR>", { silent = true, desc = "close current window" })
map("n", "<leader>wj", "<C-w>j", { silent = true, desc = "move cursor to window below" })
map("n", "<leader>wk", "<C-w>k", { silent = true, desc = "move cursor to window above" })
map("n", "<leader>wh", "<C-w>h", { silent = true, desc = "move cursor to window on the left" })
map("n", "<leader>wl", "<C-w>l", { silent = true, desc = "move cursor to window on the right" })

-- lsp keymaps
map("n", "<leader>xx", ":lua vim.diagnostic.setloclist()<CR>")
map("n", "<leader>xc", ":lua vim.diagnostic.open_float()<CR>")

-- format rust file
map("n", "<leader>rf", "<cmd>RustFmt<CR>")

-- open terminal buffer
map("n", "<leader>tt", "<cmd>split | terminal<CR>", vim.tbl_extend("force", opts, { desc = "Open terminal" }))

-- terminal mode -> normal mode
map("t", "<Esc>", [[<C-\><C-n>]], vim.tbl_extend("force", opts, { desc = "Terminal to normal" }))
