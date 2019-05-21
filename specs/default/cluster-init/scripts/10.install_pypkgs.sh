#!/bin/bash
set -ex

# Set here the pip installable package names
PY_PACKAGES=dask

# make a /mnt/resource/apps directory
# Azure VMs that have ephemeral storage have that mounted at /mnt/resource. If that does not exist this command will create it.
mkdir -p /mnt/resource/apps

# Install python packages
pip install ${PY_PACKAGES}
