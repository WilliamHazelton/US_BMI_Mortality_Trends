/*
 *  Survey:           NHANES II
 *  Years:            1976-1980
 *  Questionnaire:    Anthropometry
 *  Tape Number:      5301
 *
 *  Code Created By:  CDC/IMB
 *
 *  DESCRIPTION:  This file is provided as a starting point to perform advanced 
 *  statistical queries on the survey data.  They are to be used in conjunction 
 *  with legacy codebooks or data tape documentation to analyze the data.  In order 
 *  to use this program: either copy the tape file to your C:\temp directory, or change 
 *  the infile to point to the location that your tape file is located.
*/

PROC FORMAT;

VALUE BM0011F
     1='Urbanized area with 3,000,000 or more'
     2='Urbanized area 1,000,000 to 2,999,999'
     3='Urbanized area with 250,000 to 999,999'
     4='Urbanized area under 250,000'
     5='Urban place 25,000 or more outside urbanized area'
     6='Urban place 10,000-24,999 outside urbanized area'
     7='Urban place 2,500 to 9,999 outside urbanized area'
     8='Rural'
     ;

VALUE BM0012F
     1='In SMSA, in central city'
     2='In SMSA, not in central city'
     4='Not in SMSA'
     ;

VALUE BM0024F
     1='Housing unit'
     2='Other unit'
     ;

VALUE BM0025F
     1='Urban'
     2='Rural'
     ;

VALUE BM0026F
     1='Yes'
     2='No'
     9='Not Applicable'
     ;

VALUE BM0027F
     1='Yes'
     2='No'
     9='Not Applicable'
     ;

VALUE BM0028F
     1='Yes'
     2='No'
     9='Not Applicable'
     ;

VALUE BM0035F
     1='Head one person living alone or with non-relatives'
     2='Head 2 or more related persons in family'
     3='Wife'
     4='Child'
     5='Other relative'
     6='Foster child'
     7='Husband'
     ;

VALUE BM0036F
     1='Examined'
     ;

VALUE BM0047F
     00='If less than 12 months'
     ;

VALUE BM0055F
     1='Male'
     2='Female'
     ;

VALUE BM0056F
     1='White'
     2='Black'
     3='Other'
     ;

VALUE BM0057F
     88='Blank, but applicable'
     ;

VALUE BM0059F
     1='Under 17'
     2='Married'
     3='Widowed'
     4='Divorced'
     5='Separated'
     6='Never married'
     8='Blank, but applicable'
     ;

VALUE BM0060F
     01='Countries of Central or South America'
     02='Chicano'
     03='Cuban'
     04='Mexican'
     05='Mexicano'
     06='Mexican-American'
     07='Puerto Rican'
     08='Other Spanish'
     09='Other European, such as German, French, English, Irish'
     10='Black, Negro or Afro-American'
     11='American Indian or Alaskan Native'
     12='Asian or Pacific Islander Such as Chinese, Japanese, Korean, Philippino, Samoan'
     13='Another Group Not Listed'
     88='Blank, but applicable'
     ;

VALUE BM0062F
     00='None (regardless of age)'
     21='Elementary Grade 1'
     22='Elementary Grade 2'
     23='Elementary Grade 3'
     24='Elementary Grade 4'
     25='Elementary Grade 5'
     26='Elementary Grade 6'
     27='Elementary Grade 7'
     28='Elementary Grade 8'
     31='High School 1'
     32='High School 2'
     33='High School 3'
     34='High School 4'
     41='College 1'
     42='College 2'
     43='College 3'
     44='College 4'
     45='College 5+'
     88='Blank, but applicable'
     ;

VALUE BM0064F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0065F
     1='Working'
     2='Keeping house'
     3='Something else'
     8='Blank, but applicable'
     ;

VALUE BM0066F
     1='Layoff'
     2='Retired'
     3='Student'
     4='Ill'
     5='Staying home'
     6='Looking for work'
     7='Unable to work'
     8='Blank, but applicable'
     0='Other'
     ;

VALUE BM0067F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0068F
     1='Full time'
     2='Part time'
     8='Blank, but applicable'
     ;

VALUE BM0069F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0070F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0071F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0072F
     1='Looking'
     2='Layoff'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE BM0073F
     000='Blank, but applicable'
     ;

VALUE BM0076F
     000='Blank, but applicable'
     ;

VALUE BM0079F
     1='Private'
     2='A Federal government employee'
     3='A State government employee'
     4='A local government employee'
     5='Incorporated-Own'
     6='Self-employed (or farm)'
     7='Working without pay in family business or farm'
     8='Never worked'
     0='Blank, but applicable'
     ;

VALUE BM0080F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0081F
     1='Vietnam'
     2='Korean War'
     3='World War II'
     4='World War I'
     5='Post Vietnam'
     6='Other Service'
     8='Blank, but applicable'
     9='Do not know'
     ;

VALUE BM0091F
     9='Nine Or More Rooms'
     ;

VALUE BM0092F
     7='More than 7 bedrooms'
     ;

VALUE BM0093F
     1='Yes'
     2='No'
     ;

