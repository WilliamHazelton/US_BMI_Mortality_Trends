#NHANES_Cont data:
dmqa <- read.delim(file = '../NHANES_Cont/DMQ_A_1999-00.csv',sep=",",header = TRUE)
bmxa <- read.delim(file = '../NHANES_Cont/BMX_A_1999-00.csv',sep=",",header = TRUE)

dmqb <- read.delim(file = '../NHANES_Cont/DMQ_B_2001-02.csv',sep=",",header = TRUE)
bmxb <- read.delim(file = '../NHANES_Cont/BMX_B_2001-02.csv',sep=",",header = TRUE)

dmqc <- read.delim(file = '../NHANES_Cont/DMQ_C_2003-04.csv',sep=",",header = TRUE)
bmxc <- read.delim(file = '../NHANES_Cont/BMX_C_2003-04.csv',sep=",",header = TRUE)

dmqd <- read.delim(file = '../NHANES_Cont/DMQ_D_2005-06.csv',sep=",",header = TRUE)
bmxd <- read.delim(file = '../NHANES_Cont/BMX_D_2005-06.csv',sep=",",header = TRUE)

dmqe <- read.delim(file = '../NHANES_Cont/DMQ_E_2007-08.csv',sep=",",header = TRUE)
bmxe <- read.delim(file = '../NHANES_Cont/BMX_E_2007-08.csv',sep=",",header = TRUE)

dmqf <- read.delim(file = '../NHANES_Cont/DMQ_F_2009-10.csv',sep=",",header = TRUE)
bmxf <- read.delim(file = '../NHANES_Cont/BMX_F_2009-10.csv',sep=",",header = TRUE)

dmqg <- read.delim(file = '../NHANES_Cont/DMQ_G_2011-12.csv',sep=",",header = TRUE)
bmxg <- read.delim(file = '../NHANES_Cont/BMX_G_2011-12.csv',sep=",",header = TRUE)

dmqh <- read.delim(file = '../NHANES_Cont/DMQ_H_2013-14.csv',sep=",",header = TRUE)
bmxh <- read.delim(file = '../NHANES_Cont/BMX_H_2013-14.csv',sep=",",header = TRUE)

dmqi <- read.delim(file = '../NHANES_Cont/DMQ_I_2015-16.csv',sep=",",header = TRUE)
bmxi <- read.delim(file = '../NHANES_Cont/BMX_I_2015-16.csv',sep=",",header = TRUE)


keepbmcol <- c("SEQN","BMXWT","BMXHT","BMXBMI","BMXWAIST")  
keepbmcolth <- c("SEQN","BMXWT","BMXHT","BMXBMI","BMXWAIST","BMXTHICR")  

keepdmcol <- c("SEQN","SDDSRVYR","RIAGENDR","RIDAGEYR",
"RIDRETH1","DMDEDUC2","INDFMPIR","WTMEC2YR")
                         #Sample population weights are incorporated by replicating individuals
poprep = 100             #mean number of replicates per person, adjusted by pop sample weights
                         #Identical reps reduce the std dev., may adjust for this by adding normal
                         #tested to achieve approx same sd for 100 replicate BMI samples 
                         #in each quintile as sd for corresponding sample BMI quintile
wttr = 5                 #Truncate pop weights if greater than (wttr=3) times average pop weight
#Continuous NHANES A#################################################################
matcha=dmqa$SEQN %in% bmxa$SEQN
mdmqa <- dmqa[matcha,]
matchma=match(mdmqa$SEQN,bmxa$SEQN)
dmqseqa <- mdmqa[matchma,]
bmka=bmxa[,keepbmcolth]
dmka=dmqseqa[,keepdmcol]
dmbma <- merge(dmka,bmka,all='TRUE')
dmbma$SDDSRVYR=1999

ldmbma=(!is.na(dmbma$BMXBMI) & dmbma$RIDAGEYR>11 & dmbma$BMXBMI < 60)
dmbma1=dmbma[ldmbma,]

#White males  continuous NHANES 'a' (1999-2000) (all whites inc. Mexican American, Other Hispanic
dmiwma <- dmbma1[dmbma1$RIAGENDR==1 & dmbma1$RIDRETH1>=1 & dmbma1$RIDRETH1<=3,]
lwma <- dim(dmiwma)[1]
wmbmispa = matrix(NA,lwma,100)
wmagea1 = dmiwma$RIDAGEYR
wmbmia1 = dmiwma$BMXBMI
wmretha1 = dmiwma$RIDRETH1
wmpopwta1 = dmiwma$WTMEC2YR
wmoa <-order(wmagea1, na.last=TRUE)
wmagea <- wmagea1[wmoa]
wmbmia <- wmbmia1[wmoa]
wmretha = wmretha1[wmoa]
wmpopwta2 = wmpopwta1[wmoa]
wmpopwta =  round(poprep*wmpopwta2/(sum(wmpopwta2)/lwma))
wmpopwta[wmpopwta > poprep*wttr]= poprep*wttr
wmnsample = sum(wmpopwta)
tmpa <- wmagea[wmagea>40] 
tmpb <- wmbmia[wmagea>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wmbmias <- rep(wmbmia,wmpopwta) + rnorm(wmnsample,0,bmisd)  #replicates reflect population weights
wmageas <- rep(wmagea,wmpopwta) 

wmagemaxa <- max(wmageas)
wmquina = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:wmagemaxa) {
        lagei = wmageas>=i-4 & wmageas <= i+4        #smooth over 9 year window
        wmagetemp = wmageas[lagei]
        wmbmitemp = wmbmias[lagei]
        if(length(wmagetemp) > 3) { 
	id=id+1
	wmquina[id,1]<- i
	wmquina[id,2:12] <- as.vector(quantile(wmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        maxbmiq5=max(maxbmiq5,wmquina[id,12]-wmquina[id,11])
        }
}
wmquina[,12]<-wmquina[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wmqa = wmquina[1:id,]
print(wmqa)
agemina=min(wmqa[,1])
agemaxa=max(wmqa[,1])
wmqpa = matrix(NA,agemaxa-agemina+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wmqa[,1],y=wmqa[,i],df=4),agemina:agemaxa)
wmqpa[,1] <- temp$x  #ages
wmqpa[,i] <- temp$y  #deciles                 
}   #Note: wmqpa is smoothed white male decile predictor - quintile medians and ranges for 'a' data
wmqpa[,13] <- 2000  #period
wmqpa[,14] <- wmqpa[,13] - wmqpa[,1]  #cohort
dev.off()
plot.new()
plot(wmqa[,1],wmqa[,2],xlim=c(0,80),ylim=c(10,100),
main="White male BMI quintile medians and ranges from cont NHANES A (1999-2000)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wmqpa[,1],wmqpa[,i],lty=ltyi[i])
points(wmqa[,1],wmqa[,i])
}                       


#White females  continuous NHANES 'a' (1999-2000)
dmiwfa <- dmbma1[dmbma1$RIAGENDR==2 & dmbma1$RIDRETH1>=1 & dmbma1$RIDRETH1<=3,]
lwfa <- dim(dmiwfa)[1]
wfbmispa = matrix(NA,lwfa,100)
wfagea1 = dmiwfa$RIDAGEYR
wfbmia1 = dmiwfa$BMXBMI
wfretha1 = dmiwfa$RIDRETH1
wfpopwta1 = dmiwfa$WTMEC2YR
wfoa <-order(wfagea1, na.last=TRUE)
wfagea <- wfagea1[wfoa]
wfbmia <- wfbmia1[wfoa]
wfretha = wfretha1[wfoa]
wfpopwta2 = wfpopwta1[wfoa]
wfpopwta =  round(poprep*wfpopwta2/(sum(wfpopwta2)/lwfa))
wfpopwta[wfpopwta > poprep*wttr]= poprep*wttr
wfnsample = sum(wfpopwta)
tmpa <- wfagea[wfagea>40] 
tmpb <- wfbmia[wfagea>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wfbmias <- rep(wfbmia,wfpopwta) + rnorm(wfnsample,0,bmisd)
wfageas <- rep(wfagea,wfpopwta) 
wfagemaxa <- max(wfageas)
wfquina = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:wfagemaxa) {
        lagei = wfageas>=i-4 & wfageas <= i+4        #smooth over 9 year window
        wfagetemp = wfageas[lagei]
        wfbmitemp = wfbmias[lagei]
        if(length(wfagetemp) > 3) { 
	id=id+1
	wfquina[id,1]<- i
	wfquina[id,2:12] <- as.vector(quantile(wfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        maxbmiq5=max(maxbmiq5,wfquina[id,12]-wfquina[id,11])
        print(c(i,id,mean(wfagetemp),mean(wfbmitemp)))
        }
}
wfquina[,12]<-wfquina[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified
wfqa = wfquina[1:id,]
agemina=min(wfqa[,1])
agemaxa=max(wfqa[,1])
wfqpa = matrix(NA,agemaxa-agemina+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wfqa[,1],y=wfqa[,i],df=4),agemina:agemaxa)
wfqpa[,1] <- temp$x  #ages
wfqpa[,i] <- temp$y  #deciles                 
}  #Note: wfqpa is smoothed white female decile predictor - quintile medians and ranges for 'a' data
wfqpa[,13] <- 2000  #period
wfqpa[,14] <- wfqpa[,13] - wfqpa[,1]  #cohort
dev.off()
plot(wfqa[,1],wfqa[,2],xlim=c(0,100),ylim=c(10,80),
main="White female BMI quintile medians and ranges from cont NHANES A (1999-2000)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wfqpa[,1],wfqpa[,i],lty=ltyi[i])
points(wfqa[,1],wfqa[,i])
}                       


######################3



#Black males  continuous NHANES 'a' (1999-2000)
dmibma <- dmbma[dmbma$RIDRETH1==4 & dmbma$RIAGENDR==1,]
lbma <- dim(dmibma)[1]
bmbmispa = matrix(NA,lbma,100)
bmagea1 = dmibma$RIDAGEYR
bmbmia1 = dmibma$BMXBMI
bmretha1 = dmibma$RIDRETH1
bmpopwta1 = dmibma$WTMEC2YR
bmoa <-order(bmagea1, na.last=TRUE)
bmagea <- bmagea1[bmoa]
bmbmia <- bmbmia1[bmoa]
bmretha = bmretha1[bmoa]
bmpopwta2 = bmpopwta1[bmoa]
bmpopwta =  round(poprep*bmpopwta2/(sum(bmpopwta2)/lbma))
bmpopwta[bmpopwta > poprep*wttr]= poprep*wttr
bmnsample = sum(bmpopwta)
tmpa <- bmagea[bmagea>40] 
tmpb <- bmbmia[bmagea>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bmbmias <- rep(bmbmia,bmpopwta) + rnorm(bmnsample,0,bmisd)
bmageas <- rep(bmagea,bmpopwta) 

bmagemaxa <- max(bmageas)
bmquina = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:bmagemaxa) {
        lagei = bmageas>=i-4 & bmageas <= i+4        #smooth over 9 year window
        bmagetemp = bmageas[lagei]
        bmbmitemp = bmbmias[lagei]
        if(length(bmagetemp) > 2) { 
	id=id+1
	bmquina[id,1]<- i
	bmquina[id,2:12] <- as.vector(quantile(bmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        maxbmiq5=max(maxbmiq5,bmquina[id,12]-bmquina[id,11])
        }
}
bmquina[,12]<-bmquina[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bmqa = bmquina[1:id,]
agemina=min(bmqa[,1])
agemaxa=max(bmqa[,1])
bmqpa = matrix(NA,agemaxa-agemina+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bmqa[,1],y=bmqa[,i],df=4),agemina:agemaxa)
bmqpa[,1] <- temp$x  #ages
bmqpa[,i] <- temp$y  #deciles                 
}   #Note: bmqpa is smoothed black male decile predictor - quintile medians and ranges for 'a' data
bmqpa[,13] <- 2000  #period
bmqpa[,14] <- bmqpa[,13] - bmqpa[,1]  #cohort
dev.off()
plot(bmqa[,1],bmqa[,2],xlim=c(0,100),ylim=c(13,80),
main="Black male BMI quintile medians and ranges from cont NHANES A (1999-2000)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bmqpa[,1],bmqpa[,i],lty=ltyi[i])
points(bmqa[,1],bmqa[,i])
}                       


#Black females  continuous NHANES 'a' (1999-2000)
dmibfa <- dmbma[dmbma$RIDRETH1==4 & dmbma$RIAGENDR==2,]
lbfa <- dim(dmibfa)[1]
bfbmispa = matrix(NA,lbfa,100)
bfagea1 = dmibfa$RIDAGEYR
bfbmia1 = dmibfa$BMXBMI
bfretha1 = dmibfa$RIDRETH1
bfpopwta1 = dmibfa$WTMEC2YR
bfoa <-order(bfagea1, na.last=TRUE)
bfagea <- bfagea1[bfoa]
bfbmia <- bfbmia1[bfoa]

bfpopwta =  round(poprep*bfpopwta2/(sum(bfpopwta2)/lbfa))
bfpopwta[bfpopwta > poprep*wttr]= poprep*wttr
bfnsample = sum(bfpopwta)
tmpa <- bfagea[bfagea>40]
tmpb <- bfbmia[bfagea>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bfbmias <- rep(bfbmia,bfpopwta) + rnorm(bfnsample,0,bmisd)
bfageas <- rep(bfagea,bfpopwta) 

bfagemaxa <- max(bfageas)
bfquina = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:bfagemaxa) {
        lagei = bfageas>=i-4 & bfageas <= i+4        #smooth over 9 year window
        bfagetemp = bfageas[lagei]
        bfbmitemp = bfbmias[lagei]
        if(length(bfagetemp) > 2) { 
	id=id+1
	bfquina[id,1]<- i
	bfquina[id,2:12] <- as.vector(quantile(bfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        maxbmiq5=max(maxbmiq5,bfquina[id,12]-bfquina[id,11])
        }
}
bfquina[,12]<-bfquina[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bfqa = bfquina[1:id,]
agemina=min(bfqa[,1])
agemaxa=max(bfqa[,1])
bfqpa = matrix(NA,agemaxa-agemina+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bfqa[,1],y=bfqa[,i],df=4),agemina:agemaxa)
bfqpa[,1] <- temp$x  #ages
bfqpa[,i] <- temp$y  #deciles                 
}  #Note: bfqpa is smoothed black female decile predictor - quintile medians and ranges for 'a' data
bfqpa[,13] <- 2000  #period
bfqpa[,14] <- bfqpa[,13] - bfqpa[,1]  #cohort
dev.off()
plot(bfqa[,1],bfqa[,2],xlim=c(0,100),ylim=c(13,80),
main="Black female BMI quintile medians and ranges from cont NHANES A (1999-2000)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bfqpa[,1],bfqpa[,i],lty=ltyi[i])
points(bfqa[,1],bfqa[,i])
}                       

save(wmqpa,file = "wmqpa.RData")
save(wfqpa,file = "wfqpa.RData")
save(bmqpa,file = "bmqpa.RData")
save(bfqpa,file = "bfqpa.RData")

#Continuous NHANES B#################################################################
matchb=dmqb$SEQN %in% bmxb$SEQN
mdmqb <- dmqb[matchb,]
matchmb=match(mdmqb$SEQN,bmxb$SEQN)
dmqseqb <- mdmqb[matchmb,]
bmkb=bmxb[,keepbmcolth]
dmkb=dmqseqb[,keepdmcol]
dmbmb <- merge(dmkb,bmkb,all='TRUE')
dmbmb$SDDSRVYR=2001
ldmbmb=(!is.na(dmbmb$BMXBMI) & dmbmb$RIDAGEYR>11 & dmbmb$BMXBMI < 60)
dmbmb1=dmbmb[ldmbmb,]

#White males  continuous NHANES 'b' (2001) (all whites inc. Mexican American, Other Hispanic
dmiwmb <- dmbmb1[dmbmb1$RIAGENDR==1 & dmbmb1$RIDRETH1>=1 & dmbmb1$RIDRETH1<=3,]
lwmb <- dim(dmiwmb)[1]
wmbmispb = matrix(NA,lwmb,100)
wmageb1 = dmiwmb$RIDAGEYR
wmbmib1 = dmiwmb$BMXBMI
wmrethb1 = dmiwmb$RIDRETH1
wmpopwtb1 = dmiwmb$WTMEC2YR
wmob <-order(wmageb1, na.last=TRUE)
wmageb <- wmageb1[wmob]
wmbmib <- wmbmib1[wmob]
wmrethb = wmrethb1[wmob]
wmpopwtb2 = wmpopwtb1[wmob]
wmpopwtb =  round(poprep*wmpopwtb2/(sum(wmpopwtb2)/lwmb))
wmpopwtb[wmpopwtb > poprep*wttr]= poprep*wttr
wmnsample = sum(wmpopwtb)
tmpa <- wmageb[wmageb>40]
tmpb <- wmbmib[wmageb>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wmbmibs <- rep(wmbmib,wmpopwtb) + rnorm(wmnsample,0,bmisd)
wmagebs <- rep(wmageb,wmpopwtb) 

wmagemaxb <- max(wmagebs)
wmquinb = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:wmagemaxb) {
        lagei = wmagebs>=i-4 & wmagebs <= i+4        #smooth over 9 year window
        wmagetemp = wmagebs[lagei]
        wmbmitemp = wmbmibs[lagei]
        if(length(wmagetemp) > 3) { 
	id=id+1
	wmquinb[id,1]<- i
	wmquinb[id,2:12] <- as.vector(quantile(wmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        maxbmiq5=max(maxbmiq5,wmquinb[id,12]-wmquinb[id,11])
        }
}
wmquinb[,12]<-wmquinb[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wmqb = wmquinb[1:id,]
ageminb=min(wmqb[,1])
agemaxb=max(wmqb[,1])
wmqpb = matrix(NA,agemaxb-ageminb+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wmqb[,1],y=wmqb[,i],df=4),ageminb:agemaxb)
wmqpb[,1] <- temp$x  #ages
wmqpb[,i] <- temp$y  #deciles                 
}   #Note: wmqpb is smoothed white male decile predictor - quintile medians and ranges for 'b' data
wmqpb[,13] <- 2001  #period
wmqpb[,14] <- wmqpb[,13] - wmqpb[,1]  #cohort
dev.off()
plot(wmqb[,1],wmqb[,2],xlim=c(0,100),ylim=c(10,80),
main="White male BMI quintile medians and ranges from cont NHANES B (2001)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wmqpb[,1],wmqpb[,i],lty=ltyi[i])
points(wmqb[,1],wmqb[,i])
}                       


#White females  continuous NHANES 'b' (2001)
dmiwfb <- dmbmb1[dmbmb1$RIAGENDR==2 & dmbmb1$RIDRETH1>=1 & dmbmb1$RIDRETH1<=3,]
lwfb <- dim(dmiwfb)[1]
wfbmispb = matrix(NA,lwfb,100)
wfageb1 = dmiwfb$RIDAGEYR
wfbmib1 = dmiwfb$BMXBMI
wfrethb1 = dmiwfb$RIDRETH1
wfpopwtb1 = dmiwfb$WTMEC2YR
wfob <-order(wfageb1, na.last=TRUE)
wfageb <- wfageb1[wfob]
wfbmib <- wfbmib1[wfob]
wfrethb = wfrethb1[wfob]
wfpopwtb2 = wfpopwtb1[wfob]
wfpopwtb =  round(poprep*wfpopwtb2/(sum(wfpopwtb2)/lwfb))
wfpopwtb[wfpopwtb > poprep*wttr]= poprep*wttr
wfnsample = sum(wfpopwtb)
tmpa <- wfageb[wfageb>40]
tmpb <- wfbmib[wfageb>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wfbmibs <- rep(wfbmib,wfpopwtb) + rnorm(wfnsample,0,bmisd)
wfagebs <- rep(wfageb,wfpopwtb) 

wfagemaxb <- max(wfagebs)
wfquinb = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:wfagemaxb) {
        lagei = wfagebs>=i-4 & wfagebs <= i+4        #smooth over 9 year window
        wfagetemp = wfagebs[lagei]
        wfbmitemp = wfbmibs[lagei]
        if(length(wfagetemp) > 3) { 
	id=id+1
	wfquinb[id,1]<- i
	wfquinb[id,2:12] <- as.vector(quantile(wfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wfagetemp),mean(wfbmitemp)))
        maxbmiq5=max(maxbmiq5,wfquinb[id,12]-wfquinb[id,11])
        }
}
wfquinb[,12]<-wfquinb[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wfqb = wfquinb[1:id,]
ageminb=min(wfqb[,1])
agemaxb=max(wfqb[,1])
wfqpb = matrix(NA,agemaxb-ageminb+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wfqb[,1],y=wfqb[,i],df=4),ageminb:agemaxb)
wfqpb[,1] <- temp$x  #ages
wfqpb[,i] <- temp$y  #deciles                 
} #Note: wfqpb is smoothed white female decile predictor - quintile medians and ranges for 'b' data
wfqpb[,13] <- 2001  #period
wfqpb[,14] <- wfqpb[,13] - wfqpb[,1]  #cohort
dev.off()
plot(wfqb[,1],wfqb[,2],xlim=c(0,100),ylim=c(13,80),
main="White female BMI quintile medians and ranges from cont NHANES B (2001)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wfqpb[,1],wfqpb[,i],lty=ltyi[i])
points(wfqb[,1],wfqb[,i])
}                       


#Black males  continuous NHANES 'b' (2001)
dmibmb <- dmbmb1[dmbmb1$RIAGENDR==1 & dmbmb1$RIDRETH1==4,]
lbmb <- dim(dmibmb)[1]
bmbmispb = matrix(NA,lbmb,100)
bmageb1 = dmibmb$RIDAGEYR
bmbmib1 = dmibmb$BMXBMI
bmrethb1 = dmibmb$RIDRETH1
bmpopwtb1 = dmibmb$WTMEC2YR
bmob <-order(bmageb1, na.last=TRUE)
bmageb <- bmageb1[bmob]
bmbmib <- bmbmib1[bmob]
bmrethb = bmrethb1[bmob]
bmpopwtb2 = bmpopwtb1[bmob]
bmpopwtb =  round(poprep*bmpopwtb2/(sum(bmpopwtb2)/lbmb))
bmpopwtb[bmpopwtb > poprep*wttr]= poprep*wttr
bmnsample = sum(bmpopwtb)
tmpa <- bmageb[bmageb>40]
tmpb <- bmbmib[bmageb>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bmbmibs <- rep(bmbmib,bmpopwtb) + rnorm(bmnsample,0,bmisd)
bmagebs <- rep(bmageb,bmpopwtb) 


bmagemaxb <- max(bmagebs)
bmquinb = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:bmagemaxb) {
        lagei = bmagebs>=i-4 & bmagebs <= i+4        #smooth over 9 year window
        bmagetemp = bmagebs[lagei]
        bmbmitemp = bmbmibs[lagei]
        if(length(bmagetemp) > 2) { 
	id=id+1
	bmquinb[id,1]<- i
	bmquinb[id,2:12] <- as.vector(quantile(bmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bmagetemp),mean(bmbmitemp)))
        maxbmiq5=max(maxbmiq5,bmquinb[id,12]-bmquinb[id,11])
        }
}
bmquinb[,12]<-bmquinb[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bmqb = bmquinb[1:id,]
ageminb=min(bmqb[,1])
agemaxb=max(bmqb[,1])
bmqpb = matrix(NA,agemaxb-ageminb+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bmqb[,1],y=bmqb[,i],df=4),ageminb:agemaxb)
bmqpb[,1] <- temp$x  #ages
bmqpb[,i] <- temp$y  #deciles                 
}   #Note: bmqpb is smoothed black male decile predictor - quintile medians and ranges for 'b' data
bmqpb[,13] <- 2001  #period
bmqpb[,14] <- bmqpb[,13] - bmqpb[,1]  #cohort
dev.off()
plot(bmqb[,1],bmqb[,2],xlim=c(0,100),ylim=c(13,80),
main="Black male BMI quintile medians and ranges from cont NHANES B (2001)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bmqpb[,1],bmqpb[,i],lty=ltyi[i])
points(bmqb[,1],bmqb[,i])
}                       


#Black females  continuous NHANES 'b' (2001)
dmibfb <- dmbmb1[dmbmb1$RIAGENDR==2 & dmbmb1$RIDRETH1==4,]
lbfb <- dim(dmibfb)[1]
bfbmispb = matrix(NA,lbfb,100)
bfageb1 = dmibfb$RIDAGEYR
bfbmib1 = dmibfb$BMXBMI
bfrethb1 = dmibfb$RIDRETH1
bfpopwtb1 = dmibfb$WTMEC2YR
bfob <-order(bfageb1, na.last=TRUE)
bfageb <- bfageb1[bfob]
bfbmib <- bfbmib1[bfob]
bfrethb = bfrethb1[bfob]
bfpopwtb2 = bfpopwtb1[bfob]
bfpopwtb =  round(poprep*bfpopwtb2/(sum(bfpopwtb2)/lbfb))
bfpopwtb[bfpopwtb > poprep*wttr]= poprep*wttr
bfnsample = sum(bfpopwtb)
tmpa <- bfageb[bfageb>40]
tmpb <- bfbmib[bfageb>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bfbmibs <- rep(bfbmib,bfpopwtb) + rnorm(bfnsample,0,bmisd)
bfagebs <- rep(bfageb,bfpopwtb) 

bfagemaxb <- max(bfagebs)
bfquinb = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:bfagemaxb) {
        lagei = bfagebs>=i-4 & bfagebs <= i+4        #smooth over 9 year window
        bfagetemp = bfagebs[lagei]
        bfbmitemp = bfbmibs[lagei]
        if(length(bfagetemp) > 2) { 
	id=id+1
	bfquinb[id,1]<- i
	bfquinb[id,2:12] <- as.vector(quantile(bfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bfagetemp),mean(bfbmitemp)))
        maxbmiq5=max(maxbmiq5,bfquinb[id,12]-bfquinb[id,11])
        }
}
bfquinb[,12]<-bfquinb[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bfqb = bfquinb[1:id,]
ageminb=min(bfqb[,1])
agemaxb=max(bfqb[,1])
bfqpb = matrix(NA,agemaxb-ageminb+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bfqb[,1],y=bfqb[,i],df=4),ageminb:agemaxb)
bfqpb[,1] <- temp$x  #ages
bfqpb[,i] <- temp$y  #deciles                 
} #Note: bfqpb is smoothed black female decile predictor - quintile medians and ranges for 'b' data
bfqpb[,13] <- 2001  #period
bfqpb[,14] <- bfqpb[,13] - bfqpb[,1]  #cohort
dev.off()
plot(bfqb[,1],bfqb[,2],xlim=c(0,100),ylim=c(13,80),
main="Black female BMI quintile medians and ranges from cont NHANES B (2001)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bfqpb[,1],bfqpb[,i],lty=ltyi[i])
points(bfqb[,1],bfqb[,i])
}                       

save(wmqpb,file = "wmqpb.RData")
save(wfqpb,file = "wfqpb.RData")
save(bmqpb,file = "bmqpb.RData")
save(bfqpb,file = "bfqpb.RData")





#Continuous NHANES C#################################################################
matchc=dmqc$SEQN %in% bmxc$SEQN
mdmqc <- dmqc[matchc,]
matchmc=match(mdmqc$SEQN,bmxc$SEQN)
dmqseqc <- mdmqc[matchmc,]
bmkc=bmxc[,keepbmcolth]
dmkc=dmqseqc[,keepdmcol]
dmbmc <- merge(dmkc,bmkc,all='TRUE')
dmbmc$SDDSRVYR=2003

ldmbmc=(!is.na(dmbmc$BMXBMI) & dmbmc$RIDAGEYR>11 & dmbmc$BMXBMI < 60)
dmbmc1=dmbmc[ldmbmc,]

#White males  continuous NHANES 'c' (2003) (all whites inc. Mexican American, Other Hispanic
dmiwmc <- dmbmc1[dmbmc1$RIAGENDR==1 & dmbmc1$RIDRETH1>=1 & dmbmc1$RIDRETH1<=3,]
lwmc <- dim(dmiwmc)[1]
wmbmispc = matrix(NA,lwmc,100)
wmagec1 = dmiwmc$RIDAGEYR
wmbmic1 = dmiwmc$BMXBMI
wmrethc1 = dmiwmc$RIDRETH1
wmpopwtc1 = dmiwmc$WTMEC2YR
wmoc <-order(wmagec1, na.last=TRUE)
wmagec <- wmagec1[wmoc]
wmbmic <- wmbmic1[wmoc]
wmrethc = wmrethc1[wmoc]
wmpopwtc2 = wmpopwtc1[wmoc]
wmpopwtc =  round(poprep*wmpopwtc2/(sum(wmpopwtc2)/lwmc))
wmpopwtc[wmpopwtc > poprep*wttr]= poprep*wttr
wmnsample = sum(wmpopwtc)
tmpa <- wmagec[wmagec>40]
tmpb <- wmbmic[wmagec>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wmbmics <- rep(wmbmic,wmpopwtc) + rnorm(wmnsample,0,bmisd)
wmagecs <- rep(wmagec,wmpopwtc) 

wmagemaxc <- max(wmagecs)
wmquinc = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:wmagemaxc) {
        lagei = wmagecs>=i-4 & wmagecs <= i+4        #smooth over 9 year window
        wmagetemp = wmagecs[lagei]
        wmbmitemp = wmbmics[lagei]
        if(length(wmagetemp) > 3) { 
	id=id+1
	wmquinc[id,1]<- i
	wmquinc[id,2:12] <- as.vector(quantile(wmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wmagetemp),mean(wmbmitemp)))
        maxbmiq5=max(maxbmiq5,wmquinc[id,12]-wmquinc[id,11])
        }
}
wmquinc[,12]<-wmquinc[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wmqc = wmquinc[1:id,]
ageminc=min(wmqc[,1])
agemaxc=max(wmqc[,1])
wmqpc = matrix(NA,agemaxc-ageminc+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wmqc[,1],y=wmqc[,i],df=4),ageminc:agemaxc)
wmqpc[,1] <- temp$x  #ages
wmqpc[,i] <- temp$y  #deciles                 
}   #Note: wmqpc is smoothed white male decile predictor - quintile medians and ranges for 'c' data
wmqpc[,13] <- 2003  #period
wmqpc[,14] <- wmqpc[,13] - wmqpc[,1]  #cohort
dev.off()
plot(wmqc[,1],wmqc[,2],xlim=c(0,100),ylim=c(13,80),
main="White male BMI quintile medians and ranges from cont NHANES C (2003)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wmqpc[,1],wmqpc[,i],lty=ltyi[i])
points(wmqc[,1],wmqc[,i])
}                       


#White females  continuous NHANES 'c' (2003)
dmiwfc <- dmbmc1[dmbmc1$RIAGENDR==2 & dmbmc1$RIDRETH1>=1 & dmbmc1$RIDRETH1<=3,]
lwfc <- dim(dmiwfc)[1]
wfbmispc = matrix(NA,lwfc,100)
wfagec1 = dmiwfc$RIDAGEYR
wfbmic1 = dmiwfc$BMXBMI
wfrethc1 = dmiwfc$RIDRETH1
wfpopwtc1 = dmiwfc$WTMEC2YR
wfoc <-order(wfagec1, na.last=TRUE)
wfagec <- wfagec1[wfoc]
wfbmic <- wfbmic1[wfoc]
wfrethc = wfrethc1[wfoc]
wfpopwtc2 = wfpopwtc1[wfoc]
wfpopwtc =  round(poprep*wfpopwtc2/(sum(wfpopwtc2)/lwfc))
wfpopwtc[wfpopwtc > poprep*wttr]= poprep*wttr
wfnsample = sum(wfpopwtc)
tmpa <- wfagec[wfagec>40]
tmpb <- wfbmic[wfagec>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wfbmics <- rep(wfbmic,wfpopwtc) + rnorm(wfnsample,0,bmisd)
wfagecs <- rep(wfagec,wfpopwtc) 

wfagemaxc <- max(wfagecs)
wfquinc = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:wfagemaxc) {
        lagei = wfagecs>=i-4 & wfagecs <= i+4        #smooth over 9 year window
        wfagetemp = wfagecs[lagei]
        wfbmitemp = wfbmics[lagei]
        if(length(wfagetemp) > 3) { 
	id=id+1
	wfquinc[id,1]<- i
	wfquinc[id,2:12] <- as.vector(quantile(wfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wfagetemp),mean(wfbmitemp)))
        maxbmiq5=max(maxbmiq5,wfquinc[id,12]-wfquinc[id,11])
        }
}
wfquinc[,12]<-wfquinc[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wfqc = wfquinc[1:id,]
ageminc=min(wfqc[,1])
agemaxc=max(wfqc[,1])
wfqpc = matrix(NA,agemaxc-ageminc+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wfqc[,1],y=wfqc[,i],df=4),ageminc:agemaxc)
wfqpc[,1] <- temp$x  #ages
wfqpc[,i] <- temp$y  #deciles                 
} #Note: wfqpc is smoothed white female decile predictor - quintile medians and ranges for 'c' data
wfqpc[,13] <- 2003  #period
wfqpc[,14] <- wfqpc[,13] - wfqpc[,1]  #cohort
dev.off()
plot(wfqc[,1],wfqc[,2],xlim=c(0,100),ylim=c(10,80),
main="White female BMI quintile medians and ranges from cont NHANES C (2003)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wfqpc[,1],wfqpc[,i],lty=ltyi[i])
points(wfqc[,1],wfqc[,i])
}                       


