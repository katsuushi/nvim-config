-- lua/plugins/colorschemes.lua
return {
  -- onedark
  {
    "navarasu/onedark.nvim",
    lazy = false,
    opts = {
      style = "deep", -- dark, darker, cool, deep, warm, warmer, light
    },
  },
  {
    "Ferouk/bearded-nvim",
    name = "bearded",
    priority = 1000,
  },

  -- nightfox (includes nightfox, dayfox, dawnfox, duskfox, nordfox, terafox, carbonfox)
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    opts = {},
  },

  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    opts = {},
  },

  {

    "ellisonleao/gruvbox.nvim",
    lazy = false,
    name = "gruvbox",
    opts = {},
  },

  {
    "bluz71/vim-moonfly-colors",
    lazy = false,
    name = "moonfly",
  },

  { "savq/melange-nvim", name = "melange", lazy = false },

  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    lazy = false,
  },

  {
    "nyoom-engineering/oxocarbon.nvim",
    name = "oxocarbon",
    lazy = false,
  },
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    lazy = false,
  },

  { "blazkowolf/gruber-darker.nvim", lazy = false },
  { "RRethy/base16-nvim", lazy = false },
  { "builtbyleo/oc-2.nvim", lazy = false },
    { "maroozm/moegi-neovim", lazy=false},
  { "datsfilipe/vesper.nvim", lazy = false },
}
