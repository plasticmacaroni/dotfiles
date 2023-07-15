return {

    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate", -- :MasonUpdate updates registry contents
        lazy = false,
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
          "williamboman/mason.nvim",
          "neovim/nvim-lspconfig"
        },
    },
}   
