local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Barbar bindings
-- Move to previous/next
map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
-- Re-order to previous/next
map("n", "<leader>bl", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "<leader>bn", "<Cmd>BufferMoveNext<CR>", opts)
-- Goto buffer in position...
map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)
-- Pin/unpin buffer
map("n", "<leader>bp", "<Cmd>BufferPin<CR>", opts)
-- Close buffer
map("n", "<leader>bc", "<Cmd>BufferClose<CR>", opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
--Sort automatically by...
map("n", "<leader>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
map("n", "<leader>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
map("n", "<leader>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

-- Open Dashboard
map("n", "<leader>h", ":Dashboard<CR>", {})

-- LSP Keybindings
map("n", "K", ":lua vim.lsp.buf.hover()<CR>", opts)
map("n", "<leader>gd", ":lua vim.lsp.buf.definition()<CR>", opts)
map("n", "<leader>fa", ":lua vim.lsp.buf.code_action()<CR>", opts)
map("n", "<leader>gf", ":lua vim.lsp.buf.format()<CR>", opts)

-- Neotree Bindings
-- Sets a keymap to allow us to open/close neotree on the right
map("n", "<leader>nr", ":Neotree filesystem toggle right<CR>", opts)
-- Sets a keymap to allow us to focus on the tree if it is open
map("n", "<leader>nf", ":Neotree filesystem focus right<CR>", opts)

-- Telescope Bindings
-- Loads the default keys for telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", {})
map("n", "<leader>fg", ":Telescope live_grep<CR>", {})
map("n", "<leader>fb", ":Telescope buffers<CR>", {})
map("n", "<leader>fh", ":Telescope help_tags<CR>", {})
map("n", "<leader>fu", ":Telescope undo<CR>", {})
-- Keybinding to look through clipboard for telescope
map("n", "<leader>fr", ":Telescope neoclip a extra=star,plus,b <CR>", {})

-- Trouble Keybindings
-- TODO: reset the keybindings because trouble was updated
