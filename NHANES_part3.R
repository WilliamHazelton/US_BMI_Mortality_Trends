library(fields)

###############################
#Preprocess mortality data from  fits by race, sex, age, period and cohort, informed by BMI quintile from 
#NHANES longitudinal followup and save as tables for use in BMI history generator
#Decennial (period) Life Tables based on data from the National Center for Health Statistics 
#for 3-year periods around the decennial censuses from 1950 - 1990.
#www.ced.gov/nchs/data/nvsr51/nvsr51_03.pdf   (Tables 5-8 for year 2000)
#www.ced.gov/nchs/data/nvsr51/nvsr64_11.pdf   (Tables 5-8 for year 2011)

#White males life tables 
wmlt5090=read.table('../Basecase3/Lifetables/w.m.lt.1x3',header=TRUE)
wmlt2000=read.csv('../Basecase3/Lifetables/LifeTable2000_WM_Table05.csv',header=TRUE)
wmlt2010=read.csv('../Basecase3/Lifetables/LifeTable2010_WM_Table05.csv',header=TRUE)
#White females life tables 
wflt5090=read.table('../Basecase3/Lifetables/w.f.lt.1x3',header=TRUE)
wflt2000=read.csv('../Basecase3/Lifetables/LifeTable2000_WF_Table06.csv',header=TRUE)
wflt2010=read.csv('../Basecase3/Lifetables/LifeTable2010_WF_Table06.csv',header=TRUE)

#Black males life tables  (Data missing for blacks for 1950, 1960 - use non-white data below
bmlt7090=read.table('../Basecase3/Lifetables/b.m.lt.1x3',header=TRUE)
bmlt2000=read.csv('../Basecase3/Lifetables/LifeTable2000_BM_Table08.csv',header=TRUE)
bmlt2010=read.csv('../Basecase3/Lifetables/LifeTable2010_BM_Table08.csv',header=TRUE)
#Black females life tables  (Data missing  for blacks for 1950, 1960 - use non-white data below
bflt7090=read.table('../Basecase3/Lifetables/b.f.lt.1x3',header=TRUE)
bflt2000=read.csv('../Basecase3/Lifetables/LifeTable2000_BF_Table09.csv',header=TRUE)
bflt2010=read.csv('../Basecase3/Lifetables/LifeTable2010_BF_Table09.csv',header=TRUE)

#Non-White males life tables  (Use for blacks for 1950, 1960
nwmlt5090=read.table('../Basecase3/Lifetables/nw.m.lt.1x3',header=TRUE)
#Non-White females life tables  (Use for blacks for 1950, 1960
nwflt5090=read.table('../Basecase3/Lifetables/nw.f.lt.1x3',header=TRUE)
#Period Life Tables for the Social Security Area by Calendar Year and Sex  (Not race)
# <https://www.ssa.gov/OACT/NOTES/as120/LifeTables_Tbl_6_2030.html>  
amflt1900=read.table('../Basecase3/Lifetables/SSATable6_1900Male_FemaleProjectedLifeTables.txt',header=TRUE)
#All males 1900
xmam00 <- matrix(NA,100,2)
xmam00[,1] <- amflt1900[2:101,1]
xmam00[,2] <- rep(1900,100)
ymam00 <- amflt1900[2:101,2]
#All females 1900
xmaf00 <- xmam00
ymaf00 <- amflt1900[2:101,9]

amflt1910=read.table('../Basecase3/Lifetables/SSATable6_1910Male_FemaleProjectedLifeTables.txt',header=TRUE)
#All males 1910
xmam10 <- matrix(NA,100,2)
xmam10[,1] <- amflt1910[2:101,1]
xmam10[,2] <- rep(1910,100)
ymam10 <- amflt1910[2:101,2]
#All females 1910
xmaf10 <- xmam10
ymaf10 <- amflt1910[2:101,9]

amflt1920=read.table('../Basecase3/Lifetables/SSATable6_1920Male_FemaleProjectedLifeTables.txt',header=TRUE)
#All males 1920
xmam20 <- matrix(NA,100,2)
xmam20[,1] <- amflt1920[2:101,1]
xmam20[,2] <- rep(1920,100)
ymam20 <- amflt1920[2:101,2]
#All females 1920
xmaf20 <- xmam20
ymaf20 <- amflt1920[2:101,9]

amflt1930=read.table('../Basecase3/Lifetables/SSATable6_1930Male_FemaleProjectedLifeTables.txt',header=TRUE)
#All males 1930
xmam30 <- matrix(NA,100,2)
xmam30[,1] <- amflt1930[2:101,1]
xmam30[,2] <- rep(1930,100)
ymam30 <- amflt1930[2:101,2]
#All females 1930
xmaf30 <- xmam30
ymaf30 <- amflt1930[2:101,9]

amflt1940=read.table('../Basecase3/Lifetables/SSATable6_1940Male_FemaleProjectedLifeTables.txt',header=TRUE)
#All males 1940
xmam40 <- matrix(NA,100,2)
xmam40[,1] <- amflt1940[2:101,1]
xmam40[,2] <- rep(1940,100)
ymam40 <- amflt1940[2:101,2]
#All females 1940
xmaf40 <- xmam40
ymaf40 <- amflt1940[2:101,9]

amflt1950=read.table('../Basecase3/Lifetables/SSATable6_1950Male_FemaleProjectedLifeTables.txt',header=TRUE)
#All males 1950
xmam50 <- matrix(NA,100,2)
xmam50[,1] <- amflt1950[2:101,1]
xmam50[,2] <- rep(1950,100)
ymam50 <- amflt1950[2:101,2]
#All females 1950
xmaf50 <- xmam50
ymaf50 <- amflt1950[2:101,9]

amflt2010=read.table('../Basecase3/Lifetables/SSATable6_2010Male_FemaleProjectedLifeTables.txt',header=TRUE)
#All males 2010
xmam2010 <- matrix(NA,100,2)
xmam2010[,1] <- amflt2010[2:101,1]
xmam2010[,2] <- rep(2010,100)
ymam2010 <- amflt2010[2:101,2]
#All females 2010
xmaf2010 <- xmam2010
ymaf2010 <- amflt2010[2:101,9]

amflt2020=read.table('../Basecase3/Lifetables/SSATable6_2020Male_FemaleProjectedLifeTables.txt',header=TRUE)
#All males 2020
xmam2020 <- matrix(NA,100,2)
xmam2020[,1] <- amflt2020[2:101,1]
xmam2020[,2] <- rep(2020,100)
ymam2020 <- amflt2020[2:101,2]
#All females 2020
xmaf2020 <- xmam2020
ymaf2020 <- amflt2020[2:101,9]

amflt2030=read.table('../Basecase3/Lifetables/SSATable6_2030Male_FemaleProjectedLifeTables.txt',header=TRUE)

#All males 2030
xmam2030 <- matrix(NA,100,2)
xmam2030[,1] <- amflt2030[2:101,1]
xmam2030[,2] <- rep(2030,100)
ymam2030 <- amflt2030[2:101,2]
#All females 2030
xmaf2030 <- xmam2030
ymaf2030 <- amflt2030[2:101,9]

amflt2040=read.table('../Basecase3/Lifetables/SSATable6_2040Male_FemaleProjectedLifeTables.txt',header=TRUE)

#All males 2040
xmam2040 <- matrix(NA,100,2)
xmam2040[,1] <- amflt2040[2:101,1]
xmam2040[,2] <- rep(2040,100)
ymam2040 <- amflt2040[2:101,2]
#All females 2040
xmaf2040 <- xmam2040
ymaf2040 <- amflt2040[2:101,9]

amflt2050=read.table('../Basecase3/Lifetables/SSATable6_2050Male_FemaleProjectedLifeTables.txt',header=TRUE)

#All males 2050
xmam2050 <- matrix(NA,100,2)
xmam2050[,1] <- amflt2050[2:101,1]
xmam2050[,2] <- rep(2050,100)
ymam2050 <- amflt2050[2:101,2]
#All females 2050
xmaf2050 <- xmam2050
ymaf2050 <- amflt2050[2:101,9]

amflt2060=read.table('../Basecase3/Lifetables/SSATable6_2060Male_FemaleProjectedLifeTables.txt',header=TRUE)

#All males 2060
xmam2060 <- matrix(NA,100,2)
xmam2060[,1] <- amflt2060[2:101,1]
xmam2060[,2] <- rep(2060,100)
ymam2060 <- amflt2060[2:101,2]
#All females 2060
xmaf2060 <- xmam2060
ymaf2060 <- amflt2060[2:101,9]

amflt2070=read.table('../Basecase3/Lifetables/SSATable6_2070Male_FemaleProjectedLifeTables.txt',header=TRUE)

#All males 2070
xmam2070 <- matrix(NA,100,2)
xmam2070[,1] <- amflt2070[2:101,1]
xmam2070[,2] <- rep(2070,100)
ymam2070 <- amflt2070[2:101,2]
#All females 2070
xmaf2070 <- xmam2070
ymaf2070 <- amflt2070[2:101,9]

amflt2080=read.table('../Basecase3/Lifetables/SSATable6_2080Male_FemaleProjectedLifeTables.txt',header=TRUE)

#All males 2080
xmam2080 <- matrix(NA,100,2)
xmam2080[,1] <- amflt2080[2:101,1]
xmam2080[,2] <- rep(2080,100)
ymam2080 <- amflt2080[2:101,2]
#All females 2080
xmaf2080 <- xmam2080
ymaf2080 <- amflt2080[2:101,9]

amflt2090=read.table('../Basecase3/Lifetables/SSATable6_2090Male_FemaleProjectedLifeTables.txt',header=TRUE)

#All males 2090
xmam2090 <- matrix(NA,100,2)
xmam2090[,1] <- amflt2090[2:101,1]
xmam2090[,2] <- rep(2090,100)
ymam2090 <- amflt2090[2:101,2]
#All females 2090
xmaf2090 <- xmam2090
ymaf2090 <- amflt2090[2:101,9]

amflt2100=read.table('../Basecase3/Lifetables/SSATable6_2100Male_FemaleProjectedLifeTables.txt',header=TRUE)

#All males 2100
xmam2100 <- matrix(NA,100,2)
xmam2100[,1] <- amflt2100[2:101,1]
xmam2100[,2] <- rep(2100,100)
ymam2100 <- amflt2100[2:101,2]
#All females 2100
xmaf2100 <- xmam2100
ymaf2100 <- amflt2100[2:101,9]

#White males 1950-1990
xmwm5090 <- matrix(NA,dim(wmlt5090)[1],2)
xmwm5090[,1] <- wmlt5090[,2]                      #age
xmwm5090[,2] <- wmlt5090[,1]                      #year 1950, 1960, ... 1990
ymwm5090 <- wmlt5090$qx                           #annual death probability
#White males 1950 (use to extrapolate backward using ratio to all males)
xmwm50 <- xmwm5090[2:101,]             
ymwm50 <- ymwm5090[2:101]

#White males 2000 
xmwm2000 <- matrix(NA,dim(wmlt2000)[1],2)
xmwm2000[,1] <- wmlt2000[,1]                      #age
xmwm2000[,2] <- rep(2000,dim(wmlt2000)[1])                      #age
ymwm2000 <- wmlt2000$qx                           #annual death probability
#White males 2010 (use to extrapolate forward using ratio to all males)
xmwm2010 <- matrix(NA,dim(wmlt2010)[1],2)
xmwm2010[,1] <- wmlt2010[,1]                      #age
xmwm2010[,2] <- rep(2010,dim(wmlt2010)[1])                      #age
ymwm2010 <- wmlt2010$qx                           #annual death probability - 

