#Project into future: resample longitudinal data by decile range of 'i' data by age, race, sex.
#Assume young indiv. form new cohorts to match young 'i' data at age 12 and project longitudinally
library(fields)
#White males 
lwmi=dim(wmqpi)[1]
cnts <- vector(mode="numeric",len=10)
fuvec <- vector(mode="numeric",len=14)   #future long. vector (age, BMI deciles, cal-yr, birth coh)
fuproj = matrix(0,nrow=0,ncol=14)        #future long. aggregated data as continuation of 'i' data 
nuvec <- vector(mode="numeric",len=14)   #new cohort long vector (age, BMI dec, cal-yr, birth coh)
nuproj = matrix(0,nrow=0,ncol=14)        #aggregated new cohorts (matched to 'i' data at age 12) 
setmin=12.
setmax=60.
for (i in 1:lwmi) {
 age=wmqpi[i,1]
 cyr=wmqpi[i,13]
 byr=wmqpi[i,14]
 cnts=0
 for (j in 1:10) {     #group individuals in longitudinal cohort by deciles of latest 'i' data
  llim=wmqpi[i,j+1]
  ulim=wmqpi[i,j+2]
  testi<-wmbmisp[,age]
  testi<-testi[testi<=ulim]
  testi<-testi[testi>llim]
  testj<-testi[is.na(testi)==F]
  cnts[j]=length(testj)
  print(c(llim,ulim,range(testj)))
 }
 sam=min(cnts)         #identify minimum num of individuals at this age in long cohort groups
 print(cnts)
 print(sam)
 longs = matrix(0,nrow=0,ncol=101)
 for (j in 1:10) {      #sample longitudinal data acording to BMI decile dist in latest 'i' data 
  idall=1:cnts[j]
  idsam =sample(idall,sam)
  print(length(idsam))
  llim=wmqpi[i,j+1]
  ulim=wmqpi[i,j+2]
  print(c(i,j,age,llim,ulim))
  longi<-wmbmisp[wmbmisp[,age]<=ulim,]
  longj<-longi[longi[,age]>llim,]
  longj<-longj[is.na(longj[,age])==F,]
  longs <- rbind(longs,longj[idsam,])
  print(c(llim,ulim,dim(longs),range(longs[,age])))
 }
 if(age == 12){ nulongs=longs }  #new cohorts use sample matched by BMI dec at age 12 in 'i' data 

 for(k in 1:25) {      #evaluate BMIs in subsequent decades using sampled longitudinal data 
  print(k)
  testage=age+4*k
  testcyr=cyr+4*k
  if(testage<=100 && testcyr <= 2120){ #extend projection beyond 2100 target to avoid edge effects
   longk<-longs[is.na(longs[,testage])==F,]
   if(dim(longk)[1]>20){          #don't project quantiles if individual counts falls below 20
    tquan=quantile(longk[,testage],probs=(0:10)/10)
    fuvec[2:12]<-tquan
    fuvec[1]<-testage
    fuvec[2]<-max(fuvec[2],setmin)
    fuvec[12]<-min(fuvec[12],setmax)
    fuvec[13]<-testcyr
    fuvec[14]<-byr
    print(fuvec)
    fuproj <- rbind(fuproj,fuvec)
   }
  }
 }
 for(k in 0:25) {    #evaluate BMIs in new cohorts beginning age 12 using sampled longitudinal data 
  testage=12+4*k
  testcyr=cyr+4*k+i
  if(testage<=100 && testcyr <= 2120){ #extend projection beyond 2100 target to avoid edge effects
   nulongk<-nulongs[is.na(nulongs[,testage])==F,]
   if(dim(nulongk)[1]>20){      #don't project quantiles if individual counts falls below 20
    tquan=quantile(nulongk[,testage],probs=(0:10)/10)
    nuvec[2:12]<-tquan
    nuvec[1]<-testage
    nuvec[2]<-max(nuvec[2],setmin)
    nuvec[12]<-min(nuvec[12],setmax)
    nuvec[13]<-testcyr
    nuvec[14]<-testcyr-testage
    print(nuvec)
    nuproj <- rbind(nuproj,nuvec)
   }
  }
 }
}
wmfuproj=fuproj
wmnuproj=nuproj

