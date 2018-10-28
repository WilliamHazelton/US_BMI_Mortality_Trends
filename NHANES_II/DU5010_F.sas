/*
 *  Survey:           NHANES II
 *  Years:            1976-1980
 *  Questionnaire:    Medical History, 6 months - 11 years
 *  Tape Number:      5010
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

VALUE CH0011F
     1='Urbanized area with 3,000,000 or more'
     2='Urbanized area 1,000,000 to 2,999,999'
     3='Urbanized area with 250,000 to 999,999'
     4='Urbanized area under 250,000'
     5='Urban place 25,000 or more outside urbanized area'
     6='Urban place 10,000-24,999 outside urbanized area'
     7='Urban place 2,500 to 9,999 outside urbanized area'
     8='Rural'
     ;

VALUE CH0012F
     1='In SMSA, in central city'
     2='In SMSA, not in central city'
     4='Not in SMSA'
     ;

VALUE CH0024F
     1='Housing unit'
     2='Other unit'
     ;

VALUE CH0025F
     1='Urban'
     2='Rural'
     ;

VALUE CH0026F
     1='Yes'
     2='No'
     9='Not Applicable'
     ;

VALUE CH0027F
     1='Yes'
     2='No'
     9='Not Applicable'
     ;

VALUE CH0028F
     1='Yes'
     2='No'
     9='Not Applicable'
     ;

VALUE CH0035F
     1='Head one person living alone or with non-relatives'
     2='Head 2 or more related persons in family'
     3='Wife'
     4='Child'
     5='Other relative'
     6='Foster child'
     7='Husband'
     ;

VALUE CH0036F
     1='Examined'
     ;

VALUE CH0047F
     00='If less than 12 months'
     ;

VALUE CH0055F
     1='Male'
     2='Female'
     ;

VALUE CH0056F
     1='White'
     2='Black'
     3='Other'
     ;

VALUE CH0057F
     88='Blank, but applicable'
     ;

VALUE CH0059F
     1='Under 17'
     2='Married'
     3='Widowed'
     4='Divorced'
     5='Separated'
     6='Never married'
     8='Blank, but applicable'
     ;

VALUE CH0060F
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

VALUE CH0062F
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

VALUE CH0064F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0065F
     1='Working'
     2='Keeping house'
     3='Something else'
     8='Blank, but applicable'
     ;

VALUE CH0066F
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

VALUE CH0067F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0068F
     1='Full time'
     2='Part time'
     8='Blank, but applicable'
     ;

VALUE CH0069F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0070F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0071F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0072F
     1='Looking'
     2='Layoff'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE CH0073F
     000='Blank, but applicable'
     ;

VALUE CH0076F
     000='Blank, but applicable'
     ;

VALUE CH0079F
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

VALUE CH0080F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0081F
     1='Vietnam'
     2='Korean War'
     3='World War II'
     4='World War I'
     5='Post Vietnam'
     6='Other Service'
     8='Blank, but applicable'
     9='Do not know'
     ;

VALUE CH0091F
     9='Nine Or More Rooms'
     ;

VALUE CH0092F
     7='More than 7 bedrooms'
     ;

VALUE CH0093F
     1='Yes'
     2='No'
     ;

VALUE CH0094F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0095F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0096F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0097F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0098F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0099F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0100F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0101F
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

VALUE CH0103F
     1='Yes, individual room unit'
     2='Yes, central air conditioning'
     3='No'
     8='Blank, but applicable'
     ;

VALUE CH0104F
     0='None'
     8='or more 8'
     9='Blank, but applicable'
     ;

VALUE CH0105F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0106F
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

VALUE CH0107F
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

VALUE CH0109F
     8888='Blank, but applicable'
     ;

VALUE CH0113F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0115F
     8888='Blank, but applicable'
     ;

VALUE CH0119F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0121F
     8888='Blank, but applicable'
     ;

VALUE CH0125F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0127F
     8888='Blank, but applicable'
     ;

VALUE CH0131F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0133F
     8888='Blank, but applicable'
     ;

VALUE CH0137F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0139F
     8888='Blank, but applicable'
     ;

VALUE CH0143F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     ;

VALUE CH0145F
     8888='Blank, but applicable'
     ;

VALUE CH0149F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     ;

VALUE CH0151F
     8888='Blank, but applicable'
     ;

VALUE CH0155F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0157F
     8888='Blank, but applicable'
     ;

VALUE CH0161F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0163F
     8888='Blank, but applicable'
     ;

VALUE CH0167F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0169F
     8888='Blank, but applicable'
     ;

VALUE CH0173F
     8888='Blank, but applicable'
     ;

VALUE CH0177F
     2='Food stamps available'
     4='Both - Food Stamps and commodities'
     ;

VALUE CH0178F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0179F
     1='Yes, Regularly'
     2='Yes, Occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE CH0180F
     1='No need'
     2='Not enough money at the time'
     3='No transportation'
     4='Pride'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE CH0181F
     1='Yes'
     2='No'
     9='Do not know'
     ;

VALUE CH0182F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     ;

VALUE CH0183F
     1='No need'
     2='No transportation'
     3='Pride'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE CH0190F
     00='If less than 12 months or non-examined'
     ;

VALUE CH0206F
     1='Male, White'
     2='Male, Black'
     3='Male, Other'
     4='Female, White'
     5='Female, Black'
     6='Female, Other'
     ;

VALUE CH0207F
     1='Farm'
     2='Non-Farm'
     ;

VALUE CH0208F
     1='Interviewed'
     ;

VALUE CH0209F
     1='Northeast'
     2='Midwest'
     3='South'
     4='West'
     ;

VALUE CH0210F
     999='Unknown'
     ;

VALUE CH0251F
     88='Blank, but applicable'
     ;

VALUE CH0255F
     1='Male'
     2='Female'
     ;

VALUE CH0256F
     1='White'
     2='Black'
     3='Other'
     ;

VALUE CH0257F
     88='Blank, but applicable'
     ;

VALUE CH0259F
     1='Under 17'
     2='Married'
     3='Widowed'
     4='Divorced'
     5='Separated'
     6='Never married'
     8='Blank, but applicable'
     ;

VALUE CH0260F
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

VALUE CH0262F
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

VALUE CH0264F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0265F
     1='Working'
     2='Keeping house'
     3='Something else'
     8='Blank, but applicable'
     ;

VALUE CH0266F
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

VALUE CH0267F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0268F
     1='Full time'
     2='Part time'
     8='Blank, but applicable'
     ;

VALUE CH0269F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0270F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0271F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0272F
     1='Looking'
     2='Layoff'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE CH0273F
     000='Blank, but applicable'
     ;

VALUE CH0276F
     000='Blank, but applicable'
     ;

VALUE CH0279F
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

VALUE CH0280F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0281F
     1='Vietnam'
     2='Korean War'
     3='World War II'
     4='World War I'
     5='Post Vietnam'
     6='Other Service'
     8='Blank, but applicable'
     9='Do not know'
     ;

VALUE CH0431F
     88='Blank, but applicable'
     99='Dont know'
     ;

VALUE CH0433F
     88='Blank, but applicable'
     99='Dont know'
     ;

VALUE CH0435F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0437F
     88='- Blank, but applicable'
     99='- Dont know'
     ;

VALUE CH0439F
     88='- Blank, but applicable'
     99='- Dont know'
     ;

VALUE CH0441F
     88='- Blank, but applicable'
     99='- Dont know'
     ;

VALUE CH0443F
     88='- Blank, but applicable'
     99='- Dont know'
     ;

VALUE CH0445F
     77='- Doesnt sit up yet'
     88='- Blank, but applicable'
     99='- Dont know'
     ;

VALUE CH0447F
     77='- Doesnt walk yet'
     88='- Blank, but applicable'
     99='- Dont know'
     ;

VALUE CH0449F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0450F
     00='- Less than one month'
     77='- Still breastfed'
     88='- Blank, but applicable'
     99='- Dont know'
     ;

VALUE CH0452F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0453F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0454F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0455F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0456F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0457F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0458F
     00='- Less than one month'
     77='- Still breastfed'
     88='- Blank, but applicable'
     99='- Dont know'
     ;

VALUE CH0460F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0461F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0462F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0463F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0464F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0465F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0466F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0467F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0468F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0469F
     1='Excellent'
     2='Very good'
     3='Good'
     4='Fair'
     5='Poor'
     8='Blank, but applicable'
     ;

VALUE CH0470F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0471F
     1='Yes'
     2='No'
     ;

VALUE CH0472F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0473F
     1='Yes'
     2='No'
     8='Blank but applicable'
     ;

VALUE CH0474F
     1='Yes'
     2='No'
     8='Blank but applicable'
     ;

VALUE CH0475F
     1='Yes'
     2='No'
     8='Blank but applicable'
     ;

VALUE CH0476F
     1='Yes'
     2='No'
     8='Blank but applicable'
     ;

VALUE CH0477F
     1='Yes'
     2='No'
     8='Blank but applicable'
     ;

VALUE CH0478F
     1='Yes'
     2='No'
     ;

VALUE CH0479F
     1='Yes'
     2='No'
     8='Blank but applicable'
     ;

VALUE CH0480F
     1='Yes'
     2='No'
     8='Blank but applicable'
     ;

VALUE CH0481F
     8='Blank, but applicable'
     9='More than 7 times'
     ;

VALUE CH0482F
     1='Yes'
     2='No'
     8='Blank but applicable'
     ;

VALUE CH0483F
     8='Blank, but applicable'
     9='More than 7 times'
     ;

VALUE CH0484F
     1='Yes'
     2='No'
     8='Blank but applicable'
     ;

VALUE CH0485F
     8='Blank, but applicable'
     9='More than 7 times'
     ;

VALUE CH0486F
     1='Yes'
     2='No'
     8='Blank but applicable'
     ;

VALUE CH0487F
     1='Yes'
     2='No'
     ;

VALUE CH0488F
     1='Yes'
     2='No'
     ;

VALUE CH0489F
     1='Yes'
     2='No'
     ;

VALUE CH0490F
     1='Yes'
     2='No'
     ;

VALUE CH0491F
     1='Yes'
     2='No'
     ;

VALUE CH0492F
     1='Yes'
     2='No'
     ;

VALUE CH0493F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0494F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0495F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0496F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0497F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0498F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0499F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0500F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0501F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0502F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0503F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0504F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0505F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0506F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0507F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0508F
     1='Yes'
     2='No'
     ;

VALUE CH0509F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0510F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0511F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0512F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0513F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0514F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0515F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0516F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0517F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0518F
     02='Never told'
     13='Yes - Still has it'
     14='Yes - Does not still have it'
     18='Yes - Blank, but applicable'
     19='Yes - Dont know if still have'
     ;

VALUE CH0521F
     88='Blank, but applicable'
     ;

VALUE CH0523F
     02='Never told'
     13='Yes - Still have it'
     14='Yes - Does not still have it'
     18='Yes - Blank, but applicable'
     19='Yes - Dont know if still have'
     ;

VALUE CH0525F
     88='Blank, but applicable'
     ;

VALUE CH0527F
     02='Never told'
     13='Yes - Still have it'
     14='Yes - Does not still have it'
     18='Yes - Blank, but applicable'
     19='Yes - Dont know if still have it'
     ;

VALUE CH0529F
     88='Blank, but applicable'
     ;

VALUE CH0531F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0532F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0533F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0534F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0535F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0536F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0537F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0538F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0539F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0540F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0541F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0542F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0543F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0544F
     1='Yes in 23a or 24a'
     2='All other'
     ;

VALUE CH0545F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0546F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0547F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0548F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0549F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0550F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0551F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0552F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0553F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0554F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0555F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0556F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0557F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0558F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0559F
     88='- Blank, but applicable'
     ;

VALUE CH0561F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0563F
     02='Never had one'
     13='Yes - Has one now'
     14='Yes - Does not have one now'
     18='Yes - Blank, but applicable'
     88='Blank, but applicable'
     ;

VALUE CH0565F
     02='Never had one'
     13='Yes - Has one now'
     14='Yes - Does not have one now'
     18='Yes - Blank, but applicable'
     88='Blank, but applicable'
     ;

VALUE CH0567F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0568F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0571F
     00='Less than 1 month'
     88='Blank, but applicable'
     ;

VALUE CH0573F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0574F
     1='Yes'
     2='No'
     ;

VALUE CH0579F
     1='Yes'
     2='No'
     ;

VALUE CH0580F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0581F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0582F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0583F
     88='Blank, but applicable'
     ;

VALUE CH0585F
     88='Blank, but applicable'
     ;

VALUE CH0587F
     88='Blank, but applicable'
     ;

VALUE CH0589F
     88='Blank, but applicable'
     ;

VALUE CH0591F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0593F
     88='Blank, but applicable'
     ;

VALUE CH0595F
     88='Blank, but applicable'
     ;

VALUE CH0597F
     1='Yes'
     2='No'
     ;

VALUE CH0598F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0599F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0600F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0601F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0602F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0603F
     02='Never told'
     13='Yes - Still have it'
     14='Yes - Does not still have it'
     18='Yes - Blank, but applicable'
     19='Yes - Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE CH0605F
     88='- Blank, but applicable'
     ;

VALUE CH0607F
     02='Never told'
     13='Yes - Still has it'
     14='Yes - Does not still have it'
     18='Yes - Blank, but applicable'
     19='Yes - Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE CH0609F
     88='- Blank, but applicable'
     ;

VALUE CH0611F
     02='Never told'
     13='Yes - Still has it'
     14='Yes - Does not still have it'
     18='Yes - Blank, but applicable'
     19='Yes - Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE CH0613F
     88='- Blank, but applicable'
     ;

VALUE CH0615F
     02='Never told'
     13='Yes - Still has it'
     14='Yes - Does not still have it'
     18='Yes - Blank, but applicable'
     19='Yes - Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE CH0617F
     88='- Blank, but applicable'
     ;

VALUE CH0619F
     02='Never told'
     13='Yes - Still has it'
     14='Yes - Does not still have it'
     18='Yes - Blank, but applicable'
     19='Yes - Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE CH0621F
     88='- Blank, but applicable'
     ;

VALUE CH0623F
     02='Never told'
     13='Yes - Still has it'
     14='Yes - Does not still have it'
     18='Yes - Blank, but applicable'
     19='Yes - Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE CH0625F
     88='- Blank, but applicable'
     ;

VALUE CH0627F
     02='Never told'
     13='Yes - Still has it'
     14='Yes - Does not still have it'
     18='Yes - Blank, but applicable'
     19='Yes - Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE CH0629F
     88='- Blank, but applicable'
     ;

VALUE CH0631F
     02='Never told'
     13='Yes - Still has it'
     14='Yes - Does not still have it'
     18='Yes - Blank, but applicable'
     19='Yes - Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE CH0633F
     02='Years'
     88='Blank, but applicable'
     ;

VALUE CH0635F
     02='Never told'
     13='Yes - Still has it'
     14='Yes - Does not still have it'
     18='Yes - Blank, but applicable'
     19='Yes - Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE CH0637F
     88='- Blank, but applicable'
     ;

VALUE CH0639F
     02='Never told'
     13='Yes - Still has it'
     14='Yes - Does not still have it'
     18='Yes - Blank, but applicable'
     19='Yes - Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE CH0641F
     88='- Blank, but applicable'
     ;

VALUE CH0643F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0644F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0645F
     00='- Less than 1 year ago'
     88='- Blank, but applicable'
     ;

VALUE CH0647F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0648F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0649F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0650F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0651F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0652F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0653F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0654F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0655F
     1='Mother'
     2='Father'
     3='Sister'
     4='Brother'
     0005='No'
     8888='Blank, but applicable'
     ;

VALUE CH0659F
     1='Mother'
     2='Father'
     3='Sister'
     4='Brother'
     0005='No'
     8888='Blank, but applicable'
     ;

VALUE CH0663F
     1='Mother'
     2='Father'
     3='Sister'
     4='Brother'
     0005='No'
     8888='Blank, but applicable'
     ;

VALUE CH0667F
     1='Mother'
     2='Father'
     3='Sister'
     4='Brother'
     0005='No'
     8888='Blank, but applicable'
     ;

VALUE CH0671F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0672F
     88='- Blank, but applicable'
     ;

VALUE CH0674F
     88='- Blank, but applicable'
     ;

VALUE CH0676F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0677F
     88='- Blank, but applicable'
     ;

VALUE CH0679F
     88='- Blank, but applicable'
     ;

VALUE CH0681F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0683F
     88='- Blank, but applicable'
     ;

VALUE CH0685F
     88='- Blank, but applicable'
     ;

VALUE CH0687F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0689F
     88='- Blank, but applicable'
     ;

VALUE CH0691F
     88='- Blank, but applicable'
     ;

VALUE CH0693F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0695F
     00='Less than one year'
     99='Dont know'
     ;

VALUE CH0697F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0698F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0699F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0700F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0701F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0702F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0703F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0704F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0705F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0706F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0707F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0708F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0709F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0710F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0711F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0712F
     1='Under 3 years'
     2='3+ years'
     ;

VALUE CH0713F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0714F
     1='Once only'
     2='Twice'
     3='3 or more times'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0715F
     1='Left'
     2='Right'
     3='Both'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0716F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0717F
     1='Yes                                 2,174'
     2='No                                  2,548'
     ;

VALUE CH0719F
     88='Blank, but applicable'
     99='More than 100 times'
     ;

VALUE CH0721F
     88='Blank, but applicable'
     99='More than 100 infections'
     ;

VALUE CH0723F
     88='Blank, but applicable'
     99='More than 100 infections'
     ;

VALUE CH0725F
     88='Blank, but applicable'
     ;

VALUE CH0727F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0728F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0729F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0731F
     88='Blank, but applicable'
     ;

VALUE CH0733F
     1='Gotten worse'
     2='Gotten better'
     3='Stayed about the same'
     8='Blank, but applicable'
     ;

VALUE CH0734F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0735F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0736F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0737F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0738F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0739F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0740F
     1='Good'
     2='Fair'
     3='Poor'
     4='Deaf'
     8='Blank, but applicable'
     ;

VALUE CH0741F
     1='Good'
     2='Fair'
     3='Poor'
     4='Deaf'
     8='Blank, but applicable'
     ;

VALUE CH0742F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0743F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0744F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0745F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0746F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0747F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0748F
     88='Blank, but applicable'
     ;

VALUE CH0750F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0751F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0752F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE CH0753F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0754F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0755F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0756F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0757F
     1='No to 39a, b and c'
     2='All others'
     ;

VALUE CH0758F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0759F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0760F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0761F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0762F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0763F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0764F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0765F
     88='Blank, but applicable'
     ;

VALUE CH0767F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0768F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0769F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0770F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0771F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0773F
     88='Blank, but applicable'
     ;

VALUE CH0775F
     88='Blank, but applicable'
     ;

VALUE CH0777F
     88='Blank, but applicable'
     ;

VALUE CH0779F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0780F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0781F
     1='Problem corrected'
     2='Could not afford it'
     3='No further improvement expected'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE CH0782F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0783F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0784F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0785F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0786F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0787F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0788F
     8='Blank, but applicable'
     ;

VALUE CH0789F
     8='Blank, but applicable'
     ;

VALUE CH0790F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0791F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0792F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0793F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0794F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0795F
     1='Under 1 year'
     2='1-1 1/2 years'
     3='1 1/2-2 years'
     4='Over 2 years'
     8='Blank, but applicable'
     ;

VALUE CH0796F
     1='Under 1 year'
     2='1-2 years'
     3='2-3 years'
     4='3-4 years'
     5='4 years or older'
     8='Blank, but applicable'
     ;

VALUE CH0797F
     1='No problem understanding'
     2='A little trouble understanding'
     3='Moderate amount of trouble understanding'
     4='A lot of trouble understanding'
     5='Cannot understand him at all'
     8='Blank, but applicable'
     ;

VALUE CH0798F
     1='No problem understanding'
     2='A little trouble understanding'
     3='Moderate amount of trouble understanding'
     4='A lot of trouble understanding'
     5='Cannot understand him at al'
     8='Blank, but applicable'
     ;

VALUE CH0799F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0800F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0801F
     1='All of the time'
     2='Most of the time'
     3='Some of the time'
     4='Very little of the time'
     8='Blank, but applicable'
     ;

VALUE CH0802F
     1='Under 6 years'
     2='6+ years'
     ;

VALUE CH0803F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0804F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0805F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0806F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0807F
     8888='Blank, but applicable'
     ;

VALUE CH0811F
     8888='Blank, but applicable'
     ;

VALUE CH0815F
     8888='Blank, but applicable'
     ;

VALUE CH0819F
     8888='Blank, but applicable'
     ;

VALUE CH0823F
     88='Blank, but applicable'
     ;

VALUE CH0825F
     1='None'
     2='1-4 days'
     3='5-9 days'
     4='10-14 days'
     5='15-19 days'
     6='20-29 days'
     7='30 days or more'
     8='Blank, but applicable'
     ;

VALUE CH0826F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0827F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0828F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0829F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0830F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0831F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0832F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0833F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0834F
     1='6+ years'
     2='Under 6 years'
     ;

VALUE CH0835F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0836F
     1='Yes'
     2='No'
     ;

VALUE CH0837F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0838F
     1='Yes'
     2='No'
     8='Blank, but applicabe'
     ;

VALUE CH0839F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0840F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0841F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0842F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0843F
     5='5 or more times'
     8='Blank, but applicable'
     ;

VALUE CH0844F
     77='Included in fee'
     88='Blank, but applicable'
     99='$1.00 or more'
     ;

VALUE CH0846F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0847F
     5='5 or more times'
     8='Blank, but applicable'
     ;

VALUE CH0848F
     77='Included in fee'
     88='Blank, but applicable'
     ;

VALUE CH0850F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0851F
     5='5 or more times'
     8='Blank, but applicable'
     ;

VALUE CH0852F
     77='Included in fee'
     88='Blank, but applicable'
     ;

VALUE CH0854F
     888='Blank, but applicable'
     999='Dont know'
     ;

VALUE CH0857F
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0858F
     88='Blank, but applicable'
     99='Dont know'
     ;

VALUE CH0860F
     888='Blank, but applicable'
     999='Dont know'
     ;

VALUE CH0863F
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0864F
     88='Blank, but applicable'
     99='Dont know'
     ;

VALUE CH0866F
     1='Mother'
     2='Father'
     3='Sister or Brother'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE CH0875F
     1='Dummy'
     ;

VALUE CH0881F
     888='Blank, but applicable'
     ;

VALUE CH0884F
     888='Blank, but applicable'
     ;

VALUE CH0887F
     888='Blank, but applicable'
     ;

VALUE CH0890F
     888='Blank, but applicable'
     ;

VALUE CH0893F
     888='Blank, but applicable'
     ;

VALUE CH0896F
     888='Blank, but applicable'
     ;
RUN;


DATA D_5010;
   INFILE 'z:\Data\Esophagus\NHANES_II\TEMP\DU5010.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N2CH0006 8
         N2CH0010 $1
         N2CH0011 4
         N2CH0012 4
         N2CH0013 $11
         N2CH0024 4
         N2CH0025 4
         N2CH0026 4
         N2CH0027 4
         N2CH0028 4
         N2CH0029 $1
         N2CH0030 4
         N2CH0032 4
         N2CH0034 $1
         N2CH0035 4
         N2CH0036 4
         N2CH0037 8
         N2CH0042 $3
         N2CH0045 4
         N2CH0047 4
         N2CH0049 $2
         N2CH0051 4
         N2CH0053 4
         N2CH0055 4
         N2CH0056 4
         N2CH0057 4
         N2CH0059 4
         N2CH0060 4
         N2CH0062 4
         N2CH0064 4
         N2CH0065 4
         N2CH0066 4
         N2CH0067 4
         N2CH0068 4
         N2CH0069 4
         N2CH0070 4
         N2CH0071 4
         N2CH0072 4
         N2CH0073 4
         N2CH0076 4
         N2CH0079 4
         N2CH0080 4
         N2CH0081 4
         N2CH0082 $9
         N2CH0091 4
         N2CH0092 4
         N2CH0093 4
         N2CH0094 4
         N2CH0095 4
         N2CH0096 4
         N2CH0097 4
         N2CH0098 4
         N2CH0099 4
         N2CH0100 4
         N2CH0101 4
         N2CH0103 4
         N2CH0104 4
         N2CH0105 4
         N2CH0106 4
         N2CH0107 4
         N2CH0109 8
         N2CH0113 4
         N2CH0114 $1
         N2CH0115 8
         N2CH0119 4
         N2CH0120 $1
         N2CH0121 8
         N2CH0125 4
         N2CH0126 $1
         N2CH0127 8
         N2CH0131 4
         N2CH0132 $1
         N2CH0133 8
         N2CH0137 4
         N2CH0138 $1
         N2CH0139 8
         N2CH0143 4
         N2CH0144 $1
         N2CH0145 8
         N2CH0149 4
         N2CH0150 $1
         N2CH0151 8
         N2CH0155 4
         N2CH0156 $1
         N2CH0157 8
         N2CH0161 4
         N2CH0162 $1
         N2CH0163 8
         N2CH0167 4
         N2CH0168 $1
         N2CH0169 8
         N2CH0173 8
         N2CH0177 4
         N2CH0178 4
         N2CH0179 4
         N2CH0180 4
         N2CH0181 4
         N2CH0182 4
         N2CH0183 4
         N2CH0184 4
         N2CH0186 4
         N2CH0188 4
         N2CH0190 4
         N2CH0192 $14
         N2CH0206 4
         N2CH0207 4
         N2CH0208 4
         N2CH0209 4
         N2CH0210 4
         N2CH0213 $34
         N2CH0247 4
         N2CH0249 $2
         N2CH0251 4
         N2CH0253 4
         N2CH0255 4
         N2CH0256 4
         N2CH0257 4
         N2CH0259 4
         N2CH0260 4
         N2CH0262 4
         N2CH0264 4
         N2CH0265 4
         N2CH0266 4
         N2CH0267 4
         N2CH0268 4
         N2CH0269 4
         N2CH0270 4
         N2CH0271 4
         N2CH0272 4
         N2CH0273 4
         N2CH0276 4
         N2CH0279 4
         N2CH0280 4
         N2CH0281 4
         N2CH0282 8
         N2CH0288 8
         N2CH0294 8
         N2CH0300 8
         N2CH0306 8
         N2CH0312 8
         N2CH0318 $6
         N2CH0324 4
         N2CH0326 4
         N2CH0327 4
         N2CH0328 $73
         N2CH0401 8
         N2CH0405 $26
         N2CH0431 4
         N2CH0433 4
         N2CH0435 4
         N2CH0436 $1
         N2CH0437 4
         N2CH0439 4
         N2CH0441 4
         N2CH0443 4
         N2CH0445 4
         N2CH0447 4
         N2CH0449 4
         N2CH0450 4
         N2CH0452 4
         N2CH0453 4
         N2CH0454 4
         N2CH0455 4
         N2CH0456 4
         N2CH0457 4
         N2CH0458 4
         N2CH0460 4
         N2CH0461 4
         N2CH0462 4
         N2CH0463 4
         N2CH0464 4
         N2CH0465 4
         N2CH0466 4
         N2CH0467 4
         N2CH0468 4
         N2CH0469 4
         N2CH0470 4
         N2CH0471 4
         N2CH0472 4
         N2CH0473 4
         N2CH0474 4
         N2CH0475 4
         N2CH0476 4
         N2CH0477 4
         N2CH0478 4
         N2CH0479 4
         N2CH0480 4
         N2CH0481 4
         N2CH0482 4
         N2CH0483 4
         N2CH0484 4
         N2CH0485 4
         N2CH0486 4
         N2CH0487 4
         N2CH0488 4
         N2CH0489 4
         N2CH0490 4
         N2CH0491 4
         N2CH0492 4
         N2CH0493 4
         N2CH0494 4
         N2CH0495 4
         N2CH0496 4
         N2CH0497 4
         N2CH0498 4
         N2CH0499 4
         N2CH0500 4
         N2CH0501 4
         N2CH0502 4
         N2CH0503 4
         N2CH0504 4
         N2CH0505 4
         N2CH0506 4
         N2CH0507 4
         N2CH0508 4
         N2CH0509 4
         N2CH0510 4
         N2CH0511 4
         N2CH0512 4
         N2CH0513 4
         N2CH0514 4
         N2CH0515 4
         N2CH0516 4
         N2CH0517 4
         N2CH0518 4
         N2CH0520 $1
         N2CH0521 4
         N2CH0523 4
         N2CH0525 4
         N2CH0527 4
         N2CH0529 4
         N2CH0531 4
         N2CH0532 4
         N2CH0533 4
         N2CH0534 4
         N2CH0535 4
         N2CH0536 4
         N2CH0537 4
         N2CH0538 4
         N2CH0539 4
         N2CH0540 4
         N2CH0541 4
         N2CH0542 4
         N2CH0543 4
         N2CH0544 4
         N2CH0545 4
         N2CH0546 4
         N2CH0547 4
         N2CH0548 4
         N2CH0549 4
         N2CH0550 4
         N2CH0551 4
         N2CH0552 4
         N2CH0553 4
         N2CH0554 4
         N2CH0555 4
         N2CH0556 4
         N2CH0557 4
         N2CH0558 4
         N2CH0559 4
         N2CH0561 4
         N2CH0562 $1
         N2CH0563 4
         N2CH0565 4
         N2CH0567 4
         N2CH0568 4
         N2CH0569 4
         N2CH0571 4
         N2CH0573 4
         N2CH0574 4
         N2CH0575 4
         N2CH0577 4
         N2CH0579 4
         N2CH0580 4
         N2CH0581 4
         N2CH0582 4
         N2CH0583 4
         N2CH0585 4
         N2CH0587 4
         N2CH0589 4
         N2CH0591 4
         N2CH0592 $1
         N2CH0593 4
         N2CH0595 4
         N2CH0597 4
         N2CH0598 4
         N2CH0599 4
         N2CH0600 4
         N2CH0601 4
         N2CH0602 4
         N2CH0603 4
         N2CH0605 4
         N2CH0607 4
         N2CH0609 4
         N2CH0611 4
         N2CH0613 4
         N2CH0615 4
         N2CH0617 4
         N2CH0619 4
         N2CH0621 4
         N2CH0623 4
         N2CH0625 4
         N2CH0627 4
         N2CH0629 4
         N2CH0631 4
         N2CH0633 4
         N2CH0635 4
         N2CH0637 4
         N2CH0639 4
         N2CH0641 4
         N2CH0643 4
         N2CH0644 4
         N2CH0645 4
         N2CH0647 4
         N2CH0648 4
         N2CH0649 4
         N2CH0650 4
         N2CH0651 4
         N2CH0652 4
         N2CH0653 4
         N2CH0654 4
         N2CH0655 8
         N2CH0659 8
         N2CH0663 8
         N2CH0667 8
         N2CH0671 4
         N2CH0672 4
         N2CH0674 4
         N2CH0676 4
         N2CH0677 4
         N2CH0679 4
         N2CH0681 4
         N2CH0682 $1
         N2CH0683 4
         N2CH0685 4
         N2CH0687 4
         N2CH0688 $1
         N2CH0689 4
         N2CH0691 4
         N2CH0693 4
         N2CH0694 $1
         N2CH0695 4
         N2CH0697 4
         N2CH0698 4
         N2CH0699 4
         N2CH0700 4
         N2CH0701 4
         N2CH0702 4
         N2CH0703 4
         N2CH0704 4
         N2CH0705 4
         N2CH0706 4
         N2CH0707 4
         N2CH0708 4
         N2CH0709 4
         N2CH0710 4
         N2CH0711 4
         N2CH0712 4
         N2CH0713 4
         N2CH0714 4
         N2CH0715 4
         N2CH0716 4
         N2CH0717 4
         N2CH0718 $1
         N2CH0719 4
         N2CH0721 4
         N2CH0723 4
         N2CH0725 4
         N2CH0727 4
         N2CH0728 4
         N2CH0729 4
         N2CH0730 $1
         N2CH0731 4
         N2CH0733 4
         N2CH0734 4
         N2CH0735 4
         N2CH0736 4
         N2CH0737 4
         N2CH0738 4
         N2CH0739 4
         N2CH0740 4
         N2CH0741 4
         N2CH0742 4
         N2CH0743 4
         N2CH0744 4
         N2CH0745 4
         N2CH0746 4
         N2CH0747 4
         N2CH0748 4
         N2CH0750 4
         N2CH0751 4
         N2CH0752 4
         N2CH0753 4
         N2CH0754 4
         N2CH0755 4
         N2CH0756 4
         N2CH0757 4
         N2CH0758 4
         N2CH0759 4
         N2CH0760 4
         N2CH0761 4
         N2CH0762 4
         N2CH0763 4
         N2CH0764 4
         N2CH0765 4
         N2CH0767 4
         N2CH0768 4
         N2CH0769 4
         N2CH0770 4
         N2CH0771 4
         N2CH0772 $1
         N2CH0773 4
         N2CH0775 4
         N2CH0777 4
         N2CH0779 4
         N2CH0780 4
         N2CH0781 4
         N2CH0782 4
         N2CH0783 4
         N2CH0784 4
         N2CH0785 4
         N2CH0786 4
         N2CH0787 4
         N2CH0788 4
         N2CH0789 4
         N2CH0790 4
         N2CH0791 4
         N2CH0792 4
         N2CH0793 4
         N2CH0794 4
         N2CH0795 4
         N2CH0796 4
         N2CH0797 4
         N2CH0798 4
         N2CH0799 4
         N2CH0800 4
         N2CH0801 4
         N2CH0802 4
         N2CH0803 4
         N2CH0804 4
         N2CH0805 4
         N2CH0806 4
         N2CH0807 $4
         N2CH0811 $4
         N2CH0815 $4
         N2CH0819 $4
         N2CH0823 4
         N2CH0825 4
         N2CH0826 4
         N2CH0827 4
         N2CH0828 4
         N2CH0829 4
         N2CH0830 4
         N2CH0831 4
         N2CH0832 4
         N2CH0833 4
         N2CH0834 4
         N2CH0835 4
         N2CH0836 4
         N2CH0837 4
         N2CH0838 4
         N2CH0839 4
         N2CH0840 4
         N2CH0841 4
         N2CH0842 4
         N2CH0843 4
         N2CH0844 4
         N2CH0846 4
         N2CH0847 4
         N2CH0848 4
         N2CH0850 4
         N2CH0851 4
         N2CH0852 4
         N2CH0854 4
         N2CH0857 4
         N2CH0858 4
         N2CH0860 4
         N2CH0863 4
         N2CH0864 4
         N2CH0866 4
         N2CH0867 $8
         N2CH0875 4
         N2CH0876 $5
         N2CH0881 4
         N2CH0884 4
         N2CH0887 4
         N2CH0890 4
         N2CH0893 4
         N2CH0896 4
         N2CH0899 $2
      ;




FORMAT
     N2CH0011 CH0011F.
     N2CH0012 CH0012F.
     N2CH0024 CH0024F.
     N2CH0025 CH0025F.
     N2CH0026 CH0026F.
     N2CH0027 CH0027F.
     N2CH0028 CH0028F.
     N2CH0035 CH0035F.
     N2CH0036 CH0036F.
     N2CH0047 CH0047F.
     N2CH0055 CH0055F.
     N2CH0056 CH0056F.
     N2CH0057 CH0057F.
     N2CH0059 CH0059F.
     N2CH0060 CH0060F.
     N2CH0062 CH0062F.
     N2CH0064 CH0064F.
     N2CH0065 CH0065F.
     N2CH0066 CH0066F.
     N2CH0067 CH0067F.
     N2CH0068 CH0068F.
     N2CH0069 CH0069F.
     N2CH0070 CH0070F.
     N2CH0071 CH0071F.
     N2CH0072 CH0072F.
     N2CH0073 CH0073F.
     N2CH0076 CH0076F.
     N2CH0079 CH0079F.
     N2CH0080 CH0080F.
     N2CH0081 CH0081F.
     N2CH0091 CH0091F.
     N2CH0092 CH0092F.
     N2CH0093 CH0093F.
     N2CH0094 CH0094F.
     N2CH0095 CH0095F.
     N2CH0096 CH0096F.
     N2CH0097 CH0097F.
     N2CH0098 CH0098F.
     N2CH0099 CH0099F.
     N2CH0100 CH0100F.
     N2CH0101 CH0101F.
     N2CH0103 CH0103F.
     N2CH0104 CH0104F.
     N2CH0105 CH0105F.
     N2CH0106 CH0106F.
     N2CH0107 CH0107F.
     N2CH0109 CH0109F.
     N2CH0113 CH0113F.
     N2CH0115 CH0115F.
     N2CH0119 CH0119F.
     N2CH0121 CH0121F.
     N2CH0125 CH0125F.
     N2CH0127 CH0127F.
     N2CH0131 CH0131F.
     N2CH0133 CH0133F.
     N2CH0137 CH0137F.
     N2CH0139 CH0139F.
     N2CH0143 CH0143F.
     N2CH0145 CH0145F.
     N2CH0149 CH0149F.
     N2CH0151 CH0151F.
     N2CH0155 CH0155F.
     N2CH0157 CH0157F.
     N2CH0161 CH0161F.
     N2CH0163 CH0163F.
     N2CH0167 CH0167F.
     N2CH0169 CH0169F.
     N2CH0173 CH0173F.
     N2CH0177 CH0177F.
     N2CH0178 CH0178F.
     N2CH0179 CH0179F.
     N2CH0180 CH0180F.
     N2CH0181 CH0181F.
     N2CH0182 CH0182F.
     N2CH0183 CH0183F.
     N2CH0190 CH0190F.
     N2CH0206 CH0206F.
     N2CH0207 CH0207F.
     N2CH0208 CH0208F.
     N2CH0209 CH0209F.
     N2CH0210 CH0210F.
     N2CH0251 CH0251F.
     N2CH0255 CH0255F.
     N2CH0256 CH0256F.
     N2CH0257 CH0257F.
     N2CH0259 CH0259F.
     N2CH0260 CH0260F.
     N2CH0262 CH0262F.
     N2CH0264 CH0264F.
     N2CH0265 CH0265F.
     N2CH0266 CH0266F.
     N2CH0267 CH0267F.
     N2CH0268 CH0268F.
     N2CH0269 CH0269F.
     N2CH0270 CH0270F.
     N2CH0271 CH0271F.
     N2CH0272 CH0272F.
     N2CH0273 CH0273F.
     N2CH0276 CH0276F.
     N2CH0279 CH0279F.
     N2CH0280 CH0280F.
     N2CH0281 CH0281F.
     N2CH0431 CH0431F.
     N2CH0433 CH0433F.
     N2CH0435 CH0435F.
     N2CH0437 CH0437F.
     N2CH0439 CH0439F.
     N2CH0441 CH0441F.
     N2CH0443 CH0443F.
     N2CH0445 CH0445F.
     N2CH0447 CH0447F.
     N2CH0449 CH0449F.
     N2CH0450 CH0450F.
     N2CH0452 CH0452F.
     N2CH0453 CH0453F.
     N2CH0454 CH0454F.
     N2CH0455 CH0455F.
     N2CH0456 CH0456F.
     N2CH0457 CH0457F.
     N2CH0458 CH0458F.
     N2CH0460 CH0460F.
     N2CH0461 CH0461F.
     N2CH0462 CH0462F.
     N2CH0463 CH0463F.
     N2CH0464 CH0464F.
     N2CH0465 CH0465F.
     N2CH0466 CH0466F.
     N2CH0467 CH0467F.
     N2CH0468 CH0468F.
     N2CH0469 CH0469F.
     N2CH0470 CH0470F.
     N2CH0471 CH0471F.
     N2CH0472 CH0472F.
     N2CH0473 CH0473F.
     N2CH0474 CH0474F.
     N2CH0475 CH0475F.
     N2CH0476 CH0476F.
     N2CH0477 CH0477F.
     N2CH0478 CH0478F.
     N2CH0479 CH0479F.
     N2CH0480 CH0480F.
     N2CH0481 CH0481F.
     N2CH0482 CH0482F.
     N2CH0483 CH0483F.
     N2CH0484 CH0484F.
     N2CH0485 CH0485F.
     N2CH0486 CH0486F.
     N2CH0487 CH0487F.
     N2CH0488 CH0488F.
     N2CH0489 CH0489F.
     N2CH0490 CH0490F.
     N2CH0491 CH0491F.
     N2CH0492 CH0492F.
     N2CH0493 CH0493F.
     N2CH0494 CH0494F.
     N2CH0495 CH0495F.
     N2CH0496 CH0496F.
     N2CH0497 CH0497F.
     N2CH0498 CH0498F.
     N2CH0499 CH0499F.
     N2CH0500 CH0500F.
     N2CH0501 CH0501F.
     N2CH0502 CH0502F.
     N2CH0503 CH0503F.
     N2CH0504 CH0504F.
     N2CH0505 CH0505F.
     N2CH0506 CH0506F.
     N2CH0507 CH0507F.
     N2CH0508 CH0508F.
     N2CH0509 CH0509F.
     N2CH0510 CH0510F.
     N2CH0511 CH0511F.
     N2CH0512 CH0512F.
     N2CH0513 CH0513F.
     N2CH0514 CH0514F.
     N2CH0515 CH0515F.
     N2CH0516 CH0516F.
     N2CH0517 CH0517F.
     N2CH0518 CH0518F.
     N2CH0521 CH0521F.
     N2CH0523 CH0523F.
     N2CH0525 CH0525F.
     N2CH0527 CH0527F.
     N2CH0529 CH0529F.
     N2CH0531 CH0531F.
     N2CH0532 CH0532F.
     N2CH0533 CH0533F.
     N2CH0534 CH0534F.
     N2CH0535 CH0535F.
     N2CH0536 CH0536F.
     N2CH0537 CH0537F.
     N2CH0538 CH0538F.
     N2CH0539 CH0539F.
     N2CH0540 CH0540F.
     N2CH0541 CH0541F.
     N2CH0542 CH0542F.
     N2CH0543 CH0543F.
     N2CH0544 CH0544F.
     N2CH0545 CH0545F.
     N2CH0546 CH0546F.
     N2CH0547 CH0547F.
     N2CH0548 CH0548F.
     N2CH0549 CH0549F.
     N2CH0550 CH0550F.
     N2CH0551 CH0551F.
     N2CH0552 CH0552F.
     N2CH0553 CH0553F.
     N2CH0554 CH0554F.
     N2CH0555 CH0555F.
     N2CH0556 CH0556F.
     N2CH0557 CH0557F.
     N2CH0558 CH0558F.
     N2CH0559 CH0559F.
     N2CH0561 CH0561F.
     N2CH0563 CH0563F.
     N2CH0565 CH0565F.
     N2CH0567 CH0567F.
     N2CH0568 CH0568F.
     N2CH0571 CH0571F.
     N2CH0573 CH0573F.
     N2CH0574 CH0574F.
     N2CH0579 CH0579F.
     N2CH0580 CH0580F.
     N2CH0581 CH0581F.
     N2CH0582 CH0582F.
     N2CH0583 CH0583F.
     N2CH0585 CH0585F.
     N2CH0587 CH0587F.
     N2CH0589 CH0589F.
     N2CH0591 CH0591F.
     N2CH0593 CH0593F.
     N2CH0595 CH0595F.
     N2CH0597 CH0597F.
     N2CH0598 CH0598F.
     N2CH0599 CH0599F.
     N2CH0600 CH0600F.
     N2CH0601 CH0601F.
     N2CH0602 CH0602F.
     N2CH0603 CH0603F.
     N2CH0605 CH0605F.
     N2CH0607 CH0607F.
     N2CH0609 CH0609F.
     N2CH0611 CH0611F.
     N2CH0613 CH0613F.
     N2CH0615 CH0615F.
     N2CH0617 CH0617F.
     N2CH0619 CH0619F.
     N2CH0621 CH0621F.
     N2CH0623 CH0623F.
     N2CH0625 CH0625F.
     N2CH0627 CH0627F.
     N2CH0629 CH0629F.
     N2CH0631 CH0631F.
     N2CH0633 CH0633F.
     N2CH0635 CH0635F.
     N2CH0637 CH0637F.
     N2CH0639 CH0639F.
     N2CH0641 CH0641F.
     N2CH0643 CH0643F.
     N2CH0644 CH0644F.
     N2CH0645 CH0645F.
     N2CH0647 CH0647F.
     N2CH0648 CH0648F.
     N2CH0649 CH0649F.
     N2CH0650 CH0650F.
     N2CH0651 CH0651F.
     N2CH0652 CH0652F.
     N2CH0653 CH0653F.
     N2CH0654 CH0654F.
     N2CH0655 CH0655F.
     N2CH0659 CH0659F.
     N2CH0663 CH0663F.
     N2CH0667 CH0667F.
     N2CH0671 CH0671F.
     N2CH0672 CH0672F.
     N2CH0674 CH0674F.
     N2CH0676 CH0676F.
     N2CH0677 CH0677F.
     N2CH0679 CH0679F.
     N2CH0681 CH0681F.
     N2CH0683 CH0683F.
     N2CH0685 CH0685F.
     N2CH0687 CH0687F.
     N2CH0689 CH0689F.
     N2CH0691 CH0691F.
     N2CH0693 CH0693F.
     N2CH0695 CH0695F.
     N2CH0697 CH0697F.
     N2CH0698 CH0698F.
     N2CH0699 CH0699F.
     N2CH0700 CH0700F.
     N2CH0701 CH0701F.
     N2CH0702 CH0702F.
     N2CH0703 CH0703F.
     N2CH0704 CH0704F.
     N2CH0705 CH0705F.
     N2CH0706 CH0706F.
     N2CH0707 CH0707F.
     N2CH0708 CH0708F.
     N2CH0709 CH0709F.
     N2CH0710 CH0710F.
     N2CH0711 CH0711F.
     N2CH0712 CH0712F.
     N2CH0713 CH0713F.
     N2CH0714 CH0714F.
     N2CH0715 CH0715F.
     N2CH0716 CH0716F.
     N2CH0717 CH0717F.
     N2CH0719 CH0719F.
     N2CH0721 CH0721F.
     N2CH0723 CH0723F.
     N2CH0725 CH0725F.
     N2CH0727 CH0727F.
     N2CH0728 CH0728F.
     N2CH0729 CH0729F.
     N2CH0731 CH0731F.
     N2CH0733 CH0733F.
     N2CH0734 CH0734F.
     N2CH0735 CH0735F.
     N2CH0736 CH0736F.
     N2CH0737 CH0737F.
     N2CH0738 CH0738F.
     N2CH0739 CH0739F.
     N2CH0740 CH0740F.
     N2CH0741 CH0741F.
     N2CH0742 CH0742F.
     N2CH0743 CH0743F.
     N2CH0744 CH0744F.
     N2CH0745 CH0745F.
     N2CH0746 CH0746F.
     N2CH0747 CH0747F.
     N2CH0748 CH0748F.
     N2CH0750 CH0750F.
     N2CH0751 CH0751F.
     N2CH0752 CH0752F.
     N2CH0753 CH0753F.
     N2CH0754 CH0754F.
     N2CH0755 CH0755F.
     N2CH0756 CH0756F.
     N2CH0757 CH0757F.
     N2CH0758 CH0758F.
     N2CH0759 CH0759F.
     N2CH0760 CH0760F.
     N2CH0761 CH0761F.
     N2CH0762 CH0762F.
     N2CH0763 CH0763F.
     N2CH0764 CH0764F.
     N2CH0765 CH0765F.
     N2CH0767 CH0767F.
     N2CH0768 CH0768F.
     N2CH0769 CH0769F.
     N2CH0770 CH0770F.
     N2CH0771 CH0771F.
     N2CH0773 CH0773F.
     N2CH0775 CH0775F.
     N2CH0777 CH0777F.
     N2CH0779 CH0779F.
     N2CH0780 CH0780F.
     N2CH0781 CH0781F.
     N2CH0782 CH0782F.
     N2CH0783 CH0783F.
     N2CH0784 CH0784F.
     N2CH0785 CH0785F.
     N2CH0786 CH0786F.
     N2CH0787 CH0787F.
     N2CH0788 CH0788F.
     N2CH0789 CH0789F.
     N2CH0790 CH0790F.
     N2CH0791 CH0791F.
     N2CH0792 CH0792F.
     N2CH0793 CH0793F.
     N2CH0794 CH0794F.
     N2CH0795 CH0795F.
     N2CH0796 CH0796F.
     N2CH0797 CH0797F.
     N2CH0798 CH0798F.
     N2CH0799 CH0799F.
     N2CH0800 CH0800F.
     N2CH0801 CH0801F.
     N2CH0802 CH0802F.
     N2CH0803 CH0803F.
     N2CH0804 CH0804F.
     N2CH0805 CH0805F.
     N2CH0806 CH0806F.
     N2CH0823 CH0823F.
     N2CH0825 CH0825F.
     N2CH0826 CH0826F.
     N2CH0827 CH0827F.
     N2CH0828 CH0828F.
     N2CH0829 CH0829F.
     N2CH0830 CH0830F.
     N2CH0831 CH0831F.
     N2CH0832 CH0832F.
     N2CH0833 CH0833F.
     N2CH0834 CH0834F.
     N2CH0835 CH0835F.
     N2CH0836 CH0836F.
     N2CH0837 CH0837F.
     N2CH0838 CH0838F.
     N2CH0839 CH0839F.
     N2CH0840 CH0840F.
     N2CH0841 CH0841F.
     N2CH0842 CH0842F.
     N2CH0843 CH0843F.
     N2CH0844 CH0844F.
     N2CH0846 CH0846F.
     N2CH0847 CH0847F.
     N2CH0848 CH0848F.
     N2CH0850 CH0850F.
     N2CH0851 CH0851F.
     N2CH0852 CH0852F.
     N2CH0854 CH0854F.
     N2CH0857 CH0857F.
     N2CH0858 CH0858F.
     N2CH0860 CH0860F.
     N2CH0863 CH0863F.
     N2CH0864 CH0864F.
     N2CH0866 CH0866F.
     N2CH0875 CH0875F.
     N2CH0881 CH0881F.
     N2CH0884 CH0884F.
     N2CH0887 CH0887F.
     N2CH0890 CH0890F.
     N2CH0893 CH0893F.
     N2CH0896 CH0896F.
     ;

     INPUT
         SEQN 1-5
         N2CH0006 6-9
         N2CH0010 10
         N2CH0011 11
         N2CH0012 12
         N2CH0013 13-23
         N2CH0024 24
         N2CH0025 25
         N2CH0026 26
         N2CH0027 27
         N2CH0028 28
         N2CH0029 29
         N2CH0030 30-31
         N2CH0032 32-33
         N2CH0034 34
         N2CH0035 35
         N2CH0036 36
         N2CH0037 37-41
         N2CH0042 42-44
         N2CH0045 45-46
         N2CH0047 47-48
         N2CH0049 49-50
         N2CH0051 51-52
         N2CH0053 53-54
         N2CH0055 55
         N2CH0056 56
         N2CH0057 57-58
         N2CH0059 59
         N2CH0060 60-61
         N2CH0062 62-63
         N2CH0064 64
         N2CH0065 65
         N2CH0066 66
         N2CH0067 67
         N2CH0068 68
         N2CH0069 69
         N2CH0070 70
         N2CH0071 71
         N2CH0072 72
         N2CH0073 73-75
         N2CH0076 76-78
         N2CH0079 79
         N2CH0080 80
         N2CH0081 81
         N2CH0082 82-90
         N2CH0091 91
         N2CH0092 92
         N2CH0093 93
         N2CH0094 94
         N2CH0095 95
         N2CH0096 96
         N2CH0097 97
         N2CH0098 98
         N2CH0099 99
         N2CH0100 100
         N2CH0101 101-102
         N2CH0103 103
         N2CH0104 104
         N2CH0105 105
         N2CH0106 106
         N2CH0107 107-108
         N2CH0109 109-112
         N2CH0113 113
         N2CH0114 114
         N2CH0115 115-118
         N2CH0119 119
         N2CH0120 120
         N2CH0121 121-124
         N2CH0125 125
         N2CH0126 126
         N2CH0127 127-130
         N2CH0131 131
         N2CH0132 132
         N2CH0133 133-136
         N2CH0137 137
         N2CH0138 138
         N2CH0139 139-142
         N2CH0143 143
         N2CH0144 144
         N2CH0145 145-148
         N2CH0149 149
         N2CH0150 150
         N2CH0151 151-154
         N2CH0155 155
         N2CH0156 156
         N2CH0157 157-160
         N2CH0161 161
         N2CH0162 162
         N2CH0163 163-166
         N2CH0167 167
         N2CH0168 168
         N2CH0169 169-172
         N2CH0173 173-176
         N2CH0177 177
         N2CH0178 178
         N2CH0179 179
         N2CH0180 180
         N2CH0181 181
         N2CH0182 182
         N2CH0183 183
         N2CH0184 184-185
         N2CH0186 186-187
         N2CH0188 188-189
         N2CH0190 190-191
         N2CH0192 192-205
         N2CH0206 206
         N2CH0207 207
         N2CH0208 208
         N2CH0209 209
         N2CH0210 210-212
         N2CH0213 213-246
         N2CH0247 247-248
         N2CH0249 249-250
         N2CH0251 251-252
         N2CH0253 253-254
         N2CH0255 255
         N2CH0256 256
         N2CH0257 257-258
         N2CH0259 259
         N2CH0260 260-261
         N2CH0262 262-263
         N2CH0264 264
         N2CH0265 265
         N2CH0266 266
         N2CH0267 267
         N2CH0268 268
         N2CH0269 269
         N2CH0270 270
         N2CH0271 271
         N2CH0272 272
         N2CH0273 273-275
         N2CH0276 276-278
         N2CH0279 279
         N2CH0280 280
         N2CH0281 281
         N2CH0282 282-287
         N2CH0288 288-293
         N2CH0294 294-299
         N2CH0300 300-305
         N2CH0306 306-311
         N2CH0312 312-317
         N2CH0318 318-323
         N2CH0324 324-325
         N2CH0326 326
         N2CH0327 327
         N2CH0328 328-400
         N2CH0401 401-404
         N2CH0405 405-430
         N2CH0431 431-432
         N2CH0433 433-434
         N2CH0435 435
         N2CH0436 436
         N2CH0437 437-438
         N2CH0439 439-440
         N2CH0441 441-442
         N2CH0443 443-444
         N2CH0445 445-446
         N2CH0447 447-448
         N2CH0449 449
         N2CH0450 450-451
         N2CH0452 452
         N2CH0453 453
         N2CH0454 454
         N2CH0455 455
         N2CH0456 456
         N2CH0457 457
         N2CH0458 458-459
         N2CH0460 460
         N2CH0461 461
         N2CH0462 462
         N2CH0463 463
         N2CH0464 464
         N2CH0465 465
         N2CH0466 466
         N2CH0467 467
         N2CH0468 468
         N2CH0469 469
         N2CH0470 470
         N2CH0471 471
         N2CH0472 472
         N2CH0473 473
         N2CH0474 474
         N2CH0475 475
         N2CH0476 476
         N2CH0477 477
         N2CH0478 478
         N2CH0479 479
         N2CH0480 480
         N2CH0481 481
         N2CH0482 482
         N2CH0483 483
         N2CH0484 484
         N2CH0485 485
         N2CH0486 486
         N2CH0487 487
         N2CH0488 488
         N2CH0489 489
         N2CH0490 490
         N2CH0491 491
         N2CH0492 492
         N2CH0493 493
         N2CH0494 494
         N2CH0495 495
         N2CH0496 496
         N2CH0497 497
         N2CH0498 498
         N2CH0499 499
         N2CH0500 500
         N2CH0501 501
         N2CH0502 502
         N2CH0503 503
         N2CH0504 504
         N2CH0505 505
         N2CH0506 506
         N2CH0507 507
         N2CH0508 508
         N2CH0509 509
         N2CH0510 510
         N2CH0511 511
         N2CH0512 512
         N2CH0513 513
         N2CH0514 514
         N2CH0515 515
         N2CH0516 516
         N2CH0517 517
         N2CH0518 518-519
         N2CH0520 520
         N2CH0521 521-522
         N2CH0523 523-524
         N2CH0525 525-526
         N2CH0527 527-528
         N2CH0529 529-530
         N2CH0531 531
         N2CH0532 532
         N2CH0533 533
         N2CH0534 534
         N2CH0535 535
         N2CH0536 536
         N2CH0537 537
         N2CH0538 538
         N2CH0539 539
         N2CH0540 540
         N2CH0541 541
         N2CH0542 542
         N2CH0543 543
         N2CH0544 544
         N2CH0545 545
         N2CH0546 546
         N2CH0547 547
         N2CH0548 548
         N2CH0549 549
         N2CH0550 550
         N2CH0551 551
         N2CH0552 552
         N2CH0553 553
         N2CH0554 554
         N2CH0555 555
         N2CH0556 556
         N2CH0557 557
         N2CH0558 558
         N2CH0559 559-560
         N2CH0561 561
         N2CH0562 562
         N2CH0563 563-564
         N2CH0565 565-566
         N2CH0567 567
         N2CH0568 568
         N2CH0569 569-570
         N2CH0571 571-572
         N2CH0573 573
         N2CH0574 574
         N2CH0575 575-576
         N2CH0577 577-578
         N2CH0579 579
         N2CH0580 580
         N2CH0581 581
         N2CH0582 582
         N2CH0583 583-584
         N2CH0585 585-586
         N2CH0587 587-588
         N2CH0589 589-590
         N2CH0591 591
         N2CH0592 592
         N2CH0593 593-594
         N2CH0595 595-596
         N2CH0597 597
         N2CH0598 598
         N2CH0599 599
         N2CH0600 600
         N2CH0601 601
         N2CH0602 602
         N2CH0603 603-604
         N2CH0605 605-606
         N2CH0607 607-608
         N2CH0609 609-610
         N2CH0611 611-612
         N2CH0613 613-614
         N2CH0615 615-616
         N2CH0617 617-618
         N2CH0619 619-620
         N2CH0621 621-622
         N2CH0623 623-624
         N2CH0625 625-626
         N2CH0627 627-628
         N2CH0629 629-630
         N2CH0631 631-632
         N2CH0633 633-634
         N2CH0635 635-636
         N2CH0637 637-638
         N2CH0639 639-640
         N2CH0641 641-642
         N2CH0643 643
         N2CH0644 644
         N2CH0645 645-646
         N2CH0647 647
         N2CH0648 648
         N2CH0649 649
         N2CH0650 650
         N2CH0651 651
         N2CH0652 652
         N2CH0653 653
         N2CH0654 654
         N2CH0655 655-658
         N2CH0659 659-662
         N2CH0663 663-666
         N2CH0667 667-670
         N2CH0671 671
         N2CH0672 672-673
         N2CH0674 674-675
         N2CH0676 676
         N2CH0677 677-678
         N2CH0679 679-680
         N2CH0681 681
         N2CH0682 682
         N2CH0683 683-684
         N2CH0685 685-686
         N2CH0687 687
         N2CH0688 688
         N2CH0689 689-690
         N2CH0691 691-692
         N2CH0693 693
         N2CH0694 694
         N2CH0695 695-696
         N2CH0697 697
         N2CH0698 698
         N2CH0699 699
         N2CH0700 700
         N2CH0701 701
         N2CH0702 702
         N2CH0703 703
         N2CH0704 704
         N2CH0705 705
         N2CH0706 706
         N2CH0707 707
         N2CH0708 708
         N2CH0709 709
         N2CH0710 710
         N2CH0711 711
         N2CH0712 712
         N2CH0713 713
         N2CH0714 714
         N2CH0715 715
         N2CH0716 716
         N2CH0717 717
         N2CH0718 718
         N2CH0719 719-720
         N2CH0721 721-722
         N2CH0723 723-724
         N2CH0725 725-726
         N2CH0727 727
         N2CH0728 728
         N2CH0729 729
         N2CH0730 730
         N2CH0731 731-732
         N2CH0733 733
         N2CH0734 734
         N2CH0735 735
         N2CH0736 736
         N2CH0737 737
         N2CH0738 738
         N2CH0739 739
         N2CH0740 740
         N2CH0741 741
         N2CH0742 742
         N2CH0743 743
         N2CH0744 744
         N2CH0745 745
         N2CH0746 746
         N2CH0747 747
         N2CH0748 748-749
         N2CH0750 750
         N2CH0751 751
         N2CH0752 752
         N2CH0753 753
         N2CH0754 754
         N2CH0755 755
         N2CH0756 756
         N2CH0757 757
         N2CH0758 758
         N2CH0759 759
         N2CH0760 760
         N2CH0761 761
         N2CH0762 762
         N2CH0763 763
         N2CH0764 764
         N2CH0765 765-766
         N2CH0767 767
         N2CH0768 768
         N2CH0769 769
         N2CH0770 770
         N2CH0771 771
         N2CH0772 772
         N2CH0773 773-774
         N2CH0775 775-776
         N2CH0777 777-778
         N2CH0779 779
         N2CH0780 780
         N2CH0781 781
         N2CH0782 782
         N2CH0783 783
         N2CH0784 784
         N2CH0785 785
         N2CH0786 786
         N2CH0787 787
         N2CH0788 788
         N2CH0789 789
         N2CH0790 790
         N2CH0791 791
         N2CH0792 792
         N2CH0793 793
         N2CH0794 794
         N2CH0795 795
         N2CH0796 796
         N2CH0797 797
         N2CH0798 798
         N2CH0799 799
         N2CH0800 800
         N2CH0801 801
         N2CH0802 802
         N2CH0803 803
         N2CH0804 804
         N2CH0805 805
         N2CH0806 806
         N2CH0807 807-810
         N2CH0811 811-814
         N2CH0815 815-818
         N2CH0819 819-822
         N2CH0823 823-824
         N2CH0825 825
         N2CH0826 826
         N2CH0827 827
         N2CH0828 828
         N2CH0829 829
         N2CH0830 830
         N2CH0831 831
         N2CH0832 832
         N2CH0833 833
         N2CH0834 834
         N2CH0835 835
         N2CH0836 836
         N2CH0837 837
         N2CH0838 838
         N2CH0839 839
         N2CH0840 840
         N2CH0841 841
         N2CH0842 842
         N2CH0843 843
         N2CH0844 844-845
         N2CH0846 846
         N2CH0847 847
         N2CH0848 848-849
         N2CH0850 850
         N2CH0851 851
         N2CH0852 852-853
         N2CH0854 854-856
         N2CH0857 857
         N2CH0858 858-859
         N2CH0860 860-862
         N2CH0863 863
         N2CH0864 864-865
         N2CH0866 866
         N2CH0867 867-874
         N2CH0875 875
         N2CH0876 876-880
         N2CH0881 881-883
         N2CH0884 884-886
         N2CH0887 887-889
         N2CH0890 890-892
         N2CH0893 893-895
         N2CH0896 896-898
         N2CH0899 899-900
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N2CH0006 = "CATALOG NUMBER"
         N2CH0010 = "UNUSED POSITION"
         N2CH0011 = "SIZE OF PLACE (SEE DETAILED NOTES)"
         N2CH0012 = "SMSA-NOT SMSA (SEE DETAILED NOTES)"
         N2CH0013 = "UNUSED POSITION"
         N2CH0024 = "TYPE OF LIVING QUARTERS (QUESTION 7)"
         N2CH0025 = "LAND USAGE (QUESTION 9)"
         N2CH0026 = "IF RURAL, ASKED DOES THIS PLACE HAVE ..."
         N2CH0027 = "IF 10 ACRES OR MORE, ASKED IF IN THE ..."
         N2CH0028 = "IF LESS THAN 10 ACRES, ASKED IF IN T ..."
         N2CH0029 = "UNUSED POSITION"
         N2CH0030 = "TOTAL NUMBER OF PERSONS IN HOUSEHOLD"
         N2CH0032 = "TOTAL NUMBER OF SAMPLE PERSONS IN FAMILY"
         N2CH0034 = "UNUSED POSITION"
         N2CH0035 = "FAMILY RELATIONSHIP"
         N2CH0036 = "EXAMINATION STATUS"
         N2CH0037 = "FAMILY UNIT SEQUENCE NUMBER (SEE DET ..."
         N2CH0042 = "UNUSED POSITION"
         N2CH0045 = "AGE, MONTHS (AT INTERVIEW) (QUESTION 3)"
         N2CH0047 = "AGE, YEARS ( AT INTERVIEW) (QUESTION 3)"
         N2CH0049 = "UNUSED POSITION"
         N2CH0051 = "DATE-OF-BIRTH-MONTH (QUESTION 2)"
         N2CH0053 = "DATE-OF-BIRTH-YEAR (QUESTION 2)"
         N2CH0055 = "SEX (QUESTION 4)"
         N2CH0056 = "RACE"
         N2CH0057 = "IN WHAT STATE WAS HE/SHE BORN? (QUES ..."
         N2CH0059 = "IS HE/SHE MARRIED, WIDOWED, SEPARATE ..."
         N2CH0060 = "NATIONAL ORIGIN OR ANCESTRY (QUESTION 8)"
         N2CH0062 = "HIGHEST GRADE OF SCHOOL ATTENDED (QU ..."
         N2CH0064 = "GRADE COMPLETED (QUESTION 9B)"
         N2CH0065 = "WHAT WAS HE/SHE DOING DURING MOST OF ..."
         N2CH0066 = "WHAT WAS HE/SHE DOING?"
         N2CH0067 = "DID HE/SHE WORK AT A JOB OR BUSINESS ..."
         N2CH0068 = "DID HE/SHE WORK FULL OR PART TIME WH ..."
         N2CH0069 = "WAS HE/SHE WORKING WITHIN THE LAST T ..."
         N2CH0070 = "EVEN THOUGH HE/SHE DID NOT WORK, DOE ..."
         N2CH0071 = "WAS HE/SHE LOOKING FOR WORK OR ON  L ..."
         N2CH0072 = "WHICH? LOOKING FOR WORK OR ON LAYOFF ..."
         N2CH0073 = "WHAT KIND OF INDUSTRY OR BUSINESS IS ..."
         N2CH0076 = "WHAT KIND OF WORK WAS HE/SHE DOING?  ..."
         N2CH0079 = "WAS HE/SHE IN PRIVATE COMPANY OR  BU ..."
         N2CH0080 = "DID HE/SHE EVER SERVE IN THE ARMED F ..."
         N2CH0081 = "WHEN DID HE/SHE SERVE? (QUESTION 13B)"
         N2CH0082 = "UNUSED POSITION"
         N2CH0091 = "HOW MANY ROOMS ARE IN THIS? COUNT TH ..."
         N2CH0092 = "HOW MANY BEDROOMS ARE IN THIS? (QUES ..."
         N2CH0093 = "ASKED ONLY OF UNRELATED HOUSEHOLD ME ..."
         N2CH0094 = "DO YOU HAVE ACCESS TO COMPLETE KITCH ..."
         N2CH0095 = "DO YOU HAVE ACCESS TO A RANGE OR COO ..."
         N2CH0096 = "DO YOU HAVE ACCESS TO A REFRIGERATOR ..."
         N2CH0097 = "DO YOU HAVE ACCESS TO A SINK WITH PI ..."
         N2CH0098 = "IS THERE PIPED WATER IN THIS HOUSE ( ..."
         N2CH0099 = "IS THERE BOTH HOT AND COLD WATER? (Q ..."
         N2CH0100 = "ARE THESE KITCHEN FACILITIES USED BY ..."
         N2CH0101 = "WHAT IS THE MAIN TYPE OF HEATING SYS ..."
         N2CH0103 = "DO YOU HAVE AIR CONDITIONING (QUESTI ..."
         N2CH0104 = "HOW MANY MOTOR VEHICLES ARE OWNED OR ..."
         N2CH0105 = "IS ANY LANGUAGE OTHER THAN ENGLISH   ..."
         N2CH0106 = "WHAT LANGUAGE? (QUESTION 19B)"
         N2CH0107 = "WHICH OF THESE INCOME GROUPS REPRESE ..."
         N2CH0109 = "DURING THE PAST 12 MONTHS, HOW MUCH  ..."
         N2CH0113 = "SOCIAL SECURITY OR RAILROAD RETIREME ..."
         N2CH0114 = "UNUSED POSITION"
         N2CH0115 = "IF YES, HOW MUCH?"
         N2CH0119 = "WELFARE PAYMENTS OR OTHER PUBLIC ASS ..."
         N2CH0120 = "UNUSED POSITION"
         N2CH0121 = "IF YES, HOW MUCH? "
         N2CH0125 = "UNEMPLOYMENT COMPENSATION OR WORKMEN ..."
         N2CH0126 = "UNUSED POSITION"
         N2CH0127 = "IF YES, HOW MUCH?"
         N2CH0131 = "GOVERNMENT EMPLOYEE PENSION OR PRIVA ..."
         N2CH0132 = "UNUSED POSITION"
         N2CH0133 = "IF YES, HOW MUCH?"
         N2CH0137 = "DIVIDENDS, INTEREST OR RENT? (QUESTI ..."
         N2CH0138 = "UNUSED POSITION"
         N2CH0139 = "IF YES, HOW MUCH?"
         N2CH0143 = "NET INCOME FROM THEIR OWN BUSINESS ( ..."
         N2CH0144 = "UNUSED POSITION"
         N2CH0145 = "IF YES, HOW MUCH?"
         N2CH0149 = "NET INCOME FROM A FARM? (QUESTION 22G)"
         N2CH0150 = "UNUSED POSITION"
         N2CH0151 = "IF YES, HOW MUCH?"
         N2CH0155 = "VETERAN'S PAYMENT? (QUESTION 22H)"
         N2CH0156 = "UNUSED POSITION"
         N2CH0157 = "IF YES, HOW MUCH?"
         N2CH0161 = "ALIMONY, CHILD SUPPORT, OR OTHER SUP ..."
         N2CH0162 = "UNUSED POSITION"
         N2CH0163 = "IF YES, HOW MUCH?"
         N2CH0167 = "ANY OTHER INCOME? (QUESTION 22J)"
         N2CH0168 = "UNUSED POSITION"
         N2CH0169 = "IF YES, HOW MUCH?"
         N2CH0173 = "TOTAL AMOUNT-QUESTION 21 AND 22"
         N2CH0177 = "CHECK ITEM B"
         N2CH0178 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N2CH0179 = "ARE YOU BUYING FOOD STAMPS NOW? (QUE ..."
         N2CH0180 = "WHAT IS THE MAIN REASON YOU ARE NOT  ..."
         N2CH0181 = "ARE YOU CERTIFIED FOR THE COMMODITY  ..."
         N2CH0182 = "ARE YOU RECEIVING COMMODITY FOODS NO ..."
         N2CH0183 = "WHY AREN'T YOU PARTICIPATING IN THE  ..."
         N2CH0184 = "CONTROL RECORD - DATE OF EXAM, MONTH"
         N2CH0186 = "CONTROL RECORD - DATE OF EXAM,  DAY"
         N2CH0188 = "CONTROL RECORD - DATE OF EXAM, YEAR"
         N2CH0190 = "AGE, YEARS (AT EXAMINATION)"
         N2CH0192 = "UNUSED POSITION"
         N2CH0206 = "RACE SEX RECODE FOR SAMPLE PERSON (S ..."
         N2CH0207 = "FARM, NON-FARM RECODE FOR SAMPLE PER ..."
         N2CH0208 = "INTERVIEW STATUS"
         N2CH0209 = "REGION (SEE DETAILED NOTES)"
         N2CH0210 = "POVERTY INDEX (X.XX) (SEE DETAILED N ..."
         N2CH0213 = "UNUSED POSITION"
         N2CH0247 = "AGE YEARS (QUESTION 3)"
         N2CH0249 = "UNUSED POSITION"
         N2CH0251 = "DATE-OF-BIRTH-MONTH (QUESTION 2)"
         N2CH0253 = "DATE-OF-BIRTH-YEAR (QUESTION 2)"
         N2CH0255 = "SEX (QUESTION 4)"
         N2CH0256 = "RACE (QUESTION 5) (SEE DETAILED NOTES)"
         N2CH0257 = "IN WHAT STATE WAS HE/SHE BORN? (QUES ..."
         N2CH0259 = "IS HE/SHE MARRIED, WIDOWED, SEPARATE ..."
         N2CH0260 = "NATIONAL ORIGIN OR ANCESTRY (QUESTION 8)"
         N2CH0262 = "HIGHEST GRADE OF SCHOOL ATTENDED (QU ..."
         N2CH0264 = "GRADE COMPLETED (QUESTION 9B)"
         N2CH0265 = "WHAT WAS HE/SHE DOING MOST OF THE PA ..."
         N2CH0266 = "WHAT WAS HE//SHE DOING? (QUESTION 10B)"
         N2CH0267 = "DID HE/SHE WORK AT A JOB OR BUSINESS ..."
         N2CH0268 = "DID HE/SHE WORK FULL OR PART TIME WH ..."
         N2CH0269 = "DID HE/SHE WORK AT ANY TIME THE LAST ..."
         N2CH0270 = "EVEN THOUGH HE/SHE DID NOT WORK, DOE ..."
         N2CH0271 = "WAS HE/SHE LOOKING FOR WORK OR ON  L ..."
         N2CH0272 = "WHICH? LOOKING FOR WORK OR ON LAYOFF ..."
         N2CH0273 = "TYPE OF INDUSTRY OR BUSINESS? (QUEST ..."
         N2CH0276 = "WHAT KIND OF WORK WAS HE/SHE DOING?  ..."
         N2CH0279 = "WAS HE/SHE IN A PRIVATE COMPANY OR   ..."
         N2CH0280 = "DID HE/SHE EVER SERVE IN THE ARMED F ..."
         N2CH0281 = "WHEN DID HE/SHE SERVE? (QUESTION 13B)"
         N2CH0282 = "EXAMINED FINAL WEIGHT"
         N2CH0288 = "MEDICAL HISTORY INTERVIEW FINAL WEIGHT"
         N2CH0294 = "GLUCOSE TOLERANCE TEST FINAL EXAMINE ..."
         N2CH0300 = "LEAD FINAL EXAMINED WEIGHT"
         N2CH0306 = "CARBOXYHEMOGLOBIN FINAL EXAMINED WEIGHT"
         N2CH0312 = "BILE ACIDS FINAL EXAMINED WEIGHT"
         N2CH0318 = "UNUSED POSITION"
         N2CH0324 = "STRATA"
         N2CH0326 = "PSEUDO PRIMARY SAMPLING UNITS"
         N2CH0327 = "POVERTY/NON-POVERTY SEGMENTS"
         N2CH0328 = "UNUSED POSITION"
         N2CH0401 = "CATALOG NUMBER: 5010"
         N2CH0405 = "UNUSED POSITION"
         N2CH0431 = "HOW MUCH DID --WEIGH WHEN HE WAS BOR ..."
         N2CH0433 = "OUNCES "
         N2CH0435 = "WAS--BORN PREMATURELY?"
         N2CH0436 = "UNUSED POSITIONS"
         N2CH0437 = "HOW WAS--'S MOTHER WHEN HE WAS BORN?"
         N2CH0439 = "HOW MANY CHILDREN HAS--'S MOTHER EVE ..."
         N2CH0441 = "HOW MANY WERE BORN BEFORE--?"
         N2CH0443 = "HOW MANY OF --'S BROTHERS AND SISTER ..."
         N2CH0445 = "HOW OLD WAS--WHEN HE FIRST SAT UP BY ..."
         N2CH0447 = "HOW OLD WAS--WHEN HE FIRST WALKED BY ..."
         N2CH0449 = "WAS--BREASTFED AT  ANY TIME ON A REG ..."
         N2CH0450 = "HOW OLD WAS--WHEN HE STOPPED BREASTF ..."
         N2CH0452 = "AS A BABY, WAS--AT ANY TIME REGULARL ..."
         N2CH0453 = "WAS THE TYPE OF MILK OR FORMULA USED ..."
         N2CH0454 = "COMMERCIALLY PREPARED NONFAT MILK SO ..."
         N2CH0455 = "A SOY BASE FORMULA?"
         N2CH0456 = "WAS THE TYPE OF MILK OR FORMULA USED ..."
         N2CH0457 = "ANY OTHER TYPE?"
         N2CH0458 = "HOW OLD WAS--WHEN HE FIRST STARTED E ..."
         N2CH0460 = "DOES OR DID -- HAVE ANY CONDITIONS H ..."
         N2CH0461 = "EYES?"
         N2CH0462 = "EARS?"
         N2CH0463 = "MOUTH OR THROAT?"
         N2CH0464 = "DOES OR DID--HEAVE ANY CONDITIONS HE ..."
         N2CH0465 = "KIDNEYS OR URINARY SYSTEM?"
         N2CH0466 = "MUSCLES, BONES OR JOINTS?"
         N2CH0467 = "DOES OR DID--HAVE ANY CONDITIONS HE  ..."
         N2CH0468 = "ANY OTHER CONDITION THAT HE WAS BORN ..."
         N2CH0469 = "WOULD YOU SAY --'S HEALTH IN GENERAL ..."
         N2CH0470 = "HAS -- EVER ACCIDENTALLY SWALLOWED A ..."
         N2CH0471 = "DID THIS RESULTS IN A SERIOUS DAMAGE?"
         N2CH0472 = "HAS -- EVER HAD ANY BAD ACCIDENTS?"
         N2CH0473 = "IN THE ACCIDENT(S) - WAS HE BURNED?"
         N2CH0474 = "DID HE BREAK A BONE?"
         N2CH0475 = "IN THE ACCIDENT(S) - WAS HE KNOCKED  ..."
         N2CH0476 = "ANYTHING ELSE?"
         N2CH0477 = "DOES -- STILL HAVE ANY EFFECTS OF TH ..."
         N2CH0478 = "HAS -- EVER STAYED OVERNIGHT OR LONG ..."
         N2CH0479 = "HAS -- EVER HAD AN  OPERATION?"
         N2CH0480 = "IS -- UNABLE TO DO SOME THINGS BECAU ..."
         N2CH0481 = "HOW MAY TIMES HAS -- HAD PNEUMONIA"
         N2CH0482 = "DOES HE HAVE IT NOW?"
         N2CH0483 = "DURING THE PAST 6 MONTH HOW MANY COL ..."
         N2CH0484 = "DOES HE HAVE ONE NOW?"
         N2CH0485 = "DURING THE PAST 6 MONTH HOW MANY TIM ..."
         N2CH0486 = "DOES HE HAVE IT NOW?"
         N2CH0487 = "DOES -- EAT CLAY, STARCH, PAINT, PLA ..."
         N2CH0488 = "IS IT - CLAY?"
         N2CH0489 = "STARCH?"
         N2CH0490 = "PAINT OR PLASTER?"
         N2CH0491 = "IS IT - DIRT?"
         N2CH0492 = "ANY OTHER MATERIAL?"
         N2CH0493 = "DOES -- HAVE UNUSUAL TROUBLE SEEING  ..."
         N2CH0494 = "DO YOU HAVE ANY REASON TO THINK THAT ..."
         N2CH0495 = "HAS -- EVER HAD A TEST TO SEE WHETHE ..."
         N2CH0496 = "HAS -- EVER BEEN TREATED FOR: ABNORM ..."
         N2CH0497 = "TUBERCULOSIS?"
         N2CH0498 = "ANY OTHER CHEST OR LONG CONDITIONS"
         N2CH0499 = "HAS -- EVER BEEN TREATED FOR: CONGEN ..."
         N2CH0500 = "RHEUMATIC HEART DISEASE?"
         N2CH0501 = "ANY OTHER HEART CONDITION?"
         N2CH0502 = "DIABETES?"
         N2CH0503 = "HAS -- EVER BEEN TREATED FOR EPILEPS ..."
         N2CH0504 = "STOMACH OR INTESTINAL DISORDER, EXCL ..."
         N2CH0505 = "LIVER DISORDER?"
         N2CH0506 = "THYROID DISEASE OR GOITER?"
         N2CH0507 = "HAS -- EVER BEEN TREATED FOR CANCER  ..."
         N2CH0508 = "HAS -- EVER HAD ANY SKIN TESTS FOR A ..."
         N2CH0509 = "DID -- EVER HAVE A POSITIVE REACTION ..."
         N2CH0510 = "GRASS?"
         N2CH0511 = "DID -- EVER HAVE A POSITIVE REACTION ..."
         N2CH0512 = "HOUSE DUST?"
         N2CH0513 = "MOLD?"
         N2CH0514 = "BACTERIA?"
         N2CH0515 = "DID -- EVER HAVE A POSITIVE REACTION ..."
         N2CH0516 = "HAS -- EVER HAD ALLERGY SHOTS?"
         N2CH0517 = "HAS -- EVER HAD AN REACTION TO AN AL ..."
         N2CH0518 = "DID A DOCTOR EVER TELL YOU THAT -- H ..."
         N2CH0520 = "UNUSED POSITION"
         N2CH0521 = "HOW MANY YEARS AGO DID--FIRST HAVE IT?"
         N2CH0523 = "HAY FEVER?"
         N2CH0525 = "HOW MANY YEARS AGO DID -- FIRST HAVE IT?"
         N2CH0527 = "DID A DOCTOR EVER TELL YOU THAT -- H ..."
         N2CH0529 = "HOW MANY OTHER ALLERGIES?"
         N2CH0531 = "WAS THE DOCTOR - A GENERAL PRACTITIONER"
         N2CH0532 = "AN INTERNIST?"
         N2CH0533 = "AN EAR, NOSE, AND THROAT SPECIALIST?"
         N2CH0534 = "WAS THE DOCTOR - AN ALLERGIST?"
         N2CH0535 = "SOME OTHER TYPE?"
         N2CH0536 = "DURING THE PAST 12 MONTHS NOT COUNTI ..."
         N2CH0537 = "STUFFY NOSE?"
         N2CH0538 = "DURING THE PAST 12 MONTHS NOT COUNTI ..."
         N2CH0539 = "WATERY DISCHARGE FROM THE NOSE?"
         N2CH0540 = "POST-NASAL DRIP?"
         N2CH0541 = "WATERY ITCHY EYES?"
         N2CH0542 = "DURING THE PAST 12 MONTHS NOT COUNTI ..."
         N2CH0543 = "SINUS INFECTION?"
         N2CH0544 = "CHECK ITEM A"
         N2CH0545 = "BECAUSE OF --'S (ALLERGIES/SYMPTOMS) ..."
         N2CH0546 = "MOVED TO A DIFFERENT LOCATION?"
         N2CH0547 = "INSTALLED AIR CONDITIONING, A HUMIDI ..."
         N2CH0548 = "TRIED TO KEEP HIM AWAY FROM THE THIN ..."
         N2CH0549 = "DO THE (ALLERGIES/SYMPTOMS) YOU MENT ..."
         N2CH0550 = "SUMMER?"
         N2CH0551 = "FALL UNTIL FROST?"
         N2CH0552 = "FALL AFTER FROST?"
         N2CH0553 = "DO THE (ALLERGIES/SYMPTOMS) YOU MENT ..."
         N2CH0554 = "OUTDOORS?"
         N2CH0555 = "DO THE (ALLERGIES/SYMPTOMS) YOU MENT ..."
         N2CH0556 = "RAINY OR HUMID WEATHER?"
         N2CH0557 = "DO THE (ALLERGIES/SYMPTOMS) BOTHER-- ..."
         N2CH0558 = "TREES?"
         N2CH0559 = "HOW OLD WAS--WHEN HE FIRST BEGAN HAV ..."
         N2CH0561 = "ARE THERE ANY THINGS OR PLACES WHICH ..."
         N2CH0562 = "UNUSED POSITION"
         N2CH0563 = "HAS--EVER HAD A -; IF YES, DOES--HAV ..."
         N2CH0565 = "CAT FOR A PET?"
         N2CH0567 = "DOES--NOW HAVE ANY HEALTH PROBLEMS T ..."
         N2CH0568 = "HAS--EVER BEEN TESTED FOR LEAD POISO ..."
         N2CH0569 = "HOW LONG AGO WAS--TESTED? YEARS"
         N2CH0571 = "MONTHS"
         N2CH0573 = "DID THE RESULTS INDICATE THAT HE HAD ..."
         N2CH0574 = "HAS--EVER BEEN TREATED FOR LEAD POIS ..."
         N2CH0575 = "HOW LONG AGO WAS--TREATED? YEARS"
         N2CH0577 = "MONTHS"
         N2CH0579 = "DOES--TAKE ANY MEDICINE REGULARLY, N ..."
         N2CH0580 = "DOES--NOW TAKE ANY VITAMIN OR MINERA ..."
         N2CH0581 = "HAS--EVER HAD ANY KIDNEY, BLADDER, O ..."
         N2CH0582 = "HAS--EVER HAD ANY INFECTIONS OF THE  ..."
         N2CH0583 = "ABOUT HOW MANY TIMES HAS HE HAD AN I ..."
         N2CH0585 = "ABOUT HOW MAY TIMES DID THE INFECTIO ..."
         N2CH0587 = "BLADDER?"
         N2CH0589 = "URINARY TRACT?"
         N2CH0591 = "DID--HAVE FEVER AND CHILLS WITH ANY  ..."
         N2CH0592 = "UNUSED POSITIONS"
         N2CH0593 = "FOR HOW MANY OF THE INFECTIONS DID H ..."
         N2CH0595 = "FOR HOW MANY OF THE INFECTIONS DID - ..."
         N2CH0597 = "HAS--EVER SEEN A DOCTOR FOR ANY KIDN ..."
         N2CH0598 = "WAS THE DOCTOR-A GENERAL PRACTITIONER?"
         N2CH0599 = "WAS THE DOCTOR-AN INTERNIST?"
         N2CH0600 = "A UROLOGIST?"
         N2CH0601 = "A NEPHROLOGIST?"
         N2CH0602 = "SOME OTHER TYPE?"
         N2CH0603 = "DID A DOCTOR EVER TELL YOU THAT--HAD ..."
         N2CH0605 = "HOW OLD WAS--WHEN THE CONDITION FIRS ..."
         N2CH0607 = "KIDNEY STONES OR STONES IN THE URETER?"
         N2CH0609 = "HOW OLD WAS--WHEN THE CONDITION FIRS ..."
         N2CH0611 = "NEPHROSIS?"
         N2CH0613 = "HOW OLD WAS--WHEN THE CONDITION FIRS ..."
         N2CH0615 = "DID A DOCTOR EVER TELL YOU THAT--HAD ..."
         N2CH0617 = "HOW OLD WAS--WHEN THE CONDITION FIRS ..."
         N2CH0619 = "DID A DOCTOR EVER TELL YOU THAT--HAD ..."
         N2CH0621 = "HOW OLD WAS--WHEN THE CONDITION FIRS ..."
         N2CH0623 = "DID A DOCTOR EVER TELL YOU THAT--HAD ..."
         N2CH0625 = "HOW OLD WAS--WHEN THE CONDITION FIRS ..."
         N2CH0627 = "DID A DOCTOR EVER TELL YOU THAT--HAD ..."
         N2CH0629 = "HOW OLD WAS--WHEN THE CONDITION FIRS ..."
         N2CH0631 = "DID A DOCTOR EVER TELL YOU THAT--HAD ..."
         N2CH0633 = "HOW OLD WAS--WHEN THE CONDITION FIRS ..."
         N2CH0635 = "URINARY TRACT INFECTION?"
         N2CH0637 = "HOW OLD WAS--WHEN THE CONDITION FIRS ..."
         N2CH0639 = "DID A DOCTOR EVER TELL YOU THAT--HA- ..."
         N2CH0641 = "HOW OLD WAS--WHEN THE CONDITION FIRS ..."
         N2CH0643 = "HAS--EVER HAD ANY SPECIAL X-RAYS OF  ..."
         N2CH0644 = "HAS--EVER BEEN HOSPITALIZED OVERNIGH ..."
         N2CH0645 = "WHEN WAS THE LAST TIME--SAW A DOCTOR ..."
         N2CH0647 = "DIURETICS OR PILLS TO LOSE WATER?"
         N2CH0648 = "HAS--EVER BEEN TREATED FOR A KIDNEY, ..."
         N2CH0649 = "ANTIBIOTICS?"
         N2CH0650 = "SULFA DRUGS/"
         N2CH0651 = "SURGERY?"
         N2CH0652 = "MEDICINES TO REDUCE BLOOD PRESSURE?"
         N2CH0653 = "A SPECIAL DIET?"
         N2CH0654 = "ANY OTHER TREATMENT"
         N2CH0655 = "HAS--'S MOTHER, FATHER, SISTERS, OR  ..."
         N2CH0659 = "BOTH CHRONIC KIDNEY DISEASE AND NERV ..."
         N2CH0663 = "HAS--'S MOTHER, FATHER, SISTERS, OR  ..."
         N2CH0667 = "HIGH BLOOD PRESSURE?"
         N2CH0671 = "DID A DOCTOR EVER TELL YOU THAT--HAD ..."
         N2CH0672 = "HOW MANY SEPARATE TIMES DID IT HAPPEN?"
         N2CH0674 = "WHEN DID IT LAST HAPPEN?"
         N2CH0676 = "BLOOD?"
         N2CH0677 = "DID A DOCTOR EVER TELL YOU THAT--HAD ..."
         N2CH0679 = "WHEN DID IT LAST HAPPEN?"
         N2CH0681 = "SUGAR?"
         N2CH0682 = "UNUSED POSITIONS"
         N2CH0683 = "DID A DOCTOR EVER TELL YOU THAT--HAD ..."
         N2CH0685 = "WHEN DID IT LAST HAPPEN?"
         N2CH0687 = "ANYTHING ELSE?"
         N2CH0688 = "UNUSED POSITIONS"
         N2CH0689 = "HOW MANY SEPARATE TIMES DID IT HAPPEN?"
         N2CH0691 = "DID A DOCTOR EVER TELL YOU THAT--HAD ..."
         N2CH0693 = "HAS--EVER HAD ANEMIA?"
         N2CH0694 = "UNUSED POSITIONS"
         N2CH0695 = "HOW LONG AGO?"
         N2CH0697 = "DID A DOCTOR TELL YOU THAT--HAD ANEMIA?"
         N2CH0698 = "WAS IT CAUSED BY-POOR DIET?"
         N2CH0699 = "LOSS OF BLOOD DUE TO ACCIDENT OR INJURY?"
         N2CH0700 = "ILLNESS?"
         N2CH0701 = "SURGERY?"
         N2CH0702 = "WAS IT CAUSED BY-SOMETHING ELSE?"
         N2CH0703 = "WAS--TREATED FOR THIS CONDITION BY A ..."
         N2CH0704 = "WAS THE TREATMENT-BETTER DIET?"
         N2CH0705 = "IRON PILLS?"
         N2CH0706 = "WAS THE TREATMENT IRON SHOTS?"
         N2CH0707 = "VITAMIN PILLS?"
         N2CH0708 = "VITAMIN SHOTS?"
         N2CH0709 = "BLOOD TRANSFUSIONS?"
         N2CH0710 = "WAS THE TREATMENT-ANYTHING ELSE?"
         N2CH0711 = "IS--STILL BEING TREATED FOR IT"
         N2CH0712 = "CHECK ITEM B"
         N2CH0713 = "HAS--EVER HAD A RUNNING EAR OR ANY D ..."
         N2CH0714 = "HOW OFTEN HAS--HAD THIS PROBLEM?"
         N2CH0715 = "WAS THIS LEFT EAR, RIGHT EAR, OR BOT ..."
         N2CH0716 = "DID-- SEE DOCTOR BECAUSE OF THE COND ..."
         N2CH0717 = "DID A DOCTOR EVER TELL YOU THAT--HAT ..."
         N2CH0718 = "UNUSED POSITIONS"
         N2CH0719 = "HOW MANY TIMES HAS--HAD AN EAR INFEC ..."
         N2CH0721 = "FOR HOW MANY SEPARATE INFECTIONS DID ..."
         N2CH0723 = "SHOTS OR INJECTIONS?"
         N2CH0725 = "EAR DROPS OR OTHER EXTERNAL APPLICATION?"
         N2CH0727 = "DID A DOCTOR EVER TREAT--'S EAR INFE ..."
         N2CH0728 = "HAS--EVER HAD DEAFNESS OR TROUBLE HE ..."
         N2CH0729 = "DID--EVER SEE DOCTOR ABOUT IT?"
         N2CH0730 = "UNUSED POSITIONS"
         N2CH0731 = "HOW OLD WAS--WHEN HIS HEARING TROUBL ..."
         N2CH0733 = "SINCE THIS TROUBLE BEGAN HAS IT GOTT ..."
         N2CH0734 = "WAS--'S HEARING TROUBLE OR DEAFNESS  ..."
         N2CH0735 = "A LOUD NOISE, SUCH AS THAT FROM MACH ..."
         N2CH0736 = "EAR SURGERY?"
         N2CH0737 = "WAS--'S HEARING TROUBLE OR DEAFNESS  ..."
         N2CH0738 = "WAS HE BORN WITH IT?"
         N2CH0739 = "SOME OTHER CAUSE?"
         N2CH0740 = "HOW WOULD YOU RATE--'S HEARING IN TH ..."
         N2CH0741 = "HOW WOULD YOU RATE--'S HEARING IN TH ..."
         N2CH0742 = "HAS--EVER HAD AN OPERATION FOR AN EA ..."
         N2CH0743 = "WAS IT-AN INCISION OF THE EAR DRUM?"
         N2CH0744 = "AN OPERATION OF THE STAPES, ONE OF T ..."
         N2CH0745 = "WAS IT-MASTOIDOCTOMY?"
         N2CH0746 = "SOME OTHER OPERATION?"
         N2CH0747 = "HAS--EVER HAD HIS HEARING TESTED?"
         N2CH0748 = "HOW OLD WAS HE WHEN HIS HEARING WAS  ..."
         N2CH0750 = "WAS HIS HEARING NORMAL?"
         N2CH0751 = "HAS--EVER USED A HEARING AID?"
         N2CH0752 = "WHICH EAR?"
         N2CH0753 = "DOES--NOW USE A HEARING AID?"
         N2CH0754 = "HAS--EVER HAD ANY DIFFICULTIES WITH  ..."
         N2CH0755 = "HAS A TEACHER OR ANY OTHER PERSON ME ..."
         N2CH0756 = "DOES--NOW HAVE ANY SPEECH DIFFICULTIES?"
         N2CH0757 = "CHECK ITEM C"
         N2CH0758 = "WAS THE SPEECH PROBLEM-STUTTERING?"
         N2CH0759 = "STAMMERING?"
         N2CH0760 = "LISPING?"
         N2CH0761 = "HOARSENESS?"
         N2CH0762 = "WAS THE SPEECH PROBLEM--DIFFICULTY S ..."
         N2CH0763 = "SOME OTHER PROBLEM?"
         N2CH0764 = "DID--SEE A DOCTOR OR SPEECH SPECIALI ..."
         N2CH0765 = "HOW OLD WAS--WHEN HE FIRST BEGAN HAV ..."
         N2CH0767 = "HAS--EVER HAD ANY TRAINING, THERAPY  ..."
         N2CH0768 = "WAS THE SPECIALIST WHO GAVE THE SPEE ..."
         N2CH0769 = "NEUROLOGIST?"
         N2CH0770 = "PSYCHOLOGIST?"
         N2CH0771 = "WAS THE SPECIALIST WHO GAVE THE SPEE ..."
         N2CH0772 = "UNUSED POSITIONS"
         N2CH0773 = "ALL TOGETHER HOW LONG DID THIS THERA ..."
         N2CH0775 = "YEARS"
         N2CH0777 = "HOW OLD WAS--WHEN HE BEGAN THIS THERAPY?"
         N2CH0779 = "WAS THE THERAPY PROVIDED BY HIS SCHOOL?"
         N2CH0780 = "IS--NOW RECEIVING THERAPY FOR HIS SP ..."
         N2CH0781 = "WHAT WAS THE MAIN REASON FOR THE END ..."
         N2CH0782 = "IS--NOW ENROLLED IN ANY SPECIAL EDUC ..."
         N2CH0783 = "HAS--'S MOTHER,  FATHER, SISTER(S))  ..."
         N2CH0784 = "WAS IT HIS-MOTHER?"
         N2CH0785 = "FATHER?"
         N2CH0786 = "SISTER?"
         N2CH0787 = "WAS IT HIS-BROTHER?"
         N2CH0788 = "HOW MANY OF --'S LIVING BROTHERS OR  ..."
         N2CH0789 = "SISTERS"
         N2CH0790 = "HAS--'S MOTHER, FATHER, SISTER(S), O ..."
         N2CH0791 = "WAS IT HIS-MOTHER"
         N2CH0792 = "FATHER?"
         N2CH0793 = "SISTER?"
         N2CH0794 = "BROTHER?"
         N2CH0795 = "HOW OLD WAS--WHEN HE SPOKE FIRST REA ..."
         N2CH0796 = "HOW OLD WAS--WHEN HE STARTED TO USE  ..."
         N2CH0797 = "WHEN--TALKS, HOW WELL CAN YOU AND OT ..."
         N2CH0798 = "WHEN--TALKS, HOW WELL CAN STRANGERS  ..."
         N2CH0799 = "BEFORE LEARNING ENGLISH, DID--SPEAK  ..."
         N2CH0800 = "DOES--NOW SPEAK ANY LANGUAGE OTHER T ..."
         N2CH0801 = "DOES--NOW USE (THIS/THESE) OTHER LAN ..."
         N2CH0802 = "CHECK ITEM D"
         N2CH0803 = "DOES--HAVE TROUBLE WITH RECURRING OR ..."
         N2CH0804 = "HAS--BEEN BOTHERED BY SUCH COUGHING  ..."
         N2CH0805 = "DURING THE PAST THREE YEARS, HAS--HA ..."
         N2CH0806 = "HAS--EVER SEEN A DOCTOR ABOUT A LUNG ..."
         N2CH0807 = "WHAT DID THE DOCTOR SAY THE CONDITIO ..."
         N2CH0811 = "ICDA CODE"
         N2CH0815 = "ICDA CODE"
         N2CH0819 = "ICDA CODE"
         N2CH0823 = "HOW OLD WAS--WHEN HE FIRST HAD THE C ..."
         N2CH0825 = "ABOUT HOW MANY DAYS OF SCHOOL HAD--M ..."
         N2CH0826 = "HAS--EVER STAYED IN A HOSPITAL OVERN ..."
         N2CH0827 = "DID A DOCTOR OR OTHER SPECIALIST EVE ..."
         N2CH0828 = "CEREBRAL PALSY?"
         N2CH0829 = "ANY TYPE OF BRAIN DAMAGE?"
         N2CH0830 = "VISION TROUBLE?"
         N2CH0831 = "DID A DOCTOR OR OTHER SPECIALIST EVE ..."
         N2CH0832 = "HYPERACTIVITY?"
         N2CH0833 = "MENTAL RETARDATION?"
         N2CH0834 = "CHECK ITEM E"
         N2CH0835 = "IS--NOW ATTENDING SCHOOL?"
         N2CH0836 = "IS--ATTENDING A SCHOOL OR PRESCHOOL  ..."
         N2CH0837 = "IS IT A--NURSERY?"
         N2CH0838 = "KINDERGARTEN?"
         N2CH0839 = "IS IT A--HEADSTART?"
         N2CH0840 = "DAYCARE CENTER?"
         N2CH0841 = "SOME OTHER SCHOOL OR PRESCHOOL PROGRAM?"
         N2CH0842 = "IS THERE A LUNCH PROGRAM AT THE (SCH ..."
         N2CH0843 = "HOW MANY TIME A WEEK DOES --USUALLY  ..."
         N2CH0844 = "HOW MUCH DOES--PAY FOR HIS LUNCH PER ..."
         N2CH0846 = "IS THERE A SPECIAL MILK PROGRAM AT T ..."
         N2CH0847 = "HOW MANY TIMES A WEEK DOES--USUALLY  ..."
         N2CH0848 = "HOW MUCH DOES--PAY FOR HIS MILK PER DAY?"
         N2CH0850 = "IS THERE A BREAKFAST PROGRAM AT THE  ..."
         N2CH0851 = "HOW MANY TIMES A WEEK DOES--USUALLY  ..."
         N2CH0852 = "HOW MUCH DOES--PAY FOR HIS BREAKFAST ..."
         N2CH0854 = "HOW MUCH DOES--'S MOTHER WEIGH?"
         N2CH0857 = "HOW TALL IS SHE? FEET"
         N2CH0858 = "INCHES"
         N2CH0860 = "HOW MUCH DOES--'S FATHER WEIGH?"
         N2CH0863 = "HOW TALL IS HE? FEET"
         N2CH0864 = "INCHES"
         N2CH0866 = "RESPONDENT'S RELATIONSHIP TO CHILD C ..."
         N2CH0867 = "UNUSED POSITIONS"
         N2CH0875 = "DUMMY RECORD FLAG"
         N2CH0876 = "UNUSED POSITIONS"
         N2CH0881 = "FIRST SITTING BLOOD PRESSURE MEASURE ..."
         N2CH0884 = "DIASTOLIC"
         N2CH0887 = "RECUMBENT MEASUREMENT SYSTOLIC"
         N2CH0890 = "DIASTOLIC"
         N2CH0893 = "SECOND SITTING MEASUREMENT SYSTOLIC"
         N2CH0896 = "DIASTOLIC"
         N2CH0899 = "UNUSED POSITIONS"
      ;
RUN;
