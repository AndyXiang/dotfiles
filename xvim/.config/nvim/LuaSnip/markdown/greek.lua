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
local md = require("util.markdown")

ls.add_snippets("markdown", {
  s({ trig = ";a", snippetType = "autosnippet" }, { t("\\alpha") }, { condition = md.in_math }),
  s({ trig = ";b", snippetType = "autosnippet" }, { t("\\beta") }, { condition = md.in_math }),
  s({ trig = ";g", snippetType = "autosnippet" }, { t("\\gamma") }, { condition = md.in_math }),
  s({ trig = ";r", snippetType = "autosnippet" }, { t("\\rho") }, { condition = md.in_math }),
  s({ trig = ";e", snippetType = "autosnippet" }, { t("\\epsilon") }, { condition = md.in_math }),
  s({ trig = ";t", snippetType = "autosnippet" }, { t("\\theta") }, { condition = md.in_math }),
  s({ trig = ";p", snippetType = "autosnippet" }, { t("\\phi") }, { condition = md.in_math }),
  s({ trig = ";o", snippetType = "autosnippet" }, { t("\\omega") }, { condition = md.in_math }),
  s({ trig = ";A", snippetType = "autosnippet" }, { t("\\Alpha") }, { condition = md.in_math }),
  s({ trig = ";B", snippetType = "autosnippet" }, { t("\\Beta") }, { condition = md.in_math }),
  s({ trig = ";G", snippetType = "autosnippet" }, { t("\\Gamma") }, { condition = md.in_math }),
  s({ trig = ";O", snippetType = "autosnippet" }, { t("\\Omega") }, { condition = md.in_math }),
  s({ trig = "psi", snippetType = "autosnippet" }, { t("\\psi") }, { condition = md.in_math }),
  s({ trig = "eta", snippetType = "autosnippet" }, { t("\\eta") }, { condition = md.in_math }),
  s({ trig = "tau", snippetType = "autosnippet" }, { t("\\tau") }, { condition = md.in_math }),
})
