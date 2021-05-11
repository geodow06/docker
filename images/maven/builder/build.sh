#!/bin/bash
# pull latest (or specific version) builder image
docker pull geodow06/mvn-builder:latest
# build new builder
docker build -t geodow06/mvn-builder:latest --cache-from geodow06/mvn-builder:latest .