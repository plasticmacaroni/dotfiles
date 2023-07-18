return {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      local configs = require 'nvim-treesitter.configs'
      configs.setup {
        run = ':TSUpdate',
        event = "BufRead",
        ensure_installed = {
        "bash",
        "go",
        "html",
        "javascript",
        "json",
        "lua",
        "luadoc",
        "luap",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
        highlight = {
          enable = true
        },
        indent = { enable = true },
      }
    end,
}