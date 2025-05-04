return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',  -- Optional: for text objects
  },
  opts = {
    ensure_installed = { "lua", "javascript", "typescript", "python", "html", "css" },  -- Add languages you want
    sync_install = false,  -- Install parsers asynchronously
    auto_install = true,  -- Automatically install missing parsers
    highlight = {
      enable = true,  -- Enable Tree-sitter-based syntax highlighting
      additional_vim_regex_highlighting = false,  -- Disable the old Vim regex-based highlighting
    },
    indent = {
      enable = true,  -- Enable automatic indentation based on Tree-sitter
    },
  }
}
