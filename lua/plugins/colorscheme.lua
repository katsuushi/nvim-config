local colorscheme_file = vim.fn.stdpath("config") .. "/last-colorscheme.txt"

local function get_last_colorscheme()
  local file = io.open(colorscheme_file, "r")
  if file then
    local name = file:read("*a")
    file:close()
    if name and name ~= "" then
      return name
    end
  end
  return "tokyonight" -- fallback default if no file exists yet
end

return {
  { "navarasu/onedark.nvim", lazy = true },
  { "EdenEast/nightfox.nvim", lazy = true },
  { "projekt0n/github-nvim-theme", lazy = true, name = "github-theme" },
  { "folke/tokyonight.nvim", lazy = true },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = get_last_colorscheme(),
    },
  },
}
