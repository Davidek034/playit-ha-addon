FROM alpine:latest

RUN apk add --no-cache curl ca-certificates

WORKDIR /opt/playit

RUN curl -L https://github.com/playit-cloud/playit-agent/releases/latest/download/playit-linux-amd64 \
    -o playit \
    && chmod +x playit

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
