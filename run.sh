#!/usr/bin/env bash

#copy livenet conf
if [ ! -d /var/lib/bitcoind/livenet ]; then
    cp -r /opt/bitcoind/livenet /var/lib/bitcoind/
fi

#copy testnet conf
if [ ! -d /var/lib/bitcoind/testnet ]; then
    cp -r /opt/bitcoind/testnet /var/lib/bitcoind/
fi

#copy notify script
if [ ! -f /var/lib/bitcoind/block_notify.py ]; then
    cp /opt/bitcoind/block_notify.py /var/lib/bitcoind/
    chmod 755 /var/lib/bitcoind/block_notify.py
fi

#run bitcoind
if [ $TESTNET -eq 0 ];
then
    bitcoind -datadir=/var/lib/bitcoind/livenet
else
    bitcoind -datadir=/var/lib/bitcoind/testnet
fi

bash
