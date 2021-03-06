set -g default-terminal "xterm-256color"
set-option -ga terminal-overrides ",xterm-256color:Tc"
set -g prefix C-x
unbind-key C-x
bind-key C-2 send-prefix

bind \ split-window -h -c '#{pane_current_path}'
bind / split-window -v -c '#{pane_current_path}'

# move around panes with j and k, a bit like vim
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

bind r source-file ${HOME}/.tmux.conf \; display-message "Config reloaded"

set -g -q mouse on
bind -n WheelUpPane if-shell -F -t = "#{mouse_any_flag}" "send-keys -M" "if -Ft= '#{pane_in_mode}' 'send-keys -M' 'copy-mode -e; send-keys -M'"

set -g status-interval 5
set -g status-right-length 200
set -g status-right '%H:%M %m-%d-%y' 
set -g status-justify left
set -g status-bg default

setw -g mode-keys vi
set -g status-fg colour60

set -g status-justify left
set -g status-bg default
set -g status-fg colour3
set -g window-status-current-bg colour3
set -g window-status-current-fg colour0
set -g window-status-bell-style none
set -g window-status-bell-bg colour1
set -g window-status-bell-fg colour0
set -g window-status-current-format "#{?window_zoomed_flag,#[bg=colour4],} #W #{?window_zoomed_flag,#[bg=colour4],}"
set -g pane-active-border-fg colour7
set -g pane-border-fg colour8

set-option -g default-command "reattach-to-user-namespace -l zsh"

# Setup 'v' to begin selection as in Vim
bind-key -Tcopy-mode-vi 'v' send -X begin-selection
bind-key -Tcopy-mode-vi 'y' send -X copy-pipe "reattach-to-user-namespace pbcopy"

# Update default binding of `Enter` to also use copy-pipe
unbind -Tcopy-mode-vi Enter
bind-key -Tcopy-mode-vi Enter send -X copy-pipe "reattach-to-user-namespace pbcopy"

# Bind ']' to use pbpaste
bind ] run "reattach-to-user-namespace pbpaste | tmux load-buffer - && tmux paste-buffer"

set -g escape-time 0

