return {
  {
    "windwp/nvim-ts-autotag",
    keys = {
      -- This keymap is used to resolve the conflict between the luasnip and autotag
      -- which is not working because of the default keybinging of autotag
      {
        ">",
        function()
          local ls = require("luasnip")
          local autotag = require("nvim-ts-autotag.internal")
          print("hello")
          local row, col = unpack(vim.api.nvim_win_get_cursor(0))
          vim.api.nvim_buf_set_text(0, row - 1, col, row - 1, col, { ">" })
          autotag.close_tag()
          vim.api.nvim_win_set_cursor(0, { row, col + 1 })
          ls.expand_auto()
        end,
        expr = true,
        silent = true,
        mode = "i",
      },
    },
  },
}
