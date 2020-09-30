#!/usr/bin/env bash

sudo podman build \
  -t logging-tester \
  -t quay.io/freedomben/logging-tester \
  -t docker.io/freedomben/logging-tester \
  .
