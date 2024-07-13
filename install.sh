#!/bin/bash

echo "Setting up..."
export PATH=$PATH:/usr/local/bin
echo "Done"

echo "Installing..."
wget -q0 /usr/local/bin/test https://github.com/XblazeDEV/Test/releases/tag/test
chmod +x /usr/local/bin/test

echo "Updating dependencies..."
apt-get update
echo "Done"

echo "Adding test to PATH..."
if [ -f ~/.bashrc ]; then
    echo 'export PATH=$PATH:/usr/local/bin' >> ~/.bashrc
    echo 'alias test="/usr/local/bin/test"' >> ~/.bashrc
elif [ -f ~/.bash_profile ]; then
    echo 'export PATH=$PATH:/usr/local/bin' >> ~/.bash_profile
    echo 'alias test="/usr/local/bin/test"' >> ~/.bash_profile
else
    echo 'export PATH=$PATH:/usr/local/bin' >> ~/.profile
    echo 'alias test="/usr/local/bin/test"' >> ~/.profile
fi
echo "Done"

echo "Installed app 'test'. Execute with command 'test'."

exit 0
