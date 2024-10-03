local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end
config.window_background_opacity = 0.95
config.scrollback_lines = 100000

config.color_scheme = 'Leaf'
config.enable_scroll_bar = true

-- Enable zoom with Ctrl + Scroll
config.mouse_bindings = {
  -- Ctrl-ScrollUp increases font size
  {
    event = { Down = { streak = 1, button = { WheelUp = 1 } } },
    mods = 'CTRL',
    action = wezterm.action.IncreaseFontSize,
  },
  -- Ctrl-ScrollDown decreases font size
  {
    event = { Down = { streak = 1, button = { WheelDown = 1 } } },
    mods = 'CTRL',
    action = wezterm.action.DecreaseFontSize,
  },
}
config.keys = {
  -- New tab with Alt+T
  {
    key = 't',
    mods = 'ALT',
    action = wezterm.action.SpawnTab 'DefaultDomain',
  },
  {
    key = 'RightArrow',
    mods = 'CTRL|ALT',
    action = wezterm.action.SplitPane {
      direction = 'Right',
      size = { Percent = 50 },
    },
  },
  {
    key = 'LeftArrow',
    mods = 'CTRL|ALT',
    action = wezterm.action.SplitPane {
      direction = 'Left',
      size = { Percent = 50 },
    },
  },
  {
    key = 'DownArrow',
    mods = 'CTRL|ALT',
    action = wezterm.action.SplitPane {
      direction = 'Down',
      size = { Percent = 50 },
    },
  },
  {
    key = 's',
    mods = 'CTRL',
    action = wezterm.action.QuickSelect
  },
    -- Cycle to next tab with Alt+Right Arrow
  {
    key = 'RightArrow',
    mods = 'ALT',
    action = wezterm.action.ActivateTabRelative(1),
  },
  -- Cycle to previous tab with Alt+Left Arrow
  {
    key = 'LeftArrow',
    mods = 'ALT',
    action = wezterm.action.ActivateTabRelative(-1),
  },

    -- Cycle to next tab with Alt+Right Arrow
  {
    key = 'l',
    mods = 'ALT',
    action = wezterm.action.ActivateTabRelative(1),
  },
  -- Cycle to previous tab with Alt+Left Arrow
  {
    key = 'h',
    mods = 'ALT',
    action = wezterm.action.ActivateTabRelative(-1),
  },
}

-- Switch to tabs using Alt+number
for i = 1, 9 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = 'ALT',
    action = wezterm.action.ActivateTab(i - 1),
  })
end
return config