#Black males  continuous NHANES 'c' (2003)
dmibmc <- dmbmc1[dmbmc1$RIAGENDR==1 & dmbmc1$RIDRETH1==4,]
lbmc <- dim(dmibmc)[1]
bmbmispc = matrix(NA,lbmc,100)
bmagec1 = dmibmc$RIDAGEYR
bmbmic1 = dmibmc$BMXBMI
bmrethc1 = dmibmc$RIDRETH1
bmpopwtc1 = dmibmc$WTMEC2YR
bmoc <-order(bmagec1, na.last=TRUE)
bmagec <- bmagec1[bmoc]
bmbmic <- bmbmic1[bmoc]
bmrethc = bmrethc1[bmoc]
bmpopwtc2 = bmpopwtc1[bmoc]
bmpopwtc =  round(poprep*bmpopwtc2/(sum(bmpopwtc2)/lbmc))
bmpopwtc[bmpopwtc > poprep*wttr]= poprep*wttr
bmnsample = sum(bmpopwtc)
tmpa <- bmagec[bmagec>40]
tmpb <- bmbmic[bmagec>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bmbmics <- rep(bmbmic,bmpopwtc) + rnorm(bmnsample,0,bmisd)
bmagecs <- rep(bmagec,bmpopwtc) 

bmagemaxc <- max(bmagecs)
bmquinc = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:bmagemaxc) {
        lagei = bmagecs>=i-4 & bmagecs <= i+4        #smooth over 9 year window
        bmagetemp = bmagecs[lagei]
        bmbmitemp = bmbmics[lagei]
        if(length(bmagetemp) > 3) { 
	id=id+1
	bmquinc[id,1]<- i
	bmquinc[id,2:12] <- as.vector(quantile(bmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bmagetemp),mean(bmbmitemp)))
        maxbmiq5=max(maxbmiq5,bmquinc[id,12]-bmquinc[id,11])
        }
}
bmquinc[,12]<-bmquinc[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bmqc = bmquinc[1:id,]
ageminc=min(bmqc[,1])
agemaxc=max(bmqc[,1])
bmqpc = matrix(NA,agemaxc-ageminc+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bmqc[,1],y=bmqc[,i],df=4),ageminc:agemaxc)
bmqpc[,1] <- temp$x  #ages
bmqpc[,i] <- temp$y  #deciles                 
}   #Note: bmqpc is smoothed black male decile predictor - quintile medians and ranges for 'c' data
bmqpc[,13] <- 2003  #period
bmqpc[,14] <- bmqpc[,13] - bmqpc[,1]  #cohort
dev.off()
plot(bmqc[,1],bmqc[,2],xlim=c(0,100),ylim=c(10,80),
main="Black male BMI quintile medians and ranges from cont NHANES C (2003)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bmqpc[,1],bmqpc[,i],lty=ltyi[i])
points(bmqc[,1],bmqc[,i])
}                       


#Black females  continuous NHANES 'c' (2003)
dmibfc <- dmbmc1[dmbmc1$RIAGENDR==2 & dmbmc1$RIDRETH1==4,]
lbfc <- dim(dmibfc)[1]
bfbmispc = matrix(NA,lbfc,100)
bfagec1 = dmibfc$RIDAGEYR
bfbmic1 = dmibfc$BMXBMI
bfrethc1 = dmibfc$RIDRETH1
bfpopwtc1 = dmibfc$WTMEC2YR
bfoc <-order(bfagec1, na.last=TRUE)
bfagec <- bfagec1[bfoc]
bfbmic <- bfbmic1[bfoc]
bfrethc = bfrethc1[bfoc]
bfpopwtc2 = bfpopwtc1[bfoc]
bfpopwtc =  round(poprep*bfpopwtc2/(sum(bfpopwtc2)/lbfc))
bfpopwtc[bfpopwtc > poprep*wttr]= poprep*wttr
bfnsample = sum(bfpopwtc)
tmpa <- bfagec[bfagec>40]
tmpb <- bfbmic[bfagec>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bfbmics <- rep(bfbmic,bfpopwtc) + rnorm(bfnsample,0,bmisd)
bfagecs <- rep(bfagec,bfpopwtc) 

bfagemaxc <- max(bfagecs)
bfquinc = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:bfagemaxc) {
        lagei = bfagecs>=i-4 & bfagecs <= i+4        #smooth over 9 year window
        bfagetemp = bfagecs[lagei]
        bfbmitemp = bfbmics[lagei]
        if(length(bfagetemp) > 3) { 
	id=id+1
	bfquinc[id,1]<- i
	bfquinc[id,2:12] <- as.vector(quantile(bfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bfagetemp),mean(bfbmitemp)))
        maxbmiq5=max(maxbmiq5,bfquinc[id,12]-bfquinc[id,11])
        }
}
bfquinc[,12]<-bfquinc[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bfqc = bfquinc[1:id,]
ageminc=min(bfqc[,1])
agemaxc=max(bfqc[,1])
bfqpc = matrix(NA,agemaxc-ageminc+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bfqc[,1],y=bfqc[,i],df=4),ageminc:agemaxc)
bfqpc[,1] <- temp$x  #ages
bfqpc[,i] <- temp$y  #deciles                 
} #Note: bfqpc is smoothed black female decile predictor - quintile medians and ranges for 'c' data
bfqpc[,13] <- 2003  #period
bfqpc[,14] <- bfqpc[,13] - bfqpc[,1]  #cohort
dev.off()
plot(bfqc[,1],bfqc[,2],xlim=c(0,100),ylim=c(10,80),
main="Black female BMI quintile medians and ranges from cont NHANES C (2003)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bfqpc[,1],bfqpc[,i],lty=ltyi[i])
points(bfqc[,1],bfqc[,i])
}                       


save(wmqpc,file = "wmqpc.RData")
save(wfqpc,file = "wfqpc.RData")
save(bmqpc,file = "bmqpc.RData")
save(bfqpc,file = "bfqpc.RData")




#Continuous NHANES D#################################################################
matchd=dmqd$SEQN %in% bmxd$SEQN
mdmqd <- dmqd[matchd,]
matchmd=match(mdmqd$SEQN,bmxd$SEQN)
dmqseqd <- mdmqd[matchmd,]
bmkd=bmxd[,keepbmcolth]
dmkd=dmqseqd[,keepdmcol]
dmbmd <- merge(dmkd,bmkd,all='TRUE')
dmbmd$SDDSRVYR=2005

ldmbmd=(!is.na(dmbmd$BMXBMI) & dmbmd$RIDAGEYR>11 & dmbmd$BMXBMI < 60)
dmbmd1=dmbmd[ldmbmd,]

#White males  continuous NHANES 'd' (2005) (all whites inc. Mexican American, Other Hispanic
dmiwmd <- dmbmd1[dmbmd1$RIAGENDR==1 & dmbmd1$RIDRETH1>=1 & dmbmd1$RIDRETH1<=3,]
lwmd <- dim(dmiwmd)[1]
wmbmispd = matrix(NA,lwmd,100)
wmaged1 = dmiwmd$RIDAGEYR
wmbmid1 = dmiwmd$BMXBMI
wmrethd1 = dmiwmd$RIDRETH1
wmpopwtd1 = dmiwmd$WTMEC2YR
wmod <-order(wmaged1, na.last=TRUE)
wmaged <- wmaged1[wmod]
wmbmid <- wmbmid1[wmod]
wmrethd = wmrethd1[wmod]
wmpopwtd2 = wmpopwtd1[wmod]
wmpopwtd =  round(poprep*wmpopwtd2/(sum(wmpopwtd2)/lwmd))
wmpopwtd[wmpopwtd > poprep*wttr]= poprep*wttr
wmnsample = sum(wmpopwtd)
tmpa <- wmaged[wmaged>40]
tmpb <- wmbmid[wmaged>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wmbmids <- rep(wmbmid,wmpopwtd) + rnorm(wmnsample,0,bmisd)
wmageds <- rep(wmaged,wmpopwtd) 

wmagemaxd <- max(wmageds)
wmquind = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:wmagemaxd) {
        lagei = wmageds>=i-4 & wmageds <= i+4        #smooth over 9 year window
        wmagetemp = wmageds[lagei]
        wmbmitemp = wmbmids[lagei]
        if(length(wmagetemp) > 3) { 
	id=id+1
	wmquind[id,1]<- i
	wmquind[id,2:12] <- as.vector(quantile(wmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wmagetemp),mean(wmbmitemp)))
        maxbmiq5=max(maxbmiq5,wmquind[id,12]-wmquind[id,11])
        }
}
wmquind[,12]<-wmquind[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wmqd = wmquind[1:id,]
agemind=min(wmqd[,1])
agemaxd=max(wmqd[,1])
wmqpd = matrix(NA,agemaxd-agemind+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wmqd[,1],y=wmqd[,i],df=4),agemind:agemaxd)
wmqpd[,1] <- temp$x  #ages
wmqpd[,i] <- temp$y  #deciles                 
}   #Note: wmqpd is smoothed white male decile predictor - quintile medians and ranges for 'd' data
wmqpd[,13] <- 2005  #period
wmqpd[,14] <- wmqpd[,13] - wmqpd[,1]  #cohort
dev.off()
plot.new()
plot(wmqd[,1],wmqd[,2],xlim=c(0,100),ylim=c(10,80),
main="White male BMI quintile medians and ranges from cont NHANES D (2005)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wmqpd[,1],wmqpd[,i],lty=ltyi[i])
points(wmqd[,1],wmqd[,i])
}                       


#White females  continuous NHANES 'd' (2005)
dmiwfd <- dmbmd1[dmbmd1$RIAGENDR==2 & dmbmd1$RIDRETH1>=1 & dmbmd1$RIDRETH1<=3,]
lwfd <- dim(dmiwfd)[1]
wfbmispd = matrix(NA,lwfd,100)
wfaged1 = dmiwfd$RIDAGEYR
wfbmid1 = dmiwfd$BMXBMI
wfrethd1 = dmiwfd$RIDRETH1
wfpopwtd1 = dmiwfd$WTMEC2YR
wfod <-order(wfaged1, na.last=TRUE)
wfaged <- wfaged1[wfod]
wfbmid <- wfbmid1[wfod]
wfrethd = wfrethd1[wfod]
wfpopwtd2 = wfpopwtd1[wfod]
wfpopwtd =  round(poprep*wfpopwtd2/(sum(wfpopwtd2)/lwfd))
wfpopwtd[wfpopwtd > poprep*wttr]= poprep*wttr
wfnsample = sum(wfpopwtd)
tmpa <- wfaged[wfaged>40]
tmpb <- wfbmid[wfaged>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wfbmids <- rep(wfbmid,wfpopwtd) + rnorm(wfnsample,0,bmisd)
wfageds <- rep(wfaged,wfpopwtd) 

wfagemaxd <- max(wfageds)
wfquind = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:wfagemaxd) {
        lagei = wfageds>=i-4 & wfageds <= i+4        #smooth over 9 year window
        wfagetemp = wfageds[lagei]
        wfbmitemp = wfbmids[lagei]
        if(length(wfagetemp) > 3) { 
	id=id+1
	wfquind[id,1]<- i
	wfquind[id,2:12] <- as.vector(quantile(wfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wfagetemp),mean(wfbmitemp)))
        maxbmiq5=max(maxbmiq5,wfquind[id,12]-wfquind[id,11])
        }
}
wfquind[,12]<-wfquind[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wfqd = wfquind[1:id,]
agemind=min(wfqd[,1])
agemaxd=max(wfqd[,1])
wfqpd = matrix(NA,agemaxd-agemind+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wfqd[,1],y=wfqd[,i],df=4),agemind:agemaxd)
wfqpd[,1] <- temp$x  #ages
wfqpd[,i] <- temp$y  #deciles                 
} #Note: wfqpd is smoothed white female decile predictor - quintile medians and ranges for 'd' data
wfqpd[,13] <- 2005  #period
wfqpd[,14] <- wfqpd[,13] - wfqpd[,1]  #cohort
dev.off()
plot.new()
plot(wfqd[,1],wfqd[,2],xlim=c(0,100),ylim=c(10,80),
main="White female BMI quintile medians and ranges from cont NHANES D (2005)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wfqpd[,1],wfqpd[,i],lty=ltyi[i])
points(wfqd[,1],wfqd[,i])
}                       


#Black males  continuous NHANES 'd' (2005)
dmibmd <- dmbmd1[dmbmd1$RIAGENDR==1 & dmbmd1$RIDRETH1==4,]
lbmd <- dim(dmibmd)[1]
bmbmispd = matrix(NA,lbmd,100)
bmaged1 = dmibmd$RIDAGEYR
bmbmid1 = dmibmd$BMXBMI
bmrethd1 = dmibmd$RIDRETH1
bmpopwtd1 = dmibmd$WTMEC2YR
bmod <-order(bmaged1, na.last=TRUE)
bmaged <- bmaged1[bmod]
bmbmid <- bmbmid1[bmod]
bmrethd = bmrethd1[bmod]
bmpopwtd2 = bmpopwtd1[bmod]
bmpopwtd =  round(poprep*bmpopwtd2/(sum(bmpopwtd2)/lbmd))
bmpopwtd[bmpopwtd > poprep*wttr]= poprep*wttr
bmnsample = sum(bmpopwtd)
tmpa <- bmaged[bmaged>40]
tmpb <- bmbmid[bmaged>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bmbmids <- rep(bmbmid,bmpopwtd) + rnorm(bmnsample,0,bmisd)
bmageds <- rep(bmaged,bmpopwtd) 

bmagemaxd <- max(bmageds)
bmquind = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:bmagemaxd) {
        lagei = bmageds>=i-4 & bmageds <= i+4        #smooth over 9 year window
        bmagetemp = bmageds[lagei]
        bmbmitemp = bmbmids[lagei]
        if(length(bmagetemp) > 3) { 
	id=id+1
	bmquind[id,1]<- i
	bmquind[id,2:12] <- as.vector(quantile(bmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bmagetemp),mean(bmbmitemp)))
        maxbmiq5=max(maxbmiq5,bmquind[id,12]-bmquind[id,11])
        }
}
bmquind[,12]<-bmquind[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bmqd = bmquind[1:id,]
agemind=min(bmqd[,1])
agemaxd=max(bmqd[,1])
bmqpd = matrix(NA,agemaxd-agemind+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bmqd[,1],y=bmqd[,i],df=4),agemind:agemaxd)
bmqpd[,1] <- temp$x  #ages
bmqpd[,i] <- temp$y  #deciles                 
}   #Note: bmqpd is smoothed black male decile predictor - quintile medians and ranges for 'd' data
bmqpd[,13] <- 2005  #period
bmqpd[,14] <- bmqpd[,13] - bmqpd[,1]  #cohort
dev.off()
plot.new()
plot(bmqd[,1],bmqd[,2],xlim=c(0,100),ylim=c(13,40),
main="Black male BMI quintile medians and ranges from cont NHANES D (2005)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bmqpd[,1],bmqpd[,i],lty=ltyi[i])
points(bmqd[,1],bmqd[,i])
}                       


#Black females  continuous NHANES 'd' (2005)
dmibfd <- dmbmd1[dmbmd1$RIAGENDR==2 & dmbmd1$RIDRETH1==4,]
lbfd <- dim(dmibfd)[1]
bfbmispd = matrix(NA,lbfd,100)
bfaged1 = dmibfd$RIDAGEYR
bfbmid1 = dmibfd$BMXBMI
bfrethd1 = dmibfd$RIDRETH1
bfpopwtd1 = dmibfd$WTMEC2YR
bfod <-order(bfaged1, na.last=TRUE)
bfaged <- bfaged1[bfod]
bfbmid <- bfbmid1[bfod]
bfrethd = bfrethd1[bfod]
bfpopwtd2 = bfpopwtd1[bfod]
bfpopwtd =  round(poprep*bfpopwtd2/(sum(bfpopwtd2)/lbfd))
bfpopwtd[bfpopwtd > poprep*wttr]= poprep*wttr
bfnsample = sum(bfpopwtd)
tmpa <- bfaged[bfaged>40]
tmpb <- bfbmid[bfaged>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bfbmids <- rep(bfbmid,bfpopwtd) + rnorm(bfnsample,0,bmisd)
bfageds <- rep(bfaged,bfpopwtd) 

bfagemaxd <- max(bfageds)
bfquind = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:bfagemaxd) {
        lagei = bfageds>=i-4 & bfageds <= i+4        #smooth over 9 year window
        bfagetemp = bfageds[lagei]
        bfbmitemp = bfbmids[lagei]
        if(length(bfagetemp) > 3) { 
	id=id+1
	bfquind[id,1]<- i
	bfquind[id,2:12] <- as.vector(quantile(bfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bfagetemp),mean(bfbmitemp)))
        maxbmiq5=max(maxbmiq5,bfquind[id,12]-bfquind[id,11])
        }
}
bfquind[,12]<-bfquind[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bfqd = bfquind[1:id,]
agemind=min(bfqd[,1])
agemaxd=max(bfqd[,1])
bfqpd = matrix(NA,agemaxd-agemind+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bfqd[,1],y=bfqd[,i],df=4),agemind:agemaxd)
bfqpd[,1] <- temp$x  #ages
bfqpd[,i] <- temp$y  #deciles                 
} #Note: bfqpd is smoothed black female decile predictor - quintile medians and ranges for 'd' data
bfqpd[,13] <- 2005  #period
bfqpd[,14] <- bfqpd[,13] - bfqpd[,1]  #cohort
dev.off()
plot.new()
plot(bfqd[,1],bfqd[,2],xlim=c(0,100),ylim=c(10,80),
main="Black female BMI quintile medians and ranges from cont NHANES D (2005)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bfqpd[,1],bfqpd[,i],lty=ltyi[i])
points(bfqd[,1],bfqd[,i])
}                       


save(wmqpd,file = "wmqpd.RData")
save(wfqpd,file = "wfqpd.RData")
save(bmqpd,file = "bmqpd.RData")
save(bfqpd,file = "bfqpd.RData")




#Continuous NHANES E#################################################################
keepbmcol <- c("SEQN","BMXWT","BMXHT","BMXBMI","BMXWAIST")
matche=dmqe$SEQN %in% bmxe$SEQN
mdmqe <- dmqe[matche,]
matchme=match(mdmqe$SEQN,bmxe$SEQN)
dmqseqe <- mdmqe[matchme,]
bmke=bmxe[,keepbmcol]
dmke=dmqseqe[,keepdmcol]
dmbme <- merge(dmke,bmke,all='TRUE')
dmbme$SDDSRVYR=2007

ldmbme=(!is.na(dmbme$BMXBMI) & dmbme$RIDAGEYR>11 & dmbme$BMXBMI < 60)
dmbme1=dmbme[ldmbme,]

#White males  continuous NHANES 'e' (2007) (all whites inc. Mexican American, Other Hispanic
dmiwme <- dmbme1[dmbme1$RIAGENDR==1 & dmbme1$RIDRETH1>=1 & dmbme1$RIDRETH1<=3,]
lwme <- dim(dmiwme)[1]
wmbmispe = matrix(NA,lwme,100)
wmagee1 = dmiwme$RIDAGEYR
wmbmie1 = dmiwme$BMXBMI
wmrethe1 = dmiwme$RIDRETH1
wmpopwte1 = dmiwme$WTMEC2YR
wmoe <-order(wmagee1, na.last=TRUE)
wmagee <- wmagee1[wmoe]
wmbmie <- wmbmie1[wmoe]
wmrethe = wmrethe1[wmoe]
wmpopwte2 = wmpopwte1[wmoe]
wmpopwte =  round(poprep*wmpopwte2/(sum(wmpopwte2)/lwme))
wmpopwte[wmpopwte > poprep*wttr]= poprep*wttr
wmnsample = sum(wmpopwte)
tmpa <- wmagee[wmagee>40]
tmpb <- wmbmie[wmagee>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wmbmies <- rep(wmbmie,wmpopwte) + rnorm(wmnsample,0,bmisd)
wmagees <- rep(wmagee,wmpopwte) 

wmagemaxe <- max(wmagees)
wmquine = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:wmagemaxe) {
        lagei = wmagees>=i-4 & wmagees <= i+4        #smooth over 9 year window
        wmagetemp = wmagees[lagei]
        wmbmitemp = wmbmies[lagei]
        if(length(wmagetemp) > 3) { 
	id=id+1
	wmquine[id,1]<- i
	wmquine[id,2:12] <- as.vector(quantile(wmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wmagetemp),mean(wmbmitemp)))
        maxbmiq5=max(maxbmiq5,wmquine[id,12]-wmquine[id,11])
        }
}
wmquine[,12]<-wmquine[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wmqe = wmquine[1:id,]
agemine=min(wmqe[,1])
agemaxe=max(wmqe[,1])
wmqpe = matrix(NA,agemaxe-agemine+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wmqe[,1],y=wmqe[,i],df=4),agemine:agemaxe)
wmqpe[,1] <- temp$x  #ages
wmqpe[,i] <- temp$y  #deciles                 
}   #Note: wmqpe is smoothed white male decile predictor - quintile medians and ranges for 'e' data
wmqpe[,13] <- 2007  #period
wmqpe[,14] <- wmqpe[,13] - wmqpe[,1]  #cohort
dev.off()
plot.new()
plot(wmqe[,1],wmqe[,2],xlim=c(0,100),ylim=c(10,80),
main="White male BMI quintile medians and ranges from cont NHANES E (2007)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wmqpe[,1],wmqpe[,i],lty=ltyi[i])
points(wmqe[,1],wmqe[,i])
}                       


#White females  continuous NHANES 'e' (2007)
dmiwfe <- dmbme1[dmbme1$RIAGENDR==2 & dmbme1$RIDRETH1>=1 & dmbme1$RIDRETH1<=3,]
lwfe <- dim(dmiwfe)[1]
wfbmispe = matrix(NA,lwfe,100)
wfagee1 = dmiwfe$RIDAGEYR
wfbmie1 = dmiwfe$BMXBMI
wfrethe1 = dmiwfe$RIDRETH1
wfpopwte1 = dmiwfe$WTMEC2YR
wfoe <-order(wfagee1, na.last=TRUE)
wfagee <- wfagee1[wfoe]
wfbmie <- wfbmie1[wfoe]
wfrethe = wfrethe1[wfoe]
wfpopwte2 = wfpopwte1[wfoe]
wfpopwte =  round(poprep*wfpopwte2/(sum(wfpopwte2)/lwfe))
wfpopwte[wfpopwte > poprep*wttr]= poprep*wttr
wfnsample = sum(wfpopwte)
tmpa <- wfagee[wfagee>40]
tmpb <- wfbmie[wfagee>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wfbmies <- rep(wfbmie,wfpopwte) + rnorm(wfnsample,0,bmisd)
wfagees <- rep(wfagee,wfpopwte) 

wfagemaxe <- max(wfagees)
wfquine = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:wfagemaxe) {
        lagei = wfagees>=i-4 & wfagees <= i+4        #smooth over 9 year window
        wfagetemp = wfagees[lagei]
        wfbmitemp = wfbmies[lagei]
        if(length(wfagetemp) > 3) { 
	id=id+1
	wfquine[id,1]<- i
	wfquine[id,2:12] <- as.vector(quantile(wfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wfagetemp),mean(wfbmitemp)))
        maxbmiq5=max(maxbmiq5,wfquine[id,12]-wfquine[id,11])
        }
}
wfquine[,12]<-wfquine[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wfqe = wfquine[1:id,]
agemine=min(wfqe[,1])
agemaxe=max(wfqe[,1])
wfqpe = matrix(NA,agemaxe-agemine+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wfqe[,1],y=wfqe[,i],df=4),agemine:agemaxe)
wfqpe[,1] <- temp$x  #ages
wfqpe[,i] <- temp$y  #deciles                 
}#Note: wfqpe is smoothed white female decile predictor - quintile medians and ranges for 'e' data
wfqpe[,13] <- 2007  #period
wfqpe[,14] <- wfqpe[,13] - wfqpe[,1]  #cohort
dev.off()
plot.new()
plot(wfqe[,1],wfqe[,2],xlim=c(0,100),ylim=c(10,80),
main="White female BMI quintile medians and ranges from cont NHANES E (2005)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wfqpe[,1],wfqpe[,i],lty=ltyi[i])
points(wfqe[,1],wfqe[,i])
}                       


#Black males  continuous NHANES 'e' (2007)
dmibme <- dmbme1[dmbme1$RIAGENDR==1 & dmbme1$RIDRETH1==4,]
lbme <- dim(dmibme)[1]
bmbmispe = matrix(NA,lbme,100)
bmagee1 = dmibme$RIDAGEYR
bmbmie1 = dmibme$BMXBMI
bmrethe1 = dmibme$RIDRETH1
bmpopwte1 = dmibme$WTMEC2YR
bmoe <-order(bmagee1, na.last=TRUE)
bmagee <- bmagee1[bmoe]
bmbmie <- bmbmie1[bmoe]
bmrethe = bmrethe1[bmoe]
bmpopwte2 = bmpopwte1[bmoe]
bmpopwte =  round(poprep*bmpopwte2/(sum(bmpopwte2)/lbme))
bmpopwte[bmpopwte > poprep*wttr]= poprep*wttr
bmnsample = sum(bmpopwte)
tmpa <- bmagee[bmagee>40]
tmpb <- bmbmie[bmagee>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bmbmies <- rep(bmbmie,bmpopwte) + rnorm(bmnsample,0,bmisd)
bmagees <- rep(bmagee,bmpopwte) 

bmagemaxe <- max(bmagees)
bmquine = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:bmagemaxe) {
        lagei = bmagees>=i-4 & bmagees <= i+4        #smooth over 9 year window
        bmagetemp = bmagees[lagei]
        bmbmitemp = bmbmies[lagei]
        if(length(bmagetemp) > 3) { 
	id=id+1
	bmquine[id,1]<- i
	bmquine[id,2:12] <- as.vector(quantile(bmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bmagetemp),mean(bmbmitemp)))
        maxbmiq5=max(maxbmiq5,bmquine[id,12]-bmquine[id,11])
        }
}
bmquine[,12]<-bmquine[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bmqe = bmquine[1:id,]
agemine=min(bmqe[,1])
agemaxe=max(bmqe[,1])
bmqpe = matrix(NA,agemaxe-agemine+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bmqe[,1],y=bmqe[,i],df=4),agemine:agemaxe)
bmqpe[,1] <- temp$x  #ages
bmqpe[,i] <- temp$y  #deciles                 
}   #Note: bmqpe is smoothed black male decile predictor - quintile medians and ranges for 'e' data
bmqpe[,13] <- 2007  #period
bmqpe[,14] <- bmqpe[,13] - bmqpe[,1]  #cohort
dev.off()
plot.new()
plot(bmqe[,1],bmqe[,2],xlim=c(0,100),ylim=c(10,80),
main="Black male BMI quintile medians and ranges from cont NHANES E (2007)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bmqpe[,1],bmqpe[,i],lty=ltyi[i])
points(bmqe[,1],bmqe[,i])
}                       


#Black females  continuous NHANES 'e' (2007)
dmibfe <- dmbme1[dmbme1$RIAGENDR==2 & dmbme1$RIDRETH1==4,]
lbfe <- dim(dmibfe)[1]
bfbmispe = matrix(NA,lbfe,100)
bfagee1 = dmibfe$RIDAGEYR
bfbmie1 = dmibfe$BMXBMI
bfrethe1 = dmibfe$RIDRETH1
bfpopwte1 = dmibfe$WTMEC2YR
bfoe <-order(bfagee1, na.last=TRUE)
bfagee <- bfagee1[bfoe]
bfbmie <- bfbmie1[bfoe]
bfrethe = bfrethe1[bfoe]
bfpopwte2 = bfpopwte1[bfoe]
bfpopwte =  round(poprep*bfpopwte2/(sum(bfpopwte2)/lbfe))
bfpopwte[bfpopwte > poprep*wttr]= poprep*wttr
bfnsample = sum(bfpopwte)
tmpa <- bfagee[bfagee>40]
tmpb <- bfbmie[bfagee>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bfbmies <- rep(bfbmie,bfpopwte) + rnorm(bfnsample,0,bmisd)
bfagees <- rep(bfagee,bfpopwte) 

bfagemaxe <- max(bfagees)
bfquine = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:bfagemaxe) {
        lagei = bfagees>=i-4 & bfagees <= i+4        #smooth over 9 year window
        bfagetemp = bfagees[lagei]
        bfbmitemp = bfbmies[lagei]
        if(length(bfagetemp) > 3) { 
	id=id+1
	bfquine[id,1]<- i
	bfquine[id,2:12] <- as.vector(quantile(bfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bfagetemp),mean(bfbmitemp)))
        maxbmiq5=max(maxbmiq5,bfquine[id,12]-bfquine[id,11])
        }
}
bfquine[,12]<-bfquine[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bfqe = bfquine[1:id,]
agemine=min(bfqe[,1])
agemaxe=max(bfqe[,1])
bfqpe = matrix(NA,agemaxe-agemine+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bfqe[,1],y=bfqe[,i],df=4),agemine:agemaxe)
bfqpe[,1] <- temp$x  #ages
bfqpe[,i] <- temp$y  #deciles                 
}#Note: bfqpe is smoothed black female decile predictor - quintile medians and ranges for 'e' data
bfqpe[,13] <- 2007  #period
bfqpe[,14] <- bfqpe[,13] - bfqpe[,1]  #cohort
dev.off()
plot.new()
plot(bfqe[,1],bfqe[,2],xlim=c(0,100),ylim=c(10,80),
main="Black female BMI quintile medians and ranges from cont NHANES E (2005)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bfqpe[,1],bfqpe[,i],lty=ltyi[i])
points(bfqe[,1],bfqe[,i])
}                       

save(wmqpe,file = "wmqpe.RData")
save(wfqpe,file = "wfqpe.RData")
save(bmqpe,file = "bmqpe.RData")
save(bfqpe,file = "bfqpe.RData")




#Continuous NHANES F#################################################################
matchf=dmqf$SEQN %in% bmxf$SEQN
mdmqf <- dmqf[matchf,]
matchmf=match(mdmqf$SEQN,bmxf$SEQN)
dmqseqf <- mdmqf[matchmf,]
bmkf=bmxf[,keepbmcol]
dmkf=dmqseqf[,keepdmcol]
dmbmf <- merge(dmkf,bmkf,all='TRUE')
dmbmf$SDDSRVYR=2009

ldmbmf=(!is.na(dmbmf$BMXBMI) & dmbmf$RIDAGEYR>11 & dmbmf$BMXBMI < 60)
dmbmf1=dmbmf[ldmbmf,]

#White males  continuous NHANES 'f' (2009) (all whites inc. Mexican American, Other Hispanic
dmiwmf <- dmbmf1[dmbmf1$RIAGENDR==1 & dmbmf1$RIDRETH1>=1 & dmbmf1$RIDRETH1<=3,]
lwmf <- dim(dmiwmf)[1]
wmbmispf = matrix(NA,lwmf,100)
wmagef1 = dmiwmf$RIDAGEYR
wmbmif1 = dmiwmf$BMXBMI
wmrethf1 = dmiwmf$RIDRETH1
wmpopwtf1 = dmiwmf$WTMEC2YR
wmof <-order(wmagef1, na.last=TRUE)
wmagef <- wmagef1[wmof]
wmbmif <- wmbmif1[wmof]
wmrethf = wmrethf1[wmof]
wmpopwtf2 = wmpopwtf1[wmof]
wmpopwtf =  round(poprep*wmpopwtf2/(sum(wmpopwtf2)/lwmf))
wmpopwtf[wmpopwtf > poprep*wttr]= poprep*wttr
wmnsample = sum(wmpopwtf)
tmpa <- wmagef[wmagef>40]
tmpb <- wmbmif[wmagef>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wmbmifs <- rep(wmbmif,wmpopwtf) + rnorm(wmnsample,0,bmisd)
wmagefs <- rep(wmagef,wmpopwtf) 

wmagemaxf <- max(wmagefs)
wmquinf = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:wmagemaxf) {
        lagei = wmagefs>=i-4 & wmagefs <= i+4        #smooth over 9 year window
        wmagetemp = wmagefs[lagei]
        wmbmitemp = wmbmifs[lagei]
        if(length(wmagetemp) > 3) { 
	id=id+1
	wmquinf[id,1]<- i
	wmquinf[id,2:12] <- as.vector(quantile(wmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wmagetemp),mean(wmbmitemp)))
        maxbmiq5=max(maxbmiq5,wmquinf[id,12]-wmquinf[id,11])
        }
}
wmquinf[,12]<-wmquinf[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wmqf = wmquinf[1:id,]
ageminf=min(wmqf[,1])
agemaxf=max(wmqf[,1])
wmqpf = matrix(NA,agemaxf-ageminf+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wmqf[,1],y=wmqf[,i],df=4),ageminf:agemaxf)
wmqpf[,1] <- temp$x  #ages
wmqpf[,i] <- temp$y  #deciles                 
}   #Note: wmqpf is smoothed white male decile predictor - quintile medians and ranges for 'f' data
wmqpf[,13] <- 2009  #period
wmqpf[,14] <- wmqpf[,13] - wmqpf[,1]  #cohort
dev.off()
plot.new()
plot(wmqf[,1],wmqf[,2],xlim=c(0,100),ylim=c(10,80),
main="White male BMI quintile medians and ranges from cont NHANES F (2009)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wmqpf[,1],wmqpf[,i],lty=ltyi[i])
points(wmqf[,1],wmqf[,i])
}                       


