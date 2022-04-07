local M = {}
local hi = vim.highlight.create
local config = require('night.config')

function M.highlight_all(colors, opts)
  local base_highlights = config.highlights_base(colors)
  for group, properties in pairs(base_highlights) do
    hi(group, properties, false)
  end
  local ntree = opts.nvim_tree or { contrast = false }
  if ntree.contrast == true then
    hi('NvimTreeNormal', { guibg = colors.contrast, guifg = colors.foreground })
    hi('NvimTreeNormalNC', { guibg = colors.contrast, guifg = colors.foreground })
    hi('NvimTreeEndOfBuffer', { guibg = colors.contrast, guifg = colors.contrast })
    hi('NvimTreeEndOfBufferNC', { guibg = colors.contrast, guifg = colors.contrast })
    hi('NvimTreeVertSplit', { guifg = colors.background, guibg = colors.background })
    hi('NvimTreeFolderIcon', { guibg = colors.contrast })
    hi('NvimTreeIndentMarker', { guibg = colors.contrast })
  end
end

return M
