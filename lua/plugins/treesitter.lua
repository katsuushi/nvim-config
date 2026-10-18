return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "python",
      "javascript",
      "tsx", -- JSX
      "c",
    },
    indent = { enable = true }, -- treesitter-based indentation
  },
}