#Ratio white to all males 1950, use ratio to project white mortality back to 1900
yw2am50 <- ymwm50/ymam50
ymwm40 <- yw2am50 * ymam40
ymwm30 <- yw2am50 * ymam30
ymwm20 <- yw2am50 * ymam20
ymwm10 <- yw2am50 * ymam10
ymwm00 <- yw2am50 * ymam00
xmwm40 <- xmam40 
xmwm30 <- xmam30 
xmwm20 <- xmam20 
xmwm10 <- xmam10 
xmwm00 <- xmam00 

#Ratio white to all males 2010, use ratio to project white mortality to 2100
yw2am2010 <- ymwm2010/ymam2010
ymwm2020 <- yw2am2010 * ymam2020
ymwm2030 <- yw2am2010 * ymam2030
ymwm2040 <- yw2am2010 * ymam2040
ymwm2050 <- yw2am2010 * ymam2050
ymwm2060 <- yw2am2010 * ymam2060
ymwm2070 <- yw2am2010 * ymam2070
ymwm2080 <- yw2am2010 * ymam2080
ymwm2090 <- yw2am2010 * ymam2090
ymwm2100 <- yw2am2010 * ymam2100
xmwm2020 <-  xmam2020
xmwm2030 <-  xmam2030
xmwm2040 <-  xmam2040
xmwm2050 <-  xmam2050
xmwm2060 <-  xmam2060
xmwm2070 <-  xmam2070
xmwm2080 <-  xmam2080
xmwm2090 <-  xmam2090
xmwm2100 <-  xmam2100


#White males life tables plate splines to smooth data

xmwm <-rbind( xmwm00, xmwm10, xmwm20, xmwm30, xmwm40,
xmwm5090,xmwm2000,xmwm2010,xmwm2020,xmwm2030,
xmwm2040,xmwm2050,xmwm2060,xmwm2070,
xmwm2080,xmwm2090,xmwm2100)

ymwm <-c( ymwm00, ymwm10, ymwm20, ymwm30, ymwm40,
ymwm5090,ymwm2000,ymwm2010,ymwm2020,ymwm2030,
ymwm2040,ymwm2050,ymwm2060,ymwm2070,
ymwm2080,ymwm2090,ymwm2100)

fitltwm<-Tps(xmwm,ymwm)
#grid.list<- list( x= 1:100, y=1900:2100)
#ltwm <-  matrix(predict(fitltwm,xg),100,201)
cnlt <-as.character(c(1900:2100))
rnlt <-as.character(c(12:100))
grid.list<- list( x= 12:100, y=1900:2100)
xg<- make.surface.grid(grid.list)
ltwm <-  matrix(predict(fitltwm,xg),89,201)
colnames(ltwm) <- cnlt
rownames(ltwm) <- rnlt
save(ltwm,file = "ltwm.RData")
######################

#Non-White males life tables using thin plate splines to smooth data
xmnwm5090 <- matrix(NA,dim(nwmlt5090)[1],2)
xmnwm50 <- xmnwm5090[1:100,]

xmnwm5090[,1] <- nwmlt5090[,2]                      #age
xmnwm5090[,2] <- nwmlt5090[,1]                      #year 1950, 1960, ... 1990
ymnwm5090 <- nwmlt5090$qx                           #annual death probability
ymnwm50 <- ymnwm5090[1:100]

xmnwm5060 <- xmnwm5090[1:202,]
ymnwm5060 <- ymnwm5090[1:202]

#Black information not available before 1970 - use non-white files back to 1950, project before that
#Ratio non-white to all males 1950, use ratio to project non-white mortality back to 1900
ynw2am50 <- ymnwm50/ymam50
ymnwm40 <- ynw2am50 * ymam40
ymnwm30 <- ynw2am50 * ymam30
ymnwm20 <- ynw2am50 * ymam20
ymnwm10 <- ynw2am50 * ymam10
ymnwm00 <- ynw2am50 * ymam00
xmnwm40 <- xmam40 
xmnwm30 <- xmam30 
xmnwm20 <- xmam20 
xmnwm10 <- xmam10 
xmnwm00 <- xmam00 

#Black males life tables 1970-1990
xmbm7090 <- matrix(NA,dim(bmlt7090)[1],2)
xmbm7090[,1] <- bmlt7090[,2]                      #age
xmbm7090[,2] <- bmlt7090[,1]                      #year 1950, 1960, ... 1990
ymbm7090 <- bmlt7090$qx                           #annual death probability
#Black males life tables 2000
xmbm2000 <- matrix(NA,dim(bmlt2000)[1],2)
xmbm2000[,1] <- bmlt2000[,1]                      #age
xmbm2000[,2] <- rep(2000,dim(bmlt2000)[1])                      #age
ymbm2000 <- bmlt2000$qx                           #annual death probability
#Black males life tables 2010
xmbm2010 <- matrix(NA,dim(bmlt2010)[1],2)
xmbm2010[,1] <- bmlt2010[,1]                      #age
xmbm2010[,2] <- rep(2010,dim(bmlt2010)[1])                      #age
ymbm2010 <- bmlt2010$qx                           #annual death probability

#Ratio black to all males 2010, use ratio to project black mortality to 2100
yb2am2010 <- ymbm2010/ymam2010
ymbm2020 <- yb2am2010 * ymam2020
ymbm2030 <- yb2am2010 * ymam2030
ymbm2040 <- yb2am2010 * ymam2040
ymbm2050 <- yb2am2010 * ymam2050
ymbm2060 <- yb2am2010 * ymam2060
ymbm2070 <- yb2am2010 * ymam2070
ymbm2080 <- yb2am2010 * ymam2080
ymbm2090 <- yb2am2010 * ymam2090
ymbm2100 <- yb2am2010 * ymam2100
xmbm2020 <-  xmam2020
xmbm2030 <-  xmam2030
xmbm2040 <-  xmam2040
xmbm2050 <-  xmam2050
xmbm2060 <-  xmam2060
xmbm2070 <-  xmam2070
xmbm2080 <-  xmam2080
xmbm2090 <-  xmam2090
xmbm2100 <-  xmam2100


#Black males life tables using thin plate splines to smooth data
xmbm <-rbind( xmnwm00, xmnwm10, xmnwm20, xmnwm30, xmnwm40,
xmnwm5060,xmbm7090,xmbm2000,xmbm2010,xmbm2020,xmbm2030,
xmbm2040,xmbm2050,xmbm2060,xmbm2070,
xmbm2080,xmbm2090,xmbm2100)

ymbm <- c( ymnwm00, ymnwm10, ymnwm20, ymnwm30, ymnwm40,
ymnwm5060,ymbm7090,ymbm2000,ymbm2010,ymbm2020,ymbm2030,
ymbm2040,ymbm2050,ymbm2060,ymbm2070,
ymbm2080,ymbm2090,ymbm2100)

fitltbm<-Tps(xmbm,ymbm)
#grid.list<- list( x= 1:100, y=1900:2100)
#xg<- make.surface.grid(grid.list)
#ltbm <-  matrix(predict(fitltbm,xg),100,201)

cnlt <-as.character(c(1900:2100))
rnlt <-as.character(c(12:100))
grid.list<- list( x= 12:100, y=1900:2100)
xg<- make.surface.grid(grid.list)
ltbm <-  matrix(predict(fitltbm,xg),89,201)
colnames(ltbm) <- cnlt
rownames(ltbm) <- rnlt
save(ltbm,file = "ltbm.RData")

####################

#White females 1950-1990
xmwf5090 <- matrix(NA,dim(wflt5090)[1],2)
xmwf5090[,1] <- wflt5090[,2]                      #age
xmwf5090[,2] <- wflt5090[,1]                      #year 1950, 1960, ... 1990
ymwf5090 <- wflt5090$qx                           #annual death probability
#White females 1950 (use to extrapolate backward using ratio to all females)
xmwf50 <- xmwf5090[1:100,]             
ymwf50 <- ymwf5090[1:100]

#White females 2000 
xmwf2000 <- matrix(NA,dim(wflt2000)[1],2)
xmwf2000[,1] <- wflt2000[,1]                      #age
xmwf2000[,2] <- rep(2000,dim(wflt2000)[1])                      #age
ymwf2000 <- wflt2000$qx                           #annual death probability
#White females 2010 (use to extrapolate forward using ratio to all females)
xmwf2010 <- matrix(NA,dim(wflt2010)[1],2)
xmwf2010[,1] <- wflt2010[,1]                      #age
xmwf2010[,2] <- rep(2010,dim(wflt2010)[1])                      #age
ymwf2010 <- wflt2010$qx                           #annual death probability - 

#Ratio white to all females 1950, use ratio to project white mortality back to 1900
yw2af50 <- ymwf50/ymaf50
ymwf40 <- yw2af50 * ymaf40
ymwf30 <- yw2af50 * ymaf30
ymwf20 <- yw2af50 * ymaf20
ymwf10 <- yw2af50 * ymaf10
ymwf00 <- yw2af50 * ymaf00
xmwf40 <- xmaf40 
xmwf30 <- xmaf30 
xmwf20 <- xmaf20 
xmwf10 <- xmaf10 
xmwf00 <- xmaf00 

#Ratio white to all females 2010, use ratio to project white mortality to 2100
yw2af2010 <- ymwf2010/ymaf2010
ymwf2020 <- yw2af2010 * ymaf2020
ymwf2030 <- yw2af2010 * ymaf2030
ymwf2040 <- yw2af2010 * ymaf2040
ymwf2050 <- yw2af2010 * ymaf2050
ymwf2060 <- yw2af2010 * ymaf2060
ymwf2070 <- yw2af2010 * ymaf2070
ymwf2080 <- yw2af2010 * ymaf2080
ymwf2090 <- yw2af2010 * ymaf2090
ymwf2100 <- yw2af2010 * ymaf2100
xmwf2020 <-  xmaf2020
xmwf2030 <-  xmaf2030
xmwf2040 <-  xmaf2040
xmwf2050 <-  xmaf2050
xmwf2060 <-  xmaf2060
xmwf2070 <-  xmaf2070
xmwf2080 <-  xmaf2080
xmwf2090 <-  xmaf2090
xmwf2100 <-  xmaf2100


#White females life tables plate splines to smooth data
xmwf <-rbind( xmwf00, xmwf10, xmwf20, xmwf30, xmwf40,
xmwf5090,xmwf2000,xmwf2010,xmwf2020,xmwf2030,
xmwf2040,xmwf2050,xmwf2060,xmwf2070,
xmwf2080,xmwf2090,xmwf2100)

ymwf <-c( ymwf00, ymwf10, ymwf20, ymwf30, ymwf40,
ymwf5090,ymwf2000,ymwf2010,ymwf2020,ymwf2030,
ymwf2040,ymwf2050,ymwf2060,ymwf2070,
ymwf2080,ymwf2090,ymwf2100)

fitltwf<-Tps(xmwf,ymwf)
#grid.list<- list( x= 1:100, y=1900:2100)
grid.list<- list( x= 12:100, y=1900:2100)
xg<- make.surface.grid(grid.list)
#ltwf <-  matrix(predict(fitltwf,xg),100,201)
ltwf <-  matrix(predict(fitltwf,xg),89,201)
cnlt <-as.character(c(1900:2100))
rnlt <-as.character(c(12:100))
colnames(ltwf) <- cnlt
rownames(ltwf) <- rnlt
save(ltwf,file = "ltwf.RData")

######################

#Non-White females life tables using thin plate splines to smooth data
xmnwf5090 <- matrix(NA,dim(nwflt5090)[1],2)
xmnwf50 <- xmnwf5090[1:100,]

xmnwf5090[,1] <- nwflt5090[,2]                      #age
xmnwf5090[,2] <- nwflt5090[,1]                      #year 1950, 1960, ... 1990
ymnwf5090 <- nwflt5090$qx                           #annual death probability
ymnwf50 <- ymnwf5090[1:100]

xmnwf5060 <- xmnwf5090[1:202,]
ymnwf5060 <- ymnwf5090[1:202]

