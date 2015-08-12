#!/usr/bin/env bash
if [ TESTNET -eq 0 ];
then
    bitcoind -datadir=/var/lib/bitcoind/livenet
else
    bitcoind -datadir=/var/lib/bitcoind/testnet
fi

bash
