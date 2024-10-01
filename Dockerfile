FROM wordpress:fpm-alpine

# Install WPCLI
RUN curl -sS -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod +x /usr/local/bin/wp

# Install MySQL Client for DB related WP-CLI commands
RUN apk update && apk add -f mysql-client
