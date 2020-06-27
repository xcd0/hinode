#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
hinode_dir=$SCRIPT_DIR/hinode/

cd $SCRIPT_DIR

rm -rf  ../qmk_firmware/keyboards/hinode
echo cp -rf  $hinode_dir ../qmk_firmware/keyboards/
cp -rf  $hinode_dir ../qmk_firmware/keyboards/

cd ../qmk_firmware
make hinode:default
cp hinode*.hex ../hinode

echo ls -al ../qmk_firmware/keyboards/hinode
ls -al ../qmk_firmware/keyboards/hinode

if [ -e /mnt/c/home ]; then
	echo cp -rf $SCRIPT_DIR /mnt/c/home/work/
	cp -rf $SCRIPT_DIR /mnt/c/home/work/
	echo ls -al /mnt/c/home/work/hinode
	ls -al /mnt/c/home/work/hinode
fi


