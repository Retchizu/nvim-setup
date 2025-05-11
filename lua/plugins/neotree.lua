return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "<C-n>", "<cmd>Neotree reveal filesystem left<CR>", desc = "Open NeoTree" },

    -- Keybindings for toggling Neo-tree on the left and right
    { "<leader>e", function()
        require("neo-tree.command").execute({ position = "left", toggle = true })
      end, { desc = "Neo-tree: Toggle Left" }
    },

    { "<leader>E", function()
        require("neo-tree.command").execute({ position = "right", toggle = true })
      end, { desc = "Neo-tree: Toggle Right" }
    },
  },
  lazy = false,
}

