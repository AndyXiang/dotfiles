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
  s({ trig = "->", dscr = "right arrow", snippetType = "autosnippet" }, t("\\to"), { condition = tex.in_latex }),
  s({ trig = "<-", dscr = "left arrow", snippetType = "autosnippet" }, t("\\gets"), { condition = tex.in_latex }),
})
