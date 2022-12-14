require("legendary").setup({
	which_key = {
		auto_register = true,
		do_binding = false,
	},
	scratchpad = {
		view = "float",
		results_view = "float",
		-- float_border = "double",
		keep_contents = true,
	},
	sort = {
		-- sort most recently used item to the top
		most_recent_first = true,
		-- sort user-defined items before built-in items
		user_items_first = true,
		frecency = {
			-- the directory to store the database in
			db_root = string.format("%s/legendary/", vim.fn.stdpath("data")),
			-- the maximum number of timestamps for a single item
			-- to store in the database
			max_timestamps = 10,
		},
	},
	-- Directory used for caches
	cache_path = string.format("%s/legendary/", vim.fn.stdpath("cache")),
	-- Log level, one of 'trace', 'debug', 'info', 'warn', 'error', 'fatal'
	log_level = "info",
})

require("which-key").register({
	["<leader>"] = {
		d = {
			name = "Dap commands",
			b = "debug: Toggle breakpoint",
			d = "debug: Terminate debug session",
			r = "debug: Continue",
			l = "debug: Open repl",
			i = "debug: Step in",
			o = "debug: Step out",
			v = "debug: Step over",
		},
		f = {
			name = "Telescope commands",
			b = "find: Opened Buffer",
			p = "find: Project",
			w = "find: Word",
			r = "find: File by frecency",
			e = "find: File by history",
			--c = "ui: Change color scheme",
			z = "edit: Change current directory by zoxide",
			f = "find: File under current work directory",
			g = "find: File under current git directory",
			n = "edit: New file",
		},
		h = {
			name = "Gitsigns commands",
			b = "git: Blame line",
			p = "git: Preview hunk",
			s = "git: Stage hunk",
			u = "git: Undo stage hunk",
			r = "git: Reset hunk",
			R = "git: Reset buffer",
		},
		--l = {
		--	name = "LSP commands",
		--	i = "lsp: LSP Info",
		--	r = "lsp: LSP Restart",
		--},
		n = {
			name = "NvimTree commands",
			f = "filetree: NvimTree find file",
			r = "filetree: NvimTree refresh",
		},
		--p = {
		--	name = "Packer commands",
		--	s = "packer: PackerSync",
		--	c = "packer: PackerCompile",
		--	t = "packer: PackerStatus",
		--},
		t = {
			name = "Trouble commands",
			t = "trouble: Toggle",
			r = "trouble: LSP References",
			d = "trouble: Show document diagnostics",
			w = "trouble: Show workspace diagnostics",
			q = "trouble: Show quickfix list",
			l = "trouble: Show loclist",
		},
		r = {
			name = "Search-replace commands",
			s = "search-replace: Select options",
			o = "search-replace: Open search",
			w = "search-replace: Replace word",
			W = "search-replace: Replace WORD",
			e = "search-replace: Replace Expr",
			f = "search-replace: Replace File",
			["bs"] = "search-replace: Select options(multi-buffer)",
			["bo"] = "search-replace: Open search(multi-buffer)",
			["bw"] = "search-replace: Replace word(multi-buffer)",
			["bW"] = "search-replace: Replace WORD(multi-buffer)",
			["be"] = "search-replace: Replace Expr(multi-buffer)",
			["bf"] = "search-replace: Replace File(multi-buffer)",
		},
		["="] = "dial: Increment(Cycle)",
		["-"] = "dial: Decrement(Cycle)",
		["lg"] = "git: Show lazygit",
	},
	["g"] = {
		--["["] = "lsp: Goto prev diagnostic",
		--["]"] = "lsp: Goto next diagnostic",
		a = "lsp: Code action",
		D = "lsp: Preview definition",
		d = "lsp: Goto definition",
		h = "lsp: Show definition and references",
		--o = "lsp: Show outline",
		r = "lsp: Rename",
		s = "lsp: Signature help",
		m = "lsp: Declaration",
		i = "lsp: Implementation",
		t = "lsp: Type definition",
		["DL"] = "lsp: Show loclist",
		["QL"] = "lsp: Show quickfix list",
		--- nvim-surround
		z = "surround: Add surround",
		Z = "surround: Add surround around line",
		["zd"] = "surround: Delete surround",
		["zc"] = "surround: Change surround",
	},
	["]g"] = "git: Goto next hunk",
	["[g"] = "git: Goto prev hunk",
	["e["] = "lsp: Goto prev diagnostic",
	["e]"] = "lsp: Goto next diagnostic",
	--- nvim-surround
	["gz"] = "surround: Add surround",
	["gZ"] = "surround: Add surround around line",
	["gzd"] = "surround: Delete surround",
	["gzc"] = "surround: Change surround",
	["<leader>dv"] = "git: Show diff",
	["<leader><leader>dv"] = "git: Close diff",
	["K"] = "lsp: Hover doc",
	["<F2>"] = "filetree: NvimTree toggle sidebar",
	["<F12>"] = "tool: Markdown preview",

	--- syntax-tree-surfer
	["vx"] = "tree-surfer: Select master node",
	["vn"] = "tree-surfer: Select current node",
	["gv"] = "tree-surfer: Jump to variable_declarations",
	["gfu"] = "tree-surfer: Jump to functions",
	["gif"] = "tree-surfer: Jump to if-statements",
	["gfo"] = "tree-surfer: Jump to for-statements",
	["gj"] = "tree-surfer: Jump to certain nodes",
})
