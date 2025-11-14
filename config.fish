if status is-interactive
    # Commands to run in interactive sessions can go here
    krabby name chesnaught
    # Gruvbox dark colors for fish shell prompts and text
    set -g fish_color_command normal          # fg default
    set -g fish_color_keyword  "#fb4934"      # red
    set -g fish_color_quote    "#b16286"      # purple
    set -g fish_color_red      "#cc241d"
    set -g fish_color_green    "#98971a"
    set -g fish_color_yellow   "#d79921"
    set -g fish_color_blue     "#458588"
    set -g fish_color_magenta  "#b16286"
    set -g fish_color_cyan     "#689d6a"
    set -g fish_color_white    "#ebdbb2"      # light background text
    set -g fish_color_error    "#fb4934"
    set fish_greeting ""
    set -g fish_color_operator yellow
    set -g fish_color_escape  cyan
    set -g fish_color_autosuggestion '#928374'  # gray
    set -g fish_color_search_match --background=yellow --foreground=black
end

function fish_prompt
    set_color $fish_color_yellow
    echo -n (whoami) "@"
    set_color $fish_color_green
    echo -n (hostname | cut -d . -f 1)
    set_color normal
    echo -n " "
    set_color $fish_color_green
    echo -n (prompt_pwd)
    set_color normal
    echo -n " > "
end
