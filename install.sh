#!/bin/bash

echo "Setting up..."
export PATH=$PATH:/usr/local/bin
echo "Done"

echo "Installing..."
wget -q0 /usr/local/bin/test https://github.com/XblazeDEV/Test/releases/latest/download/test
chmod +x /usr/local/bin/test

echo "Updating dependencies..."
apt-get update
echo "Done"

echo "Installed test"

exit 0
