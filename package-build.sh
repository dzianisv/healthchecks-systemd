#!/bin/sh
set -eu

name="$(basename `git rev-parse --show-toplevel`)"
tag=$(git describe --tags || echo "0.0.0")
version=${tag%%-*}

for type in deb "$@"; do
    fpm --input-type dir --output-type "${type}" \
        --depends "curl" \
        --architecture all \
        -C package/ \
        -n "${name}" \
        --version "${version}" \
        --after-install installer-scripts/after-install.sh \
        --after-upgrade installer-scripts/after-upgrade.sh
done