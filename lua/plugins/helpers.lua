return { {
  'windwp/nvim-autopairs',
  event = "InsertEnter",
  lazy = false,
  config = true
  -- use opts = {} for passing setup options
  -- this is equalent to setup({}) function
},
  {
    'windwp/nvim-ts-autotag',
    event = "InsertEnter",
    lazy = false,
    config = true
  }
}
