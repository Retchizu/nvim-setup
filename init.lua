require("config.lazy")
require("config.colorscheme")
require("config.vim-options")

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