#White females  continuous NHANES 'f' (2009)
dmiwff <- dmbmf1[dmbmf1$RIAGENDR==2 & dmbmf1$RIDRETH1>=1 & dmbmf1$RIDRETH1<=3,]
lwff <- dim(dmiwff)[1]
wfbmispf = matrix(NA,lwff,100)
wfagef1 = dmiwff$RIDAGEYR
wfbmif1 = dmiwff$BMXBMI
wfrethf1 = dmiwff$RIDRETH1
wfpopwtf1 = dmiwff$WTMEC2YR
wfof <-order(wfagef1, na.last=TRUE)
wfagef <- wfagef1[wfof]
wfbmif <- wfbmif1[wfof]
wfrethf = wfrethf1[wfof]
wfpopwtf2 = wfpopwtf1[wfof]
wfpopwtf =  round(poprep*wfpopwtf2/(sum(wfpopwtf2)/lwff))
wfpopwtf[wfpopwtf > poprep*wttr]= poprep*wttr
wfnsample = sum(wfpopwtf)
tmpa <- wfagef[wfagef>40]
tmpb <- wfbmif[wfagef>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wfbmifs <- rep(wfbmif,wfpopwtf) + rnorm(wfnsample,0,bmisd)
wfagefs <- rep(wfagef,wfpopwtf) 

wfagemaxf <- max(wfagefs)
wfquinf = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:wfagemaxf) {
        lagei = wfagefs>=i-4 & wfagefs <= i+4        #smooth over 9 year window
        wfagetemp = wfagefs[lagei]
        wfbmitemp = wfbmifs[lagei]
        if(length(wfagetemp) > 3) { 
	id=id+1
	wfquinf[id,1]<- i
	wfquinf[id,2:12] <- as.vector(quantile(wfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wfagetemp),mean(wfbmitemp)))
        maxbmiq5=max(maxbmiq5,wfquinf[id,12]-wfquinf[id,11])
        }
}
wfquinf[,12]<-wfquinf[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wfqf = wfquinf[1:id,]
ageminf=min(wfqf[,1])
agemaxf=max(wfqf[,1])
wfqpf = matrix(NA,agemaxf-ageminf+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wfqf[,1],y=wfqf[,i],df=4),ageminf:agemaxf)
wfqpf[,1] <- temp$x  #ages
wfqpf[,i] <- temp$y  #deciles                 
} #Note: wfqpf is smoothed white female decile predictor - quintile medians and ranges for 'f' data
wfqpf[,13] <- 2009  #period
wfqpf[,14] <- wfqpf[,13] - wfqpf[,1]  #cohort
dev.off()
plot.new()
plot(wfqf[,1],wfqf[,2],xlim=c(0,100),ylim=c(10,80),
main="White female BMI quintile medians and ranges from cont NHANES F (2009)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wfqpf[,1],wfqpf[,i],lty=ltyi[i])
points(wfqf[,1],wfqf[,i])
}                       


#Black males  continuous NHANES 'f' (2009)
dmibmf <- dmbmf1[dmbmf1$RIAGENDR==1 & dmbmf1$RIDRETH1==4,]
lbmf <- dim(dmibmf)[1]
bmbmispf = matrix(NA,lbmf,100)
bmagef1 = dmibmf$RIDAGEYR
bmbmif1 = dmibmf$BMXBMI
bmrethf1 = dmibmf$RIDRETH1
bmpopwtf1 = dmibmf$WTMEC2YR
bmof <-order(bmagef1, na.last=TRUE)
bmagef <- bmagef1[bmof]
bmbmif <- bmbmif1[bmof]
bmrethf = bmrethf1[bmof]
bmpopwtf2 = bmpopwtf1[bmof]
bmpopwtf =  round(poprep*bmpopwtf2/(sum(bmpopwtf2)/lbmf))
bmpopwtf[bmpopwtf > poprep*wttr]= poprep*wttr
bmnsample = sum(bmpopwtf)
tmpa <- bmagef[bmagef>40]
tmpb <- bmbmif[bmagef>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bmbmifs <- rep(bmbmif,bmpopwtf) + rnorm(bmnsample,0,bmisd)
bmagefs <- rep(bmagef,bmpopwtf) 

bmagemaxf <- max(bmagefs)
bmquinf = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:bmagemaxf) {
        lagei = bmagefs>=i-4 & bmagefs <= i+4        #smooth over 9 year window
        bmagetemp = bmagefs[lagei]
        bmbmitemp = bmbmifs[lagei]
        if(length(bmagetemp) > 3) { 
	id=id+1
	bmquinf[id,1]<- i
	bmquinf[id,2:12] <- as.vector(quantile(bmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bmagetemp),mean(bmbmitemp)))
        maxbmiq5=max(maxbmiq5,bmquinf[id,12]-bmquinf[id,11])
        }
}
bmquinf[,12]<-bmquinf[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bmqf = bmquinf[1:id,]
ageminf=min(bmqf[,1])
agemaxf=max(bmqf[,1])
bmqpf = matrix(NA,agemaxf-ageminf+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bmqf[,1],y=bmqf[,i],df=4),ageminf:agemaxf)
bmqpf[,1] <- temp$x  #ages
bmqpf[,i] <- temp$y  #deciles                 
}   #Note: bmqpf is smoothed black male decile predictor - quintile medians and ranges for 'f' data
bmqpf[,13] <- 2009  #period
bmqpf[,14] <- bmqpf[,13] - bmqpf[,1]  #cohort
dev.off()
plot.new()
plot(bmqf[,1],bmqf[,2],xlim=c(0,100),ylim=c(10,80),
main="Black male BMI quintile medians and ranges from cont NHANES F (2009)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bmqpf[,1],bmqpf[,i],lty=ltyi[i])
points(bmqf[,1],bmqf[,i])
}                       


#Black females  continuous NHANES 'f' (2009)
dmibff <- dmbmf1[dmbmf1$RIAGENDR==2 & dmbmf1$RIDRETH1==4,]
lbff <- dim(dmibff)[1]
bfbmispf = matrix(NA,lbff,100)
bfagef1 = dmibff$RIDAGEYR
bfbmif1 = dmibff$BMXBMI
bfrethf1 = dmibff$RIDRETH1
bfpopwtf1 = dmibff$WTMEC2YR
bfof <-order(bfagef1, na.last=TRUE)
bfagef <- bfagef1[bfof]
bfbmif <- bfbmif1[bfof]
bfrethf = bfrethf1[bfof]
bfpopwtf2 = bfpopwtf1[bfof]
bfpopwtf =  round(poprep*bfpopwtf2/(sum(bfpopwtf2)/lbff))
bfpopwtf[bfpopwtf > poprep*wttr]= poprep*wttr
bfnsample = sum(bfpopwtf)
tmpa <- bfagef[bfagef>40]
tmpb <- bfbmif[bfagef>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bfbmifs <- rep(bfbmif,bfpopwtf) + rnorm(bfnsample,0,bmisd)
bfagefs <- rep(bfagef,bfpopwtf) 

bfagemaxf <- max(bfagefs)
bfquinf = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:bfagemaxf) {
        lagei = bfagefs>=i-4 & bfagefs <= i+4        #smooth over 9 year window
        bfagetemp = bfagefs[lagei]
        bfbmitemp = bfbmifs[lagei]
        if(length(bfagetemp) > 3) { 
	id=id+1
	bfquinf[id,1]<- i
	bfquinf[id,2:12] <- as.vector(quantile(bfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bfagetemp),mean(bfbmitemp)))
        maxbmiq5=max(maxbmiq5,bfquinf[id,12]-bfquinf[id,11])
        }
}
bfquinf[,12]<-bfquinf[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bfqf = bfquinf[1:id,]
ageminf=min(bfqf[,1])
agemaxf=max(bfqf[,1])
bfqpf = matrix(NA,agemaxf-ageminf+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bfqf[,1],y=bfqf[,i],df=4),ageminf:agemaxf)
bfqpf[,1] <- temp$x  #ages
bfqpf[,i] <- temp$y  #deciles                 
} #Note: bfqpf is smoothed black female decile predictor - quintile medians and ranges for 'f' data
bfqpf[,13] <- 2009  #period
bfqpf[,14] <- bfqpf[,13] - bfqpf[,1]  #cohort
dev.off()
plot.new()
plot(bfqf[,1],bfqf[,2],xlim=c(0,100),ylim=c(10,80),
main="Black female BMI quintile medians and ranges from cont NHANES F (2009)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bfqpf[,1],bfqpf[,i],lty=ltyi[i])
points(bfqf[,1],bfqf[,i])
}                       



save(wmqpf,file = "wmqpf.RData")
save(wfqpf,file = "wfqpf.RData")
save(bmqpf,file = "bmqpf.RData")
save(bfqpf,file = "bfqpf.RData")


#Continuous NHANES G#################################################################
matchg=dmqg$SEQN %in% bmxg$SEQN
mdmqg <- dmqg[matchg,]
matchmg=match(mdmqg$SEQN,bmxg$SEQN)
dmqseqg <- mdmqg[matchmg,]
bmkg=bmxg[,keepbmcol]
dmkg=dmqseqg[,keepdmcol]
dmbmg <- merge(dmkg,bmkg,all='TRUE')
dmbmg$SDDSRVYR=2011

ldmbmg=(!is.na(dmbmg$BMXBMI) & dmbmg$RIDAGEYR>11 & dmbmg$BMXBMI < 60)
dmbmg1=dmbmg[ldmbmg,]

#White males  continuous NHANES 'g' (2011) (all whites inc. Mexican American, Other Hispanic
dmiwmg <- dmbmg1[dmbmg1$RIAGENDR==1 & dmbmg1$RIDRETH1>=1 & dmbmg1$RIDRETH1<=3,]
lwmg <- dim(dmiwmg)[1]
wmbmispg = matrix(NA,lwmg,100)
wmageg1 = dmiwmg$RIDAGEYR
wmbmig1 = dmiwmg$BMXBMI
wmrethg1 = dmiwmg$RIDRETH1
wmpopwtg1 = dmiwmg$WTMEC2YR
wmog <-order(wmageg1, na.last=TRUE)
wmageg <- wmageg1[wmog]
wmbmig <- wmbmig1[wmog]
wmrethg = wmrethg1[wmog]
wmpopwtg2 = wmpopwtg1[wmog]
wmpopwtg =  round(poprep*wmpopwtg2/(sum(wmpopwtg2)/lwmg))
wmpopwtg[wmpopwtg > poprep*wttr]= poprep*wttr
wmnsample = sum(wmpopwtg)
tmpa <- wmageg[wmageg>40]
tmpb <- wmbmig[wmageg>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wmbmigs <- rep(wmbmig,wmpopwtg) + rnorm(wmnsample,0,bmisd)
wmagegs <- rep(wmageg,wmpopwtg) 

wmagemaxg <- max(wmagegs)
wmquing = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:wmagemaxg) {
        lagei = wmagegs>=i-4 & wmagegs <= i+4        #smooth over 9 year window
        wmagetemp = wmagegs[lagei]
        wmbmitemp = wmbmigs[lagei]
        if(length(wmagetemp) > 3) { 
	id=id+1
	wmquing[id,1]<- i
	wmquing[id,2:12] <- as.vector(quantile(wmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wmagetemp),mean(wmbmitemp)))
        maxbmiq5=max(maxbmiq5,wmquing[id,12]-wmquing[id,11])
        }
}
wmquing[,12]<-wmquing[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wmqg = wmquing[1:id,]
ageming=min(wmqg[,1])
agemaxg=max(wmqg[,1])
wmqpg = matrix(NA,agemaxg-ageming+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wmqg[,1],y=wmqg[,i],df=4),ageming:agemaxg)
wmqpg[,1] <- temp$x  #ages
wmqpg[,i] <- temp$y  #deciles                 
}   #Note: wmqpg is smoothed white male decile predictor - quintile medians and ranges for 'g' data
wmqpg[,13] <- 2011  #period
wmqpg[,14] <- wmqpg[,13] - wmqpg[,1]  #cohort
dev.off()
plot.new()
plot(wmqg[,1],wmqg[,2],xlim=c(0,100),ylim=c(10,80),
main="White male BMI quintile medians and ranges from cont NHANES G (2011)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wmqpg[,1],wmqpg[,i],lty=ltyi[i])
points(wmqg[,1],wmqg[,i])
}                       


#White females  continuous NHANES 'g' (2011)
dmiwfg <- dmbmg1[dmbmg1$RIAGENDR==2 & dmbmg1$RIDRETH1>=1 & dmbmg1$RIDRETH1<=3,]
lwfg <- dim(dmiwfg)[1]
wfbmispg = matrix(NA,lwfg,100)
wfageg1 = dmiwfg$RIDAGEYR
wfbmig1 = dmiwfg$BMXBMI
wfrethg1 = dmiwfg$RIDRETH1
wfpopwtg1 = dmiwfg$WTMEC2YR
wfog <-order(wfageg1, na.last=TRUE)
wfageg <- wfageg1[wfog]
wfbmig <- wfbmig1[wfog]
wfrethg = wfrethg1[wfog]
wfpopwtg2 = wfpopwtg1[wfog]
wfpopwtg =  round(poprep*wfpopwtg2/(sum(wfpopwtg2)/lwfg))
wfpopwtg[wfpopwtg > poprep*wttr]= poprep*wttr
wfnsample = sum(wfpopwtg)
tmpa <- wfageg[wfageg>40]
tmpb <- wfbmig[wfageg>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wfbmigs <- rep(wfbmig,wfpopwtg) + rnorm(wfnsample,0,bmisd)
wfagegs <- rep(wfageg,wfpopwtg) 

wfagemaxg <- max(wfagegs)
wfquing = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:wfagemaxg) {
        lagei = wfagegs>=i-4 & wfagegs <= i+4        #smooth over 9 year window
        wfagetemp = wfagegs[lagei]
        wfbmitemp = wfbmigs[lagei]
        if(length(wfagetemp) > 3) { 
	id=id+1
	wfquing[id,1]<- i
	wfquing[id,2:12] <- as.vector(quantile(wfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wfagetemp),mean(wfbmitemp)))
        maxbmiq5=max(maxbmiq5,wfquing[id,12]-wfquing[id,11])
        }
}
wfquing[,12]<-wfquing[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wfqg = wfquing[1:id,]
ageming=min(wfqg[,1])
agemaxg=max(wfqg[,1])
wfqpg = matrix(NA,agemaxg-ageming+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wfqg[,1],y=wfqg[,i],df=4),ageming:agemaxg)
wfqpg[,1] <- temp$x  #ages
wfqpg[,i] <- temp$y  #deciles                 
} #Note: wfqpg is smoothed white female decile predictor - quintile medians and ranges for 'g' data
wfqpg[,13] <- 2011  #period
wfqpg[,14] <- wfqpg[,13] - wfqpg[,1]  #cohort
dev.off()
plot.new()
plot(wfqg[,1],wfqg[,2],xlim=c(0,100),ylim=c(10,80),
main="White female BMI quintile medians and ranges from cont NHANES G (2011)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wfqpg[,1],wfqpg[,i],lty=ltyi[i])
points(wfqg[,1],wfqg[,i])
}                       


#Black males  continuous NHANES 'g' (2011)
dmibmg <- dmbmg1[dmbmg1$RIAGENDR==1 & dmbmg1$RIDRETH1==4,]
lbmg <- dim(dmibmg)[1]
bmbmispg = matrix(NA,lbmg,100)
bmageg1 = dmibmg$RIDAGEYR
bmbmig1 = dmibmg$BMXBMI
bmrethg1 = dmibmg$RIDRETH1
bmpopwtg1 = dmibmg$WTMEC2YR
bmog <-order(bmageg1, na.last=TRUE)
bmageg <- bmageg1[bmog]
bmbmig <- bmbmig1[bmog]
bmrethg = bmrethg1[bmog]
bmpopwtg2 = bmpopwtg1[bmog]
bmpopwtg =  round(poprep*bmpopwtg2/(sum(bmpopwtg2)/lbmg))
bmpopwtg[bmpopwtg > poprep*wttr]= poprep*wttr
bmnsample = sum(bmpopwtg)
tmpa <- bmageg[bmageg>40]
tmpb <- bmbmig[bmageg>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bmbmigs <- rep(bmbmig,bmpopwtg) + rnorm(bmnsample,0,bmisd)
bmagegs <- rep(bmageg,bmpopwtg) 

bmagemaxg <- max(bmagegs)
bmquing = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:bmagemaxg) {
        lagei = bmagegs>=i-4 & bmagegs <= i+4        #smooth over 9 year window
        bmagetemp = bmagegs[lagei]
        bmbmitemp = bmbmigs[lagei]
        if(length(bmagetemp) > 3) { 
	id=id+1
	bmquing[id,1]<- i
	bmquing[id,2:12] <- as.vector(quantile(bmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bmagetemp),mean(bmbmitemp)))
        maxbmiq5=max(maxbmiq5,bmquing[id,12]-bmquing[id,11])
        }
}
bmquing[,12]<-bmquing[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bmqg = bmquing[1:id,]
ageming=min(bmqg[,1])
agemaxg=max(bmqg[,1])
bmqpg = matrix(NA,agemaxg-ageming+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bmqg[,1],y=bmqg[,i],df=4),ageming:agemaxg)
bmqpg[,1] <- temp$x  #ages
bmqpg[,i] <- temp$y  #deciles                 
}   #Note: bmqpg is smoothed black male decile predictor - quintile medians and ranges for 'g' data
bmqpg[,13] <- 2011  #period
bmqpg[,14] <- bmqpg[,13] - bmqpg[,1]  #cohort
dev.off()
plot.new()
plot(bmqg[,1],bmqg[,2],xlim=c(0,100),ylim=c(10,80),
main="Black male BMI quintile medians and ranges from cont NHANES G (2011)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bmqpg[,1],bmqpg[,i],lty=ltyi[i])
points(bmqg[,1],bmqg[,i])
}                       


#Black females  continuous NHANES 'g' (2011)
dmibfg <- dmbmg1[dmbmg1$RIAGENDR==2 & dmbmg1$RIDRETH1==4,]
lbfg <- dim(dmibfg)[1]
bfbmispg = matrix(NA,lbfg,100)
bfageg1 = dmibfg$RIDAGEYR
bfbmig1 = dmibfg$BMXBMI
bfrethg1 = dmibfg$RIDRETH1
bfpopwtg1 = dmibfg$WTMEC2YR
bfog <-order(bfageg1, na.last=TRUE)
bfageg <- bfageg1[bfog]
bfbmig <- bfbmig1[bfog]
bfrethg = bfrethg1[bfog]
bfpopwtg2 = bfpopwtg1[bfog]
bfpopwtg =  round(poprep*bfpopwtg2/(sum(bfpopwtg2)/lbfg))
bfpopwtg[bfpopwtg > poprep*wttr]= poprep*wttr
bfnsample = sum(bfpopwtg)
tmpa <- bfageg[bfageg>40]
tmpb <- bfbmig[bfageg>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bfbmigs <- rep(bfbmig,bfpopwtg) + rnorm(bfnsample,0,bmisd)
bfagegs <- rep(bfageg,bfpopwtg) 

bfagemaxg <- max(bfagegs)
bfquing = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:bfagemaxg) {
        lagei = bfagegs>=i-4 & bfagegs <= i+4        #smooth over 9 year window
        bfagetemp = bfagegs[lagei]
        bfbmitemp = bfbmigs[lagei]
        if(length(bfagetemp) > 3) { 
	id=id+1
	bfquing[id,1]<- i
	bfquing[id,2:12] <- as.vector(quantile(bfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bfagetemp),mean(bfbmitemp)))
        maxbmiq5=max(maxbmiq5,bfquing[id,12]-bfquing[id,11])
        }
}
bfquing[,12]<-bfquing[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bfqg = bfquing[1:id,]
ageming=min(bfqg[,1])
agemaxg=max(bfqg[,1])
bfqpg = matrix(NA,agemaxg-ageming+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bfqg[,1],y=bfqg[,i],df=4),ageming:agemaxg)
bfqpg[,1] <- temp$x  #ages
bfqpg[,i] <- temp$y  #deciles                 
} #Note: bfqpg is smoothed black female decile predictor - quintile medians and ranges for 'g' data
bfqpg[,13] <- 2011  #period
bfqpg[,14] <- bfqpg[,13] - bfqpg[,1]  #cohort
dev.off()
plot.new()
plot(bfqg[,1],bfqg[,2],xlim=c(0,100),ylim=c(10,80),
main="Black female BMI quintile medians and ranges from cont NHANES G (2011)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bfqpg[,1],bfqpg[,i],lty=ltyi[i])
points(bfqg[,1],bfqg[,i])
}                       

save(wmqpg,file = "wmqpg.RData")
save(wfqpg,file = "wfqpg.RData")
save(bmqpg,file = "bmqpg.RData")
save(bfqpg,file = "bfqpg.RData")



#Continuous NHANES H#################################################################
matchh=dmqh$SEQN %in% bmxh$SEQN
mdmqh <- dmqh[matchh,]
matchmh=match(mdmqh$SEQN,bmxh$SEQN)
dmqseqh <- mdmqh[matchmh,]
bmkh=bmxh[,keepbmcol]
dmkh=dmqseqh[,keepdmcol]
dmbmh <- merge(dmkh,bmkh,all='TRUE')
dmbmh$SDDSRVYR=2013

ldmbmh=(!is.na(dmbmh$BMXBMI) & dmbmh$RIDAGEYR>11 & dmbmh$BMXBMI < 60)
dmbmh1=dmbmh[ldmbmh,]

#White males  continuous NHANES 'h' (2013) (all whites inc. Mexican American, Other Hispanic
dmiwmh <- dmbmh1[dmbmh1$RIAGENDR==1 & dmbmh1$RIDRETH1>=1 & dmbmh1$RIDRETH1<=3,]
lwmh <- dim(dmiwmh)[1]
wmbmisph = matrix(NA,lwmh,100)
wmageh1 = dmiwmh$RIDAGEYR
wmbmih1 = dmiwmh$BMXBMI
wmrethh1 = dmiwmh$RIDRETH1
wmpopwth1 = dmiwmh$WTMEC2YR
wmoh <-order(wmageh1, na.last=TRUE)
wmageh <- wmageh1[wmoh]
wmbmih <- wmbmih1[wmoh]
wmrethh = wmrethh1[wmoh]
wmpopwth2 = wmpopwth1[wmoh]
wmpopwth =  round(poprep*wmpopwth2/(sum(wmpopwth2)/lwmh))
wmpopwth[wmpopwth > poprep*wttr]= poprep*wttr
wmnsample = sum(wmpopwth)
tmpa <- wmageh[wmageh>40]
tmpb <- wmbmih[wmageh>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wmbmihs <- rep(wmbmih,wmpopwth) + rnorm(wmnsample,0,bmisd)
wmagehs <- rep(wmageh,wmpopwth) 

wmagemaxh <- max(wmagehs)
wmquinh = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:wmagemaxh) {
        lagei = wmagehs>=i-4 & wmagehs <= i+4        #smooth over 9 year window
        wmagetemp = wmagehs[lagei]
        wmbmitemp = wmbmihs[lagei]
        if(length(wmagetemp) > 3) { 
	id=id+1
	wmquinh[id,1]<- i
	wmquinh[id,2:12] <- as.vector(quantile(wmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wmagetemp),mean(wmbmitemp)))
        maxbmiq5=max(maxbmiq5,wmquinh[id,12]-wmquinh[id,11])
        }
}
wmquinh[,12]<-wmquinh[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wmqh = wmquinh[1:id,]
ageminh=min(wmqh[,1])
agemaxh=max(wmqh[,1])
wmqph = matrix(NA,agemaxh-ageminh+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wmqh[,1],y=wmqh[,i],df=4),ageminh:agemaxh)
wmqph[,1] <- temp$x  #ages
wmqph[,i] <- temp$y  #deciles                 
}   #Note: wmqph is smoothed white male decile predictor - quintile medians and ranges for 'h' data
wmqph[,13] <- 2013  #period
wmqph[,14] <- wmqph[,13] - wmqph[,1]  #cohort
dev.off()
plot.new()
plot(wmqh[,1],wmqh[,2],xlim=c(0,100),ylim=c(10,80),
main="White male BMI quintile medians and ranges from cont NHANES H (2013)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wmqph[,1],wmqph[,i],lty=ltyi[i])
points(wmqh[,1],wmqh[,i])
}                       


#White females  continuous NHANES 'h' (2013)
dmiwfh <- dmbmh1[dmbmh1$RIAGENDR==2 & dmbmh1$RIDRETH1>=1 & dmbmh1$RIDRETH1<=3,]
lwfh <- dim(dmiwfh)[1]
wfbmisph = matrix(NA,lwfh,100)
wfageh1 = dmiwfh$RIDAGEYR
wfbmih1 = dmiwfh$BMXBMI
wfrethh1 = dmiwfh$RIDRETH1
wfpopwth1 = dmiwfh$WTMEC2YR
wfoh <-order(wfageh1, na.last=TRUE)
wfageh <- wfageh1[wfoh]
wfbmih <- wfbmih1[wfoh]
wfrethh = wfrethh1[wfoh]
wfpopwth2 = wfpopwth1[wfoh]
wfpopwth =  round(poprep*wfpopwth2/(sum(wfpopwth2)/lwfh))
wfpopwth[wfpopwth > poprep*wttr]= poprep*wttr
wfnsample = sum(wfpopwth)
tmpa <- wfageh[wfageh>40]
tmpb <- wfbmih[wfageh>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wfbmihs <- rep(wfbmih,wfpopwth) + rnorm(wfnsample,0,bmisd)
wfagehs <- rep(wfageh,wfpopwth) 

wfagemaxh <- max(wfagehs)
wfquinh = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:wfagemaxh) {
        lagei = wfagehs>=i-4 & wfagehs <= i+4        #smooth over 9 year window
        wfagetemp = wfagehs[lagei]
        wfbmitemp = wfbmihs[lagei]
        if(length(wfagetemp) > 3) { 
	id=id+1
	wfquinh[id,1]<- i
	wfquinh[id,2:12] <- as.vector(quantile(wfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wfagetemp),mean(wfbmitemp)))
        maxbmiq5=max(maxbmiq5,wfquinh[id,12]-wfquinh[id,11])
        }
}
wfquinh[,12]<-wfquinh[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wfqh = wfquinh[1:id,]
ageminh=min(wfqh[,1])
agemaxh=max(wfqh[,1])
wfqph = matrix(NA,agemaxh-ageminh+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wfqh[,1],y=wfqh[,i],df=4),ageminh:agemaxh)
wfqph[,1] <- temp$x  #ages
wfqph[,i] <- temp$y  #deciles                 
} #Note: wfqph is smoothed white female decile predictor - quintile medians and ranges for 'h' data
wfqph[,13] <- 2013  #period
wfqph[,14] <- wfqph[,13] - wfqph[,1]  #cohort
dev.off()
plot.new()
plot(wfqh[,1],wfqh[,2],xlim=c(0,100),ylim=c(10,80),
main="White female BMI quintile medians and ranges from cont NHANES H (2013)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wfqph[,1],wfqph[,i],lty=ltyi[i])
points(wfqh[,1],wfqh[,i])
}                       


#Black males  continuous NHANES 'h' (2013)
dmibmh <- dmbmh1[dmbmh1$RIAGENDR==1 & dmbmh1$RIDRETH1==4,]
lbmh <- dim(dmibmh)[1]
bmbmisph = matrix(NA,lbmh,100)
bmageh1 = dmibmh$RIDAGEYR
bmbmih1 = dmibmh$BMXBMI
bmrethh1 = dmibmh$RIDRETH1
bmpopwth1 = dmibmh$WTMEC2YR
bmoh <-order(bmageh1, na.last=TRUE)
bmageh <- bmageh1[bmoh]
bmbmih <- bmbmih1[bmoh]
bmrethh = bmrethh1[bmoh]
bmpopwth2 = bmpopwth1[bmoh]
bmpopwth =  round(poprep*bmpopwth2/(sum(bmpopwth2)/lbmh))
bmpopwth[bmpopwth > poprep*wttr]= poprep*wttr
bmnsample = sum(bmpopwth)
tmpa <- bmageh[bmageh>40]
tmpb <- bmbmih[bmageh>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bmbmihs <- rep(bmbmih,bmpopwth) + rnorm(bmnsample,0,bmisd)
bmagehs <- rep(bmageh,bmpopwth) 

bmagemaxh <- max(bmagehs)
bmquinh = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:bmagemaxh) {
        lagei = bmagehs>=i-4 & bmagehs <= i+4        #smooth over 9 year window
        bmagetemp = bmagehs[lagei]
        bmbmitemp = bmbmihs[lagei]
        if(length(bmagetemp) > 3) { 
	id=id+1
	bmquinh[id,1]<- i
	bmquinh[id,2:12] <- as.vector(quantile(bmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bmagetemp),mean(bmbmitemp)))
        maxbmiq5=max(maxbmiq5,bmquinh[id,12]-bmquinh[id,11])
        }
}
bmquinh[,12]<-bmquinh[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bmqh = bmquinh[1:id,]
ageminh=min(bmqh[,1])
agemaxh=max(bmqh[,1])
bmqph = matrix(NA,agemaxh-ageminh+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bmqh[,1],y=bmqh[,i],df=4),ageminh:agemaxh)
bmqph[,1] <- temp$x  #ages
bmqph[,i] <- temp$y  #deciles                 
}   #Note: bmqph is smoothed black male decile predictor - quintile medians and ranges for 'h' data
bmqph[,13] <- 2013  #period
bmqph[,14] <- bmqph[,13] - bmqph[,1]  #cohort
dev.off()
plot.new()
plot(bmqh[,1],bmqh[,2],xlim=c(0,100),ylim=c(10,80),
main="Black male BMI quintile medians and ranges from cont NHANES H (2013)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bmqph[,1],bmqph[,i],lty=ltyi[i])
points(bmqh[,1],bmqh[,i])
}                       


#Black females  continuous NHANES 'h' (2013)
dmibfh <- dmbmh1[dmbmh1$RIAGENDR==2 & dmbmh1$RIDRETH1==4,]
lbfh <- dim(dmibfh)[1]
bfbmisph = matrix(NA,lbfh,100)
bfageh1 = dmibfh$RIDAGEYR
bfbmih1 = dmibfh$BMXBMI
bfrethh1 = dmibfh$RIDRETH1
bfpopwth1 = dmibfh$WTMEC2YR
bfoh <-order(bfageh1, na.last=TRUE)
bfageh <- bfageh1[bfoh]
bfbmih <- bfbmih1[bfoh]
bfrethh = bfrethh1[bfoh]
bfpopwth2 = bfpopwth1[bfoh]
bfpopwth =  round(poprep*bfpopwth2/(sum(bfpopwth2)/lbfh))
bfpopwth[bfpopwth > poprep*wttr]= poprep*wttr
bfnsample = sum(bfpopwth)
tmpa <- bfageh[bfageh>40]
tmpb <- bfbmih[bfageh>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bfbmihs <- rep(bfbmih,bfpopwth) + rnorm(bfnsample,0,bmisd)
bfagehs <- rep(bfageh,bfpopwth) 

bfagemaxh <- max(bfagehs)
bfquinh = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:bfagemaxh) {
        lagei = bfagehs>=i-4 & bfagehs <= i+4        #smooth over 9 year window
        bfagetemp = bfagehs[lagei]
        bfbmitemp = bfbmihs[lagei]
        if(length(bfagetemp) > 3) { 
	id=id+1
	bfquinh[id,1]<- i
	bfquinh[id,2:12] <- as.vector(quantile(bfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bfagetemp),mean(bfbmitemp)))
        maxbmiq5=max(maxbmiq5,bfquinh[id,12]-bfquinh[id,11])
        }
}
bfquinh[,12]<-bfquinh[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bfqh = bfquinh[1:id,]
ageminh=min(bfqh[,1])
agemaxh=max(bfqh[,1])
bfqph = matrix(NA,agemaxh-ageminh+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bfqh[,1],y=bfqh[,i],df=4),ageminh:agemaxh)
bfqph[,1] <- temp$x  #ages
bfqph[,i] <- temp$y  #deciles                 
} #Note: bfqph is smoothed black female decile predictor - quintile medians and ranges for 'h' data
bfqph[,13] <- 2013  #period
bfqph[,14] <- bfqph[,13] - bfqph[,1]  #cohort
dev.off()
plot.new()
plot(bfqh[,1],bfqh[,2],xlim=c(0,100),ylim=c(10,80),
main="Black female BMI quintile medians and ranges from cont NHANES H (2013)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bfqph[,1],bfqph[,i],lty=ltyi[i])
points(bfqh[,1],bfqh[,i])
}                       

