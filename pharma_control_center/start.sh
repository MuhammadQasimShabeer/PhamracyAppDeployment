#!/bin/bash
set -e

# Default values for environment variables
DB_HOST=${DB_HOST:-db}
DB_PORT=${DB_PORT:-5432}
DB_USER=${DB_USER:-odoo}
DB_PASSWORD=${DB_PASSWORD:-odoo}
DB_NAME=${DB_NAME:-odoo}
ADMIN_PASSWD=${ADMIN_PASSWD:-admin}

# Run Odoo with environment variables
exec odoo server --addons-path=/mnt/extra-addons --db_host=$DB_HOST --db_port=$DB_PORT --db_user=$DB_USER --db_password=$DB_PASSWORD --db_name=$DB_NAME --xmlrpc_port=8069 --admin_passwd=$ADMIN_PASSWD
