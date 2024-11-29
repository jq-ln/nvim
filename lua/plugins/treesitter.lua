-- TREESITTER --

require('nvim-treesitter.configs').setup{
  highlight={enable=true},
  ensure_installed={"javascript", "typescript", "html", "css", "ruby"},
  auto_install=true,
}

