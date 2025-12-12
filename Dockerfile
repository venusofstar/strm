FROM alpine:latest

WORKDIR /app

COPY o11_v22b1-DRMStuff /app/o11_v22b1-DRMStuff

# Make it executable
RUN chmod +x /app/o11_v22b1-DRMStuff

# If it's a shell script, force sh interpreter
CMD ["/bin/sh", "/app/o11_v22b1-DRMStuff"]
