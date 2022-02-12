if '[ -f ~/.config/tmux/.tmux.conf ]' 'source ~/.config/tmux/.tmux.conf'
if '[ -f ~/.config/tmux/.tmux.statusline.conf ]' 'source ~/.config/tmux/.tmux.statusline.conf'
if '[ -f ~/.config/tmux/.tmux.copymod.conf ]' 'source ~/.config/tmux/.tmux.copymod.conf'
if '[ -f ~/.config/tmux/.tmux.pomodorro.conf ]' 'source ~/.config/tmux/.tmux.pomodorro.conf'

set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'olimorris/tmux-pomodoro-plus'
set -g @plugin 'ChanderG/tmux-notify'
set -g @plugin 'MunifTanjim/tmux-mode-indicator'
set -g @plugin 'tmux-plugins/tmux-battery'
set -g @plugin 'roosta/tmux-fuzzback'
run -b '~/.tmux/plugins/tpm/tpm'

