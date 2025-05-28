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
    { trig = "mk", dscr = "insert inline math block", snippetType = "autosnippet" },
    fmta("$<>$", { i(1) }),
    { condition = md.in_text }
  ),
  s(
    { trig = "dm", dscr = "insert between-line math block", snippetType = "autosnippet" },
    fmta("$$ <> $$", { i(1) }),
    { condition = md.in_text }
  ),
  s(
    { trig = "//", dscr = "insert fraction", snippetType = "autosnippet" },
    fmta("\\frac{<>}{<>}", { i(1), i(2) }),
    { condition = md.in_math }
  ),
  s(
    { trig = "rm", dscr = "roman font", snippetType = "autosnippet" },
    fmta("\\mathrm{<>}", { i(1) }),
    { condition = md.in_math }
  ),
  s(
    { trig = "mfk", dscr = "frak font", snippetType = "autosnippet" },
    fmta("\\mathfrac{<>}", { i(1) }),
    { condition = md.in_math }
  ),
  s({ trig = "sd", dscr = "power of 2", snippetType = "autosnippet" }, t("^2"), { condition = md.in_math }),
  s({ trig = "td", dscr = "power of 3", snippetType = "autosnippet" }, t("^3"), { condition = md.in_math }),
  s({ trig = "fr", dscr = "power of 4", snippetType = "autosnippet" }, t("^4"), { condition = md.in_math }),
  s(
    { trig = "sq", dscr = "square root", snippetType = "autosnippet" },
    fmta("\\sqrt{<>}", { i(1) }),
    { condition = md.in_math }
  ),
  s(
    { trig = "<>", dscr = "expected value", snippetType = "autosnippet" },
    fmta("\\langle <> \\rangle", { i(1) }),
    { condition = md.in_math }
  ),
  s(
    { trig = "bra", dscr = "Dirac symbol of bra", snippetType = "autosnippet" },
    fmta("\\langle <> |", { i(1) }),
    { condition = md.in_math }
  ),
  s(
    { trig = "ket", dscr = "Dirac symbol of ket", snippetType = "autosnippet" },
    fmta("| <> \\rangle", { i(1) }),
    { condition = md.in_math }
  ),
  s(
    { trig = "brk", dscr = "Dirac symbol of bracket", snippetType = "autosnippet" },
    fmta("\\langle <> | <> \\rangle", { i(1), i(2) }),
    { condition = md.in_math }
  ),
  s({ trig = ">>", dscr = "larger than", snippetType = "autosnippet" }, t("\\gg"), { condition = md.in_math }),
  s({ trig = "<<", dscr = "smaller than", snippetType = "autosnippet" }, t("\\ll"), { condition = md.in_math }),
  s(
    { trig = "\\{", dscr = "big bracket", snippetType = "autosnippet" },
    fmta("\\{ <> \\}", { i(1) }),
    { condition = md.in_math }
  ),
})
