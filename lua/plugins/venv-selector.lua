return {
  'linux-cultist/venv-selector.nvim',
  opts = {
    -- Your options go here
    -- name = "venv",
    -- auto_refresh = false
  },
  keys = {
    -- Keymap to open VenvSelector to pick a venv.
    { '<leader>fv', '<cmd>VenvSelect<cr>' },
  },
}
