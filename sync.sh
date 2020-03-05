#!/bin/bash
cd .repo/local_manifests/
git pull && cd ../../

android_tag=`cat .repo/local_manifests/default_version.txt`
repo init -b $android_tag
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
