return { 
  {
    'akinsho/toggleterm.nvim', 
    version = "*", 
    config = true,

    -- automagically calls require("toggleterm").setup(opts)...
    opts = {
      direction = 'horizontal',
      open_mapping = [[<C-P>]]
      -- vim.api.nvim_set_keymap("n", "<C-P>", ":ToggleTerm<CR>", {noremap = true, silent = true}),
      -- vim.api.nvim_set_keymap("t", "<C-P>", ":ToggleTerm<CR>", {noremap = true, silent = true}),
      -- vim.api.nvim_set_keymap("i", "<C-P>", ":ToggleTerm<CR>", {noremap = true, silent = true}),

      -- local keymap = vim.keymap.set,
      -- local s_opts = { silent = true },

      -- vim.keymap.set('t', '<C-P>', [[<C-\><C-n>]], opts),
    }, 
  },
}