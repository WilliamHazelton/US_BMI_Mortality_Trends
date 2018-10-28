
dmqa <- read.delim(file = 'DMQ_A_1999-00.csv',sep=",",header = TRUE)
bmxa <- read.delim(file = 'BMX_A_1999-00.csv',sep=",",header = TRUE)

dmqb <- read.delim(file = 'DMQ_B_2001-02.csv',sep=",",header = TRUE)
bmxb <- read.delim(file = 'BMX_B_2001-02.csv',sep=",",header = TRUE)

dmqc <- read.delim(file = 'DMQ_C_2003-04.csv',sep=",",header = TRUE)
bmxc <- read.delim(file = 'BMX_C_2003-04.csv',sep=",",header = TRUE)

dmqd <- read.delim(file = 'DMQ_D_2005-06.csv',sep=",",header = TRUE)
bmxd <- read.delim(file = 'BMX_D_2005-06.csv',sep=",",header = TRUE)

dmqe <- read.delim(file = 'DMQ_E_2007-08.csv',sep=",",header = TRUE)
bmxe <- read.delim(file = 'BMX_E_2007-08.csv',sep=",",header = TRUE)

dmqf <- read.delim(file = 'DMQ_F_2009-10.csv',sep=",",header = TRUE)
bmxf <- read.delim(file = 'BMX_F_2009-10.csv',sep=",",header = TRUE)

dmqg <- read.delim(file = 'DMQ_G_2011-12.csv',sep=",",header = TRUE)
bmxg <- read.delim(file = 'BMX_G_2011-12.csv',sep=",",header = TRUE)

dmqh <- read.delim(file = 'DMQ_H_2013-14.csv',sep=",",header = TRUE)
bmxh <- read.delim(file = 'BMX_H_2013-14.csv',sep=",",header = TRUE)

matcha=dmqa$SEQN %in% bmxa$SEQN
mdmqa <- dmqa[matcha,]
matchma=match(mdmqa$SEQN,bmxa$SEQN)
dmqseqa <- mdmqa[matchma,]

matchb=dmqb$SEQN %in% bmxb$SEQN
mdmqb <- dmqb[matchb,]
matchmb=match(mdmqb$SEQN,bmxb$SEQN)
dmqseqb <- mdmqb[matchmb,]


matchc=dmqc$SEQN %in% bmxc$SEQN
mdmqc <- dmqc[matchc,]
matchmc=match(mdmqc$SEQN,bmxc$SEQN)
dmqseqc <- mdmqc[matchmc,]

matchd=dmqd$SEQN %in% bmxd$SEQN
mdmqd <- dmqd[matchd,]
matchmd=match(mdmqd$SEQN,bmxd$SEQN)
dmqseqd <- mdmqd[matchmd,]

matche=dmqe$SEQN %in% bmxe$SEQN
mdmqe <- dmqe[matche,]
matchme=match(mdmqe$SEQN,bmxe$SEQN)
dmqseqe <- mdmqe[matchme,]

matchf=dmqf$SEQN %in% bmxf$SEQN
mdmqf <- dmqf[matchf,]
matchmf=match(mdmqf$SEQN,bmxf$SEQN)
dmqseqf <- mdmqf[matchmf,]

matchg=dmqg$SEQN %in% bmxg$SEQN
mdmqg <- dmqg[matchg,]
matchmg=match(mdmqg$SEQN,bmxg$SEQN)
dmqseqg <- mdmqg[matchmg,]

matchh=dmqh$SEQN %in% bmxh$SEQN
mdmqh <- dmqh[matchh,]
matchmh=match(mdmqh$SEQN,bmxh$SEQN)
dmqseqh <- mdmqh[matchmh,]


lclin <- dim(clin)[1]
dirnames <- dir(path=".",all.files = TRUE)
nameslist <- c("cancerEAC","normalEAC","cancerESC","normalESC")
tissuelist <- c("01","11","01","11")
diaglist <- c("Esophagus Adenocarcinoma  NOS","Esophagus Squamous Cell Carcinoma")
tcga_beta1 <- NULL
histdiag <- NULL
prospective <- NULL
retrospective <- NULL
sex <- NULL
race <- NULL
ethnicity <- NULL
pbc <- NULL                   #patient barcode
puuid <- NULL                 #patient uuid
agediag <- NULL         #patient age at diagnosis
agesample <- NULL
height <- NULL
weight <- NULL
bmi <- NULL
smokehist <- NULL
smokestart <- NULL
smokeyearquit <- NULL
smokepy <- NULL
refluxhist <- NULL
refluxtreat <- NULL
hpylorihist <- NULL
initdiag <- NULL
behist <- NULL
begoblethist <- NULL
famesgacahist <- NULL
famreldiag <- NULL
tumorloc <- NULL
escolmet <- NULL
colmetgoblet <- NULL
noncadysp <- NULL
tumorgrade <- NULL
yeardiag <- NULL
ajccstage <- NULL
icd10 <- NULL
icdo3hist <- NULL
icdo3site <- NULL
tumorsite <- NULL
ii=0
for(i in 1:lclin) {
#for(i in 1:10) {
  if(clin$histologic_diagnosis[i] == "Esophagus Adenocarcinoma  NOS") {
    filenum=grep(clin$bcr_patient_barcode[i],dirnames)
    lfnum=length(filenum)
    for(k in 1:lfnum) {
      filename = dirnames[filenum[k]]
      if(substr(filename,59,60)=="01") {              #01 = primary solid tumor
        ii = ii+1
        print(ii);print(filename)
        tcga_data<-read.delim(file=filename)
        ltcga <- dim(tcga_data)[1]
        tcga_beta1 <- rbind(tcga_beta1,as.numeric(as.vector(tcga_data[2:ltcga,2])))
        pbc <- unlist(append(pbc,as.vector(clin$bcr_patient_barcode[i])))
        puuid <- unlist(append(puuid,as.vector(clin$bcr_patient_uuid[i])))
        histdiag <- unlist(append(histdiag,as.vector(clin$histologic_diagnosis[i])))
        prospective <- unlist(append(prospective,as.vector(clin$prospective_collection[i])))
        retrospective <- unlist(append(retrospective,as.vector(clin$retrospective_collection[i])))
        sex <- unlist(append(sex,as.vector(clin$gender[i])))
        race <- unlist(append(race,as.vector(clin$race[i])))
        ethnicity <- unlist(append(ethnicity,as.vector(clin$ethnicity[i])))
        agesample <- unlist(append(agesample,-as.numeric(as.vector(clin$birth_days_to[i]))/365.24))
        agediag <- unlist(append(agediag,as.numeric(as.vector(clin$age_at_diagnosis[i]))))
        height <- unlist(append(height,as.numeric(as.vector(clin$height_cm_at_diagnosis[i]))))
        weight <- unlist(append(weight,as.numeric(as.vector(clin$weight_kg_at_diagnosis[i]))))
        smokehist <- unlist(append(smokehist,as.vector(clin$tobacco_smoking_history_indicator[i])))
        smokestart <- unlist(append(smokestart,as.numeric(as.vector(clin$tobacco_smoking_age_started[i]))))
        smokeyearquit <- unlist(append(smokeyearquit,as.numeric(as.vector(clin$tobacco_smoking_year_stopped[i]))))
        smokepy <- unlist(append(smokepy,as.numeric(as.vector(clin$tobacco_smoking_pack_years_smoked[i]))))
        refluxhist <- unlist(append(refluxhist,as.vector(clin$history_reflux_disease_indicator[i])))
        refluxtreat <- unlist(append(refluxtreat,as.vector(clin$history_reflux_disease_treatment[i])))
        hpylorihist <- unlist(append(hpylorihist,as.vector(clin$history_hpylori_infection_indicator[i])))
        initdiag <- unlist(append(initdiag,as.vector(clin$initial_diagnosis_esophageal_ca_type[i])))
        behist <- unlist(append(behist,as.vector(clin$history_barretts_esophageal_indicator[i])))
        begoblethist <- unlist(append(begoblethist,as.vector(clin$history_if_barretts_goblet_cell_indicator[i])))
        famesgacahist <- unlist(append(famesgacahist,as.vector(clin$family_history_esoph_gastic_cancer[i])))
        famreldiag <- unlist(append(famreldiag,as.numeric(as.vector(clin$number_of_relatives_diagnosed[i]))))
        tumorloc <- unlist(append(tumorloc,as.vector(clin$esophageal_tumor_location_centered[i])))
        escolmet <- unlist(append(escolmet,as.vector(clin$esoph_columnar_metaplasia_indicator[i])))
        colmetgoblet <- unlist(append(colmetgoblet,as.vector(clin$columnar_metaplasia_goblet_cell_indicator[i])))
        noncadysp <- unlist(append(noncadysp,as.vector(clin$esoph_non_ca_degree_of_dysplasia[i])))
        tumorgrade <- unlist(append(tumorgrade,as.vector(clin$tumor_grade[i])))
        yeardiag <- unlist(append(yeardiag,as.numeric(as.vector(clin$initial_pathologic_dx_year[i]))))
        ajccstage <- unlist(append(ajccstage,as.vector(clin$ajcc_clinical_tumor_stage[i])))
        icd10 <- unlist(append(icd10,as.vector(clin$icd_10[i])))
        icdo3hist <- unlist(append(icdo3hist,as.vector(clin$icd_o_3_histology[i])))
        icdo3site <- unlist(append(icdo3site,as.vector(clin$icd_o_3_site[i])))
        tumorsite <- unlist(append(tumorsite,as.vector(clin$tumor_tissue_site[i])))
      }
    }
  }
}
bmi <-weight/(height/100)^2
cpg_elements <- tcga_data[2:ltcga,1]
gene_symbols <- tcga_data[2:ltcga,3]
chromosomes <- tcga_data[2:ltcga,4]
genomic_coordinates<- tcga_data[2:ltcga,5]
tcga_beta <- t(tcga_beta1)
ltcgaid <- dim(tcga_beta)[2]
logit2 = function(x,xl,xu) {return(log2((x-xl)/(xu-x)))}
inv.logit = function(xt,xl,xu) {
  rho = exp(xt)
  return((rho * xu+xl)/(1.+rho))
}
tcga_m2 <- logit2(tcga_beta,0,1)
colnames(tcga_beta) <-c(1:ii)
rownames(tcga_beta) <- cpg_elements
colnames(tcga_m2) <-c(1:ii)
rownames(tcga_m2) <- cpg_elements
tcgapathname='~/Data/Methylation/TCGA/Esophagus/Level_3_TCGA_data'
besqpathname='~/Data/Methylation/'
load(file=paste(besqpathname,'manifestData.rdat',sep=''))
load(file=paste(besqpathname,'beM.rdat',sep=''))
load(file=paste(besqpathname,'sqM.rdat',sep=''))
load(file=paste(besqpathname,'lmSQ.rdat',sep=''))
load(file=paste(besqpathname,'Age.BE.rdat',sep=''))
load(file=paste(besqpathname,'CpGs.D2.220.rdat',sep=''))
load(file=paste(besqpathname,'beM.rdat',sep=''))
load(file=paste(besqpathname,'sqM.rdat',sep=''))
load(file=paste(besqpathname,'Age.BE.rdat',sep=''))
load(file=paste(besqpathname,'CpGs.D2.220.rdat',sep=''))
load(file=paste(besqpathname,'CpGs.D2.36.rdat',sep=''))
beM2=beM/log(2)
sqM2=sqM/log(2)
Age.SQ=Age.BE                               #paired samples
EstAge.BE=Age.BE-c(9.246,33.81,7.369,0.958,1.438,9.035,49.43,23.43,47.12,51.2,21.9,5.3,11.15,60.78,25.9,33.15,35.21,46.47,16.78,45.34,15.17,29.51,10.93,51.28,39.72,55.98,20.78,54.61,41.25,47.26)
lnind=dim(beM2)[2]                          #number of individuals (in list of BE m-value file
ln220=dim(CpGs.D2.220)[1]  
ln36=dim(CpGs.D2.36)
cpgn220 = as.vector(CpGs.D2.220$cpgn)  
cpgn36 = as.vector(CpGs.D2.36$cpgn)
ylabel="M-value at probe (+10 for Normal, -10 for BE)"
agerange=range(Age.BE)
ageint=agerange[2]-agerange[1]
Estagerange=range(EstAge.BE)
Estageint=Estagerange[2]-Estagerange[1]
age_bluegreen<-rgb(0,1-(Age.BE-agerange[1])/(ageint),(Age.BE-agerange[1])/(ageint))
age_redgreen<-rgb((Age.BE-agerange[1])/(ageint),1-(Age.BE-agerange[1])/(ageint),0)
age_bluegreenBEage<-rgb(0,1-(EstAge.BE-Estagerange[1])/(Estageint),(EstAge.BE-Estagerange[1])/(Estageint))
agediagrange <- range(agediag)
agediagint <- agediagrange[2]-agediagrange[1]
agetcga_redblue<-rgb((agediag-agediagrange[1])/(agediagint),0,1-(agediag-agediagrange[1])/(agediagint))

