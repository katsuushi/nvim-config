return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      python = { "black" },
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      c = { "clang_format" },
    },
    format_on_save = false,
  },
}
