library(fields)

###############################
#Preprocess GERD fits by race, sex, quintile and save as tables for use in BMI history generator


#UK GERD incidence data from !Ruigomez, et al., Scan J Gastroenterology, 2010;45:139-146
#and data from !Ruigomez, et al., Aliment Pharmacol Ther, 2004;20:751-760
#used in model fits by Hazelton et al., CEBP 2015.

gerd_age<-c(1,3,4,7,9,11,13,15,17,19,25,35,45,55,65,75)
wmgerd_inc<-c(0.00164, 0.00057, 0.00038, 0.00044, 0.00046, 0.00068, 0.00083, 0.00106, 0.00174,
0.00289, 0.00403, 0.00494, 0.00534, 0.00551, 0.00678, 0.00660)

#dev.off()
#plot(gerd_age,wmgerd_inc,lty=1,cex=1)

wfgerd_inc<-c(0.00123, 0.00039, 0.00031, 0.00040, 0.00070, 0.00061, 0.00079, 0.00134, 0.00226,
0.00287, 0.00348, 0.00409, 0.00605, 0.00756, 0.00919, 0.00821)

gerd_rr<-c(0.83,1,1.30,1.73,1.80,2.03,1.96)  #results from Fig 1, Jacobson et al., N Engl J Med. 2006 June 1; 345(22):2340-2348
gerd_bmi<-c(18.7,21.2,23.7,26.2,28.7,32.4,36)
gerd_sp<-smooth.spline(x=gerd_bmi,y=gerd_rr,df=3)
bmi_list<-c(180:400)/10
gerd_pr <-predict(gerd_sp,bmi_list)    #predictions from Jacobson, et al., (see above) Nurses Health Study
#dev.off()
#plot(gerd_pr,lty=2,cex=0.1)
#points(gerd_bmi,gerd_rr)

#dev.off()
#plot.new()                                 #
#plot(gerd_pr,lty=2,cex=0.1,
#main="Spline fit to data* on association between BMI and GERD**",
#ylab="Odds Ratio",ylim=c(0.0,2.5),xlab="BMI",cex.main=1.8,cex.lab=1.6)
#text(22,0.4,"Analysis of BMI and GERD in 10,545 women from the Nurses' Health Study", adj=c(0.2,0),cex=1.4) 
#text(22,0.25,"surveyed in 2000 on symptomatic GERD frequency, severity, and duration.", adj=c(0.2,0),cex=1.4)  
#text(22,0.06, "*Jacobson, et al., N Engl J Med. 2006; 345(22):2340-2348.", adj=c(0.3,0),cex=1.2) 
#text(22,-0.04, "**Defined as at-least weekly symptoms of reflux or heartburn", adj=c(0.3,0),cex=1.2) 
#points(gerd_bmi,gerd_rr,pch="*",cex=3)
#dev.copy2pdf(file="GERD_BMI_NHS.pdf",width=12,height=8.)




#Parameters from GERD model in SI Hazelton et al. CEBP 2015
mpg1=8.5259e-4               #male early GERD incidence rate 
mpg2=7.0330e-3               #male late GERD incidence rate
mpg3=2.6629e+1               #male early to late GERD transition age
fpg1=1.1488e-3               #female early GERD incidence rate
fpg2=7.9586e-3               #female late GERD incidence rate
fpg3=3.3179e+1               #female early to late GERD transition age


#White males
#white male BMI by quantile for year 2000
xwma1p<-as.numeric(unlist(predict(gerd_sp,fwma1)[1]))
xwma2p<-as.numeric(unlist(predict(gerd_sp,fwma2)[1]))
xwma3p<-as.numeric(unlist(predict(gerd_sp,fwma3)[1]))
xwma4p<-as.numeric(unlist(predict(gerd_sp,fwma4)[1]))
xwma5p<-as.numeric(unlist(predict(gerd_sp,fwma5)[1]))

#White male all years
xwm1p<-as.numeric(unlist(predict(gerd_sp,fwm1)[1]))
xwm2p<-as.numeric(unlist(predict(gerd_sp,fwm2)[1]))
xwm3p<-as.numeric(unlist(predict(gerd_sp,fwm3)[1]))
xwm4p<-as.numeric(unlist(predict(gerd_sp,fwm4)[1]))
xwm5p<-as.numeric(unlist(predict(gerd_sp,fwm5)[1]))

#white male RR for GERD based on BMI by quantile for year 2000
ywma1p<-as.numeric(unlist(predict(gerd_sp,fwma1)[2]))
ywma2p<-as.numeric(unlist(predict(gerd_sp,fwma2)[2]))
ywma3p<-as.numeric(unlist(predict(gerd_sp,fwma3)[2]))
ywma4p<-as.numeric(unlist(predict(gerd_sp,fwma4)[2]))
ywma5p<-as.numeric(unlist(predict(gerd_sp,fwma5)[2]))

#white male RR for GERD based on BMI by quantile for all years
ywm1p<-as.numeric(unlist(predict(gerd_sp,fwm1)[2]))
ywm2p<-as.numeric(unlist(predict(gerd_sp,fwm2)[2]))
ywm3p<-as.numeric(unlist(predict(gerd_sp,fwm3)[2]))
ywm4p<-as.numeric(unlist(predict(gerd_sp,fwm4)[2]))
ywm5p<-as.numeric(unlist(predict(gerd_sp,fwm5)[2]))

#logical test for early or late GERD coefficient - year 2000
wmxal<-wmxa[,1]<=mpg3        #White male age TRUE if less than transition age
wmxa1<-wmxa[wmxal,]           #White male early age list
wmxa2<-wmxa[!wmxal,]          #White male late age list
mchange <-floor(mpg3)
xwma1p1<-xwma1p[wmxal]        #Q1 early BMIs 
ywma1p1<-ywma1p[wmxal]        #Q1 early RR for GERD
xwma2p1<-xwma2p[wmxal]        #Q2 early BMIs 
ywma2p1<-ywma2p[wmxal]        #Q2 early RR for GERD
xwma3p1<-xwma3p[wmxal]        #Q3 early BMIs 
ywma3p1<-ywma3p[wmxal]        #Q3 early RR for GERD
xwma4p1<-xwma4p[wmxal]        #Q4 early BMIs 
ywma4p1<-ywma4p[wmxal]        #Q4 early RR for GERD
xwma5p1<-xwma5p[wmxal]        #Q4 early BMIs 
ywma5p1<-ywma5p[wmxal]        #Q4 early RR for GERD
ywmrrmean1<-mean(c(ywma1p1,ywma2p1,ywma3p1,ywma4p1,ywma5p1))
wmnug11<-mpg1*ywma1p1/ywmrrmean1 #Q1 early GERD transition rates from age 12
wmnug21<-mpg1*ywma2p1/ywmrrmean1 #Q2 early GERD transition rates from age 12
wmnug31<-mpg1*ywma3p1/ywmrrmean1 #Q3 early GERD transition rates from age 12
wmnug41<-mpg1*ywma4p1/ywmrrmean1 #Q4 early GERD transition rates from age 12
wmnug51<-mpg1*ywma5p1/ywmrrmean1 #Q5 early GERD transition rates from age 12
xwma1p2<-xwma1p[!wmxal]        #Q1 late BMIs 
ywma1p2<-ywma1p[!wmxal]        #Q1 late RR for GERD
xwma2p2<-xwma2p[!wmxal]        #Q2 late BMIs 
ywma2p2<-ywma2p[!wmxal]        #Q2 late RR for GERD
xwma3p2<-xwma3p[!wmxal]        #Q3 late BMIs 
ywma3p2<-ywma3p[!wmxal]        #Q3 late RR for GERD
xwma4p2<-xwma4p[!wmxal]        #Q4 late BMIs 
ywma4p2<-ywma4p[!wmxal]        #Q4 late RR for GERD
xwma5p2<-xwma5p[!wmxal]        #Q4 late BMIs 
ywma5p2<-ywma5p[!wmxal]        #Q4 late RR for GERD

