    FILENAME YOUTH "z:\DATA\Esophagus\NHANES_III\TEMP\YOUTH.DAT" LRECL=2103;
    *** LRECL includes 2 positions for CRLF, assuming use of PC SAS;

    DATA WORK;
      INFILE YOUTH MISSOVER;

      LENGTH
        SEQN      7
        DMPFSEQ   5
        DMPSTAT   3
        DMARETHN  3
        DMARACER  3
        DMAETHNR  3
        HSSEX     3
        HSDOIMO   3
        HSAGEIR   3
        HSAGEU    3
        HSAITMOR  4
        HSFSIZER  3
        HSHSIZER  3
        DMPCNTYR  3
        DMPFIPSR  3
        DMPMETRO  3
        DMPCREGN  3
        DMPPIR    8
        SDPPHASE  3
        SDPPSU6   4
        SDPSTRA6  4
        SDPPSU1   4
        SDPSTRA1  4
        SDPPSU2   4
        SDPSTRA2  4
        WTPFQX6   8
        WTPFEX6   8
        WTPFHX6   8
        WTPFALG6  8
        WTPFCNS6  8
        WTPFSD6   8
        WTPFMD6   8
        WTPFHSD6  8
        WTPFHMD6  8
        WTPFQX1   8
        WTPFEX1   8
        WTPFHX1   8
        WTPFALG1  8
        WTPFCNS1  8
        WTPFSD1   8
        WTPFMD1   8
        WTPFHSD1  8
        WTPFHMD1  8
        WTPFQX2   8
        WTPFEX2   8
        WTPFHX2   8
        WTPFALG2  8
        WTPFCNS2  8
        WTPFSD2   8
        WTPFMD2   8
        WTPFHSD2  8
        WTPFHMD2  8
        WTPQRP1   8
        WTPQRP2   8
        WTPQRP3   8
        WTPQRP4   8
        WTPQRP5   8
        WTPQRP6   8
        WTPQRP7   8
        WTPQRP8   8
        WTPQRP9   8
        WTPQRP10  8
        WTPQRP11  8
        WTPQRP12  8
        WTPQRP13  8
        WTPQRP14  8
        WTPQRP15  8
        WTPQRP16  8
        WTPQRP17  8
        WTPQRP18  8
        WTPQRP19  8
        WTPQRP20  8
        WTPQRP21  8
        WTPQRP22  8
        WTPQRP23  8
        WTPQRP24  8
        WTPQRP25  8
        WTPQRP26  8
        WTPQRP27  8
        WTPQRP28  8
        WTPQRP29  8
        WTPQRP30  8
        WTPQRP31  8
        WTPQRP32  8
        WTPQRP33  8
        WTPQRP34  8
        WTPQRP35  8
        WTPQRP36  8
        WTPQRP37  8
        WTPQRP38  8
        WTPQRP39  8
        WTPQRP40  8
        WTPQRP41  8
        WTPQRP42  8
        WTPQRP43  8
        WTPQRP44  8
        WTPQRP45  8
        WTPQRP46  8
        WTPQRP47  8
        WTPQRP48  8
        WTPQRP49  8
        WTPQRP50  8
        WTPQRP51  8
        WTPQRP52  8
        WTPXRP1   8
        WTPXRP2   8
        WTPXRP3   8
        WTPXRP4   8
        WTPXRP5   8
        WTPXRP6   8
        WTPXRP7   8
        WTPXRP8   8
        WTPXRP9   8
        WTPXRP10  8
        WTPXRP11  8
        WTPXRP12  8
        WTPXRP13  8
        WTPXRP14  8
        WTPXRP15  8
        WTPXRP16  8
        WTPXRP17  8
        WTPXRP18  8
        WTPXRP19  8
        WTPXRP20  8
        WTPXRP21  8
        WTPXRP22  8
        WTPXRP23  8
        WTPXRP24  8
        WTPXRP25  8
        WTPXRP26  8
        WTPXRP27  8
        WTPXRP28  8
        WTPXRP29  8
        WTPXRP30  8
        WTPXRP31  8
        WTPXRP32  8
        WTPXRP33  8
        WTPXRP34  8
        WTPXRP35  8
        WTPXRP36  8
        WTPXRP37  8
        WTPXRP38  8
        WTPXRP39  8
        WTPXRP40  8
        WTPXRP41  8
        WTPXRP42  8
        WTPXRP43  8
        WTPXRP44  8
        WTPXRP45  8
        WTPXRP46  8
        WTPXRP47  8
        WTPXRP48  8
        WTPXRP49  8
        WTPXRP50  8
        WTPXRP51  8
        WTPXRP52  8
        HYAITMO   3
        MXPLANG   3
        MXPSESSR  3
        MXPTIMO   3
        MXPTIDW   3
        MXPAXTMR  4
        HXPSESSR  3
        HXPTIMO   3
        HXPTIDW   3
        HXPAXTMR  4
        HFVERS    3
        HFINTVR   4
        HFLANG    3
        HFA6XCR   3
        HFA8R     3
        HFA12     3
        HFA13     3
        HFB1      3
        HFB2      3
        HFB3      3
        HFB4      3
        HFB5      3
        HFB6      3
        HFB7      3
        HFB8      3
        HFB9      3
        HFB10     3
        HFB11     3
        HFB11A    3
        HFB11B    3
        HFB11C    3
        HFB11D    3
        HFB11E    3
        HFB12     3
        HFB13     3
        HFB14AB   3
        HFB14AC   3
        HFB14AD   3
        HFB14AE   3
        HFB14AF   3
        HFB14AG   3
        HFB14AI   3
        HFB14BA   3
        HFB14BB   3
        HFB14BC   3
        HFB14BD   3
        HFB14BE   3
        HFB14BF   3
        HFB14BG   3
        HFB14BH   3
        HFB16A    3
        HFB16B    3
        HFB17     3
        HFC1      3
        HFC2S     3
        HFC3S     3
        HFC4S     3
        HFC5S     3
        HFC6A     3
        HFC6A1    3
        HFC6B     3
        HFC6B1    3
        HFC6C     3
        HFC6C1    3
        HFC6D     3
        HFC6D1    3
        HFC6E     3
        HFC6E1    3
        HFC7S     4
        HFC8S     4
        HFC9      3
        HFC10     3
        HFC11     3
        HFD1      3
        HFD2      3
        HFD3      3
        HFD4      3
        HFD5      3
        HFD9R     3
        HFD10R    3
        HFD12     3
        HFE1      3
        HFE2      3
        HFE3      3
        HFE4      3
        HFE5      3
        HFE6      3
        HFE7      3
        HFE8A     3
        HFE8B     3
        HFE8C     3
        HFE8D     3
        HFE8E     3
        HFE9      3
        HFE10     3
        HFE11     3
        HFE12     3
        HFE13     3
        HFE14     3
        HFE15     3
        HFE16     3
        HFE17     3
        HFE18     3
        HFF1      3
        HFF2R     3
        HFF3A     3
        HFF3B     3
        HFF3C     3
        HFF3D     3
        HFF3E     3
        HFF3F     3
        HFF4      3
        HFF5      3
        HFF6A     3
        HFF6B     3
        HFF6C     3
        HFF6D     3
        HFF7      3
        HFF8      3
        HFF9      3
        HFF10     3
        HFF11     3
        HFF12A    3
        HFF12B    3
        HFF13A    3
        HFF13B    3
        HFF13DA   3
        HFF13DB   3
        HFF13E    3
        HFF14A    3
        HFF14B    3
        HFF14D    3
        HFF15A    3
        HFF15B    3
        HFF16A    3
        HFF16B    3
        HFF16D    3
        HFF16E    3
        HFF17A    3
        HFF17B    3
        HFF18     3
        HFF19R    3
        HFF20R    3
        HFHSEQN   7
        HFHAGER   3
        HFHSEX    3
        HFHFIPCR  3
        HFHEDUCR  3
        HFHEMPL   3
        HFHMRST   3
        HFHMLSV   3
        HFRELR    3
        HFAGERR   3
        HYINTVR   5
        HYLANG    3
        HYA1      3
        HYA2      3
        HYA3      3
        HYA4      3
        HYA5      3
        HYA6      3
        HYA6A     3
        HYA7S     8
        HYA8      3
        HYA9      3
        HYA9R     3
        HYB1      3
        HYB2      3
        HYB3S     4
        HYB4S     4
        HYB5S     4
        HYB6S     4
        HYB7S     4
        HYB8S     4
        HYB9      3
        HYB10S    4
        HYB11     3
        HYB12S    4
        HYB13     3
        HYB14     3
        HYB15     3
        HYB16     3
        HYB17A    3
        HYB17B    3
        HYB17C    3
        HYB17D    3
        HYB17E    3
        HYB17F    3
        HYB17I    3
        HYB17J    3
        HYB17K    3
        HYB17L    3
        HYB18S    3
        HYB19S    3
        HYB20     3
        HYC1      3
        HYC2      3
        HYC3      3
        HYC4      3
        HYC5      3
        HYC6      3
        HYC7      3
        HYC8      3
        HYC9      3
        HYC10     3
        HYC11     3
        HYC12     3
        HYC13     3
        HYC14     3
        HYC15     3
        HYC16     3
        HYC17     3
        HYC18     3
        HYC19     3
        HYC20     3
        HYC21     3
        HYC22     3
        HYC23     3
        HYC24     3
        HYC25     3
        HYC26     3
        HYC27     3
        HYC28     3
        HYC29     3
        HYC30     3
        HYC31     3
        HYC32     3
        HYC33     3
        HYC34     3
        HYC35     3
        HYC36     3
        HYC37     3
        HYC38     3
        HYC39     3
        HYC40     3
        HYC41     3
        HYC42     3
        HYC43     3
        HYC44     3
        HYC45     3
        HYC46     3
        HYC47     3
        HYC48     3
        HYC49     3
        HYC50     3
        HYD1      3
        HYD2      3
        HYD3      3
        HYD4      3
        HYD5      3
        HYD6      3
        HYD7      3
        HYD8      3
        HYD9      3
        HYD10     3
        HYD11     3
        HYD12S    4
        HYE1A     3
        HYE1B     3
        HYE1C     3
        HYE1D     3
        HYE1E     3
        HYE1F     3
        HYE1G     3
        HYE1H     3
        HYE1I     3
        HYE2AS    3
        HYE2BS    3
        HYE2ES    3
        HYE2FS    3
        HYE2GS    3
        HYE2HS    3
        HYE2IS    3
        HYE3A     3
        HYE3B     3
        HYE3E     3
        HYE3F     3
        HYE3G     3
        HYE3H     3
        HYE3I     3
        HYE4A     3
        HYE4B     3
        HYE4G     3
        HYE4H     3
        HYE4I     3
        HYE5      3
        HYE6A     3
        HYE6B     3
        HYE7AS    3
        HYE7BS    3
        HYE8A     3
        HYE8B     3
        HYE9A     3
        HYE9B     3
        HYE10     3
        HYE11     3
        HYE12     3
        HYE13     3
        HYE14     3
        HYE15     3
        HYE16     3
        HYE17S    3
        HYE18     3
        HYE19     3
        HYE20S    3
        HYE21     3
        HYE22     3
        HYE23S    3
        HYE24     3
        HYE24A    3
        HYF1      3
        HYF2      3
        HYF3A     3
        HYF3B     3
        HYF3C     3
        HYF3D     3
        HYF3E     3
        HYF3F     3
        HYF3G     3
        HYF3I     3
        HYF3K     3
        HYF3L     3
        HYF4S     5
        HYF5      3
        HYF6      3
        HYF7      3
        HYF8      3
        HYF9      3
        HYF10     3
        HYG1      3
        HYG2      3
        HYG3      3
        HYG4      3
        HYG5      3
        HYG6      3
        HYG7      3
        HYG8      3
        HYG9      3
        HYG10     3
        HYG11     3
        HYG12     3
        HYG13A    3
        HYG13B    3
        HYG14     3
        HYG15     3
        HYG16A    3
        HYG16B    3
        HYG16C    3
        HYG16D    3
        HYG17A    3
        HYG17B    3
        HYG17C    3
        HYG17D    3
        HYG17E    3
        HYG17F    3
        HYG17G    3
        HYG17H    3
        HYG17I    3
        HYG17J    3
        HYG17K    3
        HYG17L    3
        HYG17M    3
        HYG18A    3
        HYG18B    3
        HYG19     3
        HYG20     3
        HYG21A    3
        HYG21B    3
        HYG21C    3
        HYG22A    3
        HYG22B    3
        HYG22C    3
        HYH1      3
        HYH2      3
        HYH3      3
        HYH4      3
        HYH5      3
        HYH6      3
        HYH7S     3
        HYH8      3
        HYH9      3
        HYH10     3
        HYH11     3
        HYH12     3
        HYH13     3
        HYJ1      3
        HYJ2      3
        HYJ3S     3
        HYJ4      3
        HYJ5      3
        HYJ6A     3
        HYJ6B     3
        HYJ6C     3
        HYJ6D     3
        HYJ7      3
        HYJ8      3
        HYJ9      3
        HYJ10     3
        HYJ11     3
        HYJ12     3
        HYJ13     3
        HYJ14     3
        HYJ15     3
        HYJ16     3
        HYJ17A    3
        HYJ17B    3
        HYJ17C    3
        HYJ17D    3
        HYJ17E    3
        HYJ17F    3
        HYJ17G    3
        HYJ17H    3
        HYJ17I    3
        HYJ17J    3
        HYJ17K    3
        HYJ17L    3
        HYJ17M    3
        HYJ18A    3
        HYJ18B    3
        HYJ18C    3
        HYJ18D    3
        HYJ18E    3
        HYJ18G    3
        HYJ18H    3
        HYJ18I    3
        HYJ18J    3
        HYJ18K    3
        HYJ19     3
        HYJ20     3
        HYJ21     3
        HYJ22     3
        HYJ23     3
        HYJ24     3
        HYJ25     3
        HYJ26     3
        HYJ27     3
        HYJ28     3
        HYJ29     3
        HYJ30     3
        HYK1A     3
        HYK1B     3
        HYK2A     3
        HYK2B     3
        HYK3CG    3
        HYK3DG    3
        HYK6SG    4
        HYK8SG    3
        HYK3CH    3
        HYK3DH    3
        HYK6SH    4
        HYK8SH    3
        HYK3CI    3
        HYK3DI    3
        HYK6SI    4
        HYK8SI    3
        HYK3CJ    3
        HYK3DJ    3
        HYK6SJ    4
        HYK8SJ    3
        HYK3CK    3
        HYK3DK    3
        HYK6SK    4
        HYK8SK    3
        HYK3CL    3
        HYK3DL    3
        HYK6SL    4
        HYK8SL    3
        HYK3CM    3
        HYK3DM    3
        HYK6SM    4
        HYK8SM    3
        HYK3CN    3
        HYK3DN    3
        HYK6SN    4
        HYK8SN    3
        HYK3CO    3
        HYK3DO    3
        HYK6SO    4
        HYK8SO    3
        HYK3CP    3
        HYK3DP    3
        HYK6SP    4
        HYK8SP    3
        HYK9DG    4
        HYK9EG    4
        HYK9FG    4
        HYK11AG  $6
        HYK12SG   4
        HYK9DH    4
        HYK9EH    4
        HYK9FH    4
        HYK11AH  $6
        HYK12SH   4
        HYK9DI    4
        HYK9EI    4
        HYK9FI    4
        HYK11AI  $6
        HYK12SI   4
        HYK9DJ    4
        HYK9EJ    4
        HYK9FJ    4
        HYK11AJ  $6
        HYK12SJ   4
        HYK9DK    4
        HYK9EK    4
        HYK9FK    4
        HYK11AK  $6
        HYK12SK   4
        HYK9DL    4
        HYK9EL    4
        HYK9FL    4
        HYK11AL  $6
        HYK12SL   4
        HYK9DM    4
        HYK9EM    4
        HYK9FM    4
        HYK11AM  $6
        HYK12SM   4
        HYK9DN    4
        HYK9EN    4
        HYK9FN    4
        HYK11AN  $6
        HYK12SN   4
        HYK9DO    4
        HYK9EO    4
        HYK9FO    4
        HYK11AO  $6
        HYK12SO   4
        HYM1      3
        HYM2      3
        HYM3      3
      ;

      FORMAT
        DMPPIR   Z6.3
        WTPFQX6  Z9.2
        WTPFEX6  Z9.2
        WTPFHX6  Z9.2
        WTPFALG6 Z9.2
        WTPFCNS6 Z9.2
        WTPFSD6  Z9.2
        WTPFMD6  Z9.2
        WTPFHSD6 Z9.2
        WTPFHMD6 Z9.2
        WTPFQX1  Z9.2
        WTPFEX1  Z9.2
        WTPFHX1  Z9.2
        WTPFALG1 Z9.2
        WTPFCNS1 Z9.2
        WTPFSD1  Z9.2
        WTPFMD1  Z9.2
        WTPFHSD1 Z9.2
        WTPFHMD1 Z9.2
        WTPFQX2  Z9.2
        WTPFEX2  Z9.2
        WTPFHX2  Z9.2
        WTPFALG2 Z9.2
        WTPFCNS2 Z9.2
        WTPFSD2  Z9.2
        WTPFMD2  Z9.2
        WTPFHSD2 Z9.2
        WTPFHMD2 Z9.2
        WTPQRP1  Z9.2
        WTPQRP2  Z9.2
        WTPQRP3  Z9.2
        WTPQRP4  Z9.2
        WTPQRP5  Z9.2
        WTPQRP6  Z9.2
        WTPQRP7  Z9.2
        WTPQRP8  Z9.2
        WTPQRP9  Z9.2
        WTPQRP10 Z9.2
        WTPQRP11 Z9.2
        WTPQRP12 Z9.2
        WTPQRP13 Z9.2
        WTPQRP14 Z9.2
        WTPQRP15 Z9.2
        WTPQRP16 Z9.2
        WTPQRP17 Z9.2
        WTPQRP18 Z9.2
        WTPQRP19 Z9.2
        WTPQRP20 Z9.2
        WTPQRP21 Z9.2
        WTPQRP22 Z9.2
        WTPQRP23 Z9.2
        WTPQRP24 Z9.2
        WTPQRP25 Z9.2
        WTPQRP26 Z9.2
        WTPQRP27 Z9.2
        WTPQRP28 Z9.2
        WTPQRP29 Z9.2
        WTPQRP30 Z9.2
        WTPQRP31 Z9.2
        WTPQRP32 Z9.2
        WTPQRP33 Z9.2
        WTPQRP34 Z9.2
        WTPQRP35 Z9.2
        WTPQRP36 Z9.2
        WTPQRP37 Z9.2
        WTPQRP38 Z9.2
        WTPQRP39 Z9.2
        WTPQRP40 Z9.2
        WTPQRP41 Z9.2
        WTPQRP42 Z9.2
        WTPQRP43 Z9.2
        WTPQRP44 Z9.2
        WTPQRP45 Z9.2
        WTPQRP46 Z9.2
        WTPQRP47 Z9.2
        WTPQRP48 Z9.2
        WTPQRP49 Z9.2
        WTPQRP50 Z9.2
        WTPQRP51 Z9.2
        WTPQRP52 Z9.2
        WTPXRP1  Z9.2
        WTPXRP2  Z9.2
        WTPXRP3  Z9.2
        WTPXRP4  Z9.2
        WTPXRP5  Z9.2
        WTPXRP6  Z9.2
        WTPXRP7  Z9.2
        WTPXRP8  Z9.2
        WTPXRP9  Z9.2
        WTPXRP10 Z9.2
        WTPXRP11 Z9.2
        WTPXRP12 Z9.2
        WTPXRP13 Z9.2
        WTPXRP14 Z9.2
        WTPXRP15 Z9.2
        WTPXRP16 Z9.2
        WTPXRP17 Z9.2
        WTPXRP18 Z9.2
        WTPXRP19 Z9.2
        WTPXRP20 Z9.2
        WTPXRP21 Z9.2
        WTPXRP22 Z9.2
        WTPXRP23 Z9.2
        WTPXRP24 Z9.2
        WTPXRP25 Z9.2
        WTPXRP26 Z9.2
        WTPXRP27 Z9.2
        WTPXRP28 Z9.2
        WTPXRP29 Z9.2
        WTPXRP30 Z9.2
        WTPXRP31 Z9.2
        WTPXRP32 Z9.2
        WTPXRP33 Z9.2
        WTPXRP34 Z9.2
        WTPXRP35 Z9.2
        WTPXRP36 Z9.2
        WTPXRP37 Z9.2
        WTPXRP38 Z9.2
        WTPXRP39 Z9.2
        WTPXRP40 Z9.2
        WTPXRP41 Z9.2
        WTPXRP42 Z9.2
        WTPXRP43 Z9.2
        WTPXRP44 Z9.2
        WTPXRP45 Z9.2
        WTPXRP46 Z9.2
        WTPXRP47 Z9.2
        WTPXRP48 Z9.2
        WTPXRP49 Z9.2
        WTPXRP50 Z9.2
        WTPXRP51 Z9.2
        WTPXRP52 Z9.2
      ;

     INPUT
        SEQN     1-5
        DMPFSEQ  6-10
        DMPSTAT  11
        DMARETHN 12
        DMARACER 13
        DMAETHNR 14
        HSSEX    15
        HSDOIMO  16-17
        HSAGEIR  18-19
        HSAGEU   20
        HSAITMOR 21-24
        HSFSIZER 25-26
        HSHSIZER 27-28
        DMPCNTYR 29-31
        DMPFIPSR 32-33
        DMPMETRO 34
        DMPCREGN 35
        DMPPIR   36-41
        SDPPHASE 42
        SDPPSU6  43
        SDPSTRA6 44-45
        SDPPSU1  46
        SDPSTRA1 47-48
        SDPPSU2  49
        SDPSTRA2 50-51
        WTPFQX6  52-59
        WTPFEX6  60-67
        WTPFHX6  68-75
        WTPFALG6 76-83
        WTPFCNS6 84
        WTPFSD6  85-93
        WTPFMD6  94-102
        WTPFHSD6 103-111
        WTPFHMD6 112-120
        WTPFQX1  121-129
        WTPFEX1  130-138
        WTPFHX1  139-147
        WTPFALG1 148-156
        WTPFCNS1 157
        WTPFSD1  158-166
        WTPFMD1  167-175
        WTPFHSD1 176-184
        WTPFHMD1 185-193
        WTPFQX2  194-202
        WTPFEX2  203-211
        WTPFHX2  212-220
        WTPFALG2 221-229
        WTPFCNS2 230
        WTPFSD2  231-239
        WTPFMD2  240-248
        WTPFHSD2 249-257
        WTPFHMD2 258-266
        WTPQRP1  267-274
        WTPQRP2  275-282
        WTPQRP3  283-291
        WTPQRP4  292-299
        WTPQRP5  300-308
        WTPQRP6  309-316
        WTPQRP7  317-325
        WTPQRP8  326-333
        WTPQRP9  334-342
        WTPQRP10 343-351
        WTPQRP11 352-360
        WTPQRP12 361-369
        WTPQRP13 370-378
        WTPQRP14 379-386
        WTPQRP15 387-394
        WTPQRP16 395-403
        WTPQRP17 404-411
        WTPQRP18 412-420
        WTPQRP19 421-428
        WTPQRP20 429-436
        WTPQRP21 437-445
        WTPQRP22 446-454
        WTPQRP23 455-462
        WTPQRP24 463-470
        WTPQRP25 471-478
        WTPQRP26 479-486
        WTPQRP27 487-494
        WTPQRP28 495-503
        WTPQRP29 504-512
        WTPQRP30 513-521
        WTPQRP31 522-530
        WTPQRP32 531-538
        WTPQRP33 539-546
        WTPQRP34 547-554
        WTPQRP35 555-562
        WTPQRP36 563-571
        WTPQRP37 572-580
        WTPQRP38 581-589
        WTPQRP39 590-597
        WTPQRP40 598-605
        WTPQRP41 606-614
        WTPQRP42 615-623
        WTPQRP43 624-631
        WTPQRP44 632-639
        WTPQRP45 640-648
        WTPQRP46 649-656
        WTPQRP47 657-665
        WTPQRP48 666-674
        WTPQRP49 675-682
        WTPQRP50 683-691
        WTPQRP51 692-699
        WTPQRP52 700-707
        WTPXRP1  708-715
        WTPXRP2  716-724
        WTPXRP3  725-733
        WTPXRP4  734-742
        WTPXRP5  743-750
        WTPXRP6  751-758
        WTPXRP7  759-767
        WTPXRP8  768-775
        WTPXRP9  776-784
        WTPXRP10 785-793
        WTPXRP11 794-802
        WTPXRP12 803-811
        WTPXRP13 812-820
        WTPXRP14 821-828
        WTPXRP15 829-836
        WTPXRP16 837-845
        WTPXRP17 846-853
        WTPXRP18 854-862
        WTPXRP19 863-870
        WTPXRP20 871-878
        WTPXRP21 879-886
        WTPXRP22 887-895
        WTPXRP23 896-904
        WTPXRP24 905-913
        WTPXRP25 914-921
        WTPXRP26 922-929
        WTPXRP27 930-937
        WTPXRP28 938-946
        WTPXRP29 947-955
        WTPXRP30 956-964
        WTPXRP31 965-973
        WTPXRP32 974-981
        WTPXRP33 982-989
        WTPXRP34 990-997
        WTPXRP35 998-1006
        WTPXRP36 1007-1015
        WTPXRP37 1016-1024
        WTPXRP38 1025-1033
        WTPXRP39 1034-1041
        WTPXRP40 1042-1049
        WTPXRP41 1050-1058
        WTPXRP42 1059-1067
        WTPXRP43 1068-1075
        WTPXRP44 1076-1083
        WTPXRP45 1084-1092
        WTPXRP46 1093-1100
        WTPXRP47 1101-1109
        WTPXRP48 1110-1118
        WTPXRP49 1119-1126
        WTPXRP50 1127-1134
        WTPXRP51 1135-1143
        WTPXRP52 1144-1151
        HYAITMO  1152-1155
        MXPLANG  1156
        MXPSESSR 1157
        MXPTIMO  1158-1159
        MXPTIDW  1160
        MXPAXTMR 1161-1163
        HXPSESSR 1164
        HXPTIMO  1165-1166
        HXPTIDW  1167
        HXPAXTMR 1168-1169
        HFVERS   1170
        HFINTVR  1171-1174
        HFLANG   1175
        HFA6XCR  1176
        HFA8R    1177-1178
        HFA12    1179-1180
        HFA13    1181
        HFB1     1182
        HFB2     1183
        HFB3     1184
        HFB4     1185
        HFB5     1186
        HFB6     1187
        HFB7     1188
        HFB8     1189
        HFB9     1190
        HFB10    1191
        HFB11    1192
        HFB11A   1193
        HFB11B   1194
        HFB11C   1195
        HFB11D   1196
        HFB11E   1197
        HFB12    1198
        HFB13    1199
        HFB14AB  1200
        HFB14AC  1201
        HFB14AD  1202
        HFB14AE  1203
        HFB14AF  1204
        HFB14AG  1205
        HFB14AI  1206
        HFB14BA  1207
        HFB14BB  1208
        HFB14BC  1209
        HFB14BD  1210
        HFB14BE  1211
        HFB14BF  1212
        HFB14BG  1213
        HFB14BH  1214
        HFB16A   1215-1216
        HFB16B   1217-1218
        HFB17    1219
        HFC1     1220
        HFC2S    1221-1223
        HFC3S    1224-1226
        HFC4S    1227-1229
        HFC5S    1230-1232
        HFC6A    1233
        HFC6A1   1234
        HFC6B    1235
        HFC6B1   1236
        HFC6C    1237
        HFC6C1   1238
        HFC6D    1239
        HFC6D1   1240
        HFC6E    1241
        HFC6E1   1242
        HFC7S    1243-1246
        HFC8S    1247-1250
        HFC9     1251-1252
        HFC10    1253
        HFC11    1254
        HFD1     1255
        HFD2     1256
        HFD3     1257
        HFD4     1258
        HFD5     1259
        HFD9R    1260-1261
        HFD10R   1262-1263
        HFD12    1264-1265
        HFE1     1266
        HFE2     1267-1268
        HFE3     1269-1271
        HFE4     1272
        HFE5     1273
        HFE6     1274
        HFE7     1275
        HFE8A    1276
        HFE8B    1277
        HFE8C    1278
        HFE8D    1279
        HFE8E    1280
        HFE9     1281
        HFE10    1282
        HFE11    1283
        HFE12    1284-1285
        HFE13    1286
        HFE14    1287
        HFE15    1288
        HFE16    1289
        HFE17    1290
        HFE18    1291
        HFF1     1292
        HFF2R    1293-1294
        HFF3A    1295-1297
        HFF3B    1298-1300
        HFF3C    1301-1303
        HFF3D    1304-1306
        HFF3E    1307-1309
        HFF3F    1310-1312
        HFF4     1313
        HFF5     1314-1315
        HFF6A    1316
        HFF6B    1317
        HFF6C    1318
        HFF6D    1319
        HFF7     1320
        HFF8     1321
        HFF9     1322
        HFF10    1323
        HFF11    1324
        HFF12A   1325
        HFF12B   1326
        HFF13A   1327
        HFF13B   1328
        HFF13DA  1329
        HFF13DB  1330-1331
        HFF13E   1332
        HFF14A   1333
        HFF14B   1334
        HFF14D   1335
        HFF15A   1336
        HFF15B   1337
        HFF16A   1338
        HFF16B   1339
        HFF16D   1340
        HFF16E   1341
        HFF17A   1342
        HFF17B   1343
        HFF18    1344
        HFF19R   1345-1346
        HFF20R   1347-1348
        HFHSEQN  1349-1353
        HFHAGER  1354-1356
        HFHSEX   1357
        HFHFIPCR 1358
        HFHEDUCR 1359-1360
        HFHEMPL  1361
        HFHMRST  1362-1363
        HFHMLSV  1364
        HFRELR   1365-1366
        HFAGERR  1367-1369
        HYINTVR  1370-1373
        HYLANG   1374
        HYA1     1375
        HYA2     1376-1378
        HYA3     1379
        HYA4     1380
        HYA5     1381-1382
        HYA6     1383
        HYA6A    1384-1386
        HYA7S    1387-1394
        HYA8     1395
        HYA9     1396
        HYA9R    1397
        HYB1     1398
        HYB2     1399
        HYB3S    1400-1403
        HYB4S    1404-1407
        HYB5S    1408-1411
        HYB6S    1412-1415
        HYB7S    1416-1419
        HYB8S    1420-1423
        HYB9     1424-1425
        HYB10S   1426-1429
        HYB11    1430
        HYB12S   1431-1434
        HYB13    1435
        HYB14    1436-1437
        HYB15    1438
        HYB16    1439
        HYB17A   1440
        HYB17B   1441
        HYB17C   1442
        HYB17D   1443
        HYB17E   1444
        HYB17F   1445
        HYB17I   1446
        HYB17J   1447
        HYB17K   1448
        HYB17L   1449
        HYB18S   1450-1452
        HYB19S   1453-1455
        HYB20    1456
        HYC1     1457
        HYC2     1458
        HYC3     1459
        HYC4     1460
        HYC5     1461
        HYC6     1462
        HYC7     1463
        HYC8     1464
        HYC9     1465
        HYC10    1466
        HYC11    1467
        HYC12    1468
        HYC13    1469
        HYC14    1470
        HYC15    1471
        HYC16    1472
        HYC17    1473
        HYC18    1474
        HYC19    1475
        HYC20    1476
        HYC21    1477
        HYC22    1478
        HYC23    1479
        HYC24    1480
        HYC25    1481
        HYC26    1482
        HYC27    1483
        HYC28    1484
        HYC29    1485
        HYC30    1486
        HYC31    1487
        HYC32    1488
        HYC33    1489
        HYC34    1490
        HYC35    1491
        HYC36    1492
        HYC37    1493
        HYC38    1494
        HYC39    1495
        HYC40    1496
        HYC41    1497
        HYC42    1498
        HYC43    1499
        HYC44    1500
        HYC45    1501
        HYC46    1502
        HYC47    1503
        HYC48    1504
        HYC49    1505
        HYC50    1506
        HYD1     1507
        HYD2     1508
        HYD3     1509
        HYD4     1510
        HYD5     1511-1512
        HYD6     1513
        HYD7     1514
        HYD8     1515
        HYD9     1516
        HYD10    1517
        HYD11    1518
        HYD12S   1519-1521
        HYE1A    1522
        HYE1B    1523
        HYE1C    1524
        HYE1D    1525
        HYE1E    1526
        HYE1F    1527
        HYE1G    1528
        HYE1H    1529
        HYE1I    1530
        HYE2AS   1531-1533
        HYE2BS   1534-1536
        HYE2ES   1537-1539
        HYE2FS   1540-1542
        HYE2GS   1543-1545
        HYE2HS   1546-1548
        HYE2IS   1549-1551
        HYE3A    1552
        HYE3B    1553
        HYE3E    1554
        HYE3F    1555
        HYE3G    1556
        HYE3H    1557
        HYE3I    1558
        HYE4A    1559
        HYE4B    1560
        HYE4G    1561
        HYE4H    1562
        HYE4I    1563
        HYE5     1564
        HYE6A    1565
        HYE6B    1566
        HYE7AS   1567-1569
        HYE7BS   1570-1572
        HYE8A    1573
        HYE8B    1574
        HYE9A    1575
        HYE9B    1576
        HYE10    1577
        HYE11    1578
        HYE12    1579
        HYE13    1580
        HYE14    1581
        HYE15    1582
        HYE16    1583
        HYE17S   1584-1586
        HYE18    1587
        HYE19    1588
        HYE20S   1589-1591
        HYE21    1592
        HYE22    1593
        HYE23S   1594-1596
        HYE24    1597
        HYE24A   1598-1599
        HYF1     1600
        HYF2     1601
        HYF3A    1602
        HYF3B    1603
        HYF3C    1604
        HYF3D    1605
        HYF3E    1606
        HYF3F    1607
        HYF3G    1608
        HYF3I    1609
        HYF3K    1610
        HYF3L    1611
        HYF4S    1612-1616
        HYF5     1617
        HYF6     1618
        HYF7     1619
        HYF8     1620-1621
        HYF9     1622
        HYF10    1623
        HYG1     1624
        HYG2     1625
        HYG3     1626-1627
        HYG4     1628
        HYG5     1629-1630
        HYG6     1631
        HYG7     1632-1634
        HYG8     1635
        HYG9     1636-1638
        HYG10    1639-1640
        HYG11    1641-1642
        HYG12    1643
        HYG13A   1644
        HYG13B   1645
        HYG14    1646-1648
        HYG15    1649
        HYG16A   1650
        HYG16B   1651
        HYG16C   1652
        HYG16D   1653
        HYG17A   1654
        HYG17B   1655
        HYG17C   1656
        HYG17D   1657
        HYG17E   1658
        HYG17F   1659
        HYG17G   1660
        HYG17H   1661
        HYG17I   1662
        HYG17J   1663
        HYG17K   1664
        HYG17L   1665
        HYG17M   1666
        HYG18A   1667
        HYG18B   1668
        HYG19    1669
        HYG20    1670
        HYG21A   1671
        HYG21B   1672
        HYG21C   1673
        HYG22A   1674-1676
        HYG22B   1677-1679
        HYG22C   1680-1682
        HYH1     1683
        HYH2     1684
        HYH3     1685
        HYH4     1686
        HYH5     1687
        HYH6     1688
        HYH7S    1689-1691
        HYH8     1692
        HYH9     1693
        HYH10    1694
        HYH11    1695
        HYH12    1696
        HYH13    1697
        HYJ1     1698
        HYJ2     1699
        HYJ3S    1700-1702
        HYJ4     1703
        HYJ5     1704
        HYJ6A    1705
        HYJ6B    1706
        HYJ6C    1707
        HYJ6D    1708
        HYJ7     1709
        HYJ8     1710-1711
        HYJ9     1712
        HYJ10    1713-1714
        HYJ11    1715
        HYJ12    1716
        HYJ13    1717-1718
        HYJ14    1719-1721
        HYJ15    1722
        HYJ16    1723
        HYJ17A   1724
        HYJ17B   1725
        HYJ17C   1726
        HYJ17D   1727
        HYJ17E   1728
        HYJ17F   1729
        HYJ17G   1730
        HYJ17H   1731
        HYJ17I   1732
        HYJ17J   1733
        HYJ17K   1734
        HYJ17L   1735
        HYJ17M   1736
        HYJ18A   1737
        HYJ18B   1738
        HYJ18C   1739
        HYJ18D   1740
        HYJ18E   1741
        HYJ18G   1742
        HYJ18H   1743
        HYJ18I   1744
        HYJ18J   1745
        HYJ18K   1746
        HYJ19    1747
        HYJ20    1748-1750
        HYJ21    1751
        HYJ22    1752-1753
        HYJ23    1754-1755
        HYJ24    1756
        HYJ25    1757
        HYJ26    1758
        HYJ27    1759
        HYJ28    1760-1761
        HYJ29    1762-1763
        HYJ30    1764
        HYK1A    1765
        HYK1B    1766
        HYK2A    1767-1768
        HYK2B    1769-1770
        HYK3CG   1771-1772
        HYK3DG   1773-1774
        HYK6SG   1775-1778
        HYK8SG   1779-1782
        HYK3CH   1783-1784
        HYK3DH   1785-1786
        HYK6SH   1787-1790
        HYK8SH   1791-1794
        HYK3CI   1795-1796
        HYK3DI   1797-1798
        HYK6SI   1799-1802
        HYK8SI   1803-1806
        HYK3CJ   1807-1808
        HYK3DJ   1809-1810
        HYK6SJ   1811-1814
        HYK8SJ   1815-1818
        HYK3CK   1819-1820
        HYK3DK   1821-1822
        HYK6SK   1823-1826
        HYK8SK   1827-1830
        HYK3CL   1831-1832
        HYK3DL   1833-1834
        HYK6SL   1835-1838
        HYK8SL   1839-1842
        HYK3CM   1843-1844
        HYK3DM   1845-1846
        HYK6SM   1847-1850
        HYK8SM   1851-1854
        HYK3CN   1855-1856
        HYK3DN   1857-1858
        HYK6SN   1859-1862
        HYK8SN   1863-1866
        HYK3CO   1867-1868
        HYK3DO   1869-1870
        HYK6SO   1871-1874
        HYK8SO   1875-1878
        HYK3CP   1879-1880
        HYK3DP   1881-1882
        HYK6SP   1883-1886
        HYK8SP   1887-1890
        HYK9DG   1891-1894
        HYK9EG   1895-1898
        HYK9FG   1899-1902
        HYK11AG  1903-1908
        HYK12SG  1909-1913
        HYK9DH   1914-1917
        HYK9EH   1918-1921
        HYK9FH   1922-1925
        HYK11AH  1926-1931
        HYK12SH  1932-1936
        HYK9DI   1937-1940
        HYK9EI   1941-1944
        HYK9FI   1945-1948
        HYK11AI  1949-1954
        HYK12SI  1955-1959
        HYK9DJ   1960-1963
        HYK9EJ   1964-1967
        HYK9FJ   1968-1971
        HYK11AJ  1972-1977
        HYK12SJ  1978-1982
        HYK9DK   1983-1986
        HYK9EK   1987-1990
        HYK9FK   1991-1994
        HYK11AK  1995-2000
        HYK12SK  2001-2005
        HYK9DL   2006-2009
        HYK9EL   2010-2013
        HYK9FL   2014-2017
        HYK11AL  2018-2023
        HYK12SL  2024-2028
        HYK9DM   2029-2032
        HYK9EM   2033-2036
        HYK9FM   2037-2040
        HYK11AM  2041-2046
        HYK12SM  2047-2051
        HYK9DN   2052-2055
        HYK9EN   2056-2059
        HYK9FN   2060-2063
        HYK11AN  2064-2069
        HYK12SN  2070-2074
        HYK9DO   2075-2078
        HYK9EO   2079-2082
        HYK9FO   2083-2086
        HYK11AO  2087-2092
        HYK12SO  2093-2097
        HYM1     2098-2099
        HYM2     2100
        HYM3     2101
     ;

      LABEL
        SEQN     = "Sequence number"
        DMPFSEQ  = "Family sequence number"
        DMPSTAT  = "Examination/interview status"
        DMARETHN = "Race-ethnicity"
        DMARACER = "Race"
        DMAETHNR = "Ethnicity"
        HSSEX    = "Sex"
        HSDOIMO  = "Date of screener: month"
        HSAGEIR  = "Age at interview (screener) - qty"
        HSAGEU   = "Age at interview (screener) - unit"
        HSAITMOR = "Age in months at interview (screener)"
        HSFSIZER = "Family size (persons in family)"
        HSHSIZER = "Household size (persons in dwelling)"
        DMPCNTYR = "County code"
        DMPFIPSR = "FIPS code for State"
        DMPMETRO = "Rural/urban code based on USDA code"
        DMPCREGN = "Census region, weighting(Texas in south)"
        DMPPIR   = "Poverty Income Ratio (unimputed income)"
        SDPPHASE = "Phase of NHANES III Survey"
        SDPPSU6  = "Total NHANES III pseudo-PSU"
        SDPSTRA6 = "Total NHANES III pseudo-stratum"
        SDPPSU1  = "Pseudo-PSU for phase 1"
        SDPSTRA1 = "Pseudo-stratum for phase 1"
        SDPPSU2  = "Pseudo-PSU for phase 2"
        SDPSTRA2 = "Pseudo-stratum for phase 2"
        WTPFQX6  = "Total interviewed sample final weight"
        WTPFEX6  = "Total MEC examined sample final weight"
        WTPFHX6  = "Total M+H examined sample final weight"
        WTPFALG6 = "Total allergy subsample final weight"
        WTPFCNS6 = "Total CNS subsample final weight"
        WTPFSD6  = "Total morning subsample final wgt"
        WTPFMD6  = "Total afternoon/eve subsample final wgt"
        WTPFHSD6 = "Total M+H morning subsample final wgt"
        WTPFHMD6 = "Total M+H afternoon subsample final wgt"
        WTPFQX1  = "Phase 1 interviewed sample final wgt"
        WTPFEX1  = "Phase 1 MEC examined sample final wgt"
        WTPFHX1  = "Phase 1 M+H examined sample final wgt"
        WTPFALG1 = "Phase 1 allergy subsample final wgt"
        WTPFCNS1 = "Phase 1 CNS subsample final wgt"
        WTPFSD1  = "Phase 1 morning sess subsample final wgt"
        WTPFMD1  = "Phase 1 aft/eve subsample final wgt"
        WTPFHSD1 = "Phase 1 morning M+H subsample final wgt"
        WTPFHMD1 = "Phase 1 aft/eve M+H subsample final wgt"
        WTPFQX2  = "Phase 2 interviewed sample final wgt"
        WTPFEX2  = "Phase 2 MEC examined sample final wgt"
        WTPFHX2  = "Phase 2 M+H examined sample final wgt"
        WTPFALG2 = "Phase 2 allergy subsample final wgt"
        WTPFCNS2 = "Phase 2 CNS subsample final wgt"
        WTPFSD2  = "Phase 2 morning sess subsample final wgt"
        WTPFMD2  = "Phase 2 aft/eve subsample final wgt"
        WTPFHSD2 = "Phase 2 morning M+H subsample final wgt"
        WTPFHMD2 = "Phase 2 aft/eve M+H subsample final wgt"
        WTPQRP1  = "Replicate 1 final interview weight"
        WTPQRP2  = "Replicate 2 final interview weight"
        WTPQRP3  = "Replicate 3 final interview weight"
        WTPQRP4  = "Replicate 4 final interview weight"
        WTPQRP5  = "Replicate 5 final interview weight"
        WTPQRP6  = "Replicate 6 final interview weight"
        WTPQRP7  = "Replicate 7 final interview weight"
        WTPQRP8  = "Replicate 8 final interview weight"
        WTPQRP9  = "Replicate 9 final interview weight"
        WTPQRP10 = "Replicate 10 final interview weight"
        WTPQRP11 = "Replicate 11 final interview weight"
        WTPQRP12 = "Replicate 12 final interview weight"
        WTPQRP13 = "Replicate 13 final interview weight"
        WTPQRP14 = "Replicate 14 final interview weight"
        WTPQRP15 = "Replicate 15 final interview weight"
        WTPQRP16 = "Replicate 16 final interview weight"
        WTPQRP17 = "Replicate 17 final interview weight"
        WTPQRP18 = "Replicate 18 final interview weight"
        WTPQRP19 = "Replicate 19 final interview weight"
        WTPQRP20 = "Replicate 20 final interview weight"
        WTPQRP21 = "Replicate 21 final interview weight"
        WTPQRP22 = "Replicate 22 final interview weight"
        WTPQRP23 = "Replicate 23 final interview weight"
        WTPQRP24 = "Replicate 24 final interview weight"
        WTPQRP25 = "Replicate 25 final interview weight"
        WTPQRP26 = "Replicate 26 final interview weight"
        WTPQRP27 = "Replicate 27 final interview weight"
        WTPQRP28 = "Replicate 28 final interview weight"
        WTPQRP29 = "Replicate 29 final interview weight"
        WTPQRP30 = "Replicate 30 final interview weight"
        WTPQRP31 = "Replicate 31 final interview weight"
        WTPQRP32 = "Replicate 32 final interview weight"
        WTPQRP33 = "Replicate 33 final interview weight"
        WTPQRP34 = "Replicate 34 final interview weight"
        WTPQRP35 = "Replicate 35 final interview weight"
        WTPQRP36 = "Replicate 36 final interview weight"
        WTPQRP37 = "Replicate 37 final interview weight"
        WTPQRP38 = "Replicate 38 final interview weight"
        WTPQRP39 = "Replicate 39 final interview weight"
        WTPQRP40 = "Replicate 40 final interview weight"
        WTPQRP41 = "Replicate 41 final interview weight"
        WTPQRP42 = "Replicate 42 final interview weight"
        WTPQRP43 = "Replicate 43 final interview weight"
        WTPQRP44 = "Replicate 44 final interview weight"
        WTPQRP45 = "Replicate 45 final interview weight"
        WTPQRP46 = "Replicate 46 final interview weight"
        WTPQRP47 = "Replicate 47 final interview weight"
        WTPQRP48 = "Replicate 48 final interview weight"
        WTPQRP49 = "Replicate 49 final interview weight"
        WTPQRP50 = "Replicate 50 final interview weight"
        WTPQRP51 = "Replicate 51 final interview weight"
        WTPQRP52 = "Replicate 52 final interview weight"
        WTPXRP1  = "Replicate 1 final exam weight"
        WTPXRP2  = "Replicate 2 final exam weight"
        WTPXRP3  = "Replicate 3 final exam weight"
        WTPXRP4  = "Replicate 4 final exam weight"
        WTPXRP5  = "Replicate 5 final exam weight"
        WTPXRP6  = "Replicate 6 final exam weight"
        WTPXRP7  = "Replicate 7 final exam weight"
        WTPXRP8  = "Replicate 8 final exam weight"
        WTPXRP9  = "Replicate 9 final exam weight"
        WTPXRP10 = "Replicate 10 final exam weight"
        WTPXRP11 = "Replicate 11 final exam weight"
        WTPXRP12 = "Replicate 12 final exam weight"
        WTPXRP13 = "Replicate 13 final exam weight"
        WTPXRP14 = "Replicate 14 final exam weight"
        WTPXRP15 = "Replicate 15 final exam weight"
        WTPXRP16 = "Replicate 16 final exam weight"
        WTPXRP17 = "Replicate 17 final exam weight"
        WTPXRP18 = "Replicate 18 final exam weight"
        WTPXRP19 = "Replicate 19 final exam weight"
        WTPXRP20 = "Replicate 20 final exam weight"
        WTPXRP21 = "Replicate 21 final exam weight"
        WTPXRP22 = "Replicate 22 final exam weight"
        WTPXRP23 = "Replicate 23 final exam weight"
        WTPXRP24 = "Replicate 24 final exam weight"
        WTPXRP25 = "Replicate 25 final exam weight"
        WTPXRP26 = "Replicate 26 final exam weight"
        WTPXRP27 = "Replicate 27 final exam weight"
        WTPXRP28 = "Replicate 28 final exam weight"
        WTPXRP29 = "Replicate 29 final exam weight"
        WTPXRP30 = "Replicate 30 final exam weight"
        WTPXRP31 = "Replicate 31 final exam weight"
        WTPXRP32 = "Replicate 32 final exam weight"
        WTPXRP33 = "Replicate 33 final exam weight"
        WTPXRP34 = "Replicate 34 final exam weight"
        WTPXRP35 = "Replicate 35 final exam weight"
        WTPXRP36 = "Replicate 36 final exam weight"
        WTPXRP37 = "Replicate 37 final exam weight"
        WTPXRP38 = "Replicate 38 final exam weight"
        WTPXRP39 = "Replicate 39 final exam weight"
        WTPXRP40 = "Replicate 40 final exam weight"
        WTPXRP41 = "Replicate 41 final exam weight"
        WTPXRP42 = "Replicate 42 final exam weight"
        WTPXRP43 = "Replicate 43 final exam weight"
        WTPXRP44 = "Replicate 44 final exam weight"
        WTPXRP45 = "Replicate 45 final exam weight"
        WTPXRP46 = "Replicate 46 final exam weight"
        WTPXRP47 = "Replicate 47 final exam weight"
        WTPXRP48 = "Replicate 48 final exam weight"
        WTPXRP49 = "Replicate 49 final exam weight"
        WTPXRP50 = "Replicate 50 final exam weight"
        WTPXRP51 = "Replicate 51 final exam weight"
        WTPXRP52 = "Replicate 52 final exam weight"
        HYAITMO  = "Age in months at youth interview"
        MXPLANG  = "Language used by SP in MEC"
        MXPSESSR = "Session for MEC examination"
        MXPTIMO  = "Date of MEC exam time in: month"
        MXPTIDW  = "Day of week of MEC exam"
        MXPAXTMR = "Age in months at MEC exam"
        HXPSESSR = "Session for home examination"
        HXPTIMO  = "Date of home exam: month"
        HXPTIDW  = "Day of week of home exam"
        HXPAXTMR = "Age in months at home exam"
        HFVERS   = "Version of household family quex"
        HFINTVR  = "Family interviewer number"
        HFLANG   = "Language of family interview"
        HFA6XCR  = "State or foreign country of birth"
        HFA8R    = "Highest grade or yr of school completed"
        HFA12    = "Marital status"
        HFA13    = "Military service"
        HFB1     = "Any SP covered by Medicare in last month"
        HFB2     = "Covered by Medicare in last month"
        HFB3     = "Type of Medicare coverage"
        HFB4     = "Covered by Medicare last mo for hospital"
        HFB5     = "Covered by Medicare last mo for doctor"
        HFB6     = "Any SP covered by Medicaid in last month"
        HFB7     = "Covered by Medicaid in last month"
        HFB8     = "Any SP covered by CHAMPUS, etc, last mo"
        HFB9     = "Covered by CHAMPUS/VA/military last mo"
        HFB10    = "Any SP cov by other health insur last mo"
        HFB11    = "Covered by other health insur last month"
        HFB11A   = "Any plan cover any hospital expenses"
        HFB11B   = "Any plan cover routine doctor's care"
        HFB11C   = "Any plan cover dental care (phase 2)"
        HFB11D   = "Any plan from employer or union (phase2)"
        HFB11E   = "Covered plan pays for operations (ph 1)"
        HFB12    = "Refused/limited insur, poor health (ph2)"
        HFB13    = "Insurance coverage check item"
        HFB14AB  = "No insurance: unemployed or related(ph1)"
        HFB14AC  = "No insur: poor health, illness, age(ph1)"
        HFB14AD  = "No insurance: can't afford (phase 1)"
        HFB14AE  = "No insur: dissatisfied w/ previous (ph1)"
        HFB14AF  = "No insurance: don't believe in (phase 1)"
        HFB14AG  = "No insurance: healthy, no need (phase 1)"
        HFB14AI  = "No insurance: some other reason(phase 1)"
        HFB14BA  = "No insur: refused for health reason(ph2)"
        HFB14BB  = "No insur: not employed,can't afford(ph2)"
        HFB14BC  = "No insur: not employed,not continue(ph2)"
        HFB14BD  = "No insur: employer does not offer (ph 2)"
        HFB14BE  = "No insur:emplyr offers,not eligible(ph2)"
        HFB14BF  = "No insur:emplyr offers,can't afford(ph2)"
        HFB14BG  = "No insur:no believe/not get/no need(ph2)"
        HFB14BH  = "No insurance:some other reason (phase 2)"
        HFB16A   = "Main reason not covered (phase 1)"
        HFB16B   = "Main reason not covered (phase 2)"
        HFB17    = "Insurance that pays any dental (phase 1)"
        HFC1     = "Age 17+ years check item"
        HFC2S    = "Mother's weight calculated in pounds"
        HFC3S    = "Mother's height calculated in inches"
        HFC4S    = "Father's weight calculated in pounds"
        HFC5S    = "Father's height calculated in inches"
        HFC6A    = "Parent high blood pres/stroke before 50"
        HFC6A1   = "Which parent, high blood pres/stroke"
        HFC6B    = "Parent heart attack/angina before 50"
        HFC6B1   = "Which parent, heart attack/angina"
        HFC6C    = "Parent high blood cholesterol at any age"
        HFC6C1   = "Which parent, high blood cholesterol"
        HFC6D    = "Parent asthma or hay fever at any age"
        HFC6D1   = "Which parent, asthma or hay fever"
        HFC6E    = "Parent diabetes at any age"
        HFC6E1   = "Which parent, diabetes"
        HFC7S    = "How long at address calculated in weeks"
        HFC8S    = "How long in city/town/area calc in weeks"
        HFC9     = "How many times moved"
        HFC10    = "Country mother born"
        HFC11    = "Country father born"
        HFD1     = "Head of family check item"
        HFD2     = "Work at job during past 2 weeks"
        HFD3     = "Had job/business during last 2 weeks"
        HFD4     = "Looking for work or on layoff"
        HFD5     = "Which, looking for work or on layoff"
        HFD9R    = "What kind of business or industry"
        HFD10R   = "What kind of work was person doing"
        HFD12    = "Class of worker"
        HFE1     = "When house/structure originally built"
        HFE2     = "How many rooms are in this home"
        HFE3     = "How long family lived at address - years"
        HFE4     = "Is home drinking water bottled or tap"
        HFE5     = "What is source of your home tap water"
        HFE6     = "Water softening or conditioning system"
        HFE7     = "Do any pets live in this home"
        HFE8A    = "Pet lives here - a dog"
        HFE8B    = "Pet lives here - a cat"
        HFE8C    = "Pet lives here - a bird"
        HFE8D    = "Pet lives here - a fish"
        HFE8E    = "Pet lives here - other pet"
        HFE9     = "Was forced air heat used in past 12 mo"
        HFE10    = "Furnace fueled by oil, gas, elect, other"
        HFE11    = "Was space heater used in past 12 months"
        HFE12    = "Space htr fueled by elect, oil,gas,other"
        HFE13    = "Was wood stove used in past 12 months"
        HFE14    = "Was fireplace used in past 12 months"
        HFE15    = "Is gas stove or oven used for cooking"
        HFE16    = "Is exhaust fan near this stove"
        HFE17    = "How often is exhaust fan used"
        HFE18    = "Was stove/oven used to heat, past 12 mo"
        HFF1     = "Anyone living here smoke cigs in home"
        HFF2R    = "# persons who smoke cigarettes in home"
        HFF3A    = "Cigarettes per day person 1 smokes"
        HFF3B    = "Cigarettes per day person 2 smokes"
        HFF3C    = "Cigarettes per day person 3 smokes"
        HFF3D    = "Cigarettes per day person 4 smokes"
        HFF3E    = "Cigarettes per day person 5 smokes"
        HFF3F    = "Cigarettes per day person 6 smokes"
        HFF4     = "Do you have enough food to eat"
        HFF5     = "# days had no food/money in past month"
        HFF6A    = "Reason no food: transportation problems"
        HFF6B    = "Reason no food: no working appliances"
        HFF6C    = "Reason no food: no money/food stamps/WIC"
        HFF6D    = "Reason no food: other reason"
        HFF7     = "Cut meal size, no money/food, past month"
        HFF8     = "Cut child's meal size, no money, past mo"
        HFF9     = "Any receive benefits from WIC in last mo"
        HFF10    = "Any receive food stamps in last 12 month"
        HFF11    = "Any receive food stamps at present time"
        HFF12A   = "Any receive employment income,last month"
        HFF12B   = "Receive employment income in last month"
        HFF13A   = "Anyone receive SS/RR pay in last month"
        HFF13B   = "Receive SS/RR pay in last month"
        HFF13DA  = "Reason getting SS/RR (phase 1)"
        HFF13DB  = "Reason getting SS/RR (phase 2)"
        HFF13E   = "Another reason getting SS (phase 1)"
        HFF14A   = "Any receive SSI pay, Federal, last month"
        HFF14B   = "Receive SSI pay, Federal, in last month"
        HFF14D   = "Recv separate SSI,welfare,past 4 mo(ph1)"
        HFF15A   = "Any receive other pension/disabl,last mo"
        HFF15B   = "Receive other pension/disability,last mo"
        HFF16A   = "Any receive public asst/welfare, last mo"
        HFF16B   = "Receive public assist/welfare, last mo"
        HFF16D   = "Anyone receive AFDC/ADC in last month"
        HFF16E   = "Receive AFDC/ADC in last month"
        HFF17A   = "Anyone receive other income, last month"
        HFF17B   = "Receive other income in last month"
        HFF18    = "Total family 12 month income < $20,000"
        HFF19R   = "Total family 12 month income group (ph1)"
        HFF20R   = "Total family income, last mo, group(ph1)"
        HFHSEQN  = "Family reference person sequence number"
        HFHAGER  = "Family reference person age - years"
        HFHSEX   = "Family reference person sex"
        HFHFIPCR = "Family reference person birthplace"
        HFHEDUCR = "Family refer person high grade completed"
        HFHEMPL  = "Family refer person employed, past 2 wks"
        HFHMRST  = "Family reference person marital status"
        HFHMLSV  = "Family reference person military service"
        HFRELR   = "Respondent relationship to refer person"
        HFAGERR  = "Respondent age in years"
        HYINTVR  = "Interviewer number"
        HYLANG   = "Language of interview"
        HYA1     = "Check item. Refer to age of SP"
        HYA2     = "Age of biological mom when SP was born"
        HYA3     = "Did mother smoke while pregnant with SP"
        HYA4     = "Did mom quit smoking when pregnant w/SP"
        HYA5     = "Month mom stopped smoking when pregnant"
        HYA6     = "Did SP receive newborn intensive care..."
        HYA6A    = "How many days of post-natal care"
        HYA7S    = "SP weight at birth - grams"
        HYA8     = "Did SP weigh more or less than 5-1/2 lbs"
        HYA9     = "Did SP weigh more or less than 9 pounds"
        HYA9R    = "How much did SP weigh at birth (recode)"
        HYB1     = "Check item. Refer to age of SP"
        HYB2     = "Was SP ever breastfed or fed breastmilk"
        HYB3S    = "Age first fed formula, juice, etc - days"
        HYB4S    = "Age when first fed formula daily - days"
        HYB5S    = "Age when stopped breastmilk - days"
        HYB6S    = "Age when first fed formula daily - days"
        HYB7S    = "Age when stopped drinking formula - days"
        HYB8S    = "Age when first fed milk daily - days"
        HYB9     = "What type of milk was SP first fed daily"
        HYB10S   = "Age start to eat solid food daily - days"
        HYB11    = "Has SP ever used a baby bottle"
        HYB12S   = "Age stopped using baby bottle - months"
        HYB13    = "Check item. Refer to age of SP"
        HYB14    = "How often SP eats breakfast:some...never"
        HYB15    = "Past 12mo,changed eat habits to lose lbs"
        HYB16    = "Past 12 mo,changed eat habits for health"
        HYB17A   = "Medical reason to change eating: obesity"
        HYB17B   = "Medical reason to change eating: high BP"
        HYB17C   = "Med reason to change eating: cholesterol"
        HYB17D   = "Medical reason to change eating: allergy"
        HYB17E   = "Medical reason to change eating:diabetes"
        HYB17F   = "Medical reason to change eating: other"
        HYB17I   = "Med reason change eating:formula related"
        HYB17J   = "Med reason change eat: gastro/intestinal"
        HYB17K   = "Med reason to change eating: infections"
        HYB17L   = "Med reason to change eating: nutrition"
        HYB18S   = "How tall/long is SP without shoes-inches"
        HYB19S   = "How much does SP weigh w/out clothes-lbs"
        HYB20    = "SP over/underweight or right weight"
        HYC1     = "Check item. Refer to age of SP"
        HYC2     = "Check item. Age today - months"
        HYC3     = "When on stomach, SP lift head for moment"
        HYC4     = "When on stomach, turn head side to side"
        HYC5     = "Have eyes ever followed a moving object"
        HYC6     = "Eyes followed moving object side to side"
        HYC7     = "When on stomach,SP raised head and chest"
        HYC8     = "Has SP ever turned head around to look"
        HYC9     = "On back, SP held head stiff as pulled up"
        HYC10    = "Ever laughed w/out being tickled,touched"
        HYC11    = "Ever held moderate size object in 1 hand"
        HYC12    = "Ever rolled over on own on purpose"
        HYC13    = "Ever looked around w/ eyes for lost toy"
        HYC14    = "Ever smiled when talked to & not touched"
        HYC15    = "Ever enjoy looking in mirror at self"
        HYC16    = "Ever pick up object w/thumb,first finger"
        HYC17    = "Ever sat alone with no help/little help"
        HYC18    = "Ever said recognizable word, mama, dada"
        HYC19    = "Knows object name if somebody names them"
        HYC20    = "Ever walked 2 steps with one hand held"
        HYC21    = "Ever sat 10 minutes without any support"
        HYC22    = "Ever crawled when left lying on stomach"
        HYC23    = "Ever pulled from sit to stand on own"
        HYC24    = "Ever waved goodbye without help"
        HYC25    = "Ever pulled self to standing w/out help"
        HYC26    = "Stood alone 10+ seconds w/out holding on"
        HYC27    = "Ever walked 2 steps w/out holding on"
        HYC28    = "Ever show want something by pointing,etc"
        HYC29    = "Ever said the name of a familiar object"
        HYC30    = "Ever crawled up at least 2 steps"
        HYC31    = "Ever said 2 words besides mama or dada"
        HYC32    = "Let one know pants wet without crying"
        HYC33    = "Ever walk up 2 steps with one hand held"
        HYC34    = "Has SP ever run"
        HYC35    = "Ever made a line with crayon or pencil"
        HYC36    = "Ever fed self w/ spoon,fork w/out spill"
        HYC37    = "Ever spoke partial sentence of 3+ words"
        HYC38    = "Ever said first & last name without help"
        HYC39    = "Ever walk up stairs without holding rail"
        HYC40    = "Ever counted 3 objects correctly"
        HYC41    = "Walk up stairs, no help, 1 foot per step"
        HYC42    = "Does SP know own age and sex"
        HYC43    = "Ever said the names of at least 4 colors"
        HYC44    = "Ever pedaled a tricycle at least 40 feet"
        HYC45    = "Ever done a somersault without help"
        HYC46    = "Ever washed, dried hands without help..."
        HYC47    = "Ever dressed self without help ..."
        HYC48    = "Has SP ever gone to the toilet alone"
        HYC49    = "Has SP ever counted out loud up to 10"
        HYC50    = "Ever draw person w/ 2 parts besides head"
        HYD1     = "Is health in general excellent, ... poor"
        HYD2     = "Go to particular place for health care"
        HYD3     = "Is there one particular doctor SP sees"
        HYD4     = "How long since last saw doctor about SP"
        HYD5     = "Since born,# times SP stayed in hospital"
        HYD6     = "Check item. Refer to age of SP"
        HYD7     = "Able to take part in SP age activities"
        HYD8     = "Limited in activities by health problem"
        HYD9     = "Does health problem keep SP from school"
        HYD10    = "Attend special school because of health"
        HYD11    = "Need special school because of health"
        HYD12S   = "# months ago health problem noticed"
        HYE1A    = "Doctor ever say SP had rheumatic fever"
        HYE1B    = "Doctor ever say epilepsy/fit/convulsion"
        HYE1C    = "Doctor ever say SP had cerebral palsy"
        HYE1D    = "Doctor ever say had mental retardation"
        HYE1E    = "Doctor say had arm muscle weak/paralysis"
        HYE1F    = "Doctor say had leg muscle weak/paralysis"
        HYE1G    = "Doctor ever say SP had asthma"
        HYE1H    = "Doctor ever say had chronic bronchitis"
        HYE1I    = "Doctor ever say SP had hayfever"
        HYE2AS   = "Age first had rheumatic fever - months"
        HYE2BS   = "Age when first had epilepsy/fit - months"
        HYE2ES   = "Age first had arm weak/paralysis -months"
        HYE2FS   = "Age first had leg weak/paralysis -months"
        HYE2GS   = "Age when first had asthma - months"
        HYE2HS   = "Age first had chronic bronchitis -months"
        HYE2IS   = "Age when first had hayfever - months"
        HYE3A    = "Does SP still have rheumatic fever..."
        HYE3B    = "SP still have epilepsy/fit/convulsion"
        HYE3E    = "Does SP still have arm weak or paralysis"
        HYE3F    = "Does SP still have leg weak or paralysis"
        HYE3G    = "Does SP still have asthma"
        HYE3H    = "Does SP still have chronic bronchitis"
        HYE3I    = "Does SP still have hayfever"
        HYE4A    = "Ever treated by doctor for rheumatic ..."
        HYE4B    = "Ever treated by doctor for epilepsy/fit"
        HYE4G    = "Ever treated by doctor for asthma"
        HYE4H    = "Ever treat by doctor: chronic bronchitis"
        HYE4I    = "Ever treated by doctor for hayfever"
        HYE5     = "Check item. Refer to age of SP"
        HYE6A    = "Doctor ever say hypertension/HBP - qty"
        HYE6B    = "Doc ever say high blood cholesterol-unit"
        HYE7AS   = "Age first had hypertension/HBP - months"
        HYE7BS   = "Age first had high blood cholesterol -mo"
        HYE8A    = "Does SP still have hypertension/high BP"
        HYE8B    = "Still have high blood cholesterol"
        HYE9A    = "Doctor ever treat hypertension/high BP"
        HYE9B    = "Doctor ever treat high blood cholesterol"
        HYE10    = "SP ever see psychologist...about problem"
        HYE11    = "Past 12 mo, taken RX drugs for behavior"
        HYE12    = "Past 12 mo, had headache: never...always"
        HYE13    = "Past 12 mo, stomach ache: never...always"
        HYE14    = "Any speech defect: stutter,stammer,lisp"
        HYE15    = "Ever had anemia (tired or low blood)"
        HYE16    = "Ever been tested for lead poisoning"
        HYE17S   = "How long ago SP tested for lead - months"
        HYE18    = "Did result indicate lead high/poisoning"
        HYE19    = "Ever treated in hospital for lead poison"
        HYE20S   = "How long ago SP treated for lead -months"
        HYE21    = "Is immunization record available to see"
        HYE22    = "Ever received a DPT or tetanus shot"
        HYE23S   = "How long ago last DPT/tetanus shot - mo"
        HYE24    = "Past 12 mo, had accident, injury, poison"
        HYE24A   = "Past 12 mos, # times SP had accident..."
        HYF1     = "Check item.  Refer to age of SP"
        HYF2     = "Describe natural teeth: excellent...poor"
        HYF3A    = "Dental care SP needs now:fillings/crowns"
        HYF3B    = "Dental care SP needs now: teeth pulled"
        HYF3C    = "Dental care SP needs now: gum treatment"
        HYF3D    = "Dental care SP needs now: denture work"
        HYF3E    = "Dental care SP needs now: relief of pain"
        HYF3F    = "Dental care needs now:improve appearance"
        HYF3G    = "Dental care SP needs now: other"
        HYF3I    = "Dental care SP needs now: nothing"
        HYF3K    = "Dental care SP needs now: cleaning"
        HYF3L    = "Type of dental care needed now: checkup"
        HYF4S    = "How long ago was last dental visit -days"
        HYF5     = "How often does SP go to dentist/hygenist"
        HYF6     = "Check item.  Refer to age of SP"
        HYF7     = "Ever received orthodontic treatment"
        HYF8     = "Age started recent orthodontic treatment"
        HYF9     = "Ever had cold sores in past 12 months"
        HYF10    = "Had canker or mouth sores in past 12 mo"
        HYG1     = "Check item. Refer to age of SP"
        HYG2     = "Cough on most days,3+ consec mos in year"
        HYG3     = "How many years has SP had this cough"
        HYG4     = "Bring up phlegm,3+ consecutive mos in yr"
        HYG5     = "How many years had trouble with phlegm"
        HYG6     = "Had problems with coughing in past 12 mo"
        HYG7     = "# episodes of cough in past 12 months"
        HYG8     = "Had wheezing/whistle in chest,past 12 mo"
        HYG9     = "# episodes of wheezing in past 12 months"
        HYG10    = "# times in hospital, wheezing, past 12mo"
        HYG11    = "# times to ER for wheezing in past 12 mo"
        HYG12    = "Chest sound wheezy when not have cold"
        HYG13A   = "Had stuffy,itchy,runny nose, past 12 mo"
        HYG13B   = "Had watery, itchy eyes in past 12 months"
        HYG14    = "# episodes itchy... nose/eyes past 12 mo"
        HYG15    = "Check item. Refer to G8, G12, and G13"
        HYG16A   = "Symptoms brought on by exercise/cold air"
        HYG16B   = "Symptoms brought on by animals"
        HYG16C   = "Symptoms brought on by house dust"
        HYG16D   = "Symptoms brought on by pollen"
        HYG17A   = "Month pollen symptoms worse: all months"
        HYG17B   = "Month pollen symptoms worse: January"
        HYG17C   = "Month pollen symptoms worse: February"
        HYG17D   = "Month pollen symptoms worse: March"
        HYG17E   = "Month pollen symptoms worse: April"
        HYG17F   = "Month pollen symptoms worse: May"
        HYG17G   = "Month pollen symptoms worse: June"
        HYG17H   = "Month pollen symptoms worse: July"
        HYG17I   = "Month pollen symptoms worse: August"
        HYG17J   = "Month pollen symptoms worse: September"
        HYG17K   = "Month pollen symptoms worse: October"
        HYG17L   = "Month pollen symptoms worse: November"
        HYG17M   = "Month pollen symptoms worse: December"
        HYG18A   = "Had severe reaction after insect sting"
        HYG18B   = "Ever had severe reaction after eating"
        HYG19    = "Severe reaction after allergy shot/test"
        HYG20    = "Ever given up/avoid pet due to allergies"
        HYG21A   = "Had colds or flu in past 12 months"
        HYG21B   = "Had sinusitis/sinus probs in past 12 mo"
        HYG21C   = "Had pneumonia in past 12 months"
        HYG22A   = "# episodes of colds or flu in past 12 mo"
        HYG22B   = "# episodes of sinusitis... in past 12 mo"
        HYG22C   = "# episodes of pneumonia in past 12 month"
        HYH1     = "Check item. Refer to age of SP"
        HYH2     = "Trouble seeing, 1/both eyes, w/glasses"
        HYH3     = "Does SP use eyeglasses or contacts"
        HYH4     = "When was last time SP had vision tested"
        HYH5     = "Did SP ever have ear infection/earache"
        HYH6     = "# times SP had ear infection or earache"
        HYH7S    = "Age had first earache/infection - months"
        HYH8     = "Treated by doctor for earache/infection"
        HYH9     = "Doctor ever treat ear infection w/tubes"
        HYH10    = "Had trouble hearing with 1 or both ears"
        HYH11    = "Still have trouble hearing w/1,both ears"
        HYH12    = "Does SP use a hearing aid"
        HYH13    = "How long ago SP had last hearing test"
        HYJ1     = "Before age 4, attend day care w/ 6+ kids"
        HYJ2     = "Ever attend day care 10+ hours per week"
        HYJ3S    = "Before age 4, # months attended day care"
        HYJ4     = "Check item.  Refer to age of SP"
        HYJ5     = "Has SP ever attended school"
        HYJ6A    = "Why SP never attended school: too young"
        HYJ6B    = "Why never attended school:health problem"
        HYJ6C    = "Why never attend school: need child home"
        HYJ6D    = "Why never attended school: other"
        HYJ7     = "Is SP now going to school or on vacation"
        HYJ8     = "What grade is SP now in/will be in"
        HYJ9     = "School serve fixed price full breakfast"
        HYJ10    = "# times per week eat breakfast at school"
        HYJ11    = "Does school serve lunch with fixed price"
        HYJ12    = "# times per week SP eats lunch at school"
        HYJ13    = "Why did SP stop going to school"
        HYJ14    = "Past 12 mos, # days absent from school"
        HYJ15    = "Ever skip any grades for any reason"
        HYJ16    = "Ever repeated any grades for any reason"
        HYJ17A   = "What grade did SP repeat: kindergarten"
        HYJ17B   = "What grade did SP repeat: first grade"
        HYJ17C   = "What grade did SP repeat: second grade"
        HYJ17D   = "What grade did SP repeat: third grade"
        HYJ17E   = "What grade did SP repeat: fourth grade"
        HYJ17F   = "What grade did SP repeat: fifth grade"
        HYJ17G   = "What grade did SP repeat: sixth grade"
        HYJ17H   = "What grade did SP repeat: seventh grade"
        HYJ17I   = "What grade did SP repeat: eighth grade"
        HYJ17J   = "What grade did SP repeat: ninth grade"
        HYJ17K   = "What grade did SP repeat: tenth grade"
        HYJ17L   = "What grade did SP repeat: eleventh grade"
        HYJ17M   = "What grade did SP repeat: twelfth grade"
        HYJ18A   = "Reason repeated grade: academic failure"
        HYJ18B   = "Reason repeated grade:immature/too young"
        HYJ18C   = "Reason repeated grade: frequently absent"
        HYJ18D   = "Reason repeat:move into difficult school"
        HYJ18E   = "Reason repeated grade: other"
        HYJ18G   = "Reason repeated grade: language problem"
        HYJ18H   = "Reason repeat:learning/behavior problems"
        HYJ18I   = "Reason repeated grade: health problem"
        HYJ18J   = "Reason repeat grade:hearing/vision prob"
        HYJ18K   = "Reason repeated grade: relocation prob"
        HYJ19    = "Ever been suspended, excluded, expelled"
        HYJ20    = "# times suspended, excluded, or expelled"
        HYJ21    = "Check item.  Refer to age of SP"
        HYJ22    = "Avg hours/week SP works during school yr"
        HYJ23    = "# hours SP watched TV yesterday"
        HYJ24    = "How many good friends does SP have"
        HYJ25    = "# SP friends you know by sight:all...few"
        HYJ26    = "When meeting new friends, is SP shy ..."
        HYJ27    = "How well does SP get along w/ other kids"
        HYJ28    = "Language SP mainly speaks at home now"
        HYJ29    = "Language SP mainly speaks at school"
        HYJ30    = "Language SP's parents speak at home now"
        HYK1A    = "Taken vitamins/minerals in past month"
        HYK1B    = "Taken prescriptn medicines in past month"
        HYK2A    = "How many vitamins/minerals taken"
        HYK2B    = "How many prescription medicines taken"
        HYK3CG   = "Certainty index code-1st"
        HYK3DG   = "Product class-1st"
        HYK6SG   = "How often did -- take in past month-1st"
        HYK8SG   = "How long been taking (month)-1st"
        HYK3CH   = "Certainty index code-2nd"
        HYK3DH   = "Product class-2nd"
        HYK6SH   = "How often did -- take in past month-2nd"
        HYK8SH   = "How long been taking (month)-2nd"
        HYK3CI   = "Certainty index code-3rd"
        HYK3DI   = "Product class-3rd"
        HYK6SI   = "How often did -- take in past month-3rd"
        HYK8SI   = "How long been taking (month)-3rd"
        HYK3CJ   = "Certainty index code-4th"
        HYK3DJ   = "Product class-4th"
        HYK6SJ   = "How often did -- take in past month-4th"
        HYK8SJ   = "How long been taking (month)-4th"
        HYK3CK   = "Certainty index code-5th"
        HYK3DK   = "Product class-5th"
        HYK6SK   = "How often did -- take in past month-5th"
        HYK8SK   = "How long been taking (month)-5th"
        HYK3CL   = "Certainty index code-6th"
        HYK3DL   = "Product class-6th"
        HYK6SL   = "How often did -- take in past month-6th"
        HYK8SL   = "How long been taking (month)-6th"
        HYK3CM   = "Certainty index code-7th"
        HYK3DM   = "Product class-7th"
        HYK6SM   = "How often did -- take in past month-7th"
        HYK8SM   = "How long been taking (month)-7th"
        HYK3CN   = "Certainty index code-8th"
        HYK3DN   = "Product class-8th"
        HYK6SN   = "How often did -- take in past month-8th"
        HYK8SN   = "How long been taking (month)-8th"
        HYK3CO   = "Certainty index code-9th"
        HYK3DO   = "Product class-9th"
        HYK6SO   = "How often did -- take in past month-9th"
        HYK8SO   = "How long been taking (month)-9th"
        HYK3CP   = "Certainty index code-10th"
        HYK3DP   = "Product class-10th"
        HYK6SP   = "How often did -- take in past month-10th"
        HYK8SP   = "How long been taking (month)-10th"
        HYK9DG   = "Primary drug class code-1st"
        HYK9EG   = "Secondary drug class code-1st"
        HYK9FG   = "Tertiary drug class code-1st"
        HYK11AG  = "ICD-9-CM code-1st"
        HYK12SG  = "For how long been taking (days)-1st"
        HYK9DH   = "Primary drug class code-2nd"
        HYK9EH   = "Secondary drug class code-2nd"
        HYK9FH   = "Tertiary drug class code-2nd"
        HYK11AH  = "ICD-9-CM code-2nd"
        HYK12SH  = "For how long been taking (days)-2nd"
        HYK9DI   = "Primary drug class code-3rd"
        HYK9EI   = "Secondary drug class code-3rd"
        HYK9FI   = "Tertiary drug class code-3rd"
        HYK11AI  = "ICD-9-CM code-3rd"
        HYK12SI  = "For how long been taking (days)-3rd"
        HYK9DJ   = "Primary drug class code-4th"
        HYK9EJ   = "Secondary drug class code-4th"
        HYK9FJ   = "Tertiary drug class code-4th"
        HYK11AJ  = "ICD-9-CM code-4th"
        HYK12SJ  = "For how long been taking (days)-4th"
        HYK9DK   = "Primary drug class code-5th"
        HYK9EK   = "Secondary drug class code-5th"
        HYK9FK   = "Tertiary drug class code-5th"
        HYK11AK  = "ICD-9-CM code-5th"
        HYK12SK  = "For how long been taking (days)-5th"
        HYK9DL   = "Primary drug class code-6th"
        HYK9EL   = "Secondary drug class code-6th"
        HYK9FL   = "Tertiary drug class code-6th"
        HYK11AL  = "ICD-9-CM code-6th"
        HYK12SL  = "For how long been taking (days)-6th"
        HYK9DM   = "Primary drug class code-7th"
        HYK9EM   = "Secondary drug class code-7th"
        HYK9FM   = "Tertiary drug class code-7th"
        HYK11AM  = "ICD-9-CM code-7th"
        HYK12SM  = "For how long been taking (days)-7th"
        HYK9DN   = "Primary drug class code-8th"
        HYK9EN   = "Secondary drug class code-8th"
        HYK9FN   = "Tertiary drug class code-8th"
        HYK11AN  = "ICD-9-CM code-8th"
        HYK12SN  = "For how long been taking (days)-8th"
        HYK9DO   = "Primary drug class code-9th"
        HYK9EO   = "Secondary drug class code-9th"
        HYK9FO   = "Tertiary drug class code-9th"
        HYK11AO  = "ICD-9-CM code-9th"
        HYK12SO  = "For how long been taking (days)-9th"
        HYM1     = "Main respondents relationship to SP"
        HYM2     = "Was SP present during any of interview"
        HYM3     = "Quality of interview"
      ;

