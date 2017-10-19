[[ -s "/etc/default/evm" ]] && source "/etc/default/evm"

# Aliases:
alias ap='bundle exec appliance_console'
alias appliance='[[ -n ${APPLIANCE_SOURCE_DIRECTORY} ]] && cd ${APPLIANCE_SOURCE_DIRECTORY}'
alias appliance_console='bundle exec appliance_console'
alias appliance_console_cli='bundle exec appliance_console_cli'
alias vmdb='cd /var/www/miq/vmdb'

# Tail Logs:
function tailmiq() #If no value is given with tailmiq it defaults to the evm.log
{
  tail -f /var/www/miq/vmdb/log/${1:-evm}.log
}
alias tailpglog='tail -f $APPLIANCE_PG_DATA/pg_log/postgresql.log'

# Appliance Status:
alias apstatus='echo;systemctl status evmserverd -n 0;echo; \
systemctl status httpd.service -n 0;echo;systemctl status memcached -n 0; \
echo -e "\nPostgreSQL service:"; pg_isready'
