local wezterm = require 'wezterm';

return {
  font = wezterm.font_with_fallback {
    ("ProFontX", {font-size = 14.0}),
    ("Fira Code", {font-size = 14.0}),
}
