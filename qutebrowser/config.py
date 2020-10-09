# :::::::::::::::[]::::::::::::: #
# :::: /_> |U_U| || /_> /_> :::: #
# :::: <=/ |T-T| || <=/ <=/ :::: #
# ::::::::SHISS DOTFILES:::::::: #
# https://github.com/gzygmanski: #
# gzygmanski@hotmail.com:::::::: #

# c.tabs.position = "left"
# c.tabs.width = '15%'
c.tabs.padding = {"bottom": 4, "left": 4, "right": 4, "top": 4}
c.tabs.favicons.show = "never"
c.tabs.background = True
c.tabs.indicator.width = 0
c.tabs.last_close = "startpage"
c.tabs.title.format = "{index}: {current_title}"

c.statusbar.widgets = ["keypress", "scroll", "tabs", "progress"]

c.completion.shrink = True
c.completion.scrollbar.width = 0
c.completion.height = '20%'

c.downloads.position = 'bottom'

c.zoom.default = '115%'
c.content.user_stylesheets = str(config.configdir) + '/custom.css'

# c.config.bind('<space>m', 'spawn mpv {url}')
config.source('nord.py')