wmqpall=rbind(wmqpa,wmqpb,wmqpc,wmqpd,wmqpe,wmqpf,wmqpg,wmqph,wmqpi,wmqp3,wmqp2,wmqp1,wmqp0,wmqplf,
wmfuproj,wmnuproj)
lwmqp <- dim(wmqpall)[1]
wmyq3 = vector(mode="numeric",len=0)
wmxq3 = matrix(0,nrow=0,ncol=3)
prbi = rep(0,lwmqp)
wmxq3=rbind(wmxq3,cbind(wmqpall[,1],wmqpall[,13],prbi))
wmyq3=c(wmyq3,wmqpall[,2])

for(i in 1:5){
 prbi[1:lwmqp] <- (2*i-1)/10
 wmxq3=rbind(wmxq3,cbind(wmqpall[,1],wmqpall[,13],prbi))
 wmyq3=c(wmyq3,wmqpall[,2*i+1])
}
prbi = rep(1,lwmqp)
wmxq3=rbind(wmxq3,cbind(wmqpall[,1],wmqpall[,13],prbi))
wmyq3=c(wmyq3,wmqpall[,12])

save(wmxq3,file = "wmxq3.RData")
save(wmyq3,file = "wmyq3.RData")

fitwmbmi<-Tps(wmxq3,wmyq3)
save(fitwmbmi,file = "fitwmbmi.RData")
#load("fitwmbmi.RData")


#White females 
lwfi=dim(wfqpi)[1]
cnts <- vector(mode="numeric",len=10)
fuvec <- vector(mode="numeric",len=14)   #future long. vector (age, BMI deciles, cal-yr, birth coh)
fuproj = matrix(0,nrow=0,ncol=14)        #future long. aggregated data as continuation of 'i' data 
nuvec <- vector(mode="numeric",len=14)   #new cohort long vector (age, BMI dec, cal-yr, birth coh)
nuproj = matrix(0,nrow=0,ncol=14)        #aggregated new cohorts (matched to 'i' data at age 12) 
setmin=12.
setmax=60.
for (i in 1:lwfi) {
 age=wfqpi[i,1]
 cyr=wfqpi[i,13]
 byr=wfqpi[i,14]
 cnts=0
 for (j in 1:10) {     #group individuals in longitudinal cohort by deciles of latest 'i' data
  llim=wfqpi[i,j+1]
  ulim=wfqpi[i,j+2]
  testi<-wfbmisp[,age]
  testi<-testi[testi<=ulim]
  testi<-testi[testi>llim]
  testj<-testi[is.na(testi)==F]
  cnts[j]=length(testj)
  print(c(llim,ulim,range(testj)))
 }
 sam=min(cnts)         #identify minimum num of individuals at this age in long cohort groups
 print(cnts)
 print(sam)
 longs = matrix(0,nrow=0,ncol=101)
 for (j in 1:10) {      #sample longitudinal data acording to BMI decile dist in latest 'i' data 
  idall=1:cnts[j]
  idsam =sample(idall,sam)
  print(length(idsam))
  llim=wfqpi[i,j+1]
  ulim=wfqpi[i,j+2]
  print(c(i,j,age,llim,ulim))
  longi<-wfbmisp[wfbmisp[,age]<=ulim,]
  longj<-longi[longi[,age]>llim,]
  longj<-longj[is.na(longj[,age])==F,]
  longs <- rbind(longs,longj[idsam,])
  print(c(llim,ulim,dim(longs),range(longs[,age])))
 }
 if(age == 12){ nulongs=longs }  #new cohorts use sample matched by BMI dec at age 12 in 'i' data 
 for(k in 1:25) {      #evaluate BMIs in subsequent decades using sampled longitudinal data 
  print(k)
  testage=age+4*k
  testcyr=cyr+4*k
  if(testage<=100 && testcyr <= 2120){ #extend projection beyond 2100 target to avoid edge effects
   longk<-longs[is.na(longs[,testage])==F,]
   if(dim(longk)[1]>20){          #don't project quantiles if individual counts falls below 20
    tquan=quantile(longk[,testage],probs=(0:10)/10)
    fuvec[2:12]<-tquan
    fuvec[1]<-testage
    fuvec[2]<-max(fuvec[2],setmin)
    fuvec[12]<-min(fuvec[12],setmax)
    fuvec[13]<-testcyr
    fuvec[14]<-byr
    print(fuvec)
    fuproj <- rbind(fuproj,fuvec)
   }
  }
 }
 for(k in 0:25) {    #evaluate BMIs in new cohorts beginning age 12 using sampled longitudinal data 
  testage=12+4*k
  testcyr=cyr+4*k+i
  if(testage<=100 && testcyr <= 2120){ #extend projection beyond 2100 target to avoid edge effects
   nulongk<-nulongs[is.na(nulongs[,testage])==F,]
   if(dim(nulongk)[1]>20){      #don't project quantiles if individual counts falls below 20
    tquan=quantile(nulongk[,testage],probs=(0:10)/10)
    nuvec[2:12]<-tquan
    nuvec[1]<-testage
    nuvec[2]<-max(nuvec[2],setmin)
    nuvec[12]<-min(nuvec[12],setmax)
    nuvec[13]<-testcyr
    nuvec[14]<-testcyr-testage
    print(nuvec)
    nuproj <- rbind(nuproj,nuvec)
   }
  }
 }
}
wffuproj=fuproj
wfnuproj=nuproj

