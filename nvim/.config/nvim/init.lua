-- import configs
require("config")

-- import keymaps
require("keymaps")

-- import ls configs
-- rust
local rust_analyzer = require("lsp.rust_analyzer")
vim.lsp.config('rust_analyzer', rust_analyzer)
vim.lsp.enable('rust_analyzer')

local pyright = require("lsp.pyright")
vim.lsp.config('pyright', pyright)
vim.lsp.enable('pyright')