#Black information not available before 1970 - use non-white files back to 1950, project before that
#Ratio non-white to all females 1950, use ratio to project non-white mortality back to 1900
ynw2af50 <- ymnwf50/ymaf50
ymnwf40 <- ynw2af50 * ymaf40
ymnwf30 <- ynw2af50 * ymaf30
ymnwf20 <- ynw2af50 * ymaf20
ymnwf10 <- ynw2af50 * ymaf10
ymnwf00 <- ynw2af50 * ymaf00
xmnwf40 <- xmaf40 
xmnwf30 <- xmaf30 
xmnwf20 <- xmaf20 
xmnwf10 <- xmaf10 
xmnwf00 <- xmaf00 

#Black females life tables 1970-1990
xmbf7090 <- matrix(NA,dim(bflt7090)[1],2)
xmbf7090[,1] <- bflt7090[,2]                      #age
xmbf7090[,2] <- bflt7090[,1]                      #year 1950, 1960, ... 1990
ymbf7090 <- bflt7090$qx                           #annual death probability
#Black females life tables 2000
xmbf2000 <- matrix(NA,dim(bflt2000)[1],2)
xmbf2000[,1] <- bflt2000[,1]                      #age
xmbf2000[,2] <- rep(2000,dim(bflt2000)[1])                      #age
ymbf2000 <- bflt2000$qx                           #annual death probability
#Black females life tables 2010
xmbf2010 <- matrix(NA,dim(bflt2010)[1],2)
xmbf2010[,1] <- bflt2010[,1]                      #age
xmbf2010[,2] <- rep(2010,dim(bflt2010)[1])                      #age
ymbf2010 <- bflt2010$qx                           #annual death probability

#Ratio black to all females 2010, use ratio to project black mortality to 2100
yb2af2010 <- ymbf2010/ymaf2010
ymbf2020 <- yb2af2010 * ymaf2020
ymbf2030 <- yb2af2010 * ymaf2030
ymbf2040 <- yb2af2010 * ymaf2040
ymbf2050 <- yb2af2010 * ymaf2050
ymbf2060 <- yb2af2010 * ymaf2060
ymbf2070 <- yb2af2010 * ymaf2070
ymbf2080 <- yb2af2010 * ymaf2080
ymbf2090 <- yb2af2010 * ymaf2090
ymbf2100 <- yb2af2010 * ymaf2100
xmbf2020 <-  xmaf2020
xmbf2030 <-  xmaf2030
xmbf2040 <-  xmaf2040
xmbf2050 <-  xmaf2050
xmbf2060 <-  xmaf2060
xmbf2070 <-  xmaf2070
xmbf2080 <-  xmaf2080
xmbf2090 <-  xmaf2090
xmbf2100 <-  xmaf2100

#Black females life tables using thin plate splines to smooth data
xmbf <-rbind( xmnwf00, xmnwf10, xmnwf20, xmnwf30, xmnwf40,
xmnwf5060,xmbf7090,xmbf2000,xmbf2010,xmbf2020,xmbf2030,
xmbf2040,xmbf2050,xmbf2060,xmbf2070,
xmbf2080,xmbf2090,xmbf2100)

ymbf <- c( ymnwf00, ymnwf10, ymnwf20, ymnwf30, ymnwf40,
ymnwf5060,ymbf7090,ymbf2000,ymbf2010,ymbf2020,ymbf2030,
ymbf2040,ymbf2050,ymbf2060,ymbf2070,
ymbf2080,ymbf2090,ymbf2100)

fitltbf<-Tps(xmbf,ymbf)
#grid.list<- list( x= 1:100, y=1900:2100)
grid.list<- list( x= 12:100, y=1900:2100)
xg<- make.surface.grid(grid.list)
#ltbf <-  matrix(predict(fitltbf,xg),100,201)
ltbf <-  matrix(predict(fitltbf,xg),89,201)
cnlt <-as.character(c(1900:2100))
rnlt <-as.character(c(12:100))
colnames(ltbf) <- cnlt
rownames(ltbf) <- rnlt
save(ltbf,file = "ltbf.RData")


####################
### Use data from: Prospective Studies Collaboration, Body-mass index and cause-specific mortality 
#   in 900,000 adults: collabortive analyses of 57 prospective studies. Lancet 2009; 373:1083-96
#   Supplementary webappendix, Webfigure 1. a) males, and b) females.
#Males
xmhaz <- matrix(NA,90,2)
xmhazbmi <- c(16.25,18.75,21.25,23.75,26.25,28.75,31.25,33.75,36.25)
xmhazage <- c(47,64.5,74.5,84.5)
xmhaz5 <- rep(5,9)  #assume male annual (floating) morality hazard by BMI ~ same for age 5 - 59
xmhaz15 <- rep(15,9)
xmhaz25 <- rep(25,9)
xmhaz35 <- rep(35,9)
xmhaz45 <- rep(45,9)
xmhaz55 <- rep(55,9)
xmhaz65 <- rep(xmhazage[2],9)
xmhaz75 <- rep(xmhazage[3],9)
xmhaz85 <- rep(xmhazage[4],9)
xmhaz95 <- rep(95,9) #assume male annual (floating) morality hazard by BMI ~ same for age 90 - 100 
xmhaz[,1] <- c( xmhaz5, xmhaz15, xmhaz25, xmhaz35, xmhaz45, xmhaz55,
xmhaz65,xmhaz75,xmhaz85,xmhaz95)
xmhaz[,2] <- rep(xmhazbmi,10)
ymhaz45 <- c(12.3, 7.2, 5.8, 5.4, 5.8, 6.4, 8.3, 9.2,12.0)
ymhaz65 <- c(46.2,33.9,28.8,25.3,26.5,29.8,36.5,42.7,48.4)
ymhaz75 <- c(110,80.0,70.0,65.6,69.6,76.7,85.8,91.1,114.4)
ymhaz85 <- c(257,186.6,172.1,176.9,180.3,184.2,240.5,245.5,239.6)

ymhaz <- c( rep(ymhaz45,6), ymhaz65,ymhaz75,rep(ymhaz85,2))
fitmbmihaz<-Tps(xmhaz,ymhaz)
bmirange=12:50
grid.list<- list( x= 1:100, y=bmirange)
xgbmi<- make.surface.grid(grid.list)
mhazbmi <-  matrix(predict(fitmbmihaz,xgbmi),100,39)
fitwmbmihaz=fitmbmihaz    #assume white and black males follow the same relative mortality risk 
fitbmbmihaz=fitmbmihaz

#Females
xfhaz <- matrix(NA,90,2)
xfhazbmi <- c(16.25,18.75,21.25,23.75,26.25,28.75,31.25,33.75,36.25)
xfhazage <- c(47,64.5,74.5,84.5)
xfhaz5 <- rep(5,9)  #assume male annual (floating) morality hazard by BMI ~ same for age 5 - 59
xfhaz15 <- rep(15,9)
xfhaz25 <- rep(25,9)
xfhaz35 <- rep(35,9)
xfhaz45 <- rep(45,9)
xfhaz55 <- rep(55,9)
xfhaz65 <- rep(xfhazage[2],9)
xfhaz75 <- rep(xfhazage[3],9)
xfhaz85 <- rep(xfhazage[4],9)
xfhaz95 <- rep(95,9) #assume male annual (floating) morality hazard by BMI ~ same for age 90 - 99
xfhaz[,1] <- c( xfhaz5, xfhaz15, xfhaz25, xfhaz35, xfhaz45, xfhaz55,
xfhaz65,xfhaz75,xfhaz85,xfhaz95)
xfhaz[,2] <- rep(xfhazbmi,10)
yfhaz45 <- c(6.8, 3.4, 3.0, 3.0, 3.0, 3.4, 3.6, 5.1,5.7)
yfhaz65 <- c(22.0,16.5,14.3,12.3,13.9,14.6,16.9,21.9,26.4)
yfhaz75 <- c(55.3,40.4,38.5,38.7,37.2,45.5,50.3,53.4,68.6)
yfhaz85 <- c(148.8,131.8,127.5,116.5,121.7,135.0,140.7,135.2,175.7)

yfhaz <- c( rep(yfhaz45,6), yfhaz65,yfhaz75,rep(yfhaz85,2))
fitfbmihaz<-Tps(xfhaz,yfhaz)
fitwfbmihaz=fitfbmihaz    #assume white and black males follow the same relative mortality risk 
fitbfbmihaz=fitfbmihaz
bmirange=12:50
grid.list<- list( x= 1:100, y=bmirange)
xgbmi<- make.surface.grid(grid.list)
fhazbmi <-  matrix(predict(fitwfbmihaz,xgbmi),100,39)


uspop2014 <- read.csv('./USPopulationData/USPop2014.csv',header=TRUE)
uswmpop12_84 =uspop2014$WM2014pop[12:84]
uswfpop12_84 =uspop2014$WF2014pop[12:84]
usbmpop12_84 =uspop2014$BM2014pop[12:84]
usbfpop12_84 =uspop2014$BF2014pop[12:84]

###############################
#BMI fits by race, sex, quintile saved as tables (part 1) for use in BMI history generator 
#load("bmiwm.RData")
#load("bmiwf.RData")
#load("bmibm.RData")
#load("bmibf.RData")
load("fitwmbmi.RData")
load("fitwfbmi.RData")
load("fitbmbmi.RData")
load("fitbfbmi.RData")


##########################################################
cnlt <-as.character(c(1900:2100))    #colnames
rnlt <-as.character(c(12:100))       #rownames