save(wmqph,file = "wmqph.RData")
save(wfqph,file = "wfqph.RData")
save(bmqph,file = "bmqph.RData")
save(bfqph,file = "bfqph.RData")

#Continuous NHANES I#################################################################
matchi=dmqi$SEQN %in% bmxi$SEQN
mdmqi <- dmqi[matchi,]
matchmi=match(mdmqi$SEQN,bmxi$SEQN)
dmqseqi <- mdmqi[matchmi,]
bmki=bmxi[,keepbmcol]
dmki=dmqseqi[,keepdmcol]
dmbmi <- merge(dmki,bmki,all='TRUE')
dmbmi$SDDSRVYR=2015

ldmbmi=(!is.na(dmbmi$BMXBMI) & dmbmi$RIDAGEYR>11 & dmbmi$BMXBMI < 60)
dmbmi1=dmbmi[ldmbmi,]

#White males  continuous NHANES 'i' (2015) (all whites inc. Mexican American, Other Hispanic
dmiwmi <- dmbmi1[dmbmi1$RIAGENDR==1 & dmbmi1$RIDRETH1>=1 & dmbmi1$RIDRETH1<=3,]
lwmi <- dim(dmiwmi)[1]
wmbmispi = matrix(NA,lwmi,100)
wmagei1 = dmiwmi$RIDAGEYR
wmbmii1 = dmiwmi$BMXBMI
wmrethi1 = dmiwmi$RIDRETH1
wmpopwti1 = dmiwmi$WTMEC2YR
wmoi <-order(wmagei1, na.last=TRUE)
wmagei <- wmagei1[wmoi]
wmbmii <- wmbmii1[wmoi]
wmrethi = wmrethi1[wmoi]
wmpopwti2 = wmpopwti1[wmoi]
wmpopwti =  round(poprep*wmpopwti2/(sum(wmpopwti2)/lwmi))
wmpopwti[wmpopwti > poprep*wttr]= poprep*wttr
wmnsample = sum(wmpopwti)
tmpa <- wmagei[wmagei>40]
tmpb <- wmbmii[wmagei>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wmbmiis <- rep(wmbmii,wmpopwti) + rnorm(wmnsample,0,bmisd)
wmageis <- rep(wmagei,wmpopwti) 

wmagemaxi <- max(wmageis)
wmquini = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:wmagemaxi) {
        lagei = wmageis>=i-4 & wmageis <= i+4        #smooth over 9 year window
        wmagetemp = wmagehs[lagei]
        wmbmitemp = wmbmiis[lagei]
        if(length(wmagetemp) > 3) { 
	id=id+1
	wmquini[id,1]<- i
	wmquini[id,2:12] <- as.vector(quantile(wmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wmagetemp),mean(wmbmitemp)))
        maxbmiq5=max(maxbmiq5,wmquini[id,12]-wmquini[id,11])
        }
}
wmquini[,12]<-wmquini[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wmqi = wmquini[1:id,]
agemini=min(wmqi[,1])
agemaxi=max(wmqi[,1])
wmqpi = matrix(NA,agemaxi-agemini+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wmqi[,1],y=wmqi[,i],df=4),agemini:agemaxi)
wmqpi[,1] <- temp$x  #ages
wmqpi[,i] <- temp$y  #deciles                 
}   #Note: wmqpi is smoothed white male decile predictor - quintile medians and ranges for 'i' data
wmqpi[,13] <- 2015  #period
wmqpi[,14] <- wmqpi[,13] - wmqpi[,1]  #cohort
dev.off()
plot.new()
plot(wmqi[,1],wmqi[,2],xlim=c(0,100),ylim=c(10,80),
main="White male BMI quintile medians and ranges from cont NHANES I (2015)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wmqpi[,1],wmqpi[,i],lty=ltyi[i])
points(wmqi[,1],wmqi[,i])
}                       


#White females  continuous NHANES 'i' (2015)
dmiwfi <- dmbmi1[dmbmi1$RIAGENDR==2 & dmbmi1$RIDRETH1>=1 & dmbmi1$RIDRETH1<=3,]
lwfi <- dim(dmiwfi)[1]
wfbmispi = matrix(NA,lwfi,100)
wfagei1 = dmiwfi$RIDAGEYR
wfbmii1 = dmiwfi$BMXBMI
wfrethi1 = dmiwfi$RIDRETH1
wfpopwti1 = dmiwfi$WTMEC2YR
wfoi <-order(wfagei1, na.last=TRUE)
wfagei <- wfagei1[wfoi]
wfbmii <- wfbmii1[wfoi]
wfrethi = wfrethi1[wfoi]
wfpopwti2 = wfpopwti1[wfoi]
wfpopwti =  round(poprep*wfpopwti2/(sum(wfpopwti2)/lwfi))
wfpopwti[wfpopwti > poprep*wttr]= poprep*wttr
wfnsample = sum(wfpopwti)
tmpa <- wfagei[wfagei>40]
tmpb <- wfbmii[wfagei>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wfbmiis <- rep(wfbmii,wfpopwti) + rnorm(wfnsample,0,bmisd)
wfageis <- rep(wfagei,wfpopwti) 

wfagemaxi <- max(wfageis)
wfquini = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:wfagemaxi) {
        lagei = wfageis>=i-4 & wfageis <= i+4        #smooth over 9 year window
        wfagetemp = wfageis[lagei]
        wfbmitemp = wfbmiis[lagei]
        if(length(wfagetemp) > 3) { 
	id=id+1
	wfquini[id,1]<- i
	wfquini[id,2:12] <- as.vector(quantile(wfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wfagetemp),mean(wfbmitemp)))
        maxbmiq5=max(maxbmiq5,wfquini[id,12]-wfquini[id,11])
        }
}
wfquini[,12]<-wfquini[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wfqi = wfquini[1:id,]
agemini=min(wfqi[,1])
agemaxi=max(wfqi[,1])
wfqpi = matrix(NA,agemaxi-agemini+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wfqi[,1],y=wfqi[,i],df=4),agemini:agemaxi)
wfqpi[,1] <- temp$x  #ages
wfqpi[,i] <- temp$y  #deciles                 
} #Note: wfqpi is smoothed white female decile predictor - quintile medians and ranges for 'i' data
wfqpi[,13] <- 2015  #period
wfqpi[,14] <- wfqpi[,13] - wfqpi[,1]  #cohort
dev.off()
plot.new()
plot(wfqi[,1],wfqi[,2],xlim=c(0,100),ylim=c(10,80),
main="White female BMI quintile medians and ranges from cont NHANES I (2015)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wfqpi[,1],wfqpi[,i],lty=ltyi[i])
points(wfqi[,1],wfqi[,i])
}                       


#Black males  continuous NHANES '5' (2015)
dmibmi <- dmbmi1[dmbmi1$RIAGENDR==1 & dmbmi1$RIDRETH1==4,]
lbmi <- dim(dmibmi)[1]
bmbmispi = matrix(NA,lbmi,100)
bmagei1 = dmibmi$RIDAGEYR
bmbmii1 = dmibmi$BMXBMI
bmrethi1 = dmibmi$RIDRETH1
bmpopwti1 = dmibmi$WTMEC2YR
bmoi <-order(bmagei1, na.last=TRUE)
bmagei <- bmagei1[bmoi]
bmbmii <- bmbmii1[bmoi]
bmrethi = bmrethi1[bmoi]
bmpopwti2 = bmpopwti1[bmoi]
bmpopwti =  round(poprep*bmpopwti2/(sum(bmpopwti2)/lbmi))
bmpopwti[bmpopwti > poprep*wttr]= poprep*wttr
bmnsample = sum(bmpopwti)
tmpa <- bmagei[bmagei>40]
tmpb <- bmbmii[bmagei>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bmbmiis <- rep(bmbmii,bmpopwti) + rnorm(bmnsample,0,bmisd)
bmageis <- rep(bmagei,bmpopwti) 

bmagemaxi <- max(bmageis)
bmquini = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:bmagemaxi) {
        lagei = bmageis>=i-4 & bmageis <= i+4        #smooth over 9 year window
        bmagetemp = bmageis[lagei]
        bmbmitemp = bmbmiis[lagei]
        if(length(bmagetemp) > 3) { 
	id=id+1
	bmquini[id,1]<- i
	bmquini[id,2:12] <- as.vector(quantile(bmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bmagetemp),mean(bmbmitemp)))
        maxbmiq5=max(maxbmiq5,bmquini[id,12]-bmquini[id,11])
        }
}
bmquini[,12]<-bmquini[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bmqi = bmquini[1:id,]
agemini=min(bmqi[,1])
agemaxi=max(bmqi[,1])
bmqpi = matrix(NA,agemaxi-agemini+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bmqi[,1],y=bmqi[,i],df=4),agemini:agemaxi)
bmqpi[,1] <- temp$x  #ages
bmqpi[,i] <- temp$y  #deciles                 
}   #Note: bmqpi is smoothed black male decile predictor - quintile medians and ranges for 'i' data
bmqpi[,13] <- 2015  #period
bmqpi[,14] <- bmqpi[,13] - bmqpi[,1]  #cohort
dev.off()
plot.new()
plot(bmqi[,1],bmqi[,2],xlim=c(0,100),ylim=c(10,80),
main="Black male BMI quintile medians and ranges from cont NHANES I (2015)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bmqpi[,1],bmqpi[,i],lty=ltyi[i])
points(bmqi[,1],bmqi[,i])
}                       


#Black females  continuous NHANES 'i' (2015)
dmibfi <- dmbmi1[dmbmi1$RIAGENDR==2 & dmbmi1$RIDRETH1==4,]
lbfi <- dim(dmibfi)[1]
bfbmispi = matrix(NA,lbfi,100)
bfagei1 = dmibfi$RIDAGEYR
bfbmii1 = dmibfi$BMXBMI
bfrethi1 = dmibfi$RIDRETH1
bfpopwti1 = dmibfi$WTMEC2YR
bfoi <-order(bfagei1, na.last=TRUE)
bfagei <- bfagei1[bfoi]
bfbmii <- bfbmii1[bfoi]
bfrethi = bfrethi1[bfoi]
bfpopwti2 = bfpopwti1[bfoi]
bfpopwti =  round(poprep*bfpopwti2/(sum(bfpopwti2)/lbfi))
bfpopwti[bfpopwti > poprep*wttr]= poprep*wttr
bfnsample = sum(bfpopwti)
tmpa <- bfagei[bfagei>40]
tmpb <- bfbmii[bfagei>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bfbmiis <- rep(bfbmii,bfpopwti) + rnorm(bfnsample,0,bmisd)
bfageis <- rep(bfagei,bfpopwti) 

bfagemaxi <- max(bfageis)
bfquini = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:bfagemaxi) {
        lagei = bfageis>=i-4 & bfageis <= i+4        #smooth over 9 year window
        bfagetemp = bfageis[lagei]
        bfbmitemp = bfbmiis[lagei]
        if(length(bfagetemp) > 3) { 
	id=id+1
	bfquini[id,1]<- i
	bfquini[id,2:12] <- as.vector(quantile(bfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bfagetemp),mean(bfbmitemp)))
        maxbmiq5=max(maxbmiq5,bfquini[id,12]-bfquini[id,11])
        }
}
bfquini[,12]<-bfquini[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bfqi = bfquini[1:id,]
agemini=min(bfqi[,1])
agemaxi=max(bfqi[,1])
bfqpi = matrix(NA,agemaxi-agemini+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bfqi[,1],y=bfqi[,i],df=4),agemini:agemaxi)
bfqpi[,1] <- temp$x  #ages
bfqpi[,i] <- temp$y  #deciles                 
} #Note: bfqpi is smoothed black female decile predictor - quintile medians and ranges for 'i' data
bfqpi[,13] <- 2015  #period
bfqpi[,14] <- bfqpi[,13] - bfqpi[,1]  #cohort
dev.off()
plot.new()
plot(bfqi[,1],bfqi[,2],xlim=c(0,100),ylim=c(10,80),
main="Black female BMI quintile medians and ranges from cont NHANES I (2015)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bfqpi[,1],bfqpi[,i],lty=ltyi[i])
points(bfqi[,1],bfqi[,i])
}                       

save(wmqpi,file = "wmqpi.RData")
save(wfqpi,file = "wfqpi.RData")
save(bmqpi,file = "bmqpi.RData")
save(bfqpi,file = "bfqpi.RData")



#NHANES-III data:

dmq3ad <- read.delim(file = '../NHANES_III/Adult_NHANES_III.csv',sep=",",header = TRUE)
dmq3yo <- read.delim(file = '../NHANES_III/Youth_NHANES_III.csv',sep=",",header = TRUE)
dmq3yoyr <- dmq3yo
dmq3yoyr$HSAGEIR[dmq3yoyr$HSAGEU==1]=dmq3yoyr$HSAGEIR[dmq3yoyr$HSAGEU==1]/12 #convert months to yrs

dmq3 <- merge(dmq3ad,dmq3yoyr,all='TRUE',sort='TRUE',by=colnames(dmq3yo))
dmq3c <- data.frame(SEQN=dmq3$SEQN,SDDSRVYR=dmq3$DMPSTAT,RIAGENDR=dmq3$HSSEX,RIDAGEYR=dmq3$HSAGEIR,
         RIDRETH1=dmq3$DMARETHN,DMDEDUC2=dmq3$HFA8R,WTMEC6YR=dmq3$WTPFEX6)
dmq3c$SDDSRVYR=1990.5
dmq3c$SDDSRVYR[dmq3$SDPPHASE==1]=1989.5 #convert months to yrs
dmq3c$SDDSRVYR[dmq3$SDPPHASE==2]=1992.5 #convert months to yrs

bmx3 <- read.delim(file = '../NHANES_III/Exam_NHANES_III.csv',sep=",",header = TRUE)
bmx3c <- data.frame(SEQN=bmx3$SEQN,BMXWT=bmx3$BMPWT,BMXHT=bmx3$BMPHT,BMXBMI=bmx3$BMPBMI)
match3=dmq3c$SEQN %in% bmx3c$SEQN
mdmq3 <- dmq3c[match3,]
matchm3=match(mdmq3$SEQN,bmx3c$SEQN)
dmqseq3 <- mdmq3[matchm3,]
dmbm3 <- merge(dmqseq3,bmx3c,all='TRUE')

ldmbm3=(!is.na(dmbm3$BMXBMI) & dmbm3$RIDAGEYR>11 & dmbm3$BMXBMI < 60)
dmbm31=dmbm3[ldmbm3,]

#White males  NHANES-III  (1988-93)
dmiwm3 <- dmbm31[dmbm31$RIAGENDR==1 & (dmbm31$RIDRETH1==1 | dmbm31$RIDRETH1==3),]
lwm3 <- dim(dmiwm3)[1]
wmbmisp3 = matrix(NA,lwm3,100)
wmage31 = dmiwm3$RIDAGEYR
wmbmi31 = dmiwm3$BMXBMI
wmreth31 = dmiwm3$RIDRETH1
wmpopwt31 = dmiwm3$WTMEC6YR
wmo3 <-order(wmage31, na.last=TRUE)
wmage3 <- wmage31[wmo3]
wmbmi3 <- wmbmi31[wmo3]
wmreth3 = wmreth31[wmo3]
wmpopwt32 = wmpopwt31[wmo3]
wmpopwt3 =  round(poprep*wmpopwt32/(sum(wmpopwt32)/lwm3))
wmpopwt3[wmpopwt3 > poprep*wttr]= poprep*wttr
wmnsample = sum(wmpopwt3)
tmpa <- wmage3[wmage3>40]
tmpb <- wmbmi3[wmage3>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wmbmi3s <- rep(wmbmi3,wmpopwt3) + rnorm(wmnsample,0,bmisd)
wmage3s <- rep(wmage3,wmpopwt3) 
wmagemax3 <- max(wmage3s)

wmquin3 = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:wmagemax3) {
        lagei = wmage3s>=i-4 & wmage3s <= i+4        #smooth over 9 year window
        wmagetemp = wmage3s[lagei]
        wmbmitemp = wmbmi3s[lagei]
        if(length(wmagetemp) > 3) { 
	id=id+1
	wmquin3[id,1]<- i
	wmquin3[id,2:12] <- as.vector(quantile(wmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wmagetemp),mean(wmbmitemp)))
        maxbmiq5=max(maxbmiq5,wmquin3[id,12]-wmquin3[id,11])
        }
}
wmquin3[,12]<-wmquin3[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wmq3 = wmquin3[1:id,]
agemin3=min(wmq3[,1])
agemax3=max(wmq3[,1])
wmqp3 = matrix(NA,agemax3-agemin3+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wmq3[,1],y=wmq3[,i],df=4),agemin3:agemax3)
wmqp3[,1] <- temp$x  #ages
wmqp3[,i] <- temp$y  #deciles                 
} #Note: wmqp3 is smoothed white male decile predictor - quintile medians and ranges for '3' data
wmqp3[,13] <- 1990  #period
wmqp3[,14] <- wmqp3[,13] - wmqp3[,1]  #cohort
dev.off()
plot.new()
plot(wmq3[,1],wmq3[,2],xlim=c(0,100),ylim=c(10,80),
main="White male BMI quintile medians and ranges from NHANES III (1988-94)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wmqp3[,1],wmqp3[,i],lty=ltyi[i])
points(wmq3[,1],wmq3[,i])
}                       



#White females  NHANES-III  (1988-93)
dmiwf3 <- dmbm31[dmbm31$RIAGENDR==2 & (dmbm31$RIDRETH1==1 | dmbm31$RIDRETH1==3),]
lwf3 <- dim(dmiwf3)[1]
wfbmisp3 = matrix(NA,lwf3,100)
wfage31 = dmiwf3$RIDAGEYR
wfbmi31 = dmiwf3$BMXBMI
wfreth31 = dmiwf3$RIDRETH1
wfpopwt31 = dmiwf3$WTMEC6YR
wfo3 <-order(wfage31, na.last=TRUE)
wfage3 <- wfage31[wfo3]
wfbmi3 <- wfbmi31[wfo3]
wfreth3 = wfreth31[wfo3]
wfpopwt32 = wfpopwt31[wfo3]
wfpopwt3 =  round(poprep*wfpopwt32/(sum(wfpopwt32)/lwf3))
wfpopwt3[wfpopwt3 > poprep*wttr]= poprep*wttr
wfnsample = sum(wfpopwt3)
tmpa <- wfage3[wfage3>40]
tmpb <- wfbmi3[wfage3>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wfbmi3s <- rep(wfbmi3,wfpopwt3) + rnorm(wfnsample,0,bmisd)
wfage3s <- rep(wfage3,wfpopwt3) 
wfagemax3 <- max(wfage3s)

wfquin3 = matrix(NA,89,12)
id=0
maxbmiq5=0
for(i in 12:wfagemax3) {
        lagei = wfage3s>=i-4 & wfage3s <= i+4        #smooth over 9 year window
        wfagetemp = wfage3s[lagei]
        wfbmitemp = wfbmi3s[lagei]
        if(length(wfagetemp) > 3) { 
	id=id+1
	wfquin3[id,1]<- i
	wfquin3[id,2:12] <- as.vector(quantile(wfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wfagetemp),mean(wfbmitemp)))
        maxbmiq5=max(maxbmiq5,wfquin3[id,12]-wfquin3[id,11])
        }
}
wfquin3[,12]<-wfquin3[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wfq3 = wfquin3[1:id,]
agemin3=min(wfq3[,1])
agemax3=max(wfq3[,1])
wfqp3 = matrix(NA,agemax3-agemin3+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wfq3[,1],y=wfq3[,i],df=4),agemin3:agemax3)
wfqp3[,1] <- temp$x  #ages
wfqp3[,i] <- temp$y  #deciles                 
} #Note: wfqp3 is smoothed white female decile predictor - quintile medians and ranges for '3' data
wfqp3[,13] <- 1990  #period
wfqp3[,14] <- wfqp3[,13] - wfqp3[,1]  #cohort
dev.off()
plot.new()
plot(wfq3[,1],wfq3[,2],xlim=c(0,100),ylim=c(10,80),
main="White female BMI quintile medians and ranges from NHANES III (1988-94)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wfqp3[,1],wfqp3[,i],lty=ltyi[i])
points(wfq3[,1],wfq3[,i])
}                       


#Black males  NHANES-III  (1988-93)
dmibm3 <- dmbm31[dmbm31$RIAGENDR==1 & (dmbm31$RIDRETH1==2),]
lbm3 <- dim(dmibm3)[1]
bmbmisp3 = matrix(NA,lbm3,100)
bmage31 = dmibm3$RIDAGEYR
bmbmi31 = dmibm3$BMXBMI
bmreth31 = dmibm3$RIDRETH1
bmpopwt31 = dmibm3$WTMEC6YR
bmo3 <-order(bmage31, na.last=TRUE)
bmage3 <- bmage31[bmo3]
bmbmi3 <- bmbmi31[bmo3]
bmreth3 = bmreth31[bmo3]
bmpopwt32 = bmpopwt31[bmo3]
bmpopwt3 =  round(poprep*bmpopwt32/(sum(bmpopwt32)/lbm3))
bmpopwt3[bmpopwt3 > poprep*wttr]= poprep*wttr
bmnsample = sum(bmpopwt3)
tmpa <- bmage3[bmage3>40]
tmpb <- bmbmi3[bmage3>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bmbmi3s <- rep(bmbmi3,bmpopwt3) + rnorm(bmnsample,0,bmisd)
bmage3s <- rep(bmage3,bmpopwt3) 
bmagemax3 <- max(bmage3s)
bmquin3 = matrix(NA,89,12)
id=0
maxbmiq5=0

for(i in 12:bmagemax3) {
        lagei = bmage3s>=i-4 & bmage3s <= i+4        #smooth over 9 year window
        bmagetemp = bmage3s[lagei]
        bmbmitemp = bmbmi3s[lagei]
        if(length(bmagetemp) > 3) { 
	id=id+1
	bmquin3[id,1]<- i
	bmquin3[id,2:12] <- as.vector(quantile(bmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bmagetemp),mean(bmbmitemp)))
        maxbmiq5=max(maxbmiq5,bmquin3[id,12]-bmquin3[id,11])
        }
}
bmquin3[,12]<-bmquin3[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bmq3 = bmquin3[1:id,]
agemin3=min(bmq3[,1])
agemax3=max(bmq3[,1])
bmqp3 = matrix(NA,agemax3-agemin3+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bmq3[,1],y=bmq3[,i],df=4),agemin3:agemax3)
bmqp3[,1] <- temp$x  #ages
bmqp3[,i] <- temp$y  #deciles                 
} #Note: bmqp3 is smoothed black male decile predictor - quintile medians and ranges for '3' data
bmqp3[,13] <- 1990  #period
bmqp3[,14] <- bmqp3[,13] - bmqp3[,1]  #cohort
dev.off()
plot.new()
plot(bmq3[,1],bmq3[,2],xlim=c(0,100),ylim=c(10,80),
main="Black male BMI quintile medians and ranges from NHANES III (1988-94)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bmqp3[,1],bmqp3[,i],lty=ltyi[i])
points(bmq3[,1],bmq3[,i])
}                       

#Black females  NHANES-III  (1988-93)
dmibf3 <- dmbm31[dmbm31$RIAGENDR==2 & (dmbm31$RIDRETH1==2),]
lbf3 <- dim(dmibf3)[1]
bfbmisp3 = matrix(NA,lbf3,100)
bfage31 = dmibf3$RIDAGEYR
bfbmi31 = dmibf3$BMXBMI
bfreth31 = dmibf3$RIDRETH1
bfpopwt31 = dmibf3$WTMEC6YR
bfo3 <-order(bfage31, na.last=TRUE)
bfage3 <- bfage31[bfo3]
bfbmi3 <- bfbmi31[bfo3]
bfreth3 = bfreth31[bfo3]
bfpopwt32 = bfpopwt31[bfo3]
bfpopwt3 =  round(poprep*bfpopwt32/(sum(bfpopwt32)/lbf3))
bfpopwt3[bfpopwt3 > poprep*wttr]= poprep*wttr
bfnsample = sum(bfpopwt3)
tmpa <- bfage3[bfage3>40]
tmpb <- bfbmi3[bfage3>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bfbmi3s <- rep(bfbmi3,bfpopwt3) + rnorm(bfnsample,0,bmisd)
bfage3s <- rep(bfage3,bfpopwt3) 
bfagemax3 <- max(bfage3s)
bfquin3 = matrix(NA,89,12)
id=0
maxbmiq5=0

for(i in 12:bfagemax3) {
        lagei = bfage3s>=i-4 & bfage3s <= i+4        #smooth over 9 year window
        bfagetemp = bfage3s[lagei]
        bfbmitemp = bfbmi3s[lagei]
        if(length(bfagetemp) > 3) { 
	id=id+1
	bfquin3[id,1]<- i
	bfquin3[id,2:12] <- as.vector(quantile(bfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bfagetemp),mean(bfbmitemp)))
        maxbmiq5=max(maxbmiq5,bfquin3[id,12]-bfquin3[id,11])
        }
}
bfquin3[,12]<-bfquin3[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bfq3 = bfquin3[1:id,]
agemin3=min(bfq3[,1])
agemax3=max(bfq3[,1])
bfqp3 = matrix(NA,agemax3-agemin3+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bfq3[,1],y=bfq3[,i],df=4),agemin3:agemax3)
bfqp3[,1] <- temp$x  #ages
bfqp3[,i] <- temp$y  #deciles                 
} #Note: bfqp3 is smoothed black female decile predictor - quintile medians and ranges for '3' data
bfqp3[,13] <- 1990  #period
bfqp3[,14] <- bfqp3[,13] - bfqp3[,1]  #cohort
dev.off()
plot.new()
plot(bfq3[,1],bfq3[,2],xlim=c(0,100),ylim=c(10,80),
main="Black female BMI quintile medians and ranges from NHANES III (1988-94)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bfqp3[,1],bfqp3[,i],lty=ltyi[i])
points(bfq3[,1],bfq3[,i])
}                       

save(wmqp3,file = "wmqp3.RData")
save(wfqp3,file = "wfqp3.RData")
save(bmqp3,file = "bmqp3.RData")
save(bfqp3,file = "bfqp3.RData")



#NHANES-II data:
keep <- c("SEQN","SDDSRVYR","RIAGENDR","RIDAGEYR",
"RIDRETH1","DMDEDUC2","INDFMPIR","WTMEC2YR")
keepbmcolth <- c("SEQN","BMXWT","BMXHT","BMXBMI","BMXWAIST","BMXTHICR")

dmq2ad <- read.delim(file = '../NHANES_II/D_5010_NHANESII_medical_12yrs-74yrs_1976-80.csv',sep=",",header = TRUE)
dmq2adc <- data.frame(SEQN=dmq2ad$SEQN,SDDSRVYR=dmq2ad$N2AH0006,RIAGENDR=dmq2ad$N2AH0055,
RIDAGEYR=dmq2ad$N2AH0047,RIDRETH1=dmq2ad$N2AH0056,DMDEDUC2=dmq2ad$N2AH0062,WTMEC3YR=dmq2ad$N2AH0282,stringsAsFactors="FALSE")

dmq2yo <- read.delim(file = '../NHANES_II/D_5010_NHANESII_medical_6mo-11yrs_1976-80.csv',sep=",",header = TRUE)
dyomo <- as.numeric(as.vector(dmq2yo$N2CH0047))
dyomo[is.na(dyomo)]=0
dyoyr <- as.numeric(as.vector(dmq2yo$N2CH0045))
dyoyr[is.na(dyoyr)]=0
dyoyrsum=dyoyr+dyomo/12
dmq2yoc <- data.frame(SEQN=dmq2yo$SEQN,SDDSRVYR=dmq2yo$N2CH0006,RIAGENDR=dmq2yo$N2CH0055,
RIDAGEYR=dyoyrsum,RIDRETH1=dmq2yo$N2CH0056,DMDEDUC2=dmq2yo$N2CH0062,WTMEC3YR=dmq2yo$N2CH0282,
stringsAsFactors="FALSE")
dmq2 <- merge(dmq2adc,dmq2yoc,all='TRUE',sort='TRUE',by=colnames(dmq2yoc),stringsAsFactors="FALSE")
drace=as.vector(dmq2$RIDRETH1)
dmq2c <- dmq2

lr1=drace=="White"
lr2=drace=="Black"
lr3=drace=="Other"
dmq2c$RIDRETH1=as.vector(dmq2c$RIDRETH1)
dmq2c$RIDRETH1[lr1]=1
dmq2c$RIDRETH1[lr2]=2
dmq2c$RIDRETH1[lr3]=3

dage=as.vector(dmq2$RIAGENDR)
la1=dage=="Male"
la2=dage=="Female"
dmq2c$RIAGENDR=as.vector(dmq2c$RIAGENDR)
dmq2c$RIAGENDR[la1]=1
dmq2c$RIAGENDR[la2]=2
dmq2c$SDDSRVYR=1978


bmx2 <- read.delim(file = '../NHANES_II/D_5301_NHANES_II_anthropometry_1976-80.csv',sep=",",header = TRUE)
dhtcm <-bmx2$N2BM0418
lhcm <- (dhtcm<9999)
bmx2c <- bmx2[lhcm,]
dwtkg <-bmx2c$N2BM0412
dhtcm <-bmx2c$N2BM0418
dbmi <- (dwtkg/100/(dhtcm/1000)**2)

bmx2c <- data.frame(SEQN=bmx2c$SEQN,BMXWT=dwtkg/100,BMXHT=dhtcm/10,BMXBMI=dbmi)

match2=dmq2c$SEQN %in% bmx2c$SEQN
mdmq2 <- dmq2c[match2,]
matchm2=match(mdmq2$SEQN,bmx2c$SEQN)
dmqseq2 <- mdmq2[matchm2,]
dmbm2 <- merge(dmqseq2,bmx2c,all='TRUE')

ldmbm2=(!is.na(dmbm2$BMXBMI) & dmbm2$RIDAGEYR>11 & dmbm2$BMXBMI < 60)
dmbm21=dmbm2[ldmbm2,]

#White males  NHANES-II  (1976-80)
dmiwm2 <- dmbm21[dmbm21$RIAGENDR==1 & dmbm21$RIDRETH1==1,]
lwm2 <- dim(dmiwm2)[1]
wmbmisp2 = matrix(NA,lwm2,100)
wmage21 = dmiwm2$RIDAGEYR
wmbmi21 = dmiwm2$BMXBMI
wmreth21 = dmiwm2$RIDRETH1
wmpopwt21 = dmiwm2$WTMEC3YR
wmo2 <-order(wmage21, na.last=TRUE)
wmage2 <- wmage21[wmo2]
wmbmi2 <- wmbmi21[wmo2]
wmreth2 = wmreth21[wmo2]
wmpopwt22 = wmpopwt21[wmo2]
wmpopwt2 =  round(poprep*wmpopwt22/(sum(wmpopwt22)/lwm2))
wmpopwt2[wmpopwt2 > poprep*wttr]= poprep*wttr
wmnsample = sum(wmpopwt2)
tmpa <- wmage2[wmage2>40]
tmpb <- wmbmi2[wmage2>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wmbmi2s <- rep(wmbmi2,wmpopwt2) + rnorm(wmnsample,0,bmisd)
wmage2s <- rep(wmage2,wmpopwt2) 
wmagemax2 <- max(wmage2s)
wmquin2 = matrix(NA,89,12)
id=0
maxbmiq5=0

for(i in 12:wmagemax2) {
        lagei = wmage2s>=i-4 & wmage2s <= i+4        #smooth over 9 year window
        wmagetemp = wmage2s[lagei]
        wmbmitemp = wmbmi2s[lagei]
        if(length(wmagetemp) > 3) { 
	id=id+1
	wmquin2[id,1]<- i
	wmquin2[id,2:12] <- as.vector(quantile(wmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wmagetemp),mean(wmbmitemp)))
        maxbmiq5=max(maxbmiq5,wmquin2[id,12]-wmquin2[id,11])
        }
}
wmquin2[,12]<-wmquin2[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wmq2 = wmquin2[1:id,]
agemin2=min(wmq2[,1])
agemax2=max(wmq2[,1])
wmqp2 = matrix(NA,agemax2-agemin2+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wmq2[,1],y=wmq2[,i],df=4),agemin2:agemax2)
wmqp2[,1] <- temp$x  #ages
wmqp2[,i] <- temp$y  #deciles                 
} #Note: wmqp2 is smoothed white male decile predictor - quintile medians and ranges for '2' data
wmqp2[,13] <- 1978  #period
wmqp2[,14] <- wmqp2[,13] - wmqp2[,1]  #cohort
dev.off()
plot.new()
plot(wmq2[,1],wmq2[,2],xlim=c(0,100),ylim=c(10,80),
main="White male BMI quintile medians and ranges from NHANES II (1976-80)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wmqp2[,1],wmqp2[,i],lty=ltyi[i])
points(wmq2[,1],wmq2[,i])
}                       


