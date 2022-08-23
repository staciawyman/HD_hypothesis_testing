

# FamB2 H1D
./test_hyp_annovar.pl all_exonic.txt -i 391824,303296,314328,254853,427028 -p 0/1,0/1,0/0,0/0,0/0  > all_hypothesis_output/FamB2_H1D_Exonic.txt
./test_hyp_annovar.pl all_reg.txt -i 391824,303296,314328,254853,427028 -p 0/1,0/1,0/0,0/0,0/0  > all_hypothesis_output/FamB2_H1D_Reg.txt

# FamB2 H2P
./test_hyp_annovar.pl all_exonic.txt -i 427028,254853,314328,303296 -p 0/1,0/1,0/1,0/0 > all_hypothesis_output/FamB2_H2P_Exonic.txt
./test_hyp_annovar.pl all_reg.txt -i 427028,254853,314328,303296 -p 0/1,0/1,0/1,0/0 > all_hypothesis_output/FamB2_H2P_Reg.txt

# FamG3 H1D
./test_hyp_annovar.pl all_exonic.txt -i 429266,925436,690847 -p 0/1,0/0,0/0 > all_hypothesis_output/FamG3_H1D_Exonic.txt &
./test_hyp_annovar.pl all_reg.txt -i 429266,925436,690847 -p 0/1,0/0,0/0 > all_hypothesis_output/FamG3_H1D_Reg.txt &
# FamG3 H2P
./test_hyp_annovar.pl all_exonic.txt -i 925436,690847,429266 -p 0/1,0/1,0/0 > all_hypothesis_output/FamG3_H2P_Exonic.txt &
./test_hyp_annovar.pl all_reg.txt -i 925436,690847,429266 -p 0/1,0/1,0/0 > all_hypothesis_output/FamG3_H2P_Reg.txt 

# FamM H1D
./test_hyp_annovar.pl all_exonic.txt -i 611761,982886,116386 -p 0/1,0/1,0/0 > all_hypothesis_output/FamM_H1D_Exonic.txt &
./test_hyp_annovar.pl all_reg.txt -i 611761,982886,116386 -p 0/1,0/1,0/0 > all_hypothesis_output/FamM_H1D_Reg.txt 
# FamM H2P
./test_hyp_annovar.pl all_exonic.txt -i 116386,240256,982886,611761  -p 0/1,0/1,0/0,0/0 > all_hypothesis_output/FamM_H2P_Exonic.txt &
./test_hyp_annovar.pl all_reg.txt -i 116386,240256,982886,611761  -p 0/1,0/1,0/0,0/0 > all_hypothesis_output/FamM_H2P_Reg.txt 
#
#==========================================================================================================
# RFam2 H1D
#E_628863,732859,455180; Not_131922,472802,219281,461609 
./test_hyp_annovar.pl all_exonic.txt -i 628863,732859,455180,131922,472802,219281,461609 -p 0/1,0/1,0/1,0/0,0/0,0/0,0/0 > all_hypothesis_output/new_RFam2_H1D_Exonic.txt &
./test_hyp_annovar.pl all_reg.txt -i 628863,732859,455180,131922,472802,219281,461609 -p 0/1,0/1,0/1,0/0,0/0,0/0,0/0 > all_hypothesis_output/new_RFam2_H1D_Reg.txt &

# RFam2 H2P
#E_131922,472802,219281,461609; Not_628863,732859,455180 
./test_hyp_annovar.pl all_exonic.txt -i 628863,732859,455180,131922,472802,219281,461609 -p 0/0,0/0,0/0,0/1,0/1,0/1,0/1 > all_hypothesis_output/new_RFam2_H2P_Exonic.txt
./test_hyp_annovar.pl all_reg.txt -i 628863,732859,455180,131922,472802,219281,461609 -p 0/0,0/0,0/0,0/1,0/1,0/1,0/1 > all_hypothesis_output/new_RFam2_H2P_Reg.txt

# RFam3 H1D
#E_ 430937,281175; Not_ 897245 
./test_hyp_annovar.pl all_exonic.txt -i 430937,281175,897245 -p 0/1,0/1,0/0 > all_hypothesis_output/RFam3_H1D_Exonic.txt &
./test_hyp_annovar.pl all_reg.txt -i 430937,281175,897245 -p 0/1,0/1,0/0 > all_hypothesis_output/RFam3_H1D_Reg.txt &

