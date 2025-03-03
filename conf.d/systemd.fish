if not type systemctl >/dev/null 2>&1
  exit
end

set -gx SYSTEMD_PAGER ''

abbr -a sc systemctl
abbr -a scs systemctl status -l --no-pager
abbr -a scss systemctl start
abbr -a sce systemctl enable
abbr -a scen systemctl enable --now
abbr -a scE systemctl edit --full
abbr -a scd systemctl disable
abbr -a scr systemctl restart
abbr -a scR systemctl reload
abbr -a scS systemctl stop
abbr -a scdr systemctl daemon-reload


abbr -a scu  systemctl --user
abbr -a scus systemctl --user status -l --no-pager
abbr -a sucss systemctl --user start
abbr -a scue systemctl --user enable
abbr -a scuen systemctl --user enable --now
abbr -a scuE systemctl --user edit --full
abbr -a scud systemctl --user disable
abbr -a scur systemctl --user restart
abbr -a scuR systemctl --user reload
abbr -a scuS systemctl --user stop
abbr -a scudr systemctl --user daemon-reload