#xaxis='coord'
xaxis='cpgseq'

#220 BE clock probes in CpGs.D2.220 plotted by chromosomal coordinate
dev.off()
zooml=4; zoomr=4; window=3000
for(j in 1:ln220) {       #jth clock probe #for j=1, sitename="MAP1B", ccpg[1]="cg21952901                   #gene
  #for(j in 1:ln220) {       #jth clock probe #for j=1, sitename="MAP1B", ccpg[1]="cg21952901         
  clid=which(row.names(manifestData) == cpgn220[j])
  #clid=which(row.names(manifestData) == 'cg14526997')
  chrname=manifestData$CHR37[clid]
  sitename=manifestData$sym[clid]
  clcoord=manifestData$cpg.coord[clid]
  if(is.na(sitename)) {sitename=cpgn220[j]
  id2=  which((manifestData$CHR37 == chrname) &
                (manifestData$cpg.coord > manifestData$cpg.coord[clid]-window) &
                (manifestData$cpg.coord < manifestData$cpg.coord[clid]+window)) }
  else {id2 = which(manifestData$sym == sitename)  #list of probes in gene
  }
  filenamezoomEstBEage=paste('./Figures2/',j,'-',sitename,'_zoom_EstBEage.eps',sep='')
  id2o = order(manifestData$cpg.coord[id2])  #ordering of list of probes in gene
  rid2=id2[id2o]                             #reordered probe list by sequence position
  lnid2=length(rid2)                         #length of probe list
  rid1s=vector(mode = "integer", length = lnid2)
  rid2s=vector(mode = "integer", length = lnid2)
  rtcga1s=vector(mode = "integer", length = lnid2)
  kk=0
  for(k in 1:lnid2) {
    rid1t=which(row.names(sqM2) == row.names(manifestData)[rid2][k] )
    if(length(rid1t)>0) {kk=kk+1
    rid1s[kk]=which(row.names(sqM2) == row.names(manifestData)[rid2][k] )
    rid2s[kk]=rid2[k]
    rtcga1s[kk]=which(row.names(tcga_m2) == row.names(manifestData)[rid2][k] )
    }
  }
  lnid12=kk
  clnum= which(clid == rid2s, rid2s)
  nl=max(1,clnum-zooml)
  nr=min(clnum+zoomr,lnid12)
  rt=20; rb=-20
  xl=max(clcoord-window,manifestData$cpg.coord[rid2s[nl]])
  xr=min(clcoord+window,manifestData$cpg.coord[rid2s[nr]])
  print(c(nl,nr,clnum,zooml,zoomr,lnid12,rid2s[nl],rid2s[nr],manifestData$cpg.coord[rid2s[nl]],manifestData$cpg.coord[rid2s[nr]]))
  leg.age.txt=c("Normal age 41","Normal age 88","Est. BE dur. 1 yr","Est. BE dur. 77 yr")
  leg.age.col=c(age_redgreen[2],age_redgreen[23],age_bluegreenBEage[2],age_bluegreenBEage[23])
  plot.new()                                 #age-shift squamous(green) vs BE(blue) by position
  plot(manifestData$cpg.coord[rid2s],sqM2[rid1s,1]+10,type='l',lwd=0.75,col=age_redgreen[1],main=c(paste(sitename,"on chromosome",chrname,"zoom CpGs",nl,"-",nr,"out of",lnid12),sep=" "),ylab=ylabel,xlab="Chromosome coordinate position",ylim=c(rb,rt),xlim=c(xl,xr))   #1st ind sq (green)
  legend("top",border="black",title="Sample Histology",leg.age.txt,col=leg.age.col,pch=1,cex=1,bty="n")
  for(i in lnind:1) {lines(manifestData$cpg.coord[rid2s],sqM2[rid1s,i]+10,lwd=0.75,col=age_redgreen[i])}     #other sq (green)
  for(i in lnind:1) {lines(manifestData$cpg.coord[rid2s],beM2[rid1s,i]-10,lwd=0.75,col=age_bluegreenBEage[i])}     #BE  (blue)
  for(i in ltcgaid:1) {lines(manifestData$cpg.coord[rid2s],tcga_m2[rtcga1s,i]-10,col=agetcga_redblue[i],lty=2,lwd=1)}     #EAC  (redblue)
  text(clcoord,rt+0.5,labels="clock",cex=0.8,srt=90,adj=c(0.5,0))
  text(clcoord,rb-0.5,labels="clock",cex=0.8,srt=90,adj=c(0.5,0))
  for(k in 1:lnid12) {text(manifestData$cpg.coord[rid2s[k]],2,adj=c(0.5,0),labels=manifestData$probe.location[rid2s[k]],cex=0.6,srt=90)}
  for(k in 1:lnid12) {text(manifestData$cpg.coord[rid2s[k]],-2,adj=c(0.5,0),labels=manifestData$cpgi.relation[rid2s[k]],cex=0.6,srt=90)}
  for(k in 1:lnid12) {text(manifestData$cpg.coord[rid2s[k]],rb+2,adj=c(0.5,0),labels=row.names(manifestData)[rid2s][k],cex=0.6,srt=90)}
  abline(v=clcoord,lty=2)
  dev.print(file=filenamezoomEstBEage,width=12,height=8.,horizontal=F)
}