wfqpall=rbind(wfqpa,wfqpb,wfqpc,wfqpd,wfqpe,wfqpf,wfqpg,wfqph,wfqpi,wfqp3,wfqp2,wfqp1,wfqp0,wfqplf,
wffuproj,wfnuproj)
lwfqp <- dim(wfqpall)[1]
wfyq3 = vector(mode="numeric",len=0)
wfxq3 = matrix(0,nrow=0,ncol=3)
prbi = rep(0,lwfqp)
wfxq3=rbind(wfxq3,cbind(wfqpall[,1],wfqpall[,13],prbi))
wfyq3=c(wfyq3,wfqpall[,2])

for(i in 1:5){
 prbi[1:lwfqp] <- (2*i-1)/10
 wfxq3=rbind(wfxq3,cbind(wfqpall[,1],wfqpall[,13],prbi))
 wfyq3=c(wfyq3,wfqpall[,2*i+1])
}
prbi = rep(1,lwfqp)
wfxq3=rbind(wfxq3,cbind(wfqpall[,1],wfqpall[,13],prbi))
wfyq3=c(wfyq3,wfqpall[,12])

save(wfxq3,file = "wfxq3.RData")
save(wfyq3,file = "wfyq3.RData")

fitwfbmi<-Tps(wfxq3,wfyq3)
save(fitwfbmi,file = "fitwfbmi.RData")
#load("fitwfbmi.RData")

#Black males 
lbmi=dim(bmqpi)[1]
cnts <- vector(mode="numeric",len=10)
fuvec <- vector(mode="numeric",len=14)   #future long. vector (age, BMI deciles, cal-yr, birth coh)
fuproj = matrix(0,nrow=0,ncol=14)        #future long. aggregated data as continuation of 'i' data 
nuvec <- vector(mode="numeric",len=14)   #new cohort long vector (age, BMI dec, cal-yr, birth coh)
nuproj = matrix(0,nrow=0,ncol=14)        #aggregated new cohorts (matched to 'i' data at age 12) 
setmin=12.
setmax=60.
for (i in 1:lbmi) {
 age=bmqpi[i,1]
 cyr=bmqpi[i,13]
 byr=bmqpi[i,14]
 cnts=0
 for (j in 1:10) {     #group individuals in longitudinal cohort by deciles of latest 'i' data
  llim=bmqpi[i,j+1]
  ulim=bmqpi[i,j+2]
  testi<-bmbmisp[,age]
  testi<-testi[testi<=ulim]
  testi<-testi[testi>llim]
  testj<-testi[is.na(testi)==F]
  cnts[j]=length(testj)
  print(c(llim,ulim,range(testj)))
 }
 sam=min(cnts)         #identify minimum num of individuals at this age in long cohort groups
 print(cnts)
 print(sam)
 longs = matrix(0,nrow=0,ncol=101)
 for (j in 1:10) {      #sample longitudinal data acording to BMI decile dist in latest 'i' data 
  idall=1:cnts[j]
  idsam =sample(idall,sam)
  print(length(idsam))
  llim=bmqpi[i,j+1]
  ulim=bmqpi[i,j+2]
  print(c(i,j,age,llim,ulim))
  longi<-bmbmisp[bmbmisp[,age]<=ulim,]
  longj<-longi[longi[,age]>llim,]
  longj<-longj[is.na(longj[,age])==F,]
  longs <- rbind(longs,longj[idsam,])
  print(c(llim,ulim,dim(longs),range(longs[,age])))
 }
 if(age == 12){ nulongs=longs }  #new cohorts use sample matched by BMI dec at age 12 in 'i' data 
 for(k in 1:25) {      #evaluate BMIs in subsequent decates using sampled longitudinal data 
  print(k)
  testage=age+4*k
  testcyr=cyr+4*k
  if(testage<=100 && testcyr <= 2120){ #extend projection beyond 2100 target to avoid edge effects
   longk<-longs[is.na(longs[,testage])==F,]
   if(dim(longk)[1]>20){          #don't project quantiles if individual counts falls below 20
    tquan=quantile(longk[,testage],probs=(0:10)/10)
    fuvec[2:12]<-tquan
    fuvec[1]<-testage
    fuvec[2]<-max(fuvec[2],setmin)
    fuvec[12]<-min(fuvec[12],setmax)
    fuvec[13]<-testcyr
    fuvec[14]<-byr
    print(fuvec)
    fuproj <- rbind(fuproj,fuvec)
   }
  }
 }
 for(k in 0:25) {    #evaluate BMIs in new cohorts beginning age 12 using sampled longitudinal data 
  testage=12+4*k
  testcyr=cyr+4*k+i
  if(testage<=100 && testcyr <= 2120){ #extend projection beyond 2100 target to avoid edge effects
   nulongk<-nulongs[is.na(nulongs[,testage])==F,]
   if(dim(nulongk)[1]>20){      #don't project quantiles if individual counts falls below 20
    tquan=quantile(nulongk[,testage],probs=(0:10)/10)
    nuvec[2:12]<-tquan
    nuvec[1]<-testage
    nuvec[2]<-max(nuvec[2],setmin)
    nuvec[12]<-min(nuvec[12],setmax)
    nuvec[13]<-testcyr
    nuvec[14]<-testcyr-testage
    print(nuvec)
    nuproj <- rbind(nuproj,nuvec)
   }
  }
 }
}
bmfuproj=fuproj
bmnuproj=nuproj

