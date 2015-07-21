#!/bin/bash

img="`pwd`/$1"

echo 
echo $img.raw
echo

#Convert to raw image
simg2img $img $img.raw

#Create image directory
mkdir $img\_mount

#Mount image to newly created directory
sudo mount -t ext4 -o loop $img.raw $img\_mount
