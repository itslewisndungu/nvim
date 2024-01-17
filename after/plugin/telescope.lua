local telescope = require('telescope')
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = '[P]roject [F]iles' })
vim.keymap.set('n', '<leader>pb', builtin.buffers, { desc = '[P]roject [B]uffers' })
vim.keymap.set('n', '<leader>ph ', builtin.help_tags, { desc = '[P]roject [H]elp' })
vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = '[P]roject [S]earch' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<C-p>', builtin.git_files, {})


telescope.setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    }
  }
}

telescope.load_extension('fzf')

-- Disable folding in Telescope's result window.
vim.api.nvim_create_autocmd("FileType", { pattern = "TelescopeResults", command = [[setlocal nofoldenable]] })