bmqpall=rbind(bmqpa,bmqpb,bmqpc,bmqpd,bmqpe,bmqpf,bmqpg,bmqph,bmqpi,bmqp3,bmqp2,bmqp1,bmqp0,bmqplf,
bmfuproj,bmnuproj)
lbmqp <- dim(bmqpall)[1]
bmyq3 = vector(mode="numeric",len=0)
bmxq3 = matrix(0,nrow=0,ncol=3)
prbi = rep(0,lbmqp)
bmxq3=rbind(bmxq3,cbind(bmqpall[,1],bmqpall[,13],prbi))
bmyq3=c(bmyq3,bmqpall[,2])

for(i in 1:5){
 prbi[1:lbmqp] <- (2*i-1)/10
 bmxq3=rbind(bmxq3,cbind(bmqpall[,1],bmqpall[,13],prbi))
 bmyq3=c(bmyq3,bmqpall[,2*i+1])
}
prbi = rep(1,lbmqp)
bmxq3=rbind(bmxq3,cbind(bmqpall[,1],bmqpall[,13],prbi))
bmyq3=c(bmyq3,bmqpall[,12])

save(bmxq3,file = "bmxq3.RData")
save(bmyq3,file = "bmyq3.RData")

fitbmbmi<-Tps(bmxq3,bmyq3)
save(fitbmbmi,file = "fitbmbmi.RData")

#load("fitbmbmi.RData")

