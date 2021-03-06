# setwd("E:/Yale/lab rotations/4 - gerstein lab")
# 
# ###### for 2x2 contingency table
# ## read in data as MATRIX; data is read in column-wise
# setwd("C:/Users/Jieming/Desktop")
# rm(list = ls())
# filename <- "jm.txt";
# data <- read.table(filename, header=F, sep = "\t", stringsAsFactors = F)
# data <- data.matrix(data)	
# out <- matrix(data=0,nrow=nrow(data),ncol=2)
# 
# for (i in 1:nrow(data))
# {
# 	out[i,1] <- fisher.test(matrix(data[i,],nrow=2),alternative="greater")$p.value
# 	out[i,2] <- fisher.test(matrix(data[i,],nrow=2))$p.value
# }
# 
# write(t(out), file="fisherpval.txt", ncolumns=2, sep="\t")

# ###################################################################
# ###### for 2x2 contingency table (no loop)
# ## read in data as MATRIX; data is read in column-wise
# # rm(list = ls())
# data <- matrix(c(10,4,8,14), 2,2, 
# 			dimnames = list(Pathways = c("NS","non-NS"),SNPs = c("mt20","lt20")))
# 
# data
# ## fisher's test
# ## default is 2-sided, 95% CI
# x = fisher.test(data,alternative="two.sided")
# 
# # fisher.test(data)$p.value
# # fisher.test(data)$estimate
# chisq.test(data)


### test if there is an enrichment of non-surgical conditions 
## in more than 2 years
data <- matrix(c(13,1,5,17), 2,2, 
               dimnames = list(Pathways = c("NS","non-NS"),SNPs = c("mt2","lt2")))

data
## fisher's test
## default is 2-sided, 95% CI
x = fisher.test(data,alternative="two.sided")

# fisher.test(data)$p.value
# fisher.test(data)$estimate
chisq.test(data)

######################################################################
# ###### for m x n contingency table
# ## note that the permutations are done in Monte Carlo fashion
# data <- matrix(c(862,725,546,883,747,1218, 813,636,440,759,632,1194), 6,2,
# 		dimnames = list(Pathways = c("Metabolic","Cellular Processes","Genetic Info","Signaling","Diseases","Systems"),
# 					SNPs = c("Synon","Nonsynon")))
# 
# data
# fisher.test(data)
# fisher.test(data, simulate.p.value=TRUE, B=1e5)
# chisq.test(data)