VALUE BM0094F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0095F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0096F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0097F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0098F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0099F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0100F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0101F
     11='Steam or hot water system'
     12='Central warm air furnace with ducts to individual rooms or central heat pump (forced air)'
     13='Built in electric units (permanently installed in wall, ceiling or baseboard'
     14='Floor, wall or pipeless furnace'
     15='Circulating, radiant or room heaters, with flue or vent, burning gas, oil, or kerosene'
     16='Circulating, radiant, or room heaters (not portable) without  flue or vent burning gas, oil or  kerosene'
     17='Fireplace or stoves burning coal, wood or coke'
     18='Portable room heaters of any kind'
     19='Some other type'
     20='None, unit is not heated'
     88='Blank, but applicable'
     ;

VALUE BM0103F
     1='Yes, individual room unit'
     2='Yes, central air conditioning'
     3='No'
     8='Blank, but applicable'
     ;

VALUE BM0104F
     0='None'
     8='or more 8'
     9='Blank, but applicable'
     ;

VALUE BM0105F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0106F
     0='German'
     1='Italian'
     2='French'
     3='Polish'
     4='Russian'
     5='Spanish'
     6='Chinese'
     7='Other language'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0107F
     11='Under $1,000'
     12='$1,000-1,999'
     13='$2,000-2,999'
     14='$3,000-3,999'
     15='$4,000-4,999'
     16='$5,000-5,999'
     17='$6,000-6,999'
     18='$7,000-9,999'
     19='$10,000-14,999'
     20='$15,000-19,999'
     21='$20,000-24,999'
     22='$25,000 and over'
     88='Blank, but applicable'
     ;

VALUE BM0109F
     8888='Blank, but applicable'
     ;

VALUE BM0113F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0115F
     8888='Blank, but applicable'
     ;

VALUE BM0119F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0121F
     8888='Blank, but applicable'
     ;

VALUE BM0125F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0127F
     8888='Blank, but applicable'
     ;

VALUE BM0131F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0133F
     8888='Blank, but applicable'
     ;

VALUE BM0137F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0139F
     8888='Blank, but applicable'
     ;

VALUE BM0143F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     ;

VALUE BM0145F
     8888='Blank, but applicable'
     ;

VALUE BM0149F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     ;

VALUE BM0151F
     8888='Blank, but applicable'
     ;

VALUE BM0155F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0157F
     8888='Blank, but applicable'
     ;

VALUE BM0161F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0163F
     8888='Blank, but applicable'
     ;

VALUE BM0167F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0169F
     8888='Blank, but applicable'
     ;

VALUE BM0173F
     8888='Blank, but applicable'
     ;

VALUE BM0177F
     2='Food stamps available'
     4='Both - Food Stamps and commodities'
     ;

VALUE BM0178F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0179F
     1='Yes, Regularly'
     2='Yes, Occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE BM0180F
     1='No need'
     2='Not enough money at the time'
     3='No transportation'
     4='Pride'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE BM0181F
     1='Yes'
     2='No'
     9='Do not know'
     ;

VALUE BM0182F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     ;

VALUE BM0183F
     1='No need'
     2='No transportation'
     3='Pride'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE BM0190F
     00='If less than 12 months or non-examined'
     ;

VALUE BM0206F
     1='Male, White'
     2='Male, Black'
     3='Male, Other'
     4='Female, White'
     5='Female, Black'
     6='Female, Other'
     ;

VALUE BM0207F
     1='Farm'
     2='Non-Farm'
     ;

VALUE BM0208F
     1='Interviewed'
     ;

VALUE BM0209F
     1='Northeast'
     2='Midwest'
     3='South'
     4='West'
     ;

VALUE BM0210F
     999='Unknown'
     ;

VALUE BM0251F
     88='Blank, but applicable'
     ;

VALUE BM0255F
     1='Male'
     2='Female'
     ;

VALUE BM0256F
     1='White'
     2='Black'
     3='Other'
     ;

VALUE BM0257F
     88='Blank, but applicable'
     ;

VALUE BM0259F
     1='Under 17'
     2='Married'
     3='Widowed'
     4='Divorced'
     5='Separated'
     6='Never married'
     8='Blank, but applicable'
     ;

VALUE BM0260F
     01='Countries of Central or South America'
     02='Chicano'
     03='Cuban'
     04='Mexican'
     05='Mexicano'
     06='Mexican-American'
     07='Puerto Rican'
     08='Other Spanish'
     09='Other European, such as German, French, English, Irish'
     10='Black, Negro or Afro-American'
     11='American Indian or Alaskan Native'
     12='Asian or Pacific Islander Such as Chinese, Japanese, Korean, Philippino, Samoan'
     13='Another Group Not Listed'
     88='Blank, but applicable'
     ;

VALUE BM0262F
     00='None (regardless of age)'
     21='Elementary Grade 1'
     22='Elementary Grade 2'
     23='Elementary Grade 3'
     24='Elementary Grade 4'
     25='Elementary Grade 5'
     26='Elementary Grade 6'
     27='Elementary Grade 7'
     28='Elementary Grade 8'
     31='High School 1'
     32='High School 2'
     33='High School 3'
     34='High School 4'
     41='College 1'
     42='College 2'
     43='College 3'
     44='College 4'
     45='College 5+'
     88='Blank, but applicable'
     ;

