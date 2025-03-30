FROM alpine:latest

WORKDIR /
RUN apk add caddy && mkdir /app
COPY ./excalidraw-app/build/ /app


EXPOSE 80
CMD [ "caddy", "file-server", "-r", "/app", "--listen", "0.0.0.0:80" ]