# RFam3 H2P
#E_897245,412119; Not_281175,430937 
./test_hyp_annovar.pl all_exonic.txt -i 430937,281175,897245,412119 -p 0/0,0/0,0/1,0/1 > all_hypothesis_output/RFam3_H2P_Exonic.txt &
./test_hyp_annovar.pl all_reg.txt -i 430937,281175,897245,412119 -p 0/0,0/0,0/1,0/1 > all_hypothesis_output/RFam3_H2P_Reg.txt &

# RFam5 H1D
# E_642913; Not_158005,974679,128686 
./test_hyp_annovar.pl all_exonic.txt -i 642913,158005,974679,128686 -p 0/1,0/0,0/0,0/0 > all_hypothesis_output/RFam5_H1D_Exonic.txt &
./test_hyp_annovar.pl all_reg.txt -i 642913,158005,974679,128686 -p 0/1,0/0,0/0,0/0 > all_hypothesis_output/RFam5_H1D_Reg.txt &

# RFam5 H2P
# E_158005,128686;Not_642913 
./test_hyp_annovar.pl all_exonic.txt -i 642913,158005,128686 -p 0/0,0/1,0/1 > all_hypothesis_output/RFam5_H2P_Exonic.txt &
./test_hyp_annovar.pl all_reg.txt -i 642913,158005,128686 -p 0/0,0/1,0/1 > all_hypothesis_output/RFam5_H2P_Reg.txt &

#---------------------------------------------------------------------------------------------------------
# Individual 520456 is missing, so will remove from the hypotheses
# FamG H1D
# ORIGINAL: E_573075,708332; Not_520456 
# NOW: E_573075,708332
#./test_hyp_annovar.pl all_exonic.txt -i 573075,708332,520456 -p 0/1,0/1,0/0 > all_hypothesis_output/FamG_H1D_Exonic.txt 
#./test_hyp_annovar.pl all_reg.txt -i 573075,708332,520456 -p 0/1,0/1,0/0 > all_hypothesis_output/FamG_H1D_Reg.txt 
./test_hyp_annovar.pl all_exonic.txt -i 573075,708332 -p 0/1,0/1 > all_hypothesis_output/FamG_H1D_Exonic.txt 
./test_hyp_annovar.pl all_reg.txt -i 573075,708332 -p 0/1,0/1 > all_hypothesis_output/FamG_H1D_Reg.txt 

# FamG H2P
# ORIGINAL: E_520456; Not_ 573075, 708332 
# NOW:  Not_ 573075, 708332 
#./test_hyp_annovar.pl all_exonic.txt -i 573075,708332,520456 -p 0/0,0/0,0/1 > all_hypothesis_output/FamG_H2P_Exonic.txt 
#./test_hyp_annovar.pl all_reg.txt -i 573075,708332,520456 -p 0/0,0/0,0/1 > all_hypothesis_output/FamG_H2P_Reg.txt 
./test_hyp_annovar.pl all_exonic.txt -i 573075,708332 -p 0/0,0/0 > all_hypothesis_output/FamG_H2P_Exonic.txt 
./test_hyp_annovar.pl all_reg.txt -i 573075,708332 -p 0/0,0/0 > all_hypothesis_output/FamG_H2P_Reg.txt 
#---------------------------------------------------------------------------------------------------------

# FamS H1D
# E_135676; Not_714483,839427,706395  
./test_hyp_annovar.pl all_exonic.txt -i 135676,714483,839427,706395 -p 0/1,0/0,0/0,0/0 > all_hypothesis_output/FamS_H1D_Exonic.txt & 
./test_hyp_annovar.pl all_reg.txt -i 135676,714483,839427,706395 -p 0/1,0/0,0/0,0/0 > all_hypothesis_output/FamS_H1D_Reg.txt & 

# FamS H2P
#E_714483, 839427  and 706395; Not: 135676 
./test_hyp_annovar.pl all_exonic.txt -i 135676,714483,839427,706395 -p 0/0,0/1,0/1,0/1 > all_hypothesis_output/FamS_H2P_Exonic.txt & 
./test_hyp_annovar.pl all_reg.txt -i 135676,714483,839427,706395 -p 0/0,0/1,0/1,0/1 > all_hypothesis_output/FamS_H2P_Reg.txt & 

#FamT H1D
#E_406574,444016 and 497267 (and 703805? too INITIALLY RUNNING WITHOUT); Not_ 802111, 562885 
./test_hyp_annovar.pl all_exonic.txt -i 406574,444016,497267,802111,562885 -p 0/1,0/1,0/1,0/0,0/0 > all_hypothesis_output/FamT_H1D_Exonic.txt &
./test_hyp_annovar.pl all_reg.txt -i 406574,444016,497267,802111,562885 -p 0/1,0/1,0/1,0/0,0/0 > all_hypothesis_output/FamT_H1D_Reg.txt &

