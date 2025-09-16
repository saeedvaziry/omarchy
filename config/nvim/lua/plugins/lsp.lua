return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      rust_analyzer = {
        mason = false,
      },
      settings = {
        ["rust-analyzer"] = {
          cargo = {
            allFeatures = true,
          },
          completion = {
            autoimport = {
              enable = true,
            },
            postfix = {
              enable = true,
            },
          },
          imports = {
            granularity = {
              group = "module",
            },
            prefix = "self",
          },
        },
      },
    },
  },
}
