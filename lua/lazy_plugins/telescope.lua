return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
  },
  keys = {
    { "<leader>sf", "<cmd>Telescope find_files<cr>", desc = "Search Files" },
    { "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
    { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
    { "<leader>s.", "<cmd>Telescope oldfiles<cr>", desc = "Recent Files" },
    { "<leader><leader>", "<cmd>Telescope buffers<cr>", desc = "Find Buffers" },
  },
  config = function()
    require("telescope").setup()
    require("telescope").load_extension("fzf")
  end
}