lwmx2=length(xwma1p2)
ywmrrmean2<-mean(c(ywma1p2,ywma2p2,ywma3p2,ywma4p2,ywma5p2))
wmnug12<-mpg2*ywma1p2/ywmrrmean2 #Q1 late GERD transition rates from age mpg3
wmnug22<-mpg2*ywma2p2/ywmrrmean2 #Q2 late GERD transition rates from age mpg3
wmnug32<-mpg2*ywma3p2/ywmrrmean2 #Q3 late GERD transition rates from age mpg3
wmnug42<-mpg2*ywma4p2/ywmrrmean2 #Q4 late GERD transition rates from age mpg3
wmnug52<-mpg2*ywma5p2/ywmrrmean2 #Q5 late GERD transition rates from age mpg3
wmnug1 <-c(rep(wmnug11[1],11),wmnug11,wmnug12,rep(wmnug12[lwmx2],14)) #Q1 GERD inc rates ages 1-99
wmnug2 <-c(rep(wmnug21[1],11),wmnug21,wmnug22,rep(wmnug22[lwmx2],14)) #Q2 GERD inc rates ages 1-99
wmnug3 <-c(rep(wmnug31[1],11),wmnug31,wmnug32,rep(wmnug32[lwmx2],14)) #Q3 GERD inc rates ages 1-99
wmnug4 <-c(rep(wmnug41[1],11),wmnug41,wmnug42,rep(wmnug42[lwmx2],14)) #Q4 GERD inc rates ages 1-99
wmnug5 <-c(rep(wmnug51[1],11),wmnug51,wmnug52,rep(wmnug52[lwmx2],14)) #Q5 GERD inc rates ages 1-99
wmnug <- data.frame(nug1=wmnug1, nug2=wmnug2, nug3=wmnug3, nug4=wmnug4, nug5=wmnug5)

#logical test for early or late GERD coefficient - all years
wmxl<-xg[,1]<=mpg3        #White male age TRUE if less than transition age
wmx1<-xg[wmxl,]           #White male early age list
wmx2<-xg[!wmxl,]          #White male late age list
xwm1p1<-xwm1p[wmxl]        #Q1 early BMIs 
ywm1p1<-ywm1p[wmxl]        #Q1 early RR for GERD
xwm2p1<-xwm2p[wmxl]        #Q2 early BMIs 
ywm2p1<-ywm2p[wmxl]        #Q2 early RR for GERD
xwm3p1<-xwm3p[wmxl]        #Q3 early BMIs 
ywm3p1<-ywm3p[wmxl]        #Q3 early RR for GERD
xwm4p1<-xwm4p[wmxl]        #Q4 early BMIs 
ywm4p1<-ywm4p[wmxl]        #Q4 early RR for GERD
xwm5p1<-xwm5p[wmxl]        #Q4 early BMIs 
ywm5p1<-ywm5p[wmxl]        #Q4 early RR for GERD
wmnu11<-mpg1*ywm1p1/ywmrrmean1 #Q1 early GERD transition rates from age 12
wmnu21<-mpg1*ywm2p1/ywmrrmean1 #Q2 early GERD transition rates from age 12
wmnu31<-mpg1*ywm3p1/ywmrrmean1 #Q3 early GERD transition rates from age 12
wmnu41<-mpg1*ywm4p1/ywmrrmean1 #Q4 early GERD transition rates from age 12
wmnu51<-mpg1*ywm5p1/ywmrrmean1 #Q5 early GERD transition rates from age 12
xwm1p2<-xwm1p[!wmxl]        #Q1 late BMIs 
ywm1p2<-ywm1p[!wmxl]        #Q1 late RR for GERD
xwm2p2<-xwm2p[!wmxl]        #Q2 late BMIs 
ywm2p2<-ywm2p[!wmxl]        #Q2 late RR for GERD
xwm3p2<-xwm3p[!wmxl]        #Q3 late BMIs 
ywm3p2<-ywm3p[!wmxl]        #Q3 late RR for GERD
xwm4p2<-xwm4p[!wmxl]        #Q4 late BMIs 
ywm4p2<-ywm4p[!wmxl]        #Q4 late RR for GERD
xwm5p2<-xwm5p[!wmxl]        #Q4 late BMIs 
ywm5p2<-ywm5p[!wmxl]        #Q4 late RR for GERD

fitwmnu11<-Tps(wmx1,wmnu11)   #all years early GERD nu
fitwmnu21<-Tps(wmx1,wmnu21)
fitwmnu31<-Tps(wmx1,wmnu31)
fitwmnu41<-Tps(wmx1,wmnu41)
fitwmnu51<-Tps(wmx1,wmnu51)

grid.list.m1<- list( x= 1:mchange, y=1900:2075)
xgm1<- make.surface.grid(grid.list.m1)
nu11wm <-  matrix(predict(fitwmnu11,xgm1),mchange,176)
nu21wm <-  matrix(predict(fitwmnu21,xgm1),mchange,176)
nu31wm <-  matrix(predict(fitwmnu31,xgm1),mchange,176)
nu41wm <-  matrix(predict(fitwmnu41,xgm1),mchange,176)
nu51wm <-  matrix(predict(fitwmnu51,xgm1),mchange,176)


wmnu12<-mpg2*ywm1p2/ywmrrmean2 #Q1 late GERD transition rates from age mpg3
wmnu22<-mpg2*ywm2p2/ywmrrmean2 #Q2 late GERD transition rates from age mpg3
wmnu32<-mpg2*ywm3p2/ywmrrmean2 #Q3 late GERD transition rates from age mpg3
wmnu42<-mpg2*ywm4p2/ywmrrmean2 #Q4 late GERD transition rates from age mpg3
wmnu52<-mpg2*ywm5p2/ywmrrmean2 #Q5 late GERD transition rates from age mpg3

fitwmnu12<-Tps(wmx2,wmnu12)   #all years early GERD nu
fitwmnu22<-Tps(wmx2,wmnu22)
fitwmnu32<-Tps(wmx2,wmnu32)
fitwmnu42<-Tps(wmx2,wmnu42)
fitwmnu52<-Tps(wmx2,wmnu52)

mdiff <-100-mchange
grid.list.m2<- list( x= (mchange+1):100, y=1900:2075)
xgm2<- make.surface.grid(grid.list.m2)
nu12wm <-  matrix(predict(fitwmnu12,xgm2),mdiff,176)
nu22wm <-  matrix(predict(fitwmnu22,xgm2),mdiff,176)
nu32wm <-  matrix(predict(fitwmnu32,xgm2),mdiff,176)
nu42wm <-  matrix(predict(fitwmnu42,xgm2),mdiff,176)
nu52wm <-  matrix(predict(fitwmnu52,xgm2),mdiff,176)
#year 2000
wmnug1 <-c(rep(wmnug11[1],11),wmnug11,wmnug12,rep(wmnug12[lwmx2],14)) #Q1 GERD inc rates ages 1-100
wmnug2 <-c(rep(wmnug21[1],11),wmnug21,wmnug22,rep(wmnug22[lwmx2],14)) #Q2 GERD inc rates ages 1-100
wmnug3 <-c(rep(wmnug31[1],11),wmnug31,wmnug32,rep(wmnug32[lwmx2],14)) #Q3 GERD inc rates ages 1-100
wmnug4 <-c(rep(wmnug41[1],11),wmnug41,wmnug42,rep(wmnug42[lwmx2],14)) #Q4 GERD inc rates ages 1-100
wmnug5 <-c(rep(wmnug51[1],11),wmnug51,wmnug52,rep(wmnug52[lwmx2],14)) #Q5 GERD inc rates ages 1-100
wmnug <- data.frame(nug1=wmnug1, nug2=wmnug2, nug3=wmnug3, nug4=wmnug4, nug5=wmnug5)

