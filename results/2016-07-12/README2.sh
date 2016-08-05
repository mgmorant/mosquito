#!/bin/bash
#
#                               12-07-16
#                               ----------
#
# We want to separate Molestus and Pipiens
# After that, we count how many variable sites are covered by at least 4 individuals of each population

if [ ! -e stmol.bcf ]; then
        samtools mpileup -gf reference.fa Mol*.bam > stmol.bcf
        vcftools --bcf stmol.bcf --out MOL --missing-site
fi

if [ ! -e stpip.bcf ]; then
        samtools mpileup -gf reference.fa Pip*.bam > stpip.bcf
        vcftools --bcf stmol.bcf --out PIP --missing-site
fi



