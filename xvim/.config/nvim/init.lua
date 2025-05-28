-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.options")

vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    require("config.autocmds")
    require("config.keymaps")
  end,
})

-- Luasnip Configurations
vim.cmd([[
" Use Tab to expand and jump through snippets
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]])

require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/LuaSnip/" })
require("luasnip").config.set_config({ -- Setting LuaSnip config

  -- Enable autotriggered snippets
  enable_autosnippets = true,

  -- Use Tab (or some other key if you prefer) to trigger visual selection
  store_selection_keys = "<Tab>",
})

-- luasnip and autotag have conflicts for snip ends with >
local ls = require("luasnip")
local autotag = require("nvim-ts-autotag.internal")
vim.keymap.set("i", ">", function()
  local row, col = unpack(vim.api.nvim_win_get_cursor(0))
  vim.api.nvim_buf_set_text(0, row - 1, col, row - 1, col, { ">" })
  autotag.close_tag()
  vim.api.nvim_win_set_cursor(0, { row, col + 1 })
  ls.expand_auto()
end, { remap = false })

require("render-markdown").setup({
  latex = {
    enabled = true,
    render_modes = false,
    converter = "latex2text",
    highlight = "RenderMarkdownMath",
    position = "above",
    top_pad = 0,
    bottom_pad = 0,
  },
})
