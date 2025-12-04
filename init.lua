-- Set leader key
vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

vim.cmd("colorscheme eva01")

-- Basic Neovim settings (can be expanded later)
vim.opt.nu = true -- Line numbers
vim.opt.relativenumber = true -- Relative line numbers
vim.opt.tabstop = 4 -- Tab size
vim.opt.shiftwidth = 4 -- Indent size
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.hlsearch = false -- No highlight on search
vim.opt.incsearch = true -- Incremental search
vim.opt.termguicolors = true -- Enable true colors in the terminal
vim.opt.scrolloff = 8 -- Lines to keep above/below cursor
vim.opt.undofile = true -- Persistent undo
vim.opt.swapfile = false -- No swap files
vim.opt.backup = false -- No backup files
vim.opt.showmode = false -- Hide -- INSERT -- etc.
vim.opt.mouse = "a" -- Enable mouse