VALUE BM0264F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0265F
     1='Working'
     2='Keeping house'
     3='Something else'
     8='Blank, but applicable'
     ;

VALUE BM0266F
     1='Layoff'
     2='Retired'
     3='Student'
     4='Ill'
     5='Staying home'
     6='Looking for work'
     7='Unable to work'
     8='Blank, but applicable'
     0='Other'
     ;

VALUE BM0267F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0268F
     1='Full time'
     2='Part time'
     8='Blank, but applicable'
     ;

VALUE BM0269F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0270F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0271F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0272F
     1='Looking'
     2='Layoff'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE BM0273F
     000='Blank, but applicable'
     ;

VALUE BM0276F
     000='Blank, but applicable'
     ;

VALUE BM0279F
     1='Private'
     2='A Federal government employee'
     3='A State government employee'
     4='A local government employee'
     5='Incorporated-Own'
     6='Self-employed (or farm)'
     7='Working without pay in family business or farm'
     8='Never worked'
     0='Blank, but applicable'
     ;

VALUE BM0280F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0281F
     1='Vietnam'
     2='Korean War'
     3='World War II'
     4='World War I'
     5='Post Vietnam'
     6='Other Service'
     8='Blank, but applicable'
     9='Do not know'
     ;

VALUE BM0355F
     88='Blank, but applicable'
     ;

VALUE BM0360F
     1='Missing data - imputed'
     ;

VALUE BM0364F
     1='Missing data - imputed'
     ;

VALUE BM0365F
     888='Blank, but applicable'
     999='Not applicable'
     ;

VALUE BM0371F
     1='Missing data imputed'
     ;

VALUE BM0372F
     888='Blank, but applicable'
     999='Not applicable'
     ;

VALUE BM0375F
     888='Blank, but applicable'
     999='Not applicable - less than 2 years'
     ;

VALUE BM0378F
     888='Blank, but applicable'
     999='Not applicable 4-74 years old'
     ;

VALUE BM0381F
     888='Blank, but applicable'
     999='Not applicable 8-74'
     ;

VALUE BM0387F
     1='Missing data imputed'
     ;

VALUE BM0388F
     888='Blank, but applicable'
     999='Not applicable'
     ;

VALUE BM0394F
     1='Missing data imputed'
     ;

VALUE BM0395F
     808='Blank, but applicable'
     999='Not applicable'
     ;

VALUE BM0398F
     9999='Not applicable - Less'
     ;

VALUE BM0402F
     1='Missing data imputed'
     ;

VALUE BM0403F
     888='Blank, but applicable'
     999='Not applicable 4-74 years old'
     ;

VALUE BM0406F
     1='Right handed'
     2='Left handed'
     3='Uses both hands about the same'
     4='Not sure'
     8='Blank, but applicable'
     ;

VALUE BM0417F
     1='Missing data imputed'
     ;

VALUE BM0418F
     9999='Not applicable - less than 2 years old'
     ;

VALUE BM0422F
     999='Not applicable - less than 2 years old'
     ;

VALUE BM0425F
     1='Missing data imputed'
     ;

VALUE BM0426F
     8888='Blank, but applicable'
     9999='Not applicable 4-74 years old'
     ;
RUN;



