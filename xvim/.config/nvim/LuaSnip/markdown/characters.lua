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
    { trig = "ii", dscr = "imaginary unary in roman font", snippetType = "autosnippet" },
    t("\\mathrm{i}"),
    { condition = md.in_math }
  ),
  s(
    { trig = "RR", dscr = "R in bold for real numbers", snippetType = "autosnippet" },
    t("\\mathbb{R}"),
    { condition = md.in_math }
  ),
  s(
    { trig = "ZZ", dscr = "Z in bold for integers", snippetType = "autosnippet" },
    t("\\mathbb{Z}"),
    { condition = md.in_math }
  ),
  s(
    { trig = "CC", dscr = "C in bold for complex numbers", snippetType = "autosnippet" },
    t("\\mathbb{C}"),
    { condition = md.in_math }
  ),
  s(
    { trig = "LL", dscr = "L in calligraphic for Lagrangian", snippetType = "autosnippet" },
    t("\\mathcal{L}"),
    { condition = md.in_math }
  ),
  s(
    { trig = "HH", dscr = "H in calligraphic for Lagrangian", snippetType = "autosnippet" },
    t("\\mathcal{H}"),
    { condition = md.in_math }
  ),
})
