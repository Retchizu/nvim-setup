return {
  'nvim-telescope/telescope.nvim', 
  tag = '0.1.8',  -- You can also use branch = '0.1.x' if you prefer a branch
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    defaults = {
      -- Your Telescope default configuration options go here.
    },
  },
  -- Key mappings for Telescope
  keys = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
  end
}

