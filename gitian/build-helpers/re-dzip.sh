#!/bin/sh
# Crappy determistic zip repackager

ZIPFILE=`basename $1`

mkdir tmp_dzip
cd tmp_dzip
unzip ../$1
find . | sort | zip $ZIPOPTS -X -@ $ZIPFILE
mv $ZIPFILE ../$1
cd ..
rm -rf tmp_dzip