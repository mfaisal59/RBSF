#!/bin/bash

# Download the JPEGImages and Annotations

# function copied from https://gist.github.com/iamtekeste/3cdfd0366ebfd2c0d805
gdrive_download () {
  CONFIRM=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
    "https://docs.google.com/uc?export=download&id=$1" -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')

  wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$CONFIRM&id=$1" -O $2
  rm -rf /tmp/cookies.txt
}

#download JPEGImages
fileid=1DULXr-Wlxo9-xTd-tb3cp6Paw4Z6qIWA
filename=JPEGImages.tar.gz
gdrive_download "$fileid" "$filename"
unzip -xvzf "$filename"

#download Annotations
fileid=1-wkIy3AWwmv3GsZLOR3QgxjSeT73dRC3
filename=Annotations.tar.gz
gdrive_download "$fileid" "$filename"
unzip -xvzf "$filename"
