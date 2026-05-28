#!/bin/sh

set -e

# Stop and disable the gorush service on package removal
systemctl stop gorush || true
systemctl disable gorush || true
