-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

vim.pack.add {
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
}

vim.keymap.set('n', 'e', '<Cmd>Neotree reveal<CR>', { desc = 'NeoTree reveal', silent = true })

require('neo-tree').setup {
  filesystem = {
    window = {
      mappings = {
        ['e'] = 'close_window',
        ['l'] = 'open',
      },
    },
  },
}
vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none" })
-- Custom toggle function
local function smart_neotree_toggle()
  local manager = require 'neo-tree.sources.manager'
  local state = manager.get_state 'filesystem' -- Assuming you're using the filesystem source
  local nt_win = state and state.winid

  -- If Neo-tree window exists
  if nt_win and vim.api.nvim_win_is_valid(nt_win) then
    -- Check if current window is the Neo-tree window
    if vim.api.nvim_get_current_win() == nt_win then
      -- Focus is in Neo-tree: close it
      vim.cmd 'Neotree close'
    else
      -- Focus is elsewhere: also close it (meeting your requirement)
      vim.cmd 'Neotree close'
    end
  else
    -- Neo-tree not open: open it
    vim.cmd 'Neotree show'
  end
end

-- Bind the key
vim.keymap.set('n', '<leader>e', smart_neotree_toggle, { desc = 'Smart Neo-tree Toggle' })
