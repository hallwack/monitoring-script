#!/bin/bash
# date +"%Y%m%d%H%M%S"

# (
#   printf "Log File - $(date +%Y%m%d%H%M%S) - $(whoami) \n"
#   free -m
#   du -sh $1
# ) >> log_monitor_$(date +%Y%m%d%H%M%S).log

information="Log File - $(date +%Y%m%d%H%M%S) - $(whoami) - $(pwd) \n"
memory=$(free -m)
disk_usage=$(du -sh /home/$(whoami)/Documents/Programming/Web/Vue/vue-blog-app)

action ()
{
  printf "Log File - $(date +%Y%m%d%H%M%S) - $(whoami) - $(pwd) \n"
  free -m
  du -sh /home/$(whoami)
}

action

# (crontab -l | grep --invert-match --fixed-strings "$information; free -m; du -sh /home/hallwack/Documents/Programming/Web/Vue/vue-blog-app;"; echo "* * * * * $information; free -m; du -sh /home/hallwack/Documents/Programming/Web/Vue/vue-blog-app; >> $(pwd)/metrics_$(date +%Y%m%d%H%M%S).log 2>&1") | crontab -
# 1 * * * * action $1 >> log_monitor_ahahha.log

# (crontab -l 2>/dev/null || true; echo "* * * * * $action $1 >> logmon.log 2>&1") | crontab -
# crontab -l | { cat; echo "* * * * * $action $1 >> logmon.log 2>&1"; } | crontab -

# (crontab -l 2>/dev/null || true; grep --invert-match --fixed-strings "$(pwd)/monitoring-ram.sh"; echo "* * * * * $(pwd)/monitoring-ram.sh >> $(pwd)/metrics_$(date +%Y%m%d%H%M%S).log 2>&1") | crontab -
# crontab -l | { cat; echo "* * * * * $(pwd)/monitoring-ram.sh >> $(pwd)/metrics_$(date +%Y%m%d%H%M%S).log 2>&1"; } | crontab -
