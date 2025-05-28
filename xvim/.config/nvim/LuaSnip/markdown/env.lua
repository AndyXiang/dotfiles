local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep
local md = require("util.markdown")

ls.add_snippets("markdown", {
  s(
    { trig = "align", dscr = "insert align environment in math", snippetType = "autosnippet" },
    fmta(
      [[
        \begin{align}
          <>
        \end{align}
      ]],
      { i(1) }
    ),
    { condition = md.in_math }
  ),
  s(
    { trig = "pmat", dscr = "insert pmatrix env", snippetType = "autosnippet" },
    fmta(
      [[
      \begin{pmatrix}
        <>
      \end{pmatrix}
      ]],
      { i(1) }
    ),
    { condition = md.in_math }
  ),
  s(
    { trig = "bmatrix", dscr = "insert bmatrix", snippetType = "autosnippet" },
    fmta(
      [[
      \begin{bmatrix}
        <>
      \end{bmatrix}
      ]],
      { i(1) }
    ),
    { condition = md.in_math }
  ),
})
