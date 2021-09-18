#!/bin/sh

THIS_PATH=`cd $(dirname $0); pwd -P`

echo "reset balena-intel"

cd ..

git reset --hard

echo "update local.conf.sample ..."

cd $THIS_PATH

sed -i '/#MACHINE\ ?=\ \"genericx86-64-ext\"/a\#MACHINE\ ?=\ \"odyssey-x86\"' ../../../layers/meta-balena-genericx86/conf/samples/local.conf.sample
sed -i '/BALENA_STORAGE_genericx86-64-ext\ =\ \"overlay2\"/a\BALENA_STORAGE_odyssey-x86\ =\ \"overlay2\"' ../../../layers/meta-balena-genericx86/conf/samples/local.conf.sample

echo "update bblayers.conf.sample ..."

sed -i '/BBLAYERS\ ?=\ \"/a\    ${TOPDIR}/../layers/meta-balena-odyssey-x86\ \\' ../../../layers/meta-balena-genericx86/conf/samples/bblayers.conf.sample

echo "copy config files to balena-intel ..."

cp $THIS_PATH/files/* ../../../

