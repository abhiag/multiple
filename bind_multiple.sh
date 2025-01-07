#!/bin/bash

# Prompt for user input
read -p "Enter your Identifier: " IDENTIFIER
read -p "Enter your PIN: " PIN

# Bind the account with the provided details
./multiple-cli bind \
  --bandwidth-download 100000 \
  --identifier "$IDENTIFIER" \
  --pin "$PIN" \
  --storage 200000000 \
  --bandwidth-upload 100000
