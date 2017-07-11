#!/usr/bin/env bash

# Prepare for liftoff.
cp SENDME.txt SENDME-$(janus version -format v%M.%m.%P+%C-%S).dep.txt

# Ship it squirrel.
janus deploy -to isaac-tests/squirrel/$(janus version -format %M.%m.x)/ -files ./*.dep.txt -key ./isaac-test-gcp-service-key-enc.json
