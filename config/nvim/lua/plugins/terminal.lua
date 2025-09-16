return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        size = 10,
        direction = "float",
        float_opts = { border = "curved" },
      })

      local Terminal = require("toggleterm.terminal").Terminal
      local lazysql = Terminal:new({
        cmd = "lazysql",
        hidden = true,
        direction = "float",
      })

      function _lazysql_toggle()
        lazysql:toggle()
      end

      vim.keymap.set("n", "<leader>db", _lazysql_toggle, { noremap = true, silent = true, desc = "lazysql" })
    end,
  },
}
