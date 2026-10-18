return {
  {
    "folke/snacks.nvim",
    opts = {
      terminal = {
        -- Customize your window options here
        win = {
          -- examples:
          height = 0.25, -- 40% of the screen height for horizontal splits
          width = 0.25, -- 40% of the screen width for vertical splits
        },
        picker = {
          -- This sets the global default for all search pickers
          hidden = true,
          sources = {
            -- This specifically forces the File Explorer to launch with hidden files visible
            explorer = {
              hidden = true,
              ignored = false, -- Change to true if you also want your node_modules/.git files shown by default
            },
          },
        },
      },
    },
  },
}