#######################################################################################################
#NEW probes - stacked plots of normal and BE/TCGA
#36 BE clock probes in CpGs.D2.36 plotted by chromosomal coordinate - file from Georg on 12/04/2015
dev.off()
zooml=4; zoomr=4; window=3000

for(j in 1:ln36) {       #jth clock probe #for j=1, sitename="MAP1B", ccpg[1]="cg21952901         
  clid=which(row.names(manifestData) == cpgn36[j])
  #clid=which(row.names(manifestData) == 'cg14526997')
  chrname=manifestData$CHR37[clid]
  sitename=manifestData$sym[clid]
  clcoord=manifestData$cpg.coord[clid]
  if(is.na(sitename)) {sitename=cpgn220[j]
  id2=  which((manifestData$CHR37 == chrname) &
                (manifestData$cpg.coord > manifestData$cpg.coord[clid]-window) &
                (manifestData$cpg.coord < manifestData$cpg.coord[clid]+window)) }
  else {id2 = which(manifestData$sym == sitename)  #list of probes in gene
  }
  filenamezoomEstBEage=paste('./Figure36/',j,'-',sitename,'.eps',sep='')
  id2o = order(manifestData$cpg.coord[id2])  #ordering of list of probes in gene
  rid2=id2[id2o]                             #reordered probe list by sequence position
  lnid2=length(rid2)                         #length of probe list
  rid1s=vector(mode = "integer", length = lnid2)
  rid2s=vector(mode = "integer", length = lnid2)
  rtcga1s=vector(mode = "integer", length = lnid2)
  kk=0
  for(k in 1:lnid2) {
    rid1t=which(row.names(sqM2) == row.names(manifestData)[rid2][k] )
    if(length(rid1t)>0) {kk=kk+1
    rid1s[kk]=which(row.names(sqM2) == row.names(manifestData)[rid2][k] )
    rid2s[kk]=rid2[k]
    rtcga1s[kk]=which(row.names(tcga_m2) == row.names(manifestData)[rid2][k] )
    }
  }
  lnid12=kk
  clnum= which(clid == rid2s, rid2s)
  nl=max(1,clnum-zooml)
  nr=min(clnum+zoomr,lnid12)
  rt=20; rb=-20
  xl=max(clcoord-window,manifestData$cpg.coord[rid2s[nl]])
  xr=min(clcoord+window,manifestData$cpg.coord[rid2s[nr]])
  print(c(nl,nr,clnum,zooml,zoomr,lnid12,rid2s[nl],rid2s[nr],manifestData$cpg.coord[rid2s[nl]],manifestData$cpg.coord[rid2s[nr]]))
  leg.age.txt=c("Normal age 41","Normal age 88","Est. BE dur. 1 yr","Est. BE dur. 77 yr")
  leg.age.col=c(age_redgreen[2],age_redgreen[23],age_bluegreenBEage[2],age_bluegreenBEage[23])
  plot.new()                                 #age-shift squamous(green) vs BE(blue) by position
  plot(manifestData$cpg.coord[rid2s],sqM2[rid1s,1]+10,type='l',lwd=0.75,col=age_redgreen[1],main=c(paste(sitename,"on chromosome",chrname,"zoom CpGs",nl,"-",nr,"out of",lnid12),sep=" "),ylab=ylabel,xlab="Chromosome coordinate position",ylim=c(rb,rt),xlim=c(xl,xr))   #1st ind sq (green)
  legend("top",border="black",title="Sample Histology",leg.age.txt,col=leg.age.col,pch=1,cex=1,bty="n")
  for(i in lnind:1) {lines(manifestData$cpg.coord[rid2s],sqM2[rid1s,i]+10,lwd=0.75,col=age_redgreen[i])}     #other sq (green)
  for(i in lnind:1) {lines(manifestData$cpg.coord[rid2s],beM2[rid1s,i]-10,lwd=0.75,col=age_bluegreenBEage[i])}     #BE  (blue)
  for(i in ltcgaid:1) {lines(manifestData$cpg.coord[rid2s],tcga_m2[rtcga1s,i]-10,col=agetcga_redblue[i],lty=2,lwd=1)}     #EAC  (redblue)
  text(clcoord,rt+0.5,labels="clock",cex=0.8,srt=90,adj=c(0.5,0))
  text(clcoord,rb-0.5,labels="clock",cex=0.8,srt=90,adj=c(0.5,0))
  for(k in 1:lnid12) {text(manifestData$cpg.coord[rid2s[k]],2,adj=c(0.5,0),labels=manifestData$probe.location[rid2s[k]],cex=0.6,srt=90)}
  for(k in 1:lnid12) {text(manifestData$cpg.coord[rid2s[k]],-2,adj=c(0.5,0),labels=manifestData$cpgi.relation[rid2s[k]],cex=0.6,srt=90)}
  for(k in 1:lnid12) {text(manifestData$cpg.coord[rid2s[k]],rb+2,adj=c(0.5,0),labels=row.names(manifestData)[rid2s][k],cex=0.6,srt=90)}
  abline(v=clcoord,lty=2)
  dev.print(file=filenamezoomEstBEage,width=12,height=8.,horizontal=F)
}

