return {
  -- Colorscheme
--   {
--     "folke/tokyonight.nvim",
--     priority = 1000,
--     config = function()
--       require("tokyonight").setup({
--         styles = {
--           comments = { italic = false },
--         }
--       })
--       vim.cmd.colorscheme("tokyonight-night")
--     end
--   },

  -- Todo comments
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = true,
    keys = {
      { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "Search Todos" }
    }
  },

  -- Git indicators
  {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre",
    opts = {
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
      }
    }
  }
}