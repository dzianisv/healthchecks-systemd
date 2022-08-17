#!/bin/bash
set -euxo pipefail
UUID=$(uuidgen)

systemctl enable --now healthchecks@${UUID}.timer
systemctl disable --now healthchecks@${UUID}.timer