#White males
#life tables, pop, and fractions projected into the future from long data resampled to fit BMI dist
ixwm <-  matrix(0,89,201); colnames(ixwm) <- cnlt;rownames(ixwm) <- rnlt   
cltwm <-  matrix(0,89,201); colnames(cltwm) <- cnlt;rownames(cltwm) <- rnlt   
ltwm_obese <-  matrix(0,89,201); colnames(ltwm_obese) <- cnlt;rownames(ltwm_obese) <- rnlt
frwm_obese <-  matrix(0,89,201); colnames(frwm_obese) <- cnlt;rownames(frwm_obese) <- rnlt
ltwm_nonob <-  matrix(0,89,201); colnames(ltwm_nonob) <- cnlt;rownames(ltwm_nonob) <- rnlt
frwm_nonob <-  matrix(0,89,201); colnames(frwm_nonob) <- cnlt;rownames(frwm_nonob) <- rnlt
ltwm_ovwgt <-  matrix(0,89,201); colnames(ltwm_ovwgt) <- cnlt;rownames(ltwm_ovwgt) <- rnlt
frwm_ovwgt <-  matrix(0,89,201); colnames(frwm_ovwgt) <- cnlt;rownames(frwm_ovwgt) <- rnlt
ltwm_nmwgt <-  matrix(0,89,201); colnames(ltwm_nmwgt) <- cnlt;rownames(ltwm_nmwgt) <- rnlt
frwm_nmwgt <-  matrix(0,89,201); colnames(frwm_nmwgt) <- cnlt;rownames(frwm_nmwgt) <- rnlt
#Counterfactual pop and fracs assuming constant obese, non-obse frac continue in future as in 2015
cixwm <-  matrix(0,89,201); colnames(cixwm) <- cnlt;rownames(cixwm) <- rnlt
cvfracob<- vector(mode="numeric", length=89)
cvfracnob<- vector(mode="numeric", length=89)
crr<- vector(mode="numeric", length=89)
crr=1
wmprojlytot=0
wmcfaclytot=0
wmcfacyears=0
cumprobl = (0:1000)/1000
for (i in 1:89) {                          #ages 12-100
 age=i+11
 for (j in 1:200) {                        #years 1900-2100
  yr <- 1899 +j
  byr=yr-age #byrk=1 for 84 year old in 2014; 73 for 12 yr old
  byrk=byr-1929 #byrk=1 for 84 year old in 2014; 73 for 12 yr old
  zbmip <- list( x= age, y=yr, z=cumprobl)  #quintile 1 median
  xbmig<- make.surface.grid(zbmip)
  fbmip<- predict( fitwmbmi, xbmig)
  zhazp <- list( x= age, z=fbmip)  #quintile 1 median
  xhazg<- make.surface.grid(zhazp)
  fhazbmi<- predict(fitwmbmihaz,xhazg)
  nhazbmi<- fhazbmi/sum(fhazbmi)
  fracob <- length(fbmip[fbmip>=30])/length(fbmip)
  hazob <- sum(nhazbmi[fbmip>=30])/fracob
  ltwm_obese[i,j] <- ltwm[i,j] * hazob
  frwm_obese[i,j] <- fracob
  nonob <- fbmip[fbmip<30]
  fracnob <- length(nonob)/length(fbmip)
  haznobi <- nhazbmi[fbmip<30]
  haznob  <- sum(haznobi)/fracnob
  ltwm_nonob[i,j] <- ltwm[i,j] * haznob
  frwm_nonob[i,j] <- fracnob
  fracow <- length(nonob[nonob>=25])/length(fbmip)
  hazow <- sum(haznobi[nonob>=25])/fracow
  ltwm_ovwgt[i,j] <- ltwm[i,j] * hazow
  frwm_ovwgt[i,j] <- fracow
  fracnw <- length(nonob[nonob<25])/length(fbmip)
  haznw <- sum(haznobi[nonob<25])/fracnw
  ltwm_nmwgt[i,j] <- ltwm[i,j] * haznw
  frwm_nmwgt[i,j] <- fracnw


  if(yr <= 2014) {  #counterfactual vectors by age of BMI fractions assumed to remain as in 2015
   cvfracob[i]=fracob 
   cvfracnob[i]=fracnob 
   crr[i]=1 
  }
  if(yr == 2014){
   ixwm[1:73,j]=uswmpop12_84
   cixwm[1:73,j]=uswmpop12_84
   cltwm[1:73,j]=ltwm[i,j]
  }
  if(yr > 2014){
   crr[i]=cvfracob[i]*hazob + cvfracnob[i]*haznob 
   if (i == 1) {
     ixwm[i,j]=ixwm[i,j-1]*(1-ltwm[i,j])
     cixwm[i,j]=cixwm[i,j-1]*(1-ltwm[i,j]*crr[i])
    }
   if (i > 1) {
     ixwm[i,j]=ixwm[i-1,j-1]*(1-ltwm[i,j])
     cixwm[i,j]=cixwm[i-1,j-1]*(1-ltwm[i,j]*crr[i])
   }
  }
  print(c(i,j,byr,age,yr,crr[i],ixwm[i,j],cixwm[i,j]))
 }
 wmprojlytot=wmprojlytot+ixwm[i,j]
 wmcfaclytot=wmcfaclytot+cixwm[i,j]
 wmcfacyears=wmcfacyears+1
 print(c(i,wmprojlytot,wmcfaclytot,wmcfacyears))
}
write.csv(ltwm,file='lftb_wm.csv')
write.csv(ixwm,file='pop12_wm.csv')
write.csv(cixwm,file='cfac_pop12_wm.csv')
write.csv(ltwm_obese,file='lftb_wm_obese.csv')
write.csv(frwm_obese,file='frac_wm_obese.csv')
write.csv(ltwm_nonob,file='lftb_wm_nonobese.csv')
write.csv(frwm_nonob,file='frac_wm_nonobese.csv')
write.csv(ltwm_ovwgt,file='lftb_wm_overwght.csv')
write.csv(frwm_ovwgt,file='frac_wm_overwght.csv')
write.csv(ltwm_nmwgt,file='lftb_wm_normwght.csv')
write.csv(frwm_nmwgt,file='frac_wm_normwght.csv')

print(wmprojlytot)
print(wmcfaclytot)
print(wmcfacyears)

wmbcly<- vector(mode="numeric", length=88)
cwmbcly<- vector(mode="numeric", length=88)
wmbcly=0
cwmbcly=0
wmbcly[1:89]=ixwm[,115]   #age 12:100 in 2014
cwmbcly[1:89]=cixwm[,115]
for (i in 2:87) {
 lastage=90-i
 nextyr=114+i
 print(c(i,nextyr))
 
 wmbcly[1:lastage]=wmbcly[1:lastage]+ixwm[i:89,nextyr]
 cwmbcly[1:lastage]=cwmbcly[1:lastage]+cixwm[i:89,nextyr]
}
write.csv(wmbcly,file='wmbcly.csv')
write.csv(cwmbcly,file='cwmbcly.csv')

> sum(wmbcly)
[1] 4129986658
> sum(cwmbcly)
[1] 4052676646
> sum(wmbcly-cwmbcly)
[1] 77310012
> sum(wmbcly-cwmbcly)/sum(wmbcly)
[1] 0.01871919


 [1] 3577184.632 3657893.372 3713178.797 3654170.569 3632862.795 3628071.529
 [7] 3656322.373 3708787.817 3705858.854 3528030.229 3392385.252 3224764.829
[13] 2998116.410 2680761.663 2447650.441 2238127.350 2081945.760 1937972.530
[19] 1723086.152 1613525.968 1487912.545 1361873.328 1270820.576 1077762.559
[25]  970360.270  869086.880  775398.342  725220.164  646860.203  591714.112
[31]  577100.603  554212.056  520326.559  446285.550  399348.360  374314.704
[37]  339545.063  332523.903  307117.214  279419.055  259874.809  236639.887
[43]  220005.405  204931.557  192163.484  180338.704  167055.116  151414.374
[49]  136689.096  126432.673  108530.696   97917.671   90546.376   75778.106
[55]   69147.729   68593.196   41037.242   35421.704   31120.468   25751.774
[61]   18731.139   14526.693   11983.434    8280.479    6445.378    5057.629
[67]    4244.418    3559.207    2786.602    2330.990    1898.107    1609.199
[73]    1269.624       0.000       0.000       0.000       0.000       0.000
[79]       0.000       0.000       0.000       0.000       0.000       0.000
[85]       0.000       0.000       0.000       0.000       0.000







#White females
#life tables, pop, and fractions projected into the future from long data resampled to fit BMI dist
ixwf <-  matrix(0,89,201); colnames(ixwf) <- cnlt;rownames(ixwf) <- rnlt   
cltwf <-  matrix(0,89,201); colnames(cltwf) <- cnlt;rownames(cltwf) <- rnlt   
ltwf_obese <-  matrix(0,89,201); colnames(ltwf_obese) <- cnlt;rownames(ltwf_obese) <- rnlt
frwf_obese <-  matrix(0,89,201); colnames(frwf_obese) <- cnlt;rownames(frwf_obese) <- rnlt
ltwf_nonob <-  matrix(0,89,201); colnames(ltwf_nonob) <- cnlt;rownames(ltwf_nonob) <- rnlt
frwf_nonob <-  matrix(0,89,201); colnames(frwf_nonob) <- cnlt;rownames(frwf_nonob) <- rnlt
ltwf_ovwgt <-  matrix(0,89,201); colnames(ltwf_ovwgt) <- cnlt;rownames(ltwf_ovwgt) <- rnlt
frwf_ovwgt <-  matrix(0,89,201); colnames(frwf_ovwgt) <- cnlt;rownames(frwf_ovwgt) <- rnlt
ltwf_nmwgt <-  matrix(0,89,201); colnames(ltwf_nmwgt) <- cnlt;rownames(ltwf_nmwgt) <- rnlt
frwf_nmwgt <-  matrix(0,89,201); colnames(frwf_nmwgt) <- cnlt;rownames(frwf_nmwgt) <- rnlt
#Counterfactual pop and fracs assuming constant obese, non-obse frac continue in future as in 2015
cixwf <-  matrix(0,89,201); colnames(cixwf) <- cnlt;rownames(cixwf) <- rnlt
cvfracob<- vector(mode="numeric", length=89)
cvfracnob<- vector(mode="numeric", length=89)
crr<- vector(mode="numeric", length=89)
crr=1
wfprojlytot=0
wfcfaclytot=0
wfcfacyears=0
cumprobl = (0:1000)/1000
for (i in 1:89) {                          #ages 12-100
 age=i+11
 for (j in 1:200) {                        #years 1900-2100
  yr <- 1899 +j
  byr=yr-age #byrk=1 for 84 year old in 2014; 73 for 12 yr old
  byrk=byr-1929 #byrk=1 for 84 year old in 2014; 73 for 12 yr old
  zbmip <- list( x= age, y=yr, z=cumprobl)  #quintile 1 median
  xbmig<- make.surface.grid(zbmip)
  fbmip<- predict( fitwfbmi, xbmig)
  zhazp <- list( x= age, z=fbmip)  #quintile 1 median
  xhazg<- make.surface.grid(zhazp)
  fhazbmi<- predict(fitwfbmihaz,xhazg)
  nhazbmi<- fhazbmi/sum(fhazbmi)
  fracob <- length(fbmip[fbmip>=30])/length(fbmip)
  hazob <- sum(nhazbmi[fbmip>=30])/fracob
  ltwf_obese[i,j] <- ltwf[i,j] * hazob
  frwf_obese[i,j] <- fracob
  nonob <- fbmip[fbmip<30]
  fracnob <- length(nonob)/length(fbmip)
  haznobi <- nhazbmi[fbmip<30]
  haznob  <- sum(haznobi)/fracnob
  ltwf_nonob[i,j] <- ltwf[i,j] * haznob
  frwf_nonob[i,j] <- fracnob
  fracow <- length(nonob[nonob>=25])/length(fbmip)
  hazow <- sum(haznobi[nonob>=25])/fracow
  ltwf_ovwgt[i,j] <- ltwf[i,j] * hazow
  frwf_ovwgt[i,j] <- fracow
  fracnw <- length(nonob[nonob<25])/length(fbmip)
  haznw <- sum(haznobi[nonob<25])/fracnw
  ltwf_nmwgt[i,j] <- ltwf[i,j] * haznw
  frwf_nmwgt[i,j] <- fracnw


  if(yr <= 2014) {  #counterfactual vectors by age of BMI fractions assumed to remain as in 2015
   cvfracob[i]=fracob 
   cvfracnob[i]=fracnob 
   crr[i]=1 
  }
  if(yr == 2014){
   ixwf[1:73,j]=uswfpop12_84
   cixwf[1:73,j]=uswfpop12_84
   cltwf[1:73,j]=ltwf[i,j]
  }
  if(yr > 2014){
   crr[i]=cvfracob[i]*hazob + cvfracnob[i]*haznob 
   if (i == 1) {
     ixwf[i,j]=ixwf[i,j-1]*(1-ltwf[i,j])
     cixwf[i,j]=cixwf[i,j-1]*(1-ltwf[i,j]*crr[i])
    }
   if (i > 1) {
     ixwf[i,j]=ixwf[i-1,j-1]*(1-ltwf[i,j])
     cixwf[i,j]=cixwf[i-1,j-1]*(1-ltwf[i,j]*crr[i])
   }
  }
  print(c(i,j,byr,age,yr,crr[i],ixwf[i,j],cixwf[i,j]))
 }
 wfprojlytot=wfprojlytot+ixwf[i,j]
 wfcfaclytot=wfcfaclytot+cixwf[i,j]
 wfcfacyears=wfcfacyears+1
 print(c(i,wfprojlytot,wfcfaclytot,wfcfacyears))
}
write.csv(ltwf,file='lftb_wf.csv')
write.csv(ixwf,file='pop12_wf.csv')
write.csv(cixwf,file='cfac_pop12_wf.csv')
write.csv(ltwf_obese,file='lftb_wf_obese.csv')
write.csv(frwf_obese,file='frac_wf_obese.csv')
write.csv(ltwf_nonob,file='lftb_wf_nonobese.csv')
write.csv(frwf_nonob,file='frac_wf_nonobese.csv')
write.csv(ltwf_ovwgt,file='lftb_wf_overwght.csv')
write.csv(frwf_ovwgt,file='frac_wf_overwght.csv')
write.csv(ltwf_nmwgt,file='lftb_wf_normwght.csv')
write.csv(frwf_nmwgt,file='frac_wf_normwght.csv')