############################################################################################################
#NEW probes - program 1 - stacked plots of normal and BE/TCGA
#36 BE clock probes in CpGs.D2.36 plotted by chromosomal coordinate - file from Georg on 12/04/2015
#####################################################################################################################
#36 BE clock probes in CpGs.D2.36 plotted by chromosomal or equally-spaced coordinate
dev.off()
ylabel="M-value at probe"
zooml=20; zoomr=20; window=2000
for(j in 1:ln36) {       #jth clock probe #for j=1, sitename="MAP1B", ccpg[1]="cg21952901                   #gene
  clid=which(row.names(manifestData) == cpgn36[j])
  #clid=which(row.names(manifestData) == 'cg14526997')
  #clid=320646
  chrname=manifestData$CHR37[clid]
  sitename=manifestData$sym[clid]
  clcoord=manifestData$cpg.coord[clid]
  if(is.na(sitename)|choose) {sitename=cpgn220[j]
  id2=  which((manifestData$CHR37 == chrname) &
                (manifestData$cpg.coord > manifestData$cpg.coord[clid]-window) &
                (manifestData$cpg.coord < manifestData$cpg.coord[clid]+window)) }
  else {id2 = which(manifestData$sym == sitename)  #list of probes in gene
  }
  filename=paste('./Figure36/',j,'-',sitename,'.pdf',sep='')
  id2o = order(manifestData$cpg.coord[id2])  #ordering of list of probes in gene
  rid2=id2[id2o]                             #reordered probe list by sequence position
  lnid2=length(rid2)                         #length of probe list
  rid1s=vector(mode = "integer", length = lnid2)
  rid2s=vector(mode = "integer", length = lnid2)
  rtcga1s=vector(mode = "integer", length = lnid2)
  
  kk=0
  for(k in 1:lnid2) { 
    rid1t=which(row.names(sqM2) == row.names(manifestData)[rid2][k] )
    if(length(rid1t)>0) {kk=kk+1
    rid1s[kk]=which(row.names(sqM2) == row.names(manifestData)[rid2][k] )
    rid2s[kk]=rid2[k]
    rtcga1s[kk]=which(row.names(tcga_m2) == row.names(manifestData)[rid2][k] )
    }
  }
  msqM2 <- apply(sqM[rid1s,],1,mean)
  sdsqM2 <- apply(sqM[rid1s,],1,sd)
  lnid12=kk
  clnum= which(clid == rid2s, rid2s)
  nl=max(1,clnum-zooml)
  nr=min(clnum+zoomr,lnid12)
  rt=10; rb=-10
  xl=max(clcoord-window,manifestData$cpg.coord[rid2s[nl]])
  xr=min(clcoord+window,manifestData$cpg.coord[rid2s[nr]])
  print(c(nl,nr,clnum,zooml,zoomr,lnid12,rid2s[nl],rid2s[nr],manifestData$cpg.coord[rid2s[nl]],manifestData$cpg.coord[rid2s[nr]]))
  leg.age.txt=c("EAC - TCGA","Oldest BE (Est dur. ~77 yr)","Young BE (Est dur ~1 yr)","Normal squamous (mean +- SD)")
  leg.age.col=c("red",age_bluegreenBEage[23],age_bluegreenBEage[2],"black")
  plot.new()                                 #age-shift squamous(green) vs BE(blue) by position
  plot(manifestData$cpg.coord[rid2s],msqM2,type='l',lwd=2,col='black',main=c(paste(sitename,"on chromosome",chrname,"zoom CpGs",nl,"-",nr,"out of",lnid12),sep=" "),ylab=ylabel,xlab="Chromosome coordinate position",ylim=c(rb,rt),xlim=c(xl,xr))   #1st ind sq (green)
  legend("top",border="black",title="",leg.age.txt,col=leg.age.col,pch=1,cex=0.75,bty="n")
  
  #for(i in lnind:1) {lines(manifestData$cpg.coord[rid2s],sqM2[rid1s,i]+10,lwd=0.75,col=age_redgreen[i])}     #other sq (green)
  #for(i in lnind:1) {lines(manifestData$cpg.coord[rid2s],beM2[rid1s,i],lwd=1.0,col=age_bluegreenBEage[i])}     #BE  (blue)
  #for(i in ltcgaid:1) {lines(manifestData$cpg.coord[rid2s],tcga_m2[rtcga1s,i],col=agetcga_redblue[i],lty=2,lwd=0.5)}     #EAC  (redblue)
  for(i in ltcgaid:1) {lines(manifestData$cpg.coord[rid2s],tcga_m2[rtcga1s,i],col="red",lty=2,lwd=0.5)}     #EAC  (redblue)
  
  for(i in lnind:1) {lines(manifestData$cpg.coord[rid2s],beM2[rid1s,i],lwd=1.0,col=age_bluegreenBEage[i])} #BE  (blue)
  arrows(manifestData$cpg.coord[rid2s],msqM2,manifestData$cpg.coord[rid2s],msqM2+sdsqM2,length=0.1,angle=90,col="black",lwd=2)
  arrows(manifestData$cpg.coord[rid2s],msqM2,manifestData$cpg.coord[rid2s],msqM2-sdsqM2,length=0.1,angle=90,col="black",lwd=2)
  lines(manifestData$cpg.coord[rid2s],msqM2,type='l',lwd=2,col='black')
  text(clcoord,rt-0.5,labels="clock",cex=1.25,srt=90,adj=c(0.5,0))
  #text(clcoord,rb-0.2,labels="clock",cex=0.8,srt=90,adj=c(0.5,0))
  for(k in 1:lnid12) {text(manifestData$cpg.coord[rid2s[k]],rb+1.5,pos=4,adj=c(0.5,0),labels=manifestData$probe.location[rid2s[k]],cex=0.6,srt=90)}
  for(k in 1:lnid12) {text(manifestData$cpg.coord[rid2s[k]],rb-.5,pos=4,adj=c(0.5,0),labels=manifestData$cpgi.relation[rid2s[k]],cex=0.6,srt=90)}
  for(k in 1:lnid12) {text(manifestData$cpg.coord[rid2s[k]],rb+2.5,pos=2,adj=c(0.5,0),labels=row.names(manifestData)[rid2s][k],cex=0.6,srt=90)}
  for(k in 1:lnid12) {text(manifestData$cpg.coord[rid2s[k]],rt-0.5,pos=2,adj=c(0.5,0),labels=manifestData$sym[rid2s][k],cex=0.6,srt=90)}
  abline(v=clcoord,lty=2)
  dev.copy2pdf(file=filename,width=12,height=8.)
}







