# sequel-file-manipulation
Two shell scripts to be used during circular-consensus sequencing and demultiplexing, prior to use in the mcsmrt pipeline.
A) bam_to_passes_tsv.sh 
This Bash shell script takes a pacbio bam file and outputs a tsv with the nuber of passes during circular-consensus sequencing and can be used for adding sample and ccs passes to fqs in (B).

Input:
1) "test.ccs.bam" 

Output:
2) "ccs_passes.tsv" = readname\tnum_passes to tsv file 

B) rename_fqs_from_csv.sh
This shell script takes input as a directory of fastq files post-demultiplexing and a barcode-to-sample csv file and creates a new tsv file renaming the fastq files with the sample names found in the barcode-to-sample csv.

Input:
1) a directory of fastq files 
2) a barcode to sample name csv file 

Output:
1) a tsv file with renamed fastq files with sample name

