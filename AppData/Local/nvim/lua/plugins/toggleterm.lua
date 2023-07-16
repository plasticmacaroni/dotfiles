return { 
  {
    'akinsho/toggleterm.nvim', 
    version = "*", 
    config = true,

    -- automagically calls require("toggleterm").setup(opts)...
    opts = {
      direction = 'horizontal',
      -- open_mapping = [[<C-P>]]
      vim.api.nvim_set_keymap('t', '<C-P>', [[<C-\><C-n>:ToggleTerm<CR>]], {noremap = true, silent = true}),
      -- TODO fix the fact that on the first terminal open, it types an "i"
      vim.api.nvim_set_keymap("n", "<C-P>", ":ToggleTerm<CR>i", {noremap = true, silent = true}),
      vim.api.nvim_set_keymap("i", "<C-P>", "<C-c>:ToggleTerm<CR>i", {noremap = true, silent = true}),
      -- vim.api.nvim_set_keymap("t", "<C-P>", "<C-/><C-n>", {noremap = true, silent = true}),
      -- vim.api.nvim_set_keymap("i", "<C-P>", ":ToggleTerm<CR>", {noremap = true, silent = true}),

      -- local keymap = vim.keymap.set,
      -- local s_opts = { silent = true },

      -- vim.keymap.set('t', '<C-P>', [[<C-\><C-n>]], opts),
    },
    -- map <F1> :FloatermNew! cd %:p:h<CR>
  },
}