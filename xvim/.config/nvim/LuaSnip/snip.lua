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

ls.add_snippets("lua", {
  s(
    {
      trig = "sptemp",
      dscr = "template of a snippets file",
      snippetType = "autosnippet",
      priority = 1000,
    },
    fmta(
      [[
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

        ls.add_snippets("<>", {
          <>
        })
      ]],
      { i(1), i(2) }
    )
  ),
  s(
    { trig = "snip", dscr = "template of one snippet", snippetType = "autosnippet" },
    fmta(
      [[
        s(
          { trig = "<>", dscr = "<>" },
          fmta(
            <>,
            { <> }
          )
        ),
      ]],
      { i(1), i(2), i(3), i(4) }
    )
  ),
  s(
    { trig = "mdsnip", dscr = "template of a markdown autosnippet", snippetType = "autosnippet" },
    fmta(
      [[
        s(
          { trig = "<>", dscr = "<>", snippetType = "autosnippet" },
          fmta(
            <>,
            { <> }
          ),
          { condition = tex.in_latex }
        ),
      ]],
      { i(1), i(2), i(3), i(4) }
    )
  ),
  s(
    { trig = "atsnip", dscr = "template of one autosnippet", snippetType = "autosnippet" },
    fmta(
      [[
        s(
          { trig = "<>", dscr = "<>", snippetType = "autosnippet" },
          fmta(
            <>,
            { <> }
          )
        ),
      ]],
      { i(1), i(2), i(3), i(4) }
    )
  ),
  s({ trig = "get_visual", dscr = "repeat definition of get_visual() function", snippetType = "autosnippet" }, {
    t([[
        local get_visual = function(args, parent)
          if (#parent.snippet.env.LS_SELECT_RAW > 0) then
            return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
          else  -- If LS_SELECT_RAW is empty, return a blank insert node
            return sn(nil, i(1))
          end
        end
      ]]),
  }),
})
