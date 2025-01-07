#!/bin/bash

# Prompt for user input
read -p "Enter your Identifier: " IDENTIFIER
read -p "Enter your PIN: " PIN

# Bind the account with the provided details
./multiple-cli bind \
  --bandwidth-download 100 \
  --identifier "$IDENTIFIER" \
  --pin "$PIN" \
  --storage 200 \
  --bandwidth-upload 100
