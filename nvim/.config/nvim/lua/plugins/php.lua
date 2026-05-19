return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        php = { "pint", "php_cs_fixer", stop_after_first = false },
      },
    },
  },
  {
    -- Add the Laravel.nvim plugin which gives the ability to run Artisan commands
    -- from Neovim.
    "adalessa/laravel.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "tpope/vim-dotenv",
      "MunifTanjim/nui.nvim",
      "nvimtools/none-ls.nvim",
    },
    cmd = { "Sail", "Artisan", "Composer", "Npm", "Yarn", "Laravel" },
    keys = {
      { "<leader>la", ":Laravel artisan<cr>" },
      { "<leader>lr", ":Laravel routes<cr>" },
      { "<leader>lm", ":Laravel related<cr>" },
    },
    event = { "VeryLazy" },
    -- Only load this plugin if the 'artisan' file exists in the current directory
    cond = function()
      return vim.fn.filereadable("artisan") == 1
    end,
    config = true,
    opts = {
      lsp_server = "intelephense",
      features = { null_ls = { enable = false } },
    },
  },
  {
    -- Add the blade-nav.nvim plugin which provides Goto File capabilities
    -- for Blade files.
    "ricardoramirezr/blade-nav.nvim",
    dependencies = {
      "hrsh7th/nvim-cmp",
    },
    ft = { "blade", "php" },
  },
}
