local ui = {}

ui["goolord/alpha-nvim"] = {
	opt = true,
	event = "BufWinEnter",
	config = function()
		require("modules.ui.alpha")
	end,
}
ui["akinsho/bufferline.nvim"] = {
	opt = true,
	tag = "*",
	event = "BufReadPost",
	config = function()
		require("modules.ui.bufferline")
	end,
}
ui["stevearc/dressing.nvim"] = {
	opt = true,
	event = "BufReadPost",
	config = function()
		require("modules.ui.dressing")
	end,
}
ui["NvChad/nvim-colorizer.lua"] = {
	opt = true,
	after = { "nvim-treesitter" },
	config = function()
		require("modules.ui.colorizer")
	end,
}
ui["j-hui/fidget.nvim"] = {
	opt = true,
	event = "BufReadPost",
	config = function()
		require("modules.ui.fidget")
	end,
}
ui["f-person/git-blame.nvim"] = {
	opt = true,
	event = "BufReadPost",
	config = function()
		require("modules.ui.git-blame")
	end,
}
ui["lewis6991/gitsigns.nvim"] = {
	opt = true,
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		require("modules.ui.gitsigns")
	end,
}
ui["sainnhe/gruvbox-material"] = {
	opt = false,
	--event = "VimEnter",
	config = function()
		require("modules.ui.gruvbox-material")
	end,
}
ui["lukas-reineke/indent-blankline.nvim"] = {
	opt = true,
	event = "BufReadPost",
	after = "nvim-treesitter",
	config = function()
		require("modules.ui.indent-blankline")
	end,
}
ui["hoob3rt/lualine.nvim"] = {
	opt = true,
	after = { "nvim-lspconfig", "lspsaga.nvim", "git-blame.nvim" },
	config = function()
		require("modules.ui.lualine")
	end,
}
ui["mvllow/modes.nvim"] = {
	opt = true,
	event = "BufReadPost",
	config = function()
		require("modules.ui.modes")
	end,
}
ui["zbirenbaum/neodim"] = {
	opt = true,
	event = "LspAttach",
	requires = "nvim-treesitter/nvim-treesitter",
	config = function()
		require("modules.ui.neodim")
	end,
}
ui["romainl/vim-cool"] = {
	opt = true,
	event = { "CursorMoved", "InsertEnter" },
	-- after = { "nvim-hlslens" },
}
ui["rcarriga/nvim-notify"] = {
	opt = true,
	event = { "BufReadPre", "UIEnter"  },
	module = "notify",
	config = function()
		require("modules.ui.notify")
	end,
}
ui["kyazdani42/nvim-web-devicons"] = {
	opt = true,
	module = "nvim-web-devicons",
}
ui["petertriho/nvim-scrollbar"] = {
	opt = true,
	event = "BufReadPost",
	module = "scrollbar.handlers.search",
	config = function()
		require("modules.ui.scrollbar")
	end,
}
ui["levouh/tint.nvim"] = {
	opt = true,
	event = { "BufReadPost" },
	config = function()
		require("modules.ui.tint")
	end,
}
ui["folke/todo-comments.nvim"] = {
	opt = true,
	event = "BufReadPost",
	config = function()
		require("modules.ui.todo-comments")
	end,
}
ui["itchyny/vim-highlighturl"] = {
	opt = true,
	event = "BufReadPost",
	config = function()
		vim.g.highlighturl_guifg = "#8AB4F8"
	end,
}

return ui
