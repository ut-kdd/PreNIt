rm(list=ls())
setwd("~/PreNIt")
source(paste(getwd(),'/Common code.R',sep=""))
source(paste(getwd(),'/PreNIt.R',sep=""))
rating<- read.delim(paste(getwd(),'/rating.data',sep=""), header=FALSE)
trdir=paste(getwd(),'/tr-1-10.csv',sep="")
rmat=makeRatmat(rating)
usersequence=makeuserSequence(rating);
res2=rankEvaluation_Yu_PReNIt(rmat,userSeq = usersequence,trl=10,direc = "~/g-res.csv",firstRun = 1,damping = 0.85,trainflag = 1,trdirec = trdir,smet = 2)

