#! /bin/bash 

# Author: Sam Czerski
# Description: Takes a pacbio bam file and outputs readname\tnum_passes to tsv file for adding sample and ccs passes to fqs 



$(samtools view *ccs.bam|cut -f1,14|perl -pe 's/np:i://' >> ccs_passes.tsv);
