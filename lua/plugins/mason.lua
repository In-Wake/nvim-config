return {
	{
    "williamboman/mason.nvim",

    config = function()
	require("mason").setup()
	--require("mason-lspconfig").setup {
		--ensure_installed = {
			--"omnisharp",
			--"tsserver"
		--},
		--automatic_installation = true,
	--}
	--local lspconfig = require "lspconfig"
--
	--lspconfig.omnisharp.setup {}
    end
}
}
