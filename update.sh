# dpkg --add-architecture i386
#!/bin/bash

echo "Checking Network Connection..."
until wget -q --spider --no-check-certificate -T 2 https://1.1.1.1 > /dev/null 2>&1; do
    echo "No Internet, Retry in next 10s or Ctrl+C to Stop..."
    sleep 10
done

echo "Updating and Upgrading System..."
sudo apt update && sudo apt upgrade -y

echo "Cleaning..."
sudo nala clean
