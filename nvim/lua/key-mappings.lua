-- For conciseness
-- local opts = { noremap = true, silent = true }
local opts = {}

local map = function(keys, func, desc, mode)
	mode = mode or "n"
	vim.keymap.set(mode, keys, func, { desc = "LSP: " .. desc, noremap = true, silent = true })
end

-- global neovim key mappings
vim.keymap.set("n", "x", '"_x', opts)

-- indent highighting
vim.keymap.set("n", "<leader>i", ":IBLToggle<CR>", { noremap = true, silent = true })

-- my own shortkeys
vim.keymap.set("n", "<leader>*", ":noh<CR>", {})
vim.api.nvim_set_keymap("i", "<C-a>", "<C-o>^", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-e>", "<C-o>$", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-u>", "<PageUp>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-v>", "<PageDown>", { noremap = true, silent = true })

-- FloTerm
vim.keymap.set("n", "<leader>tt", ":FloatermNew<CR>", {})
vim.keymap.set("n", "<leader>r", ":FloatermNew! cargo run<CR>", {})

-- Gitsigns
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})

-- LazyGit
vim.keymap.set("n", "<leader>lg", ":LazyGit<CR>", {})

-- LSP config
pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "ui-select")
map("gd", require("telescope.builtin").lsp_definitions, "[G]oto [D]efinition")
map("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
map("gI", require("telescope.builtin").lsp_implementations, "[G]oto [I]mplementation")
map("<leader>D", require("telescope.builtin").lsp_type_definitions, "Type [D]efinition")
map("<leader>ds", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")
map("<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "[W]orkspace [S]ymbols")
map("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction", { "n", "x" })
map("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
map("K", vim.lsp.buf.hover, "Hover")

-- Snippets
-- vim.api.nvim_set_keymap("i", "<Tab>", "<cmd>lua require'luasnip'.jump(1)<CR>", { silent = true })
-- vim.api.nvim_set_keymap("i", "<S-Tab>", "<cmd>lua require'luasnip'.jump(-1)<CR>", { silent = true })
local ls = require("luasnip")

vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

-- vim.keymap.set({"i", "s"}, "<C-E>", function()
-- 	if ls.choice_active() then
-- 		ls.change_choice(1)
-- 	end
-- end, {silent = true})

-- Neotree
vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal left<CR>", {})
vim.keymap.set("n", "<leader>e", ":Neotree close<CR>", {})

-- None-ls
vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})

-- Window management
vim.keymap.set("n", "<leader>v", "<C-w>v", opts) -- split window vertically
vim.keymap.set("n", "<leader>h", "<C-w>s", opts) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width & height
vim.keymap.set("n", "<leader>xs", ":close<CR>", opts) -- close current split window

-- Navigate between splits
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", opts)

-- Tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", opts) -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", opts) -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", opts) --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", opts) --  go to previous tab

-- Toggle line wrapping
vim.keymap.set("n", "<leader>tw", "<cmd>set wrap!<CR>", opts)

-- Toggle window maximize
vim.keymap.set("n", "<leader>tm", ":MaximizerToggle<CR>", opts)

-- Toggle diagnostic
vim.keymap.set("n", "<leader>td", function()
	if vim.diagnostic.is_disabled(0) then
		vim.diagnostic.enable(0)
		print("Diagnostics enabled")
	else
		vim.diagnostic.disable(0)
		print("Diagnostics disabled")
	end
end, { desc = "Toggle diagnostics for current buffer" })
