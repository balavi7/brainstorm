#!/bin/bash

# Define the target directory where your WordPress files are located
TARGET_DIRECTORY="/var/www/html/wordpress"

# Ensure you are in the correct directory
cd "$TARGET_DIRECTORY"

# Pull the latest code from the GitHub repository
git pull

# Perform any necessary WordPress updates or migrations
# For example, you might run WP-CLI commands here, like:
# wp core update
# wp plugin update --all
# wp theme update --all

# Restart the web server to apply changes (you may need to adapt this based on your web server)
sudo service nginx restart

# Optional: Clear the cache, if needed
# For example, you can use WP-CLI to clear the cache for specific plugins or the entire site.
# wp cache flush

echo "Deployment completed"
