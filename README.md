# Systemd Service and Timer for healthchecks.io

There is an awesome watchdog-style host health monitoring service healthchecks.io. It could be self-hosted or healthchecks.io could be used for 20 hosts for free. But it lucks a simple systemd integration, therefore I created this package.

# Usage

```sh
systemctl enable --now healthchecks@$UUID.timer
```