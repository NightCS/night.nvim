local M = {}

function M.get_night()
  return {
    contrast = '#0A1419',
    background = "#061115",
    foreground = "#D9D7D6",
    cursor = "#D9D7D6",
    color0 = "#1C252C",
    color1 = "#DF5B61",
    color2 = "#78B892",
    color3 = "#DE8F78",
    color4 = "#6791C9",
    color5 = "#BC83E3",
    color6 = "#67AFC1",
    color7 = "#D9D7D6",
    color8 = "#484e5b",
    color9 = "#f16269",
    color10 = "#8cd7aa",
    color11 = "#e9967e",
    color12 = "#79aaeb",
    color13 = "#c488ec",
    color14 = "#7acfe4",
    color15 = "#e5e5e5",
  }
end

function M.get_day ()
  return {
    contrast = '#D9D7D6',
    light_bg = '#ceccca',
    background = "#dddbda",
    foreground = "#2d3b47",
    cursor = "#2d3b47",
    color0 = "#2d3b47",
    color1 = "#e26b71",
    color2 = "#a0cdb3",
    color3 = "#e19a85",
    color4 = "#769cce",
    color5 = "#c38fe6",
    color6 = "#76b7c7",
    color7 = "#575f6e",
    color8 = "#2d3b47",
    color9 = "#e26b71",
    color10 = "#85bf9d",
    color11 = "#e19a85",
    color12 = "#769cce",
    color13 = "#c38fe6",
    color14 = "#76b7c7",
    color15 = "#575f6e",
  }
end

function M.get_colors()
  if vim.o.background == 'dark' then
    return M.get_night()
  else
    return M.get_day()
  end
end

return M
