#!/bin/sh

set -e

# Create gorush system user/group if it does not exist
if ! id -u gorush >/dev/null 2>&1; then
  adduser --system --group --no-create-home gorush
fi

# Reload systemd daemon to register the new unit
systemctl daemon-reload || true
