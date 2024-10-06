require "nvchad.mappings"

local map = vim.keymap.set

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Template Cpp
map("n", "main", "<cmd>Template T-cpp<cr>")

-- Markdown Preview
map("n", "<leader>mp", "<cmd>MarkdownPreview<cr>", { desc = "Markdown Preview" })

-- Copy to clipboard
map("v", "<C-c>", '"+y', { desc = "Copy to yanked" })

-- Screen Key
map("n", "<leader>sk", "<cmd>Screenkey toggle<cr>", { desc = "Screen Key Toggle" })

map("n", "<leader>th", function()
  require("nvchad.themes").open { style = "flat" }
end)

map("n", "<leader>mt", function()
  require("plenary.reload").reload_module "minty.huefy"
  require("minty.shades").open { border = false }
end, { desc = "Color Shades" })
