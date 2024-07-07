return { 
	{
		'nvim-treesitter/nvim-treesitter',
		config = function()
			require 'nvim-treesitter.install'.compilers = { 'zig' }
			require'nvim-treesitter.configs'.setup {
  			-- A list of parser names, or "all" (the five listed parsers should always be installed)
  			ensure_installed = { "c_sharp", "lua", "typescript", "c", "vim", "vimdoc", "query" },
			highlight = {
    				enable = true,
				},
			}
		end
	}
}
