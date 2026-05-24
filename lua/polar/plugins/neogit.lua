local neogit = {}

local c = require("polar.colors").palette

function neogit.highlights()
  return {
    NeogitDiffAdd = { fg = c.aurora.green, bg = c.polar_night.bright },
    NeogitDiffAddHighlight = { fg = c.aurora.green, bg = c.polar_night.bright },
    NeogitDiffChange = { fg = c.aurora.yellow, bg = c.polar_night.bright },
    NeogitDiffDelete = { fg = c.aurora.red, bg = c.polar_night.bright },
    NeogitDiffDeleteHighlight = { fg = c.aurora.red, bg = c.polar_night.bright },
    NeogitDiffText = { fg = c.frost.arctic_water, bg = c.polar_night.bright },
    NeogitContextHighlight = { fg = c.frost.arctic_water, bg = c.polar_night.bright },
    NeogitDiffContextHighlight = { fg = c.frost.arctic_water, bg = c.polar_night.bright },
    NeogitHunkHeader = { fg = c.snow_storm.origin, bg = c.polar_night.brightest },
    NeogitDiffAddCursor = { fg = c.aurora.green, bg = c.polar_night.origin },
    NeogitDiffDeleteCursor = { fg = c.aurora.red, bg = c.polar_night.origin },
    NeogitDiffContext = { fg = c.frost.arctic_water, bg = c.polar_night.origin },
    NeogitDiffContextCursor = { fg = c.frost.arctic_water, bg = c.polar_night.origin },
  }
end

return neogit
