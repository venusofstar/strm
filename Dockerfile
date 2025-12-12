FROM alpine:latest

WORKDIR /app

COPY o11_v22b1-DRMStuff /app/o11_v22b1-DRMStuff

RUN chmod +x /app/o11_v22b1-DRMStuff

CMD ["/app/o11_v22b1-DRMStuff"]
