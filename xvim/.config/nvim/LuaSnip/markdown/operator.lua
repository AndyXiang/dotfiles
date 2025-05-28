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
  s({ trig = "cup", dscr = "set union", snippetType = "autosnippet" }, t("\\cup"), { condition = md.in_math }),
  s({ trig = "cap", dscr = "set intersection", snippetType = "autosnippet" }, t("\\cap"), { condition = md.in_math }),
})
