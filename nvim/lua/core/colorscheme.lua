vim.cmd('set termguicolors')
vim.cmd('set background=dark')
--vim.cmd('let g:seoul256_background=233')


require("gruvbox").setup({
	italic = {
    	strings = false,
	    emphasis = true,
    	comments = false,
	    operators = false,
    	folds = true,
	},
})

vim.cmd('colorscheme fleet')
