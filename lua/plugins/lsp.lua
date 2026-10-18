return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        pyright = {
          enabled = true,
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "off",
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "workspace",
                diagnosticSeverityOverrides = {
                  reportMissingImports = "none",
                },
              },
            },
          },
        },
        ruff = {
          enabled = false,
        },
      },
    },
  },
  {
    "mfussenegger/nvim-jdtls",
    ft = "java",
  },
}