#Black females 
lbfi=dim(bfqpi)[1]
cnts <- vector(mode="numeric",len=10)
fuvec <- vector(mode="numeric",len=14)   #future long. vector (age, BMI deciles, cal-yr, birth coh)
fuproj = matrix(0,nrow=0,ncol=14)        #future long. aggregated data as continuation of 'i' data 
nuvec <- vector(mode="numeric",len=14)   #new cohort long vector (age, BMI dec, cal-yr, birth coh)
nuproj = matrix(0,nrow=0,ncol=14)        #aggregated new cohorts (matched to 'i' data at age 12) 
setmin=12.
setmax=60.
for (i in 1:lbfi) {
 age=bfqpi[i,1]
 cyr=bfqpi[i,13]
 byr=bfqpi[i,14]
 cnts=0
 for (j in 1:10) {     #group individuals in longitudinal cohort by deciles of latest 'i' data
  llim=bfqpi[i,j+1]
  ulim=bfqpi[i,j+2]
  testi<-bfbmisp[,age]
  testi<-testi[testi<=ulim]
  testi<-testi[testi>llim]
  testj<-testi[is.na(testi)==F]
  cnts[j]=length(testj)
  print(c(llim,ulim,range(testj)))
 }
 sam=min(cnts)         #identify minimum num of individuals at this age in long cohort groups
 print(cnts)
 print(sam)
 longs = matrix(0,nrow=0,ncol=101)
 for (j in 1:10) {      #sample longitudinal data acording to BMI decile dist in latest 'i' data 
  idall=1:cnts[j]
  idsam =sample(idall,sam)
  print(length(idsam))
  llim=bfqpi[i,j+1]
  ulim=bfqpi[i,j+2]
  print(c(i,j,age,llim,ulim))
  longi<-bfbmisp[bfbmisp[,age]<=ulim,]
  longj<-longi[longi[,age]>llim,]
  longj<-longj[is.na(longj[,age])==F,]
  longs <- rbind(longs,longj[idsam,])
  print(c(llim,ulim,dim(longs),range(longs[,age])))
 }
 if(age == 12){ nulongs=longs }  #new cohorts use sample matched by BMI dec at age 12 in 'i' data 
 for(k in 1:25) {      #evaluate BMIs in subsequent decates using sampled longitudinal data 
  print(k)
  testage=age+4*k
  testcyr=cyr+4*k
  if(testage<=100 && testcyr <= 2120){ #extend projection beyond 2100 target to avoid edge effects
   longk<-longs[is.na(longs[,testage])==F,]
   if(dim(longk)[1]>20){          #don't project quantiles if individual counts falls below 20
    tquan=quantile(longk[,testage],probs=(0:10)/10)
    fuvec[2:12]<-tquan
    fuvec[1]<-testage
    fuvec[2]<-max(fuvec[2],setmin)
    fuvec[12]<-min(fuvec[12],setmax)
    fuvec[13]<-testcyr
    fuvec[14]<-byr
    print(fuvec)
    fuproj <- rbind(fuproj,fuvec)
   }
  }
 }
 for(k in 0:25) {    #evaluate BMIs in new cohorts beginning age 12 using sampled longitudinal data 
  testage=12+4*k
  testcyr=cyr+4*k+i
  if(testage<=100 && testcyr <= 2120){ #extend projection beyond 2100 target to avoid edge effects
   nulongk<-nulongs[is.na(nulongs[,testage])==F,]
   if(dim(nulongk)[1]>20){      #don't project quantiles if individual counts falls below 20
    tquan=quantile(nulongk[,testage],probs=(0:10)/10)
    nuvec[2:12]<-tquan
    nuvec[1]<-testage
    nuvec[2]<-max(nuvec[2],setmin)
    nuvec[12]<-min(nuvec[12],setmax)
    nuvec[13]<-testcyr
    nuvec[14]<-testcyr-testage
    print(nuvec)
    nuproj <- rbind(nuproj,nuvec)
   }
  }
 }
}
bffuproj=fuproj
bfnuproj=nuproj

bfqpall=rbind(bfqpa,bfqpb,bfqpc,bfqpd,bfqpe,bfqpf,bfqpg,bfqph,bfqpi,bfqp3,bfqp2,bfqp1,bfqp0,bfqplf,
bffuproj,bfnuproj)
lbfqp <- dim(bfqpall)[1]
bfyq3 = vector(mode="numeric",len=0)
bfxq3 = matrix(0,nrow=0,ncol=3)
prbi = rep(0,lbfqp)
bfxq3=rbind(bfxq3,cbind(bfqpall[,1],bfqpall[,13],prbi))
bfyq3=c(bfyq3,bfqpall[,2])

for(i in 1:5){
 prbi[1:lbfqp] <- (2*i-1)/10
 bfxq3=rbind(bfxq3,cbind(bfqpall[,1],bfqpall[,13],prbi))
 bfyq3=c(bfyq3,bfqpall[,2*i+1])
}
prbi = rep(1,lbfqp)
bfxq3=rbind(bfxq3,cbind(bfqpall[,1],bfqpall[,13],prbi))
bfyq3=c(bfyq3,bfqpall[,12])

save(bfxq3,file = "bfxq3.RData")
save(bfyq3,file = "bfyq3.RData")

fitbfbmi<-Tps(bfxq3,bfyq3)
save(fitbfbmi,file = "fitbfbmi.RData")



####################3



zyp <- list( x= 1:100, y=1900:2100, z=(0:10)/10)
xg<- make.surface.grid(zyp)

