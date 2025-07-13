return {
  -- Formatter
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,   -- Lua
          null_ls.builtins.formatting.black,     -- Python
          null_ls.builtins.formatting.prettierd, -- JavaScript/HTML/CSS
        },
      })
    end
  },

  -- Autoformat
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylua" },
          python = { "black" },
          javascript = { "prettierd" },
          typescript = { "prettierd" },
          html = { "prettierd" },
          css = { "prettierd" },
        },
        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true,
        },
      })
      
      vim.keymap.set("n", "<leader>f", function()
        require("conform").format({ async = true, lsp_fallback = true })
      end, { desc = "Format Buffer" })
    end
  },

  -- Diagnostics
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
    keys = {
      { "<leader>q", "<cmd>TroubleToggle<cr>", desc = "Quickfix List" }
    },
    config = function()
      require("trouble").setup({
        icons = vim.g.have_nerd_font,
      })
    end
  }
}