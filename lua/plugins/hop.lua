
local M = {
  'smoka7/hop.nvim',
  version = "*",
    opts = {
      keys = 'etovxqpdygfblzhckisuran'
    }
}

function M.config()
  require'hop'.setup {
  -- Hop configuration goes there
    
    jump_on_sole_occurrence = false
  }
 end

return M
