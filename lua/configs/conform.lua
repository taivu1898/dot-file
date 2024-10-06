local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    markdown = { "prettier" },

    c_cpp = { "clang-format" },
    cpp = { "clang-format" },
    c = { "clang-format" },

    python = { "black" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
