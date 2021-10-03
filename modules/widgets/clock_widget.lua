local awful = require("awful")
local lain = require("lain")
local wibox = require("wibox")

ClockWidget_prototype = function()
  local this = {}

  this.__public_static = {
    -- Public Static Variables
    -- Public Static Funcs
  }

  this.__private_static = {
    -- Private Static Variables
    -- Private Static Funcs
  }

  this.__public = {
    -- Public Variables
    icon = wibox.widget.imagebox(),
    value = wibox.container.background()
    -- Public Funcs
  }

  this.__private = {
    -- Private Variables
    -- Private Funcs
  }

  this.__construct = function(clock_icon_path, text_color)
    -- Constructor
    this.__public.icon.resize = false

    time = wibox.widget.textclock(lain.util.markup(text_color, "%H:%M "))

    this.__public.value.widget = time
    this.__public.icon.image = clock_icon_path
  end

  return this
end

ClockWidget = createClass(ClockWidget_prototype)
