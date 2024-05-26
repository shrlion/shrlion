return {
	-- install markdown.nvim
	{
		"tadmccorkle/markdown.nvim",
		ft = "markdown",
		opts = {},
	},

	-- install markdown-preview
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
}
