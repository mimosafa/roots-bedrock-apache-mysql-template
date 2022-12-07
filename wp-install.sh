#!/bin/bash

wp core install \
--allow-root \
--url=${WP_HOME} \
--title="${WORDPRESS_TITLE}" \
--admin_user=${WORDPRESS_ADMIN_USER} \
--admin_password="${WORDPRESS_ADMIN_PASSWORD}" \
--admin_email=${WORDPRESS_ADMIN_EMAIL} \
--skip-email

if [ -n "${WORDPRESS_LANGUAGE}" ]; then
    wp language core install --allow-root --activate ${WORDPRESS_LANGUAGE}
fi

if [ -n "${WORDPRESS_PERMALINK_STRUCTURE}" ]; then
    wprs="wp rewrite structure --allow-root ${WORDPRESS_PERMALINK_STRUCTURE}"
    if [ -n "${WORDPRESS_CATEGORY_BASE}" ]; then
        wprs+=" --category-base=${WORDPRESS_CATEGORY_BASE}"
    fi
    if [ -n "${WORDPRESS_TAG_BASE}" ]; then
        wprs+=" --tag-base=${WORDPRESS_TAG_BASE}"
    fi
    eval $wprs
fi

if [ -n "${WORDPRESS_TIMEZONE}" ]; then
    wp option update --allow-root timezone_string ${WORDPRESS_TIMEZONE}
fi

if [ -n "${WORDPRESS_DATE_FORMAT}" ]; then
    wp option update --allow-root date_format ${WORDPRESS_DATE_FORMAT}
fi

if [ -n "${WORDPRESS_TIME_FORMAT}" ]; then
    wp option update --allow-root time_format ${WORDPRESS_TIME_FORMAT}
fi
