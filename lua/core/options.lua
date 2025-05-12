local opt = vim.opt
local g = vim.g

-- General Settings
opt.backup = false                -- Don't create backup files
opt.clipboard = "unnamedplus"     -- Use system clipboard
opt.cmdheight = 1                 -- Set the height of the command line
opt.completeopt = { "menuone", "noselect" } -- For completion (e.g., cmp)
opt.conceallevel = 0              -- Ensure markdown content is visible
-- opt.fileencoding = "utf-8"      -- File encoding (optional)
opt.hlsearch = true               -- Highlight all search matches
opt.ignorecase = true             -- Ignore case in search patterns
opt.mouse = "a"                   -- Enable mouse support
opt.pumheight = 10                -- Popup menu height
opt.pumblend = 10                 -- Popup menu transparency
opt.showmode = false              -- Don't display mode like -- INSERT --
opt.showtabline = 1               -- Always show tabline
opt.smartcase = true              -- Smart case sensitivity
opt.smartindent = true            -- Smart indentation
opt.splitbelow = true             -- Horizontal splits open below
opt.splitright = true             -- Vertical splits open to the right
opt.swapfile = false              -- Disable swap files
opt.termguicolors = true          -- Enable true color support
opt.timeoutlen = 1000             -- Timeout for mapped sequences
opt.undofile = true               -- Enable persistent undo
opt.updatetime = 100              -- Faster updates
opt.writebackup = false           -- Disable write backups
opt.expandtab = true              -- Convert tabs to spaces
opt.shiftwidth = 2                -- Indentation width (spaces)
opt.tabstop = 2                   -- Tab width (spaces)
opt.cursorline = true             -- Highlight the current line
opt.number = true                 -- Show line numbers
opt.laststatus = 0                -- Minimal status line
opt.showcmd = false               -- Don't display the command
opt.ruler = false                 -- Don't show the ruler
opt.relativenumber = true         -- Show relative line numbers
opt.numberwidth = math.max(4, vim.fn.len(vim.fn.line('$')))-- Dynamic number column width
opt.signcolumn = "yes"            -- Always show sign column
opt.wrap = false                  -- No line wrapping
opt.scrolloff = 0                 -- No scroll offset
opt.sidescrolloff = 8             -- Horizontal scroll offset
opt.guifont = "monospace:h17"     -- GUI font
opt.title = false                 -- Don't set the window title
opt.fillchars = vim.opt.fillchars + "eob: " -- Customize fillchars
opt.fillchars:append { stl = " " }

-- Short message settings
opt.shortmess:append "c"

-- Additional Configuration
opt.laststatus = 0
opt.showtabline = 0

-- Wrap settings for keys in vim
vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]

-- Netrw settings (File explorer)
g.netrw_banner = 0
g.netrw_mouse = 2

-- Neovide Settings
if vim.g.neovide then
    -- Helper function for Neovide transparency formatting
    local alpha = function()
      return string.format("%x", math.floor(255 * g.opacity or 1.0))
    end

    -- Neovide transparency settings
    g.neovide_opacity = 0.8
    g.opacity = 1.0
    g.neovide_background_color = "#0f1117" .. alpha()

    -- Disable relative line numbers and show numbers in Neovide
    opt.relativenumber = false
    opt.number = false

    -- Set Neovide font
    vim.o.guifont = "JetBrainsMono NF Medium:h10"

    -- Neovide padding
    g.neovide_padding_top = 30
    g.neovide_padding_bottom = 20
    g.neovide_padding_right = 20
    g.neovide_padding_left = 30

    -- Neovide floating window settings
    g.neovide_floating_shadow = true
    g.neovide_floating_z_height = 0
    g.neovide_light_angle_degrees = 0
    g.neovide_light_radius = 0

    -- Neovide cursor animation settings
    g.neovide_cursor_vfx_mode = "railgun"  -- Choose effect (railgun, ripple, pixiedust, etc.)
    g.neovide_cursor_smooth_blink = true    -- Smooth cursor blink
    g.neovide_cursor_animate_in_insert_mode = true -- Animate switch to command line
end

