#!/usr/bin/env sh
set -e

if [[ $NETWORK == "mainnet" ]]; then
  CHAIN="mainnet"
elif [[ $NETWORK == "testnet" ]]; then
  CHAIN="testnet"
elif [[ $NETWORK == "regtest" ]]; then
  CHAIN="regtest"
elif [[ $NETWORK == "simnet" ]]; then
  CHAIN="simnet"
elif [[ $NETWORK == "signet" ]]; then
  CHAIN="signet"
else
  echo "Unknown network: $NETWORK"
  exit 1
fi

exec /bin/lnd --configfile=/lnd.conf --bitcoin.$CHAIN "$@" 