# Navigate to the extracted directory
echo "Navigating to the extracted directory..."
if [ -d "/root/multipleforlinux" ]; then
  cd /root/multipleforlinux || { echo "Failed to navigate to /root/multipleforlinux"; exit 1; }
else
  echo "Directory /root/multipleforlinux does not exist. Exiting..."
  exit 1
fi

# Grant executable permissions
echo "Granting executable permissions..."
chmod +x ./multiple-cli
chmod +x ./multiple-node

# Add the directory to PATH persistently
echo "Adding the directory to PATH..."
echo 'export PATH=$PATH:/root/multipleforlinux/' >> ~/.bashrc
source ~/.bashrc

# Return to the parent directory
echo "Returning to the parent directory..."
cd ..

# Grant permissions to the extracted directory
echo "Granting permissions to the extracted directory..."
chmod -R 777 multipleforlinux

# Start the node in the background
echo "Starting the node in the background..."
nohup /root/multipleforlinux/multiple-node > output.log 2>&1 &

echo "Setup completed successfully!"
