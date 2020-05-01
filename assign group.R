
rm(list = ls())
unassigned = c("ADIGUNA, Joszef Maximillian", "AU, Cheuk Yin", "CHAN, Chin Ho Ryan", 
                "CHEN, Shiqin", "CHEN, Yufeng", "CHEUNG, Nok Man Gavin", "CHOI, Bo Kyoung", 
               "CHOI, Ho Chung",
               "CHOW, Hau Cheung Jasper", "CHUN, Lok Him Brian", "CHUNG, Lok Chim", 
               "ESPINOSA MOOSER, Nicolas", "FUNG, Po Yin", "HO, Chi Hong", "HO, Chuen Ho",
               "HO, Tsz Ho", "HO, Yu Yat", "HWANG, Junyeol", "IP, Thomas", "KWOK, Ue Nam",
               "LAM, Pak Hei", "LAU, Yuen Fui", "LEUNG, Ka Ming", "LI, Bohan", "LI, Kin Long",
               "LI, Tin Yuet", "LIN, Chuan-en", "LIU, Tsz Hei", "NG, Lok Yiu", "TANG, Chi To",
               "TO, Nok Hang", "TONG, Chin Fung", "TSE, Ching", "WANG, Jinmai", "WONG, Kan Chun",
               "WONG, Long Ching Laurel", "WONG, Tsz Chun", "WONG, Wai Ning", "WONG, Yan Ho",
               "WU, Ka Lok", "YANG, Guang", "YEUNG, Tsz Kin", "YU, Sing Yung", "ZHAO, Hengsheng")

index_unassigned = 1:length(unassigned)

# 2 groups with 4 members (group 2,15)

set.seed(123)
assign1 = sample(index_unassigned,2,replace = F)
print(unassigned[assign1])


# 2 groups with 3 members (group 9,10)
index_unassigned = index_unassigned[-which(index_unassigned%in%assign1)]
set.seed(123)
assign2 = sample(index_unassigned,2*2,replace = F)
print(unassigned[assign2])

# 1 groups with 2 members (group 23)
index_unassigned = index_unassigned[-which(index_unassigned%in%assign2)]
set.seed(123)
assign3 = sample(index_unassigned,3,replace = F)
print(unassigned[assign3])

index_unassigned = index_unassigned[-which(index_unassigned%in%assign3)]
set.seed(123)
assign4 = sample(index_unassigned,length(index_unassigned),replace = F)
for (i in 1:7){
  
  print(paste("Group ",i,": ",paste(unassigned[assign4[((i-1)*5+1):(5*i)]],collapse = " "),sep = ""))
  
}