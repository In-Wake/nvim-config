return {
	{
		'romgrk/barbar.nvim',
    		dependencies = {
      			'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      			'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    		},
    		init = function() vim.g.barbar_auto_setup = false end,
    		opts = {
      			-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      			-- animation = true,
      			-- insert_at_start = true,
      			-- …etc.
    		},
    		version = '^1.0.0', -- optional: only update when a new 1.x version is released
		config = function()	
      			-- Применение настроек
      			require('bufferline').setup()
			local op = { noremap = true, silent = true }
			vim.api.nvim_set_keymap('n', '<leader>h', ':BufferPrevious<CR>', op)
			vim.api.nvim_set_keymap('n', '<leader>l', ':BufferNext<CR>', op)
			vim.api.nvim_set_keymap('n', '<leader>1', ':BufferGoto 1<CR>', op)
			vim.api.nvim_set_keymap('n', '<leader>2', ':BufferGoto 2<CR>', op)
			vim.api.nvim_set_keymap('n', '<leader>3', ':BufferGoto 3<CR>', op)
			vim.api.nvim_set_keymap('n', '<leader>4', ':BufferGoto 4<CR>', op)
			vim.api.nvim_set_keymap('n', '<leader>5', ':BufferGoto 5<CR>', op)
			vim.api.nvim_set_keymap('n', '<leader>6', ':BufferGoto 6<CR>', op)
			vim.api.nvim_set_keymap('n', '<leader>7', ':BufferGoto 7<CR>', op)
			vim.api.nvim_set_keymap('n', '<leader>8', ':BufferGoto 8<CR>', op)
			vim.api.nvim_set_keymap('n', '<leader>9', ':BufferGoto 9<CR>', op)
			vim.api.nvim_set_keymap('n', '<leader>0', ':BufferLast<CR>', op)
			vim.api.nvim_set_keymap('n', '<leader>p', ':BufferPin<CR>', op)
			vim.api.nvim_set_keymap('n', '<leader>bc', ':BufferClose<CR>', op)
			--vim.api.nvim_set_keymap('n', '<leader>w', ':BufferWipeout<CR>', op)
			vim.api.nvim_set_keymap('n', '<leader>bp', ':BufferPick<CR>', op)
		end
  }}
