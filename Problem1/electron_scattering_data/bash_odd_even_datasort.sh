#! /bin/bash

#sort all files in the directory into even and odd numbered indices

dir=$1
echo $dir

mkdir -p "$dir"/even
mkdir -p "$dir"/odd
for file in "$dir"/*.bin; do
    echo "$file"
    filestring="$file"
    errorstring="./*.bin"
    if [[ "$filestring" == "$errorstring" ]]; then
        echo "no files to sort/file sorting already complete"
        break
    fi
    basefilename=$( basename "${file%.*}" )
    echo "$basefilename"
    file_index="${basefilename: -1}"
    file_index_float=$( echo "$file_index" | bc -l ) 
    echo "$file_index_float"
    index_modulo_2=$(( $file_index_float % 2 ))
    if [[ "$file_index_float" -eq "$zero" ]]; then
        mv $file "$dir"/even
    elif [[ "$index_modulo_2" -eq "$zero" ]]; then
        mv $file "$dir"/even
    else
         mv $file "$dir"/odd
    fi
done