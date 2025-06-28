local M = {}

local MATH_NODES = {
  displayed_equation = true,
  inline_formula = true,
}

local ts_utils = require("nvim-treesitter.ts_utils")

M.in_text = function()
  return not M.in_math()
end

M.in_math = function()
  local node = ts_utils.get_node_at_cursor()
  while node do
    if MATH_NODES[node:type()] then
      return true
    end
    node = node:parent()
  end
  return false
end

return M
