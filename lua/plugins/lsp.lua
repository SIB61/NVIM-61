return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require'mason'.setup()
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function() 
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      require'mason-lspconfig'.setup {
        automatic_installation = true,
        handlers = {
          function(lsp_server) 
              require'lspconfig'[lsp_server].setup{
              capabilities = capabilities
            } 
          end
        }
      }
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end
  },
}
