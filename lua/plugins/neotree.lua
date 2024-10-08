return { 
	

 {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    opts = {
      filesystem = {
        filtered_items = {
	   visible = true,
	   show_hidden_count = true,
	   hide_dotfiles = false,
	   hide_gitignored = true,
	   hide_by_name = {
	     -- '.git',
	     -- '.DS_Store',
	     -- 'thumbs.db',
	   },
	  never_show = {},
        },
      }
    },
    config = function()
    	vim.fn.sign_define("DiagnosticSignError",
        	{text = " ", texthl = "DiagnosticSignError"})
      	vim.fn.sign_define("DiagnosticSignWarn",
		{text = " ", texthl = "DiagnosticSignWarn"})
      	vim.fn.sign_define("DiagnosticSignInfo",
        	{text = " ", texthl = "DiagnosticSignInfo"})
      	vim.fn.sign_define("DiagnosticSignHint",
        	{text = "󰌵", texthl = "DiagnosticSignHint"})

      require("neo-tree").setup({})

      vim.keymap.set('n', '<leader>e', ':Neotree float focus<CR>')
      vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')
      end
}
}
