-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- vim.opt.relativenumber = false
vim.g.lazyvim_php_lsp = "intelephense"
vim.g.lazyvim_prettier_needs_config = false
-- vim.opt.guicursor = ""
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.showbreak = "↪ "
vim.o.timeoutlen = 0

vim.g.lazyvim_rust_diagnostics = "rust-analyzer"
