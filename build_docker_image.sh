#! /bin/bash

tag_prefix="4.0.2.xwd."
tag="${tag_prefix}latest"

if [[ -n $1 ]]; then
    tag="${tag_prefix}$1"
fi

echo "Building image with tag ${tag}"

docker build \
    -t apache/superset:$tag \
    --build-arg PY_VER=3.9-slim-bookworm \
    .