DATA D_5301;
   INFILE 'z:\Data\Esophagus\NHANES_II\TEMP\DU5301.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N2BM0006 8
         N2BM0010 $1
         N2BM0011 4
         N2BM0012 4
         N2BM0013 $11
         N2BM0024 4
         N2BM0025 4
         N2BM0026 4
         N2BM0027 4
         N2BM0028 4
         N2BM0029 $1
         N2BM0030 4
         N2BM0032 4
         N2BM0034 $1
         N2BM0035 4
         N2BM0036 4
         N2BM0037 8
         N2BM0042 $3
         N2BM0045 4
         N2BM0047 4
         N2BM0049 $2
         N2BM0051 4
         N2BM0053 4
         N2BM0055 4
         N2BM0056 4
         N2BM0057 4
         N2BM0059 4
         N2BM0060 4
         N2BM0062 4
         N2BM0064 4
         N2BM0065 4
         N2BM0066 4
         N2BM0067 4
         N2BM0068 4
         N2BM0069 4
         N2BM0070 4
         N2BM0071 4
         N2BM0072 4
         N2BM0073 4
         N2BM0076 4
         N2BM0079 4
         N2BM0080 4
         N2BM0081 4
         N2BM0082 $9
         N2BM0091 4
         N2BM0092 4
         N2BM0093 4
         N2BM0094 4
         N2BM0095 4
         N2BM0096 4
         N2BM0097 4
         N2BM0098 4
         N2BM0099 4
         N2BM0100 4
         N2BM0101 4
         N2BM0103 4
         N2BM0104 4
         N2BM0105 4
         N2BM0106 4
         N2BM0107 4
         N2BM0109 8
         N2BM0113 4
         N2BM0114 $1
         N2BM0115 8
         N2BM0119 4
         N2BM0120 $1
         N2BM0121 8
         N2BM0125 4
         N2BM0126 $1
         N2BM0127 8
         N2BM0131 4
         N2BM0132 $1
         N2BM0133 8
         N2BM0137 4
         N2BM0138 $1
         N2BM0139 8
         N2BM0143 4
         N2BM0144 $1
         N2BM0145 8
         N2BM0149 4
         N2BM0150 $1
         N2BM0151 8
         N2BM0155 4
         N2BM0156 $1
         N2BM0157 8
         N2BM0161 4
         N2BM0162 $1
         N2BM0163 8
         N2BM0167 4
         N2BM0168 $1
         N2BM0169 8
         N2BM0173 8
         N2BM0177 4
         N2BM0178 4
         N2BM0179 4
         N2BM0180 4
         N2BM0181 4
         N2BM0182 4
         N2BM0183 4
         N2BM0184 4
         N2BM0186 4
         N2BM0188 4
         N2BM0190 4
         N2BM0192 $14
         N2BM0206 4
         N2BM0207 4
         N2BM0208 4
         N2BM0209 4
         N2BM0210 4
         N2BM0213 $34
         N2BM0247 4
         N2BM0249 $2
         N2BM0251 4
         N2BM0253 4
         N2BM0255 4
         N2BM0256 4
         N2BM0257 4
         N2BM0259 4
         N2BM0260 4
         N2BM0262 4
         N2BM0264 4
         N2BM0265 4
         N2BM0266 4
         N2BM0267 4
         N2BM0268 4
         N2BM0269 4
         N2BM0270 4
         N2BM0271 4
         N2BM0272 4
         N2BM0273 4
         N2BM0276 4
         N2BM0279 4
         N2BM0280 4
         N2BM0281 4
         N2BM0282 8
         N2BM0288 8
         N2BM0294 8
         N2BM0300 8
         N2BM0306 8
         N2BM0312 8
         N2BM0318 $6
         N2BM0324 4
         N2BM0326 4
         N2BM0327 $24
         N2BM0351 8
         N2BM0355 4
         N2BM0357 4
         N2BM0360 4
         N2BM0361 4
         N2BM0364 4
         N2BM0365 4
         N2BM0368 4
         N2BM0371 4
         N2BM0372 4
         N2BM0375 4
         N2BM0378 4
         N2BM0381 4
         N2BM0384 4
         N2BM0387 4
         N2BM0388 4
         N2BM0391 4
         N2BM0394 4
         N2BM0395 4
         N2BM0398 8
         N2BM0402 4
         N2BM0403 4
         N2BM0406 4
         N2BM0407 8
         N2BM0412 8
         N2BM0417 4
         N2BM0418 8
         N2BM0422 4
         N2BM0425 4
         N2BM0426 8
      ;



