#!/bin/bash
sourcedir=$1
desfile=$2
if [ -z desfile ]
then
    desfile='f.apk'
fi
~/tools/apktool-install-macosx-r04-brut1/apktool b $1 ./a.apk
jarsigner  -keystore ~/tools/nativePackagerNew/Script86APW52E-1/key/denachina.key -storepass denadena01 ./a.apk dena -sigalg MD5withRSA -digestalg SHA1 
zipalign 4 ./a.apk $desfile
rm ./a.apk
