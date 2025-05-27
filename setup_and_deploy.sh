#!/bin/bash
echo ">>> Setting up Hardhat environment"

npm init -y
npm install --save-dev hardhat
npx hardhat

echo ">>> Installing dependencies"
npm install @openzeppelin/contracts

echo ">>> Compiling contracts"
npx hardhat compile

echo ">>> Deploying contract to local network (run 'npx hardhat node' in another terminal)"
npx hardhat run scripts/deploy.js --network localhost