FORMAT
     N2BM0011 BM0011F.
     N2BM0012 BM0012F.
     N2BM0024 BM0024F.
     N2BM0025 BM0025F.
     N2BM0026 BM0026F.
     N2BM0027 BM0027F.
     N2BM0028 BM0028F.
     N2BM0035 BM0035F.
     N2BM0036 BM0036F.
     N2BM0047 BM0047F.
     N2BM0055 BM0055F.
     N2BM0056 BM0056F.
     N2BM0057 BM0057F.
     N2BM0059 BM0059F.
     N2BM0060 BM0060F.
     N2BM0062 BM0062F.
     N2BM0064 BM0064F.
     N2BM0065 BM0065F.
     N2BM0066 BM0066F.
     N2BM0067 BM0067F.
     N2BM0068 BM0068F.
     N2BM0069 BM0069F.
     N2BM0070 BM0070F.
     N2BM0071 BM0071F.
     N2BM0072 BM0072F.
     N2BM0073 BM0073F.
     N2BM0076 BM0076F.
     N2BM0079 BM0079F.
     N2BM0080 BM0080F.
     N2BM0081 BM0081F.
     N2BM0091 BM0091F.
     N2BM0092 BM0092F.
     N2BM0093 BM0093F.
     N2BM0094 BM0094F.
     N2BM0095 BM0095F.
     N2BM0096 BM0096F.
     N2BM0097 BM0097F.
     N2BM0098 BM0098F.
     N2BM0099 BM0099F.
     N2BM0100 BM0100F.
     N2BM0101 BM0101F.
     N2BM0103 BM0103F.
     N2BM0104 BM0104F.
     N2BM0105 BM0105F.
     N2BM0106 BM0106F.
     N2BM0107 BM0107F.
     N2BM0109 BM0109F.
     N2BM0113 BM0113F.
     N2BM0115 BM0115F.
     N2BM0119 BM0119F.
     N2BM0121 BM0121F.
     N2BM0125 BM0125F.
     N2BM0127 BM0127F.
     N2BM0131 BM0131F.
     N2BM0133 BM0133F.
     N2BM0137 BM0137F.
     N2BM0139 BM0139F.
     N2BM0143 BM0143F.
     N2BM0145 BM0145F.
     N2BM0149 BM0149F.
     N2BM0151 BM0151F.
     N2BM0155 BM0155F.
     N2BM0157 BM0157F.
     N2BM0161 BM0161F.
     N2BM0163 BM0163F.
     N2BM0167 BM0167F.
     N2BM0169 BM0169F.
     N2BM0173 BM0173F.
     N2BM0177 BM0177F.
     N2BM0178 BM0178F.
     N2BM0179 BM0179F.
     N2BM0180 BM0180F.
     N2BM0181 BM0181F.
     N2BM0182 BM0182F.
     N2BM0183 BM0183F.
     N2BM0190 BM0190F.
     N2BM0206 BM0206F.
     N2BM0207 BM0207F.
     N2BM0208 BM0208F.
     N2BM0209 BM0209F.
     N2BM0210 BM0210F.
     N2BM0251 BM0251F.
     N2BM0255 BM0255F.
     N2BM0256 BM0256F.
     N2BM0257 BM0257F.
     N2BM0259 BM0259F.
     N2BM0260 BM0260F.
     N2BM0262 BM0262F.
     N2BM0264 BM0264F.
     N2BM0265 BM0265F.
     N2BM0266 BM0266F.
     N2BM0267 BM0267F.
     N2BM0268 BM0268F.
     N2BM0269 BM0269F.
     N2BM0270 BM0270F.
     N2BM0271 BM0271F.
     N2BM0272 BM0272F.
     N2BM0273 BM0273F.
     N2BM0276 BM0276F.
     N2BM0279 BM0279F.
     N2BM0280 BM0280F.
     N2BM0281 BM0281F.
     N2BM0355 BM0355F.
     N2BM0360 BM0360F.
     N2BM0364 BM0364F.
     N2BM0365 BM0365F.
     N2BM0371 BM0371F.
     N2BM0372 BM0372F.
     N2BM0375 BM0375F.
     N2BM0378 BM0378F.
     N2BM0381 BM0381F.
     N2BM0387 BM0387F.
     N2BM0388 BM0388F.
     N2BM0394 BM0394F.
     N2BM0395 BM0395F.
     N2BM0398 BM0398F.
     N2BM0402 BM0402F.
     N2BM0403 BM0403F.
     N2BM0406 BM0406F.
     N2BM0417 BM0417F.
     N2BM0418 BM0418F.
     N2BM0422 BM0422F.
     N2BM0425 BM0425F.
     N2BM0426 BM0426F.
     ;


      INPUT
         SEQN 1-5
         N2BM0006 6-9
         N2BM0010 10
         N2BM0011 11
         N2BM0012 12
         N2BM0013 13-23
         N2BM0024 24
         N2BM0025 25
         N2BM0026 26
         N2BM0027 27
         N2BM0028 28
         N2BM0029 29
         N2BM0030 30-31
         N2BM0032 32-33
         N2BM0034 34
         N2BM0035 35
         N2BM0036 36
         N2BM0037 37-41
         N2BM0042 42-44
         N2BM0045 45-46
         N2BM0047 47-48
         N2BM0049 49-50
         N2BM0051 51-52
         N2BM0053 53-54
         N2BM0055 55
         N2BM0056 56
         N2BM0057 57-58
         N2BM0059 59
         N2BM0060 60-61
         N2BM0062 62-63
         N2BM0064 64
         N2BM0065 65
         N2BM0066 66
         N2BM0067 67
         N2BM0068 68
         N2BM0069 69
         N2BM0070 70
         N2BM0071 71
         N2BM0072 72
         N2BM0073 73-75
         N2BM0076 76-78
         N2BM0079 79
         N2BM0080 80
         N2BM0081 81
         N2BM0082 82-90
         N2BM0091 91
         N2BM0092 92
         N2BM0093 93
         N2BM0094 94
         N2BM0095 95
         N2BM0096 96
         N2BM0097 97
         N2BM0098 98
         N2BM0099 99
         N2BM0100 100
         N2BM0101 101-102
         N2BM0103 103
         N2BM0104 104
         N2BM0105 105
         N2BM0106 106
         N2BM0107 107-108
         N2BM0109 109-112
         N2BM0113 113
         N2BM0114 114
         N2BM0115 115-118
         N2BM0119 119
         N2BM0120 120
         N2BM0121 121-124
         N2BM0125 125
         N2BM0126 126
         N2BM0127 127-130
         N2BM0131 131
         N2BM0132 132
         N2BM0133 133-136
         N2BM0137 137
         N2BM0138 138
         N2BM0139 139-142
         N2BM0143 143
         N2BM0144 144
         N2BM0145 145-148
         N2BM0149 149
         N2BM0150 150
         N2BM0151 151-154
         N2BM0155 155
         N2BM0156 156
         N2BM0157 157-160
         N2BM0161 161
         N2BM0162 162
         N2BM0163 163-166
         N2BM0167 167
         N2BM0168 168
         N2BM0169 169-172
         N2BM0173 173-176
         N2BM0177 177
         N2BM0178 178
         N2BM0179 179
         N2BM0180 180
         N2BM0181 181
         N2BM0182 182
         N2BM0183 183
         N2BM0184 184-185
         N2BM0186 186-187
         N2BM0188 188-189
         N2BM0190 190-191
         N2BM0192 192-205
         N2BM0206 206
         N2BM0207 207
         N2BM0208 208
         N2BM0209 209
         N2BM0210 210-212
         N2BM0213 213-246
         N2BM0247 247-248
         N2BM0249 249-250
         N2BM0251 251-252
         N2BM0253 253-254
         N2BM0255 255
         N2BM0256 256
         N2BM0257 257-258
         N2BM0259 259
         N2BM0260 260-261
         N2BM0262 262-263
         N2BM0264 264
         N2BM0265 265
         N2BM0266 266
         N2BM0267 267
         N2BM0268 268
         N2BM0269 269
         N2BM0270 270
         N2BM0271 271
         N2BM0272 272
         N2BM0273 273-275
         N2BM0276 276-278
         N2BM0279 279
         N2BM0280 280
         N2BM0281 281
         N2BM0282 282-287
         N2BM0288 288-293
         N2BM0294 294-299
         N2BM0300 300-305
         N2BM0306 306-311
         N2BM0312 312-317
         N2BM0318 318-323
         N2BM0324 324-325
         N2BM0326 326
         N2BM0327 327-350
         N2BM0351 351-354
         N2BM0355 355-356
         N2BM0357 357-359
         N2BM0360 360
         N2BM0361 361-363
         N2BM0364 364
         N2BM0365 365-367
         N2BM0368 368-370
         N2BM0371 371
         N2BM0372 372-374
         N2BM0375 375-377
         N2BM0378 378-380
         N2BM0381 381-383
         N2BM0384 384-386
         N2BM0387 387
         N2BM0388 388-390
         N2BM0391 391-393
         N2BM0394 394
         N2BM0395 395-397
         N2BM0398 398-401
         N2BM0402 402
         N2BM0403 403-405
         N2BM0406 406
         N2BM0407 407-411
         N2BM0412 412-416
         N2BM0417 417
         N2BM0418 418-421
         N2BM0422 422-424
         N2BM0425 425
         N2BM0426 426-429
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N2BM0006 = "CATALOG NUMBER"
         N2BM0010 = "DATA USER WORK AREA"
         N2BM0011 = "(SEE DETAILED NOTES) SIZE OF PLACE"
         N2BM0012 = "(SEE DETAILED NOTES) SMSA-NOT SMSA"
         N2BM0013 = "DATA USER WORK AREA"
         N2BM0024 = "Q7 TYPE OF LIVING QUARTERS"
         N2BM0025 = "Q9 LAND USAGE"
         N2BM0026 = "G11A IF RURAL, ASKED DOES THIS PLACE ..."
         N2BM0027 = "G11B IF 10 ACRES OR MORE, ASKED IF I ..."
         N2BM0028 = "G11C IF LESS THAN 10 ACRES, ASKED IF ..."
         N2BM0029 = "DATA USER WORK AREA"
         N2BM0030 = "TOTAL NUMBER OF PERSONS IN HOUSEHOLD"
         N2BM0032 = "TOTAL NUMBER OF PERSONS IN FAMILY"
         N2BM0034 = "DATA USER WORK AREA"
         N2BM0035 = "FAMILY RELATIONSHIP"
         N2BM0036 = "EXAMINATION STATUS"
         N2BM0037 = "FAMILY UNIT SEQUENCE NUMBER (SEE DET ..."
         N2BM0042 = "DATA USER WORK AREA"
         N2BM0045 = "Q3 AGE-MONTHS (AT INTERVIEW)"
         N2BM0047 = "Q3 AGE-YEARS (AT INTERVIEW)"
         N2BM0049 = "DATA USER WORK AREA"
         N2BM0051 = "Q2 DATE-OF-BIRTH-MONTH"
         N2BM0053 = "DATA-OF-BIRTH-YEAR"
         N2BM0055 = "Q4 SEX"
         N2BM0056 = "G5 (SEE DETAILED NOTES) RACE"
         N2BM0057 = "G6 (SEE DETAILED NOTES) IN WHAT STAT ..."
         N2BM0059 = "Q7 IS HE/SHE MARRIED, WIDOWED, DIVOR ..."
         N2BM0060 = "G8 NATURAL ORIGIN OR ANCESTRY"
         N2BM0062 = "G9A HIGHEST GRADE OF SCHOOL ATTENDED"
         N2BM0064 = "Q9B GRADE COMPLETED"
         N2BM0065 = "Q10A WHAT WAS HE/SHE DOING DURING MO ..."
         N2BM0066 = "Q10B WHAT WAS HE/SHE DOING?"
         N2BM0067 = "Q10C DID HE/SHE WORK AT A JOB OR BUS ..."
         N2BM0068 = "Q10D DID HE/SHE WORK FULL OR PART TI ..."
         N2BM0069 = "Q11A WAS HE/SHE WORKING WITHIN LAST  ..."
         N2BM0070 = "Q11B EVEN THOUGH HE/SHE DID NOT WORK ..."
         N2BM0071 = "Q11C WAS HE/SHE LOOKING FOR WORK OR  ..."
         N2BM0072 = "Q11D WHICH LOOKING OR ON LAYOFF FROM ..."
         N2BM0073 = "Q12B (SEE DETAILED NOTES) WHAT KIND  ..."
         N2BM0076 = "Q12C (SEE DETAILED NOTES) WHAT KIND  ..."
         N2BM0079 = "Q12E WAS HE/SHE IN PRIVATE COMPANY O ..."
         N2BM0080 = "Q13A DID HE/SHE EVER SERVE IN THE AR ..."
         N2BM0081 = "Q13B WHEN DID HE/SHE SERVE?"
         N2BM0082 = "DATA USER WORK AREA"
         N2BM0091 = "Q14A HOW MANY ROOMS ARE IN THIS..? C ..."
         N2BM0092 = "Q14B HOW MANY BEDROOMS ARE IN THIS - ? "
         N2BM0093 = "Q14C ASK ONLY OF UNRELATED HOUSEHOLD ..."
         N2BM0094 = "Q15A DO YOU HAVE ACCESS TO COMPLETE  ..."
         N2BM0095 = "Q15B DO YOU HAVE ACCESS TO A RANGE O ..."
         N2BM0096 = "Q15B DO YOU HAVE ACCESS TO A REFRIGE ..."
         N2BM0097 = "Q15B DO YOU HAVE ACCESS TO A SINK WI ..."
         N2BM0098 = "Q15C IS THERE PIPED WATER IN THIS HO ..."
         N2BM0099 = "Q15D IS THERE BOTH HOT AND COLD WATER?"
         N2BM0100 = "Q15E ARE THESE KITCHEN FACILITIES US ..."
         N2BM0101 = "WHAT IS THE MAIN TYPE OF HEATING SYS ..."
         N2BM0103 = "Q17 DO YOU HAVE AIR CONDITIONING?"
         N2BM0104 = "Q18 HOW MANY MOTOR VEHICLE ARE OWNED ..."
         N2BM0105 = "Q19A IS ANY LANGUAGE OTHER THAN ENGL ..."
         N2BM0106 = "Q19B WHAT LANGUAGE?"
         N2BM0107 = "Q20 (SEE DETAILED NOTES) WHICH OF TH ..."
         N2BM0109 = "Q21 DURING THE PAST 12 MONTHS, HOW M ..."
         N2BM0113 = "Q22A SOCIAL SECURITY OR RAILROAD RET ..."
         N2BM0114 = "DATA USER WORK AREA"
         N2BM0115 = "IF YES, HOW MUCH?"
         N2BM0119 = "Q22B WELFARE PAYMENTS OR OTHER PUBLI ..."
         N2BM0120 = "DATA USER WORK AREA"
         N2BM0121 = "IF YES, HOW MUCH?"
         N2BM0125 = "Q22C UNEMPLOYMENT COMPENSATION OR WO ..."
         N2BM0126 = "DATA USER WORK AREA"
         N2BM0127 = "IF YES, HOW MUCH?"
         N2BM0131 = "Q22D GOVERNMENT EMPLOYEE PENSION OR  ..."
         N2BM0132 = "DATA USER WORK AREA"
         N2BM0133 = "IF YES, HOW MUCH?"
         N2BM0137 = "Q22E DIVIDENDS, INTEREST OR RENT?"
         N2BM0138 = "DATA USER WORK AREA"
         N2BM0139 = "IF YES, HOW MUCH?"
         N2BM0143 = "Q22F NET INCOME FROM THEIR OWN BUSIN ..."
         N2BM0144 = "DATA USER WORK AREA"
         N2BM0145 = "IF YES, HOW MUCH?"
         N2BM0149 = "Q22G NET INCOME FROM FARM?"
         N2BM0150 = "DATA USER WORK AREA"
         N2BM0151 = "IF YES, HOW MUCH?"
         N2BM0155 = "Q22P VETERANS PAYMENTS?"
         N2BM0156 = "DATA USER WORK AREA"
         N2BM0157 = "IF YES, HOW MUCH?"
         N2BM0161 = "Q22I ALIMONY, CHILD SUPPORT OR OTHER ..."
         N2BM0162 = "DATA USER WORK AREA"
         N2BM0163 = "IF YES, HOW MUCH?"
         N2BM0167 = "G22J ANY OTHER INCOME?"
         N2BM0168 = "DATA USER WORK AREA"
         N2BM0169 = "IF YES, HOW MUCH?"
         N2BM0173 = "TOTAL AMOUNT (Q21&22)"
         N2BM0177 = "CHECK ITEM B"
         N2BM0178 = "Q23A ARE YOU CERTIFIED TO PARTICIPAT ..."
         N2BM0179 = "Q23B ARE YOU BUYING FOOD STAMP NOW?"
         N2BM0180 = "Q23C WHAT IS THE MAIN REASON YOU ARE ..."
         N2BM0181 = "Q24A ARE YOU RECEIVING COMMODITY FOO ..."
         N2BM0182 = "Q24B ARE YOU CERTIFIED FOR COMMODITY ..."
         N2BM0183 = "Q24C WHY AREN'T YOU PARTICIPATING IN ..."
         N2BM0184 = "(CONTROL RECORD) DATE OF EXAM MONTH"
         N2BM0186 = "(CONTROL RECORD) DATE OF EXAM DAY"
         N2BM0188 = "(CONTROL RECORD) DATE OF EXAM YEAR"
         N2BM0190 = "AGE YEARS (AT EXAMINATION)"
         N2BM0192 = "DATA USER WORK AREA"
         N2BM0206 = "RACE SEX RECODE FRO SAMPLE PERSON (S ..."
         N2BM0207 = "(SEE DETAILED NOTES) FARM, NON-FARM  ..."
         N2BM0208 = "INTERVIEW STATUS"
         N2BM0209 = "(SEE DETAILED NOTES) REGION"
         N2BM0210 = "(SEE DETAILED NOTES) POVERTY INDEX ( ..."
         N2BM0213 = "DATA USER WORK AREA"
         N2BM0247 = "Q3 AGE YEARS"
         N2BM0249 = "DATA USER WORK AREA"
         N2BM0251 = "Q2 DATE-OF-BIRTH-MONTH"
         N2BM0253 = "DATE-OF-BIRTH-YEAR"
         N2BM0255 = "Q4 SEX"
         N2BM0256 = "Q5 RACE (SEE DETAILED NOTES)"
         N2BM0257 = "Q6 (SEE DETAILED NOTES) IN WHAT STAT ..."
         N2BM0259 = "Q7 IS HE/SHE MARRIED, WIDOWED, DIVOR ..."
         N2BM0260 = "18 NATURAL ORIGIN OR ANCESTRY?"
         N2BM0262 = "Q9A HIGHEST GRADE ATTENDED"
         N2BM0264 = "Q9B GRADE COMPLETED"
         N2BM0265 = "Q10A WHAT WAS HE/SHE DOING DURING MO ..."
         N2BM0266 = "Q10B WHAT WAS HE/SHE DOING?"
         N2BM0267 = "Q10C DID HE/SHE WORK AT A JOB OR BUS ..."
         N2BM0268 = "Q10D DID HE/SHE WORK FULL OR PART TI ..."
         N2BM0269 = "Q11A WAS HE/SHE WORKING WITHIN LAST  ..."
         N2BM0270 = "Q11B EVEN THOUGH HE/SHE DID NOT WORK ..."
         N2BM0271 = "Q11C WAS HE/SHE LOOKING FOR WORK OR  ..."
         N2BM0272 = "Q11D WHICH LOOKING OR ON LAYOFF FROM ..."
         N2BM0273 = "Q12B (SEE DETAILED NOTES) WHAT KIND  ..."
         N2BM0276 = "Q12C (SEE DETAILED NOTES) WHAT KIND  ..."
         N2BM0279 = "Q12E WAS HE/SHE IN PRIVATE COMPANY O ..."
         N2BM0280 = "Q13A DID HE/SHE EVER SERVE IN THE AR ..."
         N2BM0281 = "Q13B WHEN DID HE/SHE SERVE?"
         N2BM0282 = "EXAMINED FINAL WEIGHT"
         N2BM0288 = "MEDICAL HISTORY INTERVIEW FINAL WEIGHT"
         N2BM0294 = "GLUCOSE TOLERANCE TEST FINAL WEIGHT"
         N2BM0300 = "LEAD FINAL EXAMINED WEIGHT"
         N2BM0306 = "CARBOXYHEMOGLOBIN FINAL EXAMINED WEIGHT"
         N2BM0312 = "BILE ACIDS FINAL EXAMINED WEIGHT"
         N2BM0318 = "DATA USER WORK AREA"
         N2BM0324 = "STRATA"
         N2BM0326 = "PSEUDO PRIMARY SAMPLING UNIT"
         N2BM0327 = "DATA USER WORK AREA"
         N2BM0351 = "CATALOG NUMBER 5301"
         N2BM0355 = "EXAMINED FINAL NUMBER"
         N2BM0357 = "BITROCHANTERIC BREADTH"
         N2BM0360 = "IMPUTATION CODE"
         N2BM0361 = "RIGHT SIDE MEASUREMENT"
         N2BM0364 = "IMPUTATION CODE (RIGHT SIDE)"
         N2BM0365 = "LEFT SIDE MEASUREMENT"
         N2BM0368 = "RIGHT SIDE MEASUREMENT"
         N2BM0371 = "IMPUTATION CODE (RIGHT SIDE)"
         N2BM0372 = "LEFT SIDE MEASUREMENT"
         N2BM0375 = "ERECT (AGES 2 THROUGH 7)"
         N2BM0378 = "SUPINE (AGES 3 AND UNDER)"
         N2BM0381 = "HEAD CIRCUMFERENCE (AGES 7 AND UNDER)"
         N2BM0384 = "RIGHT SIDE MEASUREMENT"
         N2BM0387 = "IMPUTATION CODE (RIGHT SIDE)"
         N2BM0388 = "LEFT SIDE MEASUREMENT"
         N2BM0391 = "RIGHT SIDE MEASUREMENT"
         N2BM0394 = "IMPUTATION CODE (RIGHT SIDE)"
         N2BM0395 = "LEFT SIDE MEASUREMENT"
         N2BM0398 = "SITTING HEIGHT (AGES 2 AND OVER)"
         N2BM0402 = "IMPUTATION CODE (RIGHT SIDE)"
         N2BM0403 = "CROWN RUMP (AGES 3 AND UNDER)"
         N2BM0406 = "IS EXAMINEE RIGHT OR LEFT HANDED?"
         N2BM0407 = "WEIGHT"
         N2BM0412 = "WEIGHT"
         N2BM0417 = "IMPUTATION CODE "
         N2BM0418 = "HEIGHT (AGES 2 AND OVER)"
         N2BM0422 = "HEIGHT (AGES 2 AND OVER)"
         N2BM0425 = "IMPUTATION CODE"
         N2BM0426 = "RECUMBENT LENGTH (AGES 3 AND UNDER)"
      ;
RUN;