print(wfprojlytot)
print(wfcfaclytot)
print(wfcfacyears)

wfbcly<- vector(mode="numeric", length=88)
cwfbcly<- vector(mode="numeric", length=88)
wfbcly=0
cwfbcly=0
wfbcly[1:89]=ixwf[,115]   #age 12:100 in 2014
cwfbcly[1:89]=cixwf[,115]
for (i in 2:87) {
 lastage=90-i
 nextyr=114+i
 print(c(i,nextyr))
 
 wfbcly[1:lastage]=wfbcly[1:lastage]+ixwf[i:89,nextyr]
 cwfbcly[1:lastage]=cwfbcly[1:lastage]+cixwf[i:89,nextyr]
}
write.csv(wfbcly,file='wfbcly.csv')
write.csv(cwfbcly,file='cwfbcly.csv')

sum(wfbcly)

sum(cwfbcly)

sum(wfbcly-cwfbcly)

sum(wfbcly-cwfbcly)/sum(wfbcly)












#Black males
#life tables, pop, and fractions projected into the future from long data resampled to fit BMI dist
ixbm <-  matrix(0,89,201); colnames(ixbm) <- cnlt;rownames(ixbm) <- rnlt   
cltbm <-  matrix(0,89,201); colnames(cltbm) <- cnlt;rownames(cltbm) <- rnlt   
ltbm_obese <-  matrix(0,89,201); colnames(ltbm_obese) <- cnlt;rownames(ltbm_obese) <- rnlt
frbm_obese <-  matrix(0,89,201); colnames(frbm_obese) <- cnlt;rownames(frbm_obese) <- rnlt
ltbm_nonob <-  matrix(0,89,201); colnames(ltbm_nonob) <- cnlt;rownames(ltbm_nonob) <- rnlt
frbm_nonob <-  matrix(0,89,201); colnames(frbm_nonob) <- cnlt;rownames(frbm_nonob) <- rnlt
ltbm_ovwgt <-  matrix(0,89,201); colnames(ltbm_ovwgt) <- cnlt;rownames(ltbm_ovwgt) <- rnlt
frbm_ovwgt <-  matrix(0,89,201); colnames(frbm_ovwgt) <- cnlt;rownames(frbm_ovwgt) <- rnlt
ltbm_nmwgt <-  matrix(0,89,201); colnames(ltbm_nmwgt) <- cnlt;rownames(ltbm_nmwgt) <- rnlt
frbm_nmwgt <-  matrix(0,89,201); colnames(frbm_nmwgt) <- cnlt;rownames(frbm_nmwgt) <- rnlt
#Counterfactual pop and fracs assuming constant obese, non-obse frac continue in future as in 2015
cixbm <-  matrix(0,89,201); colnames(cixbm) <- cnlt;rownames(cixbm) <- rnlt
cvfracob<- vector(mode="numeric", length=89)
cvfracnob<- vector(mode="numeric", length=89)
crr<- vector(mode="numeric", length=89)
crr=1
bmprojlytot=0
bmcfaclytot=0
bmcfacyears=0
cumprobl = (0:1000)/1000
for (i in 1:89) {                          #ages 12-100
 age=i+11
 for (j in 1:200) {                        #years 1900-2100
  yr <- 1899 +j
  byr=yr-age #byrk=1 for 84 year old in 2014; 73 for 12 yr old
  byrk=byr-1929 #byrk=1 for 84 year old in 2014; 73 for 12 yr old
  zbmip <- list( x= age, y=yr, z=cumprobl)  #quintile 1 median
  xbmig<- make.surface.grid(zbmip)
  fbmip<- predict( fitbmbmi, xbmig)
  zhazp <- list( x= age, z=fbmip)  #quintile 1 median
  xhazg<- make.surface.grid(zhazp)
  fhazbmi<- predict(fitbmbmihaz,xhazg)
  nhazbmi<- fhazbmi/sum(fhazbmi)
  fracob <- length(fbmip[fbmip>=30])/length(fbmip)
  hazob <- sum(nhazbmi[fbmip>=30])/fracob
  ltbm_obese[i,j] <- ltbm[i,j] * hazob
  frbm_obese[i,j] <- fracob
  nonob <- fbmip[fbmip<30]
  fracnob <- length(nonob)/length(fbmip)
  haznobi <- nhazbmi[fbmip<30]
  haznob  <- sum(haznobi)/fracnob
  ltbm_nonob[i,j] <- ltbm[i,j] * haznob
  frbm_nonob[i,j] <- fracnob
  fracow <- length(nonob[nonob>=25])/length(fbmip)
  hazow <- sum(haznobi[nonob>=25])/fracow
  ltbm_ovwgt[i,j] <- ltbm[i,j] * hazow
  frbm_ovwgt[i,j] <- fracow
  fracnw <- length(nonob[nonob<25])/length(fbmip)
  haznw <- sum(haznobi[nonob<25])/fracnw
  ltbm_nmwgt[i,j] <- ltbm[i,j] * haznw
  frbm_nmwgt[i,j] <- fracnw


  if(yr <= 2014) {  #counterfactual vectors by age of BMI fractions assumed to remain as in 2015
   cvfracob[i]=fracob 
   cvfracnob[i]=fracnob 
   crr[i]=1 
  }
  if(yr == 2014){
   ixbm[1:73,j]=usbmpop12_84
   cixbm[1:73,j]=usbmpop12_84
   cltbm[1:73,j]=ltbm[i,j]
  }
  if(yr > 2014){
   crr[i]=cvfracob[i]*hazob + cvfracnob[i]*haznob 
   if (i == 1) {
     ixbm[i,j]=ixbm[i,j-1]*(1-ltbm[i,j])
     cixbm[i,j]=cixbm[i,j-1]*(1-ltbm[i,j]*crr[i])
    }
   if (i > 1) {
     ixbm[i,j]=ixbm[i-1,j-1]*(1-ltbm[i,j])
     cixbm[i,j]=cixbm[i-1,j-1]*(1-ltbm[i,j]*crr[i])
   }
  }
  print(c(i,j,byr,age,yr,crr[i],ixbm[i,j],cixbm[i,j]))
 }
 bmprojlytot=bmprojlytot+ixbm[i,j]
 bmcfaclytot=bmcfaclytot+cixbm[i,j]
 bmcfacyears=bmcfacyears+1
 print(c(i,bmprojlytot,bmcfaclytot,bmcfacyears))
}
write.csv(ltbm,file='lftb_bm.csv')
write.csv(ixbm,file='pop12_bm.csv')
write.csv(cixbm,file='cfac_pop12_bm.csv')
write.csv(ltbm_obese,file='lftb_bm_obese.csv')
write.csv(frbm_obese,file='frac_bm_obese.csv')
write.csv(ltbm_nonob,file='lftb_bm_nonobese.csv')
write.csv(frbm_nonob,file='frac_bm_nonobese.csv')
write.csv(ltbm_ovwgt,file='lftb_bm_overwght.csv')
write.csv(frbm_ovwgt,file='frac_bm_overwght.csv')
write.csv(ltbm_nmwgt,file='lftb_bm_normwght.csv')
write.csv(frbm_nmwgt,file='frac_bm_normwght.csv')

print(bmprojlytot)
print(bmcfaclytot)
print(bmcfacyears)

bmbcly<- vector(mode="numeric", length=88)
cbmbcly<- vector(mode="numeric", length=88)
bmbcly=0
cbmbcly=0
bmbcly[1:89]=ixbm[,115]   #age 12:100 in 2014
cbmbcly[1:89]=cixbm[,115]
for (i in 2:87) {
 lastage=90-i
 nextyr=114+i
 print(c(i,nextyr))
 
 bmbcly[1:lastage]=bmbcly[1:lastage]+ixbm[i:89,nextyr]
 cbmbcly[1:lastage]=cbmbcly[1:lastage]+cixbm[i:89,nextyr]
}
write.csv(bmbcly,file='bmbcly.csv')
write.csv(cbmbcly,file='cbmbcly.csv')

sum(bmbcly)
sum(cbmbcly)
sum(bmbcly-cbmbcly)
sum(bmbcly-cbmbcly)/sum(bmbcly)










#Black females
#life tables, pop, and fractions projected into the future from long data resampled to fit BMI dist
#[1] 89
ixbf <-  matrix(0,89,201); colnames(ixbf) <- cnlt;rownames(ixbf) <- rnlt   
cltbf <-  matrix(0,89,201); colnames(cltbf) <- cnlt;rownames(cltbf) <- rnlt   
ltbf_obese <-  matrix(0,89,201); colnames(ltbf_obese) <- cnlt;rownames(ltbf_obese) <- rnlt
frbf_obese <-  matrix(0,89,201); colnames(frbf_obese) <- cnlt;rownames(frbf_obese) <- rnlt
ltbf_nonob <-  matrix(0,89,201); colnames(ltbf_nonob) <- cnlt;rownames(ltbf_nonob) <- rnlt
frbf_nonob <-  matrix(0,89,201); colnames(frbf_nonob) <- cnlt;rownames(frbf_nonob) <- rnlt
ltbf_ovwgt <-  matrix(0,89,201); colnames(ltbf_ovwgt) <- cnlt;rownames(ltbf_ovwgt) <- rnlt
frbf_ovwgt <-  matrix(0,89,201); colnames(frbf_ovwgt) <- cnlt;rownames(frbf_ovwgt) <- rnlt
ltbf_nmwgt <-  matrix(0,89,201); colnames(ltbf_nmwgt) <- cnlt;rownames(ltbf_nmwgt) <- rnlt
frbf_nmwgt <-  matrix(0,89,201); colnames(frbf_nmwgt) <- cnlt;rownames(frbf_nmwgt) <- rnlt
#Counterfactual pop and fracs assuming constant obese, non-obse frac continue in future as in 2015
cixbf <-  matrix(0,89,201); colnames(cixbf) <- cnlt;rownames(cixbf) <- rnlt
cvfracob<- vector(mode="numeric", length=89)
cvfracnob<- vector(mode="numeric", length=89)
crr<- vector(mode="numeric", length=89)
crr=1
bfprojlytot=0
bfcfaclytot=0
bfcfacyears=0
cumprobl = (0:1000)/1000
for (i in 1:89) {                          #ages 12-100
 age=i+11
 for (j in 1:200) {                        #years 1900-2100
  yr <- 1899 +j
  byr=yr-age #byrk=1 for 84 year old in 2014; 73 for 12 yr old
  byrk=byr-1929 #byrk=1 for 84 year old in 2014; 73 for 12 yr old
  zbmip <- list( x= age, y=yr, z=cumprobl)  #quintile 1 median
  xbmig<- make.surface.grid(zbmip)
  fbmip<- predict( fitbfbmi, xbmig)
  zhazp <- list( x= age, z=fbmip)  #quintile 1 median
  xhazg<- make.surface.grid(zhazp)
  fhazbmi<- predict(fitbfbmihaz,xhazg)
  nhazbmi<- fhazbmi/sum(fhazbmi)
  fracob <- length(fbmip[fbmip>=30])/length(fbmip)
  hazob <- sum(nhazbmi[fbmip>=30])/fracob
  ltbf_obese[i,j] <- ltbf[i,j] * hazob
  frbf_obese[i,j] <- fracob
  nonob <- fbmip[fbmip<30]
  fracnob <- length(nonob)/length(fbmip)
  haznobi <- nhazbmi[fbmip<30]
  haznob  <- sum(haznobi)/fracnob
  ltbf_nonob[i,j] <- ltbf[i,j] * haznob
  frbf_nonob[i,j] <- fracnob
  fracow <- length(nonob[nonob>=25])/length(fbmip)
  hazow <- sum(haznobi[nonob>=25])/fracow
  ltbf_ovwgt[i,j] <- ltbf[i,j] * hazow
  frbf_ovwgt[i,j] <- fracow
  fracnw <- length(nonob[nonob<25])/length(fbmip)
  haznw <- sum(haznobi[nonob<25])/fracnw
  ltbf_nmwgt[i,j] <- ltbf[i,j] * haznw
  frbf_nmwgt[i,j] <- fracnw


  if(yr <= 2014) {  #counterfactual vectors by age of BMI fractions assumed to remain as in 2015
   cvfracob[i]=fracob 
   cvfracnob[i]=fracnob 
   crr[i]=1 
  }
  if(yr == 2014){
   ixbf[1:73,j]=usbfpop12_84
   cixbf[1:73,j]=usbfpop12_84
   cltbf[1:73,j]=ltbf[i,j]
  }
  if(yr > 2014){
   crr[i]=cvfracob[i]*hazob + cvfracnob[i]*haznob 
   if (i == 1) {
     ixbf[i,j]=ixbf[i,j-1]*(1-ltbf[i,j])
     cixbf[i,j]=cixbf[i,j-1]*(1-ltbf[i,j]*crr[i])
    }
   if (i > 1) {
     ixbf[i,j]=ixbf[i-1,j-1]*(1-ltbf[i,j])
     cixbf[i,j]=cixbf[i-1,j-1]*(1-ltbf[i,j]*crr[i])
   }
  }
  print(c(i,j,byr,age,yr,crr[i],ixbf[i,j],cixbf[i,j]))
 }
 bfprojlytot=bfprojlytot+ixbf[i,j]
 bfcfaclytot=bfcfaclytot+cixbf[i,j]
 bfcfacyears=bfcfacyears+1
 print(c(i,bfprojlytot,bfcfaclytot,bfcfacyears))
}
write.csv(ltbf,file='lftb_bf.csv')
write.csv(ixbf,file='pop12_bf.csv')
write.csv(cixbf,file='cfac_pop12_bf.csv')
write.csv(ltbf_obese,file='lftb_bf_obese.csv')
write.csv(frbf_obese,file='frac_bf_obese.csv')
write.csv(ltbf_nonob,file='lftb_bf_nonobese.csv')
write.csv(frbf_nonob,file='frac_bf_nonobese.csv')
write.csv(ltbf_ovwgt,file='lftb_bf_overwght.csv')
write.csv(frbf_ovwgt,file='frac_bf_overwght.csv')
write.csv(ltbf_nmwgt,file='lftb_bf_normwght.csv')
write.csv(frbf_nmwgt,file='frac_bf_normwght.csv')

