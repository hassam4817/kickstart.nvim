require 'hassam.core'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  require 'hassam.plugins.init',

  require 'hassam.plugins.autopairs',
  require 'hassam.plugins.colorscheme',
  require 'hassam.plugins.conform',
  require 'hassam.plugins.debug',
  require 'hassam.plugins.gitsigns',
  require 'hassam.plugins.indent_line',
  require 'hassam.plugins.lint',
  require 'hassam.plugins.lspconfig',
  require 'hassam.plugins.mini-nvim',
  require 'hassam.plugins.neo-tree',
  require 'hassam.plugins.nvim-cmp',
  require 'hassam.plugins.nvim-ts-autotag',
  require 'hassam.plugins.telescope',
  require 'hassam.plugins.treesitter',
  require 'hassam.plugins.which-key',

  -- { import = 'hassam.plugins' },
}, {
  change_detection = {
    notify = false,
  },
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
