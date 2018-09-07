#!/bin/sh

set -ex
prefix=${PREFIX:-${1:-docker.io/viaq/}}
version=${VERSION:-${2:-latest}}
docker build --no-cache -t "${prefix}rsyslog:${version}" .

if [ -n "${PUSH:-$3}" ]; then
	docker push "${prefix}rsyslog:${version}"
fi
