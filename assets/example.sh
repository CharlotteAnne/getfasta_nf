#!/bin/bash 

bed="test100.bed"
fasta="test.fa"
fasta_fai="test.fa.fai"
flank=50

bedtools slop -b ${flank} -i ${bed} -g ${fasta_fai} > snrna_flank.bed
bedtools getfasta -fi ${fasta} -bed snrna_flank.bed -s > snrna_seqs.fa

rm snrna_flank.bed