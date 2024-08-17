#!/bin/bash
sudo rm -rf $HOME/.stoehntest/

if [ -e /usr/bin/minetest.real ]
then
    sudo rm -rf /usr/bin/minetest
fi
