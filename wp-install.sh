#!/bin/bash

wp core install \
--url=${WP_HOME} \
--title="${WORDPRESS_TITLE}" \
--admin_user=${WORDPRESS_ADMIN_USER} \
--admin_password="${WORDPRESS_ADMIN_PASSWORD}" \
--admin_email=${WORDPRESS_ADMIN_EMAIL} \
--skip-email \
--allow-root

if [ -n "${WORDPRESS_LANGUAGE}" ]; then
    wp language core install --activate --allow-root ${WORDPRESS_LANGUAGE}
fi

if [ -n "${WORDPRESS_PERMALINK_STRUCTURE}" ]; then
    wp rewrite structure --allow-root "${WORDPRESS_PERMALINK_STRUCTURE}"
fi
