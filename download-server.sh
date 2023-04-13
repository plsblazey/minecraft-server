#!/bin/bash
VERSION=$2
URL="https://minecraft.azureedge.net/bin-linux/bedrock-server-$VERSION.zip"
TEMP_DIR=$(mktemp -d)
TEMP_ZIP_FILE=$TEMP_DIR/minecraft.zip
DESTINATION_DIRECTORY=$1

echo "Downloading minecraft bedrock server $VERSION from $URL to $TEMP_ZIP_FILE"

curl $URL --output "$TEMP_ZIP_FILE"

echo "Extracting $TEMP_ZIP_FILE to $DESTINATION_DIRECTORY"
unzip $TEMP_ZIP_FILE -d $DESTINATION_DIRECTORY
