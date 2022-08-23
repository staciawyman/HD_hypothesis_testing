# Family-based whole genome sequence co-segregation analysis uncovers variants that modify age of onset in HD

## HD Hypothesis testing

This repo contains a shell script (all_hypotheses.sh) to run a detrimental (H1D) and protective (H2P) hypothesis test for each family in the HD study. 

It calls test_hyp_annovar.pl repeatedly as follows:

```./test_hyp_annovar.pl <file of variants> -i <individuals in hypothesis> -p <genotypes to test>```

 The program tests each variant for segregation with the families. Porgram is called with:
 	1. file with genotypes for all individuals for each variant
 	2. individuals to test
 	3. test pattern 1/1 homozygous, 0/0 not in individual, or 0/1 heterozygous in order of individuals in 2.
 There must be the same number of genotypes as there are individuals to test.

 For example:

``` ./test_hyp_annovar.pl all_exonic.txt -i 427028,254853,314328,303296 -p 0/1,0/1,0/1,0/0 > all_hypothesis_output/FamB2_H2P_Exonic.txt```

 Will test if a variants is in individuals 427028,254853,314328 and not present in 303296


