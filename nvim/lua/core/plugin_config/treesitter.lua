-- Treesitter Config
--require('nvim-treesitter.parsers').get_parser_configs().asm = {
--    install_info = {
--        url = 'https://github.com/rush-rs/tree-sitter-asm.git',
--        files = { 'src/parser.c' },
--        branch = 'main',
--    },

require('nvim-treesitter').setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  install_dir = vim.fn.stdpath('data') .. '/site'
}

require('nvim-treesitter').install { "c", "cpp", "rust", "lua", "vim", "vimdoc", "query", "html", "css", "glsl", "make", "python" }

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'c' },
  callback = function() vim.treesitter.start() end,
})
