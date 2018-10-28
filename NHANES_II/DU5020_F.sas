/*
 *  Survey:           NHANES II
 *  Years:            1976-1980
 *  Questionnaire:    Medical History, 12-74 years
 *  Tape Number:      5020
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

VALUE AH0011F
     1='Urbanized area with 3,000,000 or more'
     2='Urbanized area 1,000,000 to 2,999,999'
     3='Urbanized area with 250,000 to 999,999'
     4='Urbanized area under 250,000'
     5='Urban place 25,000 or more outside urbanized area'
     6='Urban place 10,000-24,999 outside urbanized area'
     7='Urban place 2,500 to 9,999 outside urbanized area'
     8='Rural'
     ;

VALUE AH0012F
     1='In SMSA, in central city'
     2='In SMSA, not in central city'
     4='Not in SMSA'
     ;

VALUE AH0024F
     1='Housing unit'
     2='Other unit'
     ;

VALUE AH0025F
     1='Urban'
     2='Rural'
     ;

VALUE AH0026F
     1='Yes'
     2='No'
     9='Not Applicable'
     ;

VALUE AH0027F
     1='Yes'
     2='No'
     9='Not Applicable'
     ;

VALUE AH0028F
     1='Yes'
     2='No'
     9='Not Applicable'
     ;

VALUE AH0035F
     1='Head one person living alone or with non-relatives'
     2='Head 2 or more related persons in family'
     3='Wife'
     4='Child'
     5='Other relative'
     6='Foster child'
     7='Husband'
     ;

VALUE AH0036F
     1='Examined'
     ;

VALUE AH0047F
     00='If less than 12 months'
     ;

VALUE AH0055F
     1='Male'
     2='Female'
     ;

VALUE AH0056F
     1='White'
     2='Black'
     3='Other'
     ;

VALUE AH0057F
     88='Blank, but applicable'
     ;

VALUE AH0059F
     1='Under 17'
     2='Married'
     3='Widowed'
     4='Divorced'
     5='Separated'
     6='Never married'
     8='Blank, but applicable'
     ;

VALUE AH0060F
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

VALUE AH0062F
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

VALUE AH0064F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0065F
     1='Working'
     2='Keeping house'
     3='Something else'
     8='Blank, but applicable'
     ;

VALUE AH0066F
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

VALUE AH0067F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0068F
     1='Full time'
     2='Part time'
     8='Blank, but applicable'
     ;

VALUE AH0069F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0070F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0071F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0072F
     1='Looking'
     2='Layoff'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AH0073F
     000='Blank, but applicable'
     ;

VALUE AH0076F
     000='Blank, but applicable'
     ;

VALUE AH0079F
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

VALUE AH0080F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0081F
     1='Vietnam'
     2='Korean War'
     3='World War II'
     4='World War I'
     5='Post Vietnam'
     6='Other Service'
     8='Blank, but applicable'
     9='Do not know'
     ;

VALUE AH0091F
     9='Nine Or More Rooms'
     ;

VALUE AH0092F
     7='More than 7 bedrooms'
     ;

VALUE AH0093F
     1='Yes'
     2='No'
     ;

VALUE AH0094F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0095F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0096F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0097F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0098F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0099F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0100F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0101F
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

VALUE AH0103F
     1='Yes, individual room unit'
     2='Yes, central air conditioning'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AH0104F
     0='None'
     8='or more 8'
     9='Blank, but applicable'
     ;

VALUE AH0105F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0106F
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

VALUE AH0107F
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

VALUE AH0109F
     8888='Blank, but applicable'
     ;

VALUE AH0113F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0115F
     8888='Blank, but applicable'
     ;

VALUE AH0119F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0121F
     8888='Blank, but applicable'
     ;

VALUE AH0125F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0127F
     8888='Blank, but applicable'
     ;

VALUE AH0131F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0133F
     8888='Blank, but applicable'
     ;

VALUE AH0137F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0139F
     8888='Blank, but applicable'
     ;

VALUE AH0143F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     ;

VALUE AH0145F
     8888='Blank, but applicable'
     ;

VALUE AH0149F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     ;

VALUE AH0151F
     8888='Blank, but applicable'
     ;

VALUE AH0155F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0157F
     8888='Blank, but applicable'
     ;

VALUE AH0161F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0163F
     8888='Blank, but applicable'
     ;

VALUE AH0167F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0169F
     8888='Blank, but applicable'
     ;

VALUE AH0173F
     8888='Blank, but applicable'
     ;

VALUE AH0177F
     2='Food stamps available'
     4='Both - Food Stamps and commodities'
     ;

VALUE AH0178F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0179F
     1='Yes, Regularly'
     2='Yes, Occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AH0180F
     1='No need'
     2='Not enough money at the time'
     3='No transportation'
     4='Pride'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE AH0181F
     1='Yes'
     2='No'
     9='Do not know'
     ;

VALUE AH0182F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     ;

VALUE AH0183F
     1='No need'
     2='No transportation'
     3='Pride'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE AH0190F
     00='If less than 12 months or non-examined'
     ;

VALUE AH0206F
     1='Male, White'
     2='Male, Black'
     3='Male, Other'
     4='Female, White'
     5='Female, Black'
     6='Female, Other'
     ;

VALUE AH0207F
     1='Farm'
     2='Non-Farm'
     ;

VALUE AH0208F
     1='Interviewed'
     ;

VALUE AH0209F
     1='Northeast'
     2='Midwest'
     3='South'
     4='West'
     ;

VALUE AH0210F
     999='Unknown'
     ;

VALUE AH0251F
     88='Blank, but applicable'
     ;

VALUE AH0255F
     1='Male'
     2='Female'
     ;

VALUE AH0256F
     1='White'
     2='Black'
     3='Other'
     ;

VALUE AH0257F
     88='Blank, but applicable'
     ;

VALUE AH0259F
     1='Under 17'
     2='Married'
     3='Widowed'
     4='Divorced'
     5='Separated'
     6='Never married'
     8='Blank, but applicable'
     ;

VALUE AH0260F
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

VALUE AH0262F
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

VALUE AH0264F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0265F
     1='Working'
     2='Keeping house'
     3='Something else'
     8='Blank, but applicable'
     ;

VALUE AH0266F
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

VALUE AH0267F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0268F
     1='Full time'
     2='Part time'
     8='Blank, but applicable'
     ;

VALUE AH0269F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0270F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0271F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0272F
     1='Looking'
     2='Layoff'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AH0273F
     000='Blank, but applicable'
     ;

VALUE AH0276F
     000='Blank, but applicable'
     ;

VALUE AH0279F
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

VALUE AH0280F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0281F
     1='Vietnam'
     2='Korean War'
     3='World War II'
     4='World War I'
     5='Post Vietnam'
     6='Other Service'
     8='Blank, but applicable'
     9='Do not know'
     ;

VALUE AH0426F
     1='Excellent'
     2='Very good'
     3='Good'
     4='Fair'
     5='Poor'
     8='Blank, but applicable'
     ;

VALUE AH0427F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0428F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0429F
     88='Blank, but applicable'
     ;

VALUE AH0431F
     88='Blank, but applicable'
     ;

VALUE AH0433F
     88='Blank, but applicable'
     ;

VALUE AH0435F
     88='Blank, but applicable'
     ;

VALUE AH0437F
     88='Blank, but applicable'
     99='99 days or over'
     ;

VALUE AH0439F
     88='Blank, but applicable'
     99='99 days or over'
     ;

VALUE AH0441F
     88='Blank, but applicable'
     ;

VALUE AH0443F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH0444F
     1='Yes'
     2='No'
     ;

VALUE AH0445F
     88='Blank, but applicable'
     ;

VALUE AH0447F
     88='Blank, but applicable'
     ;

VALUE AH0453F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0454F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0455F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0456F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0457F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0458F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0459F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0461F
     88='Blank, but applicable'
     ;

VALUE AH0463F
     01='Yes, had it'
     02='Never told'
     88='Blank, but applicable'
     ;

VALUE AH0465F
     88='Blank, but applicable'
     ;

VALUE AH0467F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0469F
     88='Blank, but applicable'
     ;

VALUE AH0471F
     01='Yes, had it'
     02='Never told'
     88='Blank, but applicable'
     ;

VALUE AH0473F
     88='Blank, but applicable'
     ;

VALUE AH0475F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0477F
     88='Blank, but applicable'
     ;

VALUE AH0479F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0481F
     88='Blank, but applicable'
     ;

VALUE AH0483F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0485F
     88='Blank, but applicable'
     ;

VALUE AH0487F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0489F
     88='Blank, but applicable'
     ;

VALUE AH0491F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0493F
     88='Blank, but applicable'
     ;

VALUE AH0495F
     01='Yes, had it'
     02='Never told'
     88='Blank, but applicable'
     ;

VALUE AH0497F
     88='Blank, but applicable'
     ;

VALUE AH0499F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0501F
     88='Blank, but applicable'
     ;

VALUE AH0503F
     01='Yes, had it'
     02='Never told'
     88='Blank, but applicable'
     ;

VALUE AH0505F
     88='Blank, but applicable'
     ;

VALUE AH0507F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0509F
     88='Blank, but applicable'
     ;

VALUE AH0511F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0513F
     88='Blank, but applicable'
     ;

VALUE AH0515F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0517F
     88='Blank, but applicable'
     ;

VALUE AH0519F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0521F
     88='Blank, but applicable'
     ;

VALUE AH0523F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0525F
     88='Blank, but applicable'
     ;

VALUE AH0527F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0529F
     88='Blank, but applicable'
     ;

VALUE AH0531F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0533F
     88='Blank, but applicable'
     ;

VALUE AH0535F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0537F
     88='Blank, but applicable'
     ;

VALUE AH0539F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0541F
     88='Blank, but applicable'
     ;

VALUE AH0543F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0545F
     88='Blank, but applicable'
     ;

VALUE AH0547F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0549F
     88='Blank, but applicable'
     ;

VALUE AH0551F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0553F
     88='Blank, but applicable'
     ;

VALUE AH0555F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0557F
     88='Blank, but applicable'
     ;

VALUE AH0559F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0561F
     88='Blank, but applicable'
     ;

VALUE AH0563F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0565F
     88='Blank, but applicable'
     ;

VALUE AH0567F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0569F
     88='Blank, but applicable'
     ;

VALUE AH0571F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0573F
     88='Blank, but applicable'
     ;

VALUE AH0575F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0577F
     88='Blank, but applicable'
     ;

VALUE AH0579F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0581F
     88='Blank, but applicable'
     ;

VALUE AH0583F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0585F
     88='Blank, but applicable'
     ;

VALUE AH0587F
     01='Yes, had it'
     02='Never told'
     88='Blank, but applicable'
     ;

VALUE AH0589F
     88='Blank, but applicable'
     ;

VALUE AH0591F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0593F
     88='Blank, but applicable'
     ;

VALUE AH0595F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0597F
     88='Blank, but applicable'
     ;

VALUE AH0599F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AH0600F
     88='Blank, but applicable'
     99='Dont know'
     ;

VALUE AH0602F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0603F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH0604F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH0605F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH0606F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH0607F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH0608F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH0609F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0610F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0611F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0612F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0613F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0614F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0615F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0616F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0617F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0618F
     1='Yes'
     2='No'
     ;

VALUE AH0619F
     1='Yes'
     2='No'
     ;

VALUE AH0620F
     1='Yes'
     2='No'
     ;

VALUE AH0621F
     1='Yes'
     2='No'
     ;

VALUE AH0622F
     1='Yes'
     2='No'
     ;

VALUE AH0623F
     1='Yes'
     2='No'
     ;

VALUE AH0624F
     1='Age 18+'
     2='Under age 18'
     ;

VALUE AH0625F
     1='Yes'
     2='No'
     ;

VALUE AH0626F
     1='Yes'
     2='No'
     ;

VALUE AH0627F
     88='Blank but applicable'
     97='97 or more per day'
     ;

VALUE AH0629F
     77='Under 1 year'
     88='Blank, but applicable'
     98='Never smoked cigarettes regularly'
     99='Dont know'
     ;

VALUE AH0631F
     88='Blank but applicable'
     97='97 or more per day'
     98='Did not smoke'
     99='Dont know'
     ;

VALUE AH0633F
     88='Blank but applicable'
     97='97 or more per day'
     99='Dont know'
     ;

VALUE AH0635F
     88='Blank, but applicable'
     98='Never smoked  regularly'
     99='Dont know'
     ;

VALUE AH0637F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0638F
     88='Blank but applicable'
     98='3 to 6 per week'
     99='Dont know'
     ;

VALUE AH0640F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0641F
     77='3 to 6 per week'
     88='Blank but applicable'
     98='Less than 3 per week'
     ;

VALUE AH0643F
     1='Yes'
     2='No'
     ;

VALUE AH0644F
     88='Blank, but applicable'
     ;

VALUE AH0646F
     1='Decaffeinated'
     2='Regular'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AH0647F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0648F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0649F
     1='Yes'
     2='No'
     ;

VALUE AH0650F
     88='Blank, but applicable'
     ;

VALUE AH0652F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0653F
     1='Yes'
     2='No'
     ;

VALUE AH0654F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0655F
     1='Much exercise'
     2='Moderate exercise'
     3='Little or no exercise'
     8='Blank, but applicable'
     ;

VALUE AH0656F
     1='Very active'
     2='Moderately active'
     3='Quite inactive'
     8='Blank, but applicable'
     ;

VALUE AH0659F
     888='Blank, but applicable'
     ;

VALUE AH0662F
     88='Blank, but applicable'
     ;

VALUE AH0664F
     1='Age 18+'
     2='Under 18'
     ;

VALUE AH0665F
     888='Blank, but applicable'
     ;

VALUE AH0668F
     88='Blank, but applicable'
     ;

VALUE AH0670F
     1='Age 25+'
     2='Under age 25'
     ;

VALUE AH0671F
     888='Blank, but applicable'
     ;

VALUE AH0674F
     1='Age 17+'
     2='Under age 17'
     ;

VALUE AH0675F
     88='Blank, but applicable'
     ;

VALUE AH0677F
     1='Male'
     2='Female'
     ;

VALUE AH0678F
     88='Blank, but applicable'
     ;

VALUE AH0680F
     88='Blank, but applicable'
     ;

VALUE AH0682F
     8='Blank, but applicable'
     ;

VALUE AH0683F
     88='Blank, but applicable'
     ;

VALUE AH0685F
     888='Blank, but applicable'
     ;

VALUE AH0688F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH0689F
     888='Blank, but applicable'
     ;

VALUE AH0692F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH0693F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH0694F
     1='Yes'
     2='No'
     ;

VALUE AH0695F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0696F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0697F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0698F
     1='Yes'
     2='No'
     ;

VALUE AH0699F
     1='Yes'
     2='No'
     ;

VALUE AH0701F
     88='Blank, but applicable'
     ;

VALUE AH0703F
     88='Blank, but applicable'
     ;

VALUE AH0705F
     88='Blank, but applicable'
     ;

VALUE AH0707F
     88='Blank, but applicable'
     ;

VALUE AH0709F
     88='Blank, but applicable'
     ;

VALUE AH0711F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0712F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0713F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0714F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0715F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0716F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0717F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0718F
     1='No in questions 26a and all of 28'
     2='All other'
     ;

VALUE AH0719F
     88='Blank, but applicable'
     ;

VALUE AH0721F
     1='Yes'
     2='No'
     ;

VALUE AH0722F
     1='Yes'
     2='No'
     ;

VALUE AH0723F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0724F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0725F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0726F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0727F
     88='Blank, but applicable'
     ;

VALUE AH0729F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0730F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0731F
     88='Blank, but applicable'
     ;

VALUE AH0733F
     88='Blank, but applicable'
     ;

VALUE AH0735F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0736F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0737F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0738F
     88='Blank, but applicable'
     ;

VALUE AH0740F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0741F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0742F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0743F
     88='Blank, but applicable'
     ;

VALUE AH0745F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0746F
     8='Blank, but applicable'
     ;

VALUE AH0747F
     8='Blank, but applicable'
     ;

VALUE AH0749F
     88='Blank, but applicable'
     ;

VALUE AH0751F
     88='Blank, but applicable'
     ;

VALUE AH0753F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0755F
     888='Blank, but applicable'
     ;

VALUE AH0758F
     888='Blank, but applicable'
     ;

VALUE AH0761F
     888='Blank, but applicable'
     ;

VALUE AH0764F
     888='Blank, but applicable'
     ;

VALUE AH0767F
     1='Under age 25'
     2='Age 25+'
     ;

VALUE AH0768F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0769F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0770F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0771F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0772F
     1='Under 10'
     2='10-19 years old'
     3='20-24 years old'
     8='Blank, but applicable'
     ;

VALUE AH0773F
     1='None'
     2='1-4 days'
     3='5-9 days'
     4='10-14 days'
     5='15-19 days'
     6='20-29 days'
     7='30 days or more'
     8='blank, but applicable'
     ;

VALUE AH0774F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0775F
     1='Yes'
     2='No'
     ;

VALUE AH0776F
     1='Every few days'
     2='Less often'
     8='Blank, but applicable'
     ;

VALUE AH0777F
     1='Quite a bit'
     2='Just a little'
     3='Not at all'
     8='Blank, but applicable'
     ;

VALUE AH0778F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AH0779F
     1='Once only'
     2='Twice'
     3='3-5 times'
     4='6 or more times'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH0780F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AH0781F
     1='Yes'
     2='No'
     ;

VALUE AH0782F
     88='Blank, but applicable'
     99='100 or more times'
     ;

VALUE AH0785F
     88='Blank, but applicable'
     99='100 or more times'
     ;

VALUE AH0787F
     88='Blank, but applicable'
     99='100 or more times'
     ;

VALUE AH0789F
     88='Blank, but applicable'
     99='100 or more times'
     ;

VALUE AH0791F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH0792F
     1='Yes'
     2='No'
     ;

VALUE AH0793F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0794F
     1='0-4 years old'
     2='5-9 years old'
     3='10-19 years old'
     4='20-29 years old'
     5='30-39 years old'
     6='40-49 years old'
     7='50 years old or older'
     8='Blank, but applicable'
     ;

VALUE AH0795F
     1='Gotten worse'
     2='Gotten better'
     4='Stayed about the same'
     8='Blank, but applicable'
     ;

VALUE AH0796F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH0797F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH0798F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH0799F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH0800F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH0801F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH0802F
     1='Good'
     2='Fair'
     3='Poor'
     4='Deaf'
     8='Blank, but applicable'
     ;

VALUE AH0803F
     1='Good'
     2='Fair'
     3='Poor'
     4='Deaf'
     8='Blank, but applicable'
     ;

VALUE AH0804F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0805F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AH0806F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AH0807F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AH0808F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AH0809F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0810F
     1='0-9 years old'
     2='10-19 years old'
     3='20-29 years old'
     4='30 years old or older'
     8='Blank, but applicable'
     ;

VALUE AH0811F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH0812F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0813F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AH0814F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0815F
     1='Age 17+'
     2='Age under 17'
     ;

VALUE AH0816F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0817F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0819F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0821F
     88='Blank, but applicable'
     ;

VALUE AH0823F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0825F
     88='Blank, but applicable'
     ;

VALUE AH0827F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0829F
     88='lank, but applicable'
     ;

VALUE AH0831F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0833F
     88='Blank, but applicable'
     ;

VALUE AH0835F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0837F
     88='Blank, but applicable'
     ;

VALUE AH0839F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     88='Blank, but applicable'
     ;

VALUE AH0841F
     88='Blank, but applicable'
     ;

VALUE AH0843F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0845F
     88='Blank, but applicable'
     ;

VALUE AH0847F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0848F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0849F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0850F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0851F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0852F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0853F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0854F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0855F
     1='None'
     2='1-4 days'
     3='5-9 days'
     4='10-14 days'
     5='15-19 days'
     6='20-29 days'
     7='30 days or more'
     8='blank, but applicable'
     ;

VALUE AH0856F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0857F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0858F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0859F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0860F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0861F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0862F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0863F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0864F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0865F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0866F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0867F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0869F
     88='Blank, but applicable'
     99='100 or more times'
     ;

VALUE AH0871F
     88='Blank, but applicable'
     99='100 or more times'
     ;

VALUE AH0873F
     88='Blank, but applicable'
     99='100 or more times'
     ;

VALUE AH0875F
     88='Blank, but applicable'
     99='100 or more times'
     ;

VALUE AH0877F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0878F
     88='Blank, but applicable'
     99='100 or more times'
     ;

VALUE AH0881F
     88='Blank, but applicable'
     99='100 or more times'
     ;

VALUE AH0883F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0884F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0885F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0886F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0887F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0888F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0889F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0891F
     88='Blank, but applicable'
     ;

VALUE AH0893F
     02='Never told'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     88='Blank, but applicable'
     ;

VALUE AH0895F
     88='Blank, but applicable'
     ;

VALUE AH0897F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0899F
     88='Blank, but applicable'
     ;

VALUE AH0901F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0903F
     88='Blank, but applicable'
     ;

VALUE AH0905F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0907F
     88='Blank, but applicable'
     ;

VALUE AH0909F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0911F
     88='Blank, but applicable'
     ;

VALUE AH0913F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0915F
     88='Blank, but applicable'
     ;

VALUE AH0917F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0919F
     88='Blank, but applicable'
     ;

VALUE AH0921F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0923F
     88='Blank, but applicable'
     ;

VALUE AH0925F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0927F
     88='Blank, but applicable'
     ;

VALUE AH0929F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0931F
     88='Blank, but applicable'
     ;

VALUE AH0933F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH0935F
     88='Blank, but applicable'
     ;

VALUE AH0937F
     1='None'
     2='1-4 days'
     3='5-9 days'
     4='10-14 days'
     5='15-19 days'
     6='20-29 days'
     7='30 days or more'
     8='blank, but applicable'
     ;

VALUE AH0938F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0939F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0941F
     00='Less than 1 year ago'
     88='Blank, but applicable'
     ;

VALUE AH0943F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0944F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0945F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0946F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0947F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0948F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0949F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0950F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0951F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0952F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0953F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0954F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0955F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0956F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0957F
     88='Blank, but applicable'
     99='100 or more times'
     ;

VALUE AH0959F
     1='Mother'
     2='Father'
     3='Sisters'
     4='Brothers'
     0005='No'
     888='Blank, but applicable'
     ;

VALUE AH0963F
     0005='No'
     8888='Blank, but applicable'
     ;

VALUE AH0967F
     0005='No'
     8888='Blank, but applicable'
     ;

VALUE AH0971F
     0005='No'
     8888='Blank, but applicable'
     ;

VALUE AH0977F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0978F
     88='Blank, but applicable'
     99='100 or more times'
     ;

VALUE AH0980F
     88='Blank, but applicable'
     ;

VALUE AH0983F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0984F
     88='Blank, but applicable'
     99='100 or more times'
     ;

VALUE AH0986F
     88='Blank, but applicable'
     ;

VALUE AH0989F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0990F
     88='Blank, but applicable'
     99='100 or more times'
     ;

VALUE AH0992F
     88='Blank, but applicable'
     ;

VALUE AH0995F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0996F
     88='Blank, but applicable'
     99='100 or more times'
     ;

VALUE AH0998F
     88='Blank, but applicable'
     ;

VALUE AH1000F
     1='Yes'
     2='No'
     ;

VALUE AH1001F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1002F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1003F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1004F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1005F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1006F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1007F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1008F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1009F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1011F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH1013F
     88='Blank, but applicable'
     ;

VALUE AH1015F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH1017F
     88='Blank, but applicable'
     ;

VALUE AH1019F
     02='Never told'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     19='Yes.  Dont know if still have it'
     88='Blank, but applicable'
     ;

VALUE AH1021F
     88='Blank, but applicable'
     ;

VALUE AH1023F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1024F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1025F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1026F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1027F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1028F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1029F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1030F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1031F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1032F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1033F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1034F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1035F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1036F
     1='Yes in 59a or 60a'
     2='All other'
     ;

VALUE AH1037F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1038F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1039F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1040F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1041F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1042F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1043F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1044F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1045F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1046F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1047F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1048F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1049F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1050F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1051F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1052F
     88='Blank, but applicable'
     ;

VALUE AH1054F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1055F
     02='Never had one'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     88='Blank, but applicable'
     ;

VALUE AH1057F
     02='Never had one'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     88='Blank, but applicable'
     ;

VALUE AH1059F
     1='Yes'
     2='No'
     ;

VALUE AH1060F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1061F
     88='Blank, but applicable'
     ;

VALUE AH1063F
     00='Less than 1 month'
     88='Blank, but applicable'
     ;

VALUE AH1065F
     00='Times'
     88='Blank, but applicable'
     99='100 or more times'
     ;

VALUE AH1067F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1068F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1069F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1070F
     1='More than once a day'
     2='Once a day'
     3='Less than once a day'
     8='Blank, but applicable'
     ;

VALUE AH1071F
     1='All the time'
     2='Often'
     3='Once in a while'
     4='Never'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE AH1073F
     00='None'
     88='Blank, but applicable'
     99='100 or more times'
     ;

VALUE AH1075F
     00='None'
     88='Blank, but applicable'
     99='100 or more times'
     ;

VALUE AH1077F
     1='Age under 18'
     2='Age 18-24'
     3='Age 25+'
     ;

VALUE AH1078F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1079F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1080F
     1='One'
     2='2-3'
     3='4 or more'
     8='Blank, but applicable'
     ;

VALUE AH1081F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1082F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1083F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1084F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1085F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1086F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1087F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1088F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1089F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1090F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1091F
     88='Blank, but applicable'
     ;

VALUE AH1093F
     00='Less than 1 year'
     88='Blank, but applicable'
     ;

VALUE AH1095F
     00='Less than 1 year'
     88='Blank, but applicable'
     ;

VALUE AH1097F
     02='Never had one'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     88='Blank, but applicable'
     ;

VALUE AH1099F
     02='Never had one'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     88='Blank, but applicable'
     ;

VALUE AH1101F
     02='Never had one'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     88='Blank, but applicable'
     ;

VALUE AH1103F
     02='Never had one'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     88='Blank, but applicable'
     ;

VALUE AH1105F
     02='Never had one'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     88='Blank, but applicable'
     ;

VALUE AH1107F
     02='Never had one'
     13='Yes.  Still have it'
     14='Yes.  Does not still have it'
     18='Yes.  Blank, but applicable'
     88='Blank, but applicable'
     ;

VALUE AH1109F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1110F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1111F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1112F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1113F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1114F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1115F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1116F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1117F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1118F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1119F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1120F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1121F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1122F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1123F
     1='Age under 19'
     2='Age 19-59'
     3='Age 60+'
     ;

VALUE AH1124F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1125F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH1126F
     0='None'
     8='Blank, but applicable'
     ;

VALUE AH1127F
     00='Free'
     88='Blank, but applicable'
     99='1.00 dollar or more'
     ;

VALUE AH1129F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH1130F
     00='Free'
     77='Included in lunch fee'
     88='Blank, but applicable'
     ;

VALUE AH1132F
     0='None'
     8='Blank, but applicable'
     ;

VALUE AH1133F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH1134F
     0='None'
     8='Blank, but applicable'
     ;

VALUE AH1135F
     00='Free'
     88='Blank, but applicable'
     ;

VALUE AH1137F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1138F
     1='Prepared meals only'
     2='Groceries only'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AH1139F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1140F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1141F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1142F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1143F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1144F
     0='Blank, but applicable'
     2='Once a day'
     3='Four to six times a week'
     4='Two or three times a week'
     5='Once a week'
     6='Two or three times a month'
     7='Once a month'
     8='Less than once a month'
     ;

VALUE AH1145F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1146F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1147F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1148F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1149F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1150F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH1151F
     0='Blank, but applicable'
     1='Two or three times a day'
     2='Once a day'
     3='Four to six times a week'
     4='Two or three times a week'
     5='Once a week'
     6='Two or three times a month'
     7='Once a month'
     8='Less than once a month'
     9='Other'
     ;

VALUE AH1152F
     1='Sample person'
     2='Mother'
     3='Father'
     4='Sister or brother'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE AH1160F
     1='Dummy'
     ;
RUN;




DATA D_5020;
   INFILE 'z:\Data\Esophagus\NHANES_II\TEMP\DU5020.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N2AH0006 8
         N2AH0010 $1
         N2AH0011 4
         N2AH0012 4
         N2AH0013 $11
         N2AH0024 4
         N2AH0025 4
         N2AH0026 4
         N2AH0027 4
         N2AH0028 4
         N2AH0029 $1
         N2AH0030 4
         N2AH0032 4
         N2AH0034 $1
         N2AH0035 4
         N2AH0036 4
         N2AH0037 8
         N2AH0042 $3
         N2AH0045 4
         N2AH0047 4
         N2AH0049 $2
         N2AH0051 4
         N2AH0053 4
         N2AH0055 4
         N2AH0056 4
         N2AH0057 4
         N2AH0059 4
         N2AH0060 4
         N2AH0062 4
         N2AH0064 4
         N2AH0065 4
         N2AH0066 4
         N2AH0067 4
         N2AH0068 4
         N2AH0069 4
         N2AH0070 4
         N2AH0071 4
         N2AH0072 4
         N2AH0073 4
         N2AH0076 4
         N2AH0079 4
         N2AH0080 4
         N2AH0081 4
         N2AH0082 $9
         N2AH0091 4
         N2AH0092 4
         N2AH0093 4
         N2AH0094 4
         N2AH0095 4
         N2AH0096 4
         N2AH0097 4
         N2AH0098 4
         N2AH0099 4
         N2AH0100 4
         N2AH0101 4
         N2AH0103 4
         N2AH0104 4
         N2AH0105 4
         N2AH0106 4
         N2AH0107 4
         N2AH0109 8
         N2AH0113 4
         N2AH0114 $1
         N2AH0115 8
         N2AH0119 4
         N2AH0120 $1
         N2AH0121 8
         N2AH0125 4
         N2AH0126 $1
         N2AH0127 8
         N2AH0131 4
         N2AH0132 $1
         N2AH0133 8
         N2AH0137 4
         N2AH0138 $1
         N2AH0139 8
         N2AH0143 4
         N2AH0144 $1
         N2AH0145 8
         N2AH0149 4
         N2AH0150 $1
         N2AH0151 8
         N2AH0155 4
         N2AH0156 $1
         N2AH0157 8
         N2AH0161 4
         N2AH0162 $1
         N2AH0163 8
         N2AH0167 4
         N2AH0168 $1
         N2AH0169 8
         N2AH0173 8
         N2AH0177 4
         N2AH0178 4
         N2AH0179 4
         N2AH0180 4
         N2AH0181 4
         N2AH0182 4
         N2AH0183 4
         N2AH0184 4
         N2AH0186 4
         N2AH0188 4
         N2AH0190 4
         N2AH0192 $14
         N2AH0206 4
         N2AH0207 4
         N2AH0208 4
         N2AH0209 4
         N2AH0210 4
         N2AH0213 $34
         N2AH0247 4
         N2AH0249 $2
         N2AH0251 4
         N2AH0253 4
         N2AH0255 4
         N2AH0256 4
         N2AH0257 4
         N2AH0259 4
         N2AH0260 4
         N2AH0262 4
         N2AH0264 4
         N2AH0265 4
         N2AH0266 4
         N2AH0267 4
         N2AH0268 4
         N2AH0269 4
         N2AH0270 4
         N2AH0271 4
         N2AH0272 4
         N2AH0273 4
         N2AH0276 4
         N2AH0279 4
         N2AH0280 4
         N2AH0281 4
         N2AH0282 8
         N2AH0288 8
         N2AH0294 8
         N2AH0300 8
         N2AH0306 8
         N2AH0312 8
         N2AH0318 $6
         N2AH0324 4
         N2AH0326 4
         N2AH0327 4
         N2AH0328 $73
         N2AH0401 8
         N2AH0405 $21
         N2AH0426 4
         N2AH0427 4
         N2AH0428 4
         N2AH0429 4
         N2AH0431 4
         N2AH0433 4
         N2AH0435 4
         N2AH0437 4
         N2AH0439 4
         N2AH0441 4
         N2AH0443 4
         N2AH0444 4
         N2AH0445 4
         N2AH0447 4
         N2AH0449 4
         N2AH0451 4
         N2AH0453 4
         N2AH0454 4
         N2AH0455 4
         N2AH0456 4
         N2AH0457 4
         N2AH0458 4
         N2AH0459 4
         N2AH0461 4
         N2AH0463 4
         N2AH0465 4
         N2AH0467 4
         N2AH0469 4
         N2AH0471 4
         N2AH0473 4
         N2AH0475 4
         N2AH0477 4
         N2AH0479 4
         N2AH0481 4
         N2AH0483 4
         N2AH0485 4
         N2AH0487 4
         N2AH0489 4
         N2AH0491 4
         N2AH0493 4
         N2AH0495 4
         N2AH0497 4
         N2AH0499 4
         N2AH0501 4
         N2AH0503 4
         N2AH0505 4
         N2AH0507 4
         N2AH0509 4
         N2AH0511 4
         N2AH0513 4
         N2AH0515 4
         N2AH0517 4
         N2AH0519 4
         N2AH0521 4
         N2AH0523 4
         N2AH0525 4
         N2AH0527 4
         N2AH0529 4
         N2AH0531 4
         N2AH0533 4
         N2AH0535 4
         N2AH0537 4
         N2AH0539 4
         N2AH0541 4
         N2AH0543 4
         N2AH0545 4
         N2AH0547 4
         N2AH0549 4
         N2AH0551 4
         N2AH0553 4
         N2AH0555 4
         N2AH0557 4
         N2AH0559 4
         N2AH0561 4
         N2AH0563 4
         N2AH0565 4
         N2AH0567 4
         N2AH0569 4
         N2AH0571 4
         N2AH0573 4
         N2AH0575 4
         N2AH0577 4
         N2AH0579 4
         N2AH0581 4
         N2AH0583 4
         N2AH0585 4
         N2AH0587 4
         N2AH0589 4
         N2AH0591 4
         N2AH0593 4
         N2AH0595 4
         N2AH0597 4
         N2AH0599 4
         N2AH0600 4
         N2AH0602 4
         N2AH0603 4
         N2AH0604 4
         N2AH0605 4
         N2AH0606 4
         N2AH0607 4
         N2AH0608 4
         N2AH0609 4
         N2AH0610 4
         N2AH0611 4
         N2AH0612 4
         N2AH0613 4
         N2AH0614 4
         N2AH0615 4
         N2AH0616 4
         N2AH0617 4
         N2AH0618 4
         N2AH0619 4
         N2AH0620 4
         N2AH0621 4
         N2AH0622 4
         N2AH0623 4
         N2AH0624 4
         N2AH0625 4
         N2AH0626 4
         N2AH0627 4
         N2AH0629 4
         N2AH0631 4
         N2AH0633 4
         N2AH0635 4
         N2AH0637 4
         N2AH0638 4
         N2AH0640 4
         N2AH0641 4
         N2AH0643 4
         N2AH0644 4
         N2AH0646 4
         N2AH0647 4
         N2AH0648 4
         N2AH0649 4
         N2AH0650 4
         N2AH0652 4
         N2AH0653 4
         N2AH0654 4
         N2AH0655 4
         N2AH0656 4
         N2AH0657 $2
         N2AH0659 4
         N2AH0662 4
         N2AH0664 4
         N2AH0665 4
         N2AH0668 4
         N2AH0670 4
         N2AH0671 4
         N2AH0674 4
         N2AH0675 4
         N2AH0677 4
         N2AH0678 4
         N2AH0680 4
         N2AH0682 4
         N2AH0683 4
         N2AH0685 4
         N2AH0688 4
         N2AH0689 4
         N2AH0692 4
         N2AH0693 4
         N2AH0694 4
         N2AH0695 4
         N2AH0696 4
         N2AH0697 4
         N2AH0698 4
         N2AH0699 4
         N2AH0700 $1
         N2AH0701 4
         N2AH0703 4
         N2AH0705 4
         N2AH0707 4
         N2AH0709 4
         N2AH0711 4
         N2AH0712 4
         N2AH0713 4
         N2AH0714 4
         N2AH0715 4
         N2AH0716 4
         N2AH0717 4
         N2AH0718 4
         N2AH0719 4
         N2AH0721 4
         N2AH0722 4
         N2AH0723 4
         N2AH0724 4
         N2AH0725 4
         N2AH0726 4
         N2AH0727 4
         N2AH0729 4
         N2AH0730 4
         N2AH0731 4
         N2AH0733 4
         N2AH0735 4
         N2AH0736 4
         N2AH0737 4
         N2AH0738 4
         N2AH0740 4
         N2AH0741 4
         N2AH0742 4
         N2AH0743 4
         N2AH0745 4
         N2AH0746 4
         N2AH0747 4
         N2AH0748 $1
         N2AH0749 4
         N2AH0751 4
         N2AH0753 4
         N2AH0754 $1
         N2AH0755 4
         N2AH0758 4
         N2AH0761 4
         N2AH0764 4
         N2AH0767 4
         N2AH0768 $1
         N2AH0769 4
         N2AH0770 4
         N2AH0771 4
         N2AH0772 4
         N2AH0773 4
         N2AH0774 4
         N2AH0775 4
         N2AH0776 4
         N2AH0777 4
         N2AH0778 4
         N2AH0779 4
         N2AH0780 4
         N2AH0781 4
         N2AH0782 4
         N2AH0784 4
         N2AH0785 $2
         N2AH0787 4
         N2AH0789 4
         N2AH0791 4
         N2AH0792 4
         N2AH0793 4
         N2AH0794 4
         N2AH0795 4
         N2AH0796 4
         N2AH0797 4
         N2AH0798 4
         N2AH0799 4
         N2AH0800 4
         N2AH0801 4
         N2AH0802 4
         N2AH0803 4
         N2AH0804 4
         N2AH0805 4
         N2AH0806 4
         N2AH0807 4
         N2AH0808 4
         N2AH0809 4
         N2AH0810 4
         N2AH0811 4
         N2AH0812 4
         N2AH0813 4
         N2AH0814 4
         N2AH0815 4
         N2AH0816 4
         N2AH0817 4
         N2AH0818 4
         N2AH0819 $2
         N2AH0821 4
         N2AH0823 4
         N2AH0825 4
         N2AH0827 4
         N2AH0829 4
         N2AH0831 4
         N2AH0833 4
         N2AH0835 4
         N2AH0837 4
         N2AH0839 4
         N2AH0841 4
         N2AH0843 4
         N2AH0845 4
         N2AH0847 4
         N2AH0848 4
         N2AH0849 4
         N2AH0850 4
         N2AH0851 4
         N2AH0852 4
         N2AH0853 4
         N2AH0854 4
         N2AH0855 4
         N2AH0856 4
         N2AH0857 4
         N2AH0858 4
         N2AH0859 4
         N2AH0860 4
         N2AH0861 4
         N2AH0862 4
         N2AH0863 4
         N2AH0864 4
         N2AH0865 4
         N2AH0866 4
         N2AH0867 4
         N2AH0868 4
         N2AH0869 $2
         N2AH0871 4
         N2AH0873 4
         N2AH0875 4
         N2AH0877 4
         N2AH0878 4
         N2AH0880 $1
         N2AH0881 4
         N2AH0883 4
         N2AH0884 4
         N2AH0885 4
         N2AH0886 4
         N2AH0887 4
         N2AH0888 4
         N2AH0889 4
         N2AH0891 4
         N2AH0893 4
         N2AH0895 4
         N2AH0897 4
         N2AH0899 4
         N2AH0901 4
         N2AH0903 4
         N2AH0905 4
         N2AH0907 4
         N2AH0909 4
         N2AH0911 4
         N2AH0913 4
         N2AH0915 4
         N2AH0917 4
         N2AH0919 4
         N2AH0921 4
         N2AH0923 4
         N2AH0925 4
         N2AH0927 4
         N2AH0929 4
         N2AH0931 4
         N2AH0933 4
         N2AH0935 4
         N2AH0937 4
         N2AH0938 4
         N2AH0939 4
         N2AH0940 $1
         N2AH0941 4
         N2AH0943 4
         N2AH0944 4
         N2AH0945 4
         N2AH0946 4
         N2AH0947 4
         N2AH0948 4
         N2AH0949 4
         N2AH0950 4
         N2AH0951 4
         N2AH0952 4
         N2AH0953 4
         N2AH0954 4
         N2AH0955 4
         N2AH0956 4
         N2AH0957 4
         N2AH0959 8
         N2AH0963 8
         N2AH0967 8
         N2AH0971 8
         N2AH0975 $2
         N2AH0977 4
         N2AH0978 4
         N2AH0980 4
         N2AH0982 $1
         N2AH0983 4
         N2AH0984 4
         N2AH0986 4
         N2AH0988 $1
         N2AH0989 4
         N2AH0990 4
         N2AH0992 4
         N2AH0994 $1
         N2AH0995 4
         N2AH0996 4
         N2AH0998 4
         N2AH1000 4
         N2AH1001 4
         N2AH1002 4
         N2AH1003 4
         N2AH1004 4
         N2AH1005 4
         N2AH1006 4
         N2AH1007 4
         N2AH1008 4
         N2AH1009 4
         N2AH1010 $1
         N2AH1011 4
         N2AH1013 4
         N2AH1015 4
         N2AH1017 4
         N2AH1019 4
         N2AH1021 4
         N2AH1023 4
         N2AH1024 4
         N2AH1025 4
         N2AH1026 4
         N2AH1027 4
         N2AH1028 4
         N2AH1029 4
         N2AH1030 4
         N2AH1031 4
         N2AH1032 4
         N2AH1033 4
         N2AH1034 4
         N2AH1035 4
         N2AH1036 4
         N2AH1037 4
         N2AH1038 4
         N2AH1039 4
         N2AH1040 4
         N2AH1041 4
         N2AH1042 4
         N2AH1043 4
         N2AH1044 4
         N2AH1045 4
         N2AH1046 4
         N2AH1047 4
         N2AH1048 4
         N2AH1049 4
         N2AH1050 4
         N2AH1051 4
         N2AH1052 4
         N2AH1054 4
         N2AH1055 4
         N2AH1057 4
         N2AH1059 4
         N2AH1060 4
         N2AH1061 4
         N2AH1063 4
         N2AH1065 4
         N2AH1067 4
         N2AH1068 4
         N2AH1069 4
         N2AH1070 4
         N2AH1071 4
         N2AH1072 $1
         N2AH1073 4
         N2AH1075 4
         N2AH1077 4
         N2AH1078 4
         N2AH1079 4
         N2AH1080 4
         N2AH1081 4
         N2AH1082 4
         N2AH1083 4
         N2AH1084 4
         N2AH1085 4
         N2AH1086 4
         N2AH1087 4
         N2AH1088 4
         N2AH1089 4
         N2AH1090 4
         N2AH1091 4
         N2AH1093 4
         N2AH1095 4
         N2AH1097 4
         N2AH1099 4
         N2AH1101 4
         N2AH1103 4
         N2AH1105 4
         N2AH1107 4
         N2AH1109 4
         N2AH1110 4
         N2AH1111 4
         N2AH1112 4
         N2AH1113 4
         N2AH1114 4
         N2AH1115 4
         N2AH1116 4
         N2AH1117 4
         N2AH1118 4
         N2AH1119 4
         N2AH1120 4
         N2AH1121 4
         N2AH1122 4
         N2AH1123 4
         N2AH1124 4
         N2AH1125 4
         N2AH1126 4
         N2AH1127 4
         N2AH1129 4
         N2AH1130 4
         N2AH1132 4
         N2AH1133 4
         N2AH1134 4
         N2AH1135 4
         N2AH1137 4
         N2AH1138 4
         N2AH1139 4
         N2AH1140 4
         N2AH1141 4
         N2AH1142 4
         N2AH1143 4
         N2AH1144 4
         N2AH1145 4
         N2AH1146 4
         N2AH1147 4
         N2AH1148 4
         N2AH1149 4
         N2AH1150 4
         N2AH1151 4
         N2AH1152 4
         N2AH1153 $7
         N2AH1160 4
      ;


FORMAT
     N2AH0011 AH0011F.
     N2AH0012 AH0012F.
     N2AH0024 AH0024F.
     N2AH0025 AH0025F.
     N2AH0026 AH0026F.
     N2AH0027 AH0027F.
     N2AH0028 AH0028F.
     N2AH0035 AH0035F.
     N2AH0036 AH0036F.
     N2AH0047 AH0047F.
     N2AH0055 AH0055F.
     N2AH0056 AH0056F.
     N2AH0057 AH0057F.
     N2AH0059 AH0059F.
     N2AH0060 AH0060F.
     N2AH0062 AH0062F.
     N2AH0064 AH0064F.
     N2AH0065 AH0065F.
     N2AH0066 AH0066F.
     N2AH0067 AH0067F.
     N2AH0068 AH0068F.
     N2AH0069 AH0069F.
     N2AH0070 AH0070F.
     N2AH0071 AH0071F.
     N2AH0072 AH0072F.
     N2AH0073 AH0073F.
     N2AH0076 AH0076F.
     N2AH0079 AH0079F.
     N2AH0080 AH0080F.
     N2AH0081 AH0081F.
     N2AH0091 AH0091F.
     N2AH0092 AH0092F.
     N2AH0093 AH0093F.
     N2AH0094 AH0094F.
     N2AH0095 AH0095F.
     N2AH0096 AH0096F.
     N2AH0097 AH0097F.
     N2AH0098 AH0098F.
     N2AH0099 AH0099F.
     N2AH0100 AH0100F.
     N2AH0101 AH0101F.
     N2AH0103 AH0103F.
     N2AH0104 AH0104F.
     N2AH0105 AH0105F.
     N2AH0106 AH0106F.
     N2AH0107 AH0107F.
     N2AH0109 AH0109F.
     N2AH0113 AH0113F.
     N2AH0115 AH0115F.
     N2AH0119 AH0119F.
     N2AH0121 AH0121F.
     N2AH0125 AH0125F.
     N2AH0127 AH0127F.
     N2AH0131 AH0131F.
     N2AH0133 AH0133F.
     N2AH0137 AH0137F.
     N2AH0139 AH0139F.
     N2AH0143 AH0143F.
     N2AH0145 AH0145F.
     N2AH0149 AH0149F.
     N2AH0151 AH0151F.
     N2AH0155 AH0155F.
     N2AH0157 AH0157F.
     N2AH0161 AH0161F.
     N2AH0163 AH0163F.
     N2AH0167 AH0167F.
     N2AH0169 AH0169F.
     N2AH0173 AH0173F.
     N2AH0177 AH0177F.
     N2AH0178 AH0178F.
     N2AH0179 AH0179F.
     N2AH0180 AH0180F.
     N2AH0181 AH0181F.
     N2AH0182 AH0182F.
     N2AH0183 AH0183F.
     N2AH0190 AH0190F.
     N2AH0206 AH0206F.
     N2AH0207 AH0207F.
     N2AH0208 AH0208F.
     N2AH0209 AH0209F.
     N2AH0210 AH0210F.
     N2AH0251 AH0251F.
     N2AH0255 AH0255F.
     N2AH0256 AH0256F.
     N2AH0257 AH0257F.
     N2AH0259 AH0259F.
     N2AH0260 AH0260F.
     N2AH0262 AH0262F.
     N2AH0264 AH0264F.
     N2AH0265 AH0265F.
     N2AH0266 AH0266F.
     N2AH0267 AH0267F.
     N2AH0268 AH0268F.
     N2AH0269 AH0269F.
     N2AH0270 AH0270F.
     N2AH0271 AH0271F.
     N2AH0272 AH0272F.
     N2AH0273 AH0273F.
     N2AH0276 AH0276F.
     N2AH0279 AH0279F.
     N2AH0280 AH0280F.
     N2AH0281 AH0281F.
     N2AH0426 AH0426F.
     N2AH0427 AH0427F.
     N2AH0428 AH0428F.
     N2AH0429 AH0429F.
     N2AH0431 AH0431F.
     N2AH0433 AH0433F.
     N2AH0435 AH0435F.
     N2AH0437 AH0437F.
     N2AH0439 AH0439F.
     N2AH0441 AH0441F.
     N2AH0443 AH0443F.
     N2AH0444 AH0444F.
     N2AH0445 AH0445F.
     N2AH0447 AH0447F.
     N2AH0453 AH0453F.
     N2AH0454 AH0454F.
     N2AH0455 AH0455F.
     N2AH0456 AH0456F.
     N2AH0457 AH0457F.
     N2AH0458 AH0458F.
     N2AH0459 AH0459F.
     N2AH0461 AH0461F.
     N2AH0463 AH0463F.
     N2AH0465 AH0465F.
     N2AH0467 AH0467F.
     N2AH0469 AH0469F.
     N2AH0471 AH0471F.
     N2AH0473 AH0473F.
     N2AH0475 AH0475F.
     N2AH0477 AH0477F.
     N2AH0479 AH0479F.
     N2AH0481 AH0481F.
     N2AH0483 AH0483F.
     N2AH0485 AH0485F.
     N2AH0487 AH0487F.
     N2AH0489 AH0489F.
     N2AH0491 AH0491F.
     N2AH0493 AH0493F.
     N2AH0495 AH0495F.
     N2AH0497 AH0497F.
     N2AH0499 AH0499F.
     N2AH0501 AH0501F.
     N2AH0503 AH0503F.
     N2AH0505 AH0505F.
     N2AH0507 AH0507F.
     N2AH0509 AH0509F.
     N2AH0511 AH0511F.
     N2AH0513 AH0513F.
     N2AH0515 AH0515F.
     N2AH0517 AH0517F.
     N2AH0519 AH0519F.
     N2AH0521 AH0521F.
     N2AH0523 AH0523F.
     N2AH0525 AH0525F.
     N2AH0527 AH0527F.
     N2AH0529 AH0529F.
     N2AH0531 AH0531F.
     N2AH0533 AH0533F.
     N2AH0535 AH0535F.
     N2AH0537 AH0537F.
     N2AH0539 AH0539F.
     N2AH0541 AH0541F.
     N2AH0543 AH0543F.
     N2AH0545 AH0545F.
     N2AH0547 AH0547F.
     N2AH0549 AH0549F.
     N2AH0551 AH0551F.
     N2AH0553 AH0553F.
     N2AH0555 AH0555F.
     N2AH0557 AH0557F.
     N2AH0559 AH0559F.
     N2AH0561 AH0561F.
     N2AH0563 AH0563F.
     N2AH0565 AH0565F.
     N2AH0567 AH0567F.
     N2AH0569 AH0569F.
     N2AH0571 AH0571F.
     N2AH0573 AH0573F.
     N2AH0575 AH0575F.
     N2AH0577 AH0577F.
     N2AH0579 AH0579F.
     N2AH0581 AH0581F.
     N2AH0583 AH0583F.
     N2AH0585 AH0585F.
     N2AH0587 AH0587F.
     N2AH0589 AH0589F.
     N2AH0591 AH0591F.
     N2AH0593 AH0593F.
     N2AH0595 AH0595F.
     N2AH0597 AH0597F.
     N2AH0599 AH0599F.
     N2AH0600 AH0600F.
     N2AH0602 AH0602F.
     N2AH0603 AH0603F.
     N2AH0604 AH0604F.
     N2AH0605 AH0605F.
     N2AH0606 AH0606F.
     N2AH0607 AH0607F.
     N2AH0608 AH0608F.
     N2AH0609 AH0609F.
     N2AH0610 AH0610F.
     N2AH0611 AH0611F.
     N2AH0612 AH0612F.
     N2AH0613 AH0613F.
     N2AH0614 AH0614F.
     N2AH0615 AH0615F.
     N2AH0616 AH0616F.
     N2AH0617 AH0617F.
     N2AH0618 AH0618F.
     N2AH0619 AH0619F.
     N2AH0620 AH0620F.
     N2AH0621 AH0621F.
     N2AH0622 AH0622F.
     N2AH0623 AH0623F.
     N2AH0624 AH0624F.
     N2AH0625 AH0625F.
     N2AH0626 AH0626F.
     N2AH0627 AH0627F.
     N2AH0629 AH0629F.
     N2AH0631 AH0631F.
     N2AH0633 AH0633F.
     N2AH0635 AH0635F.
     N2AH0637 AH0637F.
     N2AH0638 AH0638F.
     N2AH0640 AH0640F.
     N2AH0641 AH0641F.
     N2AH0643 AH0643F.
     N2AH0644 AH0644F.
     N2AH0646 AH0646F.
     N2AH0647 AH0647F.
     N2AH0648 AH0648F.
     N2AH0649 AH0649F.
     N2AH0650 AH0650F.
     N2AH0652 AH0652F.
     N2AH0653 AH0653F.
     N2AH0654 AH0654F.
     N2AH0655 AH0655F.
     N2AH0656 AH0656F.
     N2AH0659 AH0659F.
     N2AH0662 AH0662F.
     N2AH0664 AH0664F.
     N2AH0665 AH0665F.
     N2AH0668 AH0668F.
     N2AH0670 AH0670F.
     N2AH0671 AH0671F.
     N2AH0674 AH0674F.
     N2AH0675 AH0675F.
     N2AH0677 AH0677F.
     N2AH0678 AH0678F.
     N2AH0680 AH0680F.
     N2AH0682 AH0682F.
     N2AH0683 AH0683F.
     N2AH0685 AH0685F.
     N2AH0688 AH0688F.
     N2AH0689 AH0689F.
     N2AH0692 AH0692F.
     N2AH0693 AH0693F.
     N2AH0694 AH0694F.
     N2AH0695 AH0695F.
     N2AH0696 AH0696F.
     N2AH0697 AH0697F.
     N2AH0698 AH0698F.
     N2AH0699 AH0699F.
     N2AH0701 AH0701F.
     N2AH0703 AH0703F.
     N2AH0705 AH0705F.
     N2AH0707 AH0707F.
     N2AH0709 AH0709F.
     N2AH0711 AH0711F.
     N2AH0712 AH0712F.
     N2AH0713 AH0713F.
     N2AH0714 AH0714F.
     N2AH0715 AH0715F.
     N2AH0716 AH0716F.
     N2AH0717 AH0717F.
     N2AH0718 AH0718F.
     N2AH0719 AH0719F.
     N2AH0721 AH0721F.
     N2AH0722 AH0722F.
     N2AH0723 AH0723F.
     N2AH0724 AH0724F.
     N2AH0725 AH0725F.
     N2AH0726 AH0726F.
     N2AH0727 AH0727F.
     N2AH0729 AH0729F.
     N2AH0730 AH0730F.
     N2AH0731 AH0731F.
     N2AH0733 AH0733F.
     N2AH0735 AH0735F.
     N2AH0736 AH0736F.
     N2AH0737 AH0737F.
     N2AH0738 AH0738F.
     N2AH0740 AH0740F.
     N2AH0741 AH0741F.
     N2AH0742 AH0742F.
     N2AH0743 AH0743F.
     N2AH0745 AH0745F.
     N2AH0746 AH0746F.
     N2AH0747 AH0747F.
     N2AH0749 AH0749F.
     N2AH0751 AH0751F.
     N2AH0753 AH0753F.
     N2AH0755 AH0755F.
     N2AH0758 AH0758F.
     N2AH0761 AH0761F.
     N2AH0764 AH0764F.
     N2AH0767 AH0767F.
     N2AH0769 AH0769F.
     N2AH0770 AH0770F.
     N2AH0771 AH0771F.
     N2AH0772 AH0772F.
     N2AH0773 AH0773F.
     N2AH0774 AH0774F.
     N2AH0775 AH0775F.
     N2AH0776 AH0776F.
     N2AH0777 AH0777F.
     N2AH0778 AH0778F.
     N2AH0779 AH0779F.
     N2AH0780 AH0780F.
     N2AH0781 AH0781F.
     N2AH0782 AH0782F.
     N2AH0787 AH0787F.
     N2AH0789 AH0789F.
     N2AH0791 AH0791F.
     N2AH0792 AH0792F.
     N2AH0793 AH0793F.
     N2AH0794 AH0794F.
     N2AH0795 AH0795F.
     N2AH0796 AH0796F.
     N2AH0797 AH0797F.
     N2AH0798 AH0798F.
     N2AH0799 AH0799F.
     N2AH0800 AH0800F.
     N2AH0801 AH0801F.
     N2AH0802 AH0802F.
     N2AH0803 AH0803F.
     N2AH0804 AH0804F.
     N2AH0805 AH0805F.
     N2AH0806 AH0806F.
     N2AH0807 AH0807F.
     N2AH0808 AH0808F.
     N2AH0809 AH0809F.
     N2AH0810 AH0810F.
     N2AH0811 AH0811F.
     N2AH0812 AH0812F.
     N2AH0813 AH0813F.
     N2AH0814 AH0814F.
     N2AH0815 AH0815F.
     N2AH0816 AH0816F.
     N2AH0817 AH0817F.
     N2AH0821 AH0821F.
     N2AH0823 AH0823F.
     N2AH0825 AH0825F.
     N2AH0827 AH0827F.
     N2AH0829 AH0829F.
     N2AH0831 AH0831F.
     N2AH0833 AH0833F.
     N2AH0835 AH0835F.
     N2AH0837 AH0837F.
     N2AH0839 AH0839F.
     N2AH0841 AH0841F.
     N2AH0843 AH0843F.
     N2AH0845 AH0845F.
     N2AH0847 AH0847F.
     N2AH0848 AH0848F.
     N2AH0849 AH0849F.
     N2AH0850 AH0850F.
     N2AH0851 AH0851F.
     N2AH0852 AH0852F.
     N2AH0853 AH0853F.
     N2AH0854 AH0854F.
     N2AH0855 AH0855F.
     N2AH0856 AH0856F.
     N2AH0857 AH0857F.
     N2AH0858 AH0858F.
     N2AH0859 AH0859F.
     N2AH0860 AH0860F.
     N2AH0861 AH0861F.
     N2AH0862 AH0862F.
     N2AH0863 AH0863F.
     N2AH0864 AH0864F.
     N2AH0865 AH0865F.
     N2AH0866 AH0866F.
     N2AH0867 AH0867F.
     N2AH0871 AH0871F.
     N2AH0873 AH0873F.
     N2AH0875 AH0875F.
     N2AH0877 AH0877F.
     N2AH0878 AH0878F.
     N2AH0881 AH0881F.
     N2AH0883 AH0883F.
     N2AH0884 AH0884F.
     N2AH0885 AH0885F.
     N2AH0886 AH0886F.
     N2AH0887 AH0887F.
     N2AH0888 AH0888F.
     N2AH0889 AH0889F.
     N2AH0891 AH0891F.
     N2AH0893 AH0893F.
     N2AH0895 AH0895F.
     N2AH0897 AH0897F.
     N2AH0899 AH0899F.
     N2AH0901 AH0901F.
     N2AH0903 AH0903F.
     N2AH0905 AH0905F.
     N2AH0907 AH0907F.
     N2AH0909 AH0909F.
     N2AH0911 AH0911F.
     N2AH0913 AH0913F.
     N2AH0915 AH0915F.
     N2AH0917 AH0917F.
     N2AH0919 AH0919F.
     N2AH0921 AH0921F.
     N2AH0923 AH0923F.
     N2AH0925 AH0925F.
     N2AH0927 AH0927F.
     N2AH0929 AH0929F.
     N2AH0931 AH0931F.
     N2AH0933 AH0933F.
     N2AH0935 AH0935F.
     N2AH0937 AH0937F.
     N2AH0938 AH0938F.
     N2AH0939 AH0939F.
     N2AH0941 AH0941F.
     N2AH0943 AH0943F.
     N2AH0944 AH0944F.
     N2AH0945 AH0945F.
     N2AH0946 AH0946F.
     N2AH0947 AH0947F.
     N2AH0948 AH0948F.
     N2AH0949 AH0949F.
     N2AH0950 AH0950F.
     N2AH0951 AH0951F.
     N2AH0952 AH0952F.
     N2AH0953 AH0953F.
     N2AH0954 AH0954F.
     N2AH0955 AH0955F.
     N2AH0956 AH0956F.
     N2AH0957 AH0957F.
     N2AH0959 AH0959F.
     N2AH0963 AH0963F.
     N2AH0967 AH0967F.
     N2AH0971 AH0971F.
     N2AH0977 AH0977F.
     N2AH0978 AH0978F.
     N2AH0980 AH0980F.
     N2AH0983 AH0983F.
     N2AH0984 AH0984F.
     N2AH0986 AH0986F.
     N2AH0989 AH0989F.
     N2AH0990 AH0990F.
     N2AH0992 AH0992F.
     N2AH0995 AH0995F.
     N2AH0996 AH0996F.
     N2AH0998 AH0998F.
     N2AH1000 AH1000F.
     N2AH1001 AH1001F.
     N2AH1002 AH1002F.
     N2AH1003 AH1003F.
     N2AH1004 AH1004F.
     N2AH1005 AH1005F.
     N2AH1006 AH1006F.
     N2AH1007 AH1007F.
     N2AH1008 AH1008F.
     N2AH1009 AH1009F.
     N2AH1011 AH1011F.
     N2AH1013 AH1013F.
     N2AH1015 AH1015F.
     N2AH1017 AH1017F.
     N2AH1019 AH1019F.
     N2AH1021 AH1021F.
     N2AH1023 AH1023F.
     N2AH1024 AH1024F.
     N2AH1025 AH1025F.
     N2AH1026 AH1026F.
     N2AH1027 AH1027F.
     N2AH1028 AH1028F.
     N2AH1029 AH1029F.
     N2AH1030 AH1030F.
     N2AH1031 AH1031F.
     N2AH1032 AH1032F.
     N2AH1033 AH1033F.
     N2AH1034 AH1034F.
     N2AH1035 AH1035F.
     N2AH1036 AH1036F.
     N2AH1037 AH1037F.
     N2AH1038 AH1038F.
     N2AH1039 AH1039F.
     N2AH1040 AH1040F.
     N2AH1041 AH1041F.
     N2AH1042 AH1042F.
     N2AH1043 AH1043F.
     N2AH1044 AH1044F.
     N2AH1045 AH1045F.
     N2AH1046 AH1046F.
     N2AH1047 AH1047F.
     N2AH1048 AH1048F.
     N2AH1049 AH1049F.
     N2AH1050 AH1050F.
     N2AH1051 AH1051F.
     N2AH1052 AH1052F.
     N2AH1054 AH1054F.
     N2AH1055 AH1055F.
     N2AH1057 AH1057F.
     N2AH1059 AH1059F.
     N2AH1060 AH1060F.
     N2AH1061 AH1061F.
     N2AH1063 AH1063F.
     N2AH1065 AH1065F.
     N2AH1067 AH1067F.
     N2AH1068 AH1068F.
     N2AH1069 AH1069F.
     N2AH1070 AH1070F.
     N2AH1071 AH1071F.
     N2AH1073 AH1073F.
     N2AH1075 AH1075F.
     N2AH1077 AH1077F.
     N2AH1078 AH1078F.
     N2AH1079 AH1079F.
     N2AH1080 AH1080F.
     N2AH1081 AH1081F.
     N2AH1082 AH1082F.
     N2AH1083 AH1083F.
     N2AH1084 AH1084F.
     N2AH1085 AH1085F.
     N2AH1086 AH1086F.
     N2AH1087 AH1087F.
     N2AH1088 AH1088F.
     N2AH1089 AH1089F.
     N2AH1090 AH1090F.
     N2AH1091 AH1091F.
     N2AH1093 AH1093F.
     N2AH1095 AH1095F.
     N2AH1097 AH1097F.
     N2AH1099 AH1099F.
     N2AH1101 AH1101F.
     N2AH1103 AH1103F.
     N2AH1105 AH1105F.
     N2AH1107 AH1107F.
     N2AH1109 AH1109F.
     N2AH1110 AH1110F.
     N2AH1111 AH1111F.
     N2AH1112 AH1112F.
     N2AH1113 AH1113F.
     N2AH1114 AH1114F.
     N2AH1115 AH1115F.
     N2AH1116 AH1116F.
     N2AH1117 AH1117F.
     N2AH1118 AH1118F.
     N2AH1119 AH1119F.
     N2AH1120 AH1120F.
     N2AH1121 AH1121F.
     N2AH1122 AH1122F.
     N2AH1123 AH1123F.
     N2AH1124 AH1124F.
     N2AH1125 AH1125F.
     N2AH1126 AH1126F.
     N2AH1127 AH1127F.
     N2AH1129 AH1129F.
     N2AH1130 AH1130F.
     N2AH1132 AH1132F.
     N2AH1133 AH1133F.
     N2AH1134 AH1134F.
     N2AH1135 AH1135F.
     N2AH1137 AH1137F.
     N2AH1138 AH1138F.
     N2AH1139 AH1139F.
     N2AH1140 AH1140F.
     N2AH1141 AH1141F.
     N2AH1142 AH1142F.
     N2AH1143 AH1143F.
     N2AH1144 AH1144F.
     N2AH1145 AH1145F.
     N2AH1146 AH1146F.
     N2AH1147 AH1147F.
     N2AH1148 AH1148F.
     N2AH1149 AH1149F.
     N2AH1150 AH1150F.
     N2AH1151 AH1151F.
     N2AH1152 AH1152F.
     N2AH1160 AH1160F.
     ;

      INPUT
         SEQN 1-5
         N2AH0006 6-9
         N2AH0010 10
         N2AH0011 11
         N2AH0012 12
         N2AH0013 13-23
         N2AH0024 24
         N2AH0025 25
         N2AH0026 26
         N2AH0027 27
         N2AH0028 28
         N2AH0029 29
         N2AH0030 30-31
         N2AH0032 32-33
         N2AH0034 34
         N2AH0035 35
         N2AH0036 36
         N2AH0037 37-41
         N2AH0042 42-44
         N2AH0045 45-46
         N2AH0047 47-48
         N2AH0049 49-50
         N2AH0051 51-52
         N2AH0053 53-54
         N2AH0055 55
         N2AH0056 56
         N2AH0057 57-58
         N2AH0059 59
         N2AH0060 60-61
         N2AH0062 62-63
         N2AH0064 64
         N2AH0065 65
         N2AH0066 66
         N2AH0067 67
         N2AH0068 68
         N2AH0069 69
         N2AH0070 70
         N2AH0071 71
         N2AH0072 72
         N2AH0073 73-75
         N2AH0076 76-78
         N2AH0079 79
         N2AH0080 80
         N2AH0081 81
         N2AH0082 82-90
         N2AH0091 91
         N2AH0092 92
         N2AH0093 93
         N2AH0094 94
         N2AH0095 95
         N2AH0096 96
         N2AH0097 97
         N2AH0098 98
         N2AH0099 99
         N2AH0100 100
         N2AH0101 101-102
         N2AH0103 103
         N2AH0104 104
         N2AH0105 105
         N2AH0106 106
         N2AH0107 107-108
         N2AH0109 109-112
         N2AH0113 113
         N2AH0114 114
         N2AH0115 115-118
         N2AH0119 119
         N2AH0120 120
         N2AH0121 121-124
         N2AH0125 125
         N2AH0126 126
         N2AH0127 127-130
         N2AH0131 131
         N2AH0132 132
         N2AH0133 133-136
         N2AH0137 137
         N2AH0138 138
         N2AH0139 139-142
         N2AH0143 143
         N2AH0144 144
         N2AH0145 145-148
         N2AH0149 149
         N2AH0150 150
         N2AH0151 151-154
         N2AH0155 155
         N2AH0156 156
         N2AH0157 157-160
         N2AH0161 161
         N2AH0162 162
         N2AH0163 163-166
         N2AH0167 167
         N2AH0168 168
         N2AH0169 169-172
         N2AH0173 173-176
         N2AH0177 177
         N2AH0178 178
         N2AH0179 179
         N2AH0180 180
         N2AH0181 181
         N2AH0182 182
         N2AH0183 183
         N2AH0184 184-185
         N2AH0186 186-187
         N2AH0188 188-189
         N2AH0190 190-191
         N2AH0192 192-205
         N2AH0206 206
         N2AH0207 207
         N2AH0208 208
         N2AH0209 209
         N2AH0210 210-212
         N2AH0213 213-246
         N2AH0247 247-248
         N2AH0249 249-250
         N2AH0251 251-252
         N2AH0253 253-254
         N2AH0255 255
         N2AH0256 256
         N2AH0257 257-258
         N2AH0259 259
         N2AH0260 260-261
         N2AH0262 262-263
         N2AH0264 264
         N2AH0265 265
         N2AH0266 266
         N2AH0267 267
         N2AH0268 268
         N2AH0269 269
         N2AH0270 270
         N2AH0271 271
         N2AH0272 272
         N2AH0273 273-275
         N2AH0276 276-278
         N2AH0279 279
         N2AH0280 280
         N2AH0281 281
         N2AH0282 282-287
         N2AH0288 288-293
         N2AH0294 294-299
         N2AH0300 300-305
         N2AH0306 306-311
         N2AH0312 312-317
         N2AH0318 318-323
         N2AH0324 324-325
         N2AH0326 326
         N2AH0327 327
         N2AH0328 328-400
         N2AH0401 401-404
         N2AH0405 405-425
         N2AH0426 426
         N2AH0427 427
         N2AH0428 428
         N2AH0429 429-430
         N2AH0431 431-432
         N2AH0433 433-434
         N2AH0435 435-436
         N2AH0437 437-438
         N2AH0439 439-440
         N2AH0441 441-442
         N2AH0443 443
         N2AH0444 444
         N2AH0445 445-446
         N2AH0447 447-448
         N2AH0449 449-450
         N2AH0451 451-452
         N2AH0453 453
         N2AH0454 454
         N2AH0455 455
         N2AH0456 456
         N2AH0457 457
         N2AH0458 458
         N2AH0459 459-460
         N2AH0461 461-462
         N2AH0463 463-464
         N2AH0465 465-466
         N2AH0467 467-468
         N2AH0469 469-470
         N2AH0471 471-472
         N2AH0473 473-474
         N2AH0475 475-476
         N2AH0477 477-478
         N2AH0479 479-480
         N2AH0481 481-482
         N2AH0483 483-484
         N2AH0485 485-486
         N2AH0487 487-488
         N2AH0489 489-490
         N2AH0491 491-492
         N2AH0493 493-494
         N2AH0495 495-496
         N2AH0497 497-498
         N2AH0499 499-500
         N2AH0501 501-502
         N2AH0503 503-504
         N2AH0505 505-506
         N2AH0507 507-508
         N2AH0509 509-510
         N2AH0511 511-512
         N2AH0513 513-514
         N2AH0515 515-516
         N2AH0517 517-518
         N2AH0519 519-520
         N2AH0521 521-522
         N2AH0523 523-524
         N2AH0525 525-526
         N2AH0527 527-528
         N2AH0529 529-530
         N2AH0531 531-532
         N2AH0533 533-534
         N2AH0535 535-536
         N2AH0537 537-538
         N2AH0539 539-540
         N2AH0541 541-542
         N2AH0543 543-544
         N2AH0545 545-546
         N2AH0547 547-548
         N2AH0549 549-550
         N2AH0551 551-552
         N2AH0553 553-554
         N2AH0555 555-556
         N2AH0557 557-558
         N2AH0559 559-560
         N2AH0561 561-562
         N2AH0563 563-564
         N2AH0565 565-566
         N2AH0567 567-568
         N2AH0569 569-570
         N2AH0571 571-572
         N2AH0573 573-574
         N2AH0575 575-576
         N2AH0577 577-578
         N2AH0579 579-580
         N2AH0581 581-582
         N2AH0583 583-584
         N2AH0585 585-586
         N2AH0587 587-588
         N2AH0589 589-590
         N2AH0591 591-592
         N2AH0593 593-594
         N2AH0595 595-596
         N2AH0597 597-598
         N2AH0599 599
         N2AH0600 600-601
         N2AH0602 602
         N2AH0603 603
         N2AH0604 604
         N2AH0605 605
         N2AH0606 606
         N2AH0607 607
         N2AH0608 608
         N2AH0609 609
         N2AH0610 610
         N2AH0611 611
         N2AH0612 612
         N2AH0613 613
         N2AH0614 614
         N2AH0615 615
         N2AH0616 616
         N2AH0617 617
         N2AH0618 618
         N2AH0619 619
         N2AH0620 620
         N2AH0621 621
         N2AH0622 622
         N2AH0623 623
         N2AH0624 624
         N2AH0625 625
         N2AH0626 626
         N2AH0627 627-628
         N2AH0629 629-630
         N2AH0631 631-632
         N2AH0633 633-634
         N2AH0635 635-636
         N2AH0637 637
         N2AH0638 638-639
         N2AH0640 640
         N2AH0641 641-642
         N2AH0643 643
         N2AH0644 644-645
         N2AH0646 646
         N2AH0647 647
         N2AH0648 648
         N2AH0649 649
         N2AH0650 650-651
         N2AH0652 652
         N2AH0653 653
         N2AH0654 654
         N2AH0655 655
         N2AH0656 656
         N2AH0657 657-658
         N2AH0659 659-661
         N2AH0662 662-663
         N2AH0664 664
         N2AH0665 665-667
         N2AH0668 668-669
         N2AH0670 670
         N2AH0671 671-673
         N2AH0674 674
         N2AH0675 675-676
         N2AH0677 677
         N2AH0678 678-679
         N2AH0680 680-681
         N2AH0682 682
         N2AH0683 683-684
         N2AH0685 685-687
         N2AH0688 688
         N2AH0689 689-691
         N2AH0692 692
         N2AH0693 693
         N2AH0694 694
         N2AH0695 695
         N2AH0696 696
         N2AH0697 697
         N2AH0698 698
         N2AH0699 699
         N2AH0700 700
         N2AH0701 701-702
         N2AH0703 703-704
         N2AH0705 705-706
         N2AH0707 707-708
         N2AH0709 709-710
         N2AH0711 711
         N2AH0712 712
         N2AH0713 713
         N2AH0714 714
         N2AH0715 715
         N2AH0716 716
         N2AH0717 717
         N2AH0718 718
         N2AH0719 719-720
         N2AH0721 721
         N2AH0722 722
         N2AH0723 723
         N2AH0724 724
         N2AH0725 725
         N2AH0726 726
         N2AH0727 727-728
         N2AH0729 729
         N2AH0730 730
         N2AH0731 731-732
         N2AH0733 733-734
         N2AH0735 735
         N2AH0736 736
         N2AH0737 737
         N2AH0738 738-739
         N2AH0740 740
         N2AH0741 741
         N2AH0742 742
         N2AH0743 743-744
         N2AH0745 745
         N2AH0746 746
         N2AH0747 747
         N2AH0748 748
         N2AH0749 749-750
         N2AH0751 751-752
         N2AH0753 753
         N2AH0754 754
         N2AH0755 755-757
         N2AH0758 758-760
         N2AH0761 761-763
         N2AH0764 764-766
         N2AH0767 767
         N2AH0768 768
         N2AH0769 769
         N2AH0770 770
         N2AH0771 771
         N2AH0772 772
         N2AH0773 773
         N2AH0774 774
         N2AH0775 775
         N2AH0776 776
         N2AH0777 777
         N2AH0778 778
         N2AH0779 779
         N2AH0780 780
         N2AH0781 781
         N2AH0782 782-783
         N2AH0784 784
         N2AH0785 785-786
         N2AH0787 787-788
         N2AH0789 789-790
         N2AH0791 791
         N2AH0792 792
         N2AH0793 793
         N2AH0794 794
         N2AH0795 795
         N2AH0796 796
         N2AH0797 797
         N2AH0798 798
         N2AH0799 799
         N2AH0800 800
         N2AH0801 801
         N2AH0802 802
         N2AH0803 803
         N2AH0804 804
         N2AH0805 805
         N2AH0806 806
         N2AH0807 807
         N2AH0808 808
         N2AH0809 809
         N2AH0810 810
         N2AH0811 811
         N2AH0812 812
         N2AH0813 813
         N2AH0814 814
         N2AH0815 815
         N2AH0816 816
         N2AH0817 817
         N2AH0818 818
         N2AH0819 819-820
         N2AH0821 821-822
         N2AH0823 823-824
         N2AH0825 825-826
         N2AH0827 827-828
         N2AH0829 829-830
         N2AH0831 831-832
         N2AH0833 833-834
         N2AH0835 835-836
         N2AH0837 837-838
         N2AH0839 839-840
         N2AH0841 841-842
         N2AH0843 843-844
         N2AH0845 845-846
         N2AH0847 847
         N2AH0848 848
         N2AH0849 849
         N2AH0850 850
         N2AH0851 851
         N2AH0852 852
         N2AH0853 853
         N2AH0854 854
         N2AH0855 855
         N2AH0856 856
         N2AH0857 857
         N2AH0858 858
         N2AH0859 859
         N2AH0860 860
         N2AH0861 861
         N2AH0862 862
         N2AH0863 863
         N2AH0864 864
         N2AH0865 865
         N2AH0866 866
         N2AH0867 867
         N2AH0868 868
         N2AH0869 869-870
         N2AH0871 871-872
         N2AH0873 873-874
         N2AH0875 875-876
         N2AH0877 877
         N2AH0878 878-879
         N2AH0880 880
         N2AH0881 881-882
         N2AH0883 883
         N2AH0884 884
         N2AH0885 885
         N2AH0886 886
         N2AH0887 887
         N2AH0888 888
         N2AH0889 889-890
         N2AH0891 891-892
         N2AH0893 893-894
         N2AH0895 895-896
         N2AH0897 897-898
         N2AH0899 899-900
         N2AH0901 901-902
         N2AH0903 903-904
         N2AH0905 905-906
         N2AH0907 907-908
         N2AH0909 909-910
         N2AH0911 911-912
         N2AH0913 913-914
         N2AH0915 915-916
         N2AH0917 917-918
         N2AH0919 919-920
         N2AH0921 921-922
         N2AH0923 923-924
         N2AH0925 925-926
         N2AH0927 927-928
         N2AH0929 929-930
         N2AH0931 931-932
         N2AH0933 933-934
         N2AH0935 935-936
         N2AH0937 937
         N2AH0938 938
         N2AH0939 939
         N2AH0940 940
         N2AH0941 941-942
         N2AH0943 943
         N2AH0944 944
         N2AH0945 945
         N2AH0946 946
         N2AH0947 947
         N2AH0948 948
         N2AH0949 949
         N2AH0950 950
         N2AH0951 951
         N2AH0952 952
         N2AH0953 953
         N2AH0954 954
         N2AH0955 955
         N2AH0956 956
         N2AH0957 957-958
         N2AH0959 959-962
         N2AH0963 963-966
         N2AH0967 967-970
         N2AH0971 971-974
         N2AH0975 975-976
         N2AH0977 977
         N2AH0978 978-979
         N2AH0980 980-981
         N2AH0982 982
         N2AH0983 983
         N2AH0984 984-985
         N2AH0986 986-987
         N2AH0988 988
         N2AH0989 989
         N2AH0990 990-991
         N2AH0992 992-993
         N2AH0994 994
         N2AH0995 995
         N2AH0996 996-997
         N2AH0998 998-999
         N2AH1000 1000
         N2AH1001 1001
         N2AH1002 1002
         N2AH1003 1003
         N2AH1004 1004
         N2AH1005 1005
         N2AH1006 1006
         N2AH1007 1007
         N2AH1008 1008
         N2AH1009 1009
         N2AH1010 1010
         N2AH1011 1011-1012
         N2AH1013 1013-1014
         N2AH1015 1015-1016
         N2AH1017 1017-1018
         N2AH1019 1019-1020
         N2AH1021 1021-1022
         N2AH1023 1023
         N2AH1024 1024
         N2AH1025 1025
         N2AH1026 1026
         N2AH1027 1027
         N2AH1028 1028
         N2AH1029 1029
         N2AH1030 1030
         N2AH1031 1031
         N2AH1032 1032
         N2AH1033 1033
         N2AH1034 1034
         N2AH1035 1035
         N2AH1036 1036
         N2AH1037 1037
         N2AH1038 1038
         N2AH1039 1039
         N2AH1040 1040
         N2AH1041 1041
         N2AH1042 1042
         N2AH1043 1043
         N2AH1044 1044
         N2AH1045 1045
         N2AH1046 1046
         N2AH1047 1047
         N2AH1048 1048
         N2AH1049 1049
         N2AH1050 1050
         N2AH1051 1051
         N2AH1052 1052-1053
         N2AH1054 1054
         N2AH1055 1055-1056
         N2AH1057 1057-1058
         N2AH1059 1059
         N2AH1060 1060
         N2AH1061 1061-1062
         N2AH1063 1063-1064
         N2AH1065 1065-1066
         N2AH1067 1067
         N2AH1068 1068
         N2AH1069 1069
         N2AH1070 1070
         N2AH1071 1071
         N2AH1072 1072
         N2AH1073 1073-1074
         N2AH1075 1075-1076
         N2AH1077 1077
         N2AH1078 1078
         N2AH1079 1079
         N2AH1080 1080
         N2AH1081 1081
         N2AH1082 1082
         N2AH1083 1083
         N2AH1084 1084
         N2AH1085 1085
         N2AH1086 1086
         N2AH1087 1087
         N2AH1088 1088
         N2AH1089 1089
         N2AH1090 1090
         N2AH1091 1091-1092
         N2AH1093 1093-1094
         N2AH1095 1095-1096
         N2AH1097 1097-1098
         N2AH1099 1099-1100
         N2AH1101 1101-1102
         N2AH1103 1103-1104
         N2AH1105 1105-1106
         N2AH1107 1107-1108
         N2AH1109 1109
         N2AH1110 1110
         N2AH1111 1111
         N2AH1112 1112
         N2AH1113 1113
         N2AH1114 1114
         N2AH1115 1115
         N2AH1116 1116
         N2AH1117 1117
         N2AH1118 1118
         N2AH1119 1119
         N2AH1120 1120
         N2AH1121 1121
         N2AH1122 1122
         N2AH1123 1123
         N2AH1124 1124
         N2AH1125 1125
         N2AH1126 1126
         N2AH1127 1127-1128
         N2AH1129 1129
         N2AH1130 1130-1131
         N2AH1132 1132
         N2AH1133 1133
         N2AH1134 1134
         N2AH1135 1135-1136
         N2AH1137 1137
         N2AH1138 1138
         N2AH1139 1139
         N2AH1140 1140
         N2AH1141 1141
         N2AH1142 1142
         N2AH1143 1143
         N2AH1144 1144
         N2AH1145 1145
         N2AH1146 1146
         N2AH1147 1147
         N2AH1148 1148
         N2AH1149 1149
         N2AH1150 1150
         N2AH1151 1151
         N2AH1152 1152
         N2AH1153 1153-1159
         N2AH1160 1160
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N2AH0006 = "CATALOG NUMBER"
         N2AH0010 = "DATA USER WORK AREA"
         N2AH0011 = "(SEE DETAILED NOTES) SIZE OF PLACE"
         N2AH0012 = "(SEE DETAILED NOTES) SMASA-NOT SMSA"
         N2AH0013 = "DATA USER WORK AREA"
         N2AH0024 = "Q7 TYPE OF LIVING QUARTERS"
         N2AH0025 = "Q9 LAND USAGE"
         N2AH0026 = "Q11 A IF RURAL, ASKED DOES THIS PLAC ..."
         N2AH0027 = "Q11B IF 10 ACRES OR MORE, ASKED IF I ..."
         N2AH0028 = "Q11C IF LESS THAN 10 ACRES, ASKED IF ..."
         N2AH0029 = "DATA USER WORK AREA"
         N2AH0030 = "TOTAL NUMBER OF PERSONS IN HOUSEHOLD"
         N2AH0032 = "TOTAL NUMBER OF SAMPLE PERSONS IN FAMILY"
         N2AH0034 = "DATA USER WORK AREA"
         N2AH0035 = "FAMILY RELATIONSHIP"
         N2AH0036 = "EXAMINATION STATUS"
         N2AH0037 = "FAMILY UNIT SEQUENCE NUMBER (SEE DET ..."
         N2AH0042 = "DATA USER WORK AREA"
         N2AH0045 = "Q3 AGE MONTHS (AT INTERVIEW)"
         N2AH0047 = "Q3 A-YEARS (AT INTERVIEW)"
         N2AH0049 = "DATA USER WORK AREA"
         N2AH0051 = "DATE-OF-BIRTH-MONTH"
         N2AH0053 = "DATE-OF-BIRTH-YEAR"
         N2AH0055 = "Q4 SEX"
         N2AH0056 = "Q5 (SEE DETAILED NOTES)"
         N2AH0057 = "Q6 (SEE DETAILED NOTES) IN WHAT STAT ..."
         N2AH0059 = "Q7 IS HE/SHE MARRIED, WIDOWED, DIVOR ..."
         N2AH0060 = "Q8 NATURAL ORIGIN OR ANCESTRY"
         N2AH0062 = "Q9A HIGHEST GRADE OF  SCHOOL ATTENDED"
         N2AH0064 = "Q9B GRADE COMPLETED"
         N2AH0065 = "Q10A WHAT WAS HE/SHE DOING DURING MO ..."
         N2AH0066 = "Q10B WHAT WAS HE/SHE DOING?"
         N2AH0067 = "Q10C DID HE/SHE WORK AT A JOB OR BUS ..."
         N2AH0068 = "Q10D DID HE/SHE WORK FULL OR PART TI ..."
         N2AH0069 = "Q11A WAS HE/SHE WORKING WITHIN LAST  ..."
         N2AH0070 = "Q11B EVEN THOUGH HE/SHE DID NOT WORK ..."
         N2AH0071 = "Q11C WAS HE/SHE LOOKING FOR WORK OR  ..."
         N2AH0072 = "Q11D WHICH LOOKING FOR WORK OR ON LA ..."
         N2AH0073 = "Q12B (SEE DETAILED NOTES) WHAT KIND  ..."
         N2AH0076 = "Q12C (SEE DETAILED NOTES) WHAT KIND  ..."
         N2AH0079 = "Q12E WAS HE/SHE IN PRIVATE COMPANY O ..."
         N2AH0080 = "Q14A DID HE/SHE EVER SERVE IN THE AR ..."
         N2AH0081 = "Q13B WHEN DID HE/SHE SERVE?"
         N2AH0082 = "DATA USER WORK AREA"
         N2AH0091 = "Q14A HOW MANY ROOMS ARE IN THIS? COU ..."
         N2AH0092 = "Q14B HOW MANY BEDROOMS ARE IN THE -?"
         N2AH0093 = "Q14C ASK ONLY OF UNRELATED HOUSEHOLD ..."
         N2AH0094 = "Q15A DO YOU HAVE ACCESS TO COMPLETE  ..."
         N2AH0095 = "Q15B DO YOU HAVE ACCESS TO A RANGE O ..."
         N2AH0096 = "Q15B DO YOU  HAVE ACCESS TO A REFRIG ..."
         N2AH0097 = "Q15B DO YOU HAVE ACCESS TO A SINK WI ..."
         N2AH0098 = "Q15C IS THERE PIPED WATER IN THIS HO ..."
         N2AH0099 = "Q15D IS THERE BOTH HOT AND COLD WATER?"
         N2AH0100 = "Q15E ARE THESE KITCHEN FACILITIES US ..."
         N2AH0101 = "Q16 WHAT IS THE MAIN TYPE OF HEATING ..."
         N2AH0103 = "Q17 DO YOU HAVE AIR CONDITIONING?"
         N2AH0104 = "Q18 HOW MANY MOTOR VEHICLES ARE OWNE ..."
         N2AH0105 = "Q19A IS ANY LANGUAGE OTHER THAN ENGL ..."
         N2AH0106 = "Q19B WHAT LANGUAGE"
         N2AH0107 = "Q20 (SEE DETAILED NOTES) WHICH OF TH ..."
         N2AH0109 = "DURING THE PAST 12 MONTHS, HOW MUCH  ..."
         N2AH0113 = "Q22A SOCIAL SECURITY OR RAILROAD RET ..."
         N2AH0114 = "DATA USER WORK AREA"
         N2AH0115 = "IF YES, HOW MUCH?"
         N2AH0119 = "Q22B WELFARE PAYMENTS OR OTHER PUBLI ..."
         N2AH0120 = "DATA USER WORK AREA"
         N2AH0121 = "IF YES, HOW MUCH?"
         N2AH0125 = "UNEMPLOYMENT COMPENSATION OR WORKMEN ..."
         N2AH0126 = "DATA USER WORK AREA"
         N2AH0127 = "IF YES, HOW MUCH?"
         N2AH0131 = "Q22D GOVERNMENT EMPLOYEE PENSION OR  ..."
         N2AH0132 = "DATA USER WORK AREA"
         N2AH0133 = "IF YES, HOW MUCH?"
         N2AH0137 = "Q22E DIVIDENDS, INTEREST OR RENT?"
         N2AH0138 = "DATA USER WORK AREA"
         N2AH0139 = "IF YES, HOW MUCH?"
         N2AH0143 = "Q22F NET INCOME FROM THEIR OWN BUSIN ..."
         N2AH0144 = "DATA USER WORK AREA"
         N2AH0145 = "IF YES, HOW MUCH?"
         N2AH0149 = "Q22G NET INCOME FROM A FARM?"
         N2AH0150 = "DATA USER WORK AREA"
         N2AH0151 = "IF YES, HOW MUCH?"
         N2AH0155 = "Q22H VETERANS PAYMENTS?"
         N2AH0156 = "DATA USER WORK AREA"
         N2AH0157 = "IF YES, HOW MUCH?"
         N2AH0161 = "Q22I ALIMONY, CHILD SUPPORT OR OTHER ..."
         N2AH0162 = "DATA USER WORK AREA"
         N2AH0163 = "IF YES, HOW MUCH?"
         N2AH0167 = "Q22J ANY OTHER INCOME?"
         N2AH0168 = "DATA USER WORK AREA"
         N2AH0169 = "IF YES, HOW MUCH?"
         N2AH0173 = "TOTAL AMOUNT (Q21 &22)"
         N2AH0177 = "CHECK ITEM B"
         N2AH0178 = "Q23A ARE YOU CERTIFIED TO PARTICIPAT ..."
         N2AH0179 = "Q23B ARE YOU BUYING FOOD STAMPS NOW?"
         N2AH0180 = "Q23C WHAT IS THE MAIN REASON YOU ARE ..."
         N2AH0181 = "Q24A ARE YOU CERTIFIED FOR COMMODITY ..."
         N2AH0182 = "Q24B ARE YOU RECEIVING COMMODITY FOO ..."
         N2AH0183 = "Q24BC WHY AREN'T YOU PARTICIPATING I ..."
         N2AH0184 = "(CONTROL RECORD) DATE OF EXAM MONTH"
         N2AH0186 = "(CONTROL RECORD) DATE OF EXAM DAY"
         N2AH0188 = "(CONTROL RECORD)DATE OF EXAM YEAR"
         N2AH0190 = "AGE YEARS (AT EXAMINATION)"
         N2AH0192 = "DATA USER WORK AREA"
         N2AH0206 = "RACE SEX RECODE FOR SAMPLE PERSON(SE ..."
         N2AH0207 = "(SEE DETAILED NOTES) FARM, NON-FARM  ..."
         N2AH0208 = "INTERVIEW STATUS"
         N2AH0209 = "(SEE DETAILED NOTES) REGION"
         N2AH0210 = "(SEE DETAILED NOTES) POVERTY INDEX(X.XX)"
         N2AH0213 = "DATA USER WORK AREA"
         N2AH0247 = "Q3 AGE YEAR"
         N2AH0249 = "DATA USER WORK AREA"
         N2AH0251 = "DATE-OF-BIRTH-MONTH"
         N2AH0253 = "DATE-OF-BIRTH-YEAR"
         N2AH0255 = "Q4 SEX"
         N2AH0256 = "Q5 RACE SEX (SEE DETAILED NOTES)"
         N2AH0257 = "Q6 (SEE DETAILED NOTES) IN WHAT STAT ..."
         N2AH0259 = "Q7 IS HE/SHE MARRIED, WIDOWED, DIVOR ..."
         N2AH0260 = "Q8 NATURAL ORIGIN OR ANCESTRY"
         N2AH0262 = "Q9 HIGHEST GRADE ATTENDED"
         N2AH0264 = "Q9B GRADE COMPLETED"
         N2AH0265 = "Q10 WHAT WAS HE/SHE DOING MOST OF TH ..."
         N2AH0266 = "Q10B WHAT WAS HE/SHE DOING?"
         N2AH0267 = "Q10C DID HE/SHE WORK AT A JOB OR BUS ..."
         N2AH0268 = "Q10D DID HE/SHE WORK FULL OR PART TI ..."
         N2AH0269 = "Q11A WAS HE/SHE WORKING WITHIN LAST  ..."
         N2AH0270 = "Q11B EVEN THOUGH HE/SHE DID NOT WORK ..."
         N2AH0271 = "Q11C WAS HE/SHE LOOKING FOR WORK OR  ..."
         N2AH0272 = "Q11D WHICH LOOKING FOR WORK OR ON LA ..."
         N2AH0273 = "Q12B (SEE DETAILED NOTES) WHAT KIND  ..."
         N2AH0276 = "Q12C (SEE DETAILED NOTES) WHAT KIND  ..."
         N2AH0279 = "Q12E WAS HE/SHE IN PRIVATE COMPANY O ..."
         N2AH0280 = "Q13A DID HE/SHE EVER SERVE IN THE AR ..."
         N2AH0281 = "Q13B WHEN DID HE/SHE SERVE?"
         N2AH0282 = "EXAMINED FINAL WEIGHT"
         N2AH0288 = "MEDICAL HISTORY INTERVIEW FINAL WEIGHT"
         N2AH0294 = "GLUCOSE TOLERANCE TEST FINAL EXAMINE ..."
         N2AH0300 = "LEAD FINAL EXAMINED WEIGHT"
         N2AH0306 = "CARBOXHEMOGLOBIN FINAL EXAMINED WEIGHT"
         N2AH0312 = "BILE ACIDS FINAL EXAMINED WEIGHT"
         N2AH0318 = "DATA USER WORK AREA"
         N2AH0324 = "STRATA"
         N2AH0326 = "PSEUDO PRIMARY SAMPLING UNIT"
         N2AH0327 = "POVERTY NON-POVERTY SEGMENTS (SEE DE ..."
         N2AH0328 = "DATA USER WORK AREA"
         N2AH0401 = "CATALOG NUMBEER:5020"
         N2AH0405 = "DATA USER WORK AREA"
         N2AH0426 = "WOULD YOU SAY YOUR HEALTH IN GENERAL ..."
         N2AH0427 = "DO YOU NOW HAVE ANY HEALTH PROBLEMS  ..."
         N2AH0428 = "ARE YOU TAKING ANY MEDICINE REGULARL ..."
         N2AH0429 = "DURING THE PAST 12 MONTHS, HOW MANY  ..."
         N2AH0431 = "FOR WHAT CONDITION(S) WERE YOU IN TH ..."
         N2AH0433 = "THE SECOND TIME"
         N2AH0435 = "THE THIRD TIME"
         N2AH0437 = "HOW LONG WERE YOU IN THE HOSPITAL? T ..."
         N2AH0439 = "THE SECOND TIME"
         N2AH0441 = "THE THIRD TIME"
         N2AH0443 = "HAVE YOU EVER LIVED IN A HOUSEHOLD W ..."
         N2AH0444 = "DO YOU HAVE AN ILLNESS OR CONDITION  ..."
         N2AH0445 = "WHAT IS THE ILLNESS OR CONDITION? FI ..."
         N2AH0447 = "SECOND CONDITION"
         N2AH0449 = "THIRD CONDITION"
         N2AH0451 = "FOURTH CONDITION"
         N2AH0453 = "DO YOU HAVE TROUBLE BITING OR CHEWIN ..."
         N2AH0454 = "DO YOU AVOID EATING ANY OF THE FOLLO ..."
         N2AH0455 = "FATS OR FRIED FOODS?"
         N2AH0456 = "DO YOU AVOID EATING ANY OF THE FOLLO ..."
         N2AH0457 = "SEAFOOD?"
         N2AH0458 = "ANY OTHER FOODS?"
         N2AH0459 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0461 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0463 = "GOUT?"
         N2AH0465 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0467 = "CHRONIC BRONCHITIS? STILL HAVE IT?"
         N2AH0469 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0471 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0473 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0475 = "TUBERCULOSIS? STILL HAVE IT?"
         N2AH0477 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0479 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0481 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0483 = "HAS A DOCTOR TOLD YOU THAT YOU HAD - ..."
         N2AH0485 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0487 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0489 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0491 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0493 = "HOW MANY YEAR AGO DID YOU FIRST HAVE ..."
         N2AH0495 = "HEART ATTACK?"
         N2AH0497 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0499 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0501 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0503 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0505 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0507 = "A PEPTIC, STOMACH, OR DUODENAL ULCER?"
         N2AH0509 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0511 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0513 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0515 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0517 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0519 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0521 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0523 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0525 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0527 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0529 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0531 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0533 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0535 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0537 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0539 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0541 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0543 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0545 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0547 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0549 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0551 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0553 = "HOW MAY YEARS AGO DID YOU FIRST HAVE ..."
         N2AH0555 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0557 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0559 = "HAS THE DOCTOR EVER TOLD YOU THAT YO ..."
         N2AH0561 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0563 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0565 = "HOW MAY YEARS AGO DID YOU FIRST HAVE ..."
         N2AH0567 = "HAS A DOCTOR EVER TOLD YOU THAT HAD  ..."
         N2AH0569 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0571 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0573 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0575 = "HAS DOCTOR EVER TOLD YOU THAT YOU HA ..."
         N2AH0577 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0579 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0581 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0583 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0585 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0587 = "NERVOUS BREAKDOWN?"
         N2AH0589 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0591 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0593 = "HOW MANY YEARS AGO DID  YOU FIRST HA ..."
         N2AH0595 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0597 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0599 = "HAVE YOU EVER HAD ANEMIA, SOMETIMES  ..."
         N2AH0600 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0602 = "DID A DOCTOR EVER TELL YOU  THAT YOU ..."
         N2AH0603 = "POOR DIET?"
         N2AH0604 = "WAS THE ANEMIA CAUSED BY : CHILDBIRTH?"
         N2AH0605 = "LOSS OF BLOOD DUE TO AN ACCIDENT OR  ..."
         N2AH0606 = "ILLNESS?"
         N2AH0607 = "WAS THE ANEMIA CAUSED BY : SURGERY?"
         N2AH0608 = "ANY OTHER CAUSE?"
         N2AH0609 = "WERE YOU TREATED FOR THIS CONDITION  ..."
         N2AH0610 = "WAS THE TREATMENT YOU USED - BETTER  ..."
         N2AH0611 = "IRON PILLS?"
         N2AH0612 = "IRON SHOTS?"
         N2AH0613 = "WAS THE TREATMENT YOU USED - VITAMIN ..."
         N2AH0614 = "VITAMIN PILLS?"
         N2AH0615 = "BLOOD TRANSFUSIONS?"
         N2AH0616 = "WAS THE TREATMENT YOU USED - ANY OTH ..."
         N2AH0617 = "ARE YOU STILL BEING TREATED FOR THIS ..."
         N2AH0618 = "DO YOU EAT CLAY, STARCH OR ANY MATER ..."
         N2AH0619 = "WHICH - CLAY?"
         N2AH0620 = "STARCH?"
         N2AH0621 = "WHICH - SOME OTHER MATERIAL?"
         N2AH0622 = "ARE YOU ON A SPECIAL DIET?"
         N2AH0623 = "WAS THIS DIET ORDERED BY A DOCTOR?"
         N2AH0624 = "CHECK ITEM A"
         N2AH0625 = "HAVE YOU SMOKED AT LEAST 100 CIGARET ..."
         N2AH0626 = "DO YOU SMOKE CIGARETTES NOW?"
         N2AH0627 = "ON THE AVERAGE, HOW MANY A DAY DO YO ..."
         N2AH0629 = "HOW LONG HAS IT BEEN SINCE YOU SMOKE ..."
         N2AH0631 = "ON THE AVERAGE, HOW MANY CIGARETTES  ..."
         N2AH0633 = "DURING THE PERIOD WHEN YOU WERE SMOK ..."
         N2AH0635 = "ABOUT HOW OLD WERE YOU WHEN YOU FIRS ..."
         N2AH0637 = "DO YOU SMOKE CIGARS NOW?"
         N2AH0638 = "ABOUT HOW MANY CIGARS A DAY DO YOU S ..."
         N2AH0640 = "DO YOU SMOKE A PIPE NOW?"
         N2AH0641 = "ABOUT HOW MANY PIPEFULS OF TOBACCO A ..."
         N2AH0643 = "DO YOU DRINK COFFEE?"
         N2AH0644 = "ON THE AVERAGE, HOW MANY CUPS OR GLA ..."
         N2AH0646 = "DO YOU USUALLY DRINK DECAFFEINATED C ..."
         N2AH0647 = "WERE YOU EVER ADVISED BY A DOCTOR TO ..."
         N2AH0648 = "HAVE YOU EVER BEEN ADVISED BY A DOCT ..."
         N2AH0649 = "DO YOU DRINK TEA?"
         N2AH0650 = "ON THE AVERAGE, HOW MANY CUPS OR GLA ..."
         N2AH0652 = "HAVE YOU EVER BEEN ADVISED BY A DOCT ..."
         N2AH0653 = "DURING THE PAST 6 MONTHS, DID YOU US ..."
         N2AH0654 = "ON THE AVERAGE, DO YOU USE THESE PIL ..."
         N2AH0655 = "IN THE THINGS YOU DO FOR RECREATION, ..."
         N2AH0656 = "IN YOUR USUAL DAY, ASIDE FROM RECREA ..."
         N2AH0657 = "DATA USER WORK AREA"
         N2AH0659 = "WHAT IS THE MOST THAT YOU HAVE EVER  ..."
         N2AH0662 = "HOW OLD WERE YOU THEN?"
         N2AH0664 = "CHECK ITEM B"
         N2AH0665 = "WHAT IS THE LEAST YOU HAVE WEIGHED S ..."
         N2AH0668 = "HOW OLD WERE YOU THEN?"
         N2AH0670 = "CHECK ITEM C"
         N2AH0671 = "ABOUT HOW MUCH DID YOU WEIGH WHEN YO ..."
         N2AH0674 = "CHECK ITEM D"
         N2AH0675 = "HOW MANY LIVING CHILDREN DO YOU HAVE?"
         N2AH0677 = "CHECK ITEM E"
         N2AH0678 = "HOW MANY CHILDREN HAVE YOU EVER HAD?"
         N2AH0680 = "HOW MANY OF THESE CHILDREN WEIGHED 9 ..."
         N2AH0682 = "ABOUT HOW TALL ARE YOU WITHOUT SHOES ..."
         N2AH0683 = "INCHES"
         N2AH0685 = "ABOUT HOW MUCH DO YOU WEIGH WITHOUT  ..."
         N2AH0688 = "DURING THE PAST 6 MONTHS, HAVE YOU L ..."
         N2AH0689 = "ABOUT HOW MUCH WEIGHT HAVE YOU LOST?"
         N2AH0692 = "DO YOU HAVE ANY REASON TO THINK THAT ..."
         N2AH0693 = "HAVE YOU EVER HAD A TEST TO SEE WHET ..."
         N2AH0694 = "DO YOU HAVE SERIOUS TROUBLE SEEING W ..."
         N2AH0695 = "LEFT EYE?"
         N2AH0696 = "RIGHT EYE"
         N2AH0697 = "WAS YOUR EYE CONDITION THE RESULT OF ..."
         N2AH0698 = "DO YOU HAVE DIABETES OR SUGAR DIABETES?"
         N2AH0699 = "DID A DOCTOR TELL YOU THAT YOU HAD IT?"
         N2AH0700 = "DATA USER WORK AREA"
         N2AH0701 = "HOW MANY LIVING BROTHERS AND SISTERS ..."
         N2AH0703 = "HOW MANY OF THESE BROTHERS AND SISTE ..."
         N2AH0705 = "HOW MANY OF YOUR BROTHERS AND SISTER ..."
         N2AH0707 = "HOW MANY OF THESE BROTHERS AND SISTE ..."
         N2AH0709 = "INCLUDING THOSE LIVING AND DECEASED, ..."
         N2AH0711 = "IS YOUR MOTHER STILL LIVING?"
         N2AH0712 = "DOES (DID) SHE HAVE DIABETES OR SUGA ..."
         N2AH0713 = "IS YOUR FATHER STILL LIVING?"
         N2AH0714 = "DOES (DID) HE HAVE DIABETES OR SUGAR ..."
         N2AH0715 = "HAVE YOU EVER BEEN TOLD BY A DOCTOR  ..."
         N2AH0716 = "HAVE YOU EVER BEEN TOLD BY A DOCTOR  ..."
         N2AH0717 = "POTENTIAL DIABETES?"
         N2AH0718 = "CHECK ITEM F"
         N2AH0719 = "ABOUT HOW OLD WERE YOU WHEN THE DOCT ..."
         N2AH0721 = "WERE YOU A PATIENT IN THE HOSPITAL A ..."
         N2AH0722 = "WERE YOU IN THE HOSPITAL AT THAT TIM ..."
         N2AH0723 = "(NOT COUNTING THAT FIRST TIME) HAVE  ..."
         N2AH0724 = "HAVE YOU EVER TAKEN INSULIN INJECTIONS?"
         N2AH0725 = "HAVE YOU TAKEN INSULIN INJECTIONS FO ..."
         N2AH0726 = "ARE YOU NOW TAKING INSULIN INJECTIONS?"
         N2AH0727 = "HOW MANY YEARS (HAVE YOU BEEN TAKING ..."
         N2AH0729 = "DO YOU KNOW WHAT AN INSULIN REACTION IS?"
         N2AH0730 = "HAVE YOU EVER HAD AN INSULIN REACTION?"
         N2AH0731 = "HOW MANY INSULIN REACTIONS HAVE YOU  ..."
         N2AH0733 = "(INCLUDING THESE REACTIONS) ABOUT HO ..."
         N2AH0735 = "HAVE YOU EVER TAKEN DIABETES PILLS?"
         N2AH0736 = "HAVE YOU TAKEN THEM MOST OF THE  PAS ..."
         N2AH0737 = "ARE YOU NOW TAKING DIABETES PILLS?"
         N2AH0738 = "HOW MANY YEARS (HAVE YOU BEEN TAKING ..."
         N2AH0740 = "HAVE YOU EVER BEEN GIVEN A WRITTEN D ..."
         N2AH0741 = "WAS THIS DIET ORDERED BY A DOCTOR?"
         N2AH0742 = "DO YOU FOLLOW THIS DIET?"
         N2AH0743 = "HOW MANY YEARS (HAVE YOU BEEN/WERE Y ..."
         N2AH0745 = "DO YOU CARR OR WEAR ANYTHING WHICH I ..."
         N2AH0746 = "WHEN DID YOU LAST SEE OR TALK TO A D ..."
         N2AH0747 = "WEEKS"
         N2AH0748 = "DATA USER WORK AREA"
         N2AH0749 = "MONTHS"
         N2AH0751 = "YEARS"
         N2AH0753 = "DURING THE PAST 12 MONTHS DID YOUR ( ..."
         N2AH0754 = "DATA USER WORK AREA"
         N2AH0755 = "DURING THE PAST 12 MONTHS, ABOUT HOW ..."
         N2AH0758 = "DURING THE PAST 12 MONTHS, ABOUT HOW ..."
         N2AH0761 = "DURING THE PAST 12 MONTHS, ABOUT HOW ..."
         N2AH0764 = "DURING THE PAST 12 MONTHS, ABOUT HOW ..."
         N2AH0767 = "CHECK ITEM G"
         N2AH0768 = "DATA USER WORK AREA"
         N2AH0769 = "DO YOU HAVE TROUBLE WITH RECURRING P ..."
         N2AH0770 = "HAVE YOU BEEN BOTHERED BY SUCH COUGH ..."
         N2AH0771 = "DURING THE PAST 3 YEARS HAVE YOU HAD ..."
         N2AH0772 = "HAVE YOU EVER SEEN A DOCTOR ABOUT A  ..."
         N2AH0773 = "HOW OLD WERE YOU WHEN YOU FIRST HAD  ..."
         N2AH0774 = "ABOUT HOW MANY WORK OR SCHOOL DAYS H ..."
         N2AH0775 = "HAVE YOU EVER STAYED IN THE HOSPITAL ..."
         N2AH0776 = "DURING THE PAST 12 MONTHS, HAVE YOU  ..."
         N2AH0777 = "HOW OFTEN--EVERY FEW DAYS OR LESS OFTEN?"
         N2AH0778 = "WHEN IT DOES OCCUR, DOES IT BOTHER Y ..."
         N2AH0779 = "HAVE YOU EVER HAD A RUNNING EAR OR A ..."
         N2AH0780 = "HOW OFTEN HAVE YOU HAD A RUNNING EAR ..."
         N2AH0781 = "DID YOU SEE A DOCTOR BECAUSE OF THIS ..."
         N2AH0782 = "DID A DOCTOR EVER TELL YOU THAT YOU  ..."
         N2AH0784 = "HOW MANY TIMES HAVE YOU HAD AN EAR I ..."
         N2AH0785 = "DATA USER WORK AREA"
         N2AH0787 = "FOR HOW MANY SEPARATE INFECTIONS DID ..."
         N2AH0789 = "SHOTS OR INJECTIONS?"
         N2AH0791 = "EARDROPS OR OTHER EXTERNAL APPLICATIONS?"
         N2AH0792 = "DID A DOCTOR EVER TREAT AN EAR INFEC ..."
         N2AH0793 = "HAVE YOU EVER HAD DEAFNESS OR TROUBL ..."
         N2AH0794 = "DID YOU EVER SEE A DOCTOR ABOUT IT?"
         N2AH0795 = "HOW OLD WERE YOU WHEN YOU FIRST HAVI ..."
         N2AH0796 = "SINCE THIS TROUBLE BEGAN, HAS IT GOT ..."
         N2AH0797 = "WAS YOUR HEARING TROUBLE OR DEAFNESS ..."
         N2AH0798 = "A LOUD NOISE SUCH AS THAT FROM MACHI ..."
         N2AH0799 = "EAR SURGERY?"
         N2AH0800 = "WAS YOUR HEARING TROUBLE OR DEAFNESS ..."
         N2AH0801 = "WERE YOU BORN WITH IT?"
         N2AH0802 = "SOME OTHER CAUSE?"
         N2AH0803 = "HOW WOULD YOU RATE YOUR HEARING IN Y ..."
         N2AH0804 = "HOW WOULD YOU RATE YOUR HEARING IN Y ..."
         N2AH0805 = "HAVE YOU EVER HAD AN OPERATION ON YO ..."
         N2AH0806 = "HAVE YOU EVER HAD AN OPERATION ON YO ..."
         N2AH0807 = "WAS IT--AN OPERATION ON THE STAPES,  ..."
         N2AH0808 = "A MASTIODECTOMY?"
         N2AH0809 = "WAS IT--SOME OTHER OPERATION?"
         N2AH0810 = "HAVE YOU EVER HAD YOUR HEARING TESTED?"
         N2AH0811 = "HOW OLD WERE YOU WHEN YOUR HEARING W ..."
         N2AH0812 = "WAS YOUR HEARING NORMAL?"
         N2AH0813 = "HAVE YOU EVER USED A HEARING AID?"
         N2AH0814 = "WHICH EAR?"
         N2AH0815 = "DO YOU NOW USE A HEARING AID?"
         N2AH0816 = "CHECK ITEM H"
         N2AH0817 = "HAVE YOU EVER WORKED AT A JOB WHERE  ..."
         N2AH0818 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N2AH0819 = "DATA USER WORK AREA"
         N2AH0821 = "DID THE DOCTOR SAY THE CONDITION WAS ..."
         N2AH0823 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0825 = "DID TTHE DOCTOR SAY THE CONDITION WA ..."
         N2AH0827 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0829 = "DID THE DOCTOR SAY THE CONDITION WAS ..."
         N2AH0831 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0833 = "DID THE DOCTOR SAY THE CONDITION WAS ..."
         N2AH0835 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0837 = "DID THE DOCTOR SAY THE CONDITION WAS ..."
         N2AH0839 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0841 = "DID THE DOCTOR SAY THE CONDITION WAS ..."
         N2AH0843 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0845 = "DID THE DOCTOR SAY THE CONDITION WAS ..."
         N2AH0847 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH0848 = "HAS A DOCTOR EVER TREATED THE LIVER  ..."
         N2AH0849 = "ANY OTHER SURGERY?"
         N2AH0850 = "MEDICATION?"
         N2AH0851 = "HAS A DOCTOR EVER TREATED THE LIVER  ..."
         N2AH0852 = "BEDREST?"
         N2AH0853 = "SOME OTHER WAY?"
         N2AH0854 = "HAVE YOU EVER STAYED IN THE HOSPITAL ..."
         N2AH0855 = "ARE YOU NOW BEING TREATED BY A DOCTO ..."
         N2AH0856 = "ABOUT HOW MANY WORK OR SCHOOL DAYS H ..."
         N2AH0857 = "HAVE YOU EVER HAD TROUBLE WITH PERSI ..."
         N2AH0858 = "WAS THERE A RASH ALONG WITH THE ITCHING?"
         N2AH0859 = "HAVE YOU EVER LOST YOUR APPETITE FOR ..."
         N2AH0860 = "DO YOU HAVE THE PROBLEM NOW?"
         N2AH0861 = "HAVE YOU EVER HAD ANY KIDNEY, BLADDE ..."
         N2AH0862 = "HAVE YOU EVER HAD KIDNEY STONES?"
         N2AH0863 = "HAVE YOU EVER PASSED A STONE?"
         N2AH0864 = "HAVE YOU EVER HAD ANY OF THE FOLLOWI ..."
         N2AH0865 = "SURGERY?"
         N2AH0866 = "HAVE YOU EVER HAD ANY OF THE FOLLOWI ..."
         N2AH0867 = "ANY OTHER TREATMENT?"
         N2AH0868 = "HAVE YOU EVER HAD ANY INFECTIONS OF  ..."
         N2AH0869 = "DATA USER WORK AREA"
         N2AH0871 = "ABOUT HOW MANY TIMES HAVE YOU HAD AN ..."
         N2AH0873 = "ABOUT HOW MANY TIMES DID THE INFECTI ..."
         N2AH0875 = "BLADDER?"
         N2AH0877 = "ABOUT HOW MANY TIMES DID THE INFECTI ..."
         N2AH0878 = "DID YOU HAVE FEVER CHILLS WITH ANY O ..."
         N2AH0880 = "DATA USER WORK AREA"
         N2AH0881 = "FOR HOW MANY OF THE INFECTIONS DID Y ..."
         N2AH0883 = "HAVE YOU EVER SEEN A DOCTOR FOR ANY  ..."
         N2AH0884 = "WAS THE DOCTOR--A GENERAL PRACTITIONER?"
         N2AH0885 = "WAS THE DOCTOR--AN INTERNIST?"
         N2AH0886 = "A UROLOGIST?"
         N2AH0887 = "A NEPHROLOGIST?"
         N2AH0888 = "SOME OTHER TYPE?"
         N2AH0889 = "DID A DOCTOR EVER TELL YOU THE AT YO ..."
         N2AH0891 = "HOW MANY YEARS AGO DID NEPHRITIS BEGIN?"
         N2AH0893 = "DID A DOCTOR EVER TELL YOU THAT YOU  ..."
         N2AH0895 = "HOW MANY YEARS AGO DID THE RENAL SCL ..."
         N2AH0897 = "KIDNEY STONES OR STONES IN THE URETE ..."
         N2AH0899 = "DID A DOCTOR EVER TELL YOU THAT YOU  ..."
         N2AH0901 = "NEPHROSIS? STILL HAVE IT?"
         N2AH0903 = "HOW MANY YEARS AGO DID NEPHRITIS BEGIN?"
         N2AH0905 = "DID A DOCTOR EVER TELL YOU THAT YOU  ..."
         N2AH0907 = "HOW MANY YEARS AGO DID THE KIDNEY AB ..."
         N2AH0909 = "HYDRONEPHROSIS? STILL HAVE IT?"
         N2AH0911 = "HOW MAY YEARS AGO DID THE HYDORNEPHR ..."
         N2AH0913 = "DID A DOCTOR EVER TELL YOU THAT YOU  ..."
         N2AH0915 = "HOW MANY YEARS AGO DID THE ENLARGED  ..."
         N2AH0917 = "DID A DOCTOR EVER TELL YOU THAT YOU  ..."
         N2AH0919 = "HOW MANY YEARS AGO DID THE BLADDER S ..."
         N2AH0921 = "DID A DOCTOR EVER TELL YOU THAT YOU  ..."
         N2AH0923 = "HOW MANY YEARS AGO DID THE KIDNEY IN ..."
         N2AH0925 = "DID A DOCTOR EVER TELL YOU THAT YOU  ..."
         N2AH0927 = "HOW MANY YEARS AGO DID THE BLADDER I ..."
         N2AH0929 = "DID A DOCTOR EVER TELL YOU THAT YOU  ..."
         N2AH0931 = "HOW MANY YEARS AGO DID THE URINARY T ..."
         N2AH0933 = "DID A DOCTOR EVER TELL YOU THAT YOU  ..."
         N2AH0935 = "HOW MANY YEARS AGO DID THE OTHER CON ..."
         N2AH0937 = "ABOUT HOW MANY WORK OR SCHOOL DAYS H ..."
         N2AH0938 = "HAVE YOU EVER HAD ANY SPECIAL Z-RAYS ..."
         N2AH0939 = "HAVE YOU EVER BEEN HOSPITALIZED OVER ..."
         N2AH0940 = "DATA USER WORK AREA"
         N2AH0941 = "WHEN WAS THE LAST TIME YOU SAW A DOC ..."
         N2AH0943 = "DID THE TREATMENT FOR A KIDNEY, BLAD ..."
         N2AH0944 = "STEROIDS SUCH AS CORTISONE AND PREDN ..."
         N2AH0945 = "ANTIBIOTICS?"
         N2AH0946 = "DID THE TREATMENT FOR A KIDNEY, BLAD ..."
         N2AH0947 = "MEDICINES TO REDUCE BLOOD PRESSURE?"
         N2AH0948 = "SURGERY?"
         N2AH0949 = "DID THE TREATMENT FOR A KIDNEY, BLAD ..."
         N2AH0950 = "ANY OTHER TREATMENT?"
         N2AH0951 = "HAVE YOU HAD ANY TROUBLE WITH THE PA ..."
         N2AH0952 = "WAS THE PAIN LOCATED IN--YOU RIGHT S ..."
         N2AH0953 = "YOUR LEFT SIDE AND BACK?"
         N2AH0954 = "BOTH SIDES AND BACK?"
         N2AH0955 = "WAS THE PAIN LOCATED IN--THE AREA OV ..."
         N2AH0956 = "YOUR LOW ABDOMEN?"
         N2AH0957 = "ABOUT HOW MANY TIMES HAVE YOU HAD TH ..."
         N2AH0959 = "HAS YOUR MOTHER, FATHER, SISTERS, OR ..."
         N2AH0963 = "BOTH CHRONIC NEPHRITIS AND NERVE DEA ..."
         N2AH0967 = "HAS YOUR MOTHER, FATHER, SISTERS, OR ..."
         N2AH0971 = "HIGH BLOOD PRESSURE?"
         N2AH0975 = "DATA USER WORK AREA"
         N2AH0977 = "DID A DOCTOR EVER TELL YOU THAT YOU  ..."
         N2AH0978 = "IF YES, HOW MANY SEPARATE TIMES DID  ..."
         N2AH0980 = "IF YES, HOW MANY SEPARATE TIMES DID  ..."
         N2AH0982 = "DATA USER WORK AREA"
         N2AH0983 = "DID A DOCTOR EVER TELL YOU THAT YOU  ..."
         N2AH0984 = "IF YES, HOW MANY SEPARATE TIMES DID  ..."
         N2AH0986 = "WHEN DID IT LAST HAPPEN?"
         N2AH0988 = "DATA USER WORK AREA"
         N2AH0989 = "DID A DOCTOR EVER TELL YOU THAT YOU  ..."
         N2AH0990 = "DID A DOCTOR EVER TELL YOU THAT YOU  ..."
         N2AH0992 = "WHEN DID IT LAST HAPPEN?"
         N2AH0994 = "DATA USER WORK AREA"
         N2AH0995 = "DID A DOCTOR EVER TELL YOU THAT YOU  ..."
         N2AH0996 = "IF YES, HOW MANY SEPARATE TIMES DID  ..."
         N2AH0998 = "WHEN DID IT LAST HAPPEN?"
         N2AH1000 = "HAVE YOU EVEN HAD SKIN TESTS FOR ALL ..."
         N2AH1001 = "DID YOU EVER HAVE A POSITIVE SKIN RE ..."
         N2AH1002 = "GRASS?"
         N2AH1003 = "DID YOU EVER HAVE A POSITIVE SKIN RE ..."
         N2AH1004 = "HOUSE DUST?"
         N2AH1005 = "MOLDS?"
         N2AH1006 = "DID YOU EVER HAVE A POSITIVE SKIN RE ..."
         N2AH1007 = "FOODS?"
         N2AH1008 = "HAVE YOU EVER HAD ALLERGY SHOTS?"
         N2AH1009 = "HAVE YOU EVER HAD ANY REACTION TO AN ..."
         N2AH1010 = "DATA USER WORK AREA"
         N2AH1011 = "DID A DOCTOR EVER TELL YOU THAT YOU  ..."
         N2AH1013 = "DID A DOCTOR EVER TELL YOU THAT YOU  ..."
         N2AH1015 = "HAYFEVER? STILL HAVE IT?"
         N2AH1017 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH1019 = "DID A DOCTOR EVER TELL YOU THAT YOU  ..."
         N2AH1021 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N2AH1023 = "WAS THE DOCTOR--A GENERAL PRACTITIONER?"
         N2AH1024 = "WAS THE DOCTOR--AN INTERNIST?"
         N2AH1025 = "AN EAR, NOSE, AND THROAT SPECIALIST?"
         N2AH1026 = "AN ALLERGIST?"
         N2AH1027 = "SOME OTHER TYPE?"
         N2AH1028 = "DURING THE PAS 12 MONTHS, NOT COUNTI ..."
         N2AH1029 = "STUFFY NOSE?"
         N2AH1030 = "ITCHY NOSE?"
         N2AH1031 = "DURING THE PAST 12 MONTHS, NOT COUNT ..."
         N2AH1032 = "POST-NASAL DRIP?"
         N2AH1033 = "WATER, ITCHY EYES?"
         N2AH1034 = "DURING THE PAST 12 MONTHS NOT COUNTI ..."
         N2AH1035 = "SINUS INFECTIONS?"
         N2AH1036 = "CHECK ITEM I"
         N2AH1037 = "BECAUSE OF THE (ALLERGIES/SYMPTOM) Y ..."
         N2AH1038 = "MOVED TO A DIFFERENT LOCATION?"
         N2AH1039 = "INSTALLED AIR-CONDITIONING, A HUMIDI ..."
         N2AH1040 = "TRIED TO KEEP AWAY FROM THE THINGS T ..."
         N2AH1041 = "IF AGE 17+--CHANGED JOBS?"
         N2AH1042 = "DO THESE (ALLERGIES/SYMPTOMS) YOU ME ..."
         N2AH1043 = "DO THESE (ALLERGIES/SYMPTOMS/SYMPTOM ..."
         N2AH1044 = "FALL UNTIL FROST?"
         N2AH1045 = "FALL AFTER FROST?"
         N2AH1046 = "DO THERE (ALLERGIES/SYMPTOMS) YOU ME ..."
         N2AH1047 = "OUTDOORS?"
         N2AH1048 = "DO THE ALLERGIES/SYMPTOMS) YOU MENTI ..."
         N2AH1049 = "DO THE (ALLERGIES/SYMPTOMS) YOU MENT ..."
         N2AH1050 = "DO THE (ALLERGIES/SYMPTOMS) BOTHER Y ..."
         N2AH1051 = "TREES?"
         N2AH1052 = "HOW OLD WERE YOU WHEN YOU FIRST BEGA ..."
         N2AH1054 = "ARE THERE ANY THINGS OR PLACES WHICH ..."
         N2AH1055 = "HAVE YOU EVER HAD A - ? IF YES, DO Y ..."
         N2AH1057 = "CAT FOR A PET?"
         N2AH1059 = "HAVE YOU EVER BEEN TOLD BY A DOCTOR  ..."
         N2AH1060 = "ANOTHER NAME FOR HIGH BLOOD PRESSURE ..."
         N2AH1061 = "ABOUT HOW LONG AGO WERE YOU FIRST TO ..."
         N2AH1063 = "YEARS?"
         N2AH1065 = "DURING THE LAST 12 MONTHS, ABOUT HOW ..."
         N2AH1067 = "HAS A DOCTOR EVER ADVISED YOU TO LOS ..."
         N2AH1068 = "HAS A DOCTOR EVER PRESCRIBED MEDICIN ..."
         N2AH1069 = "ARE YOU NOW TAKING ANY MEDICINE PRES ..."
         N2AH1070 = "HOW OFTEN ARE YOU SUPPOSED TO TAKE T ..."
         N2AH1071 = "HOW OFTEN DO YOU TAKE YOUR MEDICINE  ..."
         N2AH1072 = "DATA USER WORK AREA"
         N2AH1073 = "ABOUT HOW MANY DAYS DURING THE PAST  ..."
         N2AH1075 = "DURING THE PAST 12 MONTHS, HOW MAY T ..."
         N2AH1077 = "CHECK ITEM J"
         N2AH1078 = "HAVE YOU EVER HAD ANY TROUBLE WITH P ..."
         N2AH1079 = "HAVE YOU EVER HAD SEVERE PAIN ACROSS ..."
         N2AH1080 = "HOW MANY OF THESE ATTACKS HAVE YOU HAD?"
         N2AH1081 = "ARE YOU TAKING ANY MEDICATION TO STR ..."
         N2AH1082 = "HAVE YOU EVER HAD SHORTNESS OF BREAT ..."
         N2AH1083 = "HAVE YOU HAD PROBLEM FOR AT LEAST 90 ..."
         N2AH1084 = "HAVE YOU EVER HAD--LOSS OF VISION OR ..."
         N2AH1085 = "DIFFICULTY IN SPEAKING OR SLURRED SP ..."
         N2AH1086 = "LOSS OF SENSATION, NUMBNESS OR TINGL ..."
         N2AH1087 = "HAVE YOU EVER HAD--A SEVERE HEAD INJ ..."
         N2AH1088 = "PROLONGED WEAKNESS OR PARALYSIS OF O ..."
         N2AH1089 = "HAVE YOU EVER HAD A STROKE?"
         N2AH1090 = "DID A DOCTOR TELL YOU THIS?"
         N2AH1091 = "HOW MANY STROKES HAVE YOU HAD?"
         N2AH1093 = "HOW LONG AGO DID YOU HAVE THE (FIRST ..."
         N2AH1095 = "HOW LONG AGO DID YOU HAVE THE LAST S ..."
         N2AH1097 = "WHEN YOU HAD YOUR STROKE(S) DID YOU  ..."
         N2AH1099 = "PARALYSIS OF THE ARM OR LEG? STILL H ..."
         N2AH1101 = "NUMBNESS OF THE ARM OR LEG? STILL HA ..."
         N2AH1103 = "WHEN YOU HAD YOUR STROKE(S) DID YOU  ..."
         N2AH1105 = "CHANGE IN SPEECH? STILL HAVE IT?"
         N2AH1107 = "ANY OTHER SYMPTOMS? STILL HAVE IT?"
         N2AH1109 = "HAVE YOU EVER HAD PAIN IN YOUR BACK  ..."
         N2AH1110 = "HAVE YOU EVER HAD PAIN IN YOUR NECK  ..."
         N2AH1111 = "HAVE YOU EVER HAD PAIN OR ACHING IN  ..."
         N2AH1112 = "HAVE YOU EVER HAD ANY SWELLING OF JO ..."
         N2AH1113 = "HAVE YOU HAD STIFFNESS IN YOUR JOINT ..."
         N2AH1114 = "HAVE YOU EVER CHANGED YOUR JOB OR ST ..."
         N2AH1115 = "DID YOU--RETIRE BECAUSE OF DISABILITY?"
         N2AH1116 = "CHANGE PERMANENTLY TO AN EASIER JOB?"
         N2AH1117 = "CHANGE TEMPORARILY TO AN EASIER JOB?"
         N2AH1118 = "DID YOU--CUT DOWN TO PART-TIME WORK  ..."
         N2AH1119 = "HAVE TO STOP WORKING FOR A FEW MONTHS?"
         N2AH1120 = "HAVE TO CUT DOWN HOUSEWORK?"
         N2AH1121 = "DID YOU--STOP DOING ANY HOUSEWORK?"
         N2AH1122 = "MAKE SOME OTHER CHANGES?"
         N2AH1123 = "CHECK ITEM K"
         N2AH1124 = "IS--ATTENDING SCHOOL NOW?"
         N2AH1125 = "IS THERE A SCHOOL LUNCH PROGRAM AT T ..."
         N2AH1126 = "HOW MANY TIMES A WEEK DOES HE USUALL ..."
         N2AH1127 = "HOW MUCH DOES HE PAY FOR HIS LUNCH P ..."
         N2AH1129 = "IS THERE A SPECIAL MILK PROGRAM AT T ..."
         N2AH1130 = "HOW MUCH DOES HE PAY FOR HIS MILK PE ..."
         N2AH1132 = "HOW MANY TIMES A WEEK DOES HE USUALL ..."
         N2AH1133 = "IS THERE A SCHOOL BREAKFAST PROGRAM  ..."
         N2AH1134 = "HOW MUCH DOES HE PAY FOR HIS BREAKFA ..."
         N2AH1135 = "HOW MUCH DOES HE PAY FOR HIS BREAKFA ..."
         N2AH1137 = "DO YOU PARTICIPATE IN ANY PROGRAM IN ..."
         N2AH1138 = "ARE PREPARED MEALS OR GROCERIES DELI ..."
         N2AH1139 = "IS THE SPONSOR OF THE PROGRAM--A LOC ..."
         N2AH1140 = "ANOTHER DEPARTMENT OF YOUR LOCAL GOV ..."
         N2AH1141 = "A STATE GOVERNMENT?"
         N2AH1142 = "IS THE SPONSOR OF THE PROGRAM--A CHU ..."
         N2AH1143 = "SOME OTHER VOLUNTARY ORGANIZATION?"
         N2AH1144 = "ABOUT HOW OFTEN IS THE FOOD BROUGHT  ..."
         N2AH1145 = "DO YOU PARTICIPATE IN ANY PROGRAM ON ..."
         N2AH1146 = "IS THE SPONSOR OF THE PROGRAM--A LOC ..."
         N2AH1147 = "ANOTHER DEPARTMENT OF YOUR LOCAL GOV ..."
         N2AH1148 = "A STATE GOVERNMENT?"
         N2AH1149 = "IS THE SPONSOR OF THE PROGRAM--A CHU ..."
         N2AH1150 = "SOME OTHER VOLUNTARY ORGANIZATION?"
         N2AH1151 = "ABOUT HOW OFTEN DO YOU GO OUT FOR TH ..."
         N2AH1152 = "RESPONDENT"
         N2AH1153 = "DATA USER WORK AREA"
         N2AH1160 = "DUMMY RECORD FLAG"
      ;
RUN;
