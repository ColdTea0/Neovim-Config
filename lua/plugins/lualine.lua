local M = {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "AndreM222/copilot-lualine",
  },
}

function M.config()
  local lualine = require("lualine")

  lualine.setup({
    options = {
      theme = "auto", -- Auto-detect based on colorscheme
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      ignore_focus = { "NvimTree" },
      always_divide_middle = true,
      globalstatus = true,
    },
    sections = {
      lualine_a = {},
      lualine_b = { "branch" },
      lualine_c = {
        "diagnostics",
      },
      lualine_x = {
        {
          "copilot",
          -- Optional: You can set color, symbols, or condition here
          -- color = { fg = "#6CC644" },
        },
        "filetype",
      },
      lualine_y = { "progress" },
      lualine_z = {},
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = { "location" },
      lualine_y = {},
      lualine_z = {},
    },
    extensions = { "quickfix", "man", "fugitive" },
  })
end

return M

