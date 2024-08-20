return {
  { "axkirillov/telescope-changed-files" }
  ,
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = {
      function()
        local telescope = require('telescope')
        telescope.setup {
          pickers = {
            find_files = {
              hidden = true,
              file_ignore_patterns = {
                "node_modules",
                ".git",
                ".next",
              },
              no_ignore = true,
            }
          },
        }
        telescope.load_extension("changed-files")
      end,
    }
  }
}
