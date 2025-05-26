return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = {
        char = "│", -- you can use "▏", "┊", "┆", etc.
      },
      scope = {
        enabled = true,
        show_start = true,
        show_end = false,
      },
      exclude = {
        filetypes = {
          "help",
          "dashboard",
          "lazy",
          "NvimTree",
          "terminal",
          "lspinfo",
          "TelescopePrompt",
        },
        buftypes = {
          "terminal",
          "nofile",
        },
      },
    },
  },
}

