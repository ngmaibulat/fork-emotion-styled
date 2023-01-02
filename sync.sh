#!/bin/bash

DIR=`pwd`

mkdir types
mkdir tmp
cd tmp


npm init -y
pnpm add @emotion/styled
cd ..

# move to dir
pushd tmp/node_modules/@emotion/styled/base/dist

#copy files
cp -f emotion-styled-base.browser.esm.js $DIR
cd ../..
cd dist/declarations/types

cp -f base.d.ts  $DIR/types
cp -f index.d.ts $DIR/types

popd
rm -fr tmp
