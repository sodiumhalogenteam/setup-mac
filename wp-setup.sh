#!/bin/bash
emailAddress="YOUREMAIL@DOMAIN.com"
echo "WP Setup: creating database and config file..."
read -p "Enter Database name : " databaseName
read -p "Enter Site Name name : " siteName
read -p "Enter SiteUrl name (DOMAIN.sh) : " siteUrl
echo "Your user/pass : sh/sh"
echo "Email: $emailAddress"

wp core download --force && wp core config --dbname=$databaseName --dbuser=root --dbpass= && wp db create && wp core install --title=$sitename --url=$siteUrl --admin_user=sh --admin_password=sh --admin_email=$emailAddress