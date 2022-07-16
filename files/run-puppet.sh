#!/bin/bash
cd /etc/puppetlabs/code/environments/production && git pull
/opt/puppetlabs/bin/puppet apply manifest
var=$(date)
echo "[$var] Puppet was here... ;)">> /tmp/puppet-was-here