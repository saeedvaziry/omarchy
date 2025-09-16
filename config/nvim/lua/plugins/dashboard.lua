return {
  {
    "snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
          end,
          -- dynamically generate header
          header = [[

███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
 ]],
          -- header = (function()
          --   local fortune = vim.fn.executable("fortune") == 1
          --   local cowsay = vim.fn.executable("cowsay") == 1
          --   if fortune and cowsay then
          --     -- run `fortune | cowsay` and capture output
          --     local output = vim.fn.systemlist("fortune | cowsay")
          --     return table.concat(output, "\n")
          --   elseif fortune then
          --     return table.concat(vim.fn.systemlist("fortune"), "\n")
          --   else
          --     return "hello" -- fallback if neither is installed
          --   end
          -- end)(),
          -- stylua: ignore
          ---@type snacks.dashboard.Item[]
          keys = {
            { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')", hidden = true },
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" , hidden = true},
            { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')", hidden = true },
            { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')", hidden = true },
            { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})", hidden = true },
            { icon = " ", key = "s", desc = "Restore Session", section = "session", hidden = true },
            { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras", hidden = true },
            { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy", hidden = true },
            { icon = " ", key = "q", desc = "Quit", action = ":qa", hidden = true },
          },
          footer = "",
        },
        sections = {
          { section = "header" },
          { section = "keys", gap = 1, padding = 1 },
        },
      },
    },
  },
}
