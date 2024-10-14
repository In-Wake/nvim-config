return {
	{
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

    config = function()
	require("mason").setup()
	require("mason-lspconfig").setup {
		ensure_installed = {
			"tsserver"
		},
		automatic_installation = true,
	}
	local lspconfig = require "lspconfig"
	lspconfig.tsserver.setup({})

    end
}
}
