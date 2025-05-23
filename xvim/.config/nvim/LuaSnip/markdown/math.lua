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

local tex = require("util.latex")

ls.add_snippets("markdown", {
  s({ trig = "mk", dscr = "insert inline math block", snippetType = "autosnippet" }, fmta("$<>$", { i(1) })),
  s({ trig = "dm", dscr = "insert between-line math block", snippetType = "autosnippet" }, fmta("$$ <> $$", { i(1) })),
  s(
    { trig = "//", dscr = "insert fraction", snippetType = "autosnippet" },
    fmta("\\frac{<>}{<>}", { i(1), i(2) }),
    { condition = tex.in_latex }
  ),
  s(
    { trig = "rm", dscr = "roman font", snippetType = "autosnippet" },
    fmta("\\mathrm{<>}", { i(1) }),
    { condition = tex.in_latex }
  ),
  s(
    { trig = "mfk", dscr = "frak font", snippetType = "autosnippet" },
    fmta("\\mathfrac{<>}", { i(1) }),
    { condition = tex.in_latex }
  ),
  s(
    { trig = "ii", dscr = "imaginary unary in roman font", snippetType = "autosnippet" },
    t("\\mathrm{i}"),
    { condition = tex.in_latex }
  ),
})
