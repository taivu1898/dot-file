local opts = {
  heading = {
    min_width = 80,
    width = "block",
  },
  render_modes = { "n", "v", "i", "c" },
  checkbox = {
    unchecked = { icon = "󰄱 " },
    checked = { icon = " " },
    custom = { todo = { raw = "[>]", rendered = "󰥔 " } },
  },
  code = {
    position = "right",
    width = "block",
    left_pad = 2,
    right_pad = 4,
  },
}
require("render-markdown").setup(opts)
