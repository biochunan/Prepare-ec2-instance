#!/bin/zsh

# Aim: wrap all install scripts into a single script

BASE=$(dirname $(realpath $0))  # src

# install zsh & oh-my-zsh
echo "################################################################"
echo "#                  Install zsh and oh-my-zsh                   #"
echo "################################################################"
bash $BASE/install-zsh.sh
echo "Installation of zsh and oh-my-zsh complete"

# install miniconda
echo "################################################################"
echo "#                       Install Miniconda                      #"
echo "################################################################"
bash $BASE/install-miniconda.sh
echo "Installation of Miniconda complete"

# install docker
echo "################################################################"
echo "#                       Install Docker                         #"
echo "################################################################"
bash $BASE/install-docker.sh
echo "Installation of Docker complete"

# install mongodb
echo "################################################################"
echo "#                       Install MongoDB                        #"
echo "################################################################"
bash $BASE/install-mongodb.sh
echo "Installation of MongoDB complete"


# cleanup
echo "################################################################"
echo "#                           Cleanup                            #"
echo "################################################################"
bash $BASE/cleanup.sh
echo "Cleanup complete"

echo "All installations complete"