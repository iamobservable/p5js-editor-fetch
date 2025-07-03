#!/usr/bin/env bash

VERSION=0.1.0

if [ -z "$1" ]; then
  echo "p5js-editor-fetch v$VERSION"
  echo
  echo Usage: fetch.sh username
  exit
fi

USER=$1
datestring=$(date +"%Y-%m-%dT%H:%M:%S")
ARCHIVEDIR=archive/$datestring
OUTPUTFILE=sketches.json
WORKDIR=work/$datestring

echo
echo "Processing sketch information for \"$USER\":"

curl -s https://editor.p5js.org/editor/$USER/projects -H "Content-Type: application/json" > ./$OUTPUTFILE

SKETCHES_SIZE=$(jq length "./$OUTPUTFILE")

echo
echo "Found $SKETCHES_SIZE sketches"
echo "Creating \"$ARCHIVEDIR\" directory to store zip archives"

mkdir -p ./$ARCHIVEDIR

echo "Downloading all sketches in zip format"
echo

while IFS=$'\t' read -r id name; do
  filepath="${name// /_}_${id}.zip"
  echo ">> ./$ARCHIVEDIR/$filepath"
  curl -s https://editor.p5js.org/editor/projects/$id/zip -o "./$ARCHIVEDIR/$filepath"
done < <(jq -r '.[] | ._id + "\t" + .name' ./$OUTPUTFILE)

echo
echo "Creating \"$WORKDIR\" directory for sketch code files"

mkdir -p ./$WORKDIR

echo "Generating sketch code files"
echo

find ./$ARCHIVEDIR/*.zip -type f | while IFS= read -r FILEPATH; do
  FILENAME=$(basename $FILEPATH)
  WORKUNZIPDIR=$WORKDIR/${FILENAME%.*}

  echo ">> $WORKUNZIPDIR"
  unzip -qq $FILEPATH -d $WORKUNZIPDIR
done

echo
echo "All zip files processed!"
