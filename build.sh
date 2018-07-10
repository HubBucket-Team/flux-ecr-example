#!/bin/bash

TAG=ceracm/flux-ecr-creds
VERSION=v0.2.0

docker build . -t "${TAG}:${VERSION}"
if [[ "$#" -gt 0 && "$1" == "push" ]]; then docker push "${TAG}:${VERSION}"; fi
