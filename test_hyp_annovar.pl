#!/usr/bin/perl
#
# Stacia Wyman
# Code to find segregating variants in pedigrees. Porgram is called with 
# 	1. file with genotypes for all individuals for each variant
# 	2. individuals to test 
# 	3. test pattern 1/1 homozygous, 0/0 not in individual, or 0/1 heterozygous in order of individuals in 2.
# There must be the same number of genotypes as there are individuals to test.
# 
# For example:
#
# ./test_hyp_annovar.pl all_exonic.txt -i 427028,254853,314328,303296 -p 0/1,0/1,0/1,0/0 > all_hypothesis_output/FamB2_H2P_Exonic.txt
#
# Will test if a variants is in individuals 427028,254853,314328 and not present in 303296
#
use Getopt::Long;

my ($individuals,$pattern,$str);
 my $n = 100000;
my $D = 0; # Flag for adding in number of nocalls 

my $usage= 	"usage: perl test_hyp_annovar.pl <file of annotations and genotypes>  -i individuals -p pattern \n".
		"options: -i genome identifier used in the testvariant_file, separated by comma e.g., A02,B02,C02\n".
		"	  -p pattern (on of 1/1, 0/0, or 0/1) to be searched for e.g., 0/0,1/1,0/1\n";	

GetOptions('i=s'=>\$individuals,
			 'p=s'=>\$pattern,
			'n=i'=>\$n);

# patterns and individuals to test
my @inds=split(/,/,$individuals);
my %inds=();
my @pattern=split(/,/,$pattern);
for(my $i=0;$i <= $#inds; $i++){
	$inds{$inds[$i]}=$pattern[$i];
}
my %cols=();
die "number of individuals differs from number of patterns: $individuals $pattern\n" if ($#inds ne $#pattern);

open(FILE,$ARGV[0]) or die $!;
while (<FILE>) {
	chomp;
	my @fields=split(/\t/);
	my $str = $_;
	if(/^Gene/ ) {
		# get genotype for the individuals
		for(my $i=0;$i<scalar(@fields);$i++){
			$cols{$fields[$i]}=$i;
		}
		print "$str\n";
	}elsif (/^#/) { print "$str\n"; next; 
	} else {
		my $ok=1;
		# MOI
		my $nocalls = 0;
		foreach my $ind (keys (%inds) ){
			# make sure individual's genotype in file matches the input genotype 
			if(exists($inds{$ind}) && exists($cols{$ind})){
				my ($gt) = split(":",$fields[$cols{$ind}]);
				$gt =~ s/\'//; # strip out quote for excel file
				if ($gt eq "./.") { 
					if ($D) {print "===>nocall $gt and checking $nocalls plus 1 against $n\n";}
					$gt = "NC"; $nocalls++;
				} 
				if ($D) {print "checking for $ind: $inds{$ind} =~ $gt==>";}
				if ($inds{$ind} ne $gt &&  $inds{$ind} !~ /$gt/ ) {  
					$ok=0;
					if ($D) {print "OK IS NO.";}
				} else {
					if ($D) {print "YES";}
				}
				if ($D) {print "\n";}
				SKIP:
			}else{
				die "\n==>INDIVIDUAL $ind does not exist\n";
			}
		}
		if ($D) {print "NOCALLS: $nocalls, N: $n\n";}
		#if ($nocalls <= $n) {
		print "$str\n" if $ok; 
		#}
	}
}

close(FILE);

