#! /bin/bash

#remove all files from a directory

echo "input directory name where you would like to delete all files"
read directoryname
rm ./$directoryname/*
