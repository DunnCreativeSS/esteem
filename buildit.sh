#!/bin/bash

cordova build ios --release
signaturefile="platforms/ios/build/device/$appname/_CodeSignature/CodeResources"
echo DEBUG:signature file is $signaturefile

while [ ! -f $signaturefile ]
do 
  echo waiting
  sleep 1
done
xcrun ...
