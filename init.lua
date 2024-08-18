require("core.lazy")
require("core.configs")
vim.api.nvim_set_hl(0, 'LineNr', { fg = "#aaaaaa"})

vim.o.shell = "powershell"
vim.o.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
vim.o.shellquote = ""
vim.o.shellxquote = ""
