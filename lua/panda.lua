-- Name         Pandabuddy
-- Description  Dark theme inspired in Panda http://panda.siamak.me/
-- Author       thewinger
-- Maintainer       thewinger
-- Website      https://github.com/thewinger/panda-vim


require('colorbuddy').setup()

vim.g.colors_name = 'panda'

local Color = require('colorbuddy').Color

Color.new('background', '#1c1e26')
Color.new('foreground', '#E6E6E6')
Color.new('black', '#292A2B')
Color.new('white', '#E6E6E6')
Color.new('red', '#FF2C6D')
Color.new('green', '#19F9D8')
Color.new('yellow', '#FFB86C')
Color.new('blue', '#45A9F9')
Color.new('magenta', '#FF75B5')
Color.new('cyan', '#46FCFF')
Color.new('orange', '#FFB86C')
Color.new('bright_red', '#FF4B82')
Color.new('bright_green', '#6FE7D2')
Color.new('bright_yellow', '#FFCC95')
Color.new('bright_blue', '#6FC1FF')
Color.new('bright_magenta', '#FF9AC1')
Color.new('bright_cyan', '#76F3F5')
Color.new('bright_orange', '#B084EB')
Color.new('bright_white', '#FFFFFF')
