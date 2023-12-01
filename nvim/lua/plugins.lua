vim.cmd [[packadd packer.nvim]]


return require("packer").startup(function(use)
	-- packer.nvim
	use 'wbthomason/packer.nvim'
	
	-- nvim-tree
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons',
		},
		tag = 'nightly'
	}
end)


