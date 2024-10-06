-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "chadracula-evondev",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  statusline = {
    theme = "minimal",
    order = {
      "mode",
      "file",
      "git",
      "%=",
      "lsp_msg",
      "%=",
      "diagnostics",
      "lsp",
      -- "icon_tux",
      "encoding",
      "cwd",
      "cursor",
    },

    vim.api.nvim_set_hl(0, "StatusLineYellow", { fg = "#e3b644" }),
    modules = {
      encoding = function()
        local enc = vim.bo.fileencoding
        if enc == "" then
          enc = vim.o.encoding
        end

        enc = string.upper(enc)
        return " %#StatusLineYellow#" .. enc .. "  "
      end,

      icon_tux = function()
        local tux = " "
        return " " .. tux
      end,
    },
  },
}

M.nvdash = {
  load_on_startup = true,
}

M.term = {
  float = {
    relative = "editor",
    row = 0.03,
    col = 0.09,
    width = 0.8,
    height = 0.8,
    border = "single",
  },
}

M.lsp = {
  signature = true,
}

return M
