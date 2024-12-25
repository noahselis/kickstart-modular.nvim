-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

local set = vim.opt

-- Make line numbers default
set.number = true
-- Make relative line numbers default
set.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
set.mouse = 'a'

-- Don't show the mode, since it's already in the status line
set.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  set.clipboard = 'unnamedplus'
end)

-- Enable break indent
set.breakindent = true

-- Save undo history
set.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
set.ignorecase = true
set.smartcase = true

-- Keep signcolumn on by default
set.signcolumn = 'yes'

-- Decrease update time
set.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
set.timeoutlen = 300

-- Configure how new splits should be opened
set.splitright = true
set.splitbelow = true

-- Preview substitutions live, as you type!
set.inccommand = 'split'

-- Minimal number of screen lines to keep above and below the cursor.
set.scrolloff = 10
set.sidescrolloff = 15
-- disable default behavior of creating swap file
set.swapfile = false
-- determines how many columns are indented with the 'shift + >>' command
set.shiftwidth = 4
-- set tabs to four columns instead of eight
set.tabstop = 4
set.expandtab = true
set.softtabstop = 4
-- disables default behavior of creating a backup for edited files
set.backup = false
-- while searching, incrementally highlight matching characters
set.incsearch = true
-- ignore capital letters during search
set.ignorecase = true
-- override ignorecase option if searching for capital letters
set.smartcase = true
-- show partial command you type in the last line of the screen
set.showcmd = true
-- show matching words during a search
set.showmatch = true
-- use highlighting while doing a search
set.hlsearch = false
-- incrementally highlights as you search
set.incsearch = true
-- set number of commands to keep in history (default is 25)
set.history = 10
-- enable auto completion after pressing TAB
set.wildmenu = true
-- make wildmenu behave similar to bash completion
set.wildmode = 'list:longest'
-- file types that wildmenu will ignore
set.wildignore = '*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx'
-- stops bells from going off when an error happens
set.errorbells = false
-- sets the path of the undo directory
vim.o.undodir = vim.fn.stdpath 'config' .. '/undodir'
-- stop nvim from auto reloading whenever the config file is changed
set.autoread = false

-- [[ Setting options ]]
set.completeopt = 'menuone,noinsert,noselect' -- idk. :help completeopt
set.viewoptions = 'cursor,folds,slash,unix' -- Save and restore cursor position
set.completeopt = 'menuone,noselect' -- Set completeopt to have a better completion experience

-- Enable break indent
set.breakindent = true
set.undofile = true -- Save undo history

-- Decrease update time
set.updatetime = 250
set.timeout = true
set.timeoutlen = 300

-- enable blinking cursor in terminal
vim.o.guicursor = 'a:blinkwait0-blinkon0-blinkoff0'

-- make the cursor skinny in insert mode
set.guicursor = [[n-v-c:block,i-ci-ve:ver25,r-cr-o:hor20]]

-- Save and load the view automatically
vim.cmd [[au BufWinLeave * silent! mkview]]
vim.cmd [[au BufWinEnter * silent! loadview]]
vim.cmd 'filetype plugin indent on' -- load an indent file for the detected file type

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- vim: ts=2 sts=2 sw=2 et
