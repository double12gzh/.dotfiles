-- Shorten function names
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true, nowait = true }

-- Normal mode
-- Source current file
--keymap("n", "<C-o>", "<cmd>so %<cr>", { noremap = true })
-- Save in normal mode
--keymap("n", "<C-s>", "<cmd>w<cr>", { noremap = true })
-- Increment/decrement
keymap("n", "+", "<C-a>", opts)
keymap("n", "-", "<C-x>", opts)
-- Select all
--keymap("n", "<C-a>", "gg<S-v>G", opts)

keymap("n", "<A-[>", "<cmd>vertical resize -5<CR>", opts)
keymap("n", "<A-]>", "<cmd>vertical resize +5<CR>", opts)

--- Buffer keymap (A buffer is in-memory text of a file.)
-- Move one buffer(window) right
--keymap("n", "<C-L>", "<C-W><C-L>", opts)
---- Move one buffer(window) left
--keymap("n", "<C-H>", "<C-W><C-H>", opts)
---- Move one buffer(window) up
--keymap("n", "<C-K>", "<C-W><C-K>", opts)
---- Move one buffer(window) down
--keymap("n", "<C-J>", "<C-W><C-J>", opts)

--- Window keymap (A windows is a viewport on a buffer.)
keymap("n", "<C-j>", "<C-w>j", opts) -- to bottom window
keymap("n", "<C-k>", "<C-w>k", opts) -- to top window
keymap("n", "<C-h>", "<C-w>h", opts) -- to left window
keymap("n", "<C-l>", "<C-w>l", opts) -- to right window

keymap("i", "<C-u>", "<C-G>u<C-U>", opts)
keymap("i", "<C-b>", "<Left>", opts)
keymap("i", "<C-a>", "<ESC>^i", opts)

--- Tab keymap (A tab page is a collection of windows.)
-- Create a new tab
--keymap("n", "tn", "<cmd>tabnew<cr>", opts)
---- Move to next tab
--keymap("n", "tk", "<cmd>tabnext<cr>", opts)
---- Move to previous tab
--keymap("n", "tj", "<cmd>tabprevious<cr>", opts)
---- Only keep current tab
--keymap("n", "to", "<cmd>tabonly<cr>", opts)

-- NOTE: Keep things in paste register after paste it when visual selecting things to replace.
-- useful keymaps to replace text after copying thing, @ThePrimeagen
--keymap("x", "<leader><leader>p", '"_dP', opts)
--keymap("n", "x", '"_x', opts)
--keymap("n", "X", '"_X', opts)

-- Move selected lines Up/Down with auto-indent, @ThePrimeagen
keymap("v", "J", ":m '>+1<cr>gv=gv")
keymap("v", "K", ":m '<-2<cr>gv=gv")

-- Keep cursor inplace if below line being append to current line when moving, @ThePrimeagen
keymap("n", "J", "mzJ`z")

-- Do nothing when press "Q", @ThePrimeagen
keymap("n", "Q", "<nop>")

-- start replacment mode of current word, @ThePrimeagen
--keymap("n", "<leader><leader>s", "<cmd>%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- chmod +x current file, @ThePrimeagen
--keymap("n", "<leader><leader>x", "<cmd>!chmod +x %<cr>")

-- Save in insert mode
--keymap("i", "<C-s>", "<esc>:w<cr>", {})

-- Blink cursor
--local timer = vim.loop.new_timer()
--local blink = function()
--	local cnt, blink_times = 0, 8
--
--	timer:start(
--		0,
--		100,
--		vim.schedule_wrap(function()
--			vim.cmd("set cursorcolumn! cursorline!")
--
--			cnt = cnt + 1
--			if cnt == blink_times then
--				timer:stop()
--			end
--		end)
--	)
--end
--keymap("n", "<leader>cb", blink)

-- Make Ascii art font
--keymap("n", "<leader>aA", "<cmd>.!toilet -w 200 -f standard<cr>", opts)
--keymap("n", "<leader>aa", "<cmd>.!toilet -w 200 -f small<cr>", opts)
---- Make Ascii border
--keymap("n", "<leader>ab", "<cmd>.!toilet -f term -F border<cr>", opts)
-- ??????????????????
-- ???test???
-- ??????????????????

-- command line
keymap("c", "<C-b>", "<Left>", opts)
keymap("c", "<C-f>", "<Right>", opts)
keymap("c", "<C-a>", "<Home>", opts)
keymap("c", "<C-e>", "<End>", opts)
keymap("c", "<C-d>", "<Del>", opts)
keymap("c", "<C-h>", "<BS>", opts)
keymap("c", "<C-t>", [[<C-R>=expand("%:p:h") . "/" <CR>]], opts)
