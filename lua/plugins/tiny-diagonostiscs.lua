return {
  "rachartier/tiny-inline-diagnostic.nvim",
  lazy = false,
  enabled = false,
  event = "LspAttach",
  priority = 1000, -- needs to load before regular diagnostic virtual_text
  config = function()
    require("tiny-inline-diagnostic").setup()
    vim.diagnostic.config({ virtual_text = true }) -- disable default to avoid duplicate text
  end,
}
