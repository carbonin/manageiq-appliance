#!/bin/env ruby
$LOAD_PATH.unshift("/var/www/miq/vmdb/gems/pending")
require 'postgres_ha_admin/failover_monitor'

monitor = PostgresHaAdmin::FailoverMonitor.new
monitor.monitor_loop
