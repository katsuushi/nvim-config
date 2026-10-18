return {
  "akinsho/toggleterm.nvim",
  opts = {
    size = function(term)
      if term.direction == "horizontal" then
        return 10 -- height in lines
      elseif term.direction == "vertical" then
        return 40 -- width in columns
      end
    end,
  },
}
