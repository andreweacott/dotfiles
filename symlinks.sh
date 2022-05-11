#!/usr/bin/env bash

echo "Changing to stow directory..."
PREV_DIR=`pwd`

cd stow

for d in `ls -d */`;
do
    echo "Running stow for $d..."
    ( stow --restow -t $HOME $d )
done

echo "Returning to $PREV_DIR..."
cd $PREV_DIR

