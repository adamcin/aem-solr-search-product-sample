#!/bin/bash
#
# Description: Provisioning script for my CIRCUIT talk. Creates a CentOS VM with ActiveMQ and Solr.

export INSTALL_HOME="/home/vagrant"
export INSTALL_SYNC="/vagrant"
export INSTALL_SCRIPTS="${INSTALL_SYNC}/scripts"

echo "Installing OS packages..."
yum -y install curl lsof net-tools java-1.8.0-openjdk-devel 

pushd "$INSTALL_SCRIPTS"

./install-solr.sh
./install-activemq.sh

#unnecessary because end of script execution causes popd to origin dir
popd
