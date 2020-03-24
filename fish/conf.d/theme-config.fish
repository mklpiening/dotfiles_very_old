set -g fish_color_comment brblack
set -g fish_color_normal normal 
set -g fish_color_escape brblue
set -g fish_color_quote bryellow
set -g fish_color_error red

set -g fish_color_autosuggestion brblack
set -g fish_color_selection --background=#2f2f2f
set -g fish_color_search_match --background=#2f2f2f

set -g fish_color_param white
set -g fish_color_command green

set -g pure_color_primary white --bold
set -g pure_color_mute (set_color normal && set_color green)
set -g pure_color_success normal
set -g pure_color_danger (set_color normal && set_color red)

set -g pure_symbol_prompt "\$"
set -g pure_symbol_reverse_prompt "#"
