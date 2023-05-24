#!/bin/sh
echo "Running apt update..."
apt update

echo "Running apt upgrade..."
apt upgrade -y

echo "Running apt git install..."
apt git install -y