#########################################################################################################
#220 BE clock probes in CpGs.D2.220 plotted by chromosomal coordinate
dev.off()
ylabel="M-value at probe"
zooml=2; zoomr=2; window=100
#for(j in 1:ln220) {       #jth clock probe #for j=1, sitename="MAP1B", ccpg[1]="cg21952901                   #gene
  for(j in 208:208) {       #jth clock probe #for j=1, sitename="MAP1B", ccpg[1]="cg21952901         
  clid=which(row.names(manifestData) == cpgn220[j])
  #clid=which(row.names(manifestData) == 'cg14526997')
  chrname=manifestData$CHR37[clid]
  sitename=manifestData$sym[clid]
  clcoord=manifestData$cpg.coord[clid]
  if(is.na(sitename)) {sitename=cpgn220[j]
  id2=  which((manifestData$CHR37 == chrname) &
                (manifestData$cpg.coord > manifestData$cpg.coord[clid]-window) &
                (manifestData$cpg.coord < manifestData$cpg.coord[clid]+window)) }
  else {id2 = which(manifestData$sym == sitename)  #list of probes in gene
  }
  filenamezoomEstBEage=paste('./Figures3/',j,'-',sitename,'_zoom_EstBEage.pdf',sep='')
  id2o = order(manifestData$cpg.coord[id2])  #ordering of list of probes in gene
  rid2=id2[id2o]                             #reordered probe list by sequence position
  lnid2=length(rid2)                         #length of probe list
  rid1s=vector(mode = "integer", length = lnid2)
  rid2s=vector(mode = "integer", length = lnid2)
  rtcga1s=vector(mode = "integer", length = lnid2)

  kk=0
  for(k in 1:lnid2) { 
    rid1t=which(row.names(sqM2) == row.names(manifestData)[rid2][k] )
    if(length(rid1t)>0) {kk=kk+1
    rid1s[kk]=which(row.names(sqM2) == row.names(manifestData)[rid2][k] )
    rid2s[kk]=rid2[k]
    rtcga1s[kk]=which(row.names(tcga_m2) == row.names(manifestData)[rid2][k] )
    }
  }
  msqM2 <- apply(sqM[rid1s,],1,mean)
  sdsqM2 <- apply(sqM[rid1s,],1,sd)
  lnid12=kk
  clnum= which(clid == rid2s, rid2s)
  nl=max(1,clnum-zooml)
  nr=min(clnum+zoomr,lnid12)
  rt=10; rb=-10
  xl=max(clcoord-window,manifestData$cpg.coord[rid2s[nl]])
  xr=min(clcoord+window,manifestData$cpg.coord[rid2s[nr]])
  print(c(nl,nr,clnum,zooml,zoomr,lnid12,rid2s[nl],rid2s[nr],manifestData$cpg.coord[rid2s[nl]],manifestData$cpg.coord[rid2s[nr]]))
  leg.age.txt=c("EAC - TCGA","Oldest BE (Est dur. ~77 yr)","Young BE (Est dur ~1 yr)","Normal squamous (mean +- SD)")
  leg.age.col=c("red",age_bluegreenBEage[23],age_bluegreenBEage[2],"black")
  plot.new()                                 #age-shift squamous(green) vs BE(blue) by position
  plot(manifestData$cpg.coord[rid2s],msqM2,type='l',lwd=2,col='black',main=c(paste(sitename,"on chromosome",chrname,"zoom CpGs",nl,"-",nr,"out of",lnid12),sep=" "),ylab=ylabel,xlab="Chromosome coordinate position",ylim=c(rb,rt),xlim=c(xl,xr))   #1st ind sq (green)
  legend("top",border="black",title="",leg.age.txt,col=leg.age.col,pch=1,cex=0.75,bty="n")

  #for(i in lnind:1) {lines(manifestData$cpg.coord[rid2s],sqM2[rid1s,i]+10,lwd=0.75,col=age_redgreen[i])}     #other sq (green)
  #for(i in lnind:1) {lines(manifestData$cpg.coord[rid2s],beM2[rid1s,i],lwd=1.0,col=age_bluegreenBEage[i])}     #BE  (blue)
  #for(i in ltcgaid:1) {lines(manifestData$cpg.coord[rid2s],tcga_m2[rtcga1s,i],col=agetcga_redblue[i],lty=2,lwd=0.5)}     #EAC  (redblue)
  for(i in ltcgaid:1) {lines(manifestData$cpg.coord[rid2s],tcga_m2[rtcga1s,i],col="red",lty=2,lwd=0.5)}     #EAC  (redblue)

  for(i in lnind:1) {lines(manifestData$cpg.coord[rid2s],beM2[rid1s,i],lwd=1.0,col=age_bluegreenBEage[i])} #BE  (blue)
  arrows(manifestData$cpg.coord[rid2s],msqM2,manifestData$cpg.coord[rid2s],msqM2+sdsqM2,length=0.1,angle=90,col="black",lwd=2)
  arrows(manifestData$cpg.coord[rid2s],msqM2,manifestData$cpg.coord[rid2s],msqM2-sdsqM2,length=0.1,angle=90,col="black",lwd=2)
  lines(manifestData$cpg.coord[rid2s],msqM2,type='l',lwd=2,col='black')
  text(clcoord,rt-0.5,labels="clock",cex=1.25,srt=90,adj=c(0.5,0))
  #text(clcoord,rb-0.2,labels="clock",cex=0.8,srt=90,adj=c(0.5,0))
  for(k in 1:lnid12) {text(manifestData$cpg.coord[rid2s[k]],rb+1.5,pos=4,adj=c(0.5,0),labels=manifestData$probe.location[rid2s[k]],cex=0.6,srt=90)}
  for(k in 1:lnid12) {text(manifestData$cpg.coord[rid2s[k]],rb-.5,pos=4,adj=c(0.5,0),labels=manifestData$cpgi.relation[rid2s[k]],cex=0.6,srt=90)}
  for(k in 1:lnid12) {text(manifestData$cpg.coord[rid2s[k]],rb+2.5,pos=2,adj=c(0.5,0),labels=row.names(manifestData)[rid2s][k],cex=0.6,srt=90)}
  abline(v=clcoord,lty=2)
  dev.copy2pdf(file=filenamezoomEstBEage,width=12,height=8.)
  #pdf(file=filenamezoomEstBEage,width=12,height=8.)
  
  #tiff(file=filenamezoomEstBEage,width=12,height=8.,res=300,compression='lzw')
  #tiff(file=filenamezoomEstBEage,width=4,height=4,units='in',res=300,compression='lzw')
  # dev.print(file=filenamezoomEstBEage,device=pdf,width=6,height=8,horizontal=F)
  #dev.off()
}
###################################
which((manifestData$sym=="CDKN2A"))
[1]  67181 320646 321931
which((manifestData$sym=="TP53"))
[1] 430841 434083 437262 438100 438102 439112 441024 442190 445174
choose=TRUE
choose=FALSE
#####################################################################################################################
#Specific probes - TP53,CDKN2A
#220 BE clock probes in CpGs.D2.220 plotted by chromosomal coordinate
dev.off()
ylabel="M-value at probe"
zooml=20; zoomr=20; window=800000
#for(j in 1:ln220) {       #jth clock probe #for j=1, sitename="MAP1B", ccpg[1]="cg21952901                   #gene
for(j in 2:2) {       #jth clock probe #for j=1, sitename="MAP1B", ccpg[1]="cg21952901         
  #clid=which(row.names(manifestData) == cpgn220[j])
  #clid=which(row.names(manifestData) == 'cg14526997')
  #clid=320646
  clid=438100
  chrname=manifestData$CHR37[clid]
  sitename=manifestData$sym[clid]
  clcoord=manifestData$cpg.coord[clid]
  if(is.na(sitename)|choose) {sitename=cpgn220[j]
  id2=  which((manifestData$CHR37 == chrname) &
                (manifestData$cpg.coord > manifestData$cpg.coord[clid]-window) &
                (manifestData$cpg.coord < manifestData$cpg.coord[clid]+window)) }
  else {id2 = which(manifestData$sym == sitename)  #list of probes in gene
  }
  filenamezoomEstBEage=paste('./Figures3/',j,'-',sitename,'_zoom_EstBEage.pdf',sep='')
  id2o = order(manifestData$cpg.coord[id2])  #ordering of list of probes in gene
  rid2=id2[id2o]                             #reordered probe list by sequence position
  lnid2=length(rid2)                         #length of probe list
  rid1s=vector(mode = "integer", length = lnid2)
  rid2s=vector(mode = "integer", length = lnid2)
  rtcga1s=vector(mode = "integer", length = lnid2)
  
  kk=0
  for(k in 1:lnid2) { 
    rid1t=which(row.names(sqM2) == row.names(manifestData)[rid2][k] )
    if(length(rid1t)>0) {kk=kk+1
    rid1s[kk]=which(row.names(sqM2) == row.names(manifestData)[rid2][k] )
    rid2s[kk]=rid2[k]
    rtcga1s[kk]=which(row.names(tcga_m2) == row.names(manifestData)[rid2][k] )
    }
  }
  msqM2 <- apply(sqM[rid1s,],1,mean)
  sdsqM2 <- apply(sqM[rid1s,],1,sd)
  lnid12=kk
  clnum= which(clid == rid2s, rid2s)
  nl=max(1,clnum-zooml)
  nr=min(clnum+zoomr,lnid12)
  rt=10; rb=-10
  xl=max(clcoord-window,manifestData$cpg.coord[rid2s[nl]])
  xr=min(clcoord+window,manifestData$cpg.coord[rid2s[nr]])
  print(c(nl,nr,clnum,zooml,zoomr,lnid12,rid2s[nl],rid2s[nr],manifestData$cpg.coord[rid2s[nl]],manifestData$cpg.coord[rid2s[nr]]))
  leg.age.txt=c("EAC - TCGA","Oldest BE (Est dur. ~77 yr)","Young BE (Est dur ~1 yr)","Normal squamous (mean +- SD)")
  leg.age.col=c("red",age_bluegreenBEage[23],age_bluegreenBEage[2],"black")
  plot.new()                                 #age-shift squamous(green) vs BE(blue) by position
  plot(manifestData$cpg.coord[rid2s],msqM2,type='l',lwd=2,col='black',main=c(paste(sitename,"on chromosome",chrname,"zoom CpGs",nl,"-",nr,"out of",lnid12),sep=" "),ylab=ylabel,xlab="Chromosome coordinate position",ylim=c(rb,rt),xlim=c(xl,xr))   #1st ind sq (green)
  legend("top",border="black",title="",leg.age.txt,col=leg.age.col,pch=1,cex=0.75,bty="n")
  
  #for(i in lnind:1) {lines(manifestData$cpg.coord[rid2s],sqM2[rid1s,i]+10,lwd=0.75,col=age_redgreen[i])}     #other sq (green)
  #for(i in lnind:1) {lines(manifestData$cpg.coord[rid2s],beM2[rid1s,i],lwd=1.0,col=age_bluegreenBEage[i])}     #BE  (blue)
  #for(i in ltcgaid:1) {lines(manifestData$cpg.coord[rid2s],tcga_m2[rtcga1s,i],col=agetcga_redblue[i],lty=2,lwd=0.5)}     #EAC  (redblue)
  for(i in ltcgaid:1) {lines(manifestData$cpg.coord[rid2s],tcga_m2[rtcga1s,i],col="red",lty=2,lwd=0.5)}     #EAC  (redblue)
  
  for(i in lnind:1) {lines(manifestData$cpg.coord[rid2s],beM2[rid1s,i],lwd=1.0,col=age_bluegreenBEage[i])} #BE  (blue)
  arrows(manifestData$cpg.coord[rid2s],msqM2,manifestData$cpg.coord[rid2s],msqM2+sdsqM2,length=0.1,angle=90,col="black",lwd=2)
  arrows(manifestData$cpg.coord[rid2s],msqM2,manifestData$cpg.coord[rid2s],msqM2-sdsqM2,length=0.1,angle=90,col="black",lwd=2)
  lines(manifestData$cpg.coord[rid2s],msqM2,type='l',lwd=2,col='black')
  ###text(clcoord,rt-0.5,labels="clock",cex=1.25,srt=90,adj=c(0.5,0))
  #text(clcoord,rb-0.2,labels="clock",cex=0.8,srt=90,adj=c(0.5,0))
  for(k in 1:lnid12) {text(manifestData$cpg.coord[rid2s[k]],rb+1.5,pos=4,adj=c(0.5,0),labels=manifestData$probe.location[rid2s[k]],cex=0.6,srt=90)}
  for(k in 1:lnid12) {text(manifestData$cpg.coord[rid2s[k]],rb-.5,pos=4,adj=c(0.5,0),labels=manifestData$cpgi.relation[rid2s[k]],cex=0.6,srt=90)}
  for(k in 1:lnid12) {text(manifestData$cpg.coord[rid2s[k]],rb+2.5,pos=2,adj=c(0.5,0),labels=row.names(manifestData)[rid2s][k],cex=0.6,srt=90)}
  for(k in 1:lnid12) {text(manifestData$cpg.coord[rid2s[k]],rt-0.5,pos=2,adj=c(0.5,0),labels=manifestData$sym[rid2s][k],cex=0.6,srt=90)}
  ###abline(v=clcoord,lty=2)
  dev.copy2pdf(file=filenamezoomEstBEage,width=12,height=8.)
  #pdf(file=filenamezoomEstBEage,width=12,height=8.)
  
  #tiff(file=filenamezoomEstBEage,width=12,height=8.,res=300,compression='lzw')
  #tiff(file=filenamezoomEstBEage,width=4,height=4,units='in',res=300,compression='lzw')
  # dev.print(file=filenamezoomEstBEage,device=pdf,width=6,height=8,horizontal=F)
  #dev.off()
}



