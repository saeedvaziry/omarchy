return {
  {
    dir = vim.fn.expand("~") .. "/Drafts/wal.nvim",
    name = "wal.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("wal").setup({
        transparent = true,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "wal",
    },
  },
}

-- return {
-- 	"saeedvaziry/wal.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
-- }
