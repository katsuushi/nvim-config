-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local colorscheme_file = vim.fn.stdpath("config") .. "/last-colorscheme.txt"

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function(args)
    -- args.match = the name passed to :colorscheme (e.g. "bearded-monokai-black")
    local name = args.match
    if not name or name == "" then
      name = vim.g.colors_name
    end
    if name then
      local file = io.open(colorscheme_file, "w")
      if file then
        file:write(name)
        file:close()
      end
    end
  end,
})

vim.cmd([[
  cnoreabbrev <expr> w getcmdtype() == ':' && getcmdline() == 'w' ? 'LazyFormatWrite' : 'w'
]])

vim.api.nvim_create_user_command("LazyFormatWrite", function()
  vim.cmd("LazyFormat")
  vim.cmd("write")
end, {})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "netrw", "TelescopePrompt", "terminal" },
  callback = function()
    vim.cmd("Minuet virtualtext disable")
  end,
})
require("luasnip.loaders.from_lua").load({
  paths = { vim.fn.stdpath("config") .. "/lua/snippets" },
})