print(bfprojlytot)
print(bfcfaclytot)
print(bfcfacyears)

bfbcly<- vector(mode="numeric", length=88)
cbfbcly<- vector(mode="numeric", length=88)
bfbcly=0
cbfbcly=0
bfbcly[1:89]=ixbf[,115]   #age 12:100 in 2014
cbfbcly[1:89]=cixbf[,115]
for (i in 2:87) {
 lastage=90-i
 nextyr=114+i
 print(c(i,nextyr))
 
 bfbcly[1:lastage]=bfbcly[1:lastage]+ixbf[i:89,nextyr]
 cbfbcly[1:lastage]=cbfbcly[1:lastage]+cixbf[i:89,nextyr]
}
write.csv(bfbcly,file='bfbcly.csv')
write.csv(cbfbcly,file='cbfbcly.csv')

> sum(bfbcly)
[1] 4129986658
> sum(cbfbcly)
[1] 4052676646
> sum(bfbcly-cbfbcly)
[1] 77310012
> sum(bfbcly-cbfbcly)/sum(bfbcly)
[1] 0.01871919
















################
out.p<- as.surface( xgbmi, fwmbmip)
plot.surface(out.p,zlim=c(6,50),xlab='Age',ylab='Calendar year',main='BMI - white male Q1',cex.main=1.3,cex.lab=1.3)

#for(i in 1: dim(xgwmb1)) {
yprob <- c(0.1,0.3,0.5,0.7,0.9,1.0)
for(i in 1: 2) {
xwmbmi <- c(xgwmb1[i,2],xgwmb2[i,2],xgwmb3[i,2],xgwmb4[i,2],xgwmb5[i,2],xgwmbmax[i,2])
#wmbspf <- splinefun(xwmbmi,yprob)
wmbspfi <- splinefun(yprob,xwmbmi)
wmbspc <- wmbspfi(c(1:1000)/1000)
wmnw <- wmbspc[wmbspc<=25.0]           # normal weight
wmnwfr <- length(wmnw)/1000            #fraction normal weight 
wmow <- wmbspc[wmbspc>=25.0&wmbspc<30.0] # over weight
wmowfr <- length(wmow)/1000            #fraction over weight 
wmob <- wmbspc[wmbspc>=30.0]           # obese
wmobfr <- length(wmob)/1000            #fraction obese
wmnob <- wmbspc[wmbspc<30.0]           #non obese
wmnobfr <- length(wmnob)/1000            #fraction not obese
}

#########################################################

#Preprocess GERD in relation to BMI, fits by race, sex, quintile save tables for use in BMI history generator
nuwm <- array(dim=c(100,201,5))
nuwm[,,1] <- nu1wm 
nuwm[,,2] <- nu2wm 
nuwm[,,3] <- nu3wm 
nuwm[,,4] <- nu4wm 
nuwm[,,5] <- nu5wm 
#save(nuwm,file = "nuwm.RData")
load("nuwm.RData")

#White females
bmiwf <- array(dim=c(100,201,5))
bmiwf[,,1] <-  predict( fitwf1,xg)
bmiwf[,,2] <-  predict( fitwf2,xg)
bmiwf[,,3] <-  predict( fitwf3,xg)
bmiwf[,,4] <-  predict( fitwf4,xg)
bmiwf[,,5] <-  predict( fitwf5,xg)
#save(bmiwf,file = "bmiwf.RData")
load("bmiwf.RData")

bmiqtwf <- matrix(0,100,6)
bmiqtwf[12:100,2] <- wfq12trp$y[1:89]
bmiqtwf[12:100,3] <- wfq23trp$y[1:89]
bmiqtwf[12:100,4] <- wfq34trp$y[1:89]
bmiqtwf[12:100,5] <- wfq45trp$y[1:89]
#save(bmiqtwf,file = "bmiqtwf.RData")
load("bmiqtwf.RData")

#Preprocess GERD in relation to BMI, fits by race, sex, quintile save tables for use in BMI history generator
nuwf <- array(dim=c(100,201,5))
nuwf[,,1] <- nu1wf 
nuwf[,,2] <- nu2wf 
nuwf[,,3] <- nu3wf 
nuwf[,,4] <- nu4wf 
nuwf[,,5] <- nu5wf 
#save(nuwf,file = "nuwf.RData")
load("nuwf.RData")

#Black males
bmibm <- array(dim=c(100,201,5))
bmibm[,,1] <-  predict( fitbm1,xg)
bmibm[,,2] <-  predict( fitbm2,xg)
bmibm[,,3] <-  predict( fitbm3,xg)
bmibm[,,4] <-  predict( fitbm4,xg)
bmibm[,,5] <-  predict( fitbm5,xg)
#save(bmibm,file = "bmibm.RData")
load("bmibm.RData")

bmiqtbm <- matrix(0,100,6)
bmiqtbm[12:100,2] <- bmq12trp$y[1:89]
bmiqtbm[12:100,3] <- bmq23trp$y[1:89]
bmiqtbm[12:100,4] <- bmq34trp$y[1:89]
bmiqtbm[12:100,5] <- bmq45trp$y[1:89]
#save(bmiqtbm,file = "bmiqtbm.RData")
load("bmiqtbm.RData")

#Preprocess GERD in relation to BMI, fits by race, sex, quintile save tables for use in BMI history generator
nubm <- array(dim=c(100,201,5))
nubm[,,1] <- nu1bm 
nubm[,,2] <- nu2bm 
nubm[,,3] <- nu3bm 
nubm[,,4] <- nu4bm 
nubm[,,5] <- nu5bm 
#save(nubm,file = "nubm.RData")
load("nubm.RData")

#Black females
bmibf <- array(dim=c(100,201,5))
bmibf[,,1] <-  predict( fitbf1,xg)
bmibf[,,2] <-  predict( fitbf2,xg)
bmibf[,,3] <-  predict( fitbf3,xg)
bmibf[,,4] <-  predict( fitbf4,xg)
bmibf[,,5] <-  predict( fitbf5,xg)
#save(bmibf,file = "bmibf.RData")
load("bmibf.RData")

bmiqtbf <- matrix(0,100,6)
bmiqtbf[12:100,2] <- bfq12trp$y[1:89]
bmiqtbf[12:100,3] <- bfq23trp$y[1:89]
bmiqtbf[12:100,4] <- bfq34trp$y[1:89]
bmiqtbf[12:100,5] <- bfq45trp$y[1:89]
#save(bmiqtbf,file = "bmiqtbf.RData")
load("bmiqtbf.RData")

#Preprocess GERD in relation to BMI, fits by race, sex, quintile save tables for use in BMI history generator
nubf <- array(dim=c(100,201,5))
nubf[,,1] <- nu1bf 
nubf[,,2] <- nu2bf 
nubf[,,3] <- nu3bf 
nubf[,,4] <- nu4bf 
nubf[,,5] <- nu5bf 
#save(nubf,file = "nubf.RData")
load("nubf.RData")


#Preprocess mortality hazard by BMI quintile and save as tables for use in BMI history generator
#White males
ltwmlist <- predict(fitltwm,xg)
xgwmb1 <- xg
xgwmb1[,2] <- predict( fitwm1,xg)
hbmiwm1 <-    predict(fitmbmihaz,xgwmb1)   
xgwmb2 <- xg
xgwmb2[,2] <- predict( fitwm2,xg)
hbmiwm2 <-    predict(fitmbmihaz,xgwmb2)   
xgwmb3 <- xg
xgwmb3[,2] <- predict( fitwm3,xg)
hbmiwm3 <-    predict(fitmbmihaz,xgwmb3)   
xgwmb4 <- xg
xgwmb4[,2] <- predict( fitwm4,xg)
hbmiwm4 <-    predict(fitmbmihaz,xgwmb4)   
xgwmb5 <- xg
xgwmb5[,2] <- predict( fitwm5,xg)
hbmiwm5 <-    predict(fitmbmihaz,xgwmb5)   
xgwmbmax <- xg
xgwmbmax[,2] <- predict( fitwmmax,xg)              #maximum BMI white males
hbmiwmmax <-    predict(fitmbmihaz,xgwmbmax)   
hbmiwmmean <- ( hbmiwm1+ hbmiwm2+ hbmiwm3+ hbmiwm4+ hbmiwm5)/5
rhbmiwm1 <- hbmiwm1/hbmiwmmean
rhbmiwm2 <- hbmiwm2/hbmiwmmean
rhbmiwm3 <- hbmiwm3/hbmiwmmean
rhbmiwm4 <- hbmiwm4/hbmiwmmean
rhbmiwm5 <- hbmiwm5/hbmiwmmean
hazbmiwm <- array(dim=c(100,201,5)) #mortality hazard by age and BMI for white males
hazbmiwm[,,1] <-  ltwmlist*rhbmiwm1 
hazbmiwm[,,2] <-  ltwmlist*rhbmiwm2 
hazbmiwm[,,3] <-  ltwmlist*rhbmiwm3 
hazbmiwm[,,4] <-  ltwmlist*rhbmiwm4 
hazbmiwm[,,5] <-  ltwmlist*rhbmiwm5 
#save(hazbmiwm,file = "hazbmiwm.RData")

load("hazbmiwm.RData")

