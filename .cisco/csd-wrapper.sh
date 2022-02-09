#!/bin/bash

unset URL TICKET STUB GROUP CERTHASH LANGSELEN
shift
while [ "$1" ]; do
    if [ "$1" == "-ticket" ];    then shift; TICKET=$1; fi
    if [ "$1" == "-stub" ];      then shift; STUB=$1; fi
    if [ "$1" == "-group" ];     then shift; GROUP=$1; fi
    if [ "$1" == "-certhash" ];  then shift; CERTHASH=$1; fi
    if [ "$1" == "-url" ];       then shift; URL=$1; fi
    if [ "$1" == "-langselen" ]; then shift; LANGSELEN=$1; fi
    shift
done

case "$(uname -s)" in
  Darwin)
    MD5="md5"
    ARCH="darwin_i386"
  ;;
  Linux)
    MD5="md5 --tag"
    [ "$(uname -m)" == "x86_64" ] && ARCH="linux_x64" || ARCH="linux_i386"
  ;;
esac

HOSTSCAN_DIR="$HOME/.cisco/hostscan"
mkdir -p $HOSTSCAN_DIR/{bin,lib}

FILE_URL="${URL//\"/}/sdesktop/hostscan/$ARCH"
echo "Manifest URL: $FILE_URL/manifest"
curl -s "$FILE_URL/manifest" | while read line; do
  file="${line#*(}" file="${file%)*}" sum="${line##* }"
  [[ "$file" =~ \.(dylib|so|dat)$ ]] && filetype=lib || filetype=bin
  cd "$HOSTSCAN_DIR/$filetype"
  if [ -f "$file" ] && [ "$($MD5 $file)" == "$line" ]; then
    echo "$file is up to date."
  else
    echo "downloading $file"
    if curl -Ifs "$FILE_URL/$file.gz" > /dev/null; then
      curl -vvv -s "$FILE_URL/$file.gz" | gunzip > "$file"
    else
      curl -vvv -s "$FILE_URL/$file" > "$file"
    fi
  fi
  [ "$filetype" == "bin" ] && chmod 755 "$file"
done

# Launch "cstub"
cd $HOSTSCAN_DIR/bin
#ARGS="-log debug -ticket $TICKET -stub $STUB -group $GROUP -url $URL -certhash $CERTHASH"
ARGS="-log error -ticket $TICKET -stub $STUB -group $GROUP -url $URL -certhash $CERTHASH"
echo "Launching: $(pwd)/cstub $ARGS"
./cstub $ARGS