#White females  NHANES-II  (1976-80)
dmiwf2 <- dmbm21[dmbm21$RIAGENDR==2 & dmbm21$RIDRETH1==1,]
lwf2 <- dim(dmiwf2)[1]
wfbmisp2 = matrix(NA,lwf2,100)
wfage21 = dmiwf2$RIDAGEYR
wfbmi21 = dmiwf2$BMXBMI
wfreth21 = dmiwf2$RIDRETH1
wfpopwt21 = dmiwf2$WTMEC3YR
wfo2 <-order(wfage21, na.last=TRUE)
wfage2 <- wfage21[wfo2]
wfbmi2 <- wfbmi21[wfo2]
wfreth2 = wfreth21[wfo2]
wfpopwt22 = wfpopwt21[wfo2]
wfpopwt2 =  round(poprep*wfpopwt22/(sum(wfpopwt22)/lwf2))
wfpopwt2[wfpopwt2 > poprep*wttr]= poprep*wttr
wfnsample = sum(wfpopwt2)
tmpa <- wfage2[wfage2>40]
tmpb <- wfbmi2[wfage2>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wfbmi2s <- rep(wfbmi2,wfpopwt2) + rnorm(wfnsample,0,bmisd)
wfage2s <- rep(wfage2,wfpopwt2) 
wfagemax2 <- max(wfage2s)
wfquin2 = matrix(NA,89,12)
id=0
maxbmiq5=0

for(i in 12:wfagemax2) {
        lagei = wfage2s>=i-4 & wfage2s <= i+4        #smooth over 9 year window
        wfagetemp = wfage2s[lagei]
        wfbmitemp = wfbmi2s[lagei]
        if(length(wfagetemp) > 3) { 
	id=id+1
	wfquin2[id,1]<- i
	wfquin2[id,2:12] <- as.vector(quantile(wfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wfagetemp),mean(wfbmitemp)))
        maxbmiq5=max(maxbmiq5,wfquin2[id,12]-wfquin2[id,11])
        }
}
wfquin2[,12]<-wfquin2[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wfq2 = wfquin2[1:id,]
agemin2=min(wfq2[,1])
agemax2=max(wfq2[,1])
wfqp2 = matrix(NA,agemax2-agemin2+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wfq2[,1],y=wfq2[,i],df=4),agemin2:agemax2)
wfqp2[,1] <- temp$x  #ages
wfqp2[,i] <- temp$y  #deciles                 
} #Note: wfqp2 is smoothed white female decile predictor - quintile medians and ranges for '2' data
wfqp2[,13] <- 1978  #period
wfqp2[,14] <- wfqp2[,13] - wfqp2[,1]  #cohort
dev.off()
plot.new()
plot(wfq2[,1],wfq2[,2],xlim=c(0,100),ylim=c(10,80),
main="White female BMI quintile medians and ranges from NHANES II (1976-80)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wfqp2[,1],wfqp2[,i],lty=ltyi[i])
points(wfq2[,1],wfq2[,i])
}                       


#Black males  NHANES-II  (1976-80)
dmibm2 <- dmbm21[dmbm21$RIAGENDR==1 & dmbm21$RIDRETH1==2,]
lbm2 <- dim(dmibm2)[1]
bmbmisp2 = matrix(NA,lbm2,100)
bmage21 = dmibm2$RIDAGEYR
bmbmi21 = dmibm2$BMXBMI
bmreth21 = dmibm2$RIDRETH1
bmpopwt21 = dmibm2$WTMEC3YR
bmo2 <-order(bmage21, na.last=TRUE)
bmage2 <- bmage21[bmo2]
bmbmi2 <- bmbmi21[bmo2]
bmreth2 = bmreth21[bmo2]
bmpopwt22 = bmpopwt21[bmo2]
bmpopwt2 =  round(poprep*bmpopwt22/(sum(bmpopwt22)/lbm2))
bmpopwt2[bmpopwt2 > poprep*wttr]= poprep*wttr
bmnsample = sum(bmpopwt2)
tmpa <- bmage2[bmage2>40]
tmpb <- bmbmi2[bmage2>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bmbmi2s <- rep(bmbmi2,bmpopwt2) + rnorm(bmnsample,0,bmisd)
bmage2s <- rep(bmage2,bmpopwt2) 
bmagemax2 <- max(bmage2s)
bmquin2 = matrix(NA,89,12)
id=0
maxbmiq5=0

for(i in 12:bmagemax2) {
        lagei = bmage2s>=i-4 & bmage2s <= i+4        #smooth over 9 year window
        bmagetemp = bmage2s[lagei]
        bmbmitemp = bmbmi2s[lagei]
        if(length(bmagetemp) > 3) { 
	id=id+1
	bmquin2[id,1]<- i
	bmquin2[id,2:12] <- as.vector(quantile(bmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bmagetemp),mean(bmbmitemp)))
        maxbmiq5=max(maxbmiq5,bmquin2[id,12]-bmquin2[id,11])
        }
}
bmquin2[,12]<-bmquin2[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bmq2 = bmquin2[1:id,]
agemin2=min(bmq2[,1])
agemax2=max(bmq2[,1])
bmqp2 = matrix(NA,agemax2-agemin2+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bmq2[,1],y=bmq2[,i],df=4),agemin2:agemax2)
bmqp2[,1] <- temp$x  #ages
bmqp2[,i] <- temp$y  #deciles                 
} #Note: bmqp2 is smoothed black male decile predictor - quintile medians and ranges for '2' data
bmqp2[,13] <- 1978  #period
bmqp2[,14] <- bmqp2[,13] - bmqp2[,1]  #cohort
dev.off()
plot.new()
plot(bmq2[,1],bmq2[,2],xlim=c(0,100),ylim=c(10,80),
main="Black male BMI quintile medians and ranges from NHANES II (1976-80)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bmqp2[,1],bmqp2[,i],lty=ltyi[i])
points(bmq2[,1],bmq2[,i])
}                       

#Black females  NHANES-II  (1976-80)
dmibf2 <- dmbm21[dmbm21$RIAGENDR==2 & dmbm21$RIDRETH1==2,]
lbf2 <- dim(dmibf2)[1]
bfbmisp2 = matrix(NA,lbf2,100)
bfage21 = dmibf2$RIDAGEYR
bfbmi21 = dmibf2$BMXBMI
bfreth21 = dmibf2$RIDRETH1
bfpopwt21 = dmibf2$WTMEC3YR
bfo2 <-order(bfage21, na.last=TRUE)
bfage2 <- bfage21[bfo2]
bfbmi2 <- bfbmi21[bfo2]
bfreth2 = bfreth21[bfo2]
bfpopwt22 = bfpopwt21[bfo2]
bfpopwt2 =  round(poprep*bfpopwt22/(sum(bfpopwt22)/lbf2))
bfpopwt2[bfpopwt2 > poprep*wttr]= poprep*wttr
bfnsample = sum(bfpopwt2)
tmpa <- bfage2[bfage2>40]
tmpb <- bfbmi2[bfage2>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bfbmi2s <- rep(bfbmi2,bfpopwt2) + rnorm(bfnsample,0,bmisd)
bfage2s <- rep(bfage2,bfpopwt2) 
bfagemax2 <- max(bfage2s)
bfquin2 = matrix(NA,89,12)
id=0
maxbmiq5=0

for(i in 12:bfagemax2) {
        lagei = bfage2s>=i-4 & bfage2s <= i+4        #smooth over 9 year window
        bfagetemp = bfage2s[lagei]
        bfbmitemp = bfbmi2s[lagei]
        if(length(bfagetemp) > 3) { 
	id=id+1
	bfquin2[id,1]<- i
	bfquin2[id,2:12] <- as.vector(quantile(bfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bfagetemp),mean(bfbmitemp)))
        maxbmiq5=max(maxbmiq5,bfquin2[id,12]-bfquin2[id,11])
        }
}
bfquin2[,12]<-bfquin2[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bfq2 = bfquin2[1:id,]
agemin2=min(bfq2[,1])
agemax2=max(bfq2[,1])
bfqp2 = matrix(NA,agemax2-agemin2+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bfq2[,1],y=bfq2[,i],df=4),agemin2:agemax2)
bfqp2[,1] <- temp$x  #ages
bfqp2[,i] <- temp$y  #deciles                 
} #Note: bfqp2 is smoothed black female decile predictor - quintile medians and ranges for '2' data
bfqp2[,13] <- 1978  #period
bfqp2[,14] <- bfqp2[,13] - bfqp2[,1]  #cohort
dev.off()
plot.new()
plot(bfq2[,1],bfq2[,2],xlim=c(0,100),ylim=c(10,80),
main="Black female BMI quintile medians and ranges from NHANES II (1976-80)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bfqp2[,1],bfqp2[,i],lty=ltyi[i])
points(bfq2[,1],bfq2[,i])
}                       

save(wmqp2,file = "wmqp2.RData")
save(wfqp2,file = "wfqp2.RData")
save(bmqp2,file = "bmqp2.RData")
save(bfqp2,file = "bfqp2.RData")




#NHANES-I data: (1971-74)
dmq1ad <- read.delim(file = '../NHANES_I/adulthistory_NHANES_I.csv',sep=",",header = TRUE)

dmq1adc <- data.frame(SEQN=dmq1ad$SEQN,SDDSRVYR=dmq1ad$N1AH0138,RIAGENDR=dmq1ad$N1AH0104,
RIDAGEYR=dmq1ad$N1AH0144,RIDRETH1=dmq1ad$N1AH0103,DMDEDUC2=dmq1ad$N1AH0112,WTMEC3YR=dmq1ad$N1AH0182,stringsAsFactors="FALSE")
dmq1adc$SDDSRVYR=1973

dmq1ado <- order(dmq1adc$SEQN)
dmq1ads <- dmq1adc[dmq1ado,]
dmq1ads$WTMEC3YR[is.na(dmq1ads$WTMEC3YR)] <- mean(dmq1ads$WTMEC3YR,na.rm=T)


bmx1 <- read.delim(file = '../NHANES_I/anthro_NHANES_I.csv',sep=",",header = TRUE)
dhtcm <-bmx1$N1BM0266
lhcm <- (dhtcm<9999)
bmx1c <- bmx1[lhcm,]
dwtkg <-bmx1c$N1BM0260
dhtcm <-bmx1c$N1BM0266
dbmi <- (dwtkg/100/(dhtcm/1000)**2)
lbmi <- (dbmi>10)

bmx1c <- data.frame(SEQN=bmx1c$SEQN,BMXWT=dwtkg/100,BMXHT=dhtcm/10,BMXBMI=dbmi)
bmx1cl <- bmx1c[lbmi,]
bmx1o <- order(bmx1cl$SEQN)
bmx1s <- bmx1cl[bmx1o,]

match1=dmq1ads$SEQN %in% bmx1s$SEQN
mdmq1 <- dmq1ads[match1,]
matchm1=bmx1s$SEQN %in% mdmq1$SEQN
bmx1sm <- bmx1s[matchm1,]

dmbm1 <- merge(mdmq1,bmx1sm,all='TRUE')

wm1 <- dmbm1[dmbm1$RIDRETH1==1 & dmbm1$RIAGENDR ==1,]
wf1 <- dmbm1[dmbm1$RIDRETH1==1 & dmbm1$RIAGENDR ==2,]
bm1 <- dmbm1[dmbm1$RIDRETH1==2 & dmbm1$RIAGENDR ==1,]
bf1 <- dmbm1[dmbm1$RIDRETH1==2 & dmbm1$RIAGENDR ==2,]

wm1_age12 <- wm1[wm1$RIDAGEYR==12,]
q15_age12 <- as.vector(quantile(wm1_age12$BMXBMI,probs = seq(0, 1, 0.2), na.rm = TRUE))
wmbmi12q1 <-wm1_age12$BMXBMI[wm1_age12$BMXBMI > 0 & wm1_age12$BMXBMI <= q15_age12[2]]
wmbmi12q2 <-wm1_age12$BMXBMI[wm1_age12$BMXBMI > q15_age12[2] & wm1_age12$BMXBMI <= q15_age12[3]]
wmbmi12q3 <-wm1_age12$BMXBMI[wm1_age12$BMXBMI > q15_age12[3] & wm1_age12$BMXBMI <= q15_age12[4]]
wmbmi12q4 <-wm1_age12$BMXBMI[wm1_age12$BMXBMI > q15_age12[4] & wm1_age12$BMXBMI <= q15_age12[5]]
wmbmi12q5 <-wm1_age12$BMXBMI[wm1_age12$BMXBMI > q15_age12[5] & wm1_age12$BMXBMI <= q15_age12[6]]
mwmbmi12 <- c(mean(wmbmi12q1), mean(wmbmi12q2), mean(wmbmi12q3), mean(wmbmi12q4), mean(wmbmi12q5))
#mwmbmi12
#[1] 15.47405 17.07899 18.22286 19.98895 24.10458

wf1_age12 <- wf1[wf1$RIDAGEYR==12,]
q15_age12 <- as.vector(quantile(wf1_age12$BMXBMI,probs = seq(0, 1, 0.2), na.rm = TRUE))
wfbmi12q1 <-wf1_age12$BMXBMI[wf1_age12$BMXBMI > 0 & wf1_age12$BMXBMI <= q15_age12[2]]
wfbmi12q2 <-wf1_age12$BMXBMI[wf1_age12$BMXBMI > q15_age12[2] & wf1_age12$BMXBMI <= q15_age12[3]]
wfbmi12q3 <-wf1_age12$BMXBMI[wf1_age12$BMXBMI > q15_age12[3] & wf1_age12$BMXBMI <= q15_age12[4]]
wfbmi12q4 <-wf1_age12$BMXBMI[wf1_age12$BMXBMI > q15_age12[4] & wf1_age12$BMXBMI <= q15_age12[5]]
wfbmi12q5 <-wf1_age12$BMXBMI[wf1_age12$BMXBMI > q15_age12[5] & wf1_age12$BMXBMI <= q15_age12[6]]
mwfbmi12 <- c(mean(wfbmi12q1), mean(wfbmi12q2), mean(wfbmi12q3), mean(wfbmi12q4), mean(wfbmi12q5))
#mwfbmi12
#[1] 15.77719 17.59702 18.93049 20.83689 25.38604


bm1_age12 <- bm1[bm1$RIDAGEYR==12,]
q15_age12 <- as.vector(quantile(bm1_age12$BMXBMI,probs = seq(0, 1, 0.2), na.rm = TRUE))
bmbmi12q1 <-bm1_age12$BMXBMI[bm1_age12$BMXBMI > 0 & bm1_age12$BMXBMI <= q15_age12[2]]
bmbmi12q2 <-bm1_age12$BMXBMI[bm1_age12$BMXBMI > q15_age12[2] & bm1_age12$BMXBMI <= q15_age12[3]]
bmbmi12q3 <-bm1_age12$BMXBMI[bm1_age12$BMXBMI > q15_age12[3] & bm1_age12$BMXBMI <= q15_age12[4]]
bmbmi12q4 <-bm1_age12$BMXBMI[bm1_age12$BMXBMI > q15_age12[4] & bm1_age12$BMXBMI <= q15_age12[5]]
bmbmi12q5 <-bm1_age12$BMXBMI[bm1_age12$BMXBMI > q15_age12[5] & bm1_age12$BMXBMI <= q15_age12[6]]
mbmbmi12 <- c(mean(bmbmi12q1), mean(bmbmi12q2), mean(bmbmi12q3), mean(bmbmi12q4), mean(bmbmi12q5))
mbmbmi12
#[1] 15.36587 16.51824 17.39467 18.15744 24.61875

bf1_age12 <- bf1[bf1$RIDAGEYR==12,]
q15_age12 <- as.vector(quantile(bf1_age12$BMXBMI,probs = seq(0, 1, 0.2), na.rm = TRUE))
bfbmi12q1 <-bf1_age12$BMXBMI[bf1_age12$BMXBMI > 0 & bf1_age12$BMXBMI <= q15_age12[2]]
bfbmi12q2 <-bf1_age12$BMXBMI[bf1_age12$BMXBMI > q15_age12[2] & bf1_age12$BMXBMI <= q15_age12[3]]
bfbmi12q3 <-bf1_age12$BMXBMI[bf1_age12$BMXBMI > q15_age12[3] & bf1_age12$BMXBMI <= q15_age12[4]]
bfbmi12q4 <-bf1_age12$BMXBMI[bf1_age12$BMXBMI > q15_age12[4] & bf1_age12$BMXBMI <= q15_age12[5]]
bfbmi12q5 <-bf1_age12$BMXBMI[bf1_age12$BMXBMI > q15_age12[5] & bf1_age12$BMXBMI <= q15_age12[6]]
mbfbmi12 <- c(mean(bfbmi12q1), mean(bfbmi12q2), mean(bfbmi12q3), mean(bfbmi12q4), mean(bfbmi12q5))
mbfbmi12
#[1] 14.91925 16.22479 18.97126 21.28143 27.29787


ldmbm1=(!is.na(dmbm1$BMXBMI) & dmbm1$RIDAGEYR>11 & dmbm1$BMXBMI < 60)
dmbm11=dmbm1[ldmbm1,]

#White males  NHANES-I  (1971-74)
dmiwm1 <- dmbm11[dmbm11$RIAGENDR==1 & dmbm11$RIDRETH1==1,]
lwm1 <- dim(dmiwm1)[1]
wmbmisp1 = matrix(NA,lwm1,100)
wmage11 = dmiwm1$RIDAGEYR
wmbmi11 = dmiwm1$BMXBMI
wmreth11 = dmiwm1$RIDRETH1
wmpopwt11 = dmiwm1$WTMEC3YR
wmo1 <-order(wmage11, na.last=TRUE)
wmage1 <- wmage11[wmo1]
wmbmi1 <- wmbmi11[wmo1]
wmreth1 = wmreth11[wmo1]
wmpopwt12 = wmpopwt11[wmo1]
wmpopwt1 =  round(poprep*wmpopwt12/(sum(wmpopwt12)/lwm1))
wmpopwt1[wmpopwt1 > poprep*wttr]= poprep*wttr
wmnsample = sum(wmpopwt1)
tmpa <- wmage1[wmage1>40]
tmpb <- wmbmi1[wmage1>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wmbmi1s <- rep(wmbmi1,wmpopwt1) + rnorm(wmnsample,0,bmisd)
wmage1s <- rep(wmage1,wmpopwt1) 
wmagemax1 <- max(wmage1s)
wmquin1 = matrix(NA,89,12)
id=0
maxbmiq5=0

for(i in 12:wmagemax1) {
        lagei = wmage1s>=i-4 & wmage1s <= i+4        #smooth over 9 year window
        wmagetemp = wmage1s[lagei]
        wmbmitemp = wmbmi1s[lagei]
        if(length(wmagetemp) > 3) { 
	id=id+1
	wmquin1[id,1]<- i
	wmquin1[id,2:12] <- as.vector(quantile(wmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wmagetemp),mean(wmbmitemp)))
        maxbmiq5=max(maxbmiq5,wmquin1[id,12]-wmquin1[id,11])
        }
}
wmquin1[,12]<-wmquin1[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wmq1 = wmquin1[1:id,]
agemin1=min(wmq1[,1])
agemax1=max(wmq1[,1])
wmqp1 = matrix(NA,agemax1-agemin1+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wmq1[,1],y=wmq1[,i],df=4),agemin1:agemax1)
wmqp1[,1] <- temp$x  #ages
wmqp1[,i] <- temp$y  #deciles                 
} #Note: wmqp1 is smoothed white male decile predictor - quintile medians and ranges for '1' data
wmqp1[,13] <- 1972  #period
wmqp1[,14] <- wmqp1[,13] - wmqp1[,1]  #cohort
dev.off()
plot.new()
plot(wmq1[,1],wmq1[,2],xlim=c(0,100),ylim=c(10,80),
main="White male BMI quintile medians and ranges from NHANES I (1971-74)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wmqp1[,1],wmqp1[,i],lty=ltyi[i])
points(wmq1[,1],wmq1[,i])
}                       

#White females  NHANES-I  (1971-74)
dmiwf1 <- dmbm11[dmbm11$RIAGENDR==2 & dmbm11$RIDRETH1==1,]
lwf1 <- dim(dmiwf1)[1]
wfbmisp1 = matrix(NA,lwf1,100)
wfage11 = dmiwf1$RIDAGEYR
wfbmi11 = dmiwf1$BMXBMI
wfreth11 = dmiwf1$RIDRETH1
wfpopwt11 = dmiwf1$WTMEC3YR
wfo1 <-order(wfage11, na.last=TRUE)
wfage1 <- wfage11[wfo1]
wfbmi1 <- wfbmi11[wfo1]
wfreth1 = wfreth11[wfo1]
wfpopwt12 = wfpopwt11[wfo1]
wfpopwt1 =  round(poprep*wfpopwt12/(sum(wfpopwt12)/lwf1))
wfpopwt1[wfpopwt1 > poprep*wttr]= poprep*wttr
wfnsample = sum(wfpopwt1)
tmpa <- wfage1[wfage1>40]
tmpb <- wfbmi1[wfage1>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wfbmi1s <- rep(wfbmi1,wfpopwt1) + rnorm(wfnsample,0,bmisd)
wfage1s <- rep(wfage1,wfpopwt1) 
wfagemax1 <- max(wfage1s)
wfquin1 = matrix(NA,89,12)
id=0
maxbmiq5=0

for(i in 12:wfagemax1) {
        lagei = wfage1s>=i-4 & wfage1s <= i+4        #smooth over 9 year window
        wfagetemp = wfage1s[lagei]
        wfbmitemp = wfbmi1s[lagei]
        if(length(wfagetemp) > 3) { 
	id=id+1
	wfquin1[id,1]<- i
	wfquin1[id,2:12] <- as.vector(quantile(wfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wfagetemp),mean(wfbmitemp)))
        maxbmiq5=max(maxbmiq5,wfquin1[id,12]-wfquin1[id,11])
        }
}
wfquin1[,12]<-wfquin1[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wfq1 = wfquin1[1:id,]
agemin1=min(wfq1[,1])
agemax1=max(wfq1[,1])
wfqp1 = matrix(NA,agemax1-agemin1+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wfq1[,1],y=wfq1[,i],df=4),agemin1:agemax1)
wfqp1[,1] <- temp$x  #ages
wfqp1[,i] <- temp$y  #deciles                 
} #Note: wfqp1 is smoothed white female decile predictor - quintile medians and ranges for '1' data
wfqp1[,13] <- 1972  #period
wfqp1[,14] <- wfqp1[,13] - wfqp1[,1]  #cohort
dev.off()
plot.new()
plot(wfq1[,1],wfq1[,2],xlim=c(0,100),ylim=c(10,80),
main="White female BMI quintile medians and ranges from NHANES I (1971-74)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wfqp1[,1],wfqp1[,i],lty=ltyi[i])
points(wfq1[,1],wfq1[,i])
}                       


#Black males  NHANES-I  (1971-74)
dmibm1 <- dmbm11[dmbm11$RIAGENDR==1 & dmbm11$RIDRETH1==2,]
lbm1 <- dim(dmibm1)[1]
bmbmisp1 = matrix(NA,lbm1,100)
bmage11 = dmibm1$RIDAGEYR
bmbmi11 = dmibm1$BMXBMI
bmreth11 = dmibm1$RIDRETH1
bmpopwt11 = dmibm1$WTMEC3YR
bmo1 <-order(bmage11, na.last=TRUE)
bmage1 <- bmage11[bmo1]
bmbmi1 <- bmbmi11[bmo1]
bmreth1 = bmreth11[bmo1]
bmpopwt12 = bmpopwt11[bmo1]
bmpopwt1 =  round(poprep*bmpopwt12/(sum(bmpopwt12)/lbm1))
bmpopwt1[bmpopwt1 > poprep*wttr]= poprep*wttr
bmnsample = sum(bmpopwt1)
tmpa <- bmage1[bmage1>40]
tmpb <- bmbmi1[bmage1>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bmbmi1s <- rep(bmbmi1,bmpopwt1) + rnorm(bmnsample,0,bmisd)
bmage1s <- rep(bmage1,bmpopwt1) 
bmagemax1 <- max(bmage1s)
bmquin1 = matrix(NA,89,12)
id=0
maxbmiq5=0

for(i in 12:bmagemax1) {
        lagei = bmage1s>=i-4 & bmage1s <= i+4        #smooth over 9 year window
        bmagetemp = bmage1s[lagei]
        bmbmitemp = bmbmi1s[lagei]
        if(length(bmagetemp) > 3) { 
	id=id+1
	bmquin1[id,1]<- i
	bmquin1[id,2:12] <- as.vector(quantile(bmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bmagetemp),mean(bmbmitemp)))
        maxbmiq5=max(maxbmiq5,bmquin1[id,12]-bmquin1[id,11])
        }
}
bmquin1[,12]<-bmquin1[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bmq1 = bmquin1[1:id,]
agemin1=min(bmq1[,1])
agemax1=max(bmq1[,1])
bmqp1 = matrix(NA,agemax1-agemin1+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bmq1[,1],y=bmq1[,i],df=4),agemin1:agemax1)
bmqp1[,1] <- temp$x  #ages
bmqp1[,i] <- temp$y  #deciles                 
} #Note: bmqp1 is smoothed black male decile predictor - quintile medians and ranges for '1' data
bmqp1[,13] <- 1972  #period
bmqp1[,14] <- bmqp1[,13] - bmqp1[,1]  #cohort
dev.off()
plot.new()
plot(bmq1[,1],bmq1[,2],xlim=c(0,100),ylim=c(10,80),
main="Black male BMI quintile medians and ranges from NHANES I (1971-74)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bmqp1[,1],bmqp1[,i],lty=ltyi[i])
points(bmq1[,1],bmq1[,i])
}                       

#Black females  NHANES-I  (1971-74)
dmibf1 <- dmbm11[dmbm11$RIAGENDR==2 & dmbm11$RIDRETH1==2,]
lbf1 <- dim(dmibf1)[1]
bfbmisp1 = matrix(NA,lbf1,100)
bfage11 = dmibf1$RIDAGEYR
bfbmi11 = dmibf1$BMXBMI
bfreth11 = dmibf1$RIDRETH1
bfpopwt11 = dmibf1$WTMEC3YR
bfo1 <-order(bfage11, na.last=TRUE)
bfage1 <- bfage11[bfo1]
bfbmi1 <- bfbmi11[bfo1]
bfreth1 = bfreth11[bfo1]
bfpopwt12 = bfpopwt11[bfo1]
bfpopwt1 =  round(poprep*bfpopwt12/(sum(bfpopwt12)/lbf1))
bfpopwt1[bfpopwt1 > poprep*wttr]= poprep*wttr
bfnsample = sum(bfpopwt1)
tmpa <- bfage1[bfage1>40]
tmpb <- bfbmi1[bfage1>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bfbmi1s <- rep(bfbmi1,bfpopwt1) + rnorm(bfnsample,0,bmisd)
bfage1s <- rep(bfage1,bfpopwt1) 
bfagemax1 <- max(bfage1s)
bfquin1 = matrix(NA,89,12)
id=0
maxbmiq5=0

for(i in 12:bfagemax1) {
        lagei = bfage1s>=i-4 & bfage1s <= i+4        #smooth over 9 year window
        bfagetemp = bfage1s[lagei]
        bfbmitemp = bfbmi1s[lagei]
        if(length(bfagetemp) > 3) { 
	id=id+1
	bfquin1[id,1]<- i
	bfquin1[id,2:12] <- as.vector(quantile(bfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bfagetemp),mean(bfbmitemp)))
        maxbmiq5=max(maxbmiq5,bfquin1[id,12]-bfquin1[id,11])
        }
}
bfquin1[,12]<-bfquin1[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bfq1 = bfquin1[1:id,]
agemin1=min(bfq1[,1])
agemax1=max(bfq1[,1])
bfqp1 = matrix(NA,agemax1-agemin1+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bfq1[,1],y=bfq1[,i],df=4),agemin1:agemax1)
bfqp1[,1] <- temp$x  #ages
bfqp1[,i] <- temp$y  #deciles                 
} #Note: bfqp1 is smoothed black female decile predictor - quintile medians and ranges for '1' data
bfqp1[,13] <- 1972  #period
bfqp1[,14] <- bfqp1[,13] - bfqp1[,1]  #cohort
dev.off()
plot.new()
plot(bfq1[,1],bfq1[,2],xlim=c(0,100),ylim=c(10,80),
main="Black female BMI quintile medians and ranges from NHANES I (1971-74)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bfqp1[,1],bfqp1[,i],lty=ltyi[i])
points(bfq1[,1],bfq1[,i])
}                       

save(wmqp1,file = "wmqp1.RData")
save(wfqp1,file = "wfqp1.RData")
save(bmqp1,file = "bmqp1.RData")
save(bfqp1,file = "bfqp1.RData")

#NHES-I data:
dmq0ad <- read.delim(file = '../NHES_1/D_1001_Demographic_NHES_1_1959-62.csv',sep=",",header = TRUE)
#begin with dummy $SDDSRVYR, $WTMEC3YR
dmq0adc <- data.frame(SEQN=dmq0ad$SEQN,SDDSRVYR=dmq0ad$H1DM0111,RIAGENDR=dmq0ad$H1DM0009,
RIDAGEYR=dmq0ad$H1DM0006,RIDRETH1=dmq0ad$H1DM0010,DMDEDUC2=dmq0ad$H1DM0017,WTMEC3YR=dmq0ad$H1DM0051,stringsAsFactors="FALSE")

dmq0adc$SDDSRVYR=1960.5

bmx0 <- read.delim(file = '../NHES_1/D_1003_PhysicalMeasurments_NHES_1_1959-62.csv',sep=",",header = TRUE)
dhtcm0 <-bmx0$H1BM0013/0.3937/10
dwtkg0 <-bmx0$H1BM0016/2.2/10
dbmi0 <- (dwtkg0/(dhtcm0/100)**2)

bmx0c <- data.frame(SEQN=bmx0$SEQN-10000,BMXWT=dwtkg0,BMXHT=dhtcm0,BMXBMI=dbmi0)

dmbm0 <- merge(dmq0adc,bmx0c,all='TRUE')

wm0 <- dmbm0[dmbm0$RIDRETH1==1 & dmbm0$RIAGENDR ==1,]
wf0 <- dmbm0[dmbm0$RIDRETH1==1 & dmbm0$RIAGENDR ==2,]
bm0 <- dmbm0[dmbm0$RIDRETH1==2 & dmbm0$RIAGENDR ==1,]
bf0 <- dmbm0[dmbm0$RIDRETH1==2 & dmbm0$RIAGENDR ==2,]


ldmbm0=(!is.na(dmbm0$BMXBMI) & dmbm0$RIDAGEYR>11 & dmbm0$BMXBMI < 60)
dmbm01=dmbm0[ldmbm0,]

#White males  NHES-I  (1959-62)
dmiwm0 <- dmbm01[dmbm01$RIAGENDR==1 & dmbm01$RIDRETH1==1 ,]
lwm0 <- dim(dmiwm0)[1]
wmbmisp0 = matrix(NA,lwm0,100)
wmage01 = dmiwm0$RIDAGEYR
wmbmi01 = dmiwm0$BMXBMI
wmreth01 = dmiwm0$RIDRETH1
wmpopwt01 = dmiwm0$WTMEC3YR
wmo0 <-order(wmage01, na.last=TRUE)
wmage0 <- wmage01[wmo0]
wmbmi0 <- wmbmi01[wmo0]
wmreth0 = wmreth01[wmo0]
wmpopwt02 = wmpopwt01[wmo0]
wmpopwt0 =  round(poprep*wmpopwt02/(sum(wmpopwt02)/lwm0))
wmpopwt0[wmpopwt0 > poprep*wttr]= poprep*wttr
wmnsample = sum(wmpopwt0)
tmpa <- wmage0[wmage0>40]
tmpb <- wmbmi0[wmage0>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wmbmi0s <- rep(wmbmi0,wmpopwt0) + rnorm(wmnsample,0,bmisd)
wmage0s <- rep(wmage0,wmpopwt0) 
wmagemax0 <- max(wmage0s)
wmquin0 = matrix(NA,89,12)

id=0
maxbmiq5=0
for(i in 12:wmagemax0) {
        lagei = wmage0s>=i-4 & wmage0s <= i+4        #smooth over 9 year window
        wmagetemp = wmage0s[lagei]
        wmbmitemp = wmbmi0s[lagei]
        if(length(wmagetemp) > 3) { 
	id=id+1
	wmquin0[id,1]<- i
	wmquin0[id,2:12] <- as.vector(quantile(wmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wmagetemp),mean(wmbmitemp)))
        maxbmiq5=max(maxbmiq5,wmquin0[id,12]-wmquin0[id,11])
        }
}
wmquin0[,12]<-wmquin0[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wmq0 = wmquin0[1:id,]
agemin0=min(wmq0[,1])
agemax0=max(wmq0[,1])
wmqp0 = matrix(NA,agemax0-agemin0+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wmq0[,1],y=wmq0[,i],df=4),agemin0:agemax0)
wmqp0[,1] <- temp$x  #ages
wmqp0[,i] <- temp$y  #deciles                 
} #Note: wmqp0 is smoothed white male decile predictor - quintile medians and ranges for '0' data
wmqp0[,13] <- 1960  #period
wmqp0[,14] <- wmqp0[,13] - wmqp0[,1]  #cohort
dev.off()
plot.new()
plot(wmq0[,1],wmq0[,2],xlim=c(0,100),ylim=c(10,80),
main="White male BMI quintile medians and ranges from NHES I (1959-62)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wmqp0[,1],wmqp0[,i],lty=ltyi[i])
points(wmq0[,1],wmq0[,i])
}                       

