require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- Template Cpp
map("n", "main", "<cmd>Template main<cr>")

-- Markdown Preview
map("n", "<leader>mp", "<cmd>MarkdownPreview<cr>", { desc = "Markdown Preview" })

-- Copy to clipboard
map("v", "<C-c>", '"+y', { desc = "Copy to yanked" })

-- For CP, DSA input, output file
map("n", "<F5>", ":silent! :w<CR>:!pwsh -NoExit -WindowStyle Hidden -Command 'RunCode; exit'<CR>", { silent = true })

map("n", "<leader>th", function()
  require("nvchad.themes").open { style = "flat" }
end)

map("n", "<leader>mt", function()
  require("plenary.reload").reload_module "minty.huefy"
  require("minty.shades").open { border = false }
end, { desc = "Color Shades" })
