FROM debian:trixie-20250721-slim

RUN apt-get update && apt-get upgrade -y

WORKDIR /systemd-boot-signer

COPY . .

RUN apt-get build-dep -y .

RUN dpkg-buildpackage -rfakeroot -b -tc

