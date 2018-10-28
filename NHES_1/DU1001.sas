/*
 *  Survey:           NHES I
 *  Years:            1959-1962
 *  Questionnaire:    Demographic Characteristics
 *  Tape Number:      1001
 *
 *  Code Created By:  CDC/IMB
 *
 *  DESCRIPTION:  This file is provided as a starting point to perform advanced 
 *  statistical queries on the survey data.  They are to be used in conjunction 
 *  with legacy codebooks or data tape documentation to analyze the data.  In order 
 *  to use this program: either copy the tape file to your C:\temp directory, or change 
 *  the infile to point to the location that your tape file is located.
*/

DATA D_1001;
   INFILE 'C:\temp\DU1001.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         H1DM0006 4
         H1DM0008 4
         H1DM0009 4
         H1DM0010 4
         H1DM0011 4
         H1DM0012 4
         H1DM0014 4
         H1DM0015 4
         H1DM0016 4
         H1DM0017 4
         H1DM0018 4
         H1DM0019 4
         H1DM0020 4
         H1DM0021 4
         H1DM0024 4
         H1DM0026 4
         H1DM0028 4
         H1DM0031 4
         H1DM0033 4
         H1DM0034 4
         H1DM0035 4
         H1DM0037 4
         H1DM0039 4
         H1DM0040 4
         H1DM0042 4
         H1DM0043 4
         H1DM0045 4
         H1DM0046 4
         H1DM0048 4
         H1DM0049 4
         H1DM0050 4
         H1DM0051 8
         H1DM0057 4
         H1DM0058 4
         H1DM0059 4
         H1DM0060 4
         H1DM0062 4
         H1DM0064 4
         H1DM0065 4
         H1DM0067 4
         H1DM0068 4
         H1DM0069 4
         H1DM0070 4
         H1DM0071 4
         H1DM0072 4
         H1DM0073 4
         H1DM0074 4
         H1DM0075 4
         H1DM0076 4
         H1DM0077 4
         H1DM0078 4
         H1DM0079 4
         H1DM0080 4
         H1DM0081 4
         H1DM0082 4
         H1DM0083 4
         H1DM0084 4
         H1DM0085 4
         H1DM0086 4
         H1DM0087 4
         H1DM0088 4
         H1DM0089 4
         H1DM0090 4
         H1DM0091 4
         H1DM0092 4
         H1DM0094 4
         H1DM0096 4
         H1DM0098 4
         H1DM0099 4
         H1DM0100 4
         H1DM0102 4
         H1DM0104 4
         H1DM0105 4
         H1DM0106 4
         H1DM0107 4
         H1DM0108 4
         H1DM0109 4
         H1DM0110 4
         H1DM0111 4
         H1DM0114 $19
      ;

      INPUT
         SEQN 1-5
         H1DM0006 6-7
         H1DM0008 8
         H1DM0009 9
         H1DM0010 10
         H1DM0011 11
         H1DM0012 12-13
         H1DM0014 14
         H1DM0015 15
         H1DM0016 16
         H1DM0017 17
         H1DM0018 18
         H1DM0019 19
         H1DM0020 20
         H1DM0021 21-23
         H1DM0024 24-25
         H1DM0026 26-27
         H1DM0028 28-30
         H1DM0031 31-32
         H1DM0033 33
         H1DM0034 34
         H1DM0035 35-36
         H1DM0037 37-38
         H1DM0039 39
         H1DM0040 40-41
         H1DM0042 42
         H1DM0043 43-44
         H1DM0045 45
         H1DM0046 46-47
         H1DM0048 48
         H1DM0049 49
         H1DM0050 50
         H1DM0051 51-56
         H1DM0057 57
         H1DM0058 58
         H1DM0059 59
         H1DM0060 60-61
         H1DM0062 62-63
         H1DM0064 64
         H1DM0065 65-66
         H1DM0067 67
         H1DM0068 68
         H1DM0069 69
         H1DM0070 70
         H1DM0071 71
         H1DM0072 72
         H1DM0073 73
         H1DM0074 74
         H1DM0075 75
         H1DM0076 76
         H1DM0077 77
         H1DM0078 78
         H1DM0079 79
         H1DM0080 80
         H1DM0081 81
         H1DM0082 82
         H1DM0083 83
         H1DM0084 84
         H1DM0085 85
         H1DM0086 86
         H1DM0087 87
         H1DM0088 88
         H1DM0089 89
         H1DM0090 90
         H1DM0091 91
         H1DM0092 92-93
         H1DM0094 94-95
         H1DM0096 96-97
         H1DM0098 98
         H1DM0099 99
         H1DM0100 100-101
         H1DM0102 102-103
         H1DM0104 104
         H1DM0105 105
         H1DM0106 106
         H1DM0107 107
         H1DM0108 108
         H1DM0109 109
         H1DM0110 110
         H1DM0111 111-113
         H1DM0114 114-132
      ;

      LABEL
         SEQN = "FILE SEQUENCE NUMBER (CODES 1001-16672)"
         H1DM0006 = "AGE AS OF LAST BIRTHDAY GIVEN IN YEA ..."
         H1DM0008 = "AGE RECODE"
         H1DM0009 = "SEX"
         H1DM0010 = "RACE"
         H1DM0011 = "RACE RECODE"
         H1DM0012 = "AGE/SEX RECODE"
         H1DM0014 = "SEX/RACE RECODE"
         H1DM0015 = "MARITAL STATUS"
         H1DM0016 = "HANDEDNESS"
         H1DM0017 = "EDUCATION OF INDIVIDUAL"
         H1DM0018 = "USUAL ACTIVITY DURING LAST 12 MONTHS"
         H1DM0019 = "USUAL ACTIVITY LAST 2 WEEKS"
         H1DM0020 = "OCCUPATION OF INDIVIDUAL"
         H1DM0021 = "OCCUPATION CODE"
         H1DM0024 = "OCCUPATION RECODE"
         H1DM0026 = "INDUSTRY OF INDIVIDUAL"
         H1DM0028 = "INDUSTRY CODE"
         H1DM0031 = "INDUSTRY RECODE"
         H1DM0033 = "CLASS OF WORKER"
         H1DM0034 = "VETERANS STATUS"
         H1DM0035 = "NUMBER OF CHILDREN BORN ALIVE"
         H1DM0037 = "NUMBER OF ABORTIONS"
         H1DM0039 = "PREGNANT AT TIME OF EXAMINATION"
         H1DM0040 = "IF PREGNANT NUMBER OF MONTHS"
         H1DM0042 = "AGE AT MENOPAUSE (AGE RECODE)"
         H1DM0043 = "AGE AT MENOPAUSE (GIVEN IN YEARS 6-19)"
         H1DM0045 = "MENOPAUSE--HAVE PERIODS STOPPED?"
         H1DM0046 = "MENOPAUSE AGE WHEN STOPPED (GIVEN IN ..."
         H1DM0048 = "IF PERIODS STOPPED-WAS IT DUE TO AN  ..."
         H1DM0049 = "MENOPAUSE-HAVE PERIODS BEGUN TO STOP?"
         H1DM0050 = "MENOPAUSE-DURATION OF LAST PERIOD"
         H1DM0051 = "FINAL ESTIMATION WEIGHT"
         H1DM0057 = "PLACE DESCRIPTION"
         H1DM0058 = "POPULATION SIZE (#1)"
         H1DM0059 = "POPULATION SIZE (#2)"
         H1DM0060 = "TOTAL PERSONS IN HOUSEHOLD"
         H1DM0062 = "NUMBER OF ELIGIBLE ADULTS FOR EXAMIN ..."
         H1DM0064 = "NUMBER OF SAMPLE PERSON  IN HOUSEHOLD"
         H1DM0065 = "FAMILY INCOME"
         H1DM0067 = "RELIGION"
         H1DM0068 = "LAND USAGE"
         H1DM0069 = "FARM RESIDENCE"
         H1DM0070 = "FAMILY RELATIONSHIP"
         H1DM0071 = "RELATION TO HEAD OF HOUSEHOLD"
         H1DM0072 = "AGE OF HEAD OF HOUSEHOLD BY SEX"
         H1DM0073 = "EDUCATION OF HEAD OF HOUSEHOLD"
         H1DM0074 = "RESPONDENT"
         H1DM0075 = "AGE OF RESPONDENT"
         H1DM0076 = "NUMBER OF HEALTH SURVEY REPRESENTATI ..."
         H1DM0077 = "NUMBER OF HEALTH SURVEY REPRESENTATI ..."
         H1DM0078 = "TYPE A (NON-INTERVIEW) CONVERTED CODES"
         H1DM0079 = "IMPORTANCE OF COOPERATION CODES"
         H1DM0080 = "FEELING ABOUT COMING CODES"
         H1DM0081 = "APPOINTMENT STATUS CODES"
         H1DM0082 = "APPOINTMENT STATUS CODES"
         H1DM0083 = "MEDICAL AUTHORIZATION CODES"
         H1DM0084 = "NUMBER HEALTH SURVEY REPRESENTATIVES ..."
         H1DM0085 = "NUMBER OF APPOINTMENTS CODES"
         H1DM0086 = "NUMBER OF NO-SHOW CODES"
         H1DM0087 = "NUMBER OF CANCELLATION CODES"
         H1DM0088 = "RESULT OF 1ST APPOINTMENT CODES"
         H1DM0089 = "RESULT OF 2ND  APPOINTMENT CODES"
         H1DM0090 = "EXAMINED ON 3RD OR LATER APPOINTMENT ..."
         H1DM0091 = "DAY OF WEEK OF L1ST APPOINTMENT CODES"
         H1DM0092 = "MONTH OF 1ST APPOINTMENT CODES"
         H1DM0094 = "DAY OF 1ST APPOINTMENT CODES"
         H1DM0096 = "HOUR OF LAST APPOINTMENT CODES"
         H1DM0098 = "APPOINTMENT ON HALF OR HOURS CODES"
         H1DM0099 = "APPOINTMENT IN AM OR PM CODES"
         H1DM0100 = "NUMBER DAY TO FIRST APPOINTMENT (COD ..."
         H1DM0102 = "HOUR OF ACTUAL EXAM (CODES 06-22)"
         H1DM0104 = "UNUSUAL CIRCUMSTANCES OF EXAM"
         H1DM0105 = "REMEMBER OF PUBLICITY ITEMS CODE"
         H1DM0106 = "NHS NEWSPAPER CODE"
         H1DM0107 = "OTHER NEWSPAPER CODES"
         H1DM0108 = "TELEVISION CODES"
         H1DM0109 = "RADIO CODES"
         H1DM0110 = "SOMEBODY TELLING CODES"
         H1DM0111 = "PSEUDO PRIMARY SAMPLING UNIT AND STRATA"
         H1DM0114 = "NOT USED-CODE 0 IN ALL POSITIONS"
      ;
RUN;
