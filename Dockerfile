FROM alpine:latest

WORKDIR /app

# Copy your file exactly as-is
COPY o11_v22b1-DRMStuff /app/o11_v22b1-DRMStuff

# Make it executable
RUN chmod +x /app/o11_v22b1-DRMStuff

# Expose default port (optional – change if needed)
EXPOSE 8080

# Run your binary/script
CMD ["/app/o11_v22b1-DRMStuff"]
