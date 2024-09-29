#!/usr/bin/env sh

# Run basic maintenance tasks for Nextcloud.

/var/www/html/occ app:update --all
/var/www/html/occ db:add-missing-columns
/var/www/html/occ db:add-missing-indices
/var/www/html/occ db:add-missing-primary-keys
/var/www/html/occ maintenance:repair --include-expensive