#all years
nu1wm <- rbind(nu11wm,nu12wm)
nu2wm <- rbind(nu21wm,nu22wm)
nu3wm <- rbind(nu31wm,nu32wm)
nu4wm <- rbind(nu41wm,nu42wm)
nu5wm <- rbind(nu51wm,nu52wm)

surwm1=rep(1,100)
surwm2=rep(1,100)
surwm3=rep(1,100)
surwm4=rep(1,100)
surwm5=rep(1,100)
surwm1t=1
surwm2t=1
surwm3t=1
surwm4t=1
surwm5t=1
for(i in 1:100) {
 surwm1t <-surwm1t*(1-wmnug1[i])
 surwm1[i] <-surwm1t
 surwm2t <-surwm2t*(1-wmnug2[i])
 surwm2[i] <-surwm2t
 surwm3t <-surwm3t*(1-wmnug3[i])
 surwm3[i] <-surwm3t
 surwm4t <-surwm4t*(1-wmnug4[i])
 surwm4[i] <-surwm4t
 surwm5t <-surwm5t*(1-wmnug5[i])
 surwm5[i] <-surwm5t
}
xsur=1:100
#plot(xsur,y=(1-surwm5),lty=1,
#main="Predicted White Male GERD prevalence by BMI quintile in year 2000",
#ylab="Prevalence",xlab="Age",cex.main=1.8,cex.lab=1.6)
#points(xsur,(1-surwm2))
#points(xsur,(1-surwm3))
#points(xsur,(1-surwm4))
#points(xsur,(1-surwm1))
#dev.copy2pdf(file="GERD_Q1-Q5_2000.pdf",width=12,height=8.)



grid_gerd.list<- list( x= 12:100, y=1900:2075)
xg_gerd<- make.surface.grid(grid_gerd.list)
#set.panel(2,2)   #Second quintile 
#fwm2<- predict( gerd_sp, xg_gerd)
#out.p<- as.surface( xg_gerd, fwm2)
#plot.surface(out.p,zlim=c(15,45.5),xlab='Age',ylab='Calendar year',main='BMI - white male Q2',cex.main=1.3,cex.lab=1.3)
#fwf2<- predict( fitwf2, xg_gerd)
#out.p<- as.surface( xg_gerd, fwf2)
#plot.surface(out.p,zlim=c(15,45.5),xlab='Age',ylab='Calendar year',main='BMI - white female Q2',cex.main=1.3,cex.lab=1.3)
#fbm2<- predict( fitbm2, xg_gerd)
#out.p<- as.surface( xg_gerd, fbm2)
#plot.surface(out.p,zlim=c(15,45.5),xlab='Age',ylab='Calendar year',main='BMI - black male Q2',cex.main=1.3,cex.lab=1.3)
#fbf2<- predict( fitbf2, xg_gerd)
#out.p<- as.surface( xg_gerd, fbf2)
#plot.surface(out.p,zlim=c(15,45.5),xlab='Age',ylab='Calendar year',main='BMI - black female Q2',cex.main=1.3,cex.lab=1.3)
#dev.copy2pdf(file="BMI_Q2.pdf",width=12,height=8.)


#White females
#white female BMI by quantile for year 2000
xwfa1p<-as.numeric(unlist(predict(gerd_sp,fwfa1)[1]))
xwfa2p<-as.numeric(unlist(predict(gerd_sp,fwfa2)[1]))
xwfa3p<-as.numeric(unlist(predict(gerd_sp,fwfa3)[1]))
xwfa4p<-as.numeric(unlist(predict(gerd_sp,fwfa4)[1]))
xwfa5p<-as.numeric(unlist(predict(gerd_sp,fwfa5)[1]))

#White female all years
xwf1p<-as.numeric(unlist(predict(gerd_sp,fwf1)[1]))
xwf2p<-as.numeric(unlist(predict(gerd_sp,fwf2)[1]))
xwf3p<-as.numeric(unlist(predict(gerd_sp,fwf3)[1]))
xwf4p<-as.numeric(unlist(predict(gerd_sp,fwf4)[1]))
xwf5p<-as.numeric(unlist(predict(gerd_sp,fwf5)[1]))

#white female RR for GERD based on BMI by quantile for year 2000
ywfa1p<-as.numeric(unlist(predict(gerd_sp,fwfa1)[2]))
ywfa2p<-as.numeric(unlist(predict(gerd_sp,fwfa2)[2]))
ywfa3p<-as.numeric(unlist(predict(gerd_sp,fwfa3)[2]))
ywfa4p<-as.numeric(unlist(predict(gerd_sp,fwfa4)[2]))
ywfa5p<-as.numeric(unlist(predict(gerd_sp,fwfa5)[2]))

#white female RR for GERD based on BMI by quantile for all years
ywf1p<-as.numeric(unlist(predict(gerd_sp,fwf1)[2]))
ywf2p<-as.numeric(unlist(predict(gerd_sp,fwf2)[2]))
ywf3p<-as.numeric(unlist(predict(gerd_sp,fwf3)[2]))
ywf4p<-as.numeric(unlist(predict(gerd_sp,fwf4)[2]))
ywf5p<-as.numeric(unlist(predict(gerd_sp,fwf5)[2]))

#logical test for early or late GERD coefficient - year 2000
wfxal<-wfxa[,1]<=fpg3        #White female age TRUE if less than transition age
wfxa1<-wfxa[wfxal,]           #White female early age list
wfxa2<-wfxa[!wfxal,]          #White female late age list
xwfa1p1<-xwfa1p[wfxal]        #Q1 early BMIs 
ywfa1p1<-ywfa1p[wfxal]        #Q1 early RR for GERD
xwfa2p1<-xwfa2p[wfxal]        #Q2 early BMIs 
ywfa2p1<-ywfa2p[wfxal]        #Q2 early RR for GERD
xwfa3p1<-xwfa3p[wfxal]        #Q3 early BMIs 
ywfa3p1<-ywfa3p[wfxal]        #Q3 early RR for GERD
xwfa4p1<-xwfa4p[wfxal]        #Q4 early BMIs 
ywfa4p1<-ywfa4p[wfxal]        #Q4 early RR for GERD
xwfa5p1<-xwfa5p[wfxal]        #Q4 early BMIs 
ywfa5p1<-ywfa5p[wfxal]        #Q4 early RR for GERD
ywfrrmean1<-mean(c(ywfa1p1,ywfa2p1,ywfa3p1,ywfa4p1,ywfa5p1))
wfnug11<-fpg1*ywfa1p1/ywfrrmean1 #Q1 early GERD transition rates from age 12
wfnug21<-fpg1*ywfa2p1/ywfrrmean1 #Q2 early GERD transition rates from age 12
wfnug31<-fpg1*ywfa3p1/ywfrrmean1 #Q3 early GERD transition rates from age 12
wfnug41<-fpg1*ywfa4p1/ywfrrmean1 #Q4 early GERD transition rates from age 12
wfnug51<-fpg1*ywfa5p1/ywfrrmean1 #Q5 early GERD transition rates from age 12
xwfa1p2<-xwfa1p[!wfxal]        #Q1 late BMIs 
ywfa1p2<-ywfa1p[!wfxal]        #Q1 late RR for GERD
xwfa2p2<-xwfa2p[!wfxal]        #Q2 late BMIs 
ywfa2p2<-ywfa2p[!wfxal]        #Q2 late RR for GERD
xwfa3p2<-xwfa3p[!wfxal]        #Q3 late BMIs 
ywfa3p2<-ywfa3p[!wfxal]        #Q3 late RR for GERD
xwfa4p2<-xwfa4p[!wfxal]        #Q4 late BMIs 
ywfa4p2<-ywfa4p[!wfxal]        #Q4 late RR for GERD
xwfa5p2<-xwfa5p[!wfxal]        #Q4 late BMIs 
ywfa5p2<-ywfa5p[!wfxal]        #Q4 late RR for GERD

