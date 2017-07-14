#!/bin/sh

mkdir ./deploy
mv ./dist/*.tar.gz ./dist/*.zip ./deploy/
janus deploy -to="isaac-tests/go-squirrel/$(janus version -format %M.%m.x)" -files="./deploy/*" -key="./isaac-test-gcp-service-key.enc.json"
