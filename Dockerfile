# Use a full Ubuntu base with ffmpeg and curl
FROM ubuntu:22.04

# Prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y \
    ffmpeg \
    curl \
    unzip \
    ca-certificates \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy your o11_v22b1-DRMStuff files
COPY o11_v22b1-DRMStuff /app/

# Make sure it’s executable
RUN chmod +x /app/o11_v22b1-DRMStuff

# Expose default web port
EXPOSE 8080

# Run your server
CMD ["/app/o11_v22b1-DRMStuff"]