ltwflist <- predict(fitltwf,xg)
xgwfb1 <- xg
xgwfb1[,2] <- predict( fitwf1,xg)
hbmiwf1 <-    predict(fitfbmihaz,xgwfb1)   
xgwfb2 <- xg
xgwfb2[,2] <- predict( fitwf2,xg)
hbmiwf2 <-    predict(fitfbmihaz,xgwfb2)   
xgwfb3 <- xg
xgwfb3[,2] <- predict( fitwf3,xg)
hbmiwf3 <-    predict(fitfbmihaz,xgwfb3)   
xgwfb4 <- xg
xgwfb4[,2] <- predict( fitwf4,xg)
hbmiwf4 <-    predict(fitfbmihaz,xgwfb4)   
xgwfb5 <- xg
xgwfb5[,2] <- predict( fitwf5,xg)
hbmiwf5 <-    predict(fitfbmihaz,xgwfb5)   
hbmiwfmean <- ( hbmiwf1+ hbmiwf2+ hbmiwf3+ hbmiwf4+ hbmiwf5)/5
rhbmiwf1 <- hbmiwf1/hbmiwfmean
rhbmiwf2 <- hbmiwf2/hbmiwfmean
rhbmiwf3 <- hbmiwf3/hbmiwfmean
rhbmiwf4 <- hbmiwf4/hbmiwfmean
rhbmiwf5 <- hbmiwf5/hbmiwfmean
hazbmiwf <- array(dim=c(100,201,5)) #mortality hazard by age and BMI for white males
hazbmiwf[,,1] <-  ltwflist*rhbmiwf1 
hazbmiwf[,,2] <-  ltwflist*rhbmiwf2 
hazbmiwf[,,3] <-  ltwflist*rhbmiwf3 
hazbmiwf[,,4] <-  ltwflist*rhbmiwf4 
hazbmiwf[,,5] <-  ltwflist*rhbmiwf5 
save(hazbmiwf,file = "hazbmiwf.RData")
load("hazbmiwf.RData")

#Black males
ltbmlist <- predict(fitltbm,xg)
xgbmb1 <- xg
xgbmb1[,2] <- predict( fitbm1,xg)
hbmibm1 <-    predict(fitmbmihaz,xgbmb1)   
xgbmb2 <- xg
xgbmb2[,2] <- predict( fitbm2,xg)
hbmibm2 <-    predict(fitmbmihaz,xgbmb2)   
xgbmb3 <- xg
xgbmb3[,2] <- predict( fitbm3,xg)
hbmibm3 <-    predict(fitmbmihaz,xgbmb3)   
xgbmb4 <- xg
xgbmb4[,2] <- predict( fitbm4,xg)
hbmibm4 <-    predict(fitmbmihaz,xgbmb4)   
xgbmb5 <- xg
xgbmb5[,2] <- predict( fitbm5,xg)
hbmibm5 <-    predict(fitmbmihaz,xgbmb5)   
hbmibmmean <- ( hbmibm1+ hbmibm2+ hbmibm3+ hbmibm4+ hbmibm5)/5
rhbmibm1 <- hbmibm1/hbmibmmean
rhbmibm2 <- hbmibm2/hbmibmmean
rhbmibm3 <- hbmibm3/hbmibmmean
rhbmibm4 <- hbmibm4/hbmibmmean
rhbmibm5 <- hbmibm5/hbmibmmean
hazbmibm <- array(dim=c(100,201,5)) #mortality hazard by age and BMI for white males
hazbmibm[,,1] <-  ltbmlist*rhbmibm1 
hazbmibm[,,2] <-  ltbmlist*rhbmibm2 
hazbmibm[,,3] <-  ltbmlist*rhbmibm3 
hazbmibm[,,4] <-  ltbmlist*rhbmibm4 
hazbmibm[,,5] <-  ltbmlist*rhbmibm5 
#save(hazbmibm,file = "hazbmibm.RData")
load("hazbmibm.RData")

#Black females
ltbflist <- predict(fitltbf,xg)
xgbfb1 <- xg
xgbfb1[,2] <- predict( fitbf1,xg)
hbmibf1 <-    predict(fitfbmihaz,xgbfb1)   
xgbfb2 <- xg
xgbfb2[,2] <- predict( fitbf2,xg)
hbmibf2 <-    predict(fitfbmihaz,xgbfb2)   
xgbfb3 <- xg
xgbfb3[,2] <- predict( fitbf3,xg)
hbmibf3 <-    predict(fitfbmihaz,xgbfb3)   
xgbfb4 <- xg
xgbfb4[,2] <- predict( fitbf4,xg)
hbmibf4 <-    predict(fitfbmihaz,xgbfb4)   
xgbfb5 <- xg
xgbfb5[,2] <- predict( fitbf5,xg)
hbmibf5 <-    predict(fitfbmihaz,xgbfb5)   
hbmibfmean <- ( hbmibf1+ hbmibf2+ hbmibf3+ hbmibf4+ hbmibf5)/5
rhbmibf1 <- hbmibf1/hbmibfmean
rhbmibf2 <- hbmibf2/hbmibfmean
rhbmibf3 <- hbmibf3/hbmibfmean
rhbmibf4 <- hbmibf4/hbmibfmean
rhbmibf5 <- hbmibf5/hbmibfmean
hazbmibf <- array(dim=c(100,201,5)) #mortality hazard by age and BMI for white males
hazbmibf[,,1] <-  ltbflist*rhbmibf1 
hazbmibf[,,2] <-  ltbflist*rhbmibf2 
hazbmibf[,,3] <-  ltbflist*rhbmibf3 
hazbmibf[,,4] <-  ltbflist*rhbmibf4 
hazbmibf[,,5] <-  ltbflist*rhbmibf5 
#save(hazbmibf,file = "hazbmibf.RData")
load("hazbmibf.RData")

dev.off()
dev.new()
set.panel(2,2)   #First quintile 
out.p<- as.surface( xg, hbmiwm1)
plot.surface(out.p,zlim=c(0,300.),xlab='Age',ylab='Calendar year',main='Mortality hazard - white male Q1',cex.main=1.3,cex.lab=1.3)
out.p<- as.surface( xg, hbmiwf1)
plot.surface(out.p,zlim=c(0,300),xlab='Age',ylab='Calendar year',main='Mortality hazard - white female Q1',cex.main=1.3,cex.lab=1.3)
out.p<- as.surface( xg, hbmibm1)
plot.surface(out.p,zlim=c(0,300),xlab='Age',ylab='Calendar year',main='Mortality hazard - black male Q1',cex.main=1.3,cex.lab=1.3)
out.p<- as.surface( xg, hbmibf1)
plot.surface(out.p,zlim=c(0,300),xlab='Age',ylab='Calendar year',main='Mortality hazard - black female Q1',cex.main=1.3,cex.lab=1.3)
dev.copy2pdf(file="LT_Q1.pdf",width=12,height=8.)

dev.new()
set.panel(2,2)   #Second quintile 
out.p<- as.surface( xg, hbmiwm2)
plot.surface(out.p,zlim=c(0,300.),xlab='Age',ylab='Calendar year',main='Mortality hazard - white male Q2',cex.main=1.3,cex.lab=1.3)
out.p<- as.surface( xg, hbmiwf2)
plot.surface(out.p,zlim=c(0,300),xlab='Age',ylab='Calendar year',main='Mortality hazard - white female Q2',cex.main=1.3,cex.lab=1.3)
out.p<- as.surface( xg, hbmibm2)
plot.surface(out.p,zlim=c(0,300),xlab='Age',ylab='Calendar year',main='Mortality hazard - black male Q2',cex.main=1.3,cex.lab=1.3)
out.p<- as.surface( xg, hbmibf2)
plot.surface(out.p,zlim=c(0,300),xlab='Age',ylab='Calendar year',main='Mortality hazard - black female Q2',cex.main=1.3,cex.lab=1.3)
dev.copy2pdf(file="LT_Q2.pdf",width=12,height=8.)

dev.new()
set.panel(2,2)   #Third quintile 
out.p<- as.surface( xg, hbmiwm3)
plot.surface(out.p,zlim=c(0,300.),xlab='Age',ylab='Calendar year',main='Mortality hazard - white male Q3',cex.main=1.3,cex.lab=1.3)
out.p<- as.surface( xg, hbmiwf3)
plot.surface(out.p,zlim=c(0,300),xlab='Age',ylab='Calendar year',main='Mortality hazard - white female Q3',cex.main=1.3,cex.lab=1.3)
out.p<- as.surface( xg, hbmibm3)
plot.surface(out.p,zlim=c(0,300),xlab='Age',ylab='Calendar year',main='Mortality hazard - black male Q3',cex.main=1.3,cex.lab=1.3)
out.p<- as.surface( xg, hbmibf3)
plot.surface(out.p,zlim=c(0,300),xlab='Age',ylab='Calendar year',main='Mortality hazard - black female Q3',cex.main=1.3,cex.lab=1.3)
dev.copy2pdf(file="LT_Q3.pdf",width=12,height=8.)

dev.new()
set.panel(2,2)   #Fourth quintile 
out.p<- as.surface( xg, hbmiwm4)
plot.surface(out.p,zlim=c(0,300.),xlab='Age',ylab='Calendar year',main='Mortality hazard - white male Q4',cex.main=1.3,cex.lab=1.3)
out.p<- as.surface( xg, hbmiwf4)
plot.surface(out.p,zlim=c(0,300),xlab='Age',ylab='Calendar year',main='Mortality hazard - white female Q4',cex.main=1.3,cex.lab=1.3)
out.p<- as.surface( xg, hbmibm4)
plot.surface(out.p,zlim=c(0,300),xlab='Age',ylab='Calendar year',main='Mortality hazard - black male Q4',cex.main=1.3,cex.lab=1.3)
out.p<- as.surface( xg, hbmibf4)
plot.surface(out.p,zlim=c(0,300),xlab='Age',ylab='Calendar year',main='Mortality hazard - black female Q4',cex.main=1.3,cex.lab=1.3)
dev.copy2pdf(file="LT_Q4.pdf",width=12,height=8.)

dev.new()
set.panel(2,2)   #Fifth quintile 
out.p<- as.surface( xg, hbmiwm5)
plot.surface(out.p,zlim=c(0,300.),xlab='Age',ylab='Calendar year',main='Mortality hazard - white male Q5',cex.main=1.3,cex.lab=1.3)
out.p<- as.surface( xg, hbmiwf5)
plot.surface(out.p,zlim=c(0,300),xlab='Age',ylab='Calendar year',main='Mortality hazard - white female Q5',cex.main=1.3,cex.lab=1.3)
out.p<- as.surface( xg, hbmibm5)
plot.surface(out.p,zlim=c(0,300),xlab='Age',ylab='Calendar year',main='Mortality hazard - black male Q5',cex.main=1.3,cex.lab=1.3)
out.p<- as.surface( xg, hbmibf5)
plot.surface(out.p,zlim=c(0,300),xlab='Age',ylab='Calendar year',main='Mortality hazard - black female Q5',cex.main=1.3,cex.lab=1.3)
dev.copy2pdf(file="LT_Q5.pdf",width=12,height=8.)


#White females
###############################
install.packages("devtools")
library("devtools")
devtools::install_github("klutometis/roxygen")
library("roxygen2")
setwd("/home/hazelton/Data/Esophagus/NHANES_Analysis")
#create("bmigen")
setwd("./bmigen")
document()
setwd("..")
install("bmigen")

create("bmigerd")
setwd("./bmigerd")

install("bmigerd")
document()

