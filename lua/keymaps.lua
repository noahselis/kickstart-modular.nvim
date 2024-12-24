-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

local map = vim.keymap

--  See `:help hlsearch`
-- Clear highlights on search when pressing <Esc> in normal mode
map.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- Diagnostic keymaps
map.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- remap 'jf' to the <esc> key in insert and visual mode
map.set('i', 'kj', '<ESC>')
map.set('v', 'kj', '<ESC>')

-- map <leader>pv to the command that opens the explorer
map.set('n', '<leader>pv', ':Ex<CR>')

-- highlight text and move it around
map.set('v', 'J', ":m '>+1<CR>gv=gv")
map.set('v', 'K', ":m '<-2<CR>gv=gv")

-- keep cursor in the middle of the page while jumping by half pages
map.set('n', '<C-d>', '<C-d>zz')
map.set('n', '<C-u>', '<C-u>zz')

-- keep cursor in the middle while cycling through returned search terms
map.set('n', 'n', 'nzzzv')
map.set('n', 'N', 'Nzzzv')

-- delete hightlighted word into void paste buffer
-- effectively, copy foo, paste over bar, keep foo in vim clipboard rather than have bar replace it
map.set('x', '<leader>p', '"_dP')

-- yank into system clipboard instead of vim's
map.set('n', '<leader>y', '"+y')
map.set('v', '<leader>y', '"+y')
map.set('n', '<leader>Y', '"+Y')

-- don't ever press Q. Apparantly it really sucks.
map.set('n', 'Q', '<nop>')

-- replace the word that your cursor is on
map('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- split window vertically
map.set('n', '<leader>|', ':vsp<CR>')

-- split window horizontally
map.set('n', '<leader>-', ':split<CR>')

--remove search highlight
map.set('n', '<leader>nhl', ':nohlsearch<CR>')

-- if the spacebar is pressed in normal or visual mode without anything after it, do nothing.
map.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- delete to void register
map.set('n', '<leader>d', "'_d")
map.set('v', '<leader>d', "'_d")

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et
