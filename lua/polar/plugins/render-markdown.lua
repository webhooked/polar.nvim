local render_markdown = {}
local c = require("polar.colors").palette
local utils = require("polar.utils")

function render_markdown.highlights()
  return {
    RenderMarkdownBullet = { fg = c.frost.arctic_water },
    RenderMarkdownQuote = { fg = c.polar_night.light },
    RenderMarkdownTodo = { fg = c.snow_storm.origin },
    RenderMarkdownH1Bg = { bg = utils.darken(c.frost.arctic_water, 0.2) },
    RenderMarkdownH2Bg = { bg = utils.darken(c.aurora.purple, 0.2) },
    RenderMarkdownH3Bg = { bg = utils.darken(c.aurora.green, 0.2) },
    RenderMarkdownH4Bg = { bg = utils.darken(c.aurora.yellow, 0.2) },
    RenderMarkdownH5Bg = { bg = utils.darken(c.aurora.orange, 0.2) },
    RenderMarkdownH6Bg = { bg = utils.darken(c.aurora.red, 0.2) },
  }
end

return render_markdown
