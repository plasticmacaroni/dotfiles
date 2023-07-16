return {
    "nvim-neo-tree/neo-tree.nvim",
    -- cmd = "Neotree",
    dependencies = { 
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
      },
      opts = {
        vim.keymap.set("n", "<C-S-P>", ":Neotree %:p:h:h<CR>", {noremap = true, silent = true}, { desc = "Open Neotree to folder one up from current buffer" }),
      }
}