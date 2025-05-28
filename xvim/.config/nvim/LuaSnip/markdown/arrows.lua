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
  s({ trig = "->", dscr = "right arrow", snippetType = "autosnippet" }, t("\\to"), { condition = md.in_math }),
  s({ trig = "<-", dscr = "left arrow", snippetType = "autosnippet" }, t("\\gets"), { condition = md.in_math }),
  s({ trig = "=>", dscr = "implies", snippetType = "autosnippet" }, t("\\implies"), { condition = md.in_math }),
  s({ trig = "<=", dscr = "ge", snippetType = "autosnippet" }, t("\\ge"), { condition = md.in_math }),
})