lwfx2=length(xwfa1p2)
ywfrrmean2<-mean(c(ywfa1p2,ywfa2p2,ywfa3p2,ywfa4p2,ywfa5p2))
wfnug12<-fpg2*ywfa1p2/ywfrrmean2 #Q1 late GERD transition rates from age fpg3
wfnug22<-fpg2*ywfa2p2/ywfrrmean2 #Q2 late GERD transition rates from age fpg3
wfnug32<-fpg2*ywfa3p2/ywfrrmean2 #Q3 late GERD transition rates from age fpg3
wfnug42<-fpg2*ywfa4p2/ywfrrmean2 #Q4 late GERD transition rates from age fpg3
wfnug52<-fpg2*ywfa5p2/ywfrrmean2 #Q5 late GERD transition rates from age fpg3
wfnug1 <-c(rep(wfnug11[1],11),wfnug11,wfnug12,rep(wfnug12[lwfx2],14)) #Q1 GERD inc rates ages 1-100
wfnug2 <-c(rep(wfnug21[1],11),wfnug21,wfnug22,rep(wfnug22[lwfx2],14)) #Q2 GERD inc rates ages 1-100
wfnug3 <-c(rep(wfnug31[1],11),wfnug31,wfnug32,rep(wfnug32[lwfx2],14)) #Q3 GERD inc rates ages 1-100
wfnug4 <-c(rep(wfnug41[1],11),wfnug41,wfnug42,rep(wfnug42[lwfx2],14)) #Q4 GERD inc rates ages 1-100
wfnug5 <-c(rep(wfnug51[1],11),wfnug51,wfnug52,rep(wfnug52[lwfx2],14)) #Q5 GERD inc rates ages 1-100
wfnug <- data.frame(nug1=wfnug1, nug2=wfnug2, nug3=wfnug3, nug4=wfnug4, nug5=wfnug5)

#logical test for early or late GERD coefficient - all years
wfxl<-xg[,1]<=fpg3        #White female age TRUE if less than transition age
wfx1<-xg[wfxl,]           #White female early age list
fchange <-floor(fpg3)
fdiff <- 100-fchange
wfx2<-xg[!wfxl,]          #White female late age list
xwf1p1<-xwf1p[wfxl]        #Q1 early BMIs 
ywf1p1<-ywf1p[wfxl]        #Q1 early RR for GERD
xwf2p1<-xwf2p[wfxl]        #Q2 early BMIs 
ywf2p1<-ywf2p[wfxl]        #Q2 early RR for GERD
xwf3p1<-xwf3p[wfxl]        #Q3 early BMIs 
ywf3p1<-ywf3p[wfxl]        #Q3 early RR for GERD
xwf4p1<-xwf4p[wfxl]        #Q4 early BMIs 
ywf4p1<-ywf4p[wfxl]        #Q4 early RR for GERD
xwf5p1<-xwf5p[wfxl]        #Q4 early BMIs 
ywf5p1<-ywf5p[wfxl]        #Q4 early RR for GERD
wfnu11<-fpg1*ywf1p1/ywfrrmean1 #Q1 early GERD transition rates from age 12
wfnu21<-fpg1*ywf2p1/ywfrrmean1 #Q2 early GERD transition rates from age 12
wfnu31<-fpg1*ywf3p1/ywfrrmean1 #Q3 early GERD transition rates from age 12
wfnu41<-fpg1*ywf4p1/ywfrrmean1 #Q4 early GERD transition rates from age 12
wfnu51<-fpg1*ywf5p1/ywfrrmean1 #Q5 early GERD transition rates from age 12
xwf1p2<-xwf1p[!wfxl]        #Q1 late BMIs 
ywf1p2<-ywf1p[!wfxl]        #Q1 late RR for GERD
xwf2p2<-xwf2p[!wfxl]        #Q2 late BMIs 
ywf2p2<-ywf2p[!wfxl]        #Q2 late RR for GERD
xwf3p2<-xwf3p[!wfxl]        #Q3 late BMIs 
ywf3p2<-ywf3p[!wfxl]        #Q3 late RR for GERD
xwf4p2<-xwf4p[!wfxl]        #Q4 late BMIs 
ywf4p2<-ywf4p[!wfxl]        #Q4 late RR for GERD
xwf5p2<-xwf5p[!wfxl]        #Q4 late BMIs 
ywf5p2<-ywf5p[!wfxl]        #Q4 late RR for GERD

fitwfnu11<-Tps(wfx1,wfnu11)   #all years early GERD nu
fitwfnu21<-Tps(wfx1,wfnu21)
fitwfnu31<-Tps(wfx1,wfnu31)
fitwfnu41<-Tps(wfx1,wfnu41)
fitwfnu51<-Tps(wfx1,wfnu51)

grid.list.f1<- list( x= 1:fchange, y=1900:2075)
xgm1<- make.surface.grid(grid.list.f1)
nu11wf <-  matrix(predict(fitwfnu11,xgm1),fchange,176)
nu21wf <-  matrix(predict(fitwfnu21,xgm1),fchange,176)
nu31wf <-  matrix(predict(fitwfnu31,xgm1),fchange,176)
nu41wf <-  matrix(predict(fitwfnu41,xgm1),fchange,176)
nu51wf <-  matrix(predict(fitwfnu51,xgm1),fchange,176)


wfnu12<-fpg2*ywf1p2/ywfrrmean2 #Q1 late GERD transition rates from age fpg3
wfnu22<-fpg2*ywf2p2/ywfrrmean2 #Q2 late GERD transition rates from age fpg3
wfnu32<-fpg2*ywf3p2/ywfrrmean2 #Q3 late GERD transition rates from age fpg3
wfnu42<-fpg2*ywf4p2/ywfrrmean2 #Q4 late GERD transition rates from age fpg3
wfnu52<-fpg2*ywf5p2/ywfrrmean2 #Q5 late GERD transition rates from age fpg3

fitwfnu12<-Tps(wfx2,wfnu12)   #all years early GERD nu
fitwfnu22<-Tps(wfx2,wfnu22)
fitwfnu32<-Tps(wfx2,wfnu32)
fitwfnu42<-Tps(wfx2,wfnu42)
fitwfnu52<-Tps(wfx2,wfnu52)

grid.list.f2<- list( x= (fchange+1):100, y=1900:2075)
fdiff <-100-fchange
xgm2<- make.surface.grid(grid.list.f2)
nu12wf <-  matrix(predict(fitwfnu12,xgm2),fdiff,176)
nu22wf <-  matrix(predict(fitwfnu22,xgm2),fdiff,176)
nu32wf <-  matrix(predict(fitwfnu32,xgm2),fdiff,176)
nu42wf <-  matrix(predict(fitwfnu42,xgm2),fdiff,176)
nu52wf <-  matrix(predict(fitwfnu52,xgm2),fdiff,176)
#year 2000
wfnug1 <-c(rep(wfnug11[1],11),wfnug11,wfnug12,rep(wfnug12[lwfx2],14)) #Q1 GERD inc rates ages 1-100
wfnug2 <-c(rep(wfnug21[1],11),wfnug21,wfnug22,rep(wfnug22[lwfx2],14)) #Q2 GERD inc rates ages 1-100
wfnug3 <-c(rep(wfnug31[1],11),wfnug31,wfnug32,rep(wfnug32[lwfx2],14)) #Q3 GERD inc rates ages 1-100
wfnug4 <-c(rep(wfnug41[1],11),wfnug41,wfnug42,rep(wfnug42[lwfx2],14)) #Q4 GERD inc rates ages 1-100
wfnug5 <-c(rep(wfnug51[1],11),wfnug51,wfnug52,rep(wfnug52[lwfx2],14)) #Q5 GERD inc rates ages 1-100
wfnug <- data.frame(nug1=wfnug1, nug2=wfnug2, nug3=wfnug3, nug4=wfnug4, nug5=wfnug5)

