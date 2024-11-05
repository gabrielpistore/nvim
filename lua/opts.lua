-- Set leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- General settings
vim.opt.autoread = true      -- Automatically read files if modified outside Neovim
vim.opt.autowrite = true     -- Automatically save files before certain actions
vim.opt.backspace = "2"      -- Allow backspace over everything in insert mode
vim.opt.cursorline = true    -- Highlight the line under the cursor
vim.opt.laststatus = 2       -- Always display the status line
vim.opt.showcmd = true       -- Display command in the bottom right
vim.opt.termguicolors = true -- Enable 24-bit RGB colors

-- Disable swap file
vim.opt.swapfile = false

-- Indentation settings
vim.opt.expandtab = true  -- Use spaces instead of tabs
vim.opt.tabstop = 2       -- Set tab width to 2 spaces
vim.opt.shiftwidth = 2    -- Indentation levels to 2 spaces
vim.opt.shiftround = true -- Round indent to the nearest multiple of 'shiftwidth'

-- Line numbering
vim.opt.relativenumber = true -- Show relative line numbers

-- Clipboard mappings
local opts = { noremap = true }
vim.api.nvim_set_keymap("v", "<leader>y", '"+y', opts)   -- Yank to system clipboard in visual mode
vim.api.nvim_set_keymap("n", "<leader>Y", '"+yg_', opts) -- Yank to system clipboard in normal mode
vim.api.nvim_set_keymap("n", "<leader>p", '"+p', opts)   -- Paste from system clipboard in normal mode
