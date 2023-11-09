-- Ostatnie pliki
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').oldfiles, { desc = '[?] Recently opened files' })
vim.keymap.set('n', '<leader>/', function()
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

-- telescope
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>se', require('telescope.builtin').live_grep, { desc = '[S]earch [E]verywhere' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').git_files, { desc = '[S]earch in [G]it' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sk', require('telescope.builtin').keymaps, { desc = '[S]earch [K]eymap' })
vim.keymap.set('n', '<leader>sb', require('telescope.builtin').git_branches, { desc = '[S]earch [B]ranches' })


-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)



-- Keymaps for better default experience
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })


-- colekack remap

if true then
  vim.keymap.set({'n', 'v', 'x'}, 'n', 'h')
  vim.keymap.set({'n', 'v', 'x'}, 'i', 'j')
  vim.keymap.set({'n', 'v', 'x'}, 'e', 'k')
  vim.keymap.set({'n', 'v', 'x'}, 'o', 'l')
  vim.keymap.set({'n', 'x'}, 'm', 'i')
  vim.keymap.set({'n', 'v'}, 'M', 'I')
  vim.keymap.set({'n', 'v'}, 'l', 'o')
  vim.keymap.set({'n', 'v'}, 'L', 'O')
end

vim.keymap.set({'n', 'v'}, 'h', 'nzzzv')
vim.keymap.set({'n', 'v'}, 'H', 'Nzzzv')
vim.keymap.set({'n', 'v'}, '<C-u>', '<C-u>zz')
vim.keymap.set({'n', 'v'}, '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<leader>ft', vim.cmd.NvimTreeOpen)

vim.keymap.set('n', '<Leader>p', vim.cmd.PrettierAsync)

-- Git related keys
local gs = package.loaded.gitsigns
vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
vim.keymap.set('n', '<Leader>gp', function() vim.cmd.Git({ args = { 'push' } }) end)
vim.keymap.set('n', 'gn', '<cmd>diffget //2<CR>')
vim.keymap.set('n', 'go', '<cmd>diffget //3<CR>')
vim.keymap.set('n', 'td', gs.preview_hunk)
vim.keymap.set('n', '<Leader>y', vim.cmd.clipboard_yank)
