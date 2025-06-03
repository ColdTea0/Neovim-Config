local opt = vim.opt
local g = vim.g

-- === General ===
opt.backup = false
opt.swapfile = false
opt.writebackup = false
opt.undofile = true
opt.fileencoding = "utf-8"
opt.title = false

-- === UI ===
opt.cmdheight = 1
opt.showmode = false
opt.showcmd = false
opt.ruler = false
opt.termguicolors = true
opt.pumheight = 10
opt.pumblend = 10
opt.laststatus = 0
opt.showtabline = 0
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.numberwidth = 4
opt.signcolumn = "yes"
opt.wrap = false
opt.scrolloff = 0
opt.sidescrolloff = 8
opt.guifont = "monospace:h17"
opt.fillchars:append { eob = " ", stl = " " }

-- === Tabs and Indentation ===
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

-- === Search ===
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true

-- === Behavior ===
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.timeoutlen = 1000
opt.updatetime = 100
opt.splitbelow = true
opt.splitright = true
opt.conceallevel = 0
opt.completeopt = { "menuone", "noselect" }

-- === Short Messages & Keywords ===
opt.shortmess:append "c"
vim.cmd [[set whichwrap+=<,>,[,],h,l]]
vim.cmd [[set iskeyword+=-]]

-- === Netrw Settings ===
g.netrw_banner = 0
g.netrw_mouse = 2

-- === Neovide-Specific Settings ===
if g.neovide then
  -- Transparency
  local alpha = function()
    return string.format("%x", math.floor(255 * (g.opacity or 1.0)))
  end

  g.neovide_opacity = 0.8
  g.opacity = 1.0
  g.neovide_background_color = "#0f1117" .. alpha()

  -- Font & UI
  opt.number = false
  opt.relativenumber = false
  vim.o.guifont = "JetBrainsMono NF Medium:h10"

  g.neovide_padding_top = 30
  g.neovide_padding_bottom = 20
  g.neovide_padding_right = 20
  g.neovide_padding_left = 30

  -- Visual Effects
  g.neovide_floating_shadow = true
  g.neovide_floating_z_height = 0
  g.neovide_light_angle_degrees = 0
  g.neovide_light_radius = 0

  -- Cursor Effects
  g.neovide_cursor_vfx_mode = "railgun"
  g.neovide_cursor_smooth_blink = true
  g.neovide_cursor_animate_in_insert_mode = true
end

