#!/bin/bash
# date +"%Y%m%d%H%M%S"

# (
#   printf "Log File - $(date +%Y%m%d%H%M%S) - $(whoami) \n"
#   free -m
#   du -sh $1
# ) >> log_monitor_$(date +%Y%m%d%H%M%S).log

action ()
{
  printf "Log File - $(date +%Y%m%d%H%M%S) - $(whoami) \n"
  free -m
  du -sh $1
}

1 * * * * action $1 >> log_monitor_ahahha.log
