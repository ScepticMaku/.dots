return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      php = { "pint" }, -- For regular PHP files
      blade = { "blade-formatter" }, -- For Blade files (use pint instead of blade-formatter)
      -- Or if you prefer blade-formatter:
      -- blade = { "blade-formatter" },
    },
  },
}
