local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local tex = require("util.latex")

ls.add_snippets("markdown", {
  s({ trig = ";a", snippetType = "autosnippet" }, { t("\\alpha") }, { condition = tex.in_mathzone }),
  s({ trig = ";b", snippetType = "autosnippet" }, { t("\\beta") }, { condition = tex.in_mathzone }),
  s({ trig = ";g", snippetType = "autosnippet" }, { t("\\gamma") }, { condition = tex.in_mathzone }),
  s({ trig = ";r", snippetType = "autosnippet" }, { t("\\rho") }, { condition = tex.in_mathzone }),
  s({ trig = ";e", snippetType = "autosnippet" }, { t("\\epsilon") }, { condition = tex.in_mathzone }),
  s({ trig = ";t", snippetType = "autosnippet" }, { t("\\theta") }, { condition = tex.in_mathzone }),
  s({ trig = ";p", snippetType = "autosnippet" }, { t("\\phi") }, { condition = tex.in_mathzone }),
  s({ trig = ";o", snippetType = "autosnippet" }, { t("\\omega") }, { condition = tex.in_mathzone }),
  s({ trig = ";A", snippetType = "autosnippet" }, { t("\\Alpha") }, { condition = tex.in_mathzone }),
  s({ trig = ";B", snippetType = "autosnippet" }, { t("\\Beta") }, { condition = tex.in_mathzone }),
  s({ trig = ";G", snippetType = "autosnippet" }, { t("\\Gamma") }, { condition = tex.in_mathzone }),
  s({ trig = ";O", snippetType = "autosnippet" }, { t("\\Omega") }, { condition = tex.in_mathzone }),
  s({ trig = "psi", snippetType = "autosnippet" }, { t("\\psi") }, { condition = tex.in_mathzone }),
  s({ trig = "eta", snippetType = "autosnippet" }, { t("\\eta") }, { condition = tex.in_mathzone }),
  s({ trig = "tau", snippetType = "autosnippet" }, { t("\\tau") }, { condition = tex.in_mathzone }),
})
