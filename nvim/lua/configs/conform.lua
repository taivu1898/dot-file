local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    markdown = { "prettier" },

    c_cpp = { "clang-format" },
    cpp = { "clang-format" },
    c = { "clang-format" },

    python = { "black" },

    haskell = { "stylish-haskell" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
