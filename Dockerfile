FROM alpine:latest

RUN apk --no-cache add curl

ENV TARGET_URL=""
ENV AUTH_TOKEN=""

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]