###############################
#Preprocess BMI fits by race, sex, quintile and save as tables for use in BMI history generator
bmiwm <- array(dim=c(100,201,5))
bmiwf <- array(dim=c(100,201,5))
bmibm <- array(dim=c(100,201,5))
bmibf <- array(dim=c(100,201,5))
###############################


dev.off()
dev.new()
set.panel(2,2)   #First quintile 
#set.panel(1,4)   #First quintile 
#set.panel(1,1)   #First quintile 
#White males
zyp1 <- list( x= 1:100, y=1900:2100, z=(1:1)/10)  #quintile 1 median
xg1<- make.surface.grid(zyp1)
fwmbmi1<- predict( fitwmbmi, xg1)
bmiwm[,,1] <-  fwmbmi1
wmout.p<- as.surface( xg1, fwmbmi1)
plot.surface(wmout.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - white male Q1',cex.main=1.3,cex.lab=1.3)
#dev.copy2pdf(file="WMBMI_Q1.pdf",width=7,height=8)

#White females
zyp1 <- list( x= 1:100, y=1900:2100, z=(1:1)/10)  #quintile 1 median
xg1<- make.surface.grid(zyp1)
fwfbmi1<- predict( fitwfbmi, xg1)
bmiwf[,,1] <-  fwfbmi1
out.p<- as.surface( xg1, fwfbmi1)
plot.surface(out.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - white female Q1',cex.main=1.3,cex.lab=1.3)
#dev.copy2pdf(file="WFBMI_Q1.pdf",width=8,height=8)
#Black males
zyp1 <- list( x= 1:100, y=1900:2100, z=(1:1)/10)  #quintile 1 median
xg1<- make.surface.grid(zyp1)
fbmbmi1<- predict( fitbmbmi, xg1)
bmibm[,,1] <-  fbmbmi1
out.p<- as.surface( xg1, fbmbmi1)
plot.surface(out.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - black male Q1',cex.main=1.3,cex.lab=1.3)
#dev.copy2pdf(file="BMBMI_Q1.pdf",width=8,height=8)
#Black females
zyp1 <- list( x= 1:100, y=1900:2100, z=(1:1)/10)  #quintile 1 median
xg1<- make.surface.grid(zyp1)
fbfbmi1<- predict( fitbfbmi, xg1)
bmibf[,,1] <-  fbfbmi1
out.p<- as.surface( xg1, fbfbmi1)
plot.surface(out.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - black female Q1',cex.main=1.3,cex.lab=1.3)
#dev.copy2pdf(file="BFBMI_Q1.pdf",width=8,height=8)
#dev.copy2pdf(file="BMI_Q1.pdf",width=12,height=8.)
#dev.copy2pdf(file="BMI_Q1.pdf",width=8,height=10)


set.panel()   #First quintile 
dev.off()
wmout.p<- as.surface( xg1, fwmbmi1)
plot.surface(wmout.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - white male Q1',cex.main=1.3,cex.lab=1.3)

dev.copy2pdf(file="WMBMI_Q1.pdf",width=7,height=10)

dev.off()
dev.new()
set.panel(2,2)   #First quintile 
#set.panel(5,4)   #First quintile 

wmout.p<- as.surface( xg1, fwmbmi1)
plot.surface(wmout.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - white male Q1',cex.main=1.3,cex.lab=1.3)
wfout.p<- as.surface( xg1, fwfbmi1)
plot.surface(wfout.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - white female Q1',cex.main=1.3,cex.lab=1.3)
bmout.p<- as.surface( xg1, fbmbmi1)
plot.surface(bmout.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - black male Q1',cex.main=1.3,cex.lab=1.3)
bfout.p<- as.surface( xg1, fbfbmi1)
plot.surface(bfout.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - black female Q1',cex.main=1.3,cex.lab=1.3)

dev.copy2pdf(file="BMI_Q1.pdf",width=9,height=12)


set.panel(2,2)   #Second quintile 
#White males
zyp2 <- list( x= 1:100, y=1900:2100, z=(3:3)/10)  #quintile 2 median
xg2<- make.surface.grid(zyp2)
fwmbmi2<- predict( fitwmbmi, xg2)
bmiwm[,,2] <-  fwmbmi2
out.p<- as.surface( xg2, fwmbmi2)
plot.surface(out.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - white male Q2',cex.main=1.3,cex.lab=1.3)
#White females
zyp2 <- list( x= 1:100, y=1900:2100, z=(3:3)/10)  #quintile 2 median
xg2<- make.surface.grid(zyp2)
fwfbmi2<- predict( fitwfbmi, xg2)
bmiwf[,,2] <-  fwfbmi2
out.p<- as.surface( xg2, fwfbmi2)
plot.surface(out.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - white female Q2',cex.main=1.3,cex.lab=1.3)
#Blackmales
zyp2 <- list( x= 1:100, y=1900:2100, z=(3:3)/10)  #quintile 2 median
xg2<- make.surface.grid(zyp2)
fbmbmi2<- predict( fitbmbmi, xg2)
bmibm[,,2] <-  fbmbmi2
out.p<- as.surface( xg2, fbmbmi2)
plot.surface(out.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - black male Q2',cex.main=1.3,cex.lab=1.3)
#Black females
zyp2 <- list( x= 1:100, y=1900:2100, z=(3:3)/10)  #quintile 2 median
xg2<- make.surface.grid(zyp2)
fbfbmi2<- predict( fitbfbmi, xg2)
bmibf[,,2] <-  fbfbmi2
out.p<- as.surface( xg2, fbfbmi2)
plot.surface(out.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - black female Q2',cex.main=1.3,cex.lab=1.3)
#dev.copy2pdf(file="BMI_Q2.pdf",width=12,height=8.)
dev.copy2pdf(file="BMI_Q2.pdf",width=9,height=12)


set.panel(2,2)   #Third quintile 
#White males
zyp3 <- list( x= 1:100, y=1900:2100, z=(5:5)/10)  #quintile 3 median
xg3<- make.surface.grid(zyp3)
fwmbmi3<- predict( fitwmbmi, xg3)
bmiwm[,,3] <-  fwmbmi3
out.p<- as.surface( xg3, fwmbmi3)
plot.surface(out.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - white male Q3',cex.main=1.3,cex.lab=1.3)
#White females
zyp3 <- list( x= 1:100, y=1900:2100, z=(5:5)/10)  #quintile 3 median
xg3<- make.surface.grid(zyp3)
fwfbmi3<- predict( fitwfbmi, xg3)
bmiwf[,,3] <-  fwfbmi3
out.p<- as.surface( xg3, fwfbmi3)
plot.surface(out.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - white female Q3',cex.main=1.3,cex.lab=1.3)
#Black males
zyp3 <- list( x= 1:100, y=1900:2100, z=(5:5)/10)  #quintile 3 median
xg3<- make.surface.grid(zyp3)
fbmbmi3<- predict( fitbmbmi, xg3)
bmibm[,,3] <-  fbmbmi3
out.p<- as.surface( xg3, fbmbmi3)
plot.surface(out.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - black male Q3',cex.main=1.3,cex.lab=1.3)
#Black females
zyp3 <- list( x= 1:100, y=1900:2100, z=(5:5)/10)  #quintile 3 median
xg3<- make.surface.grid(zyp3)
fbfbmi3<- predict( fitbfbmi, xg3)
bmibf[,,3] <-  fbfbmi3
out.p<- as.surface( xg3, fbfbmi3)
plot.surface(out.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - black female Q3',cex.main=1.3,cex.lab=1.3)
#dev.copy2pdf(file="BMI_Q3.pdf",width=12,height=8.)
dev.copy2pdf(file="BMI_Q3.pdf",width=9,height=12)




set.panel(2,2)   #Fourth quintile 
#White males
zyp4 <- list( x= 1:100, y=1900:2100, z=(7:7)/10)  #quintile 4 median
xg4<- make.surface.grid(zyp4)
fwmbmi4<- predict( fitwmbmi, xg4)
bmiwm[,,4] <-  fwmbmi4
out.p<- as.surface( xg4, fwmbmi4)
plot.surface(out.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - white male Q4',cex.main=1.3,cex.lab=1.3)
#White females
zyp4 <- list( x= 1:100, y=1900:2100, z=(7:7)/10)  #quintile 4 median
xg4<- make.surface.grid(zyp4)
fwfbmi4<- predict( fitwfbmi, xg4)
bmiwf[,,4] <-  fwfbmi4
out.p<- as.surface( xg4, fwfbmi4)
plot.surface(out.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - white female Q4',cex.main=1.3,cex.lab=1.3)
#Black males
zyp4 <- list( x= 1:100, y=1900:2100, z=(7:7)/10)  #quintile 4 median
xg4<- make.surface.grid(zyp4)
fbmbmi4<- predict( fitbmbmi, xg4)
bmibm[,,4] <-  fbmbmi4
out.p<- as.surface( xg4, fbmbmi4)
plot.surface(out.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - black male Q4',cex.main=1.3,cex.lab=1.3)
#Black females
zyp4 <- list( x= 1:100, y=1900:2100, z=(7:7)/10)  #quintile 4 median
xg4<- make.surface.grid(zyp4)
fbfbmi4<- predict( fitbfbmi, xg4)
bmibf[,,4] <-  fbfbmi4
out.p<- as.surface( xg4, fbfbmi4)
plot.surface(out.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - black female Q4',cex.main=1.3,cex.lab=1.3)
#dev.copy2pdf(file="BMI_Q4.pdf",width=12,height=8.)
dev.copy2pdf(file="BMI_Q4.pdf",width=9,height=12)



set.panel(2,2)   #Fifth quintile 
#White males
zyp5 <- list( x= 1:100, y=1900:2100, z=(9:9)/10)  #quintile 5 median
xg5<- make.surface.grid(zyp5)
fwmbmi5<- predict( fitwmbmi, xg5)
bmiwm[,,5] <-  fwmbmi5
out.p<- as.surface( xg5, fwmbmi5)
plot.surface(out.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - white male Q5',cex.main=1.3,cex.lab=1.3)
#White females
zyp5 <- list( x= 1:100, y=1900:2100, z=(9:9)/10)  #quintile 5 median
xg5<- make.surface.grid(zyp5)
fwfbmi5<- predict( fitwfbmi, xg5)
bmiwf[,,5] <-  fwfbmi5
out.p<- as.surface( xg5, fwfbmi5)
plot.surface(out.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - white female Q5',cex.main=1.3,cex.lab=1.3)
#Black males
zyp5 <- list( x= 1:100, y=1900:2100, z=(9:9)/10)  #quintile 5 median
xg5<- make.surface.grid(zyp5)
fbmbmi5<- predict( fitbmbmi, xg5)
bmibm[,,5] <-  fbmbmi5
out.p<- as.surface( xg5, fbmbmi5)
plot.surface(out.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - black male Q5',cex.main=1.3,cex.lab=1.3)
#Black females
zyp5 <- list( x= 1:100, y=1900:2100, z=(9:9)/10)  #quintile 5 median
xg5<- make.surface.grid(zyp5)
fbfbmi5<- predict( fitbfbmi, xg5)
bmibf[,,5] <-  fbfbmi5
out.p<- as.surface( xg5, fbfbmi5)
plot.surface(out.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - black female Q5',cex.main=1.3,cex.lab=1.3)
#dev.copy2pdf(file="BMI_Q5.pdf",width=12,height=8.)
dev.copy2pdf(file="BMI_Q5.pdf",width=9,height=12)

save(bmiwm,file = "bmiwm.RData")
save(bmiwf,file = "bmiwf.RData")
save(bmibm,file = "bmibm.RData")
save(bmibf,file = "bmibf.RData")

save(fwmbmi1,file = "fwmbmi1.RData")
save(fwmbmi2,file = "fwmbmi2.RData")
save(fwmbmi3,file = "fwmbmi3.RData")
save(fwmbmi4,file = "fwmbmi4.RData")
save(fwmbmi5,file = "fwmbmi5.RData")

save(fwfbmi1,file = "fwfbmi1.RData")
save(fwfbmi2,file = "fwfbmi2.RData")
save(fwfbmi3,file = "fwfbmi3.RData")
save(fwfbmi4,file = "fwfbmi4.RData")
save(fwfbmi5,file = "fwfbmi5.RData")

save(fbmbmi1,file = "fbmbmi1.RData")
save(fbmbmi2,file = "fbmbmi2.RData")
save(fbmbmi3,file = "fbmbmi3.RData")
save(fbmbmi4,file = "fbmbmi4.RData")
save(fbmbmi5,file = "fbmbmi5.RData")

save(fbfbmi1,file = "fbfbmi1.RData")
save(fbfbmi2,file = "fbfbmi2.RData")
save(fbfbmi3,file = "fbfbmi3.RData")
save(fbfbmi4,file = "fbfbmi4.RData")
save(fbfbmi5,file = "fbfbmi5.RData")

####################################################################################33


