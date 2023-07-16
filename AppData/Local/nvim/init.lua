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
-- Lazy loading
vim.opt.rtp:prepend(lazypath)

-- Line numbers
vim.wo.number = true

-- change current working directory when changing buffers/files
vim.opt.autochdir = true

-- Equivalent to `imap <C-c> <esc>`
vim.keymap.set('i', '<C-c>', '<esc>', {noremap = true, silent = true}, { desc = "Bind Control-c to function identically to escape key" })

-- Lazy loading from the plugins folder
require("lazy").setup("plugins")
