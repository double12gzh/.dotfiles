local use_ssh = require("core.settings").use_ssh

vim.api.nvim_set_option_value("foldmethod", "expr", {})
vim.api.nvim_set_option_value("foldexpr", "nvim_treesitter#foldexpr()", {})

require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"bash",
		"c",
		-- "comment", -- comments are slowing down TS bigtime, so disable for now
		"cpp",
		"css",
		"gitignore",
		"go",
		"gomod",
		"html",
		"javascript",
		"json",
		"latex",
		"lua",
		"make",
		"markdown",
		"markdown_inline",
		"norg",
		"org",
		"python",
		"rust",
		"regex",
		"toml",
		"tsx",
		"typescript",
		"typescript",
		"vim",
		"yaml",
		"help",
	},
	sync_install = true,
	ignore_install = {},
	incremental_selection = {
		enable = false,
	},
	playground = {
		enable = true,
		disable = {},
		updatetime = 50, -- Debounced time for highlighting nodes in the playground from source code
		persist_queries = true, -- Whether the query persists across vim sessions
	},
	highlight = {
		enable = true,
		-- only use vim-go's highlight for go type files
		disable = { "go" },
		additional_vim_regex_highlighting = true,
	},
	indent = {
		enable = false,
	},
	autotag = {
		enable = true,
	},
	textobjects = {
		select = {
			enable = true,
			lookahead = true,
			keymaps = {
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				["ic"] = "@class.inner",
			},
		},
		move = {
			enable = true,
			set_jumps = true, -- whether to set jumps in the jumplist
			goto_next_start = {
				["]["] = "@function.outer",
				["]m"] = "@class.outer",
			},
			goto_next_end = {
				["]]"] = "@function.outer",
				["]M"] = "@class.outer",
			},
			goto_previous_start = {
				["[["] = "@function.outer",
				["[m"] = "@class.outer",
			},
			goto_previous_end = {
				["[]"] = "@function.outer",
				["[M"] = "@class.outer",
			},
		},
	},
	rainbow = {
		enable = true,
		extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
		max_file_lines = 2000, -- Do not enable for files with more than 2000 lines, int
	},
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
	matchup = { enable = true },
	-- markid = { enable = true },
})

-- if Dowloading is slow, uncomment and update proxy
--require("nvim-treesitter.install").command_extra_args = {
--    curl = { "--proxy", "http://xxx.aaa.com:aaa"  },
--}

require("nvim-treesitter.install").prefer_git = true
if use_ssh then
	local parsers = require("nvim-treesitter.parsers").get_parser_configs()
	for _, p in pairs(parsers) do
		p.install_info.url = p.install_info.url:gsub("https://github.com/", "git@github.com:")
	end
end
