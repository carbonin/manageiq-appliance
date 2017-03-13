#!/bin/bash

ACTION=$1
IP=$2

source /etc/ha.d/shellfuncs

if [ -z "$IP" ]
then
  echo "An IP address must be specified"
  echo "Usage: $0 [action] [address]"
  exit 1
fi
  
export OCF_RESKEY_ip="$IP"

case "$ACTION" in
add)
  . /usr/lib/ocf/resource.d/heartbeat/IPaddr start
  ;;
remove)
  . /usr/lib/ocf/resource.d/heartbeat/IPaddr stop
  ;;
*)
  echo "Usage: $0 [action] [address]"
  exit 1
esac
