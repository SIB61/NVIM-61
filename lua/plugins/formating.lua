return { {
  'stevearc/conform.nvim',
  opts = {},
  config = function()
    local conform = require('conform')
    local prettier = { 'prettierd', 'prettier', stop_after_first = true }
    conform.setup({
      format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = prettier,

        javascriptreact = prettier,

        typescript = prettier,

        typescriptreact = prettier,

        json = prettier,

        css = prettier,

        html = prettier,

        python = prettier

      },
      stop_after_first = true
    })
  end
} }


-- return { {
--   "nvimtools/none-ls.nvim",
--   config = function()
--     local null_ls = require("null-ls")
--     null_ls.setup({
--       sources = {
--         null_ls.builtins.formatting.stylua,
--         null_ls.builtins.completion.spell,
--         null_ls.builtins.formatting.prettier
--       },
--     })
--   end,
--   requires = { "nvim-lua/plenary.nvim" },
-- },
--   {
--     'MunifTanjim/prettier.nvim',
--     dependencies = {
--       'neovim/nvim-lspconfig',
--       'jose-elias-alvarez/null-ls.nvim'
--     }
--   }
-- }