#####################################################################################################################
coltumorgrade<-vector(length=ltcgaid,mode="character")
coltumorgrade[1:ltcgaid]="yellow"
coltumorgrade[tumorgrade=="G1"]="green"
coltumorgrade[tumorgrade=="G2"]="blue"
coltumorgrade[tumorgrade=="G3"]="red"
coltumorgrade
#TCGA TUMOR GRADE coloration
#220 BE clock probes in CpGs.D2.220 plotted by chromosomal coordinate
dev.off()
ylabel="M-value at probe"
zooml=3; zoomr=3; window=8000
for(j in 1:ln220) {       #jth clock probe #for j=1, sitename="MAP1B", ccpg[1]="cg21952901                   #gene
#for(j in 2:2) {       #jth clock probe #for j=1, sitename="MAP1B", ccpg[1]="cg21952901         
  clid=which(row.names(manifestData) == cpgn220[j])
  #clid=which(row.names(manifestData) == 'cg14526997')
  #clid=320646
  #clid=438100
  chrname=manifestData$CHR37[clid]
  sitename=manifestData$sym[clid]
  clcoord=manifestData$cpg.coord[clid]
  if(is.na(sitename)|choose) {sitename=cpgn220[j]
  id2=  which((manifestData$CHR37 == chrname) &
                (manifestData$cpg.coord > manifestData$cpg.coord[clid]-window) &
                (manifestData$cpg.coord < manifestData$cpg.coord[clid]+window)) }
  else {id2 = which(manifestData$sym == sitename)  #list of probes in gene
  }
  filenamezoomEstBEage=paste('./FiguresTCGAgrade/',j,'-',sitename,'_zoom_EstBEage.pdf',sep='')
  id2o = order(manifestData$cpg.coord[id2])  #ordering of list of probes in gene
  rid2=id2[id2o]                             #reordered probe list by sequence position
  lnid2=length(rid2)                         #length of probe list
  rid1s=vector(mode = "integer", length = lnid2)
  rid2s=vector(mode = "integer", length = lnid2)
  rtcga1s=vector(mode = "integer", length = lnid2)
  
  kk=0
  for(k in 1:lnid2) { 
    rid1t=which(row.names(sqM2) == row.names(manifestData)[rid2][k] )
    if(length(rid1t)>0) {kk=kk+1
    rid1s[kk]=which(row.names(sqM2) == row.names(manifestData)[rid2][k] )
    rid2s[kk]=rid2[k]
    rtcga1s[kk]=which(row.names(tcga_m2) == row.names(manifestData)[rid2][k] )
    }
  }
  msqM2 <- apply(sqM[rid1s,],1,mean)
  sdsqM2 <- apply(sqM[rid1s,],1,sd)
  lnid12=kk
  clnum= which(clid == rid2s, rid2s)
  nl=max(1,clnum-zooml)
  nr=min(clnum+zoomr,lnid12)
  rt=10; rb=-10
  xl=max(clcoord-window,manifestData$cpg.coord[rid2s[nl]])
  xr=min(clcoord+window,manifestData$cpg.coord[rid2s[nr]])
  print(c(nl,nr,clnum,zooml,zoomr,lnid12,rid2s[nl],rid2s[nr],manifestData$cpg.coord[rid2s[nl]],manifestData$cpg.coord[rid2s[nr]]))
  leg.age.txt=c("EAC - TCGA","Oldest BE (Est dur. ~77 yr)","Young BE (Est dur ~1 yr)","Normal squamous (mean +- SD)")
  leg.age.col=c("red",age_bluegreenBEage[23],age_bluegreenBEage[2],"black")
  plot.new()                                 #age-shift squamous(green) vs BE(blue) by position
  plot(manifestData$cpg.coord[rid2s],msqM2,type='l',lwd=2,col='black',main=c(paste(sitename,"on chromosome",chrname,"zoom CpGs",nl,"-",nr,"out of",lnid12),sep=" "),ylab=ylabel,xlab="Chromosome coordinate position",ylim=c(rb,rt),xlim=c(xl,xr))   #1st ind sq (green)
  legend("top",border="black",title="",leg.age.txt,col=leg.age.col,pch=1,cex=0.75,bty="n")
  
  #for(i in lnind:1) {lines(manifestData$cpg.coord[rid2s],sqM2[rid1s,i]+10,lwd=0.75,col=age_redgreen[i])}     #other sq (green)
  #for(i in lnind:1) {lines(manifestData$cpg.coord[rid2s],beM2[rid1s,i],lwd=1.0,col=age_bluegreenBEage[i])}     #BE  (blue)
  #for(i in ltcgaid:1) {lines(manifestData$cpg.coord[rid2s],tcga_m2[rtcga1s,i],col=agetcga_redblue[i],lty=2,lwd=0.5)}     #EAC  (redblue)
  
  for(i in lnind:1) {lines(manifestData$cpg.coord[rid2s],beM2[rid1s,i],lwd=0.5,col=age_bluegreenBEage[i])} #BE  (blue)
  for(i in ltcgaid:1) {lines(manifestData$cpg.coord[rid2s],tcga_m2[rtcga1s,i],col=coltumorgrade[i],lty=2,lwd=1.)}     #EAC  (redblue)
  
  arrows(manifestData$cpg.coord[rid2s],msqM2,manifestData$cpg.coord[rid2s],msqM2+sdsqM2,length=0.1,angle=90,col="black",lwd=2)
  arrows(manifestData$cpg.coord[rid2s],msqM2,manifestData$cpg.coord[rid2s],msqM2-sdsqM2,length=0.1,angle=90,col="black",lwd=2)
  lines(manifestData$cpg.coord[rid2s],msqM2,type='l',lwd=2,col='black')
  text(clcoord,rt-0.5,labels="clock",cex=1.25,srt=90,adj=c(0.5,0))
  #text(clcoord,rb-0.2,labels="clock",cex=0.8,srt=90,adj=c(0.5,0))
  for(k in 1:lnid12) {text(manifestData$cpg.coord[rid2s[k]],rb+1.5,pos=4,adj=c(0.5,0),labels=manifestData$probe.location[rid2s[k]],cex=0.6,srt=90)}
  for(k in 1:lnid12) {text(manifestData$cpg.coord[rid2s[k]],rb-.5,pos=4,adj=c(0.5,0),labels=manifestData$cpgi.relation[rid2s[k]],cex=0.6,srt=90)}
  for(k in 1:lnid12) {text(manifestData$cpg.coord[rid2s[k]],rb+2.5,pos=2,adj=c(0.5,0),labels=row.names(manifestData)[rid2s][k],cex=0.6,srt=90)}
  for(k in 1:lnid12) {text(manifestData$cpg.coord[rid2s[k]],rt-0.5,pos=2,adj=c(0.5,0),labels=manifestData$sym[rid2s][k],cex=0.6,srt=90)}
  abline(v=clcoord,lty=2)
  dev.copy2pdf(file=filenamezoomEstBEage,width=12,height=8.)
  #pdf(file=filenamezoomEstBEage,width=12,height=8.)
  
  #tiff(file=filenamezoomEstBEage,width=12,height=8.,res=300,compression='lzw')
  #tiff(file=filenamezoomEstBEage,width=4,height=4,units='in',res=300,compression='lzw')
  # dev.print(file=filenamezoomEstBEage,device=pdf,width=6,height=8,horizontal=F)
  #dev.off()
}




#######################################################################
# Statistical properties of clock-like regions
#######################################################################
#ANCOVA SQ-BE - Georg
age = Age.SQ  # c(Age.SQ,Age.FD,Age.CD,Age.CO)
cpgpct=vector(length = 22)
M = nrow(sqM)
ido = ids = 1:M
rateSQ = rateBE = pvalSQ = pvalBE = pval.intcptBE = epsBE = epsSQ = numeric(M)
for (i in 1:22) {                              #analysis by chromosome (excluding sex chromoso)
 
  mDchi=manifestData[manifestData$CHR37==i,]
  id3o = order(mDchi$cpg.coordinate)
  mDcho=mDchi[id3o,]
  ma1=match(row.names(sqM2),row.names(mDcho))
  ma1v=ma1[!is.na(ma1)]
  mDchm=mDchi[ma1v,]
  ma2=match(row.names(sqM2),row.names(mDchm))
  ma2v=ma2[!is.na(ma2)]
  sqchm=sqM2[ma2v,]
  cpgpct[i]=length(ma1v)/dim(mDchi)[1]
  sqM2och=sqM2[rid3,]
  mDoch=manifestData[ma1,]
  #tapply(mDchr$)
  print(c(i,dim(mDchr))) 
  k2=0
  k3=0
  l3=0
  lsig1=FALSE                                 
  for(k in 1:lid3) { 
    rid1t=which(row.names(sqM2) == row.names(manifestData)[rid3][k] )
    if(length(rid1t)>0) {k2=k2+1
    rid1s[k2]=which(row.names(sqM2) == row.names(manifestData)[rid3][k] )
    rid2s[k2]=rid3[k]
    }
    print(k2)
  }

    #tmpbe = data.frame(EstAge.BE,methylbe=beM[k2,])
    #corbe = cor.test(~ EstAge.BE + methylbe, data=tmpbe)
    corbe = cor.test(EstAge.BE,beM2[k2,])
    print(c(k,corbe$p.value))
    if(corbe$p.value<=0.05){
      lsig1=TRUE
      l3=l3+1
      if(lsig1) {k3=k3+1}
      print(c(k3,corbe$pvalue,l3,k))
    } else {
      lsig1=FALSE
      l3=0
    }
    rtcga1s[k2]=which(row.names(tcga_m2) == row.names(manifestData)[rid3][k] )
    }
  }

