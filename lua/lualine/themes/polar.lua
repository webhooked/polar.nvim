local c = require("polar.colors").palette
local utils = require("polar.utils")
local config = require("polar.config").options.styles

local polar = {}

local global_bg = utils.make_global_bg(true)

polar.normal = {
  a = { fg = c.polar_night.bright, bg = c.frost.polar_water },
  b = { fg = c.snow_storm.origin, bg = global_bg },
  c = { fg = c.snow_storm.origin, bg = global_bg },
}

polar.insert = {
  a = { fg = c.polar_night.origin, bg = c.snow_storm.origin },
}

polar.visual = {
  a = { fg = c.polar_night.origin, bg = c.frost.ice },
}

polar.replace = {
  a = { fg = c.polar_night.origin, bg = c.aurora.yellow },
}

polar.command = {
  a = { fg = c.polar_night.origin, bg = c.aurora.purple },
}

polar.inactive = {
  a = { fg = c.none, bg = global_bg },
  b = { fg = c.none, bg = global_bg },
  c = { fg = c.none, bg = global_bg },
}

if config.lualine_bold then
  for _, mode in pairs(polar) do
    mode.a.gui = "bold"
  end
end

return polar
