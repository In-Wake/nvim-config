return {
	{
		"OmniSharp/omnisharp-vim",
		config = function()
			local opts = { noremap = true, silent = true }
			vim.api.nvim_set_keymap('n', 'gd', ':OmniSharpGotoDefinition tabedit<CR>', opts)
			vim.api.nvim_set_keymap('n', 'gt', ':OmniSharpGotoTypeDefinition<CR>', opts)
			vim.api.nvim_set_keymap('n', 'gi', ':OmniSharpFindImplementations<CR>', opts)
			vim.api.nvim_set_keymap('n', 'gT', ':OmniSharpFindType<CR>', opts)
			vim.api.nvim_set_keymap('n', 'gu', ':OmniSharpFindUsages<CR>', opts)
			vim.api.nvim_set_keymap('n', 'gm', ':OmniSharpFindMembers<CR>', opts)
			vim.api.nvim_set_keymap('n', 'gU', ':OmniSharpFixUsings<CR>', opts)
			vim.api.nvim_set_keymap('n', 'ga', ':OmniSharpGetCodeActions<CR>', opts)
			vim.api.nvim_set_keymap('n', '<leader>c', ':OmniSharpGlobalCodeCheck<CR>', opts)
			vim.api.nvim_set_keymap('n', 'gr', ':OmniSharpRename<CR>', opts)
			vim.api.nvim_set_keymap('n', '<leader>f', ':OmniSharpCodeFormat<CR>', opts)
			vim.api.nvim_set_keymap('n', '<leader>pd', ':OmniSharpPreviewDefinition<CR>', opts)
			vim.api.nvim_set_keymap('n', '<leader>pi', ':OmniSharpPreviewImplementation<CR>', opts)
			vim.api.nvim_set_keymap('n', 'gn', ':OmniSharpNavigateDown<CR>', opts)
			vim.api.nvim_set_keymap('n', 'gp', ':OmniSharpNavigateUp<CR>', opts)
			vim.api.nvim_set_keymap('n', '<leader>rt', ':OmniSharpRunTest<CR>', opts)
			vim.api.nvim_set_keymap('n', '<leader>ra', ':OmniSharpRunTestsInFile<CR>', opts)
			-- Отключаем стандартное сочетание клавиш
			vim.api.nvim_set_keymap('i', '<C-x><C-o>', '<Nop>', opts)
			-- Назначаем новое сочетание клавиш для автодополнения
			vim.api.nvim_set_keymap('i', '<C-x><C-o>', '<C-n>', opts)
		end
 	},
	{
    		'dense-analysis/ale'
	}
}
