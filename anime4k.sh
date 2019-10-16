#!/bin/bash

cd $1
for FILE in *.png
do
    java -jar /java/Anime4K.jar $FILE $2/$FILE
done