#White females  NHES-I  (1959-62)
dmiwf0 <- dmbm01[dmbm01$RIAGENDR==2 & dmbm01$RIDRETH1==1 ,]
lwf0 <- dim(dmiwf0)[1]
wfbmisp0 = matrix(NA,lwf0,100)
wfage01 = dmiwf0$RIDAGEYR
wfbmi01 = dmiwf0$BMXBMI
wfreth01 = dmiwf0$RIDRETH1
wfpopwt01 = dmiwf0$WTMEC3YR
wfo0 <-order(wfage01, na.last=TRUE)
wfage0 <- wfage01[wfo0]
wfbmi0 <- wfbmi01[wfo0]
wfreth0 = wfreth01[wfo0]
wfpopwt02 = wfpopwt01[wfo0]
wfpopwt0 =  round(poprep*wfpopwt02/(sum(wfpopwt02)/lwf0))
wfpopwt0[wfpopwt0 > poprep*wttr]= poprep*wttr
wfnsample = sum(wfpopwt0)
tmpa <- wfage0[wfage0>40]
tmpb <- wfbmi0[wfage0>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
wfbmi0s <- rep(wfbmi0,wfpopwt0) + rnorm(wfnsample,0,bmisd)
wfage0s <- rep(wfage0,wfpopwt0) 
wfagemax0 <- max(wfage0s)
wfquin0 = matrix(NA,89,12)
id=0
maxbmiq5=0

for(i in 12:wfagemax0) {
        lagei = wfage0s>=i-4 & wfage0s <= i+4        #smooth over 9 year window
        wfagetemp = wfage0s[lagei]
        wfbmitemp = wfbmi0s[lagei]
        if(length(wfagetemp) > 3) { 
	id=id+1
	wfquin0[id,1]<- i
	wfquin0[id,2:12] <- as.vector(quantile(wfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(wfagetemp),mean(wfbmitemp)))
        maxbmiq5=max(maxbmiq5,wfquin0[id,12]-wfquin0[id,11])
        }
}
wfquin0[,12]<-wfquin0[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
wfq0 = wfquin0[1:id,]
agemin0=min(wfq0[,1])
agemax0=max(wfq0[,1])
wfqp0 = matrix(NA,agemax0-agemin0+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=wfq0[,1],y=wfq0[,i],df=4),agemin0:agemax0)
wfqp0[,1] <- temp$x  #ages
wfqp0[,i] <- temp$y  #deciles                 
} #Note: wfqp0 is smoothed white female decile predictor - quintile medians and ranges for '0' data
wfqp0[,13] <- 1960  #period
wfqp0[,14] <- wfqp0[,13] - wfqp0[,1]  #cohort
dev.off()
plot.new()
plot(wfq0[,1],wfq0[,2],xlim=c(0,100),ylim=c(10,80),
main="White female BMI quintile medians and ranges from NHES I (1959-62)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(wfqp0[,1],wfqp0[,i],lty=ltyi[i])
points(wfq0[,1],wfq0[,i])
}                       

#Black males  NHES-I  (1959-62)
dmibm0 <- dmbm01[dmbm01$RIAGENDR==1 & dmbm01$RIDRETH1==2 ,]
lbm0 <- dim(dmibm0)[1]
bmbmisp0 = matrix(NA,lbm0,100)
bmage01 = dmibm0$RIDAGEYR
bmbmi01 = dmibm0$BMXBMI
bmreth01 = dmibm0$RIDRETH1
bmpopwt01 = dmibm0$WTMEC3YR
bmo0 <-order(bmage01, na.last=TRUE)
bmage0 <- bmage01[bmo0]
bmbmi0 <- bmbmi01[bmo0]
bmreth0 = bmreth01[bmo0]
bmpopwt02 = bmpopwt01[bmo0]
bmpopwt0 =  round(poprep*bmpopwt02/(sum(bmpopwt02)/lbm0))
bmpopwt0[bmpopwt0 > poprep*wttr]= poprep*wttr
bmnsample = sum(bmpopwt0)
tmpa <- bmage0[bmage0>40]
tmpb <- bmbmi0[bmage0>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bmbmi0s <- rep(bmbmi0,bmpopwt0) + rnorm(bmnsample,0,bmisd)
bmage0s <- rep(bmage0,bmpopwt0) 
bmagemax0 <- max(bmage0s)
bmquin0 = matrix(NA,89,12)
id=0
maxbmiq5=0

for(i in 12:bmagemax0) {
        lagei = bmage0s>=i-4 & bmage0s <= i+4        #smooth over 9 year window
        bmagetemp = bmage0s[lagei]
        bmbmitemp = bmbmi0s[lagei]
        if(length(bmagetemp) > 3) { 
	id=id+1
	bmquin0[id,1]<- i
	bmquin0[id,2:12] <- as.vector(quantile(bmbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bmagetemp),mean(bmbmitemp)))
        maxbmiq5=max(maxbmiq5,bmquin0[id,12]-bmquin0[id,11])
        }
}
bmquin0[,12]<-bmquin0[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bmq0 = bmquin0[1:id,]
agemin0=min(bmq0[,1])
agemax0=max(bmq0[,1])
bmqp0 = matrix(NA,agemax0-agemin0+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bmq0[,1],y=bmq0[,i],df=4),agemin0:agemax0)
bmqp0[,1] <- temp$x  #ages
bmqp0[,i] <- temp$y  #deciles                 
} #Note: bmqp0 is smoothed black male decile predictor - quintile medians and ranges for '0' data
bmqp0[,13] <- 1960  #period
bmqp0[,14] <- bmqp0[,13] - bmqp0[,1]  #cohort
dev.off()
plot.new()
plot(bmq0[,1],bmq0[,2],xlim=c(0,100),ylim=c(10,80),
main="Black male BMI quintile medians and ranges from NHES I (1959-62)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bmqp0[,1],bmqp0[,i],lty=ltyi[i])
points(bmq0[,1],bmq0[,i])
}                       

