#!/bin/bash

loc_dir=/home/$(whoami)/log # membuat variable yg isinya directory ke folder log

if [[ ! -d $loc_dir ]]; then # kondisi apakah folder log sudah ada atau blm
  mkdir $loc_dir # membuat folder log
  (crontab -l | grep --invert-match --fixed-strings "$(pwd)/monitoring.sh"; echo "* * * * * $(pwd)/monitoring.sh >> $loc_dir/metrics_$(date +%Y%m%d%H%M%S).log 2>&1") | crontab - # menjalankan crontab
fi

(crontab -l | grep --invert-match --fixed-strings "$(pwd)/monitoring.sh"; echo "* * * * * $(pwd)/monitoring.sh >> $loc_dir/metrics_$(date +%Y%m%d%H%M%S).log 2>&1") | crontab -
# (crontab -l | grep --invert-match --fixed-strings "$(pwd)/monitoring.sh"; echo "* * * * * $(pwd)/monitoring.sh >> /home/$(whoami)/log/metrics_$(date +%Y%m%d%H%M%S).log 2>&1") | crontab -
# (crontab -l | grep --invert-match --fixed-strings "$(pwd)/monitoring-ram.sh"; echo "* * * * * $(pwd)/monitoring-ram.sh") | crontab -
