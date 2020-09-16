#!/bin/bash

set -eu

# ensure that data directory is owned by 'cloudron' user
chown -R cloudron:cloudron /app/data

echo "==> Starting supervisor"
exec /usr/bin/supervisord --configuration /etc/supervisor/supervisord.conf --nodaemon -i SupervisorExampleApp

