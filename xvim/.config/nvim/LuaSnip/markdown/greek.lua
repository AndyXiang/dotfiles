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

ls.add_snippets("markdown", {
  s({ trig = ";a", snippetType = "autosnippet" }, { t("\\alpha") }),
  s({ trig = ";b", snippetType = "autosnippet" }, { t("\\beta") }),
  s({ trig = ";g", snippetType = "autosnippet" }, { t("\\gamma") }),
  s({ trig = ";r", snippetType = "autosnippet" }, { t("\\rho") }),
  s({ trig = ";e", snippetType = "autosnippet" }, { t("\\epsilon") }),
  s({ trig = ";t", snippetType = "autosnippet" }, { t("\\theta") }),
  s({ trig = ";p", snippetType = "autosnippet" }, { t("\\phi") }),
  s({ trig = ";o", snippetType = "autosnippet" }, { t("\\omega") }),
  s({ trig = ";A", snippetType = "autosnippet" }, { t("\\Alpha") }),
  s({ trig = ";B", snippetType = "autosnippet" }, { t("\\Beta") }),
  s({ trig = ";G", snippetType = "autosnippet" }, { t("\\Gamma") }),
  s({ trig = ";O", snippetType = "autosnippet" }, { t("\\Omega") }),
  s({ trig = "psi", snippetType = "autosnippet" }, { t("\\psi") }),
  s({ trig = "eta", snippetType = "autosnippet" }, { t("\\eta") }),
  s({ trig = "tau", snippetType = "autosnippet" }, { t("\\tau") }),
})
