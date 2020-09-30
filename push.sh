#!/usr/bin/env bash

set -e

sudo podman push \
  --authfile=/home/ben/.docker/config.json \
  quay.io/freedomben/logging-tester

sudo podman push \
  --authfile=/home/ben/.docker/config.json \
  docker.io/freedomben/logging-tester
