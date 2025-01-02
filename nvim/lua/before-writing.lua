vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function()
		-- trailing whitespace removal
		vim.cmd([[ %s/\s\+$//e ]])

		-- run the formater
		-- vim.lsp.buf.format()
	end,
})