#Black females  NHES-I  (1959-62)
dmibf0 <- dmbm01[dmbm01$RIAGENDR==2 & dmbm01$RIDRETH1==2 ,]
lbf0 <- dim(dmibf0)[1]
bfbmisp0 = matrix(NA,lbf0,100)
bfage01 = dmibf0$RIDAGEYR
bfbmi01 = dmibf0$BMXBMI
bfreth01 = dmibf0$RIDRETH1
bfpopwt01 = dmibf0$WTMEC3YR
bfo0 <-order(bfage01, na.last=TRUE)
bfage0 <- bfage01[bfo0]
bfbmi0 <- bfbmi01[bfo0]
bfreth0 = bfreth01[bfo0]
bfpopwt02 = bfpopwt01[bfo0]
bfpopwt0 =  round(poprep*bfpopwt02/(sum(bfpopwt02)/lbf0))
bfpopwt0[bfpopwt0 > poprep*wttr]= poprep*wttr
bfnsample = sum(bfpopwt0)
tmpa <- bfage0[bfage0>40]
tmpb <- bfbmi0[bfage0>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
bfbmi0s <- rep(bfbmi0,bfpopwt0) + rnorm(bfnsample,0,bmisd)
bfage0s <- rep(bfage0,bfpopwt0) 
bfagemax0 <- max(bfage0s)
bfquin0 = matrix(NA,89,12)
id=0
maxbmiq5=0

for(i in 12:bfagemax0) {
        lagei = bfage0s>=i-4 & bfage0s <= i+4        #smooth over 9 year window
        bfagetemp = bfage0s[lagei]
        bfbmitemp = bfbmi0s[lagei]
        if(length(bfagetemp) > 3) { 
	id=id+1
	bfquin0[id,1]<- i
	bfquin0[id,2:12] <- as.vector(quantile(bfbmitemp,probs = seq(0, 1, 0.1), na.rm = TRUE))
        print(c(i,id,mean(bfagetemp),mean(bfbmitemp)))
        maxbmiq5=max(maxbmiq5,bfquin0[id,12]-bfquin0[id,11])
        }
}
bfquin0[,12]<-bfquin0[,11]+maxbmiq5  #assign largest BMI outlier based on Q5 and largest outlier identified 
bfq0 = bfquin0[1:id,]
agemin0=min(bfq0[,1])
agemax0=max(bfq0[,1])
bfqp0 = matrix(NA,agemax0-agemin0+1,14)
for(i in 2:12) {
temp <-predict(smooth.spline(x=bfq0[,1],y=bfq0[,i],df=4),agemin0:agemax0)
bfqp0[,1] <- temp$x  #ages
bfqp0[,i] <- temp$y  #deciles                 
} #Note: bfqp0 is smoothed black female decile predictor - quintile medians and ranges for '0' data
bfqp0[,13] <- 1960  #period
bfqp0[,14] <- bfqp0[,13] - bfqp0[,1]  #cohorts ranging from 1881 to 1946
dev.off()
plot.new()
plot(bfq0[,1],bfq0[,2],xlim=c(0,100),ylim=c(10,80),
main="Black female BMI quintile medians and ranges from NHES I (1959-62)",
ylab="BMI",xlab="AGE",cex.main=1,cex.lab=1)
ltyi=c(1,2,1,2,1,2,1,2,1,2,1,2)
for(i in 2:12) {
lines(bfqp0[,1],bfqp0[,i],lty=ltyi[i])
points(bfq0[,1],bfq0[,i])
}                       

save(wmqp0,file = "wmqp0.RData")
save(wfqp0,file = "wfqp0.RData")
save(bmqp0,file = "bmqp0.RData")
save(bfqp0,file = "bfqp0.RData")


#install.packages("fields")
library(fields)
#install.packages("rgcvpack")

###############################################################################################

#NHEFS data:  Longitudinal followup of NHANES-I subjects
bmx1f1 <- read.delim(file = '../NHEFS/D_N82INT_Interview_NHEFS_1982.csv',sep=",",header = TRUE)

agef1  <- bmx1f1$SUBAGE
sexf1  <- bmx1f1$SUBSEX
wtdes12f1  <- bmx1f1$K1  #1=skinny,2=slender,3=ave,4=chubby,5=very heavy,7-9 inapplic or unknown
htdes12f1  <- bmx1f1$K2  #1=very tall,2=tall,3=ave,4=short,5=very short,7-9 inapplic or unknown
wt6mof1  <- bmx1f1$K3    #1=at least 10 lb more,2=at least 10 lb less,3= about same,7-10 unknown
wtlbf1  <- bmx1f1$K4     #current weight (in pounds) 060-480
wtlb25f1  <- bmx1f1$K5   #weight at age 25 (in pounds) 070-325
wtlb25f1[wtlb25f1>990/2.2]=NA
wtlb40f1  <- bmx1f1$K6   #weight at age 40 (in pounds) 079-495
wtlb40f1[wtlb40f1>990/2.2]=NA
wtlb65f1  <- bmx1f1$K7   #weight at age 65 (in pounds) 073-365
wtlb65f1[wtlb65f1>990/2.2]=NA
bmx1f1ca <- data.frame(SEQN=bmx1f1$SEQNUM1,F1AGE=agef1,F1SEX=sexf1,
	F1HTD12=htdes12f1, F1WTD12=wtdes12f1, F1WTCUR=wtlbf1/2.2,
	F1WT25=wtlb25f1/2.2, F1WT40=wtlb40f1/2.2, F1WT65=wtlb65f1/2.2)
lwtf1 <- (bmx1f1ca$F1WTCUR < 990/2.2) & (bmx1f1ca$F1WTCUR > 0)
bmx1f1ca1 <- bmx1f1ca[lwtf1,]
bmx1f1o <- order(bmx1f1ca1$SEQN)
bmx1f1s <- bmx1f1ca1[bmx1f1o,]

###
#dmq1adc <- data.frame(SEQN=dmq1ad$SEQN,SDDSRVYR=dmq1ad$N1AH0138,RIAGENDR=dmq1ad$N1AH0104,
#RIDAGEYR=dmq1ad$N1AH0144,RIDRETH1=dmq1ad$N1AH0103,DMDEDUC2=dmq1ad$N1AH0112,WTMEC3YR=dmq1ad$N1AH0182,stringsAsFactors="FALSE")
#dmq1adc$SDDSRVYR=1973
### 

matchf1=dmbm1$SEQN %in% bmx1f1s$SEQN
mdmbm1f1 <- dmbm1[matchf1,]
matchmf1=bmx1f1s$SEQN %in% mdmbm1f1$SEQN
bmx1f1sm <- bmx1f1s[matchmf1,]
dmbm1f1 <- merge(mdmbm1f1,bmx1f1sm,all='TRUE')
lwmmec =(dmbm1f1$RIAGENDR==1 & dmbm1f1$RIDRETH1==1)
lwfmec =(dmbm1f1$RIAGENDR==2 & dmbm1f1$RIDRETH1==1)
lbmmec =(dmbm1f1$RIAGENDR==1 & dmbm1f1$RIDRETH1==2)
lbfmec =(dmbm1f1$RIAGENDR==2 & dmbm1f1$RIDRETH1==2)
dmbm1f1$WTMEC3YR[(is.na(dmbm1f1$WTMEC3YR) & lwmmec)] <- mean(dmbm1f1$WTMEC3YR[lwmmec],na.rm=T)
dmbm1f1$WTMEC3YR[(is.na(dmbm1f1$WTMEC3YR) & lwfmec)] <- mean(dmbm1f1$WTMEC3YR[lwfmec],na.rm=T)
dmbm1f1$WTMEC3YR[(is.na(dmbm1f1$WTMEC3YR) & lbmmec)] <- mean(dmbm1f1$WTMEC3YR[lbmmec],na.rm=T)
dmbm1f1$WTMEC3YR[(is.na(dmbm1f1$WTMEC3YR) & lbfmec)] <- mean(dmbm1f1$WTMEC3YR[lbfmec],na.rm=T)

bmi1f1 <- data.frame(SEQN=dmbm1f1$SEQN, SEX=dmbm1f1$RIAGENDR, RACE=dmbm1f1$RIDRETH1,
HTD12=dmbm1f1$F1HTD12, WTD12=dmbm1f1$F1WTD12,HEIGHT=dmbm1f1$BMXHT,
BMI25=dmbm1f1$F1WT25/((dmbm1f1$BMXHT/100)^2),
BMI40=dmbm1f1$F1WT40/((dmbm1f1$BMXHT/100)^2), 
BMI65=dmbm1f1$F1WT65/((dmbm1f1$BMXHT/100)^2),
AGE1=dmbm1f1$RIDAGEYR, BMI1=dmbm1f1$BMXBMI,
AGEF1=dmbm1f1$F1AGE, BMIF1=dmbm1f1$F1WTCUR/((dmbm1f1$BMXHT/100)^2),
WTMEC3YR=dmbm1f1$WTMEC3YR)

#### 1986
bmx1f2 <- read.delim(file = '../NHEFS/D_N86INT_Interview_NHEFS_1986.csv',sep=",",header = TRUE)
agef2  <- bmx1f2$AGECF
sexf2  <- bmx1f2$SUBSEX
wtlbf2  <- bmx1f2$SWEIGHT
lwtf2 <- (wtlbf2 < 990/2.2) & (wtlbf2 > 0) 
bmx1f2ca <- data.frame(SEQN=bmx1f2$SEQNO,F2AGE=agef2, F2WTCUR=wtlbf2)
bmx1f2ca1 <- bmx1f2ca[lwtf2,]
lagef2 <- (agef2 > 0)
bmx1f2ca2 <- bmx1f2ca1[lagef2,]
bmx1f2o <- order(bmx1f2ca2$SEQN)
bmx1f2s <- bmx1f2ca2[bmx1f2o,]

matchf2=dmbm1$SEQN %in% bmx1f2s$SEQN
mdmbm1f2 <- dmbm1[matchf2,]
matchmf2=bmx1f2s$SEQN %in% mdmbm1f2$SEQN
bmx1f2sm <- bmx1f2s[matchmf2,]
dmbm1f2 <- merge(mdmbm1f2,bmx1f2sm,all='TRUE')

bmi1f2 <- data.frame(SEQN=dmbm1f2$SEQN, SEX=dmbm1f2$RIAGENDR, RACE=dmbm1f2$RIDRETH1,
HEIGHT=dmbm1f2$BMXHT,
AGEF2=dmbm1f2$F2AGE, BMIF2=dmbm1f2$F2WTCUR/2.2/((dmbm1f2$BMXHT/100)^2))



####1987
bmx1f3 <- read.delim(file = '../NHEFS/D_N87INT_Interview_NHEFS_1987.csv',sep=",",header = TRUE)
agef3  <- bmx1f3$AGENOW
sexf3  <- bmx1f3$SUBSEX
wtlbf3  <- bmx1f3$WEIGHNOW
lwtf3 <- (wtlbf3 < 990/2.2) &  (wtlbf3 > 0)
bmx1f3ca <- data.frame(SEQN=bmx1f3$SEQNO,F3AGE=agef3, F3WTCUR=wtlbf3)
bmx1f3ca1 <- bmx1f3ca[lwtf3,]
lagef3 <- (agef3 > 0)
bmx1f3ca2 <- bmx1f3ca1[lagef3,]
bmx1f3o <- order(bmx1f3ca2$SEQN)
bmx1f3s <- bmx1f3ca2[bmx1f3o,]

matchf3=dmbm1$SEQN %in% bmx1f3s$SEQN
mdmbm1f3 <- dmbm1[matchf3,]
matchmf3=bmx1f3s$SEQN %in% mdmbm1f3$SEQN
bmx1f3sm <- bmx1f3s[matchmf3,]
dmbm1f3 <- merge(mdmbm1f3,bmx1f3sm,all='TRUE')

bmi1f3 <- data.frame(SEQN=dmbm1f3$SEQN, SEX=dmbm1f3$RIAGENDR, RACE=dmbm1f3$RIDRETH1,
HEIGHT=dmbm1f3$BMXHT,
AGEF3=dmbm1f3$F3AGE, BMIF3=dmbm1f3$F3WTCUR/2.2/((dmbm1f3$BMXHT/100)^2))






bmx1f4 <- read.delim(file = '../NHEFS/D_N92INT_Interview_NHEFS_1992.csv',sep=",",header = TRUE)
agef4  <- bmx1f4$NAGE
sexf4  <- bmx1f4$LSSEX
wtlbf4  <- bmx1f4$WEIGHNOW
lwtf4 <- (wtlbf4 < 990/2.2) &  (wtlbf4 > 0)
bmx1f4ca <- data.frame(SEQN=bmx1f4$HANESEQ,F4AGE=agef4, F4WTCUR=wtlbf4)
bmx1f4ca1 <- bmx1f4ca[lwtf4,]
lagef4 <- (agef4 > 0)
bmx1f4ca2 <- bmx1f4ca1[lagef4,]
bmx1f4o <- order(bmx1f4ca2$SEQN)
bmx1f4s <- bmx1f4ca2[bmx1f4o,]

matchf4=dmbm1$SEQN %in% bmx1f4s$SEQN
mdmbm1f4 <- dmbm1[matchf4,]
matchmf4=bmx1f4s$SEQN %in% mdmbm1f4$SEQN
bmx1f4sm <- bmx1f4s[matchmf4,]
dmbm1f4 <- merge(mdmbm1f4,bmx1f4sm,all='TRUE')

bmi1f4 <- data.frame(SEQN=dmbm1f4$SEQN, SEX=dmbm1f4$RIAGENDR, RACE=dmbm1f4$RIDRETH1,
HEIGHT=dmbm1f4$BMXHT,
AGEF4=dmbm1f4$F4AGE, BMIF4=dmbm1f4$F4WTCUR/2.2/((dmbm1f4$BMXHT/100)^2))

bmi1f1f2 <- merge(bmi1f1,bmi1f2,all='TRUE',sort='TRUE')
bmi1f1f2f3 <- merge(bmi1f1f2,bmi1f3,all='TRUE',sort='TRUE')
bmi1f1f2f3f4 <- merge(bmi1f1f2f3,bmi1f4,all='TRUE',sort='TRUE')
lbmiall <- !is.na(bmi1f1f2f3f4$AGE1) & !is.na(bmi1f1f2f3f4$BMI1)
bmiall <- bmi1f1f2f3f4[lbmiall,]


#White males  longitudinal (1971-74)
bmiallwm <- bmiall[bmiall$RACE==1 & bmiall$SEX==1,] #White males  N  (1971-74)
nsample=5
wmages = matrix(NA,nsample*dim(bmiallwm)[1],9) #ages -resample BMI age 12 and spline with all data
wmbmis = matrix(NA,nsample*dim(bmiallwm)[1],9) #bmis -resample BMI age 12 and spline with all data
wmwgts = matrix(NA,nsample*dim(bmiallwm)[1],5) #pop weights,sex,rac,seg with resampling at age 12
indx1=0
indx2=0
for(j in 1:nsample) {                 #resample BMI at age 12 
        nwm = dim(bmiallwm)[1]
	wmage = matrix(NA,nwm,9) #age ranges from 25 to 95, 12-100 across all data
	wmbmi = matrix(NA,nwm,9) #bmi ranges from 13.6 to 52.6
	wmwgt = matrix(NA,nwm,5) #pop weight (seqn, sex, race, WTMEC3YR,bc1=1972-AGE1)
	#wmbc1 = 1972 - bmiallwm$AGE1          #51 birth cohorts 1897-1947, AGE1 from 25-75
	#wmbc1i = wmbc1-1880                   #first cohort is 1881, 122 birth cohorts possible 
	lwm1=length(wmbmi[bmiallwm$WTD12==1,1]) 
	wmbmi[bmiallwm$WTD12==1,1] =sample(wmbmi12q1,lwm1,replace=T) + rnorm(lwm1,0,5)
	lwm2=length(wmbmi[bmiallwm$WTD12==2,1]) 
	wmbmi[bmiallwm$WTD12==2,1] =sample(wmbmi12q2,lwm2,replace=T) + rnorm(lwm2,0,5)
	lwm3=length(wmbmi[bmiallwm$WTD12==3,1]) 
	wmbmi[bmiallwm$WTD12==3,1] =sample(wmbmi12q3,lwm3,replace=T) + rnorm(lwm3,0,5)
	lwm4=length(wmbmi[bmiallwm$WTD12==4,1]) 
	wmbmi[bmiallwm$WTD12==4,1] =sample(wmbmi12q4,lwm4,replace=T) + rnorm(lwm4,0,5)
	lwm5=length(wmbmi[bmiallwm$WTD12==5,1]) 
	wmbmi[bmiallwm$WTD12==5,1] =sample(wmbmi12q5,lwm5,replace=T) + rnorm(lwm5,0,5)
	lwm7=length(wmbmi[bmiallwm$WTD12>=7,1]) 
	wmbmi[bmiallwm$WTD12>=7,1] =sample(wmbmi12q3,lwm7,replace=T) + rnorm(lwm7,0,5)
	wmage[,1]=12
	wmage[is.na(wmbmi[,1]),1]=NA
        wmwgt[,1]=bmiallwm$SEQN
	wmbmi[,2] =bmiallwm$BMI25 + rnorm(nwm,0,2)
	wmage[,2]=25
	wmage[is.na(wmbmi[,2]),2]=NA
        wmwgt[,2]=bmiallwm$SEX
	wmbmi[,3] =bmiallwm$BMI40 + rnorm(nwm,0,2)
	wmage[,3]=40
	wmage[is.na(wmbmi[,3]),3]=NA
        wmwgt[,3]=bmiallwm$RACE
	wmbmi[,4] =bmiallwm$BMI65 + rnorm(nwm,0,2)
	wmage[,4]=65
	wmage[is.na(wmbmi[,4]),4]=NA
        wmwgt[,4]=bmiallwm$WTMEC3YR
	wmbmi[,5]=bmiallwm$BMI1
	wmage[,5]=bmiallwm$AGE1
	wmage[is.na(wmbmi[,5]),5]=NA
        wmwgt[,5]=1972-bmiallwm$AGE1
	wmbmi[,6]=bmiallwm$BMIF1
	wmage[,6]=bmiallwm$AGEF1
	wmage[is.na(wmbmi[,6]),6]=NA
	wmbmi[,7]=bmiallwm$BMIF2
	wmage[,7]=bmiallwm$AGEF2
	wmage[is.na(wmbmi[,7]),7]=NA
	wmbmi[,8]=bmiallwm$BMIF3
	wmage[,8]=bmiallwm$AGEF3
	wmage[is.na(wmbmi[,8]),8]=NA
	wmbmi[,9]=bmiallwm$BMIF4
	wmage[,9]=bmiallwm$AGEF4
	wmage[is.na(wmbmi[,9]),9]=NA
	lwmbmi = wmbmi < 13

	wmbmi[lwmbmi] = NA
	wmage[lwmbmi] = NA
        indx1=indx2+1
        indx2=indx2+nwm
        delind=indx2-indx1+1
	wmages[indx1:indx2,] <- wmage   #ages
	wmbmis[indx1:indx2,] <- wmbmi   #bmi values
	wmwgts[indx1:indx2,] <- wmwgt   #bmi values
}

lwmall <- dim(wmbmis)[1]
wmpopwtall1 = wmwgts[,4] 
wmpopwtall =  round(poprep*wmpopwtall1/(sum(wmpopwtall1)/lwmall))
wmpopwtall[wmpopwtall > poprep*wttr]= poprep*wttr
wmnsample = sum(wmpopwtall)

wmagealls = matrix(NA,wmnsample,9) #include pop weights
wmbmialls = matrix(NA,wmnsample,9) #in

tmpa <- wmage[wmage>40] 
tmpb <- wmbmi[wmage>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
for(j in 1:9) {
wmbmialls[,j] <- rep(wmbmis[,j],wmpopwtall) + rnorm(wmnsample,0,bmisd)
wmagealls[,j] <- rep(wmages[,j],wmpopwtall) 
}
wmwgtalls <- rep(wmwgts[,4],wmpopwtall) 
wmbc1alls <- rep(wmwgts[,5],wmpopwtall) 

wmbmisp = matrix(NA,wmnsample,101)
wgt <-  c(0.25,0.5,0.5,0.5,1,1,1,1,1)  #discount est or recalled weight at ages 12, 25,40,65

for(i in 1:wmnsample) {
wmo <-order(wmagealls[i,], na.last=TRUE)
wmoage <- wmagealls[i,wmo]
wmobmi <- wmbmialls[i,wmo]
wmowgt <- wgt[wmo]
wmbci <- wmbc1alls[i]
wmonaage <- !is.na(wmoage)
wma <- wmoage[wmonaage]
wmb <- wmobmi[wmonaage]
wmw <- wmowgt[wmonaage]
ulwma=length(unique(wma))
lwma=length(wma)
if(ulwma >3 & min(wmb)>12.) {
#print(i);print(wma);print(wmb);print(wmw)
xf=wma[1]; xl=wma[lwma]
xp=c(xf:xl)
spf <-smooth.spline(x=wma,y=wmb,w=wmw,df=lwma-2)
spo <-predict(spf,xp)
wmbmisp[i,xp]=spo$y
wmbmisp[i,1]=max(spo$x)
}
}
wmbmisp[,101]=wmbc1alls
firstbc=range(wmbmisp[,101],na.rm=T)[1]    #(firstbc = 1897)
lastbc=range(wmbmisp[,101],na.rm=T)[2]     #(lastbc = 1947)
rangebc=lastbc-firstbc+1
firstage=range(wmages,na.rm=T)[1]          #firstage = 12
lastage=range(wmages,na.rm=T)[2]           #lastage = 95
rangeage=lastage-firstage+1

ageminlf=firstage
agemaxlf=lastage
wmqplft = matrix(NA,rangeage*rangebc,14)
indx1=0
indx2=0
for(j in 1:rangebc) {                   #cohorts
	#wmquin = matrix(NA,rangeage,14)
	wmquin = matrix(NA,lastage,14)
        lbctemp = (wmbmisp[,101]==(j+firstbc-1) & !is.na(wmbmisp[,101])) #51 birth cohorts from 1897-1947
        bctemp <- wmbmisp[lbctemp,]  #51 birth cohorts from 1897-1947
        id=0
	for(i in 12:lastage) {
          lagei = wmages>=i-4 & wmages <= i+4 & !is.na(wmages)        #smooth over 9 year window
          wmagetemp = wmages[lagei]
          wmbmitemp = wmbmis[lagei]
          #print(i);print(j);print(unique(bctemp[,i]))

          if(length(unique(bctemp[,i])) > 3 ) { 
           wmquan=as.vector(quantile(bctemp[,i],probs = seq(0, 1, 0.1),
                                   na.rm = TRUE))
	   id=id+1
		#id=i-11
		wmquin[id,1]<- i
		#wmquin[id,2:12] <- as.vector(quantile(wmbmisp[,i],probs = seq(0, 1, 0.1), 
		wmquin[id,2:12] <- wmquan
                wmquin[id,14] <- firstbc+j-1
                wmquin[id,13] <- firstbc+j-1+i
	  }
        }
        indx1=indx2+1
        indx2=indx2+id
        delind=indx2-indx1+1
        wmquint=wmquin[1:id,]
        print(j);print(wmquint)
	for(k in 2:12) {
	temp <-predict(smooth.spline(x=wmquint[,1],y=wmquint[,k],df=4),ageminlf:agemaxlf)
	wmqplft[indx1:indx2,1] <- temp$x[1:delind]  #ages
	wmqplft[indx1:indx2,k] <- temp$y[1:delind]  #deciles                 
	} #Note: wmqplft is smoothed white male quintile median and ranges for 'lf' data by cohort

	wmqplft[indx1:indx2,13] <- wmquin[1:delind,13]  #cohort
	wmqplft[indx1:indx2,14] <- wmquin[1:delind,14]  #perod
}
wmqplf <- wmqplft[1:indx2,]
wmq12p<-wmqplf[,4]                      #BMI 1-2 quintile break by age, for all years and birth cohorts
wmq23p<-wmqplf[,6]                      #BMI 2-3 quintile break by age
wmq34p<-wmqplf[,8]                      #BMI 3-4 quintile break by age
wmq45p<-wmqplf[,10]                     #BMI 4-5 quintile break by age
wmq56p<-wmqplf[,12]                     #BMI upper range 5 quintile break by age

wmquinm = matrix(NA,82,6)
wmbmiq = matrix(NA,wmnsample,100)
tup = matrix(0,100,5)
tup1 = matrix(0,100,5)
tdn = matrix(0,100,5)
tdn1 = matrix(0,100,5)
tsm = matrix(0,100,5)
wmtupdn = matrix(0,100,5)
count1=c(rep(1,wmnsample))
for(i in 12:93) {
	id=i-11
	wmquinm[id,1] <- i
        t1 <-mean(wmbmisp[(wmbmisp[,i]>=12 & wmbmisp[,i] < wmq12p[id]),i],na.rm=TRUE)
        t2 <-mean(wmbmisp[(wmbmisp[,i]>=wmq12p[id] & wmbmisp[,i] < wmq23p[id]),i],na.rm=TRUE)
        t3 <-mean(wmbmisp[(wmbmisp[,i]>=wmq23p[id] & wmbmisp[,i] < wmq34p[id]),i],na.rm=TRUE)
        t4 <-mean(wmbmisp[(wmbmisp[,i]>=wmq34p[id] & wmbmisp[,i] < wmq45p[id]),i],na.rm=TRUE)
        t5 <-mean(wmbmisp[(wmbmisp[,i]>=wmq45p[id] & wmbmisp[,i] < wmq56p[id]),i],na.rm=TRUE)
	wmquinm[id,2:6] <- c(t1,t2,t3,t4,t5)
        test1=(wmbmisp[,i]>=12 & (wmbmisp[,i] < wmq12p[id]) & !is.na(wmbmisp[,i]))
        test1p=(wmbmisp[,i-1]>=12 & (wmbmisp[,i-1] < wmq12p[id-1]) &!is.na(wmbmisp[,i]))
        wmbmiq[test1,i]=1
        test2=(wmbmisp[,i]>=wmq12p[id] & (wmbmisp[,i] < wmq23p[id]) & !is.na(wmbmisp[,i]))
        test2p=(wmbmisp[,i-1]>=wmq12p[id-1] & (wmbmisp[,i-1] < wmq23p[id-1]) 
                               & !is.na(wmbmisp[,i]))
        wmbmiq[test2,i]=2
        test3=(wmbmisp[,i]>=wmq23p[id] & wmbmisp[,i] < wmq34p[id])
        test3p=(wmbmisp[,i-1]>=wmq23p[id-1] & wmbmisp[,i-1] < wmq34p[id-1])
        wmbmiq[test3,i]=3
        test4=(wmbmisp[,i]>=wmq34p[id] & wmbmisp[,i] < wmq45p[id])
        test4p=(wmbmisp[,i-1]>=wmq34p[id-1] & wmbmisp[,i-1] < wmq45p[id-1])
        wmbmiq[test4,i]=4
        test5=(wmbmisp[,i]>=wmq45p[id] & wmbmisp[,i] < 60)
        test5p=(wmbmisp[,i-1]>=wmq45p[id-1] & wmbmisp[,i-1] < 60)
        wmbmiq[test5,i]=5
        test12=test1p & test2
        test23=test2p & test3
        test34=test3p & test4
        test45=test4p & test5
        tup1[i,1]=sum(count1[test12],na.rm=TRUE)
        tup1[i,2]=sum(count1[test23],na.rm=TRUE)
        tup1[i,3]=sum(count1[test34],na.rm=TRUE)
        tup1[i,4]=sum(count1[test45],na.rm=TRUE)
        test21=test2p & test1
        test32=test3p & test2
        test43=test4p & test3
        test54=test5p & test4
        tdn1[i,2]=sum(count1[test21],na.rm=TRUE)
        tdn1[i,3]=sum(count1[test32],na.rm=TRUE)
        tdn1[i,4]=sum(count1[test43],na.rm=TRUE)
        tdn1[i,5]=sum(count1[test54],na.rm=TRUE)
        tsm[i,1]=sum(count1[test1 & test1p],na.rm=TRUE)
        tsm[i,2]=sum(count1[test2 & test2p],na.rm=TRUE)
        tsm[i,3]=sum(count1[test3 & test3p],na.rm=TRUE)
        tsm[i,4]=sum(count1[test4 & test4p],na.rm=TRUE)
        tsm[i,5]=sum(count1[test5 & test5p],na.rm=TRUE)
        tup[i,1]=tup1[i,1]/tsm[i,1]
        tup[i,2]=tup1[i,2]/tsm[i,2]
        tup[i,3]=tup1[i,3]/tsm[i,3]
        tup[i,4]=tup1[i,4]/tsm[i,4]

        tdn[i,2]=tdn1[i,2]/tsm[i,2]
        tdn[i,3]=tdn1[i,3]/tsm[i,3]
        tdn[i,4]=tdn1[i,4]/tsm[i,4]
        tdn[i,5]=tdn1[i,5]/tsm[i,5]
        wmtupdn[i,1]=i
        wmtupdn[i,2]=(tup[i,1]+tdn[i,2])/2
        wmtupdn[i,3]=(tup[i,2]+tdn[i,3])/2
        wmtupdn[i,4]=(tup[i,3]+tdn[i,4])/2
        wmtupdn[i,5]=(tup[i,4]+tdn[i,5])/2
        print(i);print(c(tup1[i,1:5]))
        print(i);print(c(tdn1[i,1:5]))
        print(i);print(c(tsm[i,1:5]))
        print(i);print(c(tup[i,1:5]))
        print(i);print(c(tdn[i,1:5]))
        print(i);print(c(wmtupdn[i,1:5]))
        #wmbmiq[is.na(wmbmisp[,i]),i]=NA
        #wmquin[index,2] <- min(wmbmisp[index,12:94],na.rm=TRUE)
        #wmquin[index,7] <- max(wmbmisp[index,12:94],na.rm=TRUE)
print(wmquinm[id,1:6]);
}

wmq1m <-smooth.spline(x=wmquinm[,1],y=wmquinm[,2],df=7)
wmq2m <-smooth.spline(x=wmquinm[,1],y=wmquinm[,3],df=7)
wmq3m <-smooth.spline(x=wmquinm[,1],y=wmquinm[,4],df=7)
wmq4m <-smooth.spline(x=wmquinm[,1],y=wmquinm[,5],df=7)
wmq5m <-smooth.spline(x=wmquinm[,1],y=wmquinm[,6],df=7)

wmq1p <-predict(wmq1m,12:100)
wmq2p <-predict(wmq2m,12:100)
wmq3p <-predict(wmq3m,12:100)
wmq4p <-predict(wmq4m,12:100)
wmq5p <-predict(wmq5m,12:100)

wmq12tr <-smooth.spline(x=wmtupdn[13:90,1],y=wmtupdn[13:90,2],df=7)
wmq23tr <-smooth.spline(x=wmtupdn[13:89,1],y=wmtupdn[13:89,3],df=7)
wmq34tr <-smooth.spline(x=wmtupdn[13:89,1],y=wmtupdn[13:89,4],df=7)
wmq45tr <-smooth.spline(x=wmtupdn[13:89,1],y=wmtupdn[13:89,5],df=7)

wmq12trp <-predict(wmq12tr,12:100)
wmq23trp <-predict(wmq23tr,12:100)
wmq34trp <-predict(wmq34tr,12:100)
wmq45trp <-predict(wmq45tr,12:100)


save(wmq12trp,file = "wmq12trp.RData")
save(wmq23trp,file = "wmq23trp.RData")
save(wmq34trp,file = "wmq34trp.RData")
save(wmq45trp,file = "wmq45trp.RData")






dev.off()
plot.new()                                 #
plot(wmquinm[,1],wmquinm[,2],xlim=c(0,100),
main="White male BMI quintile means from longitudinal followup in NHEFS*",
ylim=c(10,40),ylab="BMI - white males",xlab="AGE",cex.main=1.7,cex.lab=1.5)
text(18,10,"*Based on individual level longitudinal data from National Health and Nutrition Examination Survey I (NHANES-I) (1971-1975)\n and NHANES-I Epidemiologic Followup Studies (NHEFS)  (1982-1984, 1986, 1987, and 1992)",
adj=c(0.2,0),cex=1) 
points(wmquinm[,1],wmquinm[,3])
points(wmquinm[,1],wmquinm[,4])
points(wmquinm[,1],wmquinm[,5])
points(wmquinm[,1],wmquinm[,6])
lines(wmq1p$x,wmq1p$y)
lines(wmq2p$x,wmq2p$y)
lines(wmq3p$x,wmq3p$y)
lines(wmq4p$x,wmq4p$y)
lines(wmq5p$x,wmq5p$y)
dev.copy2pdf(file="WMBMI-NHEFS-quintiles.pdf",width=12,height=8.)

leg.txt=c("Q1 <-> Q2","Q2 <-> Q3","Q3 <-> Q4","Q4 <-> Q5")
dev.off()
plot.new()                                 #
plot(wmq12trp$x,wmq12trp$y,xlim=c(0,100),type='l',
main="Markov transition rates between white male BMI quintiles from NHEFS followup*",
ylim=c(0,.4),ylab="Inter-quintile transition rate (per year)",xlab="AGE",cex.main=1.7,cex.lab=1.5)
text(18,-0.005,"*Based on individual level longitudinal data from National Health and Nutrition Examination Survey I (NHANES-I) (1971-1975)\n and NHANES-I Epidemiologic Followup Studies (NHEFS)  (1982-1984, 1986, 1987, and 1992)",
adj=c(0.2,0),cex=1) 
legend("top",border="black",title="Markov transition rates (per year) between BMI quintiles",leg.txt,lty=c(1,2,3,4),cex=1.5,bty="n")
lines(wmq23trp$x,wmq23trp$y,lty=2)
lines(wmq34trp$x,wmq34trp$y,lty=3)
lines(wmq45trp$x,wmq45trp$y,lty=4)
dev.copy2pdf(file="WM-Markov-NHEFS-quintiles.pdf",width=12,height=8.)




########### White females
bmiallwf <- bmiall[bmiall$RACE==1 & bmiall$SEX==2,] #White females  N  (1959-62)
nsample=5
wfages = matrix(NA,nsample*dim(bmiallwf)[1],9) #ages -resample BMI age 12 and spline with all data
wfbmis = matrix(NA,nsample*dim(bmiallwf)[1],9) #bmis -resample BMI age 12 and spline with all data
wfwgts = matrix(NA,nsample*dim(bmiallwf)[1],5) #pop weights,sex,rac,seg with resampling at age 12
indx1=0
indx2=0
for(j in 1:nsample) {                 #resample BMI at age 12 
        nwf = dim(bmiallwf)[1]
	wfage = matrix(NA,nwf,9) #age ranges from 25 to 95, 12-100 across all data
	wfbmi = matrix(NA,nwf,9) #bmi ranges from 13.6 to 52.6
	wfwgt = matrix(NA,nwf,5) #pop weight (seqn, sex, race, WTMEC3YR,bc1=1972-AGE1)
	#wfbc1 = 1972 - bmiallwf$AGE1          #51 birth cohorts 1897-1947, AGE1 from 25-75
	#wfbc1i = wfbc1-1880                   #first cohort is 1881, 122 birth cohorts possible 
	lwf1=length(wfbmi[bmiallwf$WTD12==1,1]) 
	wfbmi[bmiallwf$WTD12==1,1] =sample(wfbmi12q1,lwf1,replace=T) + rnorm(lwf1,0,5)
	lwf2=length(wfbmi[bmiallwf$WTD12==2,1]) 
	wfbmi[bmiallwf$WTD12==2,1] =sample(wfbmi12q2,lwf2,replace=T) + rnorm(lwf2,0,5)
	lwf3=length(wfbmi[bmiallwf$WTD12==3,1]) 
	wfbmi[bmiallwf$WTD12==3,1] =sample(wfbmi12q3,lwf3,replace=T) + rnorm(lwf3,0,5)
	lwf4=length(wfbmi[bmiallwf$WTD12==4,1]) 
	wfbmi[bmiallwf$WTD12==4,1] =sample(wfbmi12q4,lwf4,replace=T) + rnorm(lwf4,0,5)
	lwf5=length(wfbmi[bmiallwf$WTD12==5,1]) 
	wfbmi[bmiallwf$WTD12==5,1] =sample(wfbmi12q5,lwf5,replace=T) + rnorm(lwf5,0,5)
	lwf7=length(wfbmi[bmiallwf$WTD12>=7,1]) 
	wfbmi[bmiallwf$WTD12>=7,1] =sample(wfbmi12q3,lwf7,replace=T) + rnorm(lwf7,0,5)
	wfage[,1]=12
	wfage[is.na(wfbmi[,1]),1]=NA
        wfwgt[,1]=bmiallwf$SEQN
	wfbmi[,2] =bmiallwf$BMI25 + rnorm(nwf,0,2)
	wfage[,2]=25
	wfage[is.na(wfbmi[,2]),2]=NA
        wfwgt[,2]=bmiallwf$SEX
	wfbmi[,3] =bmiallwf$BMI40 + rnorm(nwf,0,2)
	wfage[,3]=40
	wfage[is.na(wfbmi[,3]),3]=NA
        wfwgt[,3]=bmiallwf$RACE
	wfbmi[,4] =bmiallwf$BMI65 + rnorm(nwf,0,2)
	wfage[,4]=65
	wfage[is.na(wfbmi[,4]),4]=NA
        wfwgt[,4]=bmiallwf$WTMEC3YR
	wfbmi[,5]=bmiallwf$BMI1
	wfage[,5]=bmiallwf$AGE1
	wfage[is.na(wfbmi[,5]),5]=NA
        wfwgt[,5]=1972-bmiallwf$AGE1
	wfbmi[,6]=bmiallwf$BMIF1
	wfage[,6]=bmiallwf$AGEF1
	wfage[is.na(wfbmi[,6]),6]=NA
	wfbmi[,7]=bmiallwf$BMIF2
	wfage[,7]=bmiallwf$AGEF2
	wfage[is.na(wfbmi[,7]),7]=NA
	wfbmi[,8]=bmiallwf$BMIF3
	wfage[,8]=bmiallwf$AGEF3
	wfage[is.na(wfbmi[,8]),8]=NA
	wfbmi[,9]=bmiallwf$BMIF4
	wfage[,9]=bmiallwf$AGEF4
	wfage[is.na(wfbmi[,9]),9]=NA
	lwfbmi = wfbmi < 13

	wfbmi[lwfbmi] = NA
	wfage[lwfbmi] = NA
        indx1=indx2+1
        indx2=indx2+nwf
        delind=indx2-indx1+1
	wfages[indx1:indx2,] <- wfage   #ages
	wfbmis[indx1:indx2,] <- wfbmi   #bmi values
	wfwgts[indx1:indx2,] <- wfwgt   #bmi values
}

lwfall <- dim(wfbmis)[1]
wfpopwtall1 = wfwgts[,4] 
wfpopwtall =  round(poprep*wfpopwtall1/(sum(wfpopwtall1)/lwfall))
wfpopwtall[wfpopwtall > poprep*wttr]= poprep*wttr
wfnsample = sum(wfpopwtall)

wfagealls = matrix(NA,wfnsample,9) #include pop weights
wfbmialls = matrix(NA,wfnsample,9) #in

tmpa <- wfage[wfage>40] 
tmpb <- wfbmi[wfage>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
for(j in 1:9) {
wfbmialls[,j] <- rep(wfbmis[,j],wfpopwtall) + rnorm(wfnsample,0,bmisd)
wfagealls[,j] <- rep(wfages[,j],wfpopwtall) 
}
wfwgtalls <- rep(wfwgts[,4],wfpopwtall) 
wfbc1alls <- rep(wfwgts[,5],wfpopwtall) 

wfbmisp = matrix(NA,wfnsample,101)
wgt <-  c(0.25,0.5,0.5,0.5,1,1,1,1,1)  #discount est or recalled weight at ages 12, 25,40,65

for(i in 1:wfnsample) {
wfo <-order(wfagealls[i,], na.last=TRUE)
wfoage <- wfagealls[i,wfo]
wfobmi <- wfbmialls[i,wfo]
wfowgt <- wgt[wfo]
wfbci <- wfbc1alls[i]
wfonaage <- !is.na(wfoage)
wfa <- wfoage[wfonaage]
wfb <- wfobmi[wfonaage]
wfw <- wfowgt[wfonaage]
ulwfa=length(unique(wfa))
lwfa=length(wfa)
if(ulwfa >3 & min(wfb)>12.) {
#print(i);print(wfa);print(wfb);print(wfw)
xf=wfa[1]; xl=wfa[lwfa]
xp=c(xf:xl)
spf <-smooth.spline(x=wfa,y=wfb,w=wfw,df=lwfa-2)
spo <-predict(spf,xp)
wfbmisp[i,xp]=spo$y
wfbmisp[i,1]=max(spo$x)
}
}
wfbmisp[,101]=wfbc1alls
firstbc=range(wfbmisp[,101],na.rm=T)[1]
lastbc=range(wfbmisp[,101],na.rm=T)[2]
rangebc=lastbc-firstbc+1
firstage=range(wfages,na.rm=T)[1]
lastage=range(wfages,na.rm=T)[2]
rangeage=lastage-firstage+1

wfqplft = matrix(NA,rangeage*rangebc,14)
indx1=0
indx2=0
for(j in 1:rangebc) {                   #cohorts
	wfquin = matrix(NA,rangeage,14)
        lbctemp = (wfbmisp[,101]==(j+firstbc-1) & !is.na(wfbmisp[,101])) #51 birth cohorts from 1897-1947
        bctemp <- wfbmisp[lbctemp,]  #51 birth cohorts from 1897-1947
        id=0
	for(i in 12:lastage) {
          lagei = wfages>=i-4 & wfages <= i+4 & !is.na(wfages)        #smooth over 9 year window
          wfagetemp = wfages[lagei]
          wfbmitemp = wfbmis[lagei]
          #print(i);print(j);print(unique(bctemp[,i]))

          if(length(unique(bctemp[,i])) > 3 ) { 
           wfquan=as.vector(quantile(bctemp[,i],probs = seq(0, 1, 0.1),
                                   na.rm = TRUE))
	   id=id+1
		#id=i-11
		wfquin[id,1]<- i
		#wfquin[id,2:12] <- as.vector(quantile(wfbmisp[,i],probs = seq(0, 1, 0.1), 
		wfquin[id,2:12] <- wfquan
                wfquin[id,14] <- firstbc+j-1
                wfquin[id,13] <- firstbc+j-1+i
	  }
        }
        indx1=indx2+1
        indx2=indx2+id
        delind=indx2-indx1+1
        wfquint=wfquin[1:id,]
        print(j);print(wfquint)
	for(k in 2:12) {
	temp <-predict(smooth.spline(x=wfquint[,1],y=wfquint[,k],df=4),ageminlf:agemaxlf)
	wfqplft[indx1:indx2,1] <- temp$x[1:delind]  #ages
	wfqplft[indx1:indx2,k] <- temp$y[1:delind]  #deciles                 
	} #Note: wfqplft is smoothed white male quintile median and ranges for 'lf' data by cohort

	wfqplft[indx1:indx2,13] <- wfquin[1:delind,13]  #cohort
	wfqplft[indx1:indx2,14] <- wfquin[1:delind,14]  #perod
}
wfqplf <- wfqplft[1:indx2,]
wfq12p<-wfqplf[,4]                      #BMI 1-2 quintile break by age, for all years and birth cohorts
wfq23p<-wfqplf[,6]                      #BMI 2-3 quintile break by age
wfq34p<-wfqplf[,8]                      #BMI 3-4 quintile break by age
wfq45p<-wfqplf[,10]                     #BMI 4-5 quintile break by age
wfq56p<-wfqplf[,12]                     #BMI upper range 5 quintile break by age


wfquinm = matrix(NA,82,6)
wfbmiq = matrix(NA,wfnsample,100)
tup = matrix(0,100,5)
tup1 = matrix(0,100,5)
tdn = matrix(0,100,5)
tdn1 = matrix(0,100,5)
tsm = matrix(0,100,5)
wftupdn = matrix(0,100,5)
count1=c(rep(1,wfnsample))
for(i in 12:93) {
	id=i-11
	wfquinm[id,1] <- i
        t1 <-mean(wfbmisp[(wfbmisp[,i]>=12 & wfbmisp[,i] < wfq12p[id]),i],na.rm=TRUE)
        t2 <-mean(wfbmisp[(wfbmisp[,i]>=wfq12p[id] & wfbmisp[,i] < wfq23p[id]),i],na.rm=TRUE)
        t3 <-mean(wfbmisp[(wfbmisp[,i]>=wfq23p[id] & wfbmisp[,i] < wfq34p[id]),i],na.rm=TRUE)
        t4 <-mean(wfbmisp[(wfbmisp[,i]>=wfq34p[id] & wfbmisp[,i] < wfq45p[id]),i],na.rm=TRUE)
        t5 <-mean(wfbmisp[(wfbmisp[,i]>=wfq45p[id] & wfbmisp[,i] < wfq56p[id]),i],na.rm=TRUE)
	wfquinm[id,2:6] <- c(t1,t2,t3,t4,t5)
        test1=(wfbmisp[,i]>=12 & (wfbmisp[,i] < wfq12p[id]) & !is.na(wfbmisp[,i]))
        test1p=(wfbmisp[,i-1]>=12 & (wfbmisp[,i-1] < wfq12p[id-1]) &!is.na(wfbmisp[,i]))
        wfbmiq[test1,i]=1
        test2=(wfbmisp[,i]>=wfq12p[id] & (wfbmisp[,i] < wfq23p[id]) & !is.na(wfbmisp[,i]))
        test2p=(wfbmisp[,i-1]>=wfq12p[id-1] & (wfbmisp[,i-1] < wfq23p[id-1]) 
                               & !is.na(wfbmisp[,i]))
        wfbmiq[test2,i]=2
        test3=(wfbmisp[,i]>=wfq23p[id] & wfbmisp[,i] < wfq34p[id])
        test3p=(wfbmisp[,i-1]>=wfq23p[id-1] & wfbmisp[,i-1] < wfq34p[id-1])
        wfbmiq[test3,i]=3
        test4=(wfbmisp[,i]>=wfq34p[id] & wfbmisp[,i] < wfq45p[id])
        test4p=(wfbmisp[,i-1]>=wfq34p[id-1] & wfbmisp[,i-1] < wfq45p[id-1])
        wfbmiq[test4,i]=4
        test5=(wfbmisp[,i]>=wfq45p[id] & wfbmisp[,i] < 60)
        test5p=(wfbmisp[,i-1]>=wfq45p[id-1] & wfbmisp[,i-1] < 60)
        wfbmiq[test5,i]=5
        test12=test1p & test2
        test23=test2p & test3
        test34=test3p & test4
        test45=test4p & test5
        tup1[i,1]=sum(count1[test12],na.rm=TRUE)
        tup1[i,2]=sum(count1[test23],na.rm=TRUE)
        tup1[i,3]=sum(count1[test34],na.rm=TRUE)
        tup1[i,4]=sum(count1[test45],na.rm=TRUE)
        test21=test2p & test1
        test32=test3p & test2
        test43=test4p & test3
        test54=test5p & test4
        tdn1[i,2]=sum(count1[test21],na.rm=TRUE)
        tdn1[i,3]=sum(count1[test32],na.rm=TRUE)
        tdn1[i,4]=sum(count1[test43],na.rm=TRUE)
        tdn1[i,5]=sum(count1[test54],na.rm=TRUE)
        tsm[i,1]=sum(count1[test1 & test1p],na.rm=TRUE)
        tsm[i,2]=sum(count1[test2 & test2p],na.rm=TRUE)
        tsm[i,3]=sum(count1[test3 & test3p],na.rm=TRUE)
        tsm[i,4]=sum(count1[test4 & test4p],na.rm=TRUE)
        tsm[i,5]=sum(count1[test5 & test5p],na.rm=TRUE)
        tup[i,1]=tup1[i,1]/tsm[i,1]
        tup[i,2]=tup1[i,2]/tsm[i,2]
        tup[i,3]=tup1[i,3]/tsm[i,3]
        tup[i,4]=tup1[i,4]/tsm[i,4]

        tdn[i,2]=tdn1[i,2]/tsm[i,2]
        tdn[i,3]=tdn1[i,3]/tsm[i,3]
        tdn[i,4]=tdn1[i,4]/tsm[i,4]
        tdn[i,5]=tdn1[i,5]/tsm[i,5]
        wftupdn[i,1]=i
        wftupdn[i,2]=(tup[i,1]+tdn[i,2])/2
        wftupdn[i,3]=(tup[i,2]+tdn[i,3])/2
        wftupdn[i,4]=(tup[i,3]+tdn[i,4])/2
        wftupdn[i,5]=(tup[i,4]+tdn[i,5])/2
        print(i);print(c(tup1[i,1:5]))
        print(i);print(c(tdn1[i,1:5]))
        print(i);print(c(tsm[i,1:5]))
        print(i);print(c(tup[i,1:5]))
        print(i);print(c(tdn[i,1:5]))
        print(i);print(c(wftupdn[i,1:5]))
        #wfbmiq[is.na(wfbmisp[,i]),i]=NA
        #wfquin[index,2] <- min(wfbmisp[index,12:94],na.rm=TRUE)
        #wfquin[index,7] <- max(wfbmisp[index,12:94],na.rm=TRUE)
print(wfquinm[id,1:6]);
}

wfq1m <-smooth.spline(x=wfquinm[,1],y=wfquinm[,2],df=7)
wfq2m <-smooth.spline(x=wfquinm[,1],y=wfquinm[,3],df=7)
wfq3m <-smooth.spline(x=wfquinm[,1],y=wfquinm[,4],df=7)
wfq4m <-smooth.spline(x=wfquinm[,1],y=wfquinm[,5],df=7)
wfq5m <-smooth.spline(x=wfquinm[,1],y=wfquinm[,6],df=7)

wfq1p <-predict(wfq1m,12:100)
wfq2p <-predict(wfq2m,12:100)
wfq3p <-predict(wfq3m,12:100)
wfq4p <-predict(wfq4m,12:100)
wfq5p <-predict(wfq5m,12:100)

wfq12tr <-smooth.spline(x=wftupdn[13:90,1],y=wftupdn[13:90,2],df=7)
wfq23tr <-smooth.spline(x=wftupdn[13:89,1],y=wftupdn[13:89,3],df=7)
wfq34tr <-smooth.spline(x=wftupdn[13:89,1],y=wftupdn[13:89,4],df=7)
wfq45tr <-smooth.spline(x=wftupdn[13:89,1],y=wftupdn[13:89,5],df=7)

wfq12trp <-predict(wfq12tr,12:100)
wfq23trp <-predict(wfq23tr,12:100)
wfq34trp <-predict(wfq34tr,12:100)
wfq45trp <-predict(wfq45tr,12:100)

save(wfq12trp,file = "wfq12trp.RData")
save(wfq23trp,file = "wfq23trp.RData")
save(wfq34trp,file = "wfq34trp.RData")
save(wfq45trp,file = "wfq45trp.RData")




dev.off()
plot.new()                                 #
plot(wfquinm[,1],wfquinm[,2],xlim=c(0,100),
main="White Female BMI quintile means from longitudinal followup in NHEFS*",
ylim=c(10,40),ylab="BMI - white females",xlab="AGE",cex.main=1.7,cex.lab=1.5)
text(18,10,"*Based on individual level longitudinal data from National Health and Nutrition Examination Survey I (NHANES-I) (1971-1975)\n and NHANES-I Epidemiologic Followup Studies (NHEFS)  (1982-1984, 1986, 1987, and 1992)",
adj=c(0.2,0),cex=1) 
points(wfquinm[,1],wfquinm[,3])
points(wfquinm[,1],wfquinm[,4])
points(wfquinm[,1],wfquinm[,5])
points(wfquinm[,1],wfquinm[,6])
lines(wfq1p$x,wfq1p$y)
lines(wfq2p$x,wfq2p$y)
lines(wfq3p$x,wfq3p$y)
lines(wfq4p$x,wfq4p$y)
lines(wfq5p$x,wfq5p$y)
dev.copy2pdf(file="WFBMI-NHEFS-quintiles.pdf",width=12,height=8.)

leg.txt=c("Q1 <-> Q2","Q2 <-> Q3","Q3 <-> Q4","Q4 <-> Q5")
dev.off()
plot.new()                                 #
plot(wfq12trp$x,wfq12trp$y,xlim=c(0,100),type='l',
main="Markov transition rates between white female BMI quintiles from NHEFS followup*",
ylim=c(0,.15),ylab="Inter-quintile transition rate (per year)",xlab="AGE",cex.main=1.7,cex.lab=1.5)
text(18,-0.005,"*Based on individual level longitudinal data from National Health and Nutrition Examination Survey I (NHANES-I) (1971-1975)\n and NHANES-I Epidemiologic Followup Studies (NHEFS)  (1982-1984, 1986, 1987, and 1992)",
adj=c(0.2,0),cex=1) 
legend("top",border="black",title="Markov transition rates (per year) between BMI quintiles",leg.txt,lty=c(1,2,3,4),cex=1.5,bty="n")
lines(wfq23trp$x,wfq23trp$y,lty=2)
lines(wfq34trp$x,wfq34trp$y,lty=3)
lines(wfq45trp$x,wfq45trp$y,lty=4)
dev.copy2pdf(file="WF-Markov-NHEFS-quintiles.pdf",width=12,height=8.)






#Black males  longitudinal (1959-62)
bmiallbm <- bmiall[bmiall$RACE==2 & bmiall$SEX==1,] #Black males  N  (1959-62)
nsample=5
bmages = matrix(NA,nsample*dim(bmiallbm)[1],9) #ages -resample BMI age 12 and spline with all data
bmbmis = matrix(NA,nsample*dim(bmiallbm)[1],9) #bmis -resample BMI age 12 and spline with all data
bmwgts = matrix(NA,nsample*dim(bmiallbm)[1],5) #pop weights,sex,rac,seg with resampling at age 12
indx1=0
indx2=0
for(j in 1:nsample) {                 #resample BMI at age 12 
        nbm = dim(bmiallbm)[1]
	bmage = matrix(NA,nbm,9) #age ranges from 25 to 95, 12-100 across all data
	bmbmi = matrix(NA,nbm,9) #bmi ranges from 13.6 to 52.6
	bmwgt = matrix(NA,nbm,5) #pop weight (seqn, sex, race, WTMEC3YR,bc1=1972-AGE1)
	#bmbc1 = 1972 - bmiallbm$AGE1          #51 birth cohorts 1897-1947, AGE1 from 25-75
	#bmbc1i = bmbc1-1880                   #first cohort is 1881, 122 birth cohorts possible 
	lbm1=length(bmbmi[bmiallbm$WTD12==1,1]) 
	bmbmi[bmiallbm$WTD12==1,1] =sample(bmbmi12q1,lbm1,replace=T) + rnorm(lbm1,0,5)
	lbm2=length(bmbmi[bmiallbm$WTD12==2,1]) 
	bmbmi[bmiallbm$WTD12==2,1] =sample(bmbmi12q2,lbm2,replace=T) + rnorm(lbm2,0,5)
	lbm3=length(bmbmi[bmiallbm$WTD12==3,1]) 
	bmbmi[bmiallbm$WTD12==3,1] =sample(bmbmi12q3,lbm3,replace=T) + rnorm(lbm3,0,5)
	lbm4=length(bmbmi[bmiallbm$WTD12==4,1]) 
	bmbmi[bmiallbm$WTD12==4,1] =sample(bmbmi12q4,lbm4,replace=T) + rnorm(lbm4,0,5)
	lbm5=length(bmbmi[bmiallbm$WTD12==5,1]) 
	bmbmi[bmiallbm$WTD12==5,1] =sample(bmbmi12q5,lbm5,replace=T) + rnorm(lbm5,0,5)
	lbm7=length(bmbmi[bmiallbm$WTD12>=7,1]) 
	bmbmi[bmiallbm$WTD12>=7,1] =sample(bmbmi12q3,lbm7,replace=T) + rnorm(lbm7,0,5)
	bmage[,1]=12
	bmage[is.na(bmbmi[,1]),1]=NA
        bmwgt[,1]=bmiallbm$SEQN
	bmbmi[,2] =bmiallbm$BMI25 + rnorm(nbm,0,2)
	bmage[,2]=25
	bmage[is.na(bmbmi[,2]),2]=NA
        bmwgt[,2]=bmiallbm$SEX
	bmbmi[,3] =bmiallbm$BMI40 + rnorm(nbm,0,2)
	bmage[,3]=40
	bmage[is.na(bmbmi[,3]),3]=NA
        bmwgt[,3]=bmiallbm$RACE
	bmbmi[,4] =bmiallbm$BMI65 + rnorm(nbm,0,2)
	bmage[,4]=65
	bmage[is.na(bmbmi[,4]),4]=NA
        bmwgt[,4]=bmiallbm$WTMEC3YR
	bmbmi[,5]=bmiallbm$BMI1
	bmage[,5]=bmiallbm$AGE1
	bmage[is.na(bmbmi[,5]),5]=NA
        bmwgt[,5]=1972-bmiallbm$AGE1
	bmbmi[,6]=bmiallbm$BMIF1
	bmage[,6]=bmiallbm$AGEF1
	bmage[is.na(bmbmi[,6]),6]=NA
	bmbmi[,7]=bmiallbm$BMIF2
	bmage[,7]=bmiallbm$AGEF2
	bmage[is.na(bmbmi[,7]),7]=NA
	bmbmi[,8]=bmiallbm$BMIF3
	bmage[,8]=bmiallbm$AGEF3
	bmage[is.na(bmbmi[,8]),8]=NA
	bmbmi[,9]=bmiallbm$BMIF4
	bmage[,9]=bmiallbm$AGEF4
	bmage[is.na(bmbmi[,9]),9]=NA
	lbmbmi = bmbmi < 13

	bmbmi[lbmbmi] = NA
	bmage[lbmbmi] = NA
        indx1=indx2+1
        indx2=indx2+nbm
        delind=indx2-indx1+1
	bmages[indx1:indx2,] <- bmage   #ages
	bmbmis[indx1:indx2,] <- bmbmi   #bmi values
	bmwgts[indx1:indx2,] <- bmwgt   #bmi values
}

lbmall <- dim(bmbmis)[1]
bmpopwtall1 = bmwgts[,4] 
bmpopwtall =  round(poprep*bmpopwtall1/(sum(bmpopwtall1)/lbmall))
bmpopwtall[bmpopwtall > poprep*wttr]= poprep*wttr
bmnsample = sum(bmpopwtall)

bmagealls = matrix(NA,bmnsample,9) #include pop weights
bmbmialls = matrix(NA,bmnsample,9) #in

tmpa <- bmage[bmage>40] 
tmpb <- bmbmi[bmage>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
for(j in 1:9) {
bmbmialls[,j] <- rep(bmbmis[,j],bmpopwtall) + rnorm(bmnsample,0,bmisd)
bmagealls[,j] <- rep(bmages[,j],bmpopwtall) 
}
bmwgtalls <- rep(bmwgts[,4],bmpopwtall) 
bmbc1alls <- rep(bmwgts[,5],bmpopwtall) 

bmbmisp = matrix(NA,bmnsample,101)
wgt <-  c(0.25,0.5,0.5,0.5,1,1,1,1,1)  #discount est or recalled weight at ages 12, 25,40,65

for(i in 1:bmnsample) {
bmo <-order(bmagealls[i,], na.last=TRUE)
bmoage <- bmagealls[i,bmo]
bmobmi <- bmbmialls[i,bmo]
bmowgt <- wgt[bmo]
bmbci <- bmbc1alls[i]
bmonaage <- !is.na(bmoage)
bma <- bmoage[bmonaage]
bmb <- bmobmi[bmonaage]
bmw <- bmowgt[bmonaage]
ulbma=length(unique(bma))
lbma=length(bma)
if(ulbma >3 & min(bmb)>12.) {
#print(i);print(bma);print(bmb);print(bmw)
xf=bma[1]; xl=bma[lbma]
xp=c(xf:xl)
spf <-smooth.spline(x=bma,y=bmb,w=bmw,df=lbma-2)
spo <-predict(spf,xp)
bmbmisp[i,xp]=spo$y
bmbmisp[i,1]=max(spo$x)
}
}
bmbmisp[,101]=bmbc1alls
firstbc=range(bmbmisp[,101],na.rm=T)[1]
lastbc=range(bmbmisp[,101],na.rm=T)[2]
rangebc=lastbc-firstbc+1
firstage=range(bmages,na.rm=T)[1]
lastage=range(bmages,na.rm=T)[2]
rangeage=lastage-firstage+1

bmqplft = matrix(NA,rangeage*rangebc,14)
indx1=0
indx2=0
for(j in 1:rangebc) {                   #cohorts
	bmquin = matrix(NA,rangeage,14)
        lbctemp = (bmbmisp[,101]==(j+firstbc-1) & !is.na(bmbmisp[,101])) #51 birth cohorts from 1897-1947
        bctemp <- bmbmisp[lbctemp,]  #51 birth cohorts from 1897-1947
        id=0
	for(i in 12:lastage) {
          lagei = bmages>=i-4 & bmages <= i+4 & !is.na(bmages)        #smooth over 9 year window
          bmagetemp = bmages[lagei]
          bmbmitemp = bmbmis[lagei]
          #print(i);print(j);print(unique(bctemp[,i]))

          if(length(unique(bctemp[,i])) > 3 ) { 
           bmquan=as.vector(quantile(bctemp[,i],probs = seq(0, 1, 0.1),
                                   na.rm = TRUE))
	   id=id+1
		#id=i-11
		bmquin[id,1]<- i
		#bmquin[id,2:12] <- as.vector(quantile(bmbmisp[,i],probs = seq(0, 1, 0.1), 
		bmquin[id,2:12] <- bmquan
                bmquin[id,14] <- firstbc+j-1
                bmquin[id,13] <- firstbc+j-1+i
	  }
        }
        if(id>0) {
        indx1=indx2+1
        indx2=indx2+id
        delind=indx2-indx1+1
        bmquint=bmquin[1:id,]
        print(j);print(bmquint)
	for(k in 2:12) {
	temp <-predict(smooth.spline(x=bmquint[,1],y=bmquint[,k],df=4),ageminlf:agemaxlf)
	bmqplft[indx1:indx2,1] <- temp$x[1:delind]  #ages
	bmqplft[indx1:indx2,k] <- temp$y[1:delind]  #deciles                 
	} #Note: bmqplft is smoothed white male quintile median and ranges for 'lf' data by cohort

	bmqplft[indx1:indx2,13] <- bmquin[1:delind,13]  #cohort
	bmqplft[indx1:indx2,14] <- bmquin[1:delind,14]  #perod
        }
}
bmqplf <- bmqplft[1:indx2,]
bmq12p<-bmqplf[,4]                      #BMI 1-2 quintile break by age, for all years and birth cohorts
bmq23p<-bmqplf[,6]                      #BMI 2-3 quintile break by age
bmq34p<-bmqplf[,8]                      #BMI 3-4 quintile break by age
bmq45p<-bmqplf[,10]                     #BMI 4-5 quintile break by age
bmq56p<-bmqplf[,12]                     #BMI upper range 5 quintile break by age


bmquinm = matrix(NA,82,6)
bmbmiq = matrix(NA,bmnsample,100)
tup = matrix(0,100,5)
tup1 = matrix(0,100,5)
tdn = matrix(0,100,5)
tdn1 = matrix(0,100,5)
tsm = matrix(0,100,5)
bmtupdn = matrix(0,100,5)
count1=c(rep(1,bmnsample))
for(i in 12:93) {
	id=i-11
	bmquinm[id,1] <- i
        t1 <-mean(bmbmisp[(bmbmisp[,i]>=12 & bmbmisp[,i] < bmq12p[id]),i],na.rm=TRUE)
        t2 <-mean(bmbmisp[(bmbmisp[,i]>=bmq12p[id] & bmbmisp[,i] < bmq23p[id]),i],na.rm=TRUE)
        t3 <-mean(bmbmisp[(bmbmisp[,i]>=bmq23p[id] & bmbmisp[,i] < bmq34p[id]),i],na.rm=TRUE)
        t4 <-mean(bmbmisp[(bmbmisp[,i]>=bmq34p[id] & bmbmisp[,i] < bmq45p[id]),i],na.rm=TRUE)
        t5 <-mean(bmbmisp[(bmbmisp[,i]>=bmq45p[id] & bmbmisp[,i] < bmq56p[id]),i],na.rm=TRUE)
	bmquinm[id,2:6] <- c(t1,t2,t3,t4,t5)
        test1=(bmbmisp[,i]>=12 & (bmbmisp[,i] < bmq12p[id]) & !is.na(bmbmisp[,i]))
        test1p=(bmbmisp[,i-1]>=12 & (bmbmisp[,i-1] < bmq12p[id-1]) &!is.na(bmbmisp[,i]))
        bmbmiq[test1,i]=1
        test2=(bmbmisp[,i]>=bmq12p[id] & (bmbmisp[,i] < bmq23p[id]) & !is.na(bmbmisp[,i]))
        test2p=(bmbmisp[,i-1]>=bmq12p[id-1] & (bmbmisp[,i-1] < bmq23p[id-1]) 
                               & !is.na(bmbmisp[,i]))
        bmbmiq[test2,i]=2
        test3=(bmbmisp[,i]>=bmq23p[id] & bmbmisp[,i] < bmq34p[id])
        test3p=(bmbmisp[,i-1]>=bmq23p[id-1] & bmbmisp[,i-1] < bmq34p[id-1])
        bmbmiq[test3,i]=3
        test4=(bmbmisp[,i]>=bmq34p[id] & bmbmisp[,i] < bmq45p[id])
        test4p=(bmbmisp[,i-1]>=bmq34p[id-1] & bmbmisp[,i-1] < bmq45p[id-1])
        bmbmiq[test4,i]=4
        test5=(bmbmisp[,i]>=bmq45p[id] & bmbmisp[,i] < 60)
        test5p=(bmbmisp[,i-1]>=bmq45p[id-1] & bmbmisp[,i-1] < 60)
        bmbmiq[test5,i]=5
        test12=test1p & test2
        test23=test2p & test3
        test34=test3p & test4
        test45=test4p & test5
        tup1[i,1]=sum(count1[test12],na.rm=TRUE)
        tup1[i,2]=sum(count1[test23],na.rm=TRUE)
        tup1[i,3]=sum(count1[test34],na.rm=TRUE)
        tup1[i,4]=sum(count1[test45],na.rm=TRUE)
        test21=test2p & test1
        test32=test3p & test2
        test43=test4p & test3
        test54=test5p & test4
        tdn1[i,2]=sum(count1[test21],na.rm=TRUE)
        tdn1[i,3]=sum(count1[test32],na.rm=TRUE)
        tdn1[i,4]=sum(count1[test43],na.rm=TRUE)
        tdn1[i,5]=sum(count1[test54],na.rm=TRUE)
        tsm[i,1]=sum(count1[test1 & test1p],na.rm=TRUE)
        tsm[i,2]=sum(count1[test2 & test2p],na.rm=TRUE)
        tsm[i,3]=sum(count1[test3 & test3p],na.rm=TRUE)
        tsm[i,4]=sum(count1[test4 & test4p],na.rm=TRUE)
        tsm[i,5]=sum(count1[test5 & test5p],na.rm=TRUE)
        tup[i,1]=tup1[i,1]/tsm[i,1]
        tup[i,2]=tup1[i,2]/tsm[i,2]
        tup[i,3]=tup1[i,3]/tsm[i,3]
        tup[i,4]=tup1[i,4]/tsm[i,4]

        tdn[i,2]=tdn1[i,2]/tsm[i,2]
        tdn[i,3]=tdn1[i,3]/tsm[i,3]
        tdn[i,4]=tdn1[i,4]/tsm[i,4]
        tdn[i,5]=tdn1[i,5]/tsm[i,5]
        bmtupdn[i,1]=i
        bmtupdn[i,2]=(tup[i,1]+tdn[i,2])/2
        bmtupdn[i,3]=(tup[i,2]+tdn[i,3])/2
        bmtupdn[i,4]=(tup[i,3]+tdn[i,4])/2
        bmtupdn[i,5]=(tup[i,4]+tdn[i,5])/2
        print(i);print(c(tup1[i,1:5]))
        print(i);print(c(tdn1[i,1:5]))
        print(i);print(c(tsm[i,1:5]))
        print(i);print(c(tup[i,1:5]))
        print(i);print(c(tdn[i,1:5]))
        print(i);print(c(bmtupdn[i,1:5]))
        #bmbmiq[is.na(bmbmisp[,i]),i]=NA
        #bmquin[index,2] <- min(bmbmisp[index,12:94],na.rm=TRUE)
        #bmquin[index,7] <- max(bmbmisp[index,12:94],na.rm=TRUE)
print(bmquinm[id,1:6]);
}
bmtupdn[89,2] = (bmtupdn[88,2] + bmtupdn[90,2])/2 #fixing infinite rate  

bmq1m <-smooth.spline(x=bmquinm[,1],y=bmquinm[,2],df=7)
bmq2m <-smooth.spline(x=bmquinm[,1],y=bmquinm[,3],df=7)
bmq3m <-smooth.spline(x=bmquinm[,1],y=bmquinm[,4],df=7)
bmq4m <-smooth.spline(x=bmquinm[,1],y=bmquinm[,5],df=7)
bmq5m <-smooth.spline(x=bmquinm[,1],y=bmquinm[!is.na(bmquinm[,6]),6],df=7)

bmq1p <-predict(bmq1m,12:100)
bmq2p <-predict(bmq2m,12:100)
bmq3p <-predict(bmq3m,12:100)
bmq4p <-predict(bmq4m,12:100)
bmq5p <-predict(bmq5m,12:100)

bmq12tr <-smooth.spline(x=bmtupdn[13:90,1],y=bmtupdn[13:90,2],df=7)
bmq23tr <-smooth.spline(x=bmtupdn[13:89,1],y=bmtupdn[13:89,3],df=7)
bmq34tr <-smooth.spline(x=bmtupdn[13:89,1],y=bmtupdn[13:89,4],df=7)
bmq45tr <-smooth.spline(x=bmtupdn[13:89,1],y=bmtupdn[13:89,5],df=7)

bmq12trp <-predict(bmq12tr,12:100)
bmq23trp <-predict(bmq23tr,12:100)
bmq34trp <-predict(bmq34tr,12:100)
bmq45trp <-predict(bmq45tr,12:100)

save(bmq12trp,file = "bmq12trp.RData")
save(bmq23trp,file = "bmq23trp.RData")
save(bmq34trp,file = "bmq34trp.RData")
save(bmq45trp,file = "bmq45trp.RData")




dev.off()
plot.new()                                 #
plot(bmquinm[,1],bmquinm[,2],xlim=c(0,100),
main="Black male BMI quintile means from longitudinal followup in NHEFS*",
ylim=c(10,40),ylab="BMI - black males",xlab="AGE",cex.main=1.7,cex.lab=1.5)
text(18,10,"*Based on individual level longitudinal data from National Health and Nutrition Examination Survey I (NHANES-I) (1971-1975)\n and NHANES-I Epidemiologic Followup Studies (NHEFS)  (1982-1984, 1986, 1987, and 1992)",
adj=c(0.2,0),cex=1) 
points(bmquinm[,1],bmquinm[,3])
points(bmquinm[,1],bmquinm[,4])
points(bmquinm[,1],bmquinm[,5])
points(bmquinm[,1],bmquinm[,6])
lines(bmq1p$x[1:83],bmq1p$y[1:83])
lines(bmq2p$x[1:83],bmq2p$y[1:83])
lines(bmq3p$x[1:83],bmq3p$y[1:83])
lines(bmq4p$x[1:83],bmq4p$y[1:83])
lines(bmq5p$x[1:83],bmq5p$y[1:83])
dev.copy2pdf(file="BMBMI-NHEFS-quintiles.pdf",width=12,height=8.)

leg.txt=c("Q1 <-> Q2","Q2 <-> Q3","Q3 <-> Q4","Q4 <-> Q5")
dev.off()
plot.new()                                 #
plot(bmq12trp$x,bmq12trp$y,xlim=c(0,100),type='l',
main="Markov transition rates between black male BMI quintiles from NHEFS followup*",
ylim=c(0,.2),ylab="Inter-quintile transition rate (per year)",xlab="AGE",cex.main=1.7,cex.lab=1.5)
text(18,-0.005,"*Based on individual level longitudinal data from National Health and Nutrition Examination Survey I (NHANES-I) (1971-1975)\n and NHANES-I Epidemiologic Followup Studies (NHEFS)  (1982-1984, 1986, 1987, and 1992)",
adj=c(0.2,0),cex=1) 
legend("top",border="black",title="Markov transition rates (per year) between BMI quintiles",leg.txt,lty=c(1,2,3,4),cex=1.5,bty="n")
lines(bmq23trp$x,bmq23trp$y,lty=2)
lines(bmq34trp$x,bmq34trp$y,lty=3)
lines(bmq45trp$x,bmq45trp$y,lty=4)
dev.copy2pdf(file="BM-Markov-NHEFS-quintiles.pdf",width=12,height=8.)




########### Black females
bmiallbf <- bmiall[bmiall$RACE==2 & bmiall$SEX==2,] #Black females  N  (1959-62)
nsample=5
bfages = matrix(NA,nsample*dim(bmiallbf)[1],9) #ages -resample BMI age 12 and spline with all data
bfbmis = matrix(NA,nsample*dim(bmiallbf)[1],9) #bmis -resample BMI age 12 and spline with all data
bfwgts = matrix(NA,nsample*dim(bmiallbf)[1],5) #pop weights,sex,rac,seg with resampling at age 12
indx1=0
indx2=0
for(j in 1:nsample) {                 #resample BMI at age 12 
        nbf = dim(bmiallbf)[1]
	bfage = matrix(NA,nbf,9) #age ranges from 25 to 95, 12-100 across all data
	bfbmi = matrix(NA,nbf,9) #bmi ranges from 13.6 to 52.6
	bfwgt = matrix(NA,nbf,5) #pop weight (seqn, sex, race, WTMEC3YR,bc1=1972-AGE1)
	#bfbc1 = 1972 - bmiallbf$AGE1          #51 birth cohorts 1897-1947, AGE1 from 25-75
	#bfbc1i = bfbc1-1880                   #first cohort is 1881, 122 birth cohorts possible 
	lbf1=length(bfbmi[bmiallbf$WTD12==1,1]) 
	bfbmi[bmiallbf$WTD12==1,1] =sample(bfbmi12q1,lbf1,replace=T) + rnorm(lbf1,0,5)
	lbf2=length(bfbmi[bmiallbf$WTD12==2,1]) 
	bfbmi[bmiallbf$WTD12==2,1] =sample(bfbmi12q2,lbf2,replace=T) + rnorm(lbf2,0,5)
	lbf3=length(bfbmi[bmiallbf$WTD12==3,1]) 
	bfbmi[bmiallbf$WTD12==3,1] =sample(bfbmi12q3,lbf3,replace=T) + rnorm(lbf3,0,5)
	lbf4=length(bfbmi[bmiallbf$WTD12==4,1]) 
	bfbmi[bmiallbf$WTD12==4,1] =sample(bfbmi12q4,lbf4,replace=T) + rnorm(lbf4,0,5)
	lbf5=length(bfbmi[bmiallbf$WTD12==5,1]) 
	bfbmi[bmiallbf$WTD12==5,1] =sample(bfbmi12q5,lbf5,replace=T) + rnorm(lbf5,0,5)
	lbf7=length(bfbmi[bmiallbf$WTD12>=7,1]) 
	bfbmi[bmiallbf$WTD12>=7,1] =sample(bfbmi12q3,lbf7,replace=T) + rnorm(lbf7,0,5)
	bfage[,1]=12
	bfage[is.na(bfbmi[,1]),1]=NA
        bfwgt[,1]=bmiallbf$SEQN
	bfbmi[,2] =bmiallbf$BMI25 + rnorm(nbf,0,2)
	bfage[,2]=25
	bfage[is.na(bfbmi[,2]),2]=NA
        bfwgt[,2]=bmiallbf$SEX
	bfbmi[,3] =bmiallbf$BMI40 + rnorm(nbf,0,2)
	bfage[,3]=40
	bfage[is.na(bfbmi[,3]),3]=NA
        bfwgt[,3]=bmiallbf$RACE
	bfbmi[,4] =bmiallbf$BMI65 + rnorm(nbf,0,2)
	bfage[,4]=65
	bfage[is.na(bfbmi[,4]),4]=NA
        bfwgt[,4]=bmiallbf$WTMEC3YR
	bfbmi[,5]=bmiallbf$BMI1
	bfage[,5]=bmiallbf$AGE1
	bfage[is.na(bfbmi[,5]),5]=NA
        bfwgt[,5]=1972-bmiallbf$AGE1
	bfbmi[,6]=bmiallbf$BMIF1
	bfage[,6]=bmiallbf$AGEF1
	bfage[is.na(bfbmi[,6]),6]=NA
	bfbmi[,7]=bmiallbf$BMIF2
	bfage[,7]=bmiallbf$AGEF2
	bfage[is.na(bfbmi[,7]),7]=NA
	bfbmi[,8]=bmiallbf$BMIF3
	bfage[,8]=bmiallbf$AGEF3
	bfage[is.na(bfbmi[,8]),8]=NA
	bfbmi[,9]=bmiallbf$BMIF4
	bfage[,9]=bmiallbf$AGEF4
	bfage[is.na(bfbmi[,9]),9]=NA
	lbfbmi = bfbmi < 13

	bfbmi[lbfbmi] = NA
	bfage[lbfbmi] = NA
        indx1=indx2+1
        indx2=indx2+nbf
        delind=indx2-indx1+1
	bfages[indx1:indx2,] <- bfage   #ages
	bfbmis[indx1:indx2,] <- bfbmi   #bmi values
	bfwgts[indx1:indx2,] <- bfwgt   #bmi values
}

lbfall <- dim(bfbmis)[1]
bfpopwtall1 = bfwgts[,4] 
bfpopwtall =  round(poprep*bfpopwtall1/(sum(bfpopwtall1)/lbfall))
bfpopwtall[bfpopwtall > poprep*wttr]= poprep*wttr
bfnsample = sum(bfpopwtall)

bfagealls = matrix(NA,bfnsample,9) #include pop weights
bfbmialls = matrix(NA,bfnsample,9) #in

tmpa <- bfage[bfage>40] 
tmpb <- bfbmi[bfage>40]
tmpb2 <- tmpb[tmpa<=60]
tmpb3 <- tmpb2[!is.na(tmpb2)]
bmisd = sqrt(var(tmpb3)/5)              #quintile std dev. for BMI to generate replicate persons
for(j in 1:9) {
bfbmialls[,j] <- rep(bfbmis[,j],bfpopwtall) + rnorm(bfnsample,0,bmisd)
bfagealls[,j] <- rep(bfages[,j],bfpopwtall) 
}
bfwgtalls <- rep(bfwgts[,4],bfpopwtall) 
bfbc1alls <- rep(bfwgts[,5],bfpopwtall) 

bfbmisp = matrix(NA,bfnsample,101)
wgt <-  c(0.25,0.5,0.5,0.5,1,1,1,1,1)  #discount est or recalled weight at ages 12, 25,40,65

for(i in 1:bfnsample) {
bfo <-order(bfagealls[i,], na.last=TRUE)
bfoage <- bfagealls[i,bfo]
bfobmi <- bfbmialls[i,bfo]
bfowgt <- wgt[bfo]
bfbci <- bfbc1alls[i]
bfonaage <- !is.na(bfoage)
bfa <- bfoage[bfonaage]
bfb <- bfobmi[bfonaage]
bfw <- bfowgt[bfonaage]
ulbfa=length(unique(bfa))
lbfa=length(bfa)
if(ulbfa >3 & min(bfb)>12.) {
#print(i);print(bfa);print(bfb);print(bfw)
xf=bfa[1]; xl=bfa[lbfa]
xp=c(xf:xl)
spf <-smooth.spline(x=bfa,y=bfb,w=bfw,df=lbfa-2)
spo <-predict(spf,xp)
bfbmisp[i,xp]=spo$y
bfbmisp[i,1]=max(spo$x)
}
}
bfbmisp[,101]=bfbc1alls
firstbc=range(bfbmisp[,101],na.rm=T)[1]
lastbc=range(bfbmisp[,101],na.rm=T)[2]
rangebc=lastbc-firstbc+1
firstage=range(bfages,na.rm=T)[1]
lastage=range(bfages,na.rm=T)[2]
rangeage=lastage-firstage+1

bfqplft = matrix(NA,rangeage*rangebc,14)
indx1=0
indx2=0
for(j in 1:rangebc) {                   #cohorts
	bfquin = matrix(NA,rangeage,14)
        lbctemp = (bfbmisp[,101]==(j+firstbc-1) & !is.na(bfbmisp[,101])) #51 birth cohorts from 1897-1947
        bctemp <- bfbmisp[lbctemp,]  #51 birth cohorts from 1897-1947
        id=0
	for(i in 12:lastage) {
          lagei = bfages>=i-4 & bfages <= i+4 & !is.na(bfages)        #smooth over 9 year window
          bfagetemp = bfages[lagei]
          bfbmitemp = bfbmis[lagei]
          #print(i);print(j);print(unique(bctemp[,i]))

          if(length(unique(bctemp[,i])) > 3 ) { 
           bfquan=as.vector(quantile(bctemp[,i],probs = seq(0, 1, 0.1),
                                   na.rm = TRUE))
	   id=id+1
		#id=i-11
		bfquin[id,1]<- i
		#bfquin[id,2:12] <- as.vector(quantile(bfbmisp[,i],probs = seq(0, 1, 0.1), 
		bfquin[id,2:12] <- bfquan
                bfquin[id,14] <- firstbc+j-1
                bfquin[id,13] <- firstbc+j-1+i
	  }
        }
        indx1=indx2+1
        indx2=indx2+id
        delind=indx2-indx1+1
        bfquint=bfquin[1:id,]
        print(j);print(bfquint)
	for(k in 2:12) {
	temp <-predict(smooth.spline(x=bfquint[,1],y=bfquint[,k],df=4),ageminlf:agemaxlf)
	bfqplft[indx1:indx2,1] <- temp$x[1:delind]  #ages
	bfqplft[indx1:indx2,k] <- temp$y[1:delind]  #deciles                 
	} #Note: bfqplft is smoothed white male quintile median and ranges for 'lf' data by cohort

	bfqplft[indx1:indx2,13] <- bfquin[1:delind,13]  #cohort
	bfqplft[indx1:indx2,14] <- bfquin[1:delind,14]  #perod
}
bfqplf <- bfqplft[1:indx2,]
bfq12p<-bfqplf[,4]                      #BMI 1-2 quintile break by age, for all years and birth cohorts
bfq23p<-bfqplf[,6]                      #BMI 2-3 quintile break by age
bfq34p<-bfqplf[,8]                      #BMI 3-4 quintile break by age
bfq45p<-bfqplf[,10]                     #BMI 4-5 quintile break by age
bfq56p<-bfqplf[,12]                     #BMI upper range 5 quintile break by age


bfquinm = matrix(NA,82,6)
bfbmiq = matrix(NA,bfnsample,100)
tup = matrix(0,100,5)
tup1 = matrix(0,100,5)
tdn = matrix(0,100,5)
tdn1 = matrix(0,100,5)
tsm = matrix(0,100,5)
bftupdn = matrix(0,100,5)
count1=c(rep(1,bfnsample))
for(i in 12:93) {
	id=i-11
	bfquinm[id,1] <- i
        t1 <-mean(bfbmisp[(bfbmisp[,i]>=12 & bfbmisp[,i] < bfq12p[id]),i],na.rm=TRUE)
        t2 <-mean(bfbmisp[(bfbmisp[,i]>=bfq12p[id] & bfbmisp[,i] < bfq23p[id]),i],na.rm=TRUE)
        t3 <-mean(bfbmisp[(bfbmisp[,i]>=bfq23p[id] & bfbmisp[,i] < bfq34p[id]),i],na.rm=TRUE)
        t4 <-mean(bfbmisp[(bfbmisp[,i]>=bfq34p[id] & bfbmisp[,i] < bfq45p[id]),i],na.rm=TRUE)
        t5 <-mean(bfbmisp[(bfbmisp[,i]>=bfq45p[id] & bfbmisp[,i] < bfq56p[id]),i],na.rm=TRUE)
	bfquinm[id,2:6] <- c(t1,t2,t3,t4,t5)
        test1=(bfbmisp[,i]>=12 & (bfbmisp[,i] < bfq12p[id]) & !is.na(bfbmisp[,i]))
        test1p=(bfbmisp[,i-1]>=12 & (bfbmisp[,i-1] < bfq12p[id-1]) &!is.na(bfbmisp[,i]))
        bfbmiq[test1,i]=1
        test2=(bfbmisp[,i]>=bfq12p[id] & (bfbmisp[,i] < bfq23p[id]) & !is.na(bfbmisp[,i]))
        test2p=(bfbmisp[,i-1]>=bfq12p[id-1] & (bfbmisp[,i-1] < bfq23p[id-1]) 
                               & !is.na(bfbmisp[,i]))
        bfbmiq[test2,i]=2
        test3=(bfbmisp[,i]>=bfq23p[id] & bfbmisp[,i] < bfq34p[id])
        test3p=(bfbmisp[,i-1]>=bfq23p[id-1] & bfbmisp[,i-1] < bfq34p[id-1])
        bfbmiq[test3,i]=3
        test4=(bfbmisp[,i]>=bfq34p[id] & bfbmisp[,i] < bfq45p[id])
        test4p=(bfbmisp[,i-1]>=bfq34p[id-1] & bfbmisp[,i-1] < bfq45p[id-1])
        bfbmiq[test4,i]=4
        test5=(bfbmisp[,i]>=bfq45p[id] & bfbmisp[,i] < 60)
        test5p=(bfbmisp[,i-1]>=bfq45p[id-1] & bfbmisp[,i-1] < 60)
        bfbmiq[test5,i]=5
        test12=test1p & test2
        test23=test2p & test3
        test34=test3p & test4
        test45=test4p & test5
        tup1[i,1]=sum(count1[test12],na.rm=TRUE)
        tup1[i,2]=sum(count1[test23],na.rm=TRUE)
        tup1[i,3]=sum(count1[test34],na.rm=TRUE)
        tup1[i,4]=sum(count1[test45],na.rm=TRUE)
        test21=test2p & test1
        test32=test3p & test2
        test43=test4p & test3
        test54=test5p & test4
        tdn1[i,2]=sum(count1[test21],na.rm=TRUE)
        tdn1[i,3]=sum(count1[test32],na.rm=TRUE)
        tdn1[i,4]=sum(count1[test43],na.rm=TRUE)
        tdn1[i,5]=sum(count1[test54],na.rm=TRUE)
        tsm[i,1]=sum(count1[test1 & test1p],na.rm=TRUE)
        tsm[i,2]=sum(count1[test2 & test2p],na.rm=TRUE)
        tsm[i,3]=sum(count1[test3 & test3p],na.rm=TRUE)
        tsm[i,4]=sum(count1[test4 & test4p],na.rm=TRUE)
        tsm[i,5]=sum(count1[test5 & test5p],na.rm=TRUE)
        tup[i,1]=tup1[i,1]/tsm[i,1]
        tup[i,2]=tup1[i,2]/tsm[i,2]
        tup[i,3]=tup1[i,3]/tsm[i,3]
        tup[i,4]=tup1[i,4]/tsm[i,4]

        tdn[i,2]=tdn1[i,2]/tsm[i,2]
        tdn[i,3]=tdn1[i,3]/tsm[i,3]
        tdn[i,4]=tdn1[i,4]/tsm[i,4]
        tdn[i,5]=tdn1[i,5]/tsm[i,5]
        bftupdn[i,1]=i
        bftupdn[i,2]=(tup[i,1]+tdn[i,2])/2
        bftupdn[i,3]=(tup[i,2]+tdn[i,3])/2
        bftupdn[i,4]=(tup[i,3]+tdn[i,4])/2
        bftupdn[i,5]=(tup[i,4]+tdn[i,5])/2
        print(i);print(c(tup1[i,1:5]))
        print(i);print(c(tdn1[i,1:5]))
        print(i);print(c(tsm[i,1:5]))
        print(i);print(c(tup[i,1:5]))
        print(i);print(c(tdn[i,1:5]))
        print(i);print(c(bftupdn[i,1:5]))
        #bfbmiq[is.na(bfbmisp[,i]),i]=NA
        #bfquin[index,2] <- min(bfbmisp[index,12:94],na.rm=TRUE)
        #bfquin[index,7] <- max(bfbmisp[index,12:94],na.rm=TRUE)
print(bfquinm[id,1:6]);
}

bfq1m <-smooth.spline(x=bfquinm[,1],y=bfquinm[,2],df=7)
bfq2m <-smooth.spline(x=bfquinm[,1],y=bfquinm[,3],df=7)
bfq3m <-smooth.spline(x=bfquinm[,1],y=bfquinm[,4],df=7)
bfq4m <-smooth.spline(x=bfquinm[!is.na(bfquinm[,5]),1],y=bfquinm[!is.na(bfquinm[,5]),5],df=7)
bfq5m <-smooth.spline(x=bfquinm[,1],y=bfquinm[,6],df=7)

bfq1p <-predict(bfq1m,12:100)
bfq2p <-predict(bfq2m,12:100)
bfq3p <-predict(bfq3m,12:100)
bfq4p <-predict(bfq4m,12:100)
bfq5p <-predict(bfq5m,12:100)

bfq12tr <-smooth.spline(x=bftupdn[13:93,1],y=bftupdn[13:93,2],df=7)
bfq23tr <-smooth.spline(x=bftupdn[13:93,1],y=bftupdn[13:93,3],df=7)
bfq34tr <-smooth.spline(x=bftupdn[15:93,1],y=bftupdn[15:93,4],df=7)  #avoid NaNs
bfq45tr <-smooth.spline(x=bftupdn[15:93,1],y=bftupdn[15:93,5],df=7)  #avoid NaNs

bfq12trp <-predict(bfq12tr,12:100)
bfq23trp <-predict(bfq23tr,12:100)
bfq34trp <-predict(bfq34tr,12:100)
bfq45trp <-predict(bfq45tr,12:100)

save(bfq12trp,file = "bfq12trp.RData")
save(bfq23trp,file = "bfq23trp.RData")
save(bfq34trp,file = "bfq34trp.RData")
save(bfq45trp,file = "bfq45trp.RData")



dev.off()
plot.new()                                 #
plot(bfquinm[,1],bfquinm[,2],xlim=c(0,100),
main="Black Female BMI quintile means from longitudinal followup in NHEFS*",
ylim=c(10,40),ylab="BMI - black females",xlab="AGE",cex.main=1.7,cex.lab=1.5)
text(18,10,"*Based on individual level longitudinal data from National Health and Nutrition Examination Survey I (NHANES-I) (1971-1975)\n and NHANES-I Epidemiologic Followup Studies (NHEFS)  (1982-1984, 1986, 1987, and 1992)",
adj=c(0.2,0),cex=1) 
points(bfquinm[,1],bfquinm[,3])
points(bfquinm[,1],bfquinm[,4])
points(bfquinm[,1],bfquinm[,5])
points(bfquinm[,1],bfquinm[,6])
lines(bfq1p$x,bfq1p$y)
lines(bfq2p$x,bfq2p$y)
lines(bfq3p$x,bfq3p$y)
lines(bfq4p$x,bfq4p$y)
lines(bfq5p$x,bfq5p$y)
dev.copy2pdf(file="BFBMI-NHEFS-quintiles.pdf",width=12,height=8.)

leg.txt=c("Q1 <-> Q2","Q2 <-> Q3","Q3 <-> Q4","Q4 <-> Q5")
dev.off()
plot.new()                                 #
plot(bfq12trp$x,bfq12trp$y,xlim=c(0,100),type='l',
main="Markov transition rates between black female BMI quintiles from NHEFS followup*",
ylim=c(0,.15),ylab="Inter-quintile transition rate (per year)",xlab="AGE",cex.main=1.7,cex.lab=1.5)
text(18,-0.005,"*Based on individual level longitudinal data from National Health and Nutrition Examination Survey I (NHANES-I) (1971-1975)\n and NHANES-I Epidemiologic Followup Studies (NHEFS)  (1982-1984, 1986, 1987, and 1992)",
adj=c(0.2,0),cex=1) 
legend("top",border="black",title="Markov transition rates (per year) between BMI quintiles",leg.txt,lty=c(1,2,3,4),cex=1.5,bty="n")
lines(bfq23trp$x,bfq23trp$y,lty=2)
lines(bfq34trp$x,bfq34trp$y,lty=3)
lines(bfq45trp$x,bfq45trp$y,lty=4)
dev.copy2pdf(file="BF-Markov-NHEFS-quintiles.pdf",width=12,height=8.)