#all years
nu1wf <- rbind(nu11wf,nu12wf)
nu2wf <- rbind(nu21wf,nu22wf)
nu3wf <- rbind(nu31wf,nu32wf)
nu4wf <- rbind(nu41wf,nu42wf)
nu5wf <- rbind(nu51wf,nu52wf)

surwf1=rep(1,100)
surwf2=rep(1,100)
surwf3=rep(1,100)
surwf4=rep(1,100)
surwf5=rep(1,100)
surwf1t=1
surwf2t=1
surwf3t=1
surwf4t=1
surwf5t=1
for(i in 1:100) {
surwf1=rep(1,100)
surwf2=rep(1,100)
surwf3=rep(1,100)
surwf4=rep(1,100)
surwf5=rep(1,100)
surwf1t=1
surwf2t=1
surwf3t=1
surwf4t=1
surwf5t=1
for(i in 1:100) {
 surwf1t <-surwf1t*(1-wfnug1[i])
 surwf1[i] <-surwf1t
 surwf2t <-surwf2t*(1-wfnug2[i])
 surwf2[i] <-surwf2t
 surwf3t <-surwf3t*(1-wfnug3[i])
 surwf3[i] <-surwf3t
 surwf4t <-surwf4t*(1-wfnug4[i])
 surwf4[i] <-surwf4t
 surwf5t <-surwf5t*(1-wfnug5[i])
 surwf5[i] <-surwf5t
}
xsur=1:100
#plot(xsur,y=(1-surwf5),lty=1,
#main="Predicted White Female GERD prevalence by BMI quintile in year 2000",
#ylab="Prevalence",xlab="Age",cex.main=1.8,cex.lab=1.6)
#points(xsur,(1-surwf2))
#points(xsur,(1-surwf3))
#points(xsur,(1-surwf4))
#points(xsur,(1-surwf1))
#dev.copy2pdf(file="GERD_WF_Q1-Q5_2000.pdf",width=12,height=8.)






#Black males
#black male BMI by quantile for year 2000
xbma1p<-as.numeric(unlist(predict(gerd_sp,fbma1)[1]))
xbma2p<-as.numeric(unlist(predict(gerd_sp,fbma2)[1]))
xbma3p<-as.numeric(unlist(predict(gerd_sp,fbma3)[1]))
xbma4p<-as.numeric(unlist(predict(gerd_sp,fbma4)[1]))
xbma5p<-as.numeric(unlist(predict(gerd_sp,fbma5)[1]))

#Black male all years
xbm1p<-as.numeric(unlist(predict(gerd_sp,fbm1)[1]))
xbm2p<-as.numeric(unlist(predict(gerd_sp,fbm2)[1]))
xbm3p<-as.numeric(unlist(predict(gerd_sp,fbm3)[1]))
xbm4p<-as.numeric(unlist(predict(gerd_sp,fbm4)[1]))
xbm5p<-as.numeric(unlist(predict(gerd_sp,fbm5)[1]))

#black male RR for GERD based on BMI by quantile for year 2000
ybma1p<-as.numeric(unlist(predict(gerd_sp,fbma1)[2]))
ybma2p<-as.numeric(unlist(predict(gerd_sp,fbma2)[2]))
ybma3p<-as.numeric(unlist(predict(gerd_sp,fbma3)[2]))
ybma4p<-as.numeric(unlist(predict(gerd_sp,fbma4)[2]))
ybma5p<-as.numeric(unlist(predict(gerd_sp,fbma5)[2]))

#black male RR for GERD based on BMI by quantile for all years
ybm1p<-as.numeric(unlist(predict(gerd_sp,fbm1)[2]))
ybm2p<-as.numeric(unlist(predict(gerd_sp,fbm2)[2]))
ybm3p<-as.numeric(unlist(predict(gerd_sp,fbm3)[2]))
ybm4p<-as.numeric(unlist(predict(gerd_sp,fbm4)[2]))
ybm5p<-as.numeric(unlist(predict(gerd_sp,fbm5)[2]))

#logical test for early or late GERD coefficient - year 2000
bmxal<-bmxa[,1]<=mpg3        #Black male age TRUE if less than transition age
bmxa1<-bmxa[bmxal,]           #Black male early age list
bmxa2<-bmxa[!bmxal,]          #Black male late age list
xbma1p1<-xbma1p[bmxal]        #Q1 early BMIs 
ybma1p1<-ybma1p[bmxal]        #Q1 early RR for GERD
xbma2p1<-xbma2p[bmxal]        #Q2 early BMIs 
ybma2p1<-ybma2p[bmxal]        #Q2 early RR for GERD
xbma3p1<-xbma3p[bmxal]        #Q3 early BMIs 
ybma3p1<-ybma3p[bmxal]        #Q3 early RR for GERD
xbma4p1<-xbma4p[bmxal]        #Q4 early BMIs 
ybma4p1<-ybma4p[bmxal]        #Q4 early RR for GERD
xbma5p1<-xbma5p[bmxal]        #Q4 early BMIs 
ybma5p1<-ybma5p[bmxal]        #Q4 early RR for GERD
ybmrrmean1<-mean(c(ybma1p1,ybma2p1,ybma3p1,ybma4p1,ybma5p1))
bmnug11<-mpg1*ybma1p1/ybmrrmean1 #Q1 early GERD transition rates from age 12
bmnug21<-mpg1*ybma2p1/ybmrrmean1 #Q2 early GERD transition rates from age 12
bmnug31<-mpg1*ybma3p1/ybmrrmean1 #Q3 early GERD transition rates from age 12
bmnug41<-mpg1*ybma4p1/ybmrrmean1 #Q4 early GERD transition rates from age 12
bmnug51<-mpg1*ybma5p1/ybmrrmean1 #Q5 early GERD transition rates from age 12
xbma1p2<-xbma1p[!bmxal]        #Q1 late BMIs 
ybma1p2<-ybma1p[!bmxal]        #Q1 late RR for GERD
xbma2p2<-xbma2p[!bmxal]        #Q2 late BMIs 
ybma2p2<-ybma2p[!bmxal]        #Q2 late RR for GERD
xbma3p2<-xbma3p[!bmxal]        #Q3 late BMIs 
ybma3p2<-ybma3p[!bmxal]        #Q3 late RR for GERD
xbma4p2<-xbma4p[!bmxal]        #Q4 late BMIs 
ybma4p2<-ybma4p[!bmxal]        #Q4 late RR for GERD
xbma5p2<-xbma5p[!bmxal]        #Q4 late BMIs 
ybma5p2<-ybma5p[!bmxal]        #Q4 late RR for GERD

lbmx2=length(xbma1p2)
ybmrrmean2<-mean(c(ybma1p2,ybma2p2,ybma3p2,ybma4p2,ybma5p2))
bmnug12<-mpg2*ybma1p2/ybmrrmean2 #Q1 late GERD transition rates from age mpg3
bmnug22<-mpg2*ybma2p2/ybmrrmean2 #Q2 late GERD transition rates from age mpg3
bmnug32<-mpg2*ybma3p2/ybmrrmean2 #Q3 late GERD transition rates from age mpg3
bmnug42<-mpg2*ybma4p2/ybmrrmean2 #Q4 late GERD transition rates from age mpg3
bmnug52<-mpg2*ybma5p2/ybmrrmean2 #Q5 late GERD transition rates from age mpg3
bmnug1 <-c(rep(bmnug11[1],11),bmnug11,bmnug12,rep(bmnug12[lbmx2],14)) #Q1 GERD inc rates ages 1-100
bmnug2 <-c(rep(bmnug21[1],11),bmnug21,bmnug22,rep(bmnug22[lbmx2],14)) #Q2 GERD inc rates ages 1-100
bmnug3 <-c(rep(bmnug31[1],11),bmnug31,bmnug32,rep(bmnug32[lbmx2],14)) #Q3 GERD inc rates ages 1-100
bmnug4 <-c(rep(bmnug41[1],11),bmnug41,bmnug42,rep(bmnug42[lbmx2],14)) #Q4 GERD inc rates ages 1-100
bmnug5 <-c(rep(bmnug51[1],11),bmnug51,bmnug52,rep(bmnug52[lbmx2],14)) #Q5 GERD inc rates ages 1-100
bmnug <- data.frame(nug1=bmnug1, nug2=bmnug2, nug3=bmnug3, nug4=bmnug4, nug5=bmnug5)

#logical test for early or late GERD coefficient - all years
bmxl<-xg[,1]<=mpg3        #Black male age TRUE if less than transition age
bmx1<-xg[bmxl,]           #Black male early age list
bmx2<-xg[!bmxl,]          #Black male late age list
mchange <- floor(mpg3)
mdiff <- 100-mchange
xbm1p1<-xbm1p[bmxl]        #Q1 early BMIs 
ybm1p1<-ybm1p[bmxl]        #Q1 early RR for GERD
xbm2p1<-xbm2p[bmxl]        #Q2 early BMIs 
ybm2p1<-ybm2p[bmxl]        #Q2 early RR for GERD
xbm3p1<-xbm3p[bmxl]        #Q3 early BMIs 
ybm3p1<-ybm3p[bmxl]        #Q3 early RR for GERD
xbm4p1<-xbm4p[bmxl]        #Q4 early BMIs 
ybm4p1<-ybm4p[bmxl]        #Q4 early RR for GERD
xbm5p1<-xbm5p[bmxl]        #Q4 early BMIs 
ybm5p1<-ybm5p[bmxl]        #Q4 early RR for GERD
bmnu11<-mpg1*ybm1p1/ybmrrmean1 #Q1 early GERD transition rates from age 12
bmnu21<-mpg1*ybm2p1/ybmrrmean1 #Q2 early GERD transition rates from age 12
bmnu31<-mpg1*ybm3p1/ybmrrmean1 #Q3 early GERD transition rates from age 12
bmnu41<-mpg1*ybm4p1/ybmrrmean1 #Q4 early GERD transition rates from age 12
bmnu51<-mpg1*ybm5p1/ybmrrmean1 #Q5 early GERD transition rates from age 12
xbm1p2<-xbm1p[!bmxl]        #Q1 late BMIs 
ybm1p2<-ybm1p[!bmxl]        #Q1 late RR for GERD
xbm2p2<-xbm2p[!bmxl]        #Q2 late BMIs 
ybm2p2<-ybm2p[!bmxl]        #Q2 late RR for GERD
xbm3p2<-xbm3p[!bmxl]        #Q3 late BMIs 
ybm3p2<-ybm3p[!bmxl]        #Q3 late RR for GERD
xbm4p2<-xbm4p[!bmxl]        #Q4 late BMIs 
ybm4p2<-ybm4p[!bmxl]        #Q4 late RR for GERD
xbm5p2<-xbm5p[!bmxl]        #Q4 late BMIs 
ybm5p2<-ybm5p[!bmxl]        #Q4 late RR for GERD

fitbmnu11<-Tps(bmx1,bmnu11)   #all years early GERD nu
fitbmnu21<-Tps(bmx1,bmnu21)
fitbmnu31<-Tps(bmx1,bmnu31)
fitbmnu41<-Tps(bmx1,bmnu41)
fitbmnu51<-Tps(bmx1,bmnu51)

grid.list.m1<- list( x= 1:mchange, y=1900:2075)
xgm1<- make.surface.grid(grid.list.m1)
nu11bm <-  matrix(predict(fitbmnu11,xgm1),mchange,176)
nu21bm <-  matrix(predict(fitbmnu21,xgm1),mchange,176)
nu31bm <-  matrix(predict(fitbmnu31,xgm1),mchange,176)
nu41bm <-  matrix(predict(fitbmnu41,xgm1),mchange,176)
nu51bm <-  matrix(predict(fitbmnu51,xgm1),mchange,176)


bmnu12<-mpg2*ybm1p2/ybmrrmean2 #Q1 late GERD transition rates from age mpg3
bmnu22<-mpg2*ybm2p2/ybmrrmean2 #Q2 late GERD transition rates from age mpg3
bmnu32<-mpg2*ybm3p2/ybmrrmean2 #Q3 late GERD transition rates from age mpg3
bmnu42<-mpg2*ybm4p2/ybmrrmean2 #Q4 late GERD transition rates from age mpg3
bmnu52<-mpg2*ybm5p2/ybmrrmean2 #Q5 late GERD transition rates from age mpg3

fitbmnu12<-Tps(bmx2,bmnu12)   #all years early GERD nu
fitbmnu22<-Tps(bmx2,bmnu22)
fitbmnu32<-Tps(bmx2,bmnu32)
fitbmnu42<-Tps(bmx2,bmnu42)
fitbmnu52<-Tps(bmx2,bmnu52)

grid.list.m2<- list( x= (mchange+1):100, y=1900:2075)
xgm2<- make.surface.grid(grid.list.m2)
nu12bm <-  matrix(predict(fitbmnu12,xgm2),mdiff,176)
nu22bm <-  matrix(predict(fitbmnu22,xgm2),mdiff,176)
nu32bm <-  matrix(predict(fitbmnu32,xgm2),mdiff,176)
nu42bm <-  matrix(predict(fitbmnu42,xgm2),mdiff,176)
nu52bm <-  matrix(predict(fitbmnu52,xgm2),mdiff,176)
#year 2000
bmnug1 <-c(rep(bmnug11[1],11),bmnug11,bmnug12,rep(bmnug12[lbmx2],14)) #Q1 GERD inc rates ages 1-100
bmnug2 <-c(rep(bmnug21[1],11),bmnug21,bmnug22,rep(bmnug22[lbmx2],14)) #Q2 GERD inc rates ages 1-100
bmnug3 <-c(rep(bmnug31[1],11),bmnug31,bmnug32,rep(bmnug32[lbmx2],14)) #Q3 GERD inc rates ages 1-100
bmnug4 <-c(rep(bmnug41[1],11),bmnug41,bmnug42,rep(bmnug42[lbmx2],14)) #Q4 GERD inc rates ages 1-100
bmnug5 <-c(rep(bmnug51[1],11),bmnug51,bmnug52,rep(bmnug52[lbmx2],14)) #Q5 GERD inc rates ages 1-100
bmnug <- data.frame(nug1=bmnug1, nug2=bmnug2, nug3=bmnug3, nug4=bmnug4, nug5=bmnug5)

#all years
nu1bm <- rbind(nu11bm,nu12bm)
nu2bm <- rbind(nu21bm,nu22bm)
nu3bm <- rbind(nu31bm,nu32bm)
nu4bm <- rbind(nu41bm,nu42bm)
nu5bm <- rbind(nu51bm,nu52bm)

surbm1=rep(1,100)
surbm2=rep(1,100)
surbm3=rep(1,100)
surbm4=rep(1,100)
surbm5=rep(1,100)
surbm1t=1
surbm2t=1
surbm3t=1
surbm4t=1
surbm5t=1
for(i in 1:100) {
 surbm1t <-surbm1t*(1-bmnug1[i])
 surbm1[i] <-surbm1t
 surbm2t <-surbm2t*(1-bmnug2[i])
 surbm2[i] <-surbm2t
 surbm3t <-surbm3t*(1-bmnug3[i])
 surbm3[i] <-surbm3t
 surbm4t <-surbm4t*(1-bmnug4[i])
 surbm4[i] <-surbm4t
 surbm5t <-surbm5t*(1-bmnug5[i])
 surbm5[i] <-surbm5t
}
xsur=1:100
#plot(xsur,y=(1-surbm5),lty=1,
#main="Predicted Black Male GERD prevalence by BMI quintile in year 2000",
#ylab="Prevalence",xlab="Age",cex.main=1.8,cex.lab=1.6)
#points(xsur,(1-surbm2))
#points(xsur,(1-surbm3))
#points(xsur,(1-surbm4))
#points(xsur,(1-surbm1))
#dev.copy2pdf(file="GERD_BM_Q1-Q5_2000.pdf",width=12,height=8.)




#Black females
#black female BMI by quantile for year 2000
xbfa1p<-as.numeric(unlist(predict(gerd_sp,fbfa1)[1]))
xbfa2p<-as.numeric(unlist(predict(gerd_sp,fbfa2)[1]))
xbfa3p<-as.numeric(unlist(predict(gerd_sp,fbfa3)[1]))
xbfa4p<-as.numeric(unlist(predict(gerd_sp,fbfa4)[1]))
xbfa5p<-as.numeric(unlist(predict(gerd_sp,fbfa5)[1]))

#Black female all years
xbf1p<-as.numeric(unlist(predict(gerd_sp,fbf1)[1]))
xbf2p<-as.numeric(unlist(predict(gerd_sp,fbf2)[1]))
xbf3p<-as.numeric(unlist(predict(gerd_sp,fbf3)[1]))
xbf4p<-as.numeric(unlist(predict(gerd_sp,fbf4)[1]))
xbf5p<-as.numeric(unlist(predict(gerd_sp,fbf5)[1]))

#black female RR for GERD based on BMI by quantile for year 2000
ybfa1p<-as.numeric(unlist(predict(gerd_sp,fbfa1)[2]))
ybfa2p<-as.numeric(unlist(predict(gerd_sp,fbfa2)[2]))
ybfa3p<-as.numeric(unlist(predict(gerd_sp,fbfa3)[2]))
ybfa4p<-as.numeric(unlist(predict(gerd_sp,fbfa4)[2]))
ybfa5p<-as.numeric(unlist(predict(gerd_sp,fbfa5)[2]))

#white female RR for GERD based on BMI by quantile for all years
ybf1p<-as.numeric(unlist(predict(gerd_sp,fbf1)[2]))
ybf2p<-as.numeric(unlist(predict(gerd_sp,fbf2)[2]))
ybf3p<-as.numeric(unlist(predict(gerd_sp,fbf3)[2]))
ybf4p<-as.numeric(unlist(predict(gerd_sp,fbf4)[2]))
ybf5p<-as.numeric(unlist(predict(gerd_sp,fbf5)[2]))

#logical test for early or late GERD coefficient - year 2000
bfxal<-bfxa[,1]<=fpg3        #Black female age TRUE if less than transition age
bfxa1<-bfxa[bfxal,]           #Black female early age list
bfxa2<-bfxa[!bfxal,]          #Black female late age list
xbfa1p1<-xbfa1p[bfxal]        #Q1 early BMIs 
ybfa1p1<-ybfa1p[bfxal]        #Q1 early RR for GERD
xbfa2p1<-xbfa2p[bfxal]        #Q2 early BMIs 
ybfa2p1<-ybfa2p[bfxal]        #Q2 early RR for GERD
xbfa3p1<-xbfa3p[bfxal]        #Q3 early BMIs 
ybfa3p1<-ybfa3p[bfxal]        #Q3 early RR for GERD
xbfa4p1<-xbfa4p[bfxal]        #Q4 early BMIs 
ybfa4p1<-ybfa4p[bfxal]        #Q4 early RR for GERD
xbfa5p1<-xbfa5p[bfxal]        #Q4 early BMIs 
ybfa5p1<-ybfa5p[bfxal]        #Q4 early RR for GERD
ybfrrmean1<-mean(c(ybfa1p1,ybfa2p1,ybfa3p1,ybfa4p1,ybfa5p1))
bfnug11<-fpg1*ybfa1p1/ybfrrmean1 #Q1 early GERD transition rates from age 12
bfnug21<-fpg1*ybfa2p1/ybfrrmean1 #Q2 early GERD transition rates from age 12
bfnug31<-fpg1*ybfa3p1/ybfrrmean1 #Q3 early GERD transition rates from age 12
bfnug41<-fpg1*ybfa4p1/ybfrrmean1 #Q4 early GERD transition rates from age 12
bfnug51<-fpg1*ybfa5p1/ybfrrmean1 #Q5 early GERD transition rates from age 12
xbfa1p2<-xbfa1p[!bfxal]        #Q1 late BMIs 
ybfa1p2<-ybfa1p[!bfxal]        #Q1 late RR for GERD
xbfa2p2<-xbfa2p[!bfxal]        #Q2 late BMIs 
ybfa2p2<-ybfa2p[!bfxal]        #Q2 late RR for GERD
xbfa3p2<-xbfa3p[!bfxal]        #Q3 late BMIs 
ybfa3p2<-ybfa3p[!bfxal]        #Q3 late RR for GERD
xbfa4p2<-xbfa4p[!bfxal]        #Q4 late BMIs 
ybfa4p2<-ybfa4p[!bfxal]        #Q4 late RR for GERD
xbfa5p2<-xbfa5p[!bfxal]        #Q4 late BMIs 
ybfa5p2<-ybfa5p[!bfxal]        #Q4 late RR for GERD

lbfx2=length(xbfa1p2)
ybfrrmean2<-mean(c(ybfa1p2,ybfa2p2,ybfa3p2,ybfa4p2,ybfa5p2))
bfnug12<-fpg2*ybfa1p2/ybfrrmean2 #Q1 late GERD transition rates from age fpg3
bfnug22<-fpg2*ybfa2p2/ybfrrmean2 #Q2 late GERD transition rates from age fpg3
bfnug32<-fpg2*ybfa3p2/ybfrrmean2 #Q3 late GERD transition rates from age fpg3
bfnug42<-fpg2*ybfa4p2/ybfrrmean2 #Q4 late GERD transition rates from age fpg3
bfnug52<-fpg2*ybfa5p2/ybfrrmean2 #Q5 late GERD transition rates from age fpg3
bfnug1 <-c(rep(bfnug11[1],11),bfnug11,bfnug12,rep(bfnug12[lbfx2],14)) #Q1 GERD inc rates ages 1-100
bfnug2 <-c(rep(bfnug21[1],11),bfnug21,bfnug22,rep(bfnug22[lbfx2],14)) #Q2 GERD inc rates ages 1-100
bfnug3 <-c(rep(bfnug31[1],11),bfnug31,bfnug32,rep(bfnug32[lbfx2],14)) #Q3 GERD inc rates ages 1-100
bfnug4 <-c(rep(bfnug41[1],11),bfnug41,bfnug42,rep(bfnug42[lbfx2],14)) #Q4 GERD inc rates ages 1-100
bfnug5 <-c(rep(bfnug51[1],11),bfnug51,bfnug52,rep(bfnug52[lbfx2],14)) #Q5 GERD inc rates ages 1-100
bfnug <- data.frame(nug1=bfnug1, nug2=bfnug2, nug3=bfnug3, nug4=bfnug4, nug5=bfnug5)

#logical test for early or late GERD coefficient - all years
bfxl<-xg[,1]<=fpg3        #Black female age TRUE if less than transition age
bfx1<-xg[bfxl,]           #Black female early age list
bfx2<-xg[!bfxl,]          #Black female late age list
xbf1p1<-xbf1p[bfxl]        #Q1 early BMIs 
ybf1p1<-ybf1p[bfxl]        #Q1 early RR for GERD
xbf2p1<-xbf2p[bfxl]        #Q2 early BMIs 
ybf2p1<-ybf2p[bfxl]        #Q2 early RR for GERD
xbf3p1<-xbf3p[bfxl]        #Q3 early BMIs 
ybf3p1<-ybf3p[bfxl]        #Q3 early RR for GERD
xbf4p1<-xbf4p[bfxl]        #Q4 early BMIs 
ybf4p1<-ybf4p[bfxl]        #Q4 early RR for GERD
xbf5p1<-xbf5p[bfxl]        #Q4 early BMIs 
ybf5p1<-ybf5p[bfxl]        #Q4 early RR for GERD
bfnu11<-fpg1*ybf1p1/ybfrrmean1 #Q1 early GERD transition rates from age 12
bfnu21<-fpg1*ybf2p1/ybfrrmean1 #Q2 early GERD transition rates from age 12
bfnu31<-fpg1*ybf3p1/ybfrrmean1 #Q3 early GERD transition rates from age 12
bfnu41<-fpg1*ybf4p1/ybfrrmean1 #Q4 early GERD transition rates from age 12
bfnu51<-fpg1*ybf5p1/ybfrrmean1 #Q5 early GERD transition rates from age 12
xbf1p2<-xbf1p[!bfxl]        #Q1 late BMIs 
ybf1p2<-ybf1p[!bfxl]        #Q1 late RR for GERD
xbf2p2<-xbf2p[!bfxl]        #Q2 late BMIs 
ybf2p2<-ybf2p[!bfxl]        #Q2 late RR for GERD
xbf3p2<-xbf3p[!bfxl]        #Q3 late BMIs 
ybf3p2<-ybf3p[!bfxl]        #Q3 late RR for GERD
xbf4p2<-xbf4p[!bfxl]        #Q4 late BMIs 
ybf4p2<-ybf4p[!bfxl]        #Q4 late RR for GERD
xbf5p2<-xbf5p[!bfxl]        #Q4 late BMIs 
ybf5p2<-ybf5p[!bfxl]        #Q4 late RR for GERD

fitbfnu11<-Tps(bfx1,bfnu11)   #all years early GERD nu
fitbfnu21<-Tps(bfx1,bfnu21)
fitbfnu31<-Tps(bfx1,bfnu31)
fitbfnu41<-Tps(bfx1,bfnu41)
fitbfnu51<-Tps(bfx1,bfnu51)

grid.list.f1<- list( x= 1:fchange, y=1900:2075)
xgf1<- make.surface.grid(grid.list.f1)
nu11bf <-  matrix(predict(fitbfnu11,xgf1),fchange,176)
nu21bf <-  matrix(predict(fitbfnu21,xgf1),fchange,176)
nu31bf <-  matrix(predict(fitbfnu31,xgf1),fchange,176)
nu41bf <-  matrix(predict(fitbfnu41,xgf1),fchange,176)
nu51bf <-  matrix(predict(fitbfnu51,xgf1),fchange,176)


bfnu12<-fpg2*ybf1p2/ybfrrmean2 #Q1 late GERD transition rates from age fpg3
bfnu22<-fpg2*ybf2p2/ybfrrmean2 #Q2 late GERD transition rates from age fpg3
bfnu32<-fpg2*ybf3p2/ybfrrmean2 #Q3 late GERD transition rates from age fpg3
bfnu42<-fpg2*ybf4p2/ybfrrmean2 #Q4 late GERD transition rates from age fpg3
bfnu52<-fpg2*ybf5p2/ybfrrmean2 #Q5 late GERD transition rates from age fpg3

fitbfnu12<-Tps(bfx2,bfnu12)   #all years early GERD nu
fitbfnu22<-Tps(bfx2,bfnu22)
fitbfnu32<-Tps(bfx2,bfnu32)
fitbfnu42<-Tps(bfx2,bfnu42)
fitbfnu52<-Tps(bfx2,bfnu52)

grid.list.f2<- list( x= (fchange+1):100, y=1900:2075)
xgf2<- make.surface.grid(grid.list.f2)
nu12bf <-  matrix(predict(fitbfnu12,xgf2),fdiff,176)
nu22bf <-  matrix(predict(fitbfnu22,xgf2),fdiff,176)
nu32bf <-  matrix(predict(fitbfnu32,xgf2),fdiff,176)
nu42bf <-  matrix(predict(fitbfnu42,xgf2),fdiff,176)
nu52bf <-  matrix(predict(fitbfnu52,xgm2),fdiff,176)
#year 2000
bfnug1 <-c(rep(bfnug11[1],11),bfnug11,bfnug12,rep(bfnug12[lbfx2],14)) #Q1 GERD inc rates ages 1-100
bfnug2 <-c(rep(bfnug21[1],11),bfnug21,bfnug22,rep(bfnug22[lbfx2],14)) #Q2 GERD inc rates ages 1-100
bfnug3 <-c(rep(bfnug31[1],11),bfnug31,bfnug32,rep(bfnug32[lbfx2],14)) #Q3 GERD inc rates ages 1-100
bfnug4 <-c(rep(bfnug41[1],11),bfnug41,bfnug42,rep(bfnug42[lbfx2],14)) #Q4 GERD inc rates ages 1-100
bfnug5 <-c(rep(bfnug51[1],11),bfnug51,bfnug52,rep(bfnug52[lbfx2],14)) #Q5 GERD inc rates ages 1-100
bfnug <- data.frame(nug1=bfnug1, nug2=bfnug2, nug3=bfnug3, nug4=bfnug4, nug5=bfnug5)

#all years
nu1bf <- rbind(nu11bf,nu12bf)
nu2bf <- rbind(nu21bf,nu22bf)
nu3bf <- rbind(nu31bf,nu32bf)
nu4bf <- rbind(nu41bf,nu42bf)
nu5bf <- rbind(nu51bf,nu52bf)

surbf1=rep(1,100)
surbf2=rep(1,100)
surbf3=rep(1,100)
surbf4=rep(1,100)
surbf5=rep(1,100)
surbf1t=1
surbf2t=1
surbf3t=1
surbf4t=1
surbf5t=1
for(i in 1:100) {
 surbf1t <-surbf1t*(1-bfnug1[i])
 surbf1[i] <-surbf1t
 surbf2t <-surbf2t*(1-bfnug2[i])
 surbf2[i] <-surbf2t
 surbf3t <-surbf3t*(1-bfnug3[i])
 surbf3[i] <-surbf3t
 surbf4t <-surbf4t*(1-bfnug4[i])
 surbf4[i] <-surbf4t
 surbf5t <-surbf5t*(1-bfnug5[i])
 surbf5[i] <-surbf5t
}
xsur=1:100
#plot(xsur,y=(1-surbf5),lty=1,
#main="Predicted Black Female GERD prevalence by BMI quintile in year 2000",
#ylab="Prevalence",xlab="Age",cex.main=1.8,cex.lab=1.6)
#points(xsur,(1-surbf2))
#points(xsur,(1-surbf3))
#points(xsur,(1-surbf4))
#points(xsur,(1-surbf1))
#dev.copy2pdf(file="GERD_BF_Q1-Q5_2000.pdf",width=12,height=8.)
#}
}
