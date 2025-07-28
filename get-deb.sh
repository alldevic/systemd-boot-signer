#!/bin/bash

id=$(docker create systemd-boot-signer)
docker cp $id:/systemd-boot-signer_0.1_all.deb .
docker rm -v $id
