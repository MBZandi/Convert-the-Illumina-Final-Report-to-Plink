######## pipeLine for final report to plink format

#remove all stored values
rm(list=ls(all=TRUE)) 

#change working directory
setwd(choose.dir())
getwd()

#2: read the data as follow
 map <- read.table(file="SNP_Map.txt",  header=F, skip=1)
 head(map)

# 3: Define the col name of new file
colnames(map) <- c("Index",	"SNP-ID",	"Chromosome",	"Position-bp",	"GenTrain-Score",	"SNP",	"ILMN-Strand",	"Customer-Strand",	"Position-CM")
 head(map)


col_order <- c("Chromosome", "SNP-ID", "Position-CM", "Position-bp")

#col_order <- c("ID", "ID", "SNP.Name", "Allele1.F", "Allele2.F")
#col_order <- c("ID", "ID", "SNP.Name", "Allele1.AB", "Allele2.AB")



#4: Define the new datafile with new col order and changeing the cols
 data40x <- map[, col_order]
 head(data40x)

# 6: export the data to the lgen format for plink as follow:

 write.table(data40x, file = "data40-3.map",sep="\t", row.names=FALSE, col.names=FALSE,  quote = F)
 
# 7: Or Replace the "-	-" with "0	0" in txtpad sofware 
####### Lgen is ready to use
