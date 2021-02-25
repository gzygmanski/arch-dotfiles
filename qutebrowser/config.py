# :::::::::::::::[]::::::::::::: #
# :::: /_> |U_U| || /_> /_> :::: #
# :::: <=/ |T-T| || <=/ <=/ :::: #
# ::::::::SHISS DOTFILES:::::::: #
# https://github.com/gzygmanski: #
# gzygmanski@hotmail.com:::::::: #

config.load_autoconfig()


c.hints.chars = 'asdfjkl'
c.tabs.position = "top"
# c.tabs.width = '10%'
c.tabs.padding = {"bottom": 4, "left": 10, "right": 10, "top": 4}
c.tabs.favicons.show = "never"
c.tabs.background = True
c.tabs.indicator.width = 0
c.tabs.last_close = "startpage"
c.tabs.title.format = "{scroll_pos}: {current_title}"

c.input.insert_mode.auto_leave = False

c.statusbar.show = "in-mode"
c.statusbar.widgets = ["keypress", "scroll", "tabs", "progress"]
c.statusbar.position = "bottom"
c.statusbar.padding = {"bottom": 4, "left": 10, "right": 10, "top": 4}

c.completion.shrink = True
c.completion.scrollbar.width = 0
c.completion.height = '30%'

c.hints.radius = 0
c.prompt.radius = 0

c.downloads.position = 'bottom'

c.zoom.default = '100%'
c.content.user_stylesheets = str(config.configdir) + '/custom.css'

c.fonts.default_family = 'sans-serif'
c.fonts.default_size = '14px'

# Turn off dialogs for cert errors
c.content.ssl_strict = 'ask'
c.content.autoplay = True
c.url.searchengines = {
    "DEFAULT": "https://duckduckgo.com/?q={}",
    "w": "https://en.wikipedia.org/wiki/{}",
    "wa": "https://wiki.archlinux.org/?search={}",
}

config.bind(',so', 'config-source')
config.bind(',tt', 'set tabs.position top')
config.bind(',tl', 'set tabs.position left')
config.bind(',e', 'spawn mpv {url}')
config.bind(',E', 'hint links spawn mpv {hint-url}')
config.bind(',id', 'hint images download')

config.source('nord.py')
