#!/bin/bash

# Update and clean apt packages
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y autoremove
sudo apt-get clean

# Clean conda packages
conda clean --all --yes

# Clean pip cache
pip cache purge
