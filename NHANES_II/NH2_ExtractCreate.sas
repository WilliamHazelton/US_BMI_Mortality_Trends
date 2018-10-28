***********************************************************
* Program:  C:\NHANES II\NH2_ExtractCreate.sas            *
* Purpose: Extract .EXE File and Create SAS Dataset       *
***********************************************************;

/*Step 2 Create and Format SAS Dataset */
/*change the name of the directory folder to the location that you saved your downloaded dataset
 from the sample code and dataset downloads module: for example "C:\NHANES II\DATA"*/

libname NH2 "Z:\Data\Esophagus\NHANESII\DATA";


/*Cut and paste the SAS program code provided on the NHANES II webpage in the program
named DU5302_F.SAS or DU5302.SAS. These programs are very long and sample parts of DU5302_F.SAS
are excerpted below to provide an example of what your program should look like. Replace this 
with formatted program code in DU5302_F.SAS */

/*Also after pasting in the SAS code be sure to make the following changes:
1) change the path shown in the infile statement to the location that you saved 
your downloaded dataset;
2) add the LIBRARY=libref.catalog option to the PROC FORMAT step, for example
for the physician's exam file you can create a format library by adding the option
'LIBRARY=NH2.FMDEXAM' on the PROC FORMAT STATEMENT
3) change the dataset name in the DATA step and the PROC CONTENTS step. */

PROC FORMAT;
VALUE PE0055F
     1='Male'
     2='Female'
     ;
VALUE PE0056F
     1='White'
     2='Black'
     3='Other'
     ;
 VALUE PE0057F
    88='Blank, but applicable'
     ;  
DATA D_5302;
   INFILE "c:\NHANES II\TEMP\DU5302.txt" LRECL = 2000 MISSOVER;
   LENGTH
     SEQN 8
     N2PE0055 4
     N2PE0056 4
     N2PE0057 4
            ;
   FORMAT
     SEQN 1-5
     N2PE0055 PE0055F.
     N2PE0056 PE0056F.
     N2PE0057 PE0057F.
            ;
   INPUT
     SEQN 1-5
     N2PE0006 6-9
     N2PE0010 10
     N2PE0011 11
            ;
   LABEL
       N2PE0055 = "Q4 SEX"
       N2PE0056 = "Q5 (SEE DETAILED NOTES) RACE"
       N2PE0057 = "Q6 (SEE DETAILED NOTES) IN WHAT
       STATE ..."        
            ;

/*Step 3 Save to Permanent Library */
/*Save the temporary SAS dataset to a permanent library using the libname created
at start of program */

DATA NH2.MDEXAM;
 SET D_5302;
RUN;


/*Step 4 Check the Results */
/*Check results to verify that SAS dataset contains correct number of
observations and variables */

proc contents data="Z:\Data\Esophagus\NHANESII\Data\MDEXAM"; 
run;
