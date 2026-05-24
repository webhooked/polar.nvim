local colors = {}

---@class Polar.Palette.PolarNight
---@field origin string polar 0
---@field bright string polar 1
---@field brighter string polar 2
---@field brightest string  polar 3
---@field light string out of palette

---@class Polar.Palette.SnowStorm
---@field origin string  polar 4
---@field brighter string polar 5
---@field brightest string  polar 6

---@class Polar.Palette.Frost
---@field polar_water string polar 7
---@field ice string polar 8
---@field arctic_water string polar 9
---@field arctic_ocean string polar 10
---@field arctic_grass string polar 11

---@class Polar.Palette.Aurora
---@field red string polar 11
---@field orange string polar 12
---@field yellow string polar 13
---@field green string polar 14
---@field purple string polar 15

---@class Polar.Palette
---@field polar_night Polar.Palette.PolarNight
---@field snow_storm Polar.Palette.SnowStorm
---@field frost Polar.Palette.Frost
---@field aurora Polar.Palette.Aurora
---@field none string

---@type Polar.Palette
local defaults = {
  polar_night = {
    origin = "#20242F", -- polar0
    bright = "#3B4252", -- polar1
    brighter = "#434C5E", -- polar2
    brightest = "#4C566A", -- polar3
    light = "#616E88", -- out of palette
  },
  snow_storm = {
    origin = "#D8DEE9", -- polar4
    brighter = "#E5E9F0", -- polar5
    brightest = "#ECEFF4", -- polar6
  },
  frost = {
    polar_water = "#9ac2c1", -- polar7
    ice = "#93c6d4", -- polar8
    arctic_water = "#8daac7", -- polar9
    arctic_ocean = "#6E8DB4", -- polar10
    arctic_grass = "#dcd0bd", -- polar11
  },
  aurora = {
    red = "#BF616A", -- polar11
    orange = "#D08770", -- polar12
    yellow = "#EBCB8B", -- polar13
    green = "#8FBCBB", -- "#A6C8A0", -- #A3BE8C", -- polar14 -- #8cbe9f
    purple = "#B48EAD", -- polar15
  },
  none = "NONE",
}

colors.palette = defaults
colors.default_bg = "#2E3440" -- polar0

function colors.daltonize(severity)
  local daltonize = require("polar.utils.colorblind").daltonize

  for group, color in pairs(defaults) do
    if type(color) == "table" then
      for sub_group, sub_color in pairs(color) do
        colors.palette[group][sub_group] = daltonize(sub_color, severity)
      end
    end
  end
end

return colors
