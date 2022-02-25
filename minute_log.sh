(crontab -l | grep --invert-match --fixed-strings "$(pwd)/monitoring.sh"; echo "* * * * * $(pwd)/monitoring.sh >> /home/$(whoami)/log/metrics_$(date +%Y%m%d%H%M%S).log 2>&1") | crontab -
# (crontab -l | grep --invert-match --fixed-strings "$(pwd)/monitoring-ram.sh"; echo "* * * * * $(pwd)/monitoring-ram.sh") | crontab -