### loop through all correlations for BE, Sq
kstart=1;kend=M
help(apply)
#squamous
fSQcorChrAge.p <- function(x) as.vector(cor.test(x,Age.SQ))$p.value      #Sq age clock
fSQcorChrAge.e <- function(x) as.vector(cor.test(x,Age.SQ))$estimate     #Sq age clock
fSQcorEstAge.p <- function(x) as.vector(cor.test(x,EstAge.BE))$p.value   #test for field effect or other factors 
fSQcorEstAge.e <- function(x) as.vector(cor.test(x,EstAge.BE))$estimate  #test for field effect or other factors 
SQcorChrAge.p <-apply(sqM2,1,fSQcorChrAge.p)
SQcorChrAge.e <-apply(sqM2,1,fSQcorChrAge.e)
SQcorEstAge.p <-apply(sqM2,1,fSQcorEstAge.p)
SQcorEstAge.e <-apply(sqM2,1,fSQcorEstAge.e)
SQ.mean <-apply(sqM2,1,mean)
SQ.sd <-apply(sqM2,1,sd)
hist(SQcorChrAge.p, nclass = 100)
SQChrAgeq <- qvalue(p = SQcorChrAge.p)
SQEstAgeq <- qvalue(p = SQcorEstAge.p)
hist(SQcorChrAge.p, nclass = 20)
hist(SQChrq$qvalues,nclass= 100)
length(SQChrq$qvalues[SQChrq$qvalues<.05])
plot(SQChrq)
hist(SQChrq,nclass=100)
SQEstAgepos <- sqM2[SQcorEstAge.p<0.05 & SQcorEstAge.e > 0.7,]
SQEstAgeneg <- sqM2[SQcorEstAge.p<0.05 & SQcorEstAge.e < -0.7,]
nsigSQEstAge <- c(dim(SQEstAgepos)[1],dim(SQEstAgeneg)[1])
nsigSQEstAge
#[1] 0 0       #for abs(correlation)>0.9
#[1] 0 0       #for abs(correlation)>0.8
#[1]   0 4     #for abs(correlation)>0.7
#[1] 33 51     #for abs(correlation)>0.6
#[1] 389 621   #for abs(correlation)>0.5
SQEstAgeQpos <- sqM2[SQEstAgeq$qvalues<0.05 & SQcorEstAge.e > 0.0,]
SQEstAgeQneg <- sqM2[SQEstAgeq$qvalues<0.05 & SQcorEstAge.e < -0.0,]
nsigSQEstAgeQ <- c(dim(SQEstAgeQpos)[1],dim(SQEstAgeQneg)[1])
nsigSQEstAgeQ
#[1] 0 0  #for abs(correlation)>0.7
#[1] 0 0  #for abs(correlation)>0.6
#[1] 0 0  #for abs(correlation)>0.0

SQChrAgepos <- sqM2[SQcorChrAge.p<0.05 & SQcorChrAge.e > 0.5,]
SQChrAgeneg <- sqM2[SQcorChrAge.p<0.05 & SQcorChrAge.e < -0.5,]
nsigSQChrAge <- c(dim(SQChrAgepos)[1],dim(SQChrAgeneg)[1])
nsigSQChrAge
#[1] 0 0         #for abs(correlation)>0.9        #!Note: use q-values calculations in section below
#[1] 4  1        #for abs(correlation)>0.8
#[1] 76 161      #for abs(correlation)>0.7
#[1] 832 2548    #for abs(correlation)>0.6
#[1]4456 14926  #for abs(correlation)>0.5


SQChrAgeQpos <- sqM2[SQChrAgeq$qvalues<0.05 & SQcorChrAge.e > 0.8,]
SQChrAgeQneg <- sqM2[SQChrAgeq$qvalues<0.05 & SQcorChrAge.e < -0.8,]
nsigSQChrAgeQ <- c(dim(SQChrAgeQpos)[1],dim(SQChrAgeQneg)[1])
nsigSQChrAgeQ
#[1] 0 0         #for abs(correlation)>0.9       
#[1] 4 1         #for abs(correlation)>0.8
#[1] 76 161      #for abs(correlation)>0.7       #!Note: use these calculations based on qvalues
#[1] 832 2548    #for abs(correlation)>0.6       #The q-value calculations are close to p-value
#[1] 1475 4696   #for abs(correlation)>0.5       #calculations above for correlations >= ~0.6
hist(inv.logit(sqM[SQChrAgeq$qvalues<0.05 & SQcorChrAge.e < -0.5,],0,1))

fBEcorChrAge.p <- function(x) as.vector(cor.test(x,Age.BE))$p.value
fBEcorChrAge.e <- function(x) as.vector(cor.test(x,Age.BE))$estimate
fBEcorEstAge.p <- function(x) as.vector(cor.test(x,EstAge.BE))$p.value
fBEcorEstAge.e <- function(x) as.vector(cor.test(x,EstAge.BE))$estimate
BEcorChrAge.p <-apply(beM2,1,fBEcorChrAge.p)
BEcorChrAge.e <-apply(beM2,1,fBEcorChrAge.e)
BEcorEstAge.p <-apply(beM2,1,fBEcorEstAge.p)
BEcorEstAge.e <-apply(beM2,1,fBEcorEstAge.e)
BE.mean <-apply(beM2,1,mean)
BE.sd <-apply(beM2,1,sd)
BEChrAgeq <- qvalue(p = BEcorChrAge.p)
BEEstAgeq <- qvalue(p = BEcorEstAge.p)

BEEstAgeQpos <- beM2[BEEstAgeq$qvalues<0.05 & BEcorEstAge.e > 0.7,]
BEEstAgeQneg <- beM2[BEEstAgeq$qvalues<0.05 & BEcorEstAge.e < -0.7,]
nsigBEEstAgeQ <- c(dim(BEEstAgeQpos)[1],dim(BEEstAgeQneg)[1])
nsigBEEstAgeQ
#[1] 3962    8       #for abs(correlation)>0.9    
#[1] 22993  1707     #for abs(correlation)>0.8
#[1] 34706 11929     #for abs(correlation)>0.7    #!Note: use these calculations based on qvalues
#[1] 43630 33329     #for abs(correlation)>0.6
#[1] 54585 61207     #for abs(correlation)>0.5
nsigBEEstAgeQ/dim(beM2)[1] 
#[1] 0.07604544  0.02613802    #for abs(correlation)>0.7
hist(inv.logit(sqM[BEEstAgeq$qvalues<0.05 & BEcorEstAge.e > 0.7,],0,1))
BEChrAgeQpos <- beM2[BEChrAgeq$qvalues<0.05 & BEcorChrAge.e > 0.8,]
BEChrAgeQneg <- beM2[BEChrAgeq$qvalues<0.05 & BEcorChrAge.e < -0.8,]
nsigBEChrAgeQ <- c(dim(BEChrAgeQpos)[1],dim(BEChrAgeQneg)[1])
nsigBEChrAgeQ


#[1] 0 0          #for abs(correlation)>0.9    
#[1] 1 16         #for abs(correlation)>0.8
#[1] 44 661       #for abs(correlation)>0.7    #!Note: use these calculations based on qvalues
#[1] 413 6150     #for abs(correlation)>0.6
#[1] 2163 21312   #for abs(correlation)>0.5
nsigBEChrAgeQ/dim(beM2)[1]
#[1] 9.640983e-05 1.448339e-03


fEAcorDiagAge.p <- function(x) as.vector(cor.test(x,agediag))$p.value
fEAcorDiagAge.e <- function(x) as.vector(cor.test(x,agediag))$estimate
EAcorDiagAge.p <-apply(tcga_m2,1,fEAcorDiagAge.p)
EAcorDiagAge.e <-apply(tcga_m2,1,fBEcorDiagAge.e)

