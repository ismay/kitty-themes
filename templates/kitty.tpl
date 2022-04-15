## name: {{ .THEME_NAME }}

#: The basic colors
foreground                      {{ .foreground }}
background                      {{ .background }}
selection_foreground            {{ .background }}
selection_background            {{ .foreground }}

#: Cursor colors
cursor                          {{ .bryellow }}
cursor_text_color               {{ .background }}

#: URL underline color when hovering with mouse
url_color                       {{ .blue }}

#: kitty window border colors and terminal bell colors
active_border_color             {{ .bryellow }}
inactive_border_color           {{ .brblack }}
bell_border_color               {{ .bryellow }}
visual_bell_color               none

#: OS Window titlebar colors
wayland_titlebar_color          system
macos_titlebar_color            system

#: Tab bar colors
active_tab_foreground           {{ .brwhite }}
active_tab_background           {{ .brblack }}
inactive_tab_foreground         {{ .white }}
inactive_tab_background         {{ .brblack }}
tab_bar_background              {{ .brblack }}
tab_bar_margin_color            {{ .brblack }}

#: Colors for marks (marked text in the terminal)
# mark1_foreground black
# mark1_background #98d3cb
# mark2_foreground black
# mark2_background #f2dcd3
# mark3_foreground black
# mark3_background #f274bc

#: The basic 16 colors
color0  {{ .black }}
color8  {{ .brblack }}

color1  {{ .red }}
color9  {{ .brred }}

color2  {{ .green }}
color10 {{ .brgreen }}

color3  {{ .yellow }}
color11 {{ .bryellow }}

color4  {{ .blue }}
color12 {{ .brblue }}

color5  {{ .purple }}
color13 {{ .brpurple }}

color6  {{ .cyan }}
color14 {{ .brcyan }}

color7  {{ .white }}
color15 {{ .brwhite }}
