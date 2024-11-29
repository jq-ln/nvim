-- LAZY --

require("config.lazy")

-- TREESITTER --

require('nvim-treesitter.configs').setup{
  highlight={enable=true},
  ensure_installed={"javascript", "typescript", "html", "css", "ruby"},
  auto_install=true,
}

-- NVIM-AUTOPAIRS --

local npairs = require('nvim-autopairs')
local Rule = require('nvim-autopairs.rule')

npairs.setup({
  check_ts = true,
  enable_check_bracket_line = false,
  ignored_next_char = '[%w%.]',
})

local ts_conds = require('nvim-autopairs.ts-conds')

-- LUA-MIMETYPES --

local mimetypes = require 'mimetypes'
mimetypes.guess "docs.txt"              -- text/plain
mimetypes.guess "word.doc"              -- application/msword
mimetypes.guess "init.lua"              -- text/x-lua

-- NVIM-TS-AUTOTAG --

require('nvim-ts-autotag').setup({
  opts = {
    -- Defaults
    enable_close = true, -- Auto close tags
    enable_rename = true, -- Auto rename pairs of tags
    enable_close_on_slash = false -- Auto close on trailing </
  },
  -- Also override individual filetype configs, these take priority.
  -- Empty by default, useful if one of the "opts" global settings
  -- doesn't work well in a specific filetype
  per_filetype = {
    ["html"] = {
      enable_close = true
    }
  }
})

