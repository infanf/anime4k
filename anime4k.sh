#!/bin/bash

cd $1
for FILE in *.png
chown -R $(stat -c "%u:%g" $1) $2
do
    java -jar /java/Anime4K.jar $FILE $2/$FILE
    chown $(stat -c "%u:%g" $FILE) $2/$FILE
done