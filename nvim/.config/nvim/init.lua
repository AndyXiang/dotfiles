-- import configs
require("config")

-- import keymaps
require("keymaps")

-- import ls configs
-- rust
local rls = require("lsp.rls")
vim.lsp.config('rust_analyzer', rls)
vim.lsp.enable('rust_analyzer')