###############################
bmigen <- function(nsub=10, sex=1, race=1, byrmin=1800, byrmax=2000, agemin=12,
	agemax=100, cyrmin=1900, cyrmax=2100){
        #sex: 1=male, 2=female; race: 1=white, 2=black;  calculate single individual history
        bmisd=0.5
        bmimat <- matrix(NA,nsub,agemax)
        sexv <- rep(sex,nsub) 
        racev <- rep(race,nsub) 
        byv <- vector(mode="numeric", length=nsub)
        fagev <- vector(mode="numeric", length=nsub)
        fcalv <- vector(mode="numeric", length=nsub)
        gerdv <- vector(mode="numeric", length=nsub)
        dthv <- vector(mode="numeric", length=nsub)
        dthyrv <- vector(mode="numeric", length=nsub)
        nbmiv <- vector(mode="numeric", length=nsub)
        id <- vector(mode="integer",length=nsub)
        if (sex == 1 & race == 1) {
        	nu=nuwm
                bmisr=bmiwm
                bmiqtsr=bmiqtwm
                hazbmi=hazbmiwm
                simname='BMIsimWM.csv'
	}
        if (sex == 2 & race == 1) {
        	nu=nuwf
                bmisr=bmiwf
                bmiqtsr=bmiqtwf
                hazbmi=hazbmiwf
                simname='BMIsimWF.csv'
	}
        if (sex == 1 & race == 2) {
        	nu=nubm
                bmisr=bmibm
                bmiqtsr=bmiqtbm
                hazbmi=hazbmibm
                simname='BMIsimBM.csv'
	}
        if (sex == 2 & race == 2) {
        	nu=nubf
                bmisr=bmibf
                bmiqtsr=bmiqtbf
                hazbmi=hazbmibf
                simname='BMIsimBF.csv'
	}
	cyrmn <- max(1900, cyrmin)
	cyrmx <- min(2100, cyrmax)
        calrange <- cyrmx-cyrmn+1
	byrmn <- max(max(1800, byrmin),cyrmn - agemax)
	byrmx <- min(min(2000, byrmax),cyrmx - agemin)
        for(n in 1:nsub) {
        id[n]=n
	byri <- byrmn + floor((byrmx - byrmn + 1)*runif(1))
        byv[n] <- byri
	agemn <- max(12,min(99, agemin))
        fagev[n] <- agemn 

        fcalv[n] <- byri+agemn 
	agemx <- min(min(99, agemax), cyrmax - byri)
        bmilist <- vector(mode="numeric", length=agemax)
        cyri <- vector(mode="numeric", length=agemx)
        bmiquin <- vector(mode="numeric", length=agemx)
        gerdran <- runif(1)
        deathran <- runif(1)
	agei<-c(1:agemax)
        gerdsur=1.
        deathsur=1.
        gerdonset=999
        deathage=999
        dthyrv[n] <- 999 
	qj <- 1 + floor(5 * runif(1))
	for(i in 1:agemx) {
	 cyri[i]<-byri + i 
	 cyrind<-max(1,byri + i -1899)
 	 bmiquin[i] <- qj 
         qsum <- (bmiqtsr[i,qj]+bmiqtsr[i,qj+1])
         qswitch<-qsum >= runif(1)
         if(qswitch) {
            if((bmiqtsr[i,qj]/qsum) >= runif(1)) {
             qj=qj-1
            }
            else {
             qj=qj+1
            }
          } 
          gerdsur=gerdsur*(1-nu[i,cyrind,qj])
          if ((gerdsur<=gerdran)&(gerdonset>998)) {
          	gerdonset=i
		}
          deathsur=deathsur*(1-hazbmi[i,cyrind,qj])
          if ((deathsur<=deathran)&(deathage>998)) {
          	deathage=i
                dthyrv[n] <- byri+deathage 
		}
          bmilist[i]=bmisr[i,cyrind,qj]+rnorm(1,0,bmisd)
	}
         gerdv[n] <- gerdonset
         dthv[n] <- deathage 
         bmimat[n,] <- bmilist
         nbmiv[n]=agemx-agemn+1
         bmilist[1:agemx]
         bmiquin
         gerdonset
        bmis=bmilist[agemn:agemx]
        }
        bmidf <-data.frame(bmimat)
        simout <- data.frame(sex=sexv,race=racev,birthyear=byv,firstage=fagev,firstyear=fcalv,GERDonsetage=
               gerdv,deathage=dthv,deathyear=dthyrv,N_BMI=nbmiv,BMI=bmidf[,agemin:agemax],row.names =NULL)
        row.names(simout) <- id
        write.csv(round(simout,2),file=simname)
}





	bmigen(1,1,1890,1900,,,,)
	bmigen(100,1,1,,2000,40,,,)

	bmigen(200,1,1,,,,,1990,2020)
	bmigen(30,1,1,,,,,2000,2020)
	bmigen(1,1,,,,,2010,2020)
	bmigen(1,1,,,,,2020,2020)

        for(i in 1:20) {
	print(	bmigen(1,1,,,,,1990,2020))
}





fwmave<-(ywma1p+ywma2p+ywma3p+ywma4p+ywma5p)/5
fwmpred<-(fwmave)*wmxa[,1]*.00006
fwfave<-(ywfa1p+ywfa2p+ywfa3p+ywfa4p+ywfa5p)/5
fwfpred<-(fwfave)*wfxa[,1]*.00006
dev.off()
plot(gerd_age,wmgerd_inc,xlim=c(12,75),col='blue',ylim=c(0,0.01))
lines(wmx3[,1],fwmpred,col='blue')
points(gerd_age,wfgerd_inc,xlim=c(12,75),col='red')
lines(wfx3[,1],fwfpred,col='red')

temp <-predict(smooth.spline(x=wmqa[,1],y=wmqa[,i],df=3),agemina:agemaxa)
wmqpa[,1] <- temp$x  #ages
wmqpa[,i] <- temp$y  #deciles                 

##############################################################333
#BEACON data
dg1=read.table('../Basecase3/BEACON_data/CISNET_datagps1.txt',header=TRUE)
sum(as.numeric(as.character(dg1[((dg1[,1]==1)&(dg1[,2]=='BE')),6])))
sum(as.numeric(as.character(dg1[((dg1[,1]==2)&(dg1[,2]=='BE')),6])))
sum(as.numeric(as.character(dg1[((dg1[,1]==1)&(dg1[,2]=='EA')),6])))
sum(as.numeric(as.character(dg1[((dg1[,1]==2)&(dg1[,2]=='EA')),6])))
sum(as.numeric(as.character(dg1[((dg1[,1]==1)&(dg1[,2]=='CO')),6])))
sum(as.numeric(as.character(dg1[((dg1[,1]==2)&(dg1[,2]=='CO')),6])))

 sum(as.numeric(as.character(dg1[((dg1[,1]==2)&(dg1[,2]=='BE')),6])))
#[1] 281
 sum(as.numeric(as.character(dg1[((dg1[,1]==2)&(dg1[,2]=='EA')),6])))
#[1] 110
 sum(as.numeric(as.character(dg1[((dg1[,1]==1)&(dg1[,2]=='BE')),6])))
#[1] 756
 sum(as.numeric(as.character(dg1[((dg1[,1]==2)&(dg1[,2]=='BE')),6])))
#[1] 281
 sum(as.numeric(as.character(dg1[((dg1[,1]==1)&(dg1[,2]=='EA')),6])))
#[1] 799
 sum(as.numeric(as.character(dg1[((dg1[,1]==2)&(dg1[,2]=='EA')),6])))
#[1] 110
 sum(as.numeric(as.character(dg1[((dg1[,1]==1)&(dg1[,2]=='CO')),6])))
#[1] 1717
 sum(as.numeric(as.character(dg1[((dg1[,1]==2)&(dg1[,2]=='CO')),6])))
#[1] 468

print('line 881 end part 3')


# grid.list<- list( x= 1:10, y=1:15)
#     xg<- make.surface.grid(grid.list)
#     # look at a surface dependin on xg locations
#     z<- xg[,1] + 2*xg[,2]
#     out<- list( x=grid.list$x, y= grid.list$y, z=matrix( z, nrow=10, ncol=15))
#     # now for example
#     image.plot( out)
#
#
#xg<-make.surface.grid(fields.x.to.grid($x))
#
# fitwm
#Call:
#Tps(x = wmx, Y = wmy)
#                                              
# Number of Observations:                3958  
# Number of parameters in the null space 3     
# Parameters for fixed spatial drift     3     
# Model degrees of freedom:              98.3  
# Residual degrees of freedom:           3859.7
# GCV estimate for sigma:                0.5575
# MLE for sigma:                         0.5458
# MLE for rho:                           73.07 
# lambda                                 0.0041
# User supplied rho                      NA    
# User supplied sigma^2                  NA    
#Summary of estimates: 
#                 lambda        trA       GCV      shat -lnLike Prof converge
#GCV        4.076107e-03  98.320868 0.8396715 0.5574698     3246.744        4
#GCV.model  9.673795e-05 576.451333 0.7702499 0.4918957           NA        1
#GCV.one    1.223395e-04 516.314487 0.2828453 0.4959321           NA        1
#RMSE                 NA         NA        NA        NA           NA       NA
#pure error 8.212125e-01   9.295496 1.0118776 0.7100151     4579.551       NA
#REML       1.542364e-04 462.949223 0.9231162 0.5000354     3079.123        7
#> 
#     # a useful function:
#       dircos<- function(x1){
#                  coslat1 <- cos((x1[, 2] * pi)/180)
#                  sinlat1 <- sin((x1[, 2] * pi)/180)
#                  coslon1 <- cos((x1[, 1] * pi)/180)
#                  sinlon1 <- sin((x1[, 1] * pi)/180)
#                  cbind(coslon1*coslat1, sinlon1*coslat1, sinlat1)}
#
#    # fit in 3-d to direction cosines
#       out<- Tps(dircos(RMprecip$x),RMprecip$y)
#       xg<-make.surface.grid(fields.x.to.grid(RMprecip$x))
#       fhat<- predict( out, dircos(xg))
#     # coerce to image format from prediction vector and grid points.
#       out.p<- as.surface( xg, fhat)
#       surface( out.p)
#     # compare to the automatic
#       out0<- Tps(RMprecip$x,RMprecip$y, lon.lat=TRUE)
#       surface(out0)
#
#     #2-d example 
#     
#     fit<- Tps(ozone$x, ozone$y)  # fits a surface to ozone measurements. 
#     
#     set.panel(2,2)
#     plot(fit) # four diagnostic plots of  fit and residuals. 
#     set.panel()
#     
#     # summary of fit and estiamtes of lambda the smoothing parameter
#     summary(fit)
#     
#     surface( fit) # Quick image/contour plot of GCV surface.
#     
#     # NOTE: the predict function is quite flexible:
#     
#          look<- predict( fit, lambda=2.0)
#     #  evaluates the estimate at lambda =2.0  _not_ the GCV estimate
#     #  it does so very efficiently from the Krig fit object.
#     
#          look<- predict( fit, df=7.5)
#:
#     #  evaluates the estimate at the lambda values such that 
#     #  the effective degrees of freedom is 7.5
#      
#     
#     # compare this to fitting a thin plate spline with 
#     # lambda chosen so that there are 7.5 effective 
#     # degrees of freedom in estimate
#     # Note that the GCV function is still computed and minimized
#     # but the lambda values used correpsonds to 7.5 df.
#     
#     fit1<- Tps(ozone$x, ozone$y,df=7.5)
#     
#     set.panel(2,2)
#     plot(fit1) # four diagnostic plots of  fit and residuals.
#               # GCV function (lower left) has vertical line at 7.5 df.
#     set.panel()
#     
#     # The basic matrix decompositions are the same for 
#     # both fit and fit1 objects. 
#     
#     # predict( fit1) is the same as predict( fit, df=7.5)
#     # predict( fit1, lambda= fit$lambda) is the same as predict(fit) 
#     
#     # predict onto a grid that matches the ranges of the data.  
#     
#     out.p<-predictSurface( fit)
#     image( out.p) 
#     
#     # the surface function (e.g. surface( fit))  essentially combines 
#     # the two steps above
#     
#     # predict at different effective 
#     # number of parameters 
#     out.p<-predictSurface( fit,df=10)
     










