#!/bin/bash
cd /etc/puppetlabs/code/environments/production && git pull
/opt/puppetlabs/bin/puppet apply manifest
echo "[$(date)] Puppet was here... ;)">> /tmp/puppet-was-here