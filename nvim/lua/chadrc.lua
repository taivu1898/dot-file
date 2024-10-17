-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "nightowl",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
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
