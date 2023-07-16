return { 
  {
    'akinsho/toggleterm.nvim', 
    version = "*", 
    config = true,

    -- automagically calls require("toggleterm").setup(opts)...
    opts = {
      direction = 'horizontal',
      -- open_mapping = [[<C-P>]]
      vim.keymap.set('t', '<C-p>', [[<C-\><C-n>:ToggleTerm<CR>]], {noremap = true, silent = true}, { desc = "Close the terminal with Control + p while in terminal mode" }),
      -- TODO fix the fact that on the first terminal open, it types an "i"
      vim.keymap.set("n", "<C-p>", ":ToggleTerm<CR>i", {noremap = true, silent = true}, { desc = "Open the terminal with Control + p while in normal mode" }),
      vim.keymap.set("i", "<C-p>", "<C-c>:ToggleTerm<CR>i", {noremap = true, silent = true}, { desc = "Open the terminal with Control + p while in insert mode" }),

      -- local keymap = vim.keymap.set,
      -- local s_opts = { silent = true },

      -- vim.keymap.set('t', '<C-P>', [[<C-\><C-n>]], opts),
    },
    -- map <F1> :FloatermNew! cd %:p:h<CR>
  },
}