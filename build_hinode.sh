#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
hinode_dir=$SCRIPT_DIR/hinode/

cd $SCRIPT_DIR

rm -rf  ../qmk_firmware/keyboards/hinode
echo cp -rf  $hinode_dir ../qmk_firmware/keyboards/
cp -rf  $hinode_dir ../qmk_firmware/keyboards/

cd ../qmk_firmware
#make hinode:default
make hinode/rev2/sc:default

if [ ! $? ]; then
	exit 1
fi

#cp hinode_rev2_default.hex ../hinode
cp hinode_rev2_sc_default.hex ../hinode

echo ls -al ../qmk_firmware/keyboards/hinode
ls -al ../qmk_firmware/keyboards/hinode

# Qmk Toolboxがwsl上のファイルを書き込めないため
# wslでのビルドを実行したら、ビルド済みのhexファイルをwindows側に転送する
if [ -e /mnt/c/ ]; then # wslで動いていたら のつもり
	# C:\home\work\hinodeというディレクトリを勝手に掘ってそこに配置する
	dir=/mnt/c/home/work/hinode
	if [ $dir ]; then
		mkdir -p $dir
	fi
	echo rm -rf $dir/*
	rm -rf $dir/*
	echo cp -rf $SCRIPT_DIR/*.hex $dir
	cp -rf $SCRIPT_DIR/*.hex $dir
	echo ls -al $dir
	ls -al $dir
fi