for (k in kstart:end) {
  mp = ids[m]  #.drift[m]
  corbe = cor.test(EstAge.BE,beM[k2,])
  mfit = lm(methyl ~ age*hist, data=tmp)
  aux = summary(mfit)
  
  rateSQ[m] = aux$coef[2,1]; rateBE[m] = aux$coef[4,1]+rateSQ[m]
  pvalSQ[m] = aux$coef[2,4]; pvalBE[m] = aux$coef[4,4]
  epsSQ[m] = aux$coef[1,1]
  epsBE[m] = aux$coef[1,1]+aux$coef[3,1]
  pval.intcptBE[m] = aux$coef[3,4]
}

ancova.SQ = list(rate=rateSQ,pval=pvalSQ,eps=epsSQ)
ancova.BE = list(rate=rateBE,pval=pvalBE,eps=epsBE,pval.intcpt=pval.intcptBE)


### Georg's Ancova for BE, Sq
mstart=1;mend=M
for (m in mstart:mend) {
  mp = ids[m]  #.drift[m]
  tmp = data.frame(age=c(age,age),hist=c(rep("AQ",30),rep("BE",30)),methyl=c(sqM[mp,],beM[mp,]))
  
  mfit = lm(methyl ~ age*hist, data=tmp)
  aux = summary(mfit)
  
  rateSQ[m] = aux$coef[2,1]; rateBE[m] = aux$coef[4,1]+rateSQ[m]
  pvalSQ[m] = aux$coef[2,4]; pvalBE[m] = aux$coef[4,4]
  epsSQ[m] = aux$coef[1,1]
  epsBE[m] = aux$coef[1,1]+aux$coef[3,1]
  pval.intcptBE[m] = aux$coef[3,4]
}

ancova.SQ = list(rate=rateSQ,pval=pvalSQ,eps=epsSQ)
ancova.BE = list(rate=rateBE,pval=pvalBE,eps=epsBE,pval.intcpt=pval.intcptBE)

mend=100  #testing
for (m in mstart:mend) {
  mp = ids[m]  #.drift[m]
  tmpsq = data.frame(age,hist=rep("AQ",30),methylsq=sqM[mp,])
  tmpbe = data.frame(age,hist=rep("BE",30),methylbe=beM[mp,])
  corsq = cor.test(~ age + methylsq, data=tmpsq)
  corbe = cor.test(~ age + methylbe, data=tmpbe)
  aux = summary(mfit)
  rateSQ[m] = aux$coef[2,1]; rateBE[m] = aux$coef[4,1]+rateSQ[m]
  pvalSQ[m] = aux$coef[2,4]; pvalBE[m] = aux$coef[4,4]
  epsSQ[m] = aux$coef[1,1]
  epsBE[m] = aux$coef[1,1]+aux$coef[3,1]
  pval.intcptBE[m] = aux$coef[3,4]
}


#Processing instructions from Sean
# Preamble
# This script contains code I have found useful for work ik minfi. I have included preprocessing steps and some annotations.
# Feel free to view more of my report files on GLADR (fh/fast/grady_w/GLADR/Projects/) for more examples. 
#
# Some other tips and tools I use daily: 
# Rstudio is a great GUI to use for work in R. It can be accessed via rhino using the following in command line (UNIX on Mac)"
# >ssh -X yourhutchidhere@rhino
# >rstudio
# 
# With Rstudio, you can view objects in your work environment, see summaries of datasets, and also store images for quick viewing.
# You can also make and edit your own packages, scripts and markdown documents.
# Rmarkdown is a great way of documenting code with human-readable analysis. 
#
#
##########################################
#  ssh rhino
# cd /fh/fast/grady_w/CompBio
# cd /shared/dnaarray/smaden/tcga_image-files/EAC/DNA_Methylation/JHU_USC_HumanMethylation450/Level_1

##########################################
# Set Up Your Workspace
##########################################

#source("http://bioconductor.org/biocLite.R")
#biocLite("GEOquery")
#biocLite("minfi")
#biocLite("sva")
library(minfi) # Comprehensive Illumina450k preprocessing package
library(sva) # Package for ComBat batch correction

saveDate <- format(Sys.Date(),"%m%d%y") # save current date  as a string to append to filenames in automated saves
exptName <- "epivar_luo-tcga_CM-CIMP" # define project as string for automated saves
saveDir <- getwd() # define save directory as string for automated saves

#########################################
# Standard Preprocessing and Filtering
########################################

sampleSheet <- "sampleSheet.csv" # contains sample clinical data and Sentrix ID and Position columns 
rg.basename <- read.450k.sheet(base=getwd(),"sampleSheet.csv") # renames Sentrix ID/Pos columns and makes new Basename column
save(rg.basename, file=file.path(saveDir, paste0("rg-sheet_basename_",exptName,"_",saveDate,".rda"))) # automated saving with name strings
write.csv(rg.sheet,paste0("sampleSheet-basename_",exptName,"_",saveDate,".csv")) 

rg <- read.450k.exp(targets = rg.basename) # read in raw intensity values and p-values from idats using basename sheet
save(rg, file=file.path(saveDir, paste0("rg-all-samples_",exptName,"_",saveDate,".rda")))

# making methyl sets and preprocessing
mset.il <- preprocessIllumina(rg,bg.correct=TRUE,
                              normalize="controls",  
                              reference=2)
save(mset.il, file=file.path(saveDir, paste0("mset-illumina_",exptName,"_",saveDate,".rda")))

mset.swan <- preprocessSWAN(rg, mSet=mset.il)
dim(mset.swan)

# filtering probes that fail intensity p-value filtering
detP <- detectionP(rg)
failed <-rowMeans(detP) > 0.05
mset.swan <- mset.swan[!failed,] # common manipulation of minfi object: define filter criteria then subset the object

dim(mset.swan) # dim returns the samples x probe dimensions of the object by default
save(mset.swan, file=file.path(saveDir, paste0("mset-swan_",exptName,"_",saveDate,".rda")))

# Genomic Ratio and Genomic Methyl Sets store Beta and M-value sheets with mapped probe coordinates
gsetAll <- mapToGenome(mset.swan)

# Filtering on SNP probes, Sex chr probes, cross reactive probes, Non-CpG probes
gsetAll <- dropLociWithSnps(gsetAll, snps=c("SBE", "CpG"))
gsetAll.nfilt <- gsetAll
gsetAll.nfilt <- dropMethylationLoci(gsetAll.nfilt,dropRS=TRUE,dropCH=TRUE)

xIndex <- which(seqnames(gsetAll.nfilt)=="chrX")
gsetAll.nfilt <- gsetAll.nfilt[-xIndex,]

yIndex <- which(seqnames(gsetAll.nfilt)=="chrY")
gsetAll.nfilt <- gsetAll.nfilt[-yIndex,]

crossFile <- "crossReactiveProbes_071615.csv"
crossreactive_probelist <- read.csv(crossFile)
dim(gsetAll.nfilt)
iscross <- rownames(gsetAll.nfilt) %in% crossreactive_probelist$TargetID
gsetAll.nfilt <- gsetAll.nfilt[!iscross]
dim(gsetAll.nfilt)

save(gset.ilswan.precombat, file=file.path(saveDir, paste0("gset-ilswan_all-hist_precombat_",exptName,"_",saveDate,".rda")))

################################################################
# ComBat batch correction for Colon Cancer vs. Matched Comparison
#################################################################
library(sva)

y <- gset.ilswan.precombat

y <- y[,y$Histology=="normal" & y$Patient_Status=="cancer"|y$Histology=="cancer"]
y$Histology <- droplevels(y$Histology)

#save(gset.ilswan.MF.precombat, file=file.path(saveDir, paste0("gset.ilswan.MF.precom_",saveDate,".rda"))) 

m <- getM(y)
b <- getBeta(y)
p <- pData(y)
batch <- p$Ran # new variable Sentrix Num in pData
covariate <- y$Histology # patient status/histology type not available yet
mod <- model.matrix(~as.factor(covariate), data=p)

combatM <- ComBat(dat=m,batch=factor(batch),
                  mod=mod,par.prior=TRUE,prior.plot=FALSE)
combatB <- ComBat(dat=b, batch=factor(batch),
                  mod=mod,  par.prior=TRUE, prior.plot=FALSE)
panno <- AnnotatedDataFrame(as.data.frame(p))

com.m.expr <- ExpressionSet(assayData=combatM, phenoData=panno)
com.b.expr <- ExpressionSet(assayData=combatB, phenoData=panno)

gset.CM.combat <-
  GenomicRatioSet(gr=granges(y),
                  Beta=exprs(com.b.expr),
                  M=exprs(com.m.expr),
                  annotation=annotation(y),
                  preprocessMethod=preprocessMethod(y),
                  pData=p)

save(gset.CM.combat, file=file.path(saveDir, paste0("gset-combat_",exptName,"_",saveDate,".rda")))  
