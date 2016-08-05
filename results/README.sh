#!/bin/bash
#
#                               25-08-16
#                               ----------
#
DIR=../2016-07-12
DIR2=../2016-07-25

cp $DIR2/test.vcf test.vcf
if [ ! -e test.vcf.gz ]; then
        bgzip test.vcf # to compress the vcf file.
        tabix test.vcf.gz # to index the compressed vcf file.
        ~/bin/bcftools stats test.vcf.gz > z1 # to generate statistics.
        mkdir plots # to create a target folder
        ~/bin/plot-vcfstats -p plots/ z1 # to plot the statistics.
fi

cp $DIR/mosquito.vcf mosquito.vcf
if [ ! -e mosquito.vcf-gz ]; then
        bgzip mosquito.vcf # to compress the vcf file.
        tabix mosquito.vcf.gz # to index the compressed vcf file.
        ~/bin/bcftools stats mosquito.vcf.gz > z1 # to generate statistics.
        mkdir plots # to create a target folder
        ~/bin/plot-vcfstats -p plots/ z1 # to plot the statistics.
fi