#FamT H2P
#E_802111, 562885; Not_ 406574,444016 and 497267 
./test_hyp_annovar.pl all_exonic.txt -i 406574,444016,497267,802111,562885 -p 0/0,0/0,0/0,0/1,0/1 > all_hypothesis_output/FamT_H2P_Exonic.txt &
./test_hyp_annovar.pl all_reg.txt -i 406574,444016,497267,802111,562885 -p 0/0,0/0,0/0,0/1,0/1 > all_hypothesis_output/FamT_H2P_Reg.txt &

#--------------------------------------------------------------------------------------------------------------
# Individual 257868  is missing, so will remove family from the hypotheses
#FamC2 H1D
# ORIGINAL: E_257868; Not:_ 493733 and 976055 
# NOW:  Not:_ 493733 and 976055 
#./test_hyp_annovar.pl all_exonic.txt -i 257868,493733,976055 -p 0/1,0/0,0/0 > all_hypothesis_output/FamC2_H1D_Exonic.txt &
#./test_hyp_annovar.pl all_reg.txt -i 257868,493733,976055 -p 0/1,0/0,0/0 > all_hypothesis_output/FamC2_H1D_Reg.txt 
#./test_hyp_annovar.pl all_exonic.txt -i 493733,976055 -p 0/0,0/0 > all_hypothesis_output/FamC2_H1D_Exonic.txt &
#./test_hyp_annovar.pl all_reg.txt -i 493733,976055 -p 0/0,0/0 > all_hypothesis_output/FamC2_H1D_Reg.txt 

#FamC2 H2P
# ORIGINAL: E_493733, 976055; Not_ 257868 
# NOW: E_493733, 976055; Not_ 257868 
#./test_hyp_annovar.pl all_exonic.txt -i 257868,493733,976055 -p 0/0,0/1,0/1 > all_hypothesis_output/FamC2_H2P_Exonic.txt &
#./test_hyp_annovar.pl all_reg.txt -i 257868,493733,976055 -p 0/0,0/1,0/1 > all_hypothesis_output/FamC2_H2P_Reg.txt &
#./test_hyp_annovar.pl all_exonic.txt -i 493733,976055 -p 0/1,0/1 > all_hypothesis_output/FamC2_H2P_Exonic.txt &
#./test_hyp_annovar.pl all_reg.txt -i 493733,976055 -p 0/1,0/1 > all_hypothesis_output/FamC2_H2P_Reg.txt &
#--------------------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------------------
# Individual 575689 is missing, so will remove from hypotheses
#FamJ H1D
# ORIGINAL: E_804556, 575689; Not_  443397 
# NOW: E_804556,410564; Not  443397 
./test_hyp_annovar.pl all_exonic.txt -i 804556,410564,443397 -p 0/1,0/1,0/0 > all_hypothesis_output/FamJ_H1D_Exonic.txt &
./test_hyp_annovar.pl all_reg.txt -i 804556,410564,443397 -p 0/1,0/1,0/0 > all_hypothesis_output/FamJ_H1D_Reg.txt &

#FamJ H2P
# ORIGINAL: E_443397; not 804556, 410564 and 575689 do not have
# NOW: E_443397; not 804556, 410564 do not have
./test_hyp_annovar.pl all_exonic.txt -i 443397,804556,410564 -p 0/1,0/0,0/0 > all_hypothesis_output/FamJ_H2P_Exonic.txt &
./test_hyp_annovar.pl all_reg.txt -i 443397,804556,410564 -p 0/1,0/0,0/0 > all_hypothesis_output/FamJ_H2P_Reg.txt &

#--------------------------------------------------------------------------------------------------------------
# FamB4
# Test denovo damaging variant in affected
./test_hyp_annovar.pl all_exonic.txt -i 308922,657501,746922 -p 0/1,0/0,0/0 > all_hypothesis_output/FamB4_H1D_Exonic.txt &
./test_hyp_annovar.pl all_reg.txt -i 308922,657501,746922 -p 0/1,0/0,0/0 > all_hypothesis_output/FamB4_H1D_Reg.txt &


./test_hyp_annovar.pl all_exonic.txt -i 308922,657501,746922 -p 0/0,0/0,0/1 > all_hypothesis_output/FamB4_H2P_Exonic.txt &
./test_hyp_annovar.pl all_reg.txt -i 308922,657501,746922 -p 0/0,0/0,0/1 > all_hypothesis_output/FamB4_H2P_Reg.txt &
