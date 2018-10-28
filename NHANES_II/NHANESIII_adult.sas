***********************************************************
* Program:  C:\NHANES II\NH2_KeepMerge_Task1.sas          *
* Purpose: Keep only variables needed from SAS Dataset    *
***********************************************************;

/*Change the name of the directory folder to the location that you saved your downloaded dataset
 from the sample code and dataset downloads module: for example "C:\NHANES II\DATA"*/

libname NH2 "Z:\Data\Esophagus\NHANES_II\DATA"; run;
 
options fmtsearch=(nh2.fyouth nh2.fadult nh2.fmdexam nh2.flab 
nh2.fanthro nh2.fsuppl);run;

/* Task 1 Keep variables */
/* Step 1 Keep only variables needed for analysis from permanent SAS datasets */
data NH2.dmlab;
set NH2.lab (keep=SEQN N2LB0421 N2LB0426); 
run;

data NH2.dmmdexam;
set NH2.mdexam (keep=SEQN N2PE0411 N2PE0771 N2PE0414 N2PE0774);
run;

data NH2.dmadult; 
set NH2.adult (keep=SEQN N2AH0625 N2AH0626 N2AH1059 N2AH1060 N2AH1067 N2AH1068 N2AH1069 
   N2AH0491 N2AH0495 N2AH1089 N2AH0062 N2AH0064 N2AH0047 N2AH0045 N2AH0055 
   N2AH0260 N2AH0056 N2AH0326 N2AH0324 N2AH0282);
run;

data NH2.dmyouth; 
set NH2.youth (keep=SEQN N2CH0062 N2CH0064 N2CH0047 N2CH0045 N2CH0055 N2CH0056
   N2CH0326 N2CH0324 N2CH0282);
run;

data NH2.dmanthro;
set NH2.anthro (keep=SEQN N2BM0412 N2BM0418);
run;
 
data NH2.dmsuppl;
set NH2.suppl (keep=SEQN N2SH0785); 
run;


/*Step 2 Check Results to verify that temporary dataset contains the correct number of
  observations and variables */
proc contents data=NH2.dmlab; run;
proc contents data=NH2.dmmdexam; run;
proc contents data=NH2.dmadult; run;
proc contents data=NH2.dmyouth; run;
proc contents data=NH2.dmanthro; run;
proc contents data=NH2.dmsuppl; run;

