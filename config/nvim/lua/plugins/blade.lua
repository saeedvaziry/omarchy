return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        blade = { "prettier" },
      },
      formatters = {
        prettier = {
          command = "npx",
          args = { "prettier", "--stdin-filepath", "$FILENAME" },
        },
      },
    },
  },
}
