/*
 *  Survey:           NHES I
 *  Years:            1959-1962
 *  Questionnaire:    Physical Measurements
 *  Tape Number:      1003
 *
 *  Code Created By:  CDC/IMB
 *
 *  DESCRIPTION:  This file is provided as a starting point to perform advanced 
 *  statistical queries on the survey data.  They are to be used in conjunction 
 *  with legacy codebooks or data tape documentation to analyze the data.  In order 
 *  to use this program: either copy the tape file to your C:\temp directory, or change 
 *  the infile to point to the location that your tape file is located.
*/

DATA D_1003;
   INFILE 'z:\Data\Esophagus\NHES_1\TEMP\DU1003.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         H1BM0006 4
         H1BM0007 8
         H1BM0013 4
         H1BM0016 8
         H1BM0020 4
         H1BM0023 4
         H1BM0026 4
         H1BM0029 4
         H1BM0032 4
         H1BM0035 4
         H1BM0038 4
         H1BM0041 4
         H1BM0044 4
         H1BM0046 4
         H1BM0049 4
         H1BM0052 4
         H1BM0055 4
         H1BM0058 4
         H1BM0061 4
         H1BM0064 4
         H1BM0067 4
         H1BM0070 4
         H1BM0073 4
         H1BM0076 4
         H1BM0079 4
         H1BM0081 4
         H1BM0083 4
         H1BM0085 4
         H1BM0087 4
         H1BM0089 4
         H1BM0091 4
         H1BM0093 4
         H1BM0095 4
         H1BM0097 4
         H1BM0098 4
         H1BM0100 4
         H1BM0101 4
         H1BM0103 4
         H1BM0105 4
         H1BM0107 4
         H1BM0109 4
         H1BM0110 4
         H1BM0111 4
         H1BM0113 4
         H1BM0114 4
         H1BM0115 4
         H1BM0117 4
      ;

      INPUT
         SEQN 1-5
         H1BM0006 6
         H1BM0007 7-12
         H1BM0013 13-15
         H1BM0016 16-19
         H1BM0020 20-22
         H1BM0023 23-25
         H1BM0026 26-28
         H1BM0029 29-31
         H1BM0032 32-34
         H1BM0035 35-37
         H1BM0038 38-40
         H1BM0041 41-43
         H1BM0044 44-45
         H1BM0046 46-48
         H1BM0049 49-51
         H1BM0052 52-54
         H1BM0055 55-57
         H1BM0058 58-60
         H1BM0061 61-63
         H1BM0064 64-66
         H1BM0067 67-69
         H1BM0070 70-72
         H1BM0073 73-75
         H1BM0076 76-78
         H1BM0079 79-80
         H1BM0081 81-82
         H1BM0083 83-84
         H1BM0085 85-86
         H1BM0087 87-88
         H1BM0089 89-90
         H1BM0091 91-92
         H1BM0093 93-94
         H1BM0095 95-96
         H1BM0097 97
         H1BM0098 98-99
         H1BM0100 100
         H1BM0101 101-102
         H1BM0103 103-104
         H1BM0105 105-106
         H1BM0107 107-108
         H1BM0109 109
         H1BM0110 110
         H1BM0111 111-112
         H1BM0113 113
         H1BM0114 114
         H1BM0115 115-116
         H1BM0117 117
      ;

      LABEL
         SEQN = "FILE SEQUENCE NUMBER (CODES20001-26672)"
         H1BM0006 = "GIRDLE WORN"
         H1BM0007 = "FINAL ESTIMATION WEIGHT"
         H1BM0013 = "HEIGHT/(WEIGHT)1/3"
         H1BM0016 = "WEIGHT"
         H1BM0020 = "BIACROMIAL DIAMETER/STATURE"
         H1BM0023 = "RIGHT ARM GIRTH"
         H1BM0026 = "CHEST GIRTH"
         H1BM0029 = "WAIST GIRTH"
         H1BM0032 = "SUM OF SKINFOLDS"
         H1BM0035 = "(WEIGHT)1/3"
         H1BM0038 = "HEIGHT/(WEIGHT)1/3"
         H1BM0041 = "CHEST CIRCUMFERENCE/STATURE"
         H1BM0044 = "BIACROMIAL DIAMETER/STATURE"
         H1BM0046 = "SITTING NORMAL HEIGHT"
         H1BM0049 = "SITTING ERECT HEIGHT"
         H1BM0052 = "KNEE HEIGHT"
         H1BM0055 = "POPLITEAL HEIGHT"
         H1BM0058 = "THIGH CLEARANCE HEIGHT"
         H1BM0061 = "BUTTOCK-KNEE LENGTH"
         H1BM0064 = "BUTTOCK-POPLITEAL LENGTH"
         H1BM0067 = "SEAT BREADTH (ACROSS HIPS)"
         H1BM0070 = "ELBOW TO ELBOW BREADTH"
         H1BM0073 = "ELBOW REST HEIGHT"
         H1BM0076 = "SITTING ERECT HEIGHT/STATURE"
         H1BM0079 = "HEIGHT RECODE"
         H1BM0081 = "WEIGHT RECODE"
         H1BM0083 = "BIACROMIAL DIAMETER RECODE"
         H1BM0085 = "GIRTH-RIGHT ARM RECODE"
         H1BM0087 = "CHEST GIRTH RECODE"
         H1BM0089 = "WAIST GIRTH RECODE"
         H1BM0091 = "RIGHT ARM SKINFOLD RECODE"
         H1BM0093 = "RIGHT INFREACAPULAR SKINFOLD RECODE"
         H1BM0095 = "SUM OF SKINFOLDS RECODE"
         H1BM0097 = "HEIGHT/(WEIGHT)1/3 RECODE"
         H1BM0098 = "CHEST CIRCUMFERENCE/STATURE RECODE"
         H1BM0100 = "BIACROMIAL DIAMETER/STATURE RECODE"
         H1BM0101 = "SITTING NORMAL HEIGHT RECODE"
         H1BM0103 = "SITTING ERECT HEIGHT RECODE"
         H1BM0105 = "KNEE HEIGHT RECODE"
         H1BM0107 = "POPLITEAL HEIGHT RECODE"
         H1BM0109 = "THIGH CLEARANCE HEIGHT RECODE"
         H1BM0110 = "BUTTOCK-KNEE LENGTH RECORD"
         H1BM0111 = "BUTTOCK-POLITEAL LENGTH RECORD"
         H1BM0113 = "SEAT BREADTH "
         H1BM0114 = "ELBOW-TO-ELBOW BREADTH RECODE"
         H1BM0115 = "ELBOW REST HEIGHT RECODE"
         H1BM0117 = "SITTING ERECT HEIGHT/STATURE RECODE"
      ;
RUN;
