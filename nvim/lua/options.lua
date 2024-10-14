require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!
o.guifont = "JetBrainsMono Nerd Font:h14"

-- For Neovide users in a Windows environment using pwsh
if vim.fn.has "win32" == 1 then
  vim.opt.shell = "pwsh"
  vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
  vim.opt.shellxquote = ""
  vim.opt.shellquote = ""
  vim.opt.shellpipe = "| Out-File -Encoding UTF8 %s"
  vim.opt.shellredir = "| Out-File -Encoding UTF8 %s"
end
