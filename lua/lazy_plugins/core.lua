return {
  -- Guess indentation
  {
    "NMAC427/guess-indent.nvim",
    event = "BufReadPost",
    config = true
  },

  -- Mini plugins
  {
    "echasnovski/mini.nvim",
    event = "VeryLazy",
    config = function()
      require("mini.ai").setup({ n_lines = 500 })
      require("mini.surround").setup()
      require("mini.statusline").setup({ use_icons = vim.g.have_nerd_font })
    end
  },

  -- Keybinding hints
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      triggers_blacklist = {
        n = { "<leader>", '"', "'", "`" },
      }
    }
  },
}