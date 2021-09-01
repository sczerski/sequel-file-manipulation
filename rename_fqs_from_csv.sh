#! /bin/bash
 
# Author: Sam Czerski
# Description: Takes directory of fastq files and a barcode to sample name csv file and renames the fastq files to sample name

# Setting Input Parameters
while getopts f:c:o: flag
do
    case "${flag}" in
	f) fqs_dir=${OPTARG};;
	c) csv_file=${OPTARG};;
	o) out_dir=${OPTARG};;
    esac
done

# Convert csv to Unix file if Windows to avoid return character being added when renaming
$(sed -i -e 's/\r$//' "$csv_file");

# Create variable lines containing the lines of the csv file
lines=$(cat $csv_file);

# Create the output directory
$(mkdir $out_dir);

# For each line in the csv file, append the barcode and sample id to array, and replace barcode with sample id
for i in $lines;

do
    IFS=","
    read -r -a array <<<"$i";
    $(cp ""$fqs_dir/demultiplex."${array[0]}".Q20.fastq"" ""$out_dir/"${array[1]}".fq"");
done