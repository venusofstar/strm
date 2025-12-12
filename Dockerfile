FROM php:8.2-cli-alpine

WORKDIR /app

# Copy your DRM restream script
COPY o11_v22b1-DRMStuff.php /app/o11_v22b1-DRMStuff.php

# Expose port
EXPOSE 8080

# Run your DRM script as main router
CMD ["php", "-S", "0.0.0.0:8080", "/app/o11_v22b1-DRMStuff.php"]
