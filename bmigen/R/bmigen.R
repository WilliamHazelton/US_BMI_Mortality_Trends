#' An individual history simulator for BMI, GERD onset age, and death
#' @param nsub Number of subjects.  Defaults to 100.
#' @param sex  1 = males, 2 = females, defaults to 1
#' @param race 1 = white, 2 = black, defaults to 1
#' @param byrmin Birth year range minimum defaults to 1800
#' @param byrmax Birth year range maximum defaults to 2000
#' @param agemin Age range minimum defaults to 12
#' @param agemax Age range maximum defaults to 99
#' @param cyrmin Calendar year range minimum defaults to 1900
#' @param cyrmax Calendar year range maximum defaults to 2030
#' @keywords BMI GERD Death NHANES
#' @export
#' @examples 
#' bmigen(200)  #simulates 200 male Whites born any time from 1800-2000 including  GERD onset age, age at death, and annual BMI (from age 12 - 99). Writes to file: "BMIsimWM.csv"
#'
#' bmigen(1000,1,2,1890,1900,,,,)  #simulates 1000 male Blacks born between 1890-1900 including  GERD onset age, age at death, and annual BMI (from age 12 - 99). Writes to file: "BMIsimBM.csv"
#'
#' bmigen(1000,2,1,,,60,70,,)  #simulates 1000 female Whites  born between 1890-1900 including  GERD onset age, age at death, and annual BMI (from age 12 - 99). Writes to file: "BMIsimWF.csv"
#'
#' bmigen(100,2,2,,,,,2000,2000)  #simulates 100 female Blacks with followup in year 2000 including  GERD onset age, age at death, and annual BMI (from age 12 - 99). Writes to file: "BMIsimBF.csv"
#'
#'
#' #File format:  "id", sex, race, birthyear, firstage, firstyear GERDonsetage deathage deathyear Number_BMIs BMIvalues
#'
#' #Notes:  999 represents no GERD onset age or no age at death.  Annual simulated BMI values continue after simulated age at death. 
#'
 

bmigen <- function(nsub=100, sex=1, race=1, byrmin=1800, byrmax=2000, agemin=12,
        agemax=99, cyrmin=1900, cyrmax=2030){
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
        cyrmx <- min(2030, cyrmax)
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

