    FILENAME EXAM "D:\EXAM\DAT\EXAM.DAT" LRECL=6235;
    *** LRECL includes 2 positions for CRLF, assuming use of PC SAS;

    DATA WORK;
      INFILE EXAM MISSOVER;

      LENGTH
        SEQN      7
        DMPFSEQ   5
        DMPSTAT   3
        DMARETHN  3
        DMARACER  3
        DMAETHNR  3
        HSSEX     3
        HSAGEIR   8
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
        HYAITMO   4
        MXPLANG   3
        MXPSESSR  3
        MXPTIDW   3
        MXPAXTMR  4
        HXPTIDW   3
        HXPAXTMR  4
        HXPSESSR  3
        PEP1      3
        PEP1A1    3
        PEP1A2    3
        PEP2      3
        PEP2A     3
        PEP2B     3
        PEP3A     3
        PEP3A1A   3
        PEP3A1B   3
        PEP3A2    3
        PEP3B1    3
        PEP3LARM  3
        PEP3RARM  3
        PEP3BFL1  3
        PEP3BFL2  3
        PEP3BFL3  3
        PEP3BFL4  3
        PEP3BFL5  3
        PEP3BFR1  3
        PEP3BFR2  3
        PEP3BFR3  3
        PEP3BFR4  3
        PEP3BFR5  3
        PEP3B2    3
        PEP3LLEG  3
        PEP3RLEG  3
        PEP3B2TR  3
        PEP3B2TL  3
        PEP4A     3
        PEP4A1    3
        PEP4A2    3
        PEP4A3    3
        PEP4CMC   3
        PEP4CMCC  3
        PEP4CMCT  3
        PEP4CMCS  3
        PEP4CMCP  3
        PEP4B     3
        PEP4BTR1  3
        PEP4BTR2  3
        PEP4BTR3  3
        PEP4BTR4  3
        PEP4BTR5  3
        PEP4BTL1  3
        PEP4BTL2  3
        PEP4BTL3  3
        PEP4BTL4  3
        PEP4BTL5  3
        PEP4BSR1  3
        PEP4BSR2  3
        PEP4BSR3  3
        PEP4BSR4  3
        PEP4BSR5  3
        PEP4BSL1  3
        PEP4BSL2  3
        PEP4BSL3  3
        PEP4BSL4  3
        PEP4BSL5  3
        PEP4BPR1  3
        PEP4BPR2  3
        PEP4BPR3  3
        PEP4BPR4  3
        PEP4BPR5  3
        PEP4BPL1  3
        PEP4BPL2  3
        PEP4BPL3  3
        PEP4BPL4  3
        PEP4BPL5  3
        PEP4CTR2  3
        PEP4CTR3  3
        PEP4CTR4  3
        PEP4CTR5  3
        PEP4CTL2  3
        PEP4CTL3  3
        PEP4CTL4  3
        PEP4CTL5  3
        PEP4CSR2  3
        PEP4CSR3  3
        PEP4CSR4  3
        PEP4CSR5  3
        PEP4CSL2  3
        PEP4CSL3  3
        PEP4CSL4  3
        PEP4CSL5  3
        PEP4CPR2  3
        PEP4CPR3  3
        PEP4CPR4  3
        PEP4CPR5  3
        PEP4CPL2  3
        PEP4CPL3  3
        PEP4CPL4  3
        PEP4CPL5  3
        PEP4DTR1  3
        PEP4DTR2  3
        PEP4DTR3  3
        PEP4DTR4  3
        PEP4DTR5  3
        PEP4DTL1  3
        PEP4DTL2  3
        PEP4DTL3  3
        PEP4DTL4  3
        PEP4DTL5  3
        PEP4DSR1  3
        PEP4DSR2  3
        PEP4DSR3  3
        PEP4DSR4  3
        PEP4DSR5  3
        PEP4DSL1  3
        PEP4DSL2  3
        PEP4DSL3  3
        PEP4DSL4  3
        PEP4DSL5  3
        PEP4DPR1  3
        PEP4DPR2  3
        PEP4DPR3  3
        PEP4DPR4  3
        PEP4DPR5  3
        PEP4DPL1  3
        PEP4DPL2  3
        PEP4DPL3  3
        PEP4DPL4  3
        PEP4DPL5  3
        PEP4CMCJ  3
        PEP4E1    3
        PEP4E1A   3
        PEP4E1B   3
        PEP4E1C   3
        PEP4E1D   3
        PEP4E1E   3
        PEP4E1F   3
        PEP5R     3
        PEP6A     3
        PEP6B     3
        PEP6C     3
        PEP6DR    3
        PEP6E     3
        PEP6F     3
        PEP6G1    3
        PEP6G2    3
        PEP6G3    3
        PEP6G4    3
        PEP6H1    3
        PEP6H2    3
        PEP6H3    3
        PEP6H4    3
        PEP6I1    3
        PEP6I2    3
        PEP6I3    3
        PEP6I4    3
        PEPMNK1R  3
        PEPNOK1R  3
        PEPMNK5R  3
        PEPNOK5R  3
        PEP7      3
        PEP7A1R   3
        PEP7A1L   3
        PEP7A2R   3
        PEP7A2L   3
        PEP8      3
        PEP8A     3
        PEP8B     3
        PEP9      3
        PEP9A     3
        PEP9B     3
        PEP9C     3
        PEP9D     3
        PEP9E     3
        PEP10     3
        PEP10MTR  3
        PEP10MTL  3
        PEP10MSR  3
        PEP10MSL  3
        PEP10MPR  3
        PEP10MPL  3
        PEP10ITR  3
        PEP10ITL  3
        PEP10ISR  3
        PEP10ISL  3
        PEP10IPR  3
        PEP10IPL  3
        PEP10B    3
        PEP10B1   3
        PEP10B2   3
        PEP10B3   3
        PEP10B4   3
        PEP10B5   3
        PEP10B6   3
        PEP10C    3
        PEP10C1   3
        PEP10C2   3
        PEP11A1   3
        PEP11A2   3
        PEP11B1   3
        PEP11B2   3
        PEP11B3   3
        PEP13A    3
        PEP13B    3
        PEP13C    3
        PEP13D    3
        PEP13E1A  3
        PEP13E1B  3
        PEP13E2A  3
        PEP13E2B  3
        PEP13E3A  3
        PEP13E3B  3
        PEP13E4A  3
        PEP13E4B  3
        PEP13E5A  3
        PEP13E5B  3
        PEP13F1A  3
        PEP13F1B  3
        PEPLEVEL  3
        PEPTECH   4
        BMPTECH1  4
        BMPWT     8
        BMPWTFLG  3
        BMPWTLBS  8
        BMPSRWL   4
        BMPBMI    8
        BMPHT     8
        BMPHTFLG  3
        BMPHTIN   8
        BMPRECUM  8
        BMPRECFL  3
        BMPSITHT  8
        BMPSRHIS  3
        BMPLEG    8
        BMPKNEE   8
        BMPARML   8
        BMPBIAC   8
        BMPBIIL   8
        BMPELB    8
        BMPWRIST  8
        BMPHEAD   8
        BMPARMC   8
        BMPWAIST  8
        BMPBUTTO  8
        BMPWHR    8
        BMPTHICI  8
        BMPTRI    8
        BMPSUB    8
        BMPSUP    8
        BMPTHI    8
        PEPPREG   3
        PEPPACE   3
        PEP12A1   4
        PEP12B1   4
        DRPSTAT   3
        DRPRDAY   3
        DRPRESP   3
        DRPLANG   3
        DRPIID    3
        DRPQ1     3
        DRPQ2A    3
        DRPQ3     3
        DRPQ4     3
        DRPQ5     3
        DRPQ6     3
        DRPQ7     3
        DRPQ8     3
        DRPQ9     3
        DRPQ10    3
        DRPQ11    3
        DRPQ12    3
        DRPGW     4
        DRPNWATE  4
        DRPNKCAL  4
        DRPNPROT  8
        DRPNTFAT  8
        DRPNSFAT  8
        DRPNMFAT  8
        DRPNPFAT  8
        DRPNCHOL  3
        DRPNCARB  8
        DRPNFIBE  8
        DRPNALCO  3
        DRPNVAIU  4
        DRPNVARE  4
        DRPNCARO  4
        DRPNVE    8
        DRPNVC    3
        DRPNVB1   8
        DRPNVB2   8
        DRPNNIAC  8
        DRPNVB6   8
        DRPNFOLA  4
        DRPNVB12  8
        DRPNCALC  4
        DRPNPHOS  4
        DRPNMAGN  3
        DRPNIRON  8
        DRPNZINC  8
        DRPNCOPP  8
        DRPNSODI  4
        DRPNPOTA  4
        DRPNKF    8
        DRPNKSF   8
        DRPNKMF   8
        DRPNKPF   8
        DRPNKP    8
        DRPNKC    8
        DRPNKA    8
        MPPA1     3
        MPPA2     3
        MPPA3     3
        MPPA4     3
        MPPB1     3
        MPPB2     3
        MPPB3     3
        MPPB4     3
        MPPB5     3
        MPPB6     3
        MPPB7S    4
        MPPC1     3
        MPPC2A    3
        MPPC2B    3
        MPPC2C    3
        MPPC2D    3
        MPPC2E    3
        MPPC2F    3
        MPPC2G    3
        MPPC2H    3
        MPPC2I    3
        MPPC2J    3
        MPPC2K    3
        MPPC2L    3
        MPPC2M    3
        MPPC2N    3
        MPPC2O    3
        MPPD1A    3
        MPPEXMNR  3
        DEPEXFLG  3
        DEPEXMNR  3
        DEPUQUAD  3
        DEPLQUAD  3
        DEPMEDXC  3
        DEPEDENT  3
        DEPCCFLG  3
        DEPRSFLG  3
        DEPRCFLG  3
        DEPTRFLG  3
        DEPGNFLG  3
        DEPCLFLG  3
        DEPCJFLG  3
        DEPPCFLG  3
        DEPLAFLG  3
        DEPDQFLG  3
        DEPNURSC  3
        DEPDMFS1  3
        DEPDMFS2  3
        DEPDFSP   3
        DEPDFSDC  3
        DEPDFTDC  3
        DEPDMFT1  3
        DEPDMFT2  3
        DEPCS1    3
        DEPCS2    3
        DEPCS3    3
        DEPCS4    3
        DEPCS5    3
        DEPCS6    3
        DEPCS7    3
        DEPCS8    3
        DEPCS9    3
        DEPCS10   3
        DEPCS11   3
        DEPCS12   3
        DEPCS13   3
        DEPCS14   3
        DEPCS15   3
        DEPCS16   3
        DEPCS17   3
        DEPCS18   3
        DEPCS19   3
        DEPCS20   3
        DEPCS21   3
        DEPCS22   3
        DEPCS23   3
        DEPCS24   3
        DEPCS25   3
        DEPCS26   3
        DEPCS27   3
        DEPCS28   3
        DEPCS29   3
        DEPCS30   3
        DEPCS31   3
        DEPCS32   3
        DEPCS33   3
        DEPCS34   3
        DEPCS35   3
        DEPCS36   3
        DEPCS37   3
        DEPCS38   3
        DEPCS39   3
        DEPCS40   3
        DEPCS41   3
        DEPCS42   3
        DEPCS43   3
        DEPCS44   3
        DEPCS45   3
        DEPCS46   3
        DEPCS47   3
        DEPCS48   3
        DEPCS49   3
        DEPCS50   3
        DEPCS51   3
        DEPCS52   3
        DEPCS53   3
        DEPCS54   3
        DEPCS55   3
        DEPCS56   3
        DEPCS57   3
        DEPCS58   3
        DEPCS59   3
        DEPCS60   3
        DEPCS61   3
        DEPCS62   3
        DEPCS63   3
        DEPCS64   3
        DEPCS65   3
        DEPCS66   3
        DEPCS67   3
        DEPCS68   3
        DEPCS69   3
        DEPCS70   3
        DEPCS71   3
        DEPCS72   3
        DEPCS73   3
        DEPCS74   3
        DEPCS75   3
        DEPCS76   3
        DEPCS77   3
        DEPCS78   3
        DEPCS79   3
        DEPCS80   3
        DEPCS81   3
        DEPCS82   3
        DEPCS83   3
        DEPCS84   3
        DEPCS85   3
        DEPCS86   3
        DEPCS87   3
        DEPCS88   3
        DEPCS89   3
        DEPCS90   3
        DEPCS91   3
        DEPCS92   3
        DEPCS93   3
        DEPCS94   3
        DEPCS95   3
        DEPCS96   3
        DEPCS97   3
        DEPCS98   3
        DEPCS99   3
        DEPCS100  3
        DEPCS101  3
        DEPCS102  3
        DEPCS103  3
        DEPCS104  3
        DEPCS105  3
        DEPCS106  3
        DEPCS107  3
        DEPCS108  3
        DEPCS109  3
        DEPCS110  3
        DEPCS111  3
        DEPCS112  3
        DEPCS113  3
        DEPCS114  3
        DEPCS115  3
        DEPCS116  3
        DEPCS117  3
        DEPCS118  3
        DEPCS119  3
        DEPCS120  3
        DEPCS121  3
        DEPCS122  3
        DEPCS123  3
        DEPCS124  3
        DEPCS125  3
        DEPCS126  3
        DEPCS127  3
        DEPCS128  3
        DEPCS129  3
        DEPCS130  3
        DEPCS131  3
        DEPCS132  3
        DEPCS133  3
        DEPCS134  3
        DEPCS135  3
        DEPCS136  3
        DEPCS137  3
        DEPCS138  3
        DEPCS139  3
        DEPCS140  3
        DEPCT1    3
        DEPCT2    3
        DEPCT3    3
        DEPCT4    3
        DEPCT5    3
        DEPCT6    3
        DEPCT7    3
        DEP3M1    3
        DEPCT8    3
        DEPCT9    3
        DEPCT10   3
        DEPCT11   3
        DEPCT12   3
        DEPCT13   3
        DEPCT14   3
        DEP3M2    3
        DEPCT15   3
        DEPCT16   3
        DEPCT17   3
        DEPCT18   3
        DEPCT19   3
        DEPCT20   3
        DEPCT21   3
        DEP3M3    3
        DEPCT22   3
        DEPCT23   3
        DEPCT24   3
        DEPCT25   3
        DEPCT26   3
        DEPCT27   3
        DEPCT28   3
        DEP3M4    3
        DEPSE1    3
        DEPSE2    3
        DEPSE3    3
        DEPSE4    3
        DEPSE5    3
        DEPSE6    3
        DEPSE7    3
        DEPSE8    3
        DEPSE9    3
        DEPSE10   3
        DEPSE11   3
        DEPSE12   3
        DEPSE13   3
        DEPSE14   3
        DEPSE15   3
        DEPSE16   3
        DEPSE17   3
        DEPSE18   3
        DEPSE19   3
        DEPSE20   3
        DEPSE21   3
        DEPSE22   3
        DEPSE23   3
        DEPSE24   3
        DEPSE25   3
        DEPSE26   3
        DEPSE27   3
        DEPSE28   3
        DEPRS1    3
        DEPRS2    3
        DEPRS3    3
        DEPRS4    3
        DEPRS5    3
        DEPRS6    3
        DEPRS7    3
        DEPRS8    3
        DEPRS9    3
        DEPRS10   3
        DEPRS11   3
        DEPRS12   3
        DEPRS13   3
        DEPRS14   3
        DEPRS15   3
        DEPRS16   3
        DEPRS17   3
        DEPRS18   3
        DEPRS19   3
        DEPRS20   3
        DEPRS21   3
        DEPRS22   3
        DEPRS23   3
        DEPRS24   3
        DEPRS25   3
        DEPRS26   3
        DEPRS27   3
        DEPRS28   3
        DEPRS29   3
        DEPRS30   3
        DEPRS31   3
        DEPRS32   3
        DEPRS33   3
        DEPRS34   3
        DEPRS35   3
        DEPRS36   3
        DEPRS37   3
        DEPRS38   3
        DEPRS39   3
        DEPRS40   3
        DEPRS41   3
        DEPRS42   3
        DEPRS43   3
        DEPRS44   3
        DEPRS45   3
        DEPRS46   3
        DEPRS47   3
        DEPRS48   3
        DEPRS49   3
        DEPRS50   3
        DEPRS51   3
        DEPRS52   3
        DEPRS53   3
        DEPRS54   3
        DEPRS55   3
        DEPRS56   3
        DEPRS57   3
        DEPRS58   3
        DEPRS59   3
        DEPRS60   3
        DEPRS61   3
        DEPRS62   3
        DEPRS63   3
        DEPRS64   3
        DEPRS65   3
        DEPRS66   3
        DEPRS67   3
        DEPRS68   3
        DEPRS69   3
        DEPRS70   3
        DEPRS71   3
        DEPRS72   3
        DEPRS73   3
        DEPRS74   3
        DEPRS75   3
        DEPRS76   3
        DEPRS77   3
        DEPRS78   3
        DEPRS79   3
        DEPRS80   3
        DEPRS81   3
        DEPRS82   3
        DEPRS83   3
        DEPRS84   3
        DEPRS85   3
        DEPRS86   3
        DEPRS87   3
        DEPRS88   3
        DEPRS89   3
        DEPRS90   3
        DEPRS91   3
        DEPRS92   3
        DEPRS93   3
        DEPRS94   3
        DEPRS95   3
        DEPRS96   3
        DEPRS97   3
        DEPRS98   3
        DEPRS99   3
        DEPRS100  3
        DEPRS101  3
        DEPRS102  3
        DEPRS103  3
        DEPRS104  3
        DEPRS105  3
        DEPRS106  3
        DEPRS107  3
        DEPRS108  3
        DEPRS109  3
        DEPRS110  3
        DEPRS111  3
        DEPRS112  3
        DEPUGN1   3
        DEPUGN2   3
        DEPUGN3   3
        DEPUGN4   3
        DEPUGN5   3
        DEPUGN6   3
        DEPUGN7   3
        DEPUGN8   3
        DEPUGN9   3
        DEPUGN10  3
        DEPUGN11  3
        DEPUGN12  3
        DEPUGN13  3
        DEPUGN14  3
        DEPLGN1   3
        DEPLGN2   3
        DEPLGN3   3
        DEPLGN4   3
        DEPLGN5   3
        DEPLGN6   3
        DEPLGN7   3
        DEPLGN8   3
        DEPLGN9   3
        DEPLGN10  3
        DEPLGN11  3
        DEPLGN12  3
        DEPLGN13  3
        DEPLGN14  3
        DEPUCL1   3
        DEPUCL2   3
        DEPUCL3   3
        DEPUCL4   3
        DEPUCL5   3
        DEPUCL6   3
        DEPUCL7   3
        DEPUCL8   3
        DEPUCL9   3
        DEPUCL10  3
        DEPUCL11  3
        DEPUCL12  3
        DEPUCL13  3
        DEPUCL14  3
        DEPLCL1   3
        DEPLCL2   3
        DEPLCL3   3
        DEPLCL4   3
        DEPLCL5   3
        DEPLCL6   3
        DEPLCL7   3
        DEPLCL8   3
        DEPLCL9   3
        DEPLCL10  3
        DEPLCL11  3
        DEPLCL12  3
        DEPLCL13  3
        DEPLCL14  3
        DEPUMCJ1  3
        DEPUMPC1  3
        DEPUBCJ1  3
        DEPUBPC1  3
        DEPUMCJ2  3
        DEPUMPC2  3
        DEPUBCJ2  3
        DEPUBPC2  3
        DEPUMCJ3  3
        DEPUMPC3  3
        DEPUBCJ3  3
        DEPUBPC3  3
        DEPUMCJ4  3
        DEPUMPC4  3
        DEPUBCJ4  3
        DEPUBPC4  3
        DEPUMCJ5  3
        DEPUMPC5  3
        DEPUBCJ5  3
        DEPUBPC5  3
        DEPUMCJ6  3
        DEPUMPC6  3
        DEPUBCJ6  3
        DEPUBPC6  3
        DEPUMCJ7  3
        DEPUMPC7  3
        DEPUBCJ7  3
        DEPUBPC7  3
        DEPLMCJ1  3
        DEPLMPC1  3
        DEPLBCJ1  3
        DEPLBPC1  3
        DEPLMCJ2  3
        DEPLMPC2  3
        DEPLBCJ2  3
        DEPLBPC2  3
        DEPLMCJ3  3
        DEPLMPC3  3
        DEPLBCJ3  3
        DEPLBPC3  3
        DEPLMCJ4  3
        DEPLMPC4  3
        DEPLBCJ4  3
        DEPLBPC4  3
        DEPLMCJ5  3
        DEPLMPC5  3
        DEPLBCJ5  3
        DEPLBPC5  3
        DEPLMCJ6  3
        DEPLMPC6  3
        DEPLBCJ6  3
        DEPLBPC6  3
        DEPLMCJ7  3
        DEPLMPC7  3
        DEPLBCJ7  3
        DEPLBPC7  3
        DEPUMLA1  3
        DEPUBLA1  3
        DEPUMLA2  5
        DEPUBLA2  3
        DEPUMLA3  3
        DEPUBLA3  3
        DEPUMLA4  3
        DEPUBLA4  3
        DEPUMLA5  3
        DEPUBLA5  3
        DEPUMLA6  3
        DEPUBLA6  3
        DEPUMLA7  3
        DEPUBLA7  3
        DEPLMLA1  3
        DEPLBLA1  3
        DEPLMLA2  3
        DEPLBLA2  3
        DEPLMLA3  3
        DEPLBLA3  3
        DEPLMLA4  3
        DEPLBLA4  3
        DEPLMLA5  3
        DEPLBLA5  3
        DEPLMLA6  3
        DEPLBLA6  3
        DEPLMLA7  3
        DEPLBLA7  3
        DEPUB2MF  3
        DEPUB2DF  3
        DEPUM1MF  3
        DEPUM1BF  3
        DEPUM1DF  3
        DEPUM2MF  3
        DEPUM2BF  3
        DEPUM2DF  3
        DEPLM1LF  3
        DEPLM1BF  3
        DEPLM2LF  3
        DEPLM2BF  3
        DEPNUMLS  3
        DEPSTLC1 $6
        DEPSTDX1  3
        DEPSMRQ1  3
        DEPSMTK1  3
        DEPYEAS1  3
        DEPHYPH1  3
        DEPCDRQ1  3
        DEPSTXT1  3
        DEPSTLN1  3
        DEPSTWD1  3
        DEPSTHT1  3
        DEPSTMF1  3
        DEPSTCL1 $3
        DEPSTCS1  3
        DEPSTPN1  3
        DEPSTPD1  3
        DEPSTHS1  3
        DEPSTLC2 $6
        DEPSTDX2  3
        DEPSMRQ2  3
        DEPSMTK2  3
        DEPYEAS2  3
        DEPHYPH2  3
        DEPCDRQ2  3
        DEPSTXT2  3
        DEPSTLN2  3
        DEPSTWD2  3
        DEPSTHT2  3
        DEPSTMF2  3
        DEPSTCL2 $3
        DEPSTCS2  3
        DEPSTPN2  3
        DEPSTPD2  3
        DEPSTHS2  3
        DEPSTLC3 $6
        DEPSTDX3  3
        DEPSMRQ3  3
        DEPSMTK3  3
        DEPYEAS3  3
        DEPHYPH3  3
        DEPCDRQ3  3
        DEPSTXT3  3
        DEPSTLN3  3
        DEPSTWD3  3
        DEPSTHT3  3
        DEPSTMF3  3
        DEPSTCL3 $3
        DEPSTCS3  3
        DEPSTPN3  3
        DEPSTPD3  3
        DEPSTHS3  3
        DEPSTLC4 $6
        DEPSTDX4  3
        DEPSMRQ4  3
        DEPSMTK4  3
        DEPYEAS4  3
        DEPHYPH4  3
        DEPCDRQ4  3
        DEPSTXT4  3
        DEPSTLN4  3
        DEPSTWD4  3
        DEPSTHT4  3
        DEPSTMF4  3
        DEPSTCL4 $3
        DEPSTCS4  3
        DEPSTPN4  3
        DEPSTPD4  3
        DEPSTHS4  3
        DEPSTLC5 $6
        DEPSTDX5  3
        DEPSMRQ5  3
        DEPSMTK5  3
        DEPYEAS5  3
        DEPHYPH5  3
        DEPCDRQ5  3
        DEPSTXT5  3
        DEPSTLN5  3
        DEPSTWD5  3
        DEPSTHT5  3
        DEPSTMF5  3
        DEPSTCL5 $3
        DEPSTCS5  3
        DEPSTPN5  3
        DEPSTPD5  3
        DEPSTHS5  3
        DEPSTOT5 $30
        DEPSTLC6 $6
        DEPSTDX6  3
        DEPSMRQ6  3
        DEPSMTK6  3
        DEPYEAS6  3
        DEPHYPH6  3
        DEPCDRQ6  3
        DEPSTXT6  3
        DEPSTLN6  3
        DEPSTWD6  3
        DEPSTHT6  3
        DEPSTMF6  3
        DEPSTCL6 $3
        DEPSTCS6  3
        DEPSTPN6  3
        DEPSTPD6  3
        DEPSTHS6  3
        DEPSTOT6 $30
        DEPRTC1   3
        DEPRTC2   3
        DEPRTC3   3
        DEPRTC4   3
        DEPRTC5   3
        DEPRTC6   3
        DEPRTC7   3
        DEPRTC8   3
        DEPRTC9   3
        DEPRTC10  3
        DEPRTC11  3
        DEPRTC12  3
        DEPRTC13  3
        DEPRTC14  3
        DEPRTC15  3
        DEPRTC16  3
        DEPRTC17  3
        DEPRTC18  3
        DEPRTC19  3
        DEPRTC20  3
        DEPRTC21  3
        DEPRTC22  3
        DEPRTC23  3
        DEPRTC24  3
        DEPRTC25  3
        DEPRTC26  3
        DEPRTC27  3
        DEPRTC28  3
        DEPUTRA1  3
        DEPUTRA2  3
        DEPUTRA3  3
        DEPUTRA4  3
        DEPLTRA1  3
        DEPLTRA2  3
        DEPLTRA3  3
        DEPLTRA4  3
        DEPUAL1   3
        DEPUAL2   3
        DEPUAL3   3
        DEPUAL4   3
        DEPUAL5   3
        DEPLAL1   3
        DEPLAL2   3
        DEPLAL3   3
        DEPLAL4   3
        DEPLAL5   3
        DEPDIAS   3
        DEPXBITE  3
        DEPOVJET  3
        DEPOPB    3
        DEPOVB    3
        DEPDQU1   3
        DEPDQU2   3
        DEPDQU3   3
        DEPDQU4   3
        DEPDQL1   3
        DEPDQL2   3
        DEPDQL3   3
        DEPDQL4   3
        DEPUPTYP  3
        DEPUPAI   3
        DEPUPAW   3
        DEPUPARL  3
        DEPUPAS   3
        DEPUPART  3
        DEPLPTYP  3
        DEPLPAI   3
        DEPLPAW   3
        DEPLPARL  3
        DEPLPAS   3
        DEPLPART  3
        ALPQ1     3
        ALPQ2     3
        ALPQ3     3
        ALPQ4     3
        ALPQ5     3
        ALPNEGAR  3
        ALPNEGFL  3
        ALPNEGFW  3
        ALPNEGCN  3
        ALPNEGWL  3
        ALPNEGWW  3
        ALPWHIAR  3
        ALPWHIFL  3
        ALPWHIFW  3
        ALPWHICN  3
        ALPWHIWL  3
        ALPWHIWW  3
        ALPCATAR  3
        ALPCATFL  3
        ALPCATFW  3
        ALPCATCN  3
        ALPCATWL  3
        ALPCATWW  3
        ALPMITAR  3
        ALPMITFL  3
        ALPMITFW  3
        ALPMITCN  3
        ALPMITWL  3
        ALPMITWW  3
        ALPALTAR  3
        ALPALTFL  3
        ALPALTFW  3
        ALPALTCN  3
        ALPALTWL  3
        ALPALTWW  3
        ALPRYEAR  3
        ALPRYEFL  3
        ALPRYEFW  3
        ALPRYECN  3
        ALPRYEWL  3
        ALPRYEWW  3
        ALPPEAAR  3
        ALPPEAFL  3
        ALPPEAFW  3
        ALPPEACN  3
        ALPPEAWL  3
        ALPPEAWW  3
        ALPTHIAR  3
        ALPTHIFL  3
        ALPTHIFW  3
        ALPTHICN  3
        ALPTHIWL  3
        ALPTHIWW  3
        ALPCOCAR  3
        ALPCOCFL  3
        ALPCOCFW  3
        ALPCOCCN  3
        ALPCOCWL  3
        ALPCOCWW  3
        ALPBERAR  3
        ALPBERFL  3
        ALPBERFW  3
        ALPBERCN  3
        ALPBERWL  3
        ALPBERWW  3
        ALPRAGAR  3
        ALPRAGFL  3
        ALPRAGFW  3
        ALPRAGCN  3
        ALPRAGWL  3
        ALPRAGWW  3
        ALPPSCAR  3
        ALPPSCFL  3
        ALPPSCFW  3
        ALPPSCCN  3
        ALPPSCWL  3
        ALPPSCWW  3
        ALPTECH1  4
        ALPTECH2  4
        AUPA1     3
        AUPA2     3
        AUPA3     3
        AUPA4     3
        AUPA5     3
        AUPA6     3
        AUPA7     3
        AUPA8     3
        AUPA9     3
        AUPA10    3
        AUPAUDO1  4
        AUPB1A1   3
        AUPB1A2   3
        AUPB1A3   3
        AUPB1A4   3
        AUPB1A5   3
        AUPB1A6   3
        AUPB1A7   3
        AUPB1A8   3
        AUPB2A1   3
        AUPB2A2   3
        AUPB2A3   3
        AUPB2A4   3
        AUPB2A5   3
        AUPB2A6   3
        AUPB2A7   3
        AUPB2A8   3
        AUPAUDO2  4
        AUPB1C1   3
        AUPB1C2   3
        AUPB1C3   3
        AUPB1C4   3
        AUPB1C5   3
        AUPB1C6   3
        AUPB1C7   3
        AUPB1C8   3
        AUPB2C1   3
        AUPB2C2   3
        AUPB2C3   3
        AUPB2C4   3
        AUPB2C5   3
        AUPB2C6   3
        AUPB2C7   3
        AUPB2C8   3
        AUPTECH   4
        TYPCMPLL  8
        TYPCMPLR  8
        TYPPRSPL  4
        TYPPRSPR  4
        TYPVOLL   8
        TYPVOLR   8
        TYPRFXL   3
        TYPRFXR   3
        TYPC000L  8
        TYPC001L  8
        TYPC002L  8
        TYPC003L  8
        TYPC004L  8
        TYPC005L  8
        TYPC006L  8
        TYPC007L  8
        TYPC008L  8
        TYPC009L  8
        TYPC010L  8
        TYPC011L  8
        TYPC012L  8
        TYPC013L  8
        TYPC014L  8
        TYPC015L  8
        TYPC016L  8
        TYPC017L  8
        TYPC018L  8
        TYPC019L  8
        TYPC020L  8
        TYPC021L  8
        TYPC022L  8
        TYPC023L  8
        TYPC024L  8
        TYPC025L  8
        TYPC026L  8
        TYPC027L  8
        TYPC028L  8
        TYPC029L  8
        TYPC030L  8
        TYPC031L  8
        TYPC032L  8
        TYPC033L  8
        TYPC034L  8
        TYPC035L  8
        TYPC036L  8
        TYPC037L  8
        TYPC038L  8
        TYPC039L  8
        TYPC040L  8
        TYPC041L  8
        TYPC042L  8
        TYPC043L  8
        TYPC044L  8
        TYPC045L  8
        TYPC046L  8
        TYPC047L  8
        TYPC048L  8
        TYPC049L  8
        TYPC050L  8
        TYPC051L  8
        TYPC052L  8
        TYPC053L  8
        TYPC054L  8
        TYPC055L  8
        TYPC056L  8
        TYPC057L  8
        TYPC058L  8
        TYPC059L  8
        TYPC060L  8
        TYPC061L  8
        TYPC062L  8
        TYPC063L  8
        TYPC064L  8
        TYPC065L  8
        TYPC066L  8
        TYPC067L  8
        TYPC068L  8
        TYPC069L  8
        TYPC070L  8
        TYPC071L  8
        TYPC072L  8
        TYPC073L  8
        TYPC074L  8
        TYPC075L  8
        TYPC076L  8
        TYPC077L  8
        TYPC078L  8
        TYPC079L  8
        TYPC080L  8
        TYPC081L  8
        TYPC082L  8
        TYPC083L  8
        TYPC084L  8
        TYPC085L  8
        TYPC086L  8
        TYPC087L  8
        TYPC088L  8
        TYPC089L  8
        TYPC090L  8
        TYPC091L  8
        TYPC092L  8
        TYPC093L  8
        TYPC094L  8
        TYPC095L  8
        TYPC096L  8
        TYPC097L  8
        TYPC098L  8
        TYPC099L  8
        TYPC100L  8
        TYPC101L  8
        TYPC102L  8
        TYPC103L  8
        TYPC104L  8
        TYPC105L  8
        TYPC106L  8
        TYPC107L  8
        TYPC108L  8
        TYPC109L  8
        TYPC110L  8
        TYPC111L  8
        TYPC112L  8
        TYPC113L  8
        TYPC114L  8
        TYPC115L  8
        TYPC116L  8
        TYPC117L  8
        TYPC118L  8
        TYPC119L  8
        TYPC120L  8
        TYPC000R  8
        TYPC001R  8
        TYPC002R  8
        TYPC003R  8
        TYPC004R  8
        TYPC005R  8
        TYPC006R  8
        TYPC007R  8
        TYPC008R  8
        TYPC009R  8
        TYPC010R  8
        TYPC011R  8
        TYPC012R  8
        TYPC013R  8
        TYPC014R  8
        TYPC015R  8
        TYPC016R  8
        TYPC017R  8
        TYPC018R  8
        TYPC019R  8
        TYPC020R  8
        TYPC021R  8
        TYPC022R  8
        TYPC023R  8
        TYPC024R  8
        TYPC025R  8
        TYPC026R  8
        TYPC027R  8
        TYPC028R  8
        TYPC029R  8
        TYPC030R  8
        TYPC031R  8
        TYPC032R  8
        TYPC033R  8
        TYPC034R  8
        TYPC035R  8
        TYPC036R  8
        TYPC037R  8
        TYPC038R  8
        TYPC039R  8
        TYPC040R  8
        TYPC041R  8
        TYPC042R  8
        TYPC043R  8
        TYPC044R  8
        TYPC045R  8
        TYPC046R  8
        TYPC047R  8
        TYPC048R  8
        TYPC049R  8
        TYPC050R  8
        TYPC051R  8
        TYPC052R  8
        TYPC053R  8
        TYPC054R  8
        TYPC055R  8
        TYPC056R  8
        TYPC057R  8
        TYPC058R  8
        TYPC059R  8
        TYPC060R  8
        TYPC061R  8
        TYPC062R  8
        TYPC063R  8
        TYPC064R  8
        TYPC065R  8
        TYPC066R  8
        TYPC067R  8
        TYPC068R  8
        TYPC069R  8
        TYPC070R  8
        TYPC071R  8
        TYPC072R  8
        TYPC073R  8
        TYPC074R  8
        TYPC075R  8
        TYPC076R  8
        TYPC077R  8
        TYPC078R  8
        TYPC079R  8
        TYPC080R  8
        TYPC081R  8
        TYPC082R  8
        TYPC083R  8
        TYPC084R  8
        TYPC085R  8
        TYPC086R  8
        TYPC087R  8
        TYPC088R  8
        TYPC089R  8
        TYPC090R  8
        TYPC091R  8
        TYPC092R  8
        TYPC093R  8
        TYPC094R  8
        TYPC095R  8
        TYPC096R  8
        TYPC097R  8
        TYPC098R  8
        TYPC099R  8
        TYPC100R  8
        TYPC101R  8
        TYPC102R  8
        TYPC103R  8
        TYPC104R  8
        TYPC105R  8
        TYPC106R  8
        TYPC107R  8
        TYPC108R  8
        TYPC109R  8
        TYPC110R  8
        TYPC111R  8
        TYPC112R  8
        TYPC113R  8
        TYPC114R  8
        TYPC115R  8
        TYPC116R  8
        TYPC117R  8
        TYPC118R  8
        TYPC119R  8
        TYPC120R  8
        TYPTECH   4
        WWPMRSR   3
        WWPRRSR   3
        WWPMSSR   3
        WWPRSSR   3
        WWPMSCSR  3
        WWPRSCSR  3
        WWPBSCSR  3
        WWPDSCSR  3
        WWPLANG   3
        WWPTECH   4
        SPPQ1     8
        SPPQ2     8
        SPPQ3     8
        SPPQ4     8
        SPPQ5     8
        HXPEJ6A2  8
        SPPTECH1  8
        SPPTRIAL  8
        SPPPEAK   8
        SPPFEV05  8
        SPPFEV1   8
        SPPFEV3   8
        SPPFEV6   8
        SPPFVC    8
        SPPMMEF   8
        SPPTYPE   8
        SPPREPRO  8
        SPPRELIA  8
        SPPMANEU  8
        SPPTIME  $5
        SPPEXPIR  8
        SPPFEF75  8
        SPPTEMP   8
        MYPA1     3
        MYPA2     3
        MYPA3     3
        MYPB1     3
        MYPB2     3
        MYPB3     3
        MYPB4     3
        MYPB5     3
        MYPB6R    3
        MYPB7R    3
        MYPB8     3
        MYPB9S    3
        MYPB10    3
        MYPB11    3
        MYPB12    3
        MYPB13S   3
        MYPB14    3
        MYPB15    3
        MYPB16    3
        MYPB17    3
        MYPB18    3
        MYPB19    3
        MYPB20    3
        MYPB21AS  3
        MYPB21CS  3
        MYPB22A   3
        MYPB22B   3
        MYPB23    3
        MYPB24    3
        MYPB25    3
        MYPB26    3
        MYPB27A   3
        MYPB27B   3
        MYPB28    3
        MYPB29    3
        MYPC1A    3
        MYPC2     3
        MYPC3     3
        MYPC4     3
        MYPC5     3
        MYPC6     3
        MYPC7S    3
        MYPC8S    4
        MYPC9R    3
        MYPC10    3
        MYPC11    3
        MYPC12    3
        MYPC13R   3
        MYPC14    3
        MYPC15    3
        MYPC16    3
        MYPC17    3
        MYPC18    3
        MYPC19    3
        MYPC20    3
        MYPC21    3
        MYPC22    3
        MYPC23S   4
        MYPC24    3
        MYPC25    3
        MYPC26    3
        MYPC27R   3
        MYPC28    3
        MYPD1     3
        MYPD2     3
        MYPD3     3
        MYPD4     3
        MYPD5     3
        MYPE1     3
        MYPE2     3
        MYPE3     3
        MYPE4     3
        MYPE5     3
        MYPE6     3
        MYPE7A    3
        MYPE7B    3
        MYPE7C    3
        MYPE7D    3
        MYPE7E    3
        MYPE7F    3
        MYPE7G    3
        MYPE7H    3
        MYPE7I    3
        MYPE7J    3
        MYPE7K    3
        MYPF1     3
        MYPF2     3
        MYPF3S    3
        MYPF4     3
        MYPF5S    3
        MYPF6S    3
        MYPF7     3
        MYPF8     3
        MYPF9     3
        MYPF10    3
        MYPF11    3
        MYPF12    3
        MYPH1     3
        MYPH2     3
        MYPH3     3
        MYPEXMNR  3
        FFP1AS    3
        FFP1BS    3
        FFP1D1    3
        FFP1ES    3
        FFP1FS    3
        FFP1GS    3
        FFP1HS    3
        FFP1IS    3
        FFP2AS    3
        FFP2BS    3
        FFP2CS    3
        FFP2DS    3
        FFP2ES    3
        FFP2FS    3
        FFP2GS    3
        FFP2HS    3
        FFP2IS    3
        FFP2JS    3
        FFP3AS    3
        FFP3BS    3
        FFP3CS    3
        FFP3DS    3
        FFP3ES    3
        FFP3FS    3
        FFP4AS    3
        FFP4BS    3
        FFP4CS    3
        FFP4DS    3
        FFP4ES    3
        FFP4FS    3
        FFP4GS    3
        FFP4HS    3
        FFP4IS    3
        FFP4JS    3
        FFP4KS    3
        FFP4LS    3
        FFP5AS    3
        FFP5BS    3
        FFP5CS    3
        FFP5DS    3
        FFP5ES    3
        FFP5FS    3
        FFP5GS    3
        FFP5HS    3
        FFP5IS    3
        FFP5JS    3
        FFP5KS    3
        FFP5LS    3
        FFP6AS    3
        FFP6BS    3
        FFP6CS    3
        FFP6DS    3
        FFP6ES    3
        FFP6FS    3
        FFP6GS    3
        FFP6HS    3
        FFP6IS    3
        FFP6JS    3
        FFP7AS    3
        FFP7BS    3
        FFP7CS    3
        FFP8AFC   3
        FFP8AS    3
        FFP8BFC   3
        FFP8BS    3
        FFP10     3
        FFPEXMNR  3
        MQPDLANG  3
        MQPDPFLG  3
        MQPMNFLG  3
        MQPHCFLG  3
        MQPG01    3
        MQPG02    3
        MQPG03    3
        MQPG04    3
        MQPG05L   3
        MQPG0501  3
        MQPG06L   3
        MQPG0601  3
        MQPG07L   3
        MQPG0701  3
        MQPDGP1L  3
        MQPG08L   3
        MQPG0801  3
        MQPG09L   3
        MQPG0901  3
        MQPDGP2L  3
        MQPG10L   3
        MQPG1001  3
        MQPDGP3L  3
        MQPG11L   3
        MQPG1101  3
        MQPG12L   3
        MQPG1201  3
        MQPDGP4L  3
        MQPG13L   3
        MQPG1301  3
        MQPG1302  3
        MQPG1303  3
        MQPG1304  3
        MQPDGP5L  3
        MQPG14L   3
        MQPDGP6L  3
        MQPG15L   3
        MQPG1501  3
        MQPG16L   3
        MQPG1601  3
        MQPDGP7L  3
        MQPG17L   3
        MQPG18L   3
        MQPG19L   3
        MQPG20L   3
        MQPDGP8L  3
        MQPG21    3
        MQPG22    3
        MQPG23    3
        MQPG24    3
        MQPG25    3
        MQPG26    4
        MQPG27    4
        MQPG28    3
        MQPG29    3
        MQPG30    3
        MQPG31    3
        MQPG32    3
        MQPG33    3
        MQPG34    3
        MQPG35    3
        MQPG36    3
        MQPG37    3
        MQPG38    3
        MQPG39    3
        MQPG05W   3
        MQPG06W   3
        MQPG07W   3
        MQPG08W   3
        MQPG09W   3
        MQPG10W   3
        MQPG11W   3
        MQPG12W   3
        MQPG13W   3
        MQPG14W   3
        MQPG15W   3
        MQPG16W   3
        MQPG17W   3
        MQPG18W   3
        MQPG19W   3
        MQPG20W   3
        MQPG41L   3
        MQPG42L   3
        MQPG43L   3
        MQPG44L   3
        MQPG45L   3
        MQPG46L   3
        MQPG47L   3
        MQPG47EX  3
        MQPG48L   3
        MQPG49L   3
        MQPG50    3
        MQPG51    3
        MQPG52    3
        MQPG53    3
        MQPG54    3
        MQPG55    4
        MQPG56    4
        MQPG57    3
        MQPG58    3
        MQPG59    3
        MQPG60    3
        MQPG61    3
        MQPG62    3
        MQPG63    3
        MQPG64    3
        MQPG65    3
        MQPG66    3
        MQPG42W   3
        MQPG43W   3
        MQPG44W   3
        MQPG45W   3
        MQPG46W   3
        MQPG47W   3
        MQPG48W   3
        MQPG49W   3
        MQPDGP1W  3
        MQPDGP2W  3
        MQPDGP3W  3
        MQPDGP4W  3
        MQPDGP5W  3
        MQPDGP6W  3
        MQPDGP7W  3
        MQPDGP8W  3
        MQPDGPSW  3
        MQPDYSFR  3
        MQPDPSX1  3
        MQPDEP    3
        MQPFDDP   3
        MQPLDDP   3
        MQPDPSX2  3
        MQPMNG1W  3
        MQPMNG2W  3
        MQPMNG3W  3
        MQPMNG4W  3
        MQPMNG5W  3
        MQPMNG6W  3
        MQPMNG7W  3
        MQPMNGSW  3
        MQPEUFOR  3
        MQPMNSX1  3
        MQPMANIA  3
        MQPFDMN   3
        MQPLDMN   3
        MQPMNSX2  3
        MQPDEPSE  3
        MQPFDDSE  3
        MQPLDDSE  3
        MQPDEPRT  3
        MQPFDDRT  3
        MQPLDDRT  3
        MQPDYSA   3
        MQPDYSD   3
        MQPDYSTH  3
        MQPBIPOL  3
        MQPFDBI   3
        MQPLDBI   3
        MQPBIPII  3
        MQPFDBII  3
        MQPLDBII  3
        MAPA1     3
        MAPA2A    3
        MAPA2B    3
        MAPA3     3
        MAPA4     3
        MAPB1     3
        MAPB2A    3
        MAPB2B    3
        MAPB2C    3
        MAPB2D    3
        MAPB2E    3
        MAPB2F    3
        MAPC1     3
        MAPC2     3
        MAPC3     3
        MAPC4     3
        MAPC5     3
        MAPC6     3
        MAPC7     3
        MAPC8     3
        MAPD1     3
        MAPD2A    3
        MAPD2B    3
        MAPD2C    3
        MAPD2D    3
        MAPD2E    3
        MAPD2F    3
        MAPE1     3
        MAPE2     3
        MAPE3S    3
        MAPE4     3
        MAPE5S    3
        MAPE6S    3
        MAPE7     3
        MAPE8     3
        MAPE9     3
        MAPE10    3
        MAPE11    3
        MAPE12    3
        MAPE13    3
        MAPE14    3
        MAPF1     3
        MAPF2     3
        MAPF3     3
        MAPF4     3
        MAPF5     3
        MAPF6     3
        MAPF7R    3
        MAPF8     3
        MAPF9     3
        MAPF10    3
        MAPF11    3
        MAPF12    3
        MAPF12R   3
        MAPF13    3
        MAPF14    3
        MAPF15    3
        MAPF16    3
        MAPF17    3
        MAPF18S   4
        MAPF19    3
        MAPF20    3
        MAPF21    3
        MAPF22    3
        MAPF23    3
        MAPF24    3
        MAPF25    3
        MAPF26    3
        MAPF27    3
        MAPF28    3
        MAPF29    3
        MAPF30    3
        MAPF31    3
        MAPF32S   3
        MAPF33S   4
        MAPF34R   3
        MAPF34CK  3
        MAPF34A   3
        MAPF34B   3
        MAPF34CS  4
        MAPF35    3
        MAPF36    3
        MAPF37    3
        MAPF38    3
        MAPF39S   4
        MAPF40    3
        MAPF41    3
        MAPF42    3
        MAPF43S   4
        MAPF44    3
        MAPF45    3
        MAPF46    3
        MAPF47S   4
        MAPF48    3
        MAPF49    3
        MAPF50    3
        MAPF51    4
        MAPF52    3
        MAPF53    3
        MAPF54R   4
        MAPF55    4
        MAPF56    3
        MAPF57    3
        MAPH1     3
        MAPH1OS   3
        MAPH2     3
        MAPH3     3
        MAPLANG   3
        MAPEXMNR  3
        BDPTECH   4
        BDPEXFLR  3
        BDPSCAN   3
        BDPSIDE   3
        BDPFNARE  8
        BDPFNBMC  8
        BDPFNBMD  8
        BDPTRARE  8
        BDPTRBMC  8
        BDPTRBMD  8
        BDPINARE  8
        BDPINBMC  8
        BDPINBMD  8
        BDPWTARE  8
        BDPWTBMC  8
        BDPWTBMD  8
        BDPTOARE  8
        BDPTOBMC  8
        BDPTOBMD  8
        BDPK      8
        BDPD0     8
        HXPB1     3
        HXPB2A    3
        HXPB2B    3
        HXPB2C    3
        HXPB2D    3
        HXPB2E    3
        HXPB2F    3
        HXPB2G    3
        HXPB2H    3
        HXPB2I    3
        HXPB2J    3
        HXPB2K    3
        HXPB2L    3
        HXPB2M    3
        HXPB2N    3
        HXPB2O    3
        HXPD1     3
        HXPD2A    3
        HXPD2B    3
        HXPD2C    3
        HXPD2D    3
        HXPD2E    3
        HXPD2F    3
        HXPE1     3
        HXPE2     3
        HXPE3     3
        HXPE4     3
        HXPE5     3
        HXPE6     3
        HXPE7     3
        HXPE8     3
        HXPF1     3
        HXPF2A    3
        HXPF2B    3
        HXPF2C    3
        HXPF2D    3
        HXPF2E    3
        HXPF2F    3
        HXPG1     3
        HXPG2A    3
        HXPG2B    3
        HXPG3     3
        HXPG4     3
        HXPH1     3
        HXPH2     3
        HXPH3     3
        HXPH4     3
        HXPH5     3
        HXPH6     3
        HXPH7     3
        HXPH8     3
        HXPH9     3
        HXPH10    3
        HXPH11    3
        HXPH12    3
        HXPH13    3
        HXPH14    3
        HXPH15    3
        HXPH16S   4
        HXPH17S   3
        HXPH18    3
        HXPH19    3
        HXPH20    3
        HXPH21S   4
        HXPH22    3
        HXPLANG   3
        HXPEXMNR  4
        GUPQ7     3
        GUPQ8A1   3
        GUPQ8A2   3
        GUPQ8A3   3
        GUPQ8A4   3
        GUPQ8A5   3
        GUPQ8A6   3
        GUPQ18    3
        GUPQ24R   3
        GUPQ37R   3
        GUPQ38R   3
        GUPLCSTR  3
        GUPLCSZE  8
        GUPRCSTR  3
        GUPRCSZE  8
        GUPLHMGR  3
        GUPCHSZE  8
        GUPTDX1R  3
        GUPTDX2R  3
        GUPR1ID   3
        GUPR1DX1  3
        GUPR1DX2  3
        GUPR1CNF  3
        GUPR1QLT  3
        GUPR2ID   3
        GUPFDX1R  3
        GUPFDX2R  3
        GUPGBPSZ  3
        GUPTECH   4
        CNPQ01    3
        CNPQ02    3
        CNPQ03    3
        CNPQ04    3
        CNPQ05    3
        CNPQ06    3
        CNPQ07    3
        CNPQ08    3
        CNPQ09    3
        CNPQ10    3
        CNPLANG   3
        CNPTEMP   3
        CNPTECH   4
        CNPNBPH   3
        CNPRT01   4
        CNPRT02   4
        CNPRT03   4
        CNPRT04   4
        CNPRT05   4
        CNPRT06   4
        CNPRT07   4
        CNPRT08   4
        CNPRT09   4
        CNPRT10   4
        CNPRT11   4
        CNPRT12   4
        CNPRT13   4
        CNPRT14   4
        CNPRT15   4
        CNPRT16   4
        CNPRT17   4
        CNPRT18   4
        CNPRT19   4
        CNPRT20   4
        CNPRT21   4
        CNPRT22   4
        CNPRT23   4
        CNPRT24   4
        CNPRT25   4
        CNPRT26   4
        CNPRT27   4
        CNPRT28   4
        CNPRT29   4
        CNPRT30   4
        CNPRT31   4
        CNPRT32   4
        CNPRT33   4
        CNPRT34   4
        CNPRT35   4
        CNPRT36   4
        CNPRT37   4
        CNPRT38   4
        CNPRT39   4
        CNPRT40   4
        CNPRT41   4
        CNPRT42   4
        CNPRT43   4
        CNPRT44   4
        CNPRT45   4
        CNPRT46   4
        CNPRT47   4
        CNPRT48   4
        CNPRT49   4
        CNPRT50   4
        CNPMENRT  8
        CNPSDRT   8
        CNP1ERR   3
        CNP1LAT1  8
        CNP1LAT2  8
        CNP1LAT3  8
        CNP1LAT4  8
        CNP1LAT5  8
        CNP1LAT6  8
        CNP1LAT7  8
        CNP1LAT8  8
        CNP1LAT9  8
        CNP1TOTL  8
        CNPCORR1  3
        CNPCLAT1  8
        CNP2ERR   3
        CNP2LAT1  8
        CNP2LAT2  8
        CNP2LAT3  8
        CNP2LAT4  8
        CNP2LAT5  8
        CNP2LAT6  8
        CNP2LAT7  8
        CNP2LAT8  8
        CNP2LAT9  8
        CNP2TOTL  8
        CNPCORR2  3
        CNPCLAT2  8
        CNP3ERR   3
        CNP3LAT1  8
        CNP3LAT2  8
        CNP3LAT3  8
        CNP3LAT4  8
        CNP3LAT5  8
        CNP3LAT6  8
        CNP3LAT7  8
        CNP3LAT8  8
        CNP3LAT9  8
        CNP3TOTL  8
        CNPCORR3  3
        CNPCLAT3  8
        CNP4ERR   3
        CNP4LAT1  8
        CNP4LAT2  8
        CNP4LAT3  8
        CNP4LAT4  8
        CNP4LAT5  8
        CNP4LAT6  8
        CNP4LAT7  8
        CNP4LAT8  8
        CNP4LAT9  8
        CNP4TOTL  8
        CNPCORR4  3
        CNPCLAT4  8
        CNPCBEST  8
        CNPT0TRA  3
        CNP1SCOR  3
        CNP2SCOR  3
        CNP3SCOR  3
        CNP4SCOR  3
        CNP5SCOR  3
        CNP6SCOR  3
        CNP7SCOR  3
        CNP8SCOR  3
        CNPTSTOC  3
        CNPTTSCR  3
        FPPPHOTO  3
        FPP1A     3
        FPP1B     3
        FPP2      3
        FPP3      3
        FPP4MIN   3
        FPP4SEC   3
        FPPPHTG   4
        FPPEYE    3
        FPP1005   3
        FPP1020   3
        FPP1030   3
        FPP1041   3
        FPP1046   3
        FPP1047   3
        FPP1050   3
        FPP1051   3
        FPP1052   3
        FPP1053   3
        FPP1054   3
        FPP1055   3
        FPP1056   3
        FPP1057   3
        FPP1059   3
        FPP1060   3
        FPP1070   3
        FPP1080   3
        FPP1090   3
        FPP1100   3
        FPP1110   3
        FPP1120   3
        FPP1130   3
        FPP1140   3
        FPP1150   3
        FPP1160   3
        FPP1170   3
        FPP1172   3
        FPP1173   3
        FPP1174   3
        FPP1175   3
        FPP1176   3
        FPP1177   3
        FPP1178   3
        FPP1179   3
        FPP1180   3
        FPP1181   3
        FPP1182   3
        FPP1183   3
        FPP1184   3
        FPP1185   3
        FPP1186   3
        FPP1188   3
        FPP1189   3
        FPP1190   3
        FPP1191   3
        FPP1192   3
        FPP1193   3
        FPP1194   3
        FPP1196   3
        FPP1197   3
        FPP1198   3
        FPP1199   3
        FPP1200   3
        FPP1201   3
        FPP1202   3
        FPP1203   3
        FPP1204   3
        FPP1205   3
        FPP1206   3
        FPP1207   3
        FPP1208   3
        FPP1209   3
        FPP1210   3
        FPP1211   3
        FPP1212   3
        FPP1214   3
        FPP1220   3
        FPP1221   3
        FPP1228   3
        FPP1230   3
        FPP1240   3
        FPP1250   3
        FPP1260   3
        FPP1262   3
        FPP1264   3
        FPP1266   3
        FPPSURET  3
        FPPSUMAC  3
        FPPSUDRU  3
        PFPHHS    3
        PFPRSER   3
        PFPLSER   3
        PFPRSIR   3
        PFPLSIR   3
        PFPUKEY   3
        PFPHKEY   3
        PFPTKEY   8
        HXPBED    3
        PFPWC     3
        PFPUPWC   3
        PFPSCOOT  3
        PFPUSTND  3
        PFPTSTND  8
        PFPNSTND  3
        HXPCHAIR  8
        PFPRFLEX  3
        PFPLFLEX  3
        PFPSTAND  3
        PFPTTAND  8
        PFPOWALK  3
        PFPRWALK  3
        PFPTWLKA  8
        PFPNSTPA  3
        PFPTWLKB  8
        PFPNSTPB  3
        PFPPAIN   3
        PFPDEVIC  3
        PFPTECH   4
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
        BMPWT    Z9.2
        BMPWTLBS Z7.1
        BMPBMI   Z6.1
        BMPHT    Z7.1
        BMPHTIN  Z7.1
        BMPRECUM Z7.1
        BMPSITHT Z7.1
        BMPLEG   Z6.1
        BMPKNEE  Z6.1
        BMPARML  Z6.1
        BMPBIAC  Z6.1
        BMPBIIL  Z7.1
        BMPELB   Z6.1
        BMPWRIST Z6.1
        BMPHEAD  Z6.1
        BMPARMC  Z6.1
        BMPWAIST Z7.1
        BMPBUTTO Z7.1
        BMPWHR   Z7.2
        BMPTHICI Z7.1
        BMPTRI   Z6.1
        BMPSUB   Z6.1
        BMPSUP   Z6.1
        BMPTHI   Z6.1
        DRPQ2A   Z3.
        DRPGW    Z5.
        DRPNWATE Z5.
        DRPNKCAL Z5.
        DRPNPROT Z8.1
        DRPNTFAT Z8.1
        DRPNSFAT Z7.1
        DRPNMFAT Z7.1
        DRPNPFAT Z7.1
        DRPNCHOL Z4.
        DRPNCARB Z8.1
        DRPNFIBE Z7.1
        DRPNALCO Z4.
        DRPNVAIU Z6.
        DRPNVARE Z5.
        DRPNCARO Z5.
        DRPNVE   Z8.1
        DRPNVC   Z4.
        DRPNVB1  Z8.2
        DRPNVB2  Z8.2
        DRPNNIAC Z7.1
        DRPNVB6  Z8.2
        DRPNFOLA Z5.
        DRPNVB12 Z9.2
        DRPNCALC Z5.
        DRPNPHOS Z5.
        DRPNMAGN Z4.
        DRPNIRON Z7.1
        DRPNZINC Z8.1
        DRPNCOPP Z6.1
        DRPNSODI Z5.
        DRPNPOTA Z5.
        DRPNKF   7.1
        DRPNKSF  6.1
        DRPNKMF  6.1
        DRPNKPF  6.1
        DRPNKP   7.1
        DRPNKC   7.1
        DRPNKA   7.1
        TYPCMPLL Z5.1
        TYPCMPLR Z5.1
        TYPVOLL  Z5.1
        TYPVOLR  Z5.1
        TYPC000L Z9.3
        TYPC001L Z9.3
        TYPC002L Z9.3
        TYPC003L Z9.3
        TYPC004L Z9.3
        TYPC005L Z9.3
        TYPC006L Z9.3
        TYPC007L Z9.3
        TYPC008L Z9.3
        TYPC009L Z9.3
        TYPC010L Z9.3
        TYPC011L Z9.3
        TYPC012L Z9.3
        TYPC013L Z9.3
        TYPC014L Z9.3
        TYPC015L Z9.3
        TYPC016L Z9.3
        TYPC017L Z9.3
        TYPC018L Z9.3
        TYPC019L Z9.3
        TYPC020L Z9.3
        TYPC021L Z9.3
        TYPC022L Z9.3
        TYPC023L Z9.3
        TYPC024L Z9.3
        TYPC025L Z9.3
        TYPC026L Z9.3
        TYPC027L Z9.3
        TYPC028L Z9.3
        TYPC029L Z9.3
        TYPC030L Z9.3
        TYPC031L Z9.3
        TYPC032L Z9.3
        TYPC033L Z9.3
        TYPC034L Z9.3
        TYPC035L Z9.3
        TYPC036L Z9.3
        TYPC037L Z9.3
        TYPC038L Z9.3
        TYPC039L Z9.3
        TYPC040L Z9.3
        TYPC041L Z9.3
        TYPC042L Z9.3
        TYPC043L Z9.3
        TYPC044L Z9.3
        TYPC045L Z9.3
        TYPC046L Z9.3
        TYPC047L Z9.3
        TYPC048L Z9.3
        TYPC049L Z9.3
        TYPC050L Z9.3
        TYPC051L Z9.3
        TYPC052L Z9.3
        TYPC053L Z9.3
        TYPC054L Z9.3
        TYPC055L Z9.3
        TYPC056L Z9.3
        TYPC057L Z9.3
        TYPC058L Z9.3
        TYPC059L Z9.3
        TYPC060L Z9.3
        TYPC061L Z9.3
        TYPC062L Z9.3
        TYPC063L Z9.3
        TYPC064L Z9.3
        TYPC065L Z9.3
        TYPC066L Z9.3
        TYPC067L Z9.3
        TYPC068L Z9.3
        TYPC069L Z9.3
        TYPC070L Z9.3
        TYPC071L Z9.3
        TYPC072L Z9.3
        TYPC073L Z9.3
        TYPC074L Z9.3
        TYPC075L Z9.3
        TYPC076L Z9.3
        TYPC077L Z9.3
        TYPC078L Z9.3
        TYPC079L Z9.3
        TYPC080L Z9.3
        TYPC081L Z9.3
        TYPC082L Z9.3
        TYPC083L Z9.3
        TYPC084L Z9.3
        TYPC085L Z9.3
        TYPC086L Z9.3
        TYPC087L Z9.3
        TYPC088L Z9.3
        TYPC089L Z9.3
        TYPC090L Z9.3
        TYPC091L Z9.3
        TYPC092L Z9.3
        TYPC093L Z9.3
        TYPC094L Z9.3
        TYPC095L Z9.3
        TYPC096L Z9.3
        TYPC097L Z9.3
        TYPC098L Z9.3
        TYPC099L Z9.3
        TYPC100L Z9.3
        TYPC101L Z9.3
        TYPC102L Z9.3
        TYPC103L Z9.3
        TYPC104L Z9.3
        TYPC105L Z9.3
        TYPC106L Z9.3
        TYPC107L Z9.3
        TYPC108L Z9.3
        TYPC109L Z9.3
        TYPC110L Z9.3
        TYPC111L Z9.3
        TYPC112L Z9.3
        TYPC113L Z9.3
        TYPC114L Z9.3
        TYPC115L Z9.3
        TYPC116L Z9.3
        TYPC117L Z9.3
        TYPC118L Z9.3
        TYPC119L Z9.3
        TYPC120L Z9.3
        TYPC000R Z9.3
        TYPC001R Z9.3
        TYPC002R Z9.3
        TYPC003R Z9.3
        TYPC004R Z9.3
        TYPC005R Z9.3
        TYPC006R Z9.3
        TYPC007R Z9.3
        TYPC008R Z9.3
        TYPC009R Z9.3
        TYPC010R Z9.3
        TYPC011R Z9.3
        TYPC012R Z9.3
        TYPC013R Z9.3
        TYPC014R Z9.3
        TYPC015R Z9.3
        TYPC016R Z9.3
        TYPC017R Z9.3
        TYPC018R Z9.3
        TYPC019R Z9.3
        TYPC020R Z9.3
        TYPC021R Z9.3
        TYPC022R Z9.3
        TYPC023R Z9.3
        TYPC024R Z9.3
        TYPC025R Z9.3
        TYPC026R Z9.3
        TYPC027R Z9.3
        TYPC028R Z9.3
        TYPC029R Z9.3
        TYPC030R Z9.3
        TYPC031R Z9.3
        TYPC032R Z9.3
        TYPC033R Z9.3
        TYPC034R Z9.3
        TYPC035R Z9.3
        TYPC036R Z9.3
        TYPC037R Z9.3
        TYPC038R Z9.3
        TYPC039R Z9.3
        TYPC040R Z9.3
        TYPC041R Z9.3
        TYPC042R Z9.3
        TYPC043R Z9.3
        TYPC044R Z9.3
        TYPC045R Z9.3
        TYPC046R Z9.3
        TYPC047R Z9.3
        TYPC048R Z9.3
        TYPC049R Z9.3
        TYPC050R Z9.3
        TYPC051R Z9.3
        TYPC052R Z9.3
        TYPC053R Z9.3
        TYPC054R Z9.3
        TYPC055R Z9.3
        TYPC056R Z9.3
        TYPC057R Z9.3
        TYPC058R Z9.3
        TYPC059R Z9.3
        TYPC060R Z9.3
        TYPC061R Z9.3
        TYPC062R Z9.3
        TYPC063R Z9.3
        TYPC064R Z9.3
        TYPC065R Z9.3
        TYPC066R Z9.3
        TYPC067R Z9.3
        TYPC068R Z9.3
        TYPC069R Z9.3
        TYPC070R Z9.3
        TYPC071R Z9.3
        TYPC072R Z9.3
        TYPC073R Z9.3
        TYPC074R Z9.3
        TYPC075R Z9.3
        TYPC076R Z9.3
        TYPC077R Z9.3
        TYPC078R Z9.3
        TYPC079R Z9.3
        TYPC080R Z9.3
        TYPC081R Z9.3
        TYPC082R Z9.3
        TYPC083R Z9.3
        TYPC084R Z9.3
        TYPC085R Z9.3
        TYPC086R Z9.3
        TYPC087R Z9.3
        TYPC088R Z9.3
        TYPC089R Z9.3
        TYPC090R Z9.3
        TYPC091R Z9.3
        TYPC092R Z9.3
        TYPC093R Z9.3
        TYPC094R Z9.3
        TYPC095R Z9.3
        TYPC096R Z9.3
        TYPC097R Z9.3
        TYPC098R Z9.3
        TYPC099R Z9.3
        TYPC100R Z9.3
        TYPC101R Z9.3
        TYPC102R Z9.3
        TYPC103R Z9.3
        TYPC104R Z9.3
        TYPC105R Z9.3
        TYPC106R Z9.3
        TYPC107R Z9.3
        TYPC108R Z9.3
        TYPC109R Z9.3
        TYPC110R Z9.3
        TYPC111R Z9.3
        TYPC112R Z9.3
        TYPC113R Z9.3
        TYPC114R Z9.3
        TYPC115R Z9.3
        TYPC116R Z9.3
        TYPC117R Z9.3
        TYPC118R Z9.3
        TYPC119R Z9.3
        TYPC120R Z9.3
        BDPFNARE Z7.2
        BDPFNBMC Z8.2
        BDPFNBMD Z9.3
        BDPTRARE Z8.2
        BDPTRBMC Z8.2
        BDPTRBMD Z9.3
        BDPINARE Z8.2
        BDPINBMC Z8.2
        BDPINBMD Z9.3
        BDPWTARE Z9.3
        BDPWTBMC Z9.3
        BDPWTBMD Z9.3
        BDPTOARE Z8.2
        BDPTOBMC Z8.2
        BDPTOBMD Z9.3
        BDPK     Z9.3
        BDPD0    Z7.1
        GUPLCSZE 5.1
        GUPRCSZE 6.1
        GUPCHSZE 5.1
        CNPMENRT Z13.4
        CNPSDRT  Z13.4
        CNP1LAT1 Z7.1
        CNP1LAT2 Z7.1
        CNP1LAT3 Z7.1
        CNP1LAT4 Z7.1
        CNP1LAT5 Z7.1
        CNP1LAT6 Z7.1
        CNP1LAT7 Z7.1
        CNP1LAT8 Z7.1
        CNP1LAT9 Z7.1
        CNP1TOTL Z9.2
        CNPCLAT1 Z9.2
        CNP2LAT1 Z7.1
        CNP2LAT2 Z7.1
        CNP2LAT3 Z7.1
        CNP2LAT4 Z7.1
        CNP2LAT5 Z7.1
        CNP2LAT6 Z7.1
        CNP2LAT7 Z7.1
        CNP2LAT8 Z7.1
        CNP2LAT9 Z7.1
        CNP2TOTL Z9.2
        CNPCLAT2 Z9.2
        CNP3LAT1 Z7.1
        CNP3LAT2 Z7.1
        CNP3LAT3 Z7.1
        CNP3LAT4 Z7.1
        CNP3LAT5 Z7.1
        CNP3LAT6 Z7.1
        CNP3LAT7 Z7.1
        CNP3LAT8 Z7.1
        CNP3LAT9 Z7.1
        CNP3TOTL Z9.2
        CNPCLAT3 Z9.2
        CNP4LAT1 Z7.1
        CNP4LAT2 Z7.1
        CNP4LAT3 Z7.1
        CNP4LAT4 Z7.1
        CNP4LAT5 Z7.1
        CNP4LAT6 Z7.1
        CNP4LAT7 Z7.1
        CNP4LAT8 Z7.1
        CNP4LAT9 Z7.1
        CNP4TOTL Z9.2
        CNPCLAT4 Z9.2
        CNPCBEST Z8.2
        PFPTKEY  Z6.1
        PFPTSTND Z6.1
        HXPCHAIR Z6.1
        PFPTTAND Z6.1
        PFPTWLKA Z6.1
        PFPTWLKB Z6.1
      ;

     INPUT
        SEQN     1-5
        DMPFSEQ  6-10
        DMPSTAT  11
        DMARETHN 12
        DMARACER 13
        DMAETHNR 14
        HSSEX    15
        HSAGEIR  16-17
        HSAGEU   18
        HSAITMOR 19-22
        HSFSIZER 23-24
        HSHSIZER 25-26
        DMPCNTYR 27-29
        DMPFIPSR 30-31
        DMPMETRO 32
        DMPCREGN 33
        DMPPIR   34-39
        SDPPHASE 40
        SDPPSU6  41
        SDPSTRA6 42-43
        SDPPSU1  44
        SDPSTRA1 45-46
        SDPPSU2  47
        SDPSTRA2 48-49
        WTPFQX6  50-58
        WTPFEX6  59-67
        WTPFHX6  68-76
        WTPFALG6 77-85
        WTPFCNS6 86-94
        WTPFSD6  95-103
        WTPFMD6  104-112
        WTPFHSD6 113-121
        WTPFHMD6 122-130
        WTPFQX1  131-139
        WTPFEX1  140-148
        WTPFHX1  149-157
        WTPFALG1 158-166
        WTPFCNS1 167-175
        WTPFSD1  176-184
        WTPFMD1  185-193
        WTPFHSD1 194-202
        WTPFHMD1 203-211
        WTPFQX2  212-220
        WTPFEX2  221-229
        WTPFHX2  230-238
        WTPFALG2 239-247
        WTPFCNS2 248-256
        WTPFSD2  257-265
        WTPFMD2  266-274
        WTPFHSD2 275-283
        WTPFHMD2 284-292
        WTPQRP1  293-301
        WTPQRP2  302-310
        WTPQRP3  311-319
        WTPQRP4  320-328
        WTPQRP5  329-337
        WTPQRP6  338-346
        WTPQRP7  347-355
        WTPQRP8  356-364
        WTPQRP9  365-373
        WTPQRP10 374-382
        WTPQRP11 383-391
        WTPQRP12 392-400
        WTPQRP13 401-409
        WTPQRP14 410-418
        WTPQRP15 419-427
        WTPQRP16 428-436
        WTPQRP17 437-445
        WTPQRP18 446-454
        WTPQRP19 455-463
        WTPQRP20 464-472
        WTPQRP21 473-481
        WTPQRP22 482-490
        WTPQRP23 491-499
        WTPQRP24 500-508
        WTPQRP25 509-517
        WTPQRP26 518-526
        WTPQRP27 527-535
        WTPQRP28 536-544
        WTPQRP29 545-553
        WTPQRP30 554-562
        WTPQRP31 563-571
        WTPQRP32 572-580
        WTPQRP33 581-589
        WTPQRP34 590-598
        WTPQRP35 599-607
        WTPQRP36 608-616
        WTPQRP37 617-625
        WTPQRP38 626-634
        WTPQRP39 635-643
        WTPQRP40 644-652
        WTPQRP41 653-661
        WTPQRP42 662-670
        WTPQRP43 671-679
        WTPQRP44 680-688
        WTPQRP45 689-697
        WTPQRP46 698-706
        WTPQRP47 707-715
        WTPQRP48 716-724
        WTPQRP49 725-733
        WTPQRP50 734-742
        WTPQRP51 743-751
        WTPQRP52 752-760
        WTPXRP1  761-769
        WTPXRP2  770-778
        WTPXRP3  779-787
        WTPXRP4  788-796
        WTPXRP5  797-805
        WTPXRP6  806-814
        WTPXRP7  815-823
        WTPXRP8  824-832
        WTPXRP9  833-841
        WTPXRP10 842-850
        WTPXRP11 851-859
        WTPXRP12 860-868
        WTPXRP13 869-877
        WTPXRP14 878-886
        WTPXRP15 887-895
        WTPXRP16 896-904
        WTPXRP17 905-913
        WTPXRP18 914-922
        WTPXRP19 923-931
        WTPXRP20 932-940
        WTPXRP21 941-949
        WTPXRP22 950-958
        WTPXRP23 959-967
        WTPXRP24 968-976
        WTPXRP25 977-985
        WTPXRP26 986-994
        WTPXRP27 995-1003
        WTPXRP28 1004-1012
        WTPXRP29 1013-1021
        WTPXRP30 1022-1030
        WTPXRP31 1031-1039
        WTPXRP32 1040-1048
        WTPXRP33 1049-1057
        WTPXRP34 1058-1066
        WTPXRP35 1067-1075
        WTPXRP36 1076-1084
        WTPXRP37 1085-1093
        WTPXRP38 1094-1102
        WTPXRP39 1103-1111
        WTPXRP40 1112-1120
        WTPXRP41 1121-1129
        WTPXRP42 1130-1138
        WTPXRP43 1139-1147
        WTPXRP44 1148-1156
        WTPXRP45 1157-1165
        WTPXRP46 1166-1174
        WTPXRP47 1175-1183
        WTPXRP48 1184-1192
        WTPXRP49 1193-1201
        WTPXRP50 1202-1210
        WTPXRP51 1211-1219
        WTPXRP52 1220-1228
        HYAITMO  1229-1232
        MXPLANG  1233
        MXPSESSR 1234
        MXPTIDW  1235
        MXPAXTMR 1236-1239
        HXPTIDW  1240
        HXPAXTMR 1241-1244
        HXPSESSR 1245
        PEP1     1246
        PEP1A1   1247
        PEP1A2   1248
        PEP2     1249
        PEP2A    1250
        PEP2B    1251
        PEP3A    1252
        PEP3A1A  1253
        PEP3A1B  1254
        PEP3A2   1255
        PEP3B1   1256
        PEP3LARM 1257-1258
        PEP3RARM 1259-1260
        PEP3BFL1 1261
        PEP3BFL2 1262
        PEP3BFL3 1263
        PEP3BFL4 1264
        PEP3BFL5 1265
        PEP3BFR1 1266
        PEP3BFR2 1267
        PEP3BFR3 1268
        PEP3BFR4 1269
        PEP3BFR5 1270
        PEP3B2   1271
        PEP3LLEG 1272-1273
        PEP3RLEG 1274-1275
        PEP3B2TR 1276
        PEP3B2TL 1277
        PEP4A    1278
        PEP4A1   1279
        PEP4A2   1280
        PEP4A3   1281
        PEP4CMC  1282
        PEP4CMCC 1283
        PEP4CMCT 1284
        PEP4CMCS 1285
        PEP4CMCP 1286
        PEP4B    1287
        PEP4BTR1 1288
        PEP4BTR2 1289
        PEP4BTR3 1290
        PEP4BTR4 1291
        PEP4BTR5 1292
        PEP4BTL1 1293
        PEP4BTL2 1294
        PEP4BTL3 1295
        PEP4BTL4 1296
        PEP4BTL5 1297
        PEP4BSR1 1298
        PEP4BSR2 1299
        PEP4BSR3 1300
        PEP4BSR4 1301
        PEP4BSR5 1302
        PEP4BSL1 1303
        PEP4BSL2 1304
        PEP4BSL3 1305
        PEP4BSL4 1306
        PEP4BSL5 1307
        PEP4BPR1 1308
        PEP4BPR2 1309
        PEP4BPR3 1310
        PEP4BPR4 1311
        PEP4BPR5 1312
        PEP4BPL1 1313
        PEP4BPL2 1314
        PEP4BPL3 1315
        PEP4BPL4 1316
        PEP4BPL5 1317
        PEP4CTR2 1318
        PEP4CTR3 1319
        PEP4CTR4 1320
        PEP4CTR5 1321
        PEP4CTL2 1322
        PEP4CTL3 1323
        PEP4CTL4 1324
        PEP4CTL5 1325
        PEP4CSR2 1326
        PEP4CSR3 1327
        PEP4CSR4 1328
        PEP4CSR5 1329
        PEP4CSL2 1330
        PEP4CSL3 1331
        PEP4CSL4 1332
        PEP4CSL5 1333
        PEP4CPR2 1334
        PEP4CPR3 1335
        PEP4CPR4 1336
        PEP4CPR5 1337
        PEP4CPL2 1338
        PEP4CPL3 1339
        PEP4CPL4 1340
        PEP4CPL5 1341
        PEP4DTR1 1342
        PEP4DTR2 1343
        PEP4DTR3 1344
        PEP4DTR4 1345
        PEP4DTR5 1346
        PEP4DTL1 1347
        PEP4DTL2 1348
        PEP4DTL3 1349
        PEP4DTL4 1350
        PEP4DTL5 1351
        PEP4DSR1 1352
        PEP4DSR2 1353
        PEP4DSR3 1354
        PEP4DSR4 1355
        PEP4DSR5 1356
        PEP4DSL1 1357
        PEP4DSL2 1358
        PEP4DSL3 1359
        PEP4DSL4 1360
        PEP4DSL5 1361
        PEP4DPR1 1362
        PEP4DPR2 1363
        PEP4DPR3 1364
        PEP4DPR4 1365
        PEP4DPR5 1366
        PEP4DPL1 1367
        PEP4DPL2 1368
        PEP4DPL3 1369
        PEP4DPL4 1370
        PEP4DPL5 1371
        PEP4CMCJ 1372
        PEP4E1   1373
        PEP4E1A  1374
        PEP4E1B  1375
        PEP4E1C  1376
        PEP4E1D  1377
        PEP4E1E  1378
        PEP4E1F  1379
        PEP5R    1380-1382
        PEP6A    1383
        PEP6B    1384
        PEP6C    1385
        PEP6DR   1386-1388
        PEP6E    1389
        PEP6F    1390-1392
        PEP6G1   1393-1395
        PEP6G2   1396-1398
        PEP6G3   1399-1401
        PEP6G4   1402
        PEP6H1   1403-1405
        PEP6H2   1406-1408
        PEP6H3   1409-1411
        PEP6H4   1412
        PEP6I1   1413-1415
        PEP6I2   1416-1418
        PEP6I3   1419-1421
        PEP6I4   1422
        PEPMNK1R 1423-1425
        PEPNOK1R 1426-1427
        PEPMNK5R 1428-1430
        PEPNOK5R 1431-1432
        PEP7     1433
        PEP7A1R  1434
        PEP7A1L  1435
        PEP7A2R  1436
        PEP7A2L  1437
        PEP8     1438
        PEP8A    1439-1440
        PEP8B    1441-1442
        PEP9     1443
        PEP9A    1444
        PEP9B    1445
        PEP9C    1446
        PEP9D    1447
        PEP9E    1448
        PEP10    1449
        PEP10MTR 1450
        PEP10MTL 1451
        PEP10MSR 1452
        PEP10MSL 1453
        PEP10MPR 1454
        PEP10MPL 1455
        PEP10ITR 1456
        PEP10ITL 1457
        PEP10ISR 1458
        PEP10ISL 1459
        PEP10IPR 1460
        PEP10IPL 1461
        PEP10B   1462
        PEP10B1  1463
        PEP10B2  1464
        PEP10B3  1465
        PEP10B4  1466
        PEP10B5  1467
        PEP10B6  1468
        PEP10C   1469
        PEP10C1  1470
        PEP10C2  1471
        PEP11A1  1472-1474
        PEP11A2  1475-1477
        PEP11B1  1478
        PEP11B2  1479
        PEP11B3  1480
        PEP13A   1481
        PEP13B   1482
        PEP13C   1483
        PEP13D   1484
        PEP13E1A 1485
        PEP13E1B 1486
        PEP13E2A 1487
        PEP13E2B 1488
        PEP13E3A 1489
        PEP13E3B 1490
        PEP13E4A 1491
        PEP13E4B 1492
        PEP13E5A 1493
        PEP13E5B 1494
        PEP13F1A 1495
        PEP13F1B 1496
        PEPLEVEL 1497
        PEPTECH  1498-1502
        BMPTECH1 1503-1507
        BMPWT    1508-1513
        BMPWTFLG 1514
        BMPWTLBS 1515-1519
        BMPSRWL  1520-1523
        BMPBMI   1524-1527
        BMPHT    1528-1532
        BMPHTFLG 1533
        BMPHTIN  1534-1538
        BMPRECUM 1539-1543
        BMPRECFL 1544
        BMPSITHT 1545-1549
        BMPSRHIS 1550-1552
        BMPLEG   1553-1556
        BMPKNEE  1557-1560
        BMPARML  1561-1564
        BMPBIAC  1565-1568
        BMPBIIL  1569-1573
        BMPELB   1574-1577
        BMPWRIST 1578-1581
        BMPHEAD  1582-1585
        BMPARMC  1586-1589
        BMPWAIST 1590-1594
        BMPBUTTO 1595-1599
        BMPWHR   1600-1603
        BMPTHICI 1604-1608
        BMPTRI   1609-1612
        BMPSUB   1613-1616
        BMPSUP   1617-1620
        BMPTHI   1621-1624
        PEPPREG  1625
        PEPPACE  1626
        PEP12A1  1627-1630
        PEP12B1  1631-1634
        DRPSTAT  1635
        DRPRDAY  1636-1637
        DRPRESP  1638
        DRPLANG  1639
        DRPIID   1640-1641
        DRPQ1    1642
        DRPQ2A   1643-1645
        DRPQ3    1646
        DRPQ4    1647
        DRPQ5    1648-1649
        DRPQ6    1650
        DRPQ7    1651
        DRPQ8    1652-1653
        DRPQ9    1654
        DRPQ10   1655
        DRPQ11   1656-1657
        DRPQ12   1658
        DRPGW    1659-1663
        DRPNWATE 1664-1668
        DRPNKCAL 1669-1673
        DRPNPROT 1674-1679
        DRPNTFAT 1680-1685
        DRPNSFAT 1686-1690
        DRPNMFAT 1691-1695
        DRPNPFAT 1696-1700
        DRPNCHOL 1701-1704
        DRPNCARB 1705-1710
        DRPNFIBE 1711-1715
        DRPNALCO 1716-1719
        DRPNVAIU 1720-1725
        DRPNVARE 1726-1730
        DRPNCARO 1731-1735
        DRPNVE   1736-1741
        DRPNVC   1742-1745
        DRPNVB1  1746-1750
        DRPNVB2  1751-1755
        DRPNNIAC 1756-1760
        DRPNVB6  1761-1765
        DRPNFOLA 1766-1770
        DRPNVB12 1771-1776
        DRPNCALC 1777-1781
        DRPNPHOS 1782-1786
        DRPNMAGN 1787-1790
        DRPNIRON 1791-1795
        DRPNZINC 1796-1801
        DRPNCOPP 1802-1805
        DRPNSODI 1806-1810
        DRPNPOTA 1811-1815
        DRPNKF   1816-1820
        DRPNKSF  1821-1824
        DRPNKMF  1825-1828
        DRPNKPF  1829-1832
        DRPNKP   1833-1837
        DRPNKC   1838-1842
        DRPNKA   1843-1847
        MPPA1    1848
        MPPA2    1849
        MPPA3    1850
        MPPA4    1851
        MPPB1    1852
        MPPB2    1853-1854
        MPPB3    1855
        MPPB4    1856-1857
        MPPB5    1858
        MPPB6    1859
        MPPB7S   1860-1862
        MPPC1    1863
        MPPC2A   1864
        MPPC2B   1865
        MPPC2C   1866
        MPPC2D   1867
        MPPC2E   1868
        MPPC2F   1869
        MPPC2G   1870
        MPPC2H   1871
        MPPC2I   1872
        MPPC2J   1873
        MPPC2K   1874
        MPPC2L   1875
        MPPC2M   1876
        MPPC2N   1877
        MPPC2O   1878
        MPPD1A   1879-1880
        MPPEXMNR 1881-1884
        DEPEXFLG 1885
        DEPEXMNR 1886
        DEPUQUAD 1887
        DEPLQUAD 1888
        DEPMEDXC 1889
        DEPEDENT 1890
        DEPCCFLG 1891
        DEPRSFLG 1892
        DEPRCFLG 1893
        DEPTRFLG 1894
        DEPGNFLG 1895
        DEPCLFLG 1896
        DEPCJFLG 1897
        DEPPCFLG 1898
        DEPLAFLG 1899
        DEPDQFLG 1900
        DEPNURSC 1901
        DEPDMFS1 1902-1904
        DEPDMFS2 1905-1907
        DEPDFSP  1908-1910
        DEPDFSDC 1911-1912
        DEPDFTDC 1913-1914
        DEPDMFT1 1915-1916
        DEPDMFT2 1917-1918
        DEPCS1   1919
        DEPCS2   1920-1921
        DEPCS3   1922-1923
        DEPCS4   1924-1925
        DEPCS5   1926-1927
        DEPCS6   1928
        DEPCS7   1929-1930
        DEPCS8   1931-1932
        DEPCS9   1933-1934
        DEPCS10  1935-1936
        DEPCS11  1937
        DEPCS12  1938-1939
        DEPCS13  1940-1941
        DEPCS14  1942-1943
        DEPCS15  1944-1945
        DEPCS16  1946-1947
        DEPCS17  1948-1949
        DEPCS18  1950-1951
        DEPCS19  1952-1953
        DEPCS20  1954-1955
        DEPCS21  1956-1957
        DEPCS22  1958-1959
        DEPCS23  1960-1961
        DEPCS24  1962-1963
        DEPCS25  1964-1965
        DEPCS26  1966-1967
        DEPCS27  1968-1969
        DEPCS28  1970-1971
        DEPCS29  1972-1973
        DEPCS30  1974-1975
        DEPCS31  1976-1977
        DEPCS32  1978-1979
        DEPCS33  1980-1981
        DEPCS34  1982-1983
        DEPCS35  1984-1985
        DEPCS36  1986
        DEPCS37  1987-1988
        DEPCS38  1989-1990
        DEPCS39  1991-1992
        DEPCS40  1993-1994
        DEPCS41  1995
        DEPCS42  1996-1997
        DEPCS43  1998-1999
        DEPCS44  2000-2001
        DEPCS45  2002-2003
        DEPCS46  2004
        DEPCS47  2005-2006
        DEPCS48  2007-2008
        DEPCS49  2009-2010
        DEPCS50  2011-2012
        DEPCS51  2013-2014
        DEPCS52  2015-2016
        DEPCS53  2017-2018
        DEPCS54  2019-2020
        DEPCS55  2021-2022
        DEPCS56  2023-2024
        DEPCS57  2025-2026
        DEPCS58  2027-2028
        DEPCS59  2029-2030
        DEPCS60  2031-2032
        DEPCS61  2033-2034
        DEPCS62  2035-2036
        DEPCS63  2037-2038
        DEPCS64  2039-2040
        DEPCS65  2041-2042
        DEPCS66  2043-2044
        DEPCS67  2045-2046
        DEPCS68  2047-2048
        DEPCS69  2049-2050
        DEPCS70  2051-2052
        DEPCS71  2053
        DEPCS72  2054-2055
        DEPCS73  2056-2057
        DEPCS74  2058-2059
        DEPCS75  2060-2061
        DEPCS76  2062
        DEPCS77  2063-2064
        DEPCS78  2065-2066
        DEPCS79  2067-2068
        DEPCS80  2069-2070
        DEPCS81  2071
        DEPCS82  2072-2073
        DEPCS83  2074-2075
        DEPCS84  2076-2077
        DEPCS85  2078-2079
        DEPCS86  2080-2081
        DEPCS87  2082-2083
        DEPCS88  2084-2085
        DEPCS89  2086-2087
        DEPCS90  2088-2089
        DEPCS91  2090-2091
        DEPCS92  2092-2093
        DEPCS93  2094-2095
        DEPCS94  2096-2097
        DEPCS95  2098-2099
        DEPCS96  2100-2101
        DEPCS97  2102-2103
        DEPCS98  2104-2105
        DEPCS99  2106-2107
        DEPCS100 2108-2109
        DEPCS101 2110-2111
        DEPCS102 2112-2113
        DEPCS103 2114-2115
        DEPCS104 2116-2117
        DEPCS105 2118-2119
        DEPCS106 2120
        DEPCS107 2121-2122
        DEPCS108 2123-2124
        DEPCS109 2125-2126
        DEPCS110 2127-2128
        DEPCS111 2129
        DEPCS112 2130-2131
        DEPCS113 2132-2133
        DEPCS114 2134-2135
        DEPCS115 2136-2137
        DEPCS116 2138
        DEPCS117 2139-2140
        DEPCS118 2141-2142
        DEPCS119 2143-2144
        DEPCS120 2145-2146
        DEPCS121 2147-2148
        DEPCS122 2149-2150
        DEPCS123 2151-2152
        DEPCS124 2153-2154
        DEPCS125 2155-2156
        DEPCS126 2157-2158
        DEPCS127 2159-2160
        DEPCS128 2161-2162
        DEPCS129 2163-2164
        DEPCS130 2165-2166
        DEPCS131 2167-2168
        DEPCS132 2169-2170
        DEPCS133 2171-2172
        DEPCS134 2173-2174
        DEPCS135 2175-2176
        DEPCS136 2177-2178
        DEPCS137 2179-2180
        DEPCS138 2181-2182
        DEPCS139 2183-2184
        DEPCS140 2185-2186
        DEPCT1   2187-2188
        DEPCT2   2189-2190
        DEPCT3   2191-2192
        DEPCT4   2193-2194
        DEPCT5   2195-2196
        DEPCT6   2197-2198
        DEPCT7   2199-2200
        DEP3M1   2201
        DEPCT8   2202-2203
        DEPCT9   2204-2205
        DEPCT10  2206-2207
        DEPCT11  2208-2209
        DEPCT12  2210-2211
        DEPCT13  2212-2213
        DEPCT14  2214-2215
        DEP3M2   2216
        DEPCT15  2217-2218
        DEPCT16  2219-2220
        DEPCT17  2221-2222
        DEPCT18  2223-2224
        DEPCT19  2225-2226
        DEPCT20  2227-2228
        DEPCT21  2229-2230
        DEP3M3   2231
        DEPCT22  2232-2233
        DEPCT23  2234-2235
        DEPCT24  2236-2237
        DEPCT25  2238-2239
        DEPCT26  2240-2241
        DEPCT27  2242-2243
        DEPCT28  2244-2245
        DEP3M4   2246
        DEPSE1   2247
        DEPSE2   2248
        DEPSE3   2249
        DEPSE4   2250
        DEPSE5   2251
        DEPSE6   2252
        DEPSE7   2253
        DEPSE8   2254
        DEPSE9   2255
        DEPSE10  2256
        DEPSE11  2257
        DEPSE12  2258
        DEPSE13  2259
        DEPSE14  2260
        DEPSE15  2261
        DEPSE16  2262
        DEPSE17  2263
        DEPSE18  2264
        DEPSE19  2265
        DEPSE20  2266
        DEPSE21  2267
        DEPSE22  2268
        DEPSE23  2269
        DEPSE24  2270
        DEPSE25  2271
        DEPSE26  2272
        DEPSE27  2273
        DEPSE28  2274
        DEPRS1   2275
        DEPRS2   2276
        DEPRS3   2277
        DEPRS4   2278
        DEPRS5   2279
        DEPRS6   2280
        DEPRS7   2281
        DEPRS8   2282
        DEPRS9   2283
        DEPRS10  2284
        DEPRS11  2285
        DEPRS12  2286
        DEPRS13  2287
        DEPRS14  2288
        DEPRS15  2289
        DEPRS16  2290
        DEPRS17  2291
        DEPRS18  2292
        DEPRS19  2293
        DEPRS20  2294
        DEPRS21  2295
        DEPRS22  2296
        DEPRS23  2297
        DEPRS24  2298
        DEPRS25  2299
        DEPRS26  2300
        DEPRS27  2301
        DEPRS28  2302
        DEPRS29  2303
        DEPRS30  2304
        DEPRS31  2305
        DEPRS32  2306
        DEPRS33  2307
        DEPRS34  2308
        DEPRS35  2309
        DEPRS36  2310
        DEPRS37  2311
        DEPRS38  2312
        DEPRS39  2313
        DEPRS40  2314
        DEPRS41  2315
        DEPRS42  2316
        DEPRS43  2317
        DEPRS44  2318
        DEPRS45  2319
        DEPRS46  2320
        DEPRS47  2321
        DEPRS48  2322
        DEPRS49  2323
        DEPRS50  2324
        DEPRS51  2325
        DEPRS52  2326
        DEPRS53  2327
        DEPRS54  2328
        DEPRS55  2329
        DEPRS56  2330
        DEPRS57  2331
        DEPRS58  2332
        DEPRS59  2333
        DEPRS60  2334
        DEPRS61  2335
        DEPRS62  2336
        DEPRS63  2337
        DEPRS64  2338
        DEPRS65  2339
        DEPRS66  2340
        DEPRS67  2341
        DEPRS68  2342
        DEPRS69  2343
        DEPRS70  2344
        DEPRS71  2345
        DEPRS72  2346
        DEPRS73  2347
        DEPRS74  2348
        DEPRS75  2349
        DEPRS76  2350
        DEPRS77  2351
        DEPRS78  2352
        DEPRS79  2353
        DEPRS80  2354
        DEPRS81  2355
        DEPRS82  2356
        DEPRS83  2357
        DEPRS84  2358
        DEPRS85  2359
        DEPRS86  2360
        DEPRS87  2361
        DEPRS88  2362
        DEPRS89  2363
        DEPRS90  2364
        DEPRS91  2365
        DEPRS92  2366
        DEPRS93  2367
        DEPRS94  2368
        DEPRS95  2369
        DEPRS96  2370
        DEPRS97  2371
        DEPRS98  2372
        DEPRS99  2373
        DEPRS100 2374
        DEPRS101 2375
        DEPRS102 2376
        DEPRS103 2377
        DEPRS104 2378
        DEPRS105 2379
        DEPRS106 2380
        DEPRS107 2381
        DEPRS108 2382
        DEPRS109 2383
        DEPRS110 2384
        DEPRS111 2385
        DEPRS112 2386
        DEPUGN1  2387
        DEPUGN2  2388
        DEPUGN3  2389
        DEPUGN4  2390
        DEPUGN5  2391
        DEPUGN6  2392
        DEPUGN7  2393
        DEPUGN8  2394
        DEPUGN9  2395
        DEPUGN10 2396
        DEPUGN11 2397
        DEPUGN12 2398
        DEPUGN13 2399
        DEPUGN14 2400
        DEPLGN1  2401
        DEPLGN2  2402
        DEPLGN3  2403
        DEPLGN4  2404
        DEPLGN5  2405
        DEPLGN6  2406
        DEPLGN7  2407
        DEPLGN8  2408
        DEPLGN9  2409
        DEPLGN10 2410
        DEPLGN11 2411
        DEPLGN12 2412
        DEPLGN13 2413
        DEPLGN14 2414
        DEPUCL1  2415
        DEPUCL2  2416
        DEPUCL3  2417
        DEPUCL4  2418
        DEPUCL5  2419
        DEPUCL6  2420
        DEPUCL7  2421
        DEPUCL8  2422
        DEPUCL9  2423
        DEPUCL10 2424
        DEPUCL11 2425
        DEPUCL12 2426
        DEPUCL13 2427
        DEPUCL14 2428
        DEPLCL1  2429
        DEPLCL2  2430
        DEPLCL3  2431
        DEPLCL4  2432
        DEPLCL5  2433
        DEPLCL6  2434
        DEPLCL7  2435
        DEPLCL8  2436
        DEPLCL9  2437
        DEPLCL10 2438
        DEPLCL11 2439
        DEPLCL12 2440
        DEPLCL13 2441
        DEPLCL14 2442
        DEPUMCJ1 2443-2444
        DEPUMPC1 2445-2446
        DEPUBCJ1 2447-2448
        DEPUBPC1 2449-2450
        DEPUMCJ2 2451-2452
        DEPUMPC2 2453-2454
        DEPUBCJ2 2455-2456
        DEPUBPC2 2457-2458
        DEPUMCJ3 2459-2461
        DEPUMPC3 2462-2463
        DEPUBCJ3 2464-2466
        DEPUBPC3 2467-2468
        DEPUMCJ4 2469-2470
        DEPUMPC4 2471-2472
        DEPUBCJ4 2473-2474
        DEPUBPC4 2475-2476
        DEPUMCJ5 2477-2478
        DEPUMPC5 2479-2480
        DEPUBCJ5 2481-2482
        DEPUBPC5 2483-2484
        DEPUMCJ6 2485-2487
        DEPUMPC6 2488-2489
        DEPUBCJ6 2490-2492
        DEPUBPC6 2493-2494
        DEPUMCJ7 2495-2497
        DEPUMPC7 2498-2499
        DEPUBCJ7 2500-2502
        DEPUBPC7 2503-2504
        DEPLMCJ1 2505-2506
        DEPLMPC1 2507-2508
        DEPLBCJ1 2509-2511
        DEPLBPC1 2512-2513
        DEPLMCJ2 2514-2515
        DEPLMPC2 2516-2517
        DEPLBCJ2 2518-2520
        DEPLBPC2 2521-2522
        DEPLMCJ3 2523-2525
        DEPLMPC3 2526-2527
        DEPLBCJ3 2528-2530
        DEPLBPC3 2531-2532
        DEPLMCJ4 2533-2535
        DEPLMPC4 2536-2537
        DEPLBCJ4 2538-2540
        DEPLBPC4 2541-2542
        DEPLMCJ5 2543-2544
        DEPLMPC5 2545-2546
        DEPLBCJ5 2547-2548
        DEPLBPC5 2549-2550
        DEPLMCJ6 2551-2553
        DEPLMPC6 2554-2555
        DEPLBCJ6 2556-2558
        DEPLBPC6 2559-2560
        DEPLMCJ7 2561-2563
        DEPLMPC7 2564-2565
        DEPLBCJ7 2566-2568
        DEPLBPC7 2569-2570
        DEPUMLA1 2571-2572
        DEPUBLA1 2573-2574
        DEPUMLA2 2575-2576
        DEPUBLA2 2577-2578
        DEPUMLA3 2579-2580
        DEPUBLA3 2581-2582
        DEPUMLA4 2583-2584
        DEPUBLA4 2585-2586
        DEPUMLA5 2587-2588
        DEPUBLA5 2589-2590
        DEPUMLA6 2591-2592
        DEPUBLA6 2593-2594
        DEPUMLA7 2595-2596
        DEPUBLA7 2597-2598
        DEPLMLA1 2599-2600
        DEPLBLA1 2601-2602
        DEPLMLA2 2603-2604
        DEPLBLA2 2605-2606
        DEPLMLA3 2607-2608
        DEPLBLA3 2609-2610
        DEPLMLA4 2611-2612
        DEPLBLA4 2613-2614
        DEPLMLA5 2615-2616
        DEPLBLA5 2617-2618
        DEPLMLA6 2619-2620
        DEPLBLA6 2621-2622
        DEPLMLA7 2623-2624
        DEPLBLA7 2625-2626
        DEPUB2MF 2627
        DEPUB2DF 2628
        DEPUM1MF 2629
        DEPUM1BF 2630
        DEPUM1DF 2631
        DEPUM2MF 2632
        DEPUM2BF 2633
        DEPUM2DF 2634
        DEPLM1LF 2635
        DEPLM1BF 2636
        DEPLM2LF 2637
        DEPLM2BF 2638
        DEPNUMLS 2639
        DEPSTLC1 2640-2645
        DEPSTDX1 2646-2647
        DEPSMRQ1 2648
        DEPSMTK1 2649
        DEPYEAS1 2650
        DEPHYPH1 2651
        DEPCDRQ1 2652
        DEPSTXT1 2653-2654
        DEPSTLN1 2655-2656
        DEPSTWD1 2657-2658
        DEPSTHT1 2659-2660
        DEPSTMF1 2661-2662
        DEPSTCL1 2663-2665
        DEPSTCS1 2666-2667
        DEPSTPN1 2668-2669
        DEPSTPD1 2670-2671
        DEPSTHS1 2672-2673
        DEPSTLC2 2674-2679
        DEPSTDX2 2680-2681
        DEPSMRQ2 2682
        DEPSMTK2 2683
        DEPYEAS2 2684
        DEPHYPH2 2685
        DEPCDRQ2 2686
        DEPSTXT2 2687
        DEPSTLN2 2688-2689
        DEPSTWD2 2690-2691
        DEPSTHT2 2692-2693
        DEPSTMF2 2694
        DEPSTCL2 2695-2697
        DEPSTCS2 2698
        DEPSTPN2 2699
        DEPSTPD2 2700
        DEPSTHS2 2701
        DEPSTLC3 2702-2707
        DEPSTDX3 2708-2709
        DEPSMRQ3 2710
        DEPSMTK3 2711
        DEPYEAS3 2712
        DEPHYPH3 2713
        DEPCDRQ3 2714
        DEPSTXT3 2715
        DEPSTLN3 2716-2717
        DEPSTWD3 2718-2719
        DEPSTHT3 2720-2721
        DEPSTMF3 2722
        DEPSTCL3 2723-2725
        DEPSTCS3 2726
        DEPSTPN3 2727
        DEPSTPD3 2728
        DEPSTHS3 2729
        DEPSTLC4 2730-2732
        DEPSTDX4 2733-2734
        DEPSMRQ4 2735
        DEPSMTK4 2736
        DEPYEAS4 2737
        DEPHYPH4 2738
        DEPCDRQ4 2739
        DEPSTXT4 2740
        DEPSTLN4 2741
        DEPSTWD4 2742
        DEPSTHT4 2743
        DEPSTMF4 2744
        DEPSTCL4 2745
        DEPSTCS4 2746
        DEPSTPN4 2747
        DEPSTPD4 2748
        DEPSTHS4 2749
        DEPSTLC5 2750-2751
        DEPSTDX5 2752-2753
        DEPSMRQ5 2754
        DEPSMTK5 2755
        DEPYEAS5 2756
        DEPHYPH5 2757
        DEPCDRQ5 2758
        DEPSTXT5 2759
        DEPSTLN5 2760
        DEPSTWD5 2761
        DEPSTHT5 2762
        DEPSTMF5 2763
        DEPSTCL5 2764
        DEPSTCS5 2765
        DEPSTPN5 2766
        DEPSTPD5 2767
        DEPSTHS5 2768
        DEPSTOT5 2769
        DEPSTLC6 2770-2771
        DEPSTDX6 2772-2773
        DEPSMRQ6 2774
        DEPSMTK6 2775
        DEPYEAS6 2776
        DEPHYPH6 2777
        DEPCDRQ6 2778
        DEPSTXT6 2779
        DEPSTLN6 2780-2781
        DEPSTWD6 2782-2783
        DEPSTHT6 2784
        DEPSTMF6 2785
        DEPSTCL6 2786
        DEPSTCS6 2787
        DEPSTPN6 2788
        DEPSTPD6 2789
        DEPSTHS6 2790
        DEPSTOT6 2791
        DEPRTC1  2792
        DEPRTC2  2793
        DEPRTC3  2794
        DEPRTC4  2795
        DEPRTC5  2796
        DEPRTC6  2797
        DEPRTC7  2798
        DEPRTC8  2799
        DEPRTC9  2800
        DEPRTC10 2801
        DEPRTC11 2802
        DEPRTC12 2803
        DEPRTC13 2804
        DEPRTC14 2805
        DEPRTC15 2806
        DEPRTC16 2807
        DEPRTC17 2808
        DEPRTC18 2809
        DEPRTC19 2810
        DEPRTC20 2811
        DEPRTC21 2812
        DEPRTC22 2813
        DEPRTC23 2814
        DEPRTC24 2815
        DEPRTC25 2816
        DEPRTC26 2817
        DEPRTC27 2818
        DEPRTC28 2819
        DEPUTRA1 2820
        DEPUTRA2 2821
        DEPUTRA3 2822
        DEPUTRA4 2823
        DEPLTRA1 2824
        DEPLTRA2 2825
        DEPLTRA3 2826
        DEPLTRA4 2827
        DEPUAL1  2828-2829
        DEPUAL2  2830-2831
        DEPUAL3  2832-2833
        DEPUAL4  2834-2835
        DEPUAL5  2836-2837
        DEPLAL1  2838-2839
        DEPLAL2  2840-2841
        DEPLAL3  2842-2843
        DEPLAL4  2844-2845
        DEPLAL5  2846-2847
        DEPDIAS  2848
        DEPXBITE 2849
        DEPOVJET 2850-2851
        DEPOPB   2852-2853
        DEPOVB   2854-2855
        DEPDQU1  2856
        DEPDQU2  2857
        DEPDQU3  2858
        DEPDQU4  2859
        DEPDQL1  2860
        DEPDQL2  2861
        DEPDQL3  2862
        DEPDQL4  2863
        DEPUPTYP 2864
        DEPUPAI  2865
        DEPUPAW  2866
        DEPUPARL 2867
        DEPUPAS  2868
        DEPUPART 2869
        DEPLPTYP 2870
        DEPLPAI  2871
        DEPLPAW  2872
        DEPLPARL 2873
        DEPLPAS  2874
        DEPLPART 2875
        ALPQ1    2876
        ALPQ2    2877
        ALPQ3    2878
        ALPQ4    2879
        ALPQ5    2880
        ALPNEGAR 2881
        ALPNEGFL 2882-2884
        ALPNEGFW 2885-2887
        ALPNEGCN 2888
        ALPNEGWL 2889-2891
        ALPNEGWW 2892-2894
        ALPWHIAR 2895
        ALPWHIFL 2896-2898
        ALPWHIFW 2899-2901
        ALPWHICN 2902
        ALPWHIWL 2903-2905
        ALPWHIWW 2906-2908
        ALPCATAR 2909
        ALPCATFL 2910-2912
        ALPCATFW 2913-2915
        ALPCATCN 2916
        ALPCATWL 2917-2919
        ALPCATWW 2920-2922
        ALPMITAR 2923
        ALPMITFL 2924-2926
        ALPMITFW 2927-2929
        ALPMITCN 2930
        ALPMITWL 2931-2933
        ALPMITWW 2934-2936
        ALPALTAR 2937
        ALPALTFL 2938-2940
        ALPALTFW 2941-2943
        ALPALTCN 2944
        ALPALTWL 2945-2947
        ALPALTWW 2948-2950
        ALPRYEAR 2951
        ALPRYEFL 2952-2954
        ALPRYEFW 2955-2957
        ALPRYECN 2958
        ALPRYEWL 2959-2961
        ALPRYEWW 2962-2964
        ALPPEAAR 2965
        ALPPEAFL 2966-2968
        ALPPEAFW 2969-2971
        ALPPEACN 2972
        ALPPEAWL 2973-2975
        ALPPEAWW 2976-2978
        ALPTHIAR 2979
        ALPTHIFL 2980-2982
        ALPTHIFW 2983-2985
        ALPTHICN 2986
        ALPTHIWL 2987-2989
        ALPTHIWW 2990-2992
        ALPCOCAR 2993
        ALPCOCFL 2994-2996
        ALPCOCFW 2997-2999
        ALPCOCCN 3000
        ALPCOCWL 3001-3003
        ALPCOCWW 3004-3006
        ALPBERAR 3007
        ALPBERFL 3008-3010
        ALPBERFW 3011-3013
        ALPBERCN 3014
        ALPBERWL 3015-3017
        ALPBERWW 3018-3020
        ALPRAGAR 3021
        ALPRAGFL 3022-3024
        ALPRAGFW 3025-3027
        ALPRAGCN 3028
        ALPRAGWL 3029-3031
        ALPRAGWW 3032-3034
        ALPPSCAR 3035
        ALPPSCFL 3036-3038
        ALPPSCFW 3039-3041
        ALPPSCCN 3042
        ALPPSCWL 3043-3045
        ALPPSCWW 3046-3048
        ALPTECH1 3049-3053
        ALPTECH2 3054-3058
        AUPA1    3059
        AUPA2    3060
        AUPA3    3061
        AUPA4    3062-3063
        AUPA5    3064
        AUPA6    3065-3066
        AUPA7    3067
        AUPA8    3068
        AUPA9    3069
        AUPA10   3070
        AUPAUDO1 3071-3074
        AUPB1A1  3075-3077
        AUPB1A2  3078-3080
        AUPB1A3  3081-3083
        AUPB1A4  3084-3086
        AUPB1A5  3087-3089
        AUPB1A6  3090-3092
        AUPB1A7  3093-3095
        AUPB1A8  3096-3098
        AUPB2A1  3099-3101
        AUPB2A2  3102-3104
        AUPB2A3  3105-3107
        AUPB2A4  3108-3110
        AUPB2A5  3111-3113
        AUPB2A6  3114-3116
        AUPB2A7  3117-3119
        AUPB2A8  3120-3122
        AUPAUDO2 3123-3126
        AUPB1C1  3127-3129
        AUPB1C2  3130-3132
        AUPB1C3  3133-3135
        AUPB1C4  3136-3138
        AUPB1C5  3139-3141
        AUPB1C6  3142-3144
        AUPB1C7  3145-3147
        AUPB1C8  3148-3150
        AUPB2C1  3151-3153
        AUPB2C2  3154-3156
        AUPB2C3  3157-3159
        AUPB2C4  3160-3162
        AUPB2C5  3163-3165
        AUPB2C6  3166-3168
        AUPB2C7  3169-3171
        AUPB2C8  3172-3174
        AUPTECH  3175-3179
        TYPCMPLL 3180-3182
        TYPCMPLR 3183-3185
        TYPPRSPL 3186-3189
        TYPPRSPR 3190-3193
        TYPVOLL  3194-3196
        TYPVOLR  3197-3199
        TYPRFXL  3200-3202
        TYPRFXR  3203-3205
        TYPC000L 3206-3210
        TYPC001L 3211-3215
        TYPC002L 3216-3220
        TYPC003L 3221-3225
        TYPC004L 3226-3230
        TYPC005L 3231-3235
        TYPC006L 3236-3240
        TYPC007L 3241-3245
        TYPC008L 3246-3250
        TYPC009L 3251-3255
        TYPC010L 3256-3260
        TYPC011L 3261-3265
        TYPC012L 3266-3270
        TYPC013L 3271-3275
        TYPC014L 3276-3280
        TYPC015L 3281-3285
        TYPC016L 3286-3290
        TYPC017L 3291-3295
        TYPC018L 3296-3300
        TYPC019L 3301-3305
        TYPC020L 3306-3310
        TYPC021L 3311-3315
        TYPC022L 3316-3320
        TYPC023L 3321-3325
        TYPC024L 3326-3330
        TYPC025L 3331-3335
        TYPC026L 3336-3340
        TYPC027L 3341-3345
        TYPC028L 3346-3350
        TYPC029L 3351-3355
        TYPC030L 3356-3360
        TYPC031L 3361-3365
        TYPC032L 3366-3370
        TYPC033L 3371-3375
        TYPC034L 3376-3380
        TYPC035L 3381-3385
        TYPC036L 3386-3390
        TYPC037L 3391-3395
        TYPC038L 3396-3400
        TYPC039L 3401-3405
        TYPC040L 3406-3410
        TYPC041L 3411-3415
        TYPC042L 3416-3420
        TYPC043L 3421-3425
        TYPC044L 3426-3430
        TYPC045L 3431-3435
        TYPC046L 3436-3440
        TYPC047L 3441-3445
        TYPC048L 3446-3450
        TYPC049L 3451-3455
        TYPC050L 3456-3460
        TYPC051L 3461-3465
        TYPC052L 3466-3470
        TYPC053L 3471-3475
        TYPC054L 3476-3480
        TYPC055L 3481-3485
        TYPC056L 3486-3490
        TYPC057L 3491-3495
        TYPC058L 3496-3500
        TYPC059L 3501-3505
        TYPC060L 3506-3510
        TYPC061L 3511-3515
        TYPC062L 3516-3520
        TYPC063L 3521-3525
        TYPC064L 3526-3530
        TYPC065L 3531-3535
        TYPC066L 3536-3540
        TYPC067L 3541-3545
        TYPC068L 3546-3550
        TYPC069L 3551-3555
        TYPC070L 3556-3560
        TYPC071L 3561-3565
        TYPC072L 3566-3570
        TYPC073L 3571-3575
        TYPC074L 3576-3580
        TYPC075L 3581-3585
        TYPC076L 3586-3590
        TYPC077L 3591-3595
        TYPC078L 3596-3600
        TYPC079L 3601-3605
        TYPC080L 3606-3610
        TYPC081L 3611-3615
        TYPC082L 3616-3620
        TYPC083L 3621-3625
        TYPC084L 3626-3630
        TYPC085L 3631-3635
        TYPC086L 3636-3640
        TYPC087L 3641-3645
        TYPC088L 3646-3650
        TYPC089L 3651-3655
        TYPC090L 3656-3660
        TYPC091L 3661-3665
        TYPC092L 3666-3670
        TYPC093L 3671-3675
        TYPC094L 3676-3680
        TYPC095L 3681-3685
        TYPC096L 3686-3690
        TYPC097L 3691-3695
        TYPC098L 3696-3700
        TYPC099L 3701-3705
        TYPC100L 3706-3710
        TYPC101L 3711-3715
        TYPC102L 3716-3720
        TYPC103L 3721-3725
        TYPC104L 3726-3730
        TYPC105L 3731-3735
        TYPC106L 3736-3740
        TYPC107L 3741-3745
        TYPC108L 3746-3750
        TYPC109L 3751-3755
        TYPC110L 3756-3760
        TYPC111L 3761-3765
        TYPC112L 3766-3770
        TYPC113L 3771-3775
        TYPC114L 3776-3780
        TYPC115L 3781-3785
        TYPC116L 3786-3790
        TYPC117L 3791-3795
        TYPC118L 3796-3800
        TYPC119L 3801-3805
        TYPC120L 3806-3810
        TYPC000R 3811-3815
        TYPC001R 3816-3820
        TYPC002R 3821-3825
        TYPC003R 3826-3830
        TYPC004R 3831-3835
        TYPC005R 3836-3840
        TYPC006R 3841-3845
        TYPC007R 3846-3850
        TYPC008R 3851-3855
        TYPC009R 3856-3860
        TYPC010R 3861-3865
        TYPC011R 3866-3870
        TYPC012R 3871-3875
        TYPC013R 3876-3880
        TYPC014R 3881-3885
        TYPC015R 3886-3890
        TYPC016R 3891-3895
        TYPC017R 3896-3900
        TYPC018R 3901-3905
        TYPC019R 3906-3910
        TYPC020R 3911-3915
        TYPC021R 3916-3920
        TYPC022R 3921-3925
        TYPC023R 3926-3930
        TYPC024R 3931-3935
        TYPC025R 3936-3940
        TYPC026R 3941-3945
        TYPC027R 3946-3950
        TYPC028R 3951-3955
        TYPC029R 3956-3960
        TYPC030R 3961-3965
        TYPC031R 3966-3970
        TYPC032R 3971-3975
        TYPC033R 3976-3980
        TYPC034R 3981-3985
        TYPC035R 3986-3990
        TYPC036R 3991-3995
        TYPC037R 3996-4000
        TYPC038R 4001-4005
        TYPC039R 4006-4010
        TYPC040R 4011-4015
        TYPC041R 4016-4020
        TYPC042R 4021-4025
        TYPC043R 4026-4030
        TYPC044R 4031-4035
        TYPC045R 4036-4040
        TYPC046R 4041-4045
        TYPC047R 4046-4050
        TYPC048R 4051-4055
        TYPC049R 4056-4060
        TYPC050R 4061-4065
        TYPC051R 4066-4070
        TYPC052R 4071-4075
        TYPC053R 4076-4080
        TYPC054R 4081-4085
        TYPC055R 4086-4090
        TYPC056R 4091-4095
        TYPC057R 4096-4100
        TYPC058R 4101-4105
        TYPC059R 4106-4110
        TYPC060R 4111-4115
        TYPC061R 4116-4120
        TYPC062R 4121-4125
        TYPC063R 4126-4130
        TYPC064R 4131-4135
        TYPC065R 4136-4140
        TYPC066R 4141-4145
        TYPC067R 4146-4150
        TYPC068R 4151-4155
        TYPC069R 4156-4160
        TYPC070R 4161-4165
        TYPC071R 4166-4170
        TYPC072R 4171-4175
        TYPC073R 4176-4180
        TYPC074R 4181-4185
        TYPC075R 4186-4190
        TYPC076R 4191-4195
        TYPC077R 4196-4200
        TYPC078R 4201-4205
        TYPC079R 4206-4210
        TYPC080R 4211-4215
        TYPC081R 4216-4220
        TYPC082R 4221-4225
        TYPC083R 4226-4230
        TYPC084R 4231-4235
        TYPC085R 4236-4240
        TYPC086R 4241-4245
        TYPC087R 4246-4250
        TYPC088R 4251-4255
        TYPC089R 4256-4260
        TYPC090R 4261-4265
        TYPC091R 4266-4270
        TYPC092R 4271-4275
        TYPC093R 4276-4280
        TYPC094R 4281-4285
        TYPC095R 4286-4290
        TYPC096R 4291-4295
        TYPC097R 4296-4300
        TYPC098R 4301-4305
        TYPC099R 4306-4310
        TYPC100R 4311-4315
        TYPC101R 4316-4320
        TYPC102R 4321-4325
        TYPC103R 4326-4330
        TYPC104R 4331-4335
        TYPC105R 4336-4340
        TYPC106R 4341-4345
        TYPC107R 4346-4350
        TYPC108R 4351-4355
        TYPC109R 4356-4360
        TYPC110R 4361-4365
        TYPC111R 4366-4370
        TYPC112R 4371-4375
        TYPC113R 4376-4380
        TYPC114R 4381-4385
        TYPC115R 4386-4390
        TYPC116R 4391-4395
        TYPC117R 4396-4400
        TYPC118R 4401-4405
        TYPC119R 4406-4410
        TYPC120R 4411-4415
        TYPTECH  4416-4420
        WWPMRSR  4421-4423
        WWPRRSR  4424-4426
        WWPMSSR  4427-4429
        WWPRSSR  4430-4432
        WWPMSCSR 4433-4434
        WWPRSCSR 4435-4436
        WWPBSCSR 4437-4438
        WWPDSCSR 4439-4440
        WWPLANG  4441
        WWPTECH  4442-4446
        SPPQ1    4447
        SPPQ2    4448
        SPPQ3    4449
        SPPQ4    4450
        SPPQ5    4451
        HXPEJ6A2 4452
        SPPTECH1 4453-4457
        SPPTRIAL 4458-4459
        SPPPEAK  4460-4464
        SPPFEV05 4465-4468
        SPPFEV1  4469-4472
        SPPFEV3  4473-4477
        SPPFEV6  4478-4482
        SPPFVC   4483-4487
        SPPMMEF  4488-4492
        SPPTYPE  4493
        SPPREPRO 4494
        SPPRELIA 4495
        SPPMANEU 4496-4497
        SPPTIME  4498-4502
        SPPEXPIR 4503-4504
        SPPFEF75 4505-4508
        SPPTEMP  4509-4510
        MYPA1    4511-4512
        MYPA2    4513
        MYPA3    4514
        MYPB1    4515
        MYPB2    4516-4517
        MYPB3    4518
        MYPB4    4519-4520
        MYPB5    4521
        MYPB6R   4522-4523
        MYPB7R   4524-4525
        MYPB8    4526
        MYPB9S   4527-4528
        MYPB10   4529
        MYPB11   4530-4532
        MYPB12   4533-4534
        MYPB13S  4535-4537
        MYPB14   4538
        MYPB15   4539
        MYPB16   4540-4541
        MYPB17   4542
        MYPB18   4543-4544
        MYPB19   4545
        MYPB20   4546
        MYPB21AS 4547-4548
        MYPB21CS 4549-4550
        MYPB22A  4551
        MYPB22B  4552
        MYPB23   4553
        MYPB24   4554-4555
        MYPB25   4556
        MYPB26   4557
        MYPB27A  4558
        MYPB27B  4559-4560
        MYPB28   4561
        MYPB29   4562-4563
        MYPC1A   4564
        MYPC2    4565-4566
        MYPC3    4567-4568
        MYPC4    4569
        MYPC5    4570
        MYPC6    4571-4572
        MYPC7S   4573-4574
        MYPC8S   4575-4576
        MYPC9R   4577-4579
        MYPC10   4580
        MYPC11   4581
        MYPC12   4582
        MYPC13R  4583-4584
        MYPC14   4585-4586
        MYPC15   4587
        MYPC16   4588
        MYPC17   4589
        MYPC18   4590-4591
        MYPC19   4592
        MYPC20   4593
        MYPC21   4594
        MYPC22   4595
        MYPC23S  4596-4597
        MYPC24   4598
        MYPC25   4599
        MYPC26   4600
        MYPC27R  4601
        MYPC28   4602-4603
        MYPD1    4604
        MYPD2    4605-4606
        MYPD3    4607
        MYPD4    4608
        MYPD5    4609
        MYPE1    4610
        MYPE2    4611
        MYPE3    4612
        MYPE4    4613
        MYPE5    4614
        MYPE6    4615
        MYPE7A   4616
        MYPE7B   4617
        MYPE7C   4618
        MYPE7D   4619
        MYPE7E   4620
        MYPE7F   4621
        MYPE7G   4622
        MYPE7H   4623
        MYPE7I   4624
        MYPE7J   4625
        MYPE7K   4626
        MYPF1    4627
        MYPF2    4628
        MYPF3S   4629-4631
        MYPF4    4632-4633
        MYPF5S   4634-4636
        MYPF6S   4637-4639
        MYPF7    4640
        MYPF8    4641
        MYPF9    4642-4643
        MYPF10   4644
        MYPF11   4645
        MYPF12   4646
        MYPH1    4647
        MYPH2    4648
        MYPH3    4649
        MYPEXMNR 4650-4653
        FFP1AS   4654-4656
        FFP1BS   4657-4659
        FFP1D1   4660-4661
        FFP1ES   4662-4664
        FFP1FS   4665-4667
        FFP1GS   4668-4670
        FFP1HS   4671-4673
        FFP1IS   4674-4676
        FFP2AS   4677-4679
        FFP2BS   4680-4682
        FFP2CS   4683-4685
        FFP2DS   4686-4688
        FFP2ES   4689-4691
        FFP2FS   4692-4694
        FFP2GS   4695-4696
        FFP2HS   4697-4699
        FFP2IS   4700-4702
        FFP2JS   4703-4705
        FFP3AS   4706-4708
        FFP3BS   4709-4711
        FFP3CS   4712-4714
        FFP3DS   4715-4717
        FFP3ES   4718-4720
        FFP3FS   4721-4723
        FFP4AS   4724-4726
        FFP4BS   4727-4729
        FFP4CS   4730-4732
        FFP4DS   4733-4735
        FFP4ES   4736-4737
        FFP4FS   4738-4740
        FFP4GS   4741-4743
        FFP4HS   4744-4746
        FFP4IS   4747-4749
        FFP4JS   4750-4752
        FFP4KS   4753-4755
        FFP4LS   4756-4758
        FFP5AS   4759-4761
        FFP5BS   4762-4764
        FFP5CS   4765-4767
        FFP5DS   4768-4770
        FFP5ES   4771-4773
        FFP5FS   4774-4776
        FFP5GS   4777-4779
        FFP5HS   4780-4782
        FFP5IS   4783-4785
        FFP5JS   4786-4788
        FFP5KS   4789-4791
        FFP5LS   4792-4794
        FFP6AS   4795-4797
        FFP6BS   4798-4800
        FFP6CS   4801-4803
        FFP6DS   4804-4806
        FFP6ES   4807-4809
        FFP6FS   4810-4812
        FFP6GS   4813-4815
        FFP6HS   4816-4818
        FFP6IS   4819-4820
        FFP6JS   4821-4822
        FFP7AS   4823-4825
        FFP7BS   4826-4828
        FFP7CS   4829-4831
        FFP8AFC  4832-4833
        FFP8AS   4834-4836
        FFP8BFC  4837-4838
        FFP8BS   4839
        FFP10    4840
        FFPEXMNR 4841-4844
        MQPDLANG 4845
        MQPDPFLG 4846
        MQPMNFLG 4847
        MQPHCFLG 4848
        MQPG01   4849
        MQPG02   4850
        MQPG03   4851
        MQPG04   4852
        MQPG05L  4853-4854
        MQPG0501 4855
        MQPG06L  4856-4857
        MQPG0601 4858
        MQPG07L  4859-4860
        MQPG0701 4861
        MQPDGP1L 4862
        MQPG08L  4863-4864
        MQPG0801 4865
        MQPG09L  4866-4867
        MQPG0901 4868
        MQPDGP2L 4869
        MQPG10L  4870-4871
        MQPG1001 4872
        MQPDGP3L 4873
        MQPG11L  4874-4875
        MQPG1101 4876
        MQPG12L  4877-4878
        MQPG1201 4879
        MQPDGP4L 4880
        MQPG13L  4881-4882
        MQPG1301 4883
        MQPG1302 4884
        MQPG1303 4885
        MQPG1304 4886
        MQPDGP5L 4887
        MQPG14L  4888-4889
        MQPDGP6L 4890
        MQPG15L  4891-4892
        MQPG1501 4893
        MQPG16L  4894-4895
        MQPG1601 4896
        MQPDGP7L 4897
        MQPG17L  4898-4899
        MQPG18L  4900-4901
        MQPG19L  4902-4903
        MQPG20L  4904-4905
        MQPDGP8L 4906
        MQPG21   4907
        MQPG22   4908
        MQPG23   4909
        MQPG24   4910
        MQPG25   4911
        MQPG26   4912-4915
        MQPG27   4916-4918
        MQPG28   4919
        MQPG29   4920
        MQPG30   4921
        MQPG31   4922
        MQPG32   4923-4924
        MQPG33   4925
        MQPG34   4926
        MQPG35   4927
        MQPG36   4928
        MQPG37   4929-4930
        MQPG38   4931
        MQPG39   4932-4933
        MQPG05W  4934
        MQPG06W  4935
        MQPG07W  4936
        MQPG08W  4937
        MQPG09W  4938
        MQPG10W  4939
        MQPG11W  4940
        MQPG12W  4941
        MQPG13W  4942
        MQPG14W  4943
        MQPG15W  4944
        MQPG16W  4945
        MQPG17W  4946
        MQPG18W  4947
        MQPG19W  4948
        MQPG20W  4949
        MQPG41L  4950-4951
        MQPG42L  4952-4953
        MQPG43L  4954-4955
        MQPG44L  4956-4957
        MQPG45L  4958-4959
        MQPG46L  4960-4961
        MQPG47L  4962-4963
        MQPG47EX 4964
        MQPG48L  4965-4966
        MQPG49L  4967-4968
        MQPG50   4969
        MQPG51   4970
        MQPG52   4971
        MQPG53   4972
        MQPG54   4973
        MQPG55   4974-4977
        MQPG56   4978-4980
        MQPG57   4981
        MQPG58   4982
        MQPG59   4983
        MQPG60   4984
        MQPG61   4985-4986
        MQPG62   4987
        MQPG63   4988
        MQPG64   4989-4990
        MQPG65   4991
        MQPG66   4992-4993
        MQPG42W  4994
        MQPG43W  4995
        MQPG44W  4996
        MQPG45W  4997
        MQPG46W  4998
        MQPG47W  4999
        MQPG48W  5000
        MQPG49W  5001
        MQPDGP1W 5002
        MQPDGP2W 5003
        MQPDGP3W 5004
        MQPDGP4W 5005
        MQPDGP5W 5006
        MQPDGP6W 5007
        MQPDGP7W 5008
        MQPDGP8W 5009
        MQPDGPSW 5010-5011
        MQPDYSFR 5012
        MQPDPSX1 5013-5014
        MQPDEP   5015-5016
        MQPFDDP  5017-5018
        MQPLDDP  5019-5020
        MQPDPSX2 5021-5022
        MQPMNG1W 5023
        MQPMNG2W 5024
        MQPMNG3W 5025
        MQPMNG4W 5026
        MQPMNG5W 5027
        MQPMNG6W 5028
        MQPMNG7W 5029
        MQPMNGSW 5030-5031
        MQPEUFOR 5032
        MQPMNSX1 5033-5034
        MQPMANIA 5035-5036
        MQPFDMN  5037-5038
        MQPLDMN  5039-5040
        MQPMNSX2 5041-5042
        MQPDEPSE 5043-5044
        MQPFDDSE 5045-5046
        MQPLDDSE 5047-5048
        MQPDEPRT 5049-5050
        MQPFDDRT 5051-5052
        MQPLDDRT 5053-5054
        MQPDYSA  5055
        MQPDYSD  5056-5057
        MQPDYSTH 5058-5059
        MQPBIPOL 5060-5061
        MQPFDBI  5062-5063
        MQPLDBI  5064-5065
        MQPBIPII 5066-5067
        MQPFDBII 5068-5069
        MQPLDBII 5070-5071
        MAPA1    5072-5074
        MAPA2A   5075-5077
        MAPA2B   5078-5079
        MAPA3    5080-5081
        MAPA4    5082-5083
        MAPB1    5084
        MAPB2A   5085
        MAPB2B   5086
        MAPB2C   5087
        MAPB2D   5088
        MAPB2E   5089
        MAPB2F   5090
        MAPC1    5091
        MAPC2    5092
        MAPC3    5093-5094
        MAPC4    5095-5096
        MAPC5    5097-5098
        MAPC6    5099
        MAPC7    5100
        MAPC8    5101
        MAPD1    5102
        MAPD2A   5103
        MAPD2B   5104
        MAPD2C   5105
        MAPD2D   5106
        MAPD2E   5107
        MAPD2F   5108
        MAPE1    5109
        MAPE2    5110
        MAPE3S   5111-5113
        MAPE4    5114-5116
        MAPE5S   5117-5119
        MAPE6S   5120-5122
        MAPE7    5123
        MAPE8    5124
        MAPE9    5125
        MAPE10   5126
        MAPE11   5127-5128
        MAPE12   5129
        MAPE13   5130
        MAPE14   5131-5132
        MAPF1    5133
        MAPF2    5134-5135
        MAPF3    5136
        MAPF4    5137
        MAPF5    5138-5139
        MAPF6    5140-5141
        MAPF7R   5142-5143
        MAPF8    5144-5145
        MAPF9    5146
        MAPF10   5147-5148
        MAPF11   5149
        MAPF12   5150
        MAPF12R  5151
        MAPF13   5152-5153
        MAPF14   5154
        MAPF15   5155
        MAPF16   5156
        MAPF17   5157
        MAPF18S  5158-5160
        MAPF19   5161
        MAPF20   5162
        MAPF21   5163
        MAPF22   5164-5165
        MAPF23   5166-5168
        MAPF24   5169-5170
        MAPF25   5171
        MAPF26   5172-5174
        MAPF27   5175
        MAPF28   5176
        MAPF29   5177-5179
        MAPF30   5180
        MAPF31   5181-5182
        MAPF32S  5183-5185
        MAPF33S  5186-5188
        MAPF34R  5189-5191
        MAPF34CK 5192
        MAPF34A  5193
        MAPF34B  5194
        MAPF34CS 5195-5196
        MAPF35   5197
        MAPF36   5198
        MAPF37   5199
        MAPF38   5200-5202
        MAPF39S  5203-5206
        MAPF40   5207-5208
        MAPF41   5209
        MAPF42   5210-5212
        MAPF43S  5213-5216
        MAPF44   5217-5218
        MAPF45   5219
        MAPF46   5220-5222
        MAPF47S  5223-5225
        MAPF48   5226-5227
        MAPF49   5228
        MAPF50   5229-5230
        MAPF51   5231-5234
        MAPF52   5235
        MAPF53   5236
        MAPF54R  5237-5240
        MAPF55   5241-5244
        MAPF56   5245-5247
        MAPF57   5248
        MAPH1    5249
        MAPH1OS  5250-5251
        MAPH2    5252
        MAPH3    5253
        MAPLANG  5254
        MAPEXMNR 5255-5258
        BDPTECH  5259-5263
        BDPEXFLR 5264
        BDPSCAN  5265
        BDPSIDE  5266
        BDPFNARE 5267-5270
        BDPFNBMC 5271-5275
        BDPFNBMD 5276-5280
        BDPTRARE 5281-5285
        BDPTRBMC 5286-5290
        BDPTRBMD 5291-5295
        BDPINARE 5296-5300
        BDPINBMC 5301-5305
        BDPINBMD 5306-5310
        BDPWTARE 5311-5315
        BDPWTBMC 5316-5320
        BDPWTBMD 5321-5325
        BDPTOARE 5326-5330
        BDPTOBMC 5331-5335
        BDPTOBMD 5336-5340
        BDPK     5341-5345
        BDPD0    5346-5350
        HXPB1    5351
        HXPB2A   5352
        HXPB2B   5353
        HXPB2C   5354
        HXPB2D   5355
        HXPB2E   5356
        HXPB2F   5357
        HXPB2G   5358
        HXPB2H   5359
        HXPB2I   5360
        HXPB2J   5361
        HXPB2K   5362
        HXPB2L   5363
        HXPB2M   5364
        HXPB2N   5365
        HXPB2O   5366
        HXPD1    5367
        HXPD2A   5368
        HXPD2B   5369
        HXPD2C   5370
        HXPD2D   5371
        HXPD2E   5372
        HXPD2F   5373
        HXPE1    5374
        HXPE2    5375-5376
        HXPE3    5377-5378
        HXPE4    5379-5380
        HXPE5    5381
        HXPE6    5382
        HXPE7    5383
        HXPE8    5384
        HXPF1    5385
        HXPF2A   5386
        HXPF2B   5387
        HXPF2C   5388
        HXPF2D   5389
        HXPF2E   5390
        HXPF2F   5391
        HXPG1    5392-5394
        HXPG2A   5395-5396
        HXPG2B   5397-5398
        HXPG3    5399-5400
        HXPG4    5401
        HXPH1    5402
        HXPH2    5403-5404
        HXPH3    5405
        HXPH4    5406
        HXPH5    5407-5408
        HXPH6    5409-5410
        HXPH7    5411-5413
        HXPH8    5414-5415
        HXPH9    5416
        HXPH10   5417-5419
        HXPH11   5420
        HXPH12   5421
        HXPH13   5422-5424
        HXPH14   5425
        HXPH15   5426-5427
        HXPH16S  5428-5432
        HXPH17S  5433-5435
        HXPH18   5436
        HXPH19   5437
        HXPH20   5438-5440
        HXPH21S  5441-5444
        HXPH22   5445-5446
        HXPLANG  5447-5448
        HXPEXMNR 5449-5452
        GUPQ7    5453
        GUPQ8A1  5454
        GUPQ8A2  5455
        GUPQ8A3  5456
        GUPQ8A4  5457
        GUPQ8A5  5458
        GUPQ8A6  5459
        GUPQ18   5460-5461
        GUPQ24R  5462-5463
        GUPQ37R  5464
        GUPQ38R  5465
        GUPLCSTR 5466
        GUPLCSZE 5467-5469
        GUPRCSTR 5470
        GUPRCSZE 5471-5474
        GUPLHMGR 5475
        GUPCHSZE 5476-5478
        GUPTDX1R 5479-5480
        GUPTDX2R 5481-5482
        GUPR1ID  5483
        GUPR1DX1 5484-5485
        GUPR1DX2 5486-5487
        GUPR1CNF 5488
        GUPR1QLT 5489
        GUPR2ID  5490
        GUPFDX1R 5491-5492
        GUPFDX2R 5493-5494
        GUPGBPSZ 5495-5496
        GUPTECH  5497-5501
        CNPQ01   5502
        CNPQ02   5503
        CNPQ03   5504
        CNPQ04   5505
        CNPQ05   5506
        CNPQ06   5507
        CNPQ07   5508
        CNPQ08   5509
        CNPQ09   5510
        CNPQ10   5511
        CNPLANG  5512
        CNPTEMP  5513-5515
        CNPTECH  5516-5520
        CNPNBPH  5521
        CNPRT01  5522-5525
        CNPRT02  5526-5529
        CNPRT03  5530-5533
        CNPRT04  5534-5537
        CNPRT05  5538-5541
        CNPRT06  5542-5545
        CNPRT07  5546-5549
        CNPRT08  5550-5553
        CNPRT09  5554-5557
        CNPRT10  5558-5561
        CNPRT11  5562-5565
        CNPRT12  5566-5569
        CNPRT13  5570-5573
        CNPRT14  5574-5577
        CNPRT15  5578-5581
        CNPRT16  5582-5585
        CNPRT17  5586-5589
        CNPRT18  5590-5593
        CNPRT19  5594-5597
        CNPRT20  5598-5601
        CNPRT21  5602-5605
        CNPRT22  5606-5609
        CNPRT23  5610-5613
        CNPRT24  5614-5617
        CNPRT25  5618-5621
        CNPRT26  5622-5625
        CNPRT27  5626-5629
        CNPRT28  5630-5633
        CNPRT29  5634-5637
        CNPRT30  5638-5641
        CNPRT31  5642-5645
        CNPRT32  5646-5649
        CNPRT33  5650-5653
        CNPRT34  5654-5657
        CNPRT35  5658-5661
        CNPRT36  5662-5665
        CNPRT37  5666-5669
        CNPRT38  5670-5673
        CNPRT39  5674-5677
        CNPRT40  5678-5681
        CNPRT41  5682-5685
        CNPRT42  5686-5689
        CNPRT43  5690-5693
        CNPRT44  5694-5697
        CNPRT45  5698-5701
        CNPRT46  5702-5705
        CNPRT47  5706-5709
        CNPRT48  5710-5713
        CNPRT49  5714-5717
        CNPRT50  5718-5721
        CNPMENRT 5722-5729
        CNPSDRT  5730-5737
        CNP1ERR  5738-5739
        CNP1LAT1 5740-5744
        CNP1LAT2 5745-5749
        CNP1LAT3 5750-5754
        CNP1LAT4 5755-5759
        CNP1LAT5 5760-5764
        CNP1LAT6 5765-5769
        CNP1LAT7 5770-5774
        CNP1LAT8 5775-5779
        CNP1LAT9 5780-5784
        CNP1TOTL 5785-5790
        CNPCORR1 5791-5792
        CNPCLAT1 5793-5798
        CNP2ERR  5799-5800
        CNP2LAT1 5801-5805
        CNP2LAT2 5806-5810
        CNP2LAT3 5811-5815
        CNP2LAT4 5816-5820
        CNP2LAT5 5821-5825
        CNP2LAT6 5826-5830
        CNP2LAT7 5831-5835
        CNP2LAT8 5836-5840
        CNP2LAT9 5841-5845
        CNP2TOTL 5846-5851
        CNPCORR2 5852-5853
        CNPCLAT2 5854-5859
        CNP3ERR  5860-5861
        CNP3LAT1 5862-5866
        CNP3LAT2 5867-5871
        CNP3LAT3 5872-5876
        CNP3LAT4 5877-5881
        CNP3LAT5 5882-5886
        CNP3LAT6 5887-5891
        CNP3LAT7 5892-5896
        CNP3LAT8 5897-5901
        CNP3LAT9 5902-5906
        CNP3TOTL 5907-5912
        CNPCORR3 5913-5914
        CNPCLAT3 5915-5920
        CNP4ERR  5921-5922
        CNP4LAT1 5923-5927
        CNP4LAT2 5928-5932
        CNP4LAT3 5933-5937
        CNP4LAT4 5938-5942
        CNP4LAT5 5943-5947
        CNP4LAT6 5948-5952
        CNP4LAT7 5953-5957
        CNP4LAT8 5958-5962
        CNP4LAT9 5963-5967
        CNP4TOTL 5968-5973
        CNPCORR4 5974-5975
        CNPCLAT4 5976-5981
        CNPCBEST 5982-5986
        CNPT0TRA 5987
        CNP1SCOR 5988
        CNP2SCOR 5989
        CNP3SCOR 5990
        CNP4SCOR 5991
        CNP5SCOR 5992
        CNP6SCOR 5993
        CNP7SCOR 5994
        CNP8SCOR 5995
        CNPTSTOC 5996-5997
        CNPTTSCR 5998-5999
        FPPPHOTO 6000
        FPP1A    6001
        FPP1B    6002
        FPP2     6003-6004
        FPP3     6005-6006
        FPP4MIN  6007-6008
        FPP4SEC  6009-6010
        FPPPHTG  6011-6015
        FPPEYE   6016
        FPP1005  6017-6019
        FPP1020  6020-6021
        FPP1030  6022-6023
        FPP1041  6024-6025
        FPP1046  6026-6027
        FPP1047  6028-6029
        FPP1050  6030-6031
        FPP1051  6032-6033
        FPP1052  6034-6035
        FPP1053  6036-6037
        FPP1054  6038-6039
        FPP1055  6040-6041
        FPP1056  6042-6043
        FPP1057  6044-6045
        FPP1059  6046-6047
        FPP1060  6048-6049
        FPP1070  6050-6052
        FPP1080  6053-6054
        FPP1090  6055-6056
        FPP1100  6057-6058
        FPP1110  6059-6060
        FPP1120  6061-6062
        FPP1130  6063-6064
        FPP1140  6065-6066
        FPP1150  6067-6068
        FPP1160  6069-6070
        FPP1170  6071-6072
        FPP1172  6073-6074
        FPP1173  6075-6076
        FPP1174  6077-6078
        FPP1175  6079-6080
        FPP1176  6081-6082
        FPP1177  6083-6084
        FPP1178  6085-6086
        FPP1179  6087-6088
        FPP1180  6089-6090
        FPP1181  6091-6092
        FPP1182  6093-6094
        FPP1183  6095-6096
        FPP1184  6097-6098
        FPP1185  6099-6100
        FPP1186  6101-6102
        FPP1188  6103-6104
        FPP1189  6105-6106
        FPP1190  6107-6108
        FPP1191  6109-6110
        FPP1192  6111-6112
        FPP1193  6113-6114
        FPP1194  6115-6116
        FPP1196  6117-6118
        FPP1197  6119-6120
        FPP1198  6121-6122
        FPP1199  6123-6124
        FPP1200  6125-6126
        FPP1201  6127-6128
        FPP1202  6129-6130
        FPP1203  6131-6132
        FPP1204  6133-6134
        FPP1205  6135-6136
        FPP1206  6137-6138
        FPP1207  6139-6140
        FPP1208  6141-6142
        FPP1209  6143-6144
        FPP1210  6145-6146
        FPP1211  6147-6148
        FPP1212  6149-6150
        FPP1214  6151-6152
        FPP1220  6153-6154
        FPP1221  6155-6156
        FPP1228  6157-6158
        FPP1230  6159-6160
        FPP1240  6161-6162
        FPP1250  6163-6164
        FPP1260  6165-6166
        FPP1262  6167-6168
        FPP1264  6169-6170
        FPP1266  6171-6172
        FPPSURET 6173-6174
        FPPSUMAC 6175-6176
        FPPSUDRU 6177-6178
        PFPHHS   6179-6180
        PFPRSER  6181
        PFPLSER  6182
        PFPRSIR  6183
        PFPLSIR  6184
        PFPUKEY  6185
        PFPHKEY  6186
        PFPTKEY  6187-6190
        HXPBED   6191
        PFPWC    6192
        PFPUPWC  6193
        PFPSCOOT 6194
        PFPUSTND 6195
        PFPTSTND 6196-6199
        PFPNSTND 6200-6201
        HXPCHAIR 6202-6205
        PFPRFLEX 6206
        PFPLFLEX 6207
        PFPSTAND 6208
        PFPTTAND 6209-6212
        PFPOWALK 6213
        PFPRWALK 6214
        PFPTWLKA 6215-6218
        PFPNSTPA 6219-6220
        PFPTWLKB 6221-6224
        PFPNSTPB 6225-6226
        PFPPAIN  6227
        PFPDEVIC 6228
        PFPTECH  6229-6233
     ;

      LABEL
        SEQN     = "Respondent identification number"
        DMPFSEQ  = "Family sequence number"
        DMPSTAT  = "Examination/interview status"
        DMARETHN = "Race-ethnicity"
        DMARACER = "Race"
        DMAETHNR = "Ethnicity"
        HSSEX    = "Sex"
        HSAGEIR  = "Age at interview (Screener)"
        HSAGEU   = "Age at interview-unit (Screener)"
        HSAITMOR = "Age in months at interview (screener)"
        HSFSIZER = "Family size (persons in family)"
        HSHSIZER = "Household size (persons in dwelling)"
        DMPCNTYR = "County code"
        DMPFIPSR = "FIPS code for State"
        DMPMETRO = "Rural/urban code based on USDA code"
        DMPCREGN = "Census region, weighting(Texas in south)"
        DMPPIR   = "Poverty Income Ratio (unimputed income)"
        SDPPHASE = "Phase of NHANES III survey"
        SDPPSU6  = "Total NHANES III pseudo-PSU"
        SDPSTRA6 = "Total NHANES III pseudo-stratum"
        SDPPSU1  = "Pseudo-PSU for phase 1"
        SDPSTRA1 = "Pseudo-stratum for phase 1"
        SDPPSU2  = "Pseudo-PSU for phase 2"
        SDPSTRA2 = "Pseudo-stratum for phase 2"
        WTPFQX6  = "Total interviewed sample final weight"
        WTPFEX6  = "Total MEC-examined sample final weight"
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
        MXPTIDW  = "Day of week of MEC exam"
        MXPAXTMR = "Age in months at MEC exam"
        HXPTIDW  = "Day of week of home exam"
        HXPAXTMR = "Age in months at home exam"
        HXPSESSR = "Session for home examination"
        PEP1     = "Overall findings for locomotion (age 3+)"
        PEP1A1   = "Limp or shuffle (age 3+)"
        PEP1A2   = "Other gait abnormalities (age 3+)"
        PEP2     = "Eye globe missing or blind(age 2mo-18yr)"
        PEP2A    = "Tracks light (age 2mo-4yrs)"
        PEP2B    = "Strabismus observ un/cover test(age5-18)"
        PEP3A    = "Overall findings, paralysis...(all ages)"
        PEP3A1A  = "Paralysis/paresis of arm (all ages)"
        PEP3A1B  = "Paralysis/paresis of leg (all ages)"
        PEP3A2   = "In a wheelchair or stretcher (all ages)"
        PEP3B1   = "Overall findings,amputee/cast (all ages)"
        PEP3LARM = "Amputee/cast, left arm (all ages)"
        PEP3RARM = "Amputee/cast, right arm (all ages)"
        PEP3BFL1 = "Amputee/cast, left finger 1 (all ages)"
        PEP3BFL2 = "Amputee/cast, left finger 2 (all ages)"
        PEP3BFL3 = "Amputee/cast, left finger 3 (all ages)"
        PEP3BFL4 = "Amputee/cast, left finger 4 (all ages)"
        PEP3BFL5 = "Amputee/cast, left finger 5 (all ages)"
        PEP3BFR1 = "Amputee/cast, right finger 1 (all ages)"
        PEP3BFR2 = "Amputee/cast, right finger 2 (all ages)"
        PEP3BFR3 = "Amputee/cast, right finger 3 (all ages)"
        PEP3BFR4 = "Amputee/cast, right finger 4 (all ages)"
        PEP3BFR5 = "Amputee/cast, right finger 5 (all ages)"
        PEP3B2   = "Overall findng,amputee/cast leg(all age)"
        PEP3LLEG = "Amputee/cast, left leg (all ages)"
        PEP3RLEG = "Amputee/cast, right leg (all ages)"
        PEP3B2TR = "Amputee/cast, right great toe (all ages)"
        PEP3B2TL = "Amputee/cast, left great toe (all ages)"
        PEP4A    = "Overall wrist finding,hand joint(age60+)"
        PEP4A1   = "Wrist: tender on palpation (age 60+)"
        PEP4A2   = "Wrist: swelling (age 60+)"
        PEP4A3   = "Wrist: pain on passive motion (age 60+)"
        PEP4CMC  = "Overall findings,CMC, yrs 4,5,6 (age60+)"
        PEP4CMCC = "CMC: crepitus, survey yrs 4,5,6(age60+)"
        PEP4CMCT = "CMC: tender palpation,yrs 4,5,6 (age60+)"
        PEP4CMCS = "CMC:swelling, survey yrs 4,5,6 (age60+)"
        PEP4CMCP = "CMC:pain on p-motion,yrs 4,5,6 (age60+)"
        PEP4B    = "Overall findings,MCP hand joint(age 60+)"
        PEP4BTR1 = "Rt finger 1, MCP: tenderness (age 60+)"
        PEP4BTR2 = "Rt finger 2, MCP: tenderness (age 60+)"
        PEP4BTR3 = "Rt finger 3, MCP: tenderness (age 60+)"
        PEP4BTR4 = "Rt finger 4, MCP: tenderness (age 60+)"
        PEP4BTR5 = "Rt finger 5, MCP: tenderness (age 60+)"
        PEP4BTL1 = "Lft finger 1, MCP: tenderness (age 60+)"
        PEP4BTL2 = "Lft finger 2, MCP: tenderness (age 60+)"
        PEP4BTL3 = "Lft finger 3, MCP: tenderness (age 60+)"
        PEP4BTL4 = "Lft finger 4, MCP: tenderness (age 60+)"
        PEP4BTL5 = "Lft finger 5, MCP: tenderness (age 60+)"
        PEP4BSR1 = "Rt finger 1, MCP: swelling (age 60+)"
        PEP4BSR2 = "Rt finger 2, MCP: swelling (age 60+)"
        PEP4BSR3 = "Rt finger 3, MCP: swelling (age 60+)"
        PEP4BSR4 = "Rt finger 4, MCP: swelling (age 60+)"
        PEP4BSR5 = "Rt finger 5, MCP: swelling (age 60+)"
        PEP4BSL1 = "Lft finger 1, MCP: swelling (age 60+)"
        PEP4BSL2 = "Lft finger 2, MCP: swelling (age 60+)"
        PEP4BSL3 = "Lft finger 3, MCP: swelling (age 60+)"
        PEP4BSL4 = "Lft finger 4, MCP: swelling (age 60+)"
        PEP4BSL5 = "Lft finger 5, MCP: swelling (age 60+)"
        PEP4BPR1 = "Rt finger 1,MCP:pain on p-motion(age60+)"
        PEP4BPR2 = "Rt finger 2,MCP:pain on p-motion(age60+)"
        PEP4BPR3 = "Rt finger 3,MCP:pain on p-motion(age60+)"
        PEP4BPR4 = "Rt finger 4,MCP:pain on p-motion(age60+)"
        PEP4BPR5 = "Rt finger 5,MCP:pain on p-motion(age60+)"
        PEP4BPL1 = "Lft finger1,MCP:pain on p-motion(age60+)"
        PEP4BPL2 = "Lft finger2,MCP:pain on p-motion(age60+)"
        PEP4BPL3 = "Lft finger3,MCP:pain on p-motion(age60+)"
        PEP4BPL4 = "Lft finger4,MCP:pain on p-motion(age60+)"
        PEP4BPL5 = "Lft finger5,MCP:pain on p-motion(age60+)"
        PEP4CTR2 = "Rt finger 2, PIP: tenderness (age 60+)"
        PEP4CTR3 = "Rt finger 3, PIP: tenderness (age 60+)"
        PEP4CTR4 = "Rt finger 4, PIP: tenderness (age 60+)"
        PEP4CTR5 = "Rt finger 5, PIP: tenderness (age 60+)"
        PEP4CTL2 = "Lft finger 2, PIP: tenderness (age 60+)"
        PEP4CTL3 = "Lft finger 3, PIP: tenderness (age 60+)"
        PEP4CTL4 = "Lft finger 4, PIP: tenderness (age 60+)"
        PEP4CTL5 = "Lft finger 5, PIP: tenderness (age 60+)"
        PEP4CSR2 = "Rt finger 2, PIP: swelling (age 60+)"
        PEP4CSR3 = "Rt finger 3, PIP: swelling (age 60+)"
        PEP4CSR4 = "Rt finger 4, PIP: swelling (age 60+)"
        PEP4CSR5 = "Rt finger 5, PIP: swelling (age 60+)"
        PEP4CSL2 = "Lft finger 2, PIP: swelling (age 60+)"
        PEP4CSL3 = "Lft finger 3, PIP: swelling (age 60+)"
        PEP4CSL4 = "Lft finger 4, PIP: swelling (age 60+)"
        PEP4CSL5 = "Lft finger 5, PIP: swelling (age 60+)"
        PEP4CPR2 = "Rt finger 2,PIP:pain on p-motion(age60+)"
        PEP4CPR3 = "Rt finger 3,PIP:pain on p-motion(age60+)"
        PEP4CPR4 = "Rt finger 4,PIP:pain on p-motion(age60+)"
        PEP4CPR5 = "Rt finger 5,PIP:pain on p-motion(age60+)"
        PEP4CPL2 = "Lft finger2,PIP:pain on p-motion(age60+)"
        PEP4CPL3 = "Lft finger3,PIP:pain on p-motion(age60+)"
        PEP4CPL4 = "Lft finger4,PIP:pain on p-motion(age60+)"
        PEP4CPL5 = "Lft finger5,PIP:pain on p-motion(age60+)"
        PEP4DTR1 = "Rt finger 1, IP: tenderness (age 60+)"
        PEP4DTR2 = "Rt finger 2, DIP: tenderness (age 60+)"
        PEP4DTR3 = "Rt finger 3, DIP: tenderness (age 60+)"
        PEP4DTR4 = "Rt finger 4, DIP: tenderness (age 60+)"
        PEP4DTR5 = "Rt finger 5, DIP: tenderness (age 60+)"
        PEP4DTL1 = "Lft finger 1, IP: tenderness (age 60+)"
        PEP4DTL2 = "Lft finger 2, DIP: tenderness(age 60+)"
        PEP4DTL3 = "Lft finger 3, DIP: tenderness(age 60+)"
        PEP4DTL4 = "Lft finger 4, DIP: tenderness(age 60+)"
        PEP4DTL5 = "Lft finger 5, DIP: tenderness(age 60+)"
        PEP4DSR1 = "Rt finger 1, IP: swelling (age 60+)"
        PEP4DSR2 = "Rt finger 2, DIP: swelling (age 60+)"
        PEP4DSR3 = "Rt finger 3, DIP: swelling (age 60+)"
        PEP4DSR4 = "Rt finger 4, DIP: swelling (age 60+)"
        PEP4DSR5 = "Rt finger 5, DIP: swelling (age 60+)"
        PEP4DSL1 = "Lft finger 1, IP: swelling (age 60+)"
        PEP4DSL2 = "Lft finger 2, DIP: swelling (age 60+)"
        PEP4DSL3 = "Lft finger 3, DIP: swelling (age 60+)"
        PEP4DSL4 = "Lft finger 4, DIP: swelling (age 60+)"
        PEP4DSL5 = "Lft finger 5, DIP: swelling (age 60+)"
        PEP4DPR1 = "Rt finger1,IP:pain on p-motion (age60+)"
        PEP4DPR2 = "Rt finger2,DIP:pain on p-motion (age60+)"
        PEP4DPR3 = "Rt finger3,DIP:pain on p-motion (age60+)"
        PEP4DPR4 = "Rt finger4,DIP:pain on p-motion (age60+)"
        PEP4DPR5 = "Rt finger5,DIP:pain on p-motion (age60+)"
        PEP4DPL1 = "Lft finger1,IP:pain on p-motion (age60+)"
        PEP4DPL2 = "Lft finger2,DIP:pain on p-motion(age60+)"
        PEP4DPL3 = "Lft finger3,DIP:pain on p-motion(age60+)"
        PEP4DPL4 = "Lft finger4,DIP:pain on p-motion(age60+)"
        PEP4DPL5 = "Lft finger5,DIP:pain on p-motion(age60+)"
        PEP4CMCJ = "Bony thickening/spurs CMC joint(age60+)"
        PEP4E1   = "Overall findings,upr deformities(age60+)"
        PEP4E1A  = "Heberden's nodes (DIP) (age 60+)"
        PEP4E1B  = "Bouchard's nodes (PIP) (age 60+)"
        PEP4E1C  = "Swan neck (age 60+)"
        PEP4E1D  = "Boutonniere joints (age 60+)"
        PEP4E1E  = "Ulnar deviation at MCP or wrist(age60+)"
        PEP4E1F  = "Subcutaneous nodules on forearm(age60+)"
        PEP5R    = "Central pulse rate (beats/min)(2mo-4yrs)"
        PEP6A    = "Cuff size used (age 5+ years)"
        PEP6B    = "Arm selected (age 5+ years)"
        PEP6C    = "Had alcohol, etc in past 30 min (age 5+)"
        PEP6DR   = "Pulse rate (beats/min) (age 5+ years)"
        PEP6E    = "Irregular pulse (age 5+ years)"
        PEP6F    = "Maximum inflation level(MIL,mmHg)(age5+)"
        PEP6G1   = "K1, systolic, for 1st BP (mmHg)(age 5+)"
        PEP6G2   = "K4, diastolic, for 1st BP(mmHg)(age5-19)"
        PEP6G3   = "K5, diastolic, for 1st BP (mmHg)(age 5+)"
        PEP6G4   = "First BP refused (age 5+ years)"
        PEP6H1   = "K1, systolic, for 2nd BP (mmHg)(age5+)"
        PEP6H2   = "K4,diastolic, for 2nd BP(mmHg)(age 5-19)"
        PEP6H3   = "K5, diastolic, for 2nd BP (mmHg)(age 5+)"
        PEP6H4   = "Second BP refused (age 5+ years)"
        PEP6I1   = "K1, systolic, for 3rd BP (mmHg)(age 5+)"
        PEP6I2   = "K4, diastolic, for 3rd BP(mmHg)(age5-19)"
        PEP6I3   = "K5, diastolic, for 3rd BP (mmHg)(age 5+)"
        PEP6I4   = "Third BP refused (age 5+ years)"
        PEPMNK1R = "Overall average K1, systolic, BP(age 5+)"
        PEPNOK1R = "Measurements used for average K1(age 5+)"
        PEPMNK5R = "Overall average K5, diastolic, BP(age5+)"
        PEPNOK5R = "Measurements used for average K5(age 5+)"
        PEP7     = "Overall findings,chest section(all ages)"
        PEP7A1R  = "Decreased breath in right lung(all ages)"
        PEP7A1L  = "Decreased breath in left lung (all ages)"
        PEP7A2R  = "Advent sounds in right lung (all ages)"
        PEP7A2L  = "Advent sounds in left lung (all ages)"
        PEP8     = "Overall findings,heart murmurs(all ages)"
        PEP8A    = "Systolic murmur (all ages)"
        PEP8B    = "Diastolic murmur (all ages)"
        PEP9     = "Overall findings for dermatitis section"
        PEP9A    = "Palms: red/inflamed, vesicles (age5-59)"
        PEP9B    = "Palmar fingers, dermatitis (age 5-59)"
        PEP9C    = "Dorsal:red/inflamed, vesicles (age 5-59)"
        PEP9D    = "Dorsal fingers, dermatitis (age 5-59)"
        PEP9E    = "Lichenified dermatitis (age 5-59)"
        PEP10    = "Overall findings, gt toe,MTP,IP (age60+)"
        PEP10MTR = "Rt great toe, MTP: tender palp (age60+)"
        PEP10MTL = "Lft great toe, MTP: tender palp(age60+)"
        PEP10MSR = "Rt great toe, MTP: swelling (age60+)"
        PEP10MSL = "Lft great toe, MTP: swelling (age60+)"
        PEP10MPR = "Rt great toe,MTP:pain on p-motion(age60+"
        PEP10MPL = "Lft great toe,MTP:painon p-motion(age60+"
        PEP10ITR = "Rt great toe, IP:tender palp(age60+)"
        PEP10ITL = "Lft great toe, IP: tender palp (age60+)"
        PEP10ISR = "Rt great toe, IP: swelling (age60+)"
        PEP10ISL = "Lft great toe, IP: swelling (age 60+)"
        PEP10IPR = "Rt great toe,IP:pain on p-motion(age60+)"
        PEP10IPL = "Lft great toe,IP:pain on p-motion(age60+"
        PEP10B   = "Overall findings, knee joint (age 60+)"
        PEP10B1  = "Knee: crepitus (age 60+)"
        PEP10B2  = "Knee: tender on palpation (age 60+)"
        PEP10B3  = "Knee: swelling (age 60+)"
        PEP10B4  = "Knee: pain on passive motion (age 60+)"
        PEP10B5  = "Rt knee: max limit on p-motion (age60+)"
        PEP10B6  = "Lft knee:max limit on p-motion (age60+)"
        PEP10C   = "Overall findings,foot deformities(age60+"
        PEP10C1  = "Hammer toes (age 60+)"
        PEP10C2  = "Bunions (age 60+)"
        PEP11A1  = "Rt breast size(lg diameter,mm)(2mo-4yrs)"
        PEP11A2  = "Lft breast size(lg diameter,mm)(2mo-4yrs"
        PEP11B1  = "Pubic hair stage (8-18 yrs)"
        PEP11B2  = "Genitalia stage (8-18 yrs)"
        PEP11B3  = "Breast stage,least dev breast (8-18 yrs)"
        PEP13A   = "Health status (all ages)"
        PEP13B   = "Evidence disabling impairment (all ages)"
        PEP13C   = "Possible active infection (all ages)"
        PEP13D   = "Able communicate appropriately(age 3+yr)"
        PEP13E1A = "Estimated difficulty:walk 1/4 mi(age 5+)"
        PEP13E1B = "Prognosis over 1 yr:walk 1/4 mi (age 5+)"
        PEP13E2A = "Estimated difficulty:run 100 yds(age 5+)"
        PEP13E2B = "Prognosis over 1 yr:run 100 yds (age 5+)"
        PEP13E3A = "Estimated difficulty: stoop... (age 5+)"
        PEP13E3B = "Prognosis over 1 year: stoop... (age 5+)"
        PEP13E4A = "Est difficulty:small hand moves (age 5+)"
        PEP13E4B = "Prog over 1 yr:small hand moves (age 5+)"
        PEP13E5A = "Est difficulty:heavy housework...(age5+)"
        PEP13E5B = "Prog over 1 yr:heavy housework...(age5+)"
        PEP13F1A = "Estimated difficulty: play (2mo-4yrs)"
        PEP13F1B = "Prognosis over 1 year: play (2mo-4yrs)"
        PEPLEVEL = "Referral level assigned to sample person"
        PEPTECH  = "Examiner number"
        BMPTECH1 = "Examiner number"
        BMPWT    = "Weight (kg) (2 months and over)"
        BMPWTFLG = "Weight source flag"
        BMPWTLBS = "Weight (lbs) (2 months and over)"
        BMPSRWL  = "Self reported weight (lbs) (12-16 years)"
        BMPBMI   = "Body mass index"
        BMPHT    = "Standing height (cm) (2 years and over)"
        BMPHTFLG = "Standing height source flag"
        BMPHTIN  = "Standing height (in) (2 years and over)"
        BMPRECUM = "Recumbent length (cm) (2 months-3 years)"
        BMPRECFL = "Recumbent length flag"
        BMPSITHT = "Sitting height (cm) (2 years and over)"
        BMPSRHIS = "Self reported height (in) (12-16 years)"
        BMPLEG   = "Upper leg length (cm) (2 years and over)"
        BMPKNEE  = "Knee height (cm) (60 years and over)"
        BMPARML  = "Upper arm length (cm)(2 months and over)"
        BMPBIAC  = "Biacromial breadth(cm)(3 years and over)"
        BMPBIIL  = "Biiliac breadth (cm) (2 years and over)"
        BMPELB   = "Elbow breadth (cm) (2 years and over)"
        BMPWRIST = "Wrist breadth (cm) (2 years and over)"
        BMPHEAD  = "Head circumference (cm) (2 mos - 7 yrs)"
        BMPARMC  = "Arm circumference(cm)(2 months and over)"
        BMPWAIST = "Waist circumference (cm) (2+ years)"
        BMPBUTTO = "Buttocks circumference (cm) (2+ years)"
        BMPWHR   = "Waist to hip ratio"
        BMPTHICI = "Thigh circumference (cm)(2 yrs and over)"
        BMPTRI   = "Triceps skinfold (mm)(2 months and over)"
        BMPSUB   = "Subscapular skinfold (mm) (2+ months)"
        BMPSUP   = "Suprailiac skinfold (mm) (2+ years)"
        BMPTHI   = "Thigh skinfold (mm) (2 years and over)"
        PEPPREG  = "Examinee pregnant--cannot obtain BIA"
        PEPPACE  = "Examinee had pacemaker-cannot obtain BIA"
        PEP12A1  = "BIA resistance (ohms)(12 years and over)"
        PEP12B1  = "BIA reactance (ohms) (12 years and over)"
        DRPSTAT  = "Recall status code"
        DRPRDAY  = "Recall day"
        DRPRESP  = "Respondent,24hr dietary recall interview"
        DRPLANG  = "Language, 24-hr dietary recall interview"
        DRPIID   = "Interviewer ID code"
        DRPQ1    = "Compare food consumed yesterday to usual"
        DRPQ2A   = "How much plain water drink in 24 hrs -oz"
        DRPQ3    = "Type of salt you usually add at table"
        DRPQ4    = "How often do you add salt at the table"
        DRPQ5    = "#days had no food/money for food,past mo"
        DRPQ6    = "Because not enough money or other reason"
        DRPQ7    = "Skip meals because no food/money,past mo"
        DRPQ8    = "# days skip meals, no food/money,past mo"
        DRPQ9    = "Skip any meals yesterday, no food/money"
        DRPQ10   = "Any days not eat, no food/money, past mo"
        DRPQ11   = "# days didn't eat at all in past month"
        DRPQ12   = "Are you person who preps meals at home"
        DRPGW    = "Total grams of food & beverage consumed"
        DRPNWATE = "Water (gm)"
        DRPNKCAL = "Food energy (kcal)"
        DRPNPROT = "Protein (gm)"
        DRPNTFAT = "Total fat (gm)"
        DRPNSFAT = "Total saturated fatty acids (gm)"
        DRPNMFAT = "Total monounsaturated fatty acids (gm)"
        DRPNPFAT = "Total polyunsaturated fatty acids (gm)"
        DRPNCHOL = "Cholesterol (mg)"
        DRPNCARB = "Carbohydrate (gm)"
        DRPNFIBE = "Total dietary fiber (gm)"
        DRPNALCO = "Alcohol (gm)"
        DRPNVAIU = "Vitamin A (IU)"
        DRPNVARE = "Vitamin A (RE)"
        DRPNCARO = "Carotenes (RE)"
        DRPNVE   = "Vitamin E (alpha tocopherol equivalents)"
        DRPNVC   = "Ascorbic acid (mg)"
        DRPNVB1  = "Thiamin (mg)"
        DRPNVB2  = "Riboflavin (mg)"
        DRPNNIAC = "Niacin (mg)"
        DRPNVB6  = "Vitamin B6 (mg)"
        DRPNFOLA = "Folacin (micrograms)"
        DRPNVB12 = "Vitamin B12 (micrograms)"
        DRPNCALC = "Calcium (mg)"
        DRPNPHOS = "Phosphorus (mg)"
        DRPNMAGN = "Magnesium (mg)"
        DRPNIRON = "Iron (mg)"
        DRPNZINC = "Zinc (mg)"
        DRPNCOPP = "Copper (mg)"
        DRPNSODI = "Sodium (mg)"
        DRPNPOTA = "Potassium (mg)"
        DRPNKF   = "Percent of kilocalories from total fat"
        DRPNKSF  = "Pct of kilocalories from saturated fat"
        DRPNKMF  = "Pct of kilocals from monounsaturted fat"
        DRPNKPF  = "Pct of kilocals from polyunsaturated fat"
        DRPNKP   = "Percent of kilocalories from protein"
        DRPNKC   = "Pct of kilocalories from carbohydrate"
        DRPNKA   = "Percent of kilocalories from alcohol"
        MPPA1    = "Age check item used in skip pattern"
        MPPA2    = "Taken antihistamine in past 2 days"
        MPPA3    = "Taken prescription med in past 24 hours"
        MPPA4    = "Taken vitamins/minerals in past 24 hrs"
        MPPB1    = "Treated for anemia within past 3 months"
        MPPB2    = "How many infections... in last 4 weeks"
        MPPB3    = "Age/sex check item used in skip pattern"
        MPPB4    = "Age when menstrual cycles started"
        MPPB5    = "Receive benefits from WIC in last 12 mo"
        MPPB6    = "Receiving benefits from WIC now"
        MPPB7S   = "How many months received WIC benefits"
        MPPC1    = "Age check item used in skip pattern"
        MPPC2A   = "Had cereal in past month"
        MPPC2B   = "Had fruit in past month"
        MPPC2C   = "Had yellow/orange vegetables past month"
        MPPC2D   = "Had green vegetables in past month"
        MPPC2E   = "Had meat in past month"
        MPPC2F   = "Had egg yolks or eggs in past month"
        MPPC2G   = "Had combo meat/vegetable dinners past mo"
        MPPC2H   = "Had yogurt, cottage/other cheese past mo"
        MPPC2I   = "Had bread,rolls,crackers,biscuit past mo"
        MPPC2J   = "Had desserts in past month"
        MPPC2K   = "Had breastmilk in past month"
        MPPC2L   = "Had formula in past month"
        MPPC2M   = "Had regular cow's milk in past month"
        MPPC2N   = "Had fruit juices in past month"
        MPPC2O   = "Drinks such as Koolaid, etc in past mo"
        MPPD1A   = "Check item.Respondent relationship to SP"
        MPPEXMNR = "Interviewer number"
        DEPEXFLG = "Had some part of dental examination"
        DEPEXMNR = "Examiner number"
        DEPUQUAD = "Upper quadrant periodontal assessments"
        DEPLQUAD = "Lower quadrant periodontal assessments"
        DEPMEDXC = "Medical exclusion flag"
        DEPEDENT = "Dentate status"
        DEPCCFLG = "Completion code: coronal caries"
        DEPRSFLG = "Completion code: root caries"
        DEPRCFLG = "Completion code: restoration & condition"
        DEPTRFLG = "Completion code: traumatic injuries"
        DEPGNFLG = "Completion code: gingival bleeding"
        DEPCLFLG = "Completion code: calculus"
        DEPCJFLG = "Completion code: FGM/CEJ"
        DEPPCFLG = "Completion code: pocket assessment"
        DEPLAFLG = "Completion code: loss of attachment"
        DEPDQFLG = "Completion code: denture questionnaire"
        DEPNURSC = "Nursing bottle caries"
        DEPDMFS1 = "Sum of permanent DMFS due to disease"
        DEPDMFS2 = "Sum of permanent DFMS due to any cause"
        DEPDFSP  = "Sum of permanent DFS"
        DEPDFSDC = "Sum of deciduous or primary dfs"
        DEPDFTDC = "Sum of deciduous or primary dft"
        DEPDMFT1 = "Sum of permanent DMFT due to disease"
        DEPDMFT2 = "Sum of permanent DMFT due to any cause"
        DEPCS1   = "Cor.surf: upper left cen incisor: filler"
        DEPCS2   = "Cor.surf: upper lft cen incisor: lingual"
        DEPCS3   = "Cor.surf: upper left cen incisor: buccal"
        DEPCS4   = "Cor.surf: upper left cen incisor: mesial"
        DEPCS5   = "Cor.surf: upper left cen incisor: distal"
        DEPCS6   = "Cor.surf: upper left lat incisor: filler"
        DEPCS7   = "Cor.surf: upper lft lat incisor: lingual"
        DEPCS8   = "Cor.surf: upper left lat incisor: buccal"
        DEPCS9   = "Cor.surf: upper left lat incisor: mesial"
        DEPCS10  = "Cor.surf: upper left lat incisor: distal"
        DEPCS11  = "Cor.surf: upper left cuspid: filler"
        DEPCS12  = "Cor.surf: upper left cuspid: lingual"
        DEPCS13  = "Cor.surf: upper left cuspid: buccal"
        DEPCS14  = "Cor.surf: upper left cuspid: mesial"
        DEPCS15  = "Cor.surf: upper left cuspid: distal"
        DEPCS16  = "Cor.surf: upper left 1bicuspid: occlusal"
        DEPCS17  = "Cor.surf: upper left 1bicuspid: lingual"
        DEPCS18  = "Cor.surf: upper left 1bicuspid: buccal"
        DEPCS19  = "Cor.surf: upper left 1bicuspid: mesial"
        DEPCS20  = "Cor.surf: upper left 1bicuspid: distal"
        DEPCS21  = "Cor.surf: upper left 2bicuspid: occlusal"
        DEPCS22  = "Cor.surf: upper left 2bicuspid: lingual"
        DEPCS23  = "Cor.surf: upper left 2bicuspid: buccal"
        DEPCS24  = "Cor.surf: upper left 2bicuspid: mesial"
        DEPCS25  = "Cor.surf: upper left 2bicuspid: distal"
        DEPCS26  = "Cor.surf: upper left 1molar: occlusal"
        DEPCS27  = "Cor.surf: upper left 1molar: lingual"
        DEPCS28  = "Cor.surf: upper left 1molar: buccal"
        DEPCS29  = "Cor.surf: upper left 1molar: mesial"
        DEPCS30  = "Cor.surf: upper left 1molar: distal"
        DEPCS31  = "Cor.surf: upper left 2molar: occlusal"
        DEPCS32  = "Cor.surf: upper left 2molar: lingual"
        DEPCS33  = "Cor.surf: upper left 2molar: buccal"
        DEPCS34  = "Cor.surf: upper left 2molar: mesial"
        DEPCS35  = "Cor.surf: upper left 2molar: distal"
        DEPCS36  = "Cor.surf: upper rt cen incisor: filler"
        DEPCS37  = "Cor.surf: upper rt cen incisor:lingual"
        DEPCS38  = "Cor.surf: upper rt cen incisor: buccal"
        DEPCS39  = "Cor.surf: upper rt cen incisor: mesial"
        DEPCS40  = "Cor.surf: upper rt cen incisor: distal"
        DEPCS41  = "Cor.surf: upper rt lat incisor: filler"
        DEPCS42  = "Cor.surf: upper rt lat incisor: lingual"
        DEPCS43  = "Cor.surf: upper rt lat incisor: buccal"
        DEPCS44  = "Cor.surf: upper rt lat incisor: mesial"
        DEPCS45  = "Cor.surf: upper rt lat incisor: distal"
        DEPCS46  = "Cor.surf: upper right cuspid: filler"
        DEPCS47  = "Cor.surf: upper right cuspid: lingual"
        DEPCS48  = "Cor.surf: upper right cuspid: buccal"
        DEPCS49  = "Cor.surf: upper right cuspid: mesial"
        DEPCS50  = "Cor.surf: upper right cuspid: distal"
        DEPCS51  = "Cor.surf: upper rt 1bicuspid: occlusal"
        DEPCS52  = "Cor.surf: upper right 1bicuspid: lingual"
        DEPCS53  = "Cor.surf: upper right 1bicuspid: buccal"
        DEPCS54  = "Cor.surf: upper right 1bicuspid: mesial"
        DEPCS55  = "Cor.surf: upper right 1bicuspid: distal"
        DEPCS56  = "Cor.surf: upper rt 2bicuspid: occlusal"
        DEPCS57  = "Cor.surf: upper rt 2bicuspid: lingual"
        DEPCS58  = "Cor.surf: upper rt 2bicuspid: buccal"
        DEPCS59  = "Cor.surf: upper rt 2bicuspid: mesial"
        DEPCS60  = "Cor.surf: upper rt 2bicuspid: distal"
        DEPCS61  = "Cor.surf: upper right 1molar: occlusal"
        DEPCS62  = "Cor.surf: upper right 1molar: lingual"
        DEPCS63  = "Cor.surf: upper right 1molar: buccal"
        DEPCS64  = "Cor.surf: upper right 1molar: mesial"
        DEPCS65  = "Cor.surf: upper right 1molar: distal"
        DEPCS66  = "Cor.surf: upper right 2molar: occlusal"
        DEPCS67  = "Cor.surf: upper right 2molar: lingual"
        DEPCS68  = "Cor.surf: upper right 2molar: buccal"
        DEPCS69  = "Cor.surf: upper right 2molar: mesial"
        DEPCS70  = "Cor.surf: upper right 2molar: distal"
        DEPCS71  = "Cor.surf: lower left cen incisor: filler"
        DEPCS72  = "Cor.surf: lower left cen incisor:lingual"
        DEPCS73  = "Cor.surf: lower left cen incisor: buccal"
        DEPCS74  = "Cor.surf: lower left cen incisor: mesial"
        DEPCS75  = "Cor.surf: lower left cen incisor: distal"
        DEPCS76  = "Cor.surf: lower left lat incisor: filler"
        DEPCS77  = "Cor.surf: lower left lat incisor:lingual"
        DEPCS78  = "Cor.surf: lower left lat incisor: buccal"
        DEPCS79  = "Cor.surf: lower left lat incisor: mesial"
        DEPCS80  = "Cor.surf: lower left lat incisor: distal"
        DEPCS81  = "Cor.surf: lower left cuspid: filler"
        DEPCS82  = "Cor.surf: lower left cuspid: lingual"
        DEPCS83  = "Cor.surf: lower left cuspid: buccal"
        DEPCS84  = "Cor.surf: lower left cuspid: mesial"
        DEPCS85  = "Cor.surf: lower left cuspid: distal"
        DEPCS86  = "Cor.surf: lower left 1bicuspid: occlusal"
        DEPCS87  = "Cor.surf: lower left 1bicuspid: lingual"
        DEPCS88  = "Cor.surf: lower left 1bicuspid: buccal"
        DEPCS89  = "Cor.surf: lower left 1bicuspid: mesial"
        DEPCS90  = "Cor.surf: lower left 1bicuspid: distal"
        DEPCS91  = "Cor.surf: lower left 2bicuspid: occlusal"
        DEPCS92  = "Cor.surf: lower left 2bicuspid: lingual"
        DEPCS93  = "Cor.surf: lower left 2bicuspid: buccal"
        DEPCS94  = "Cor.surf: lower left 2bicuspid: mesial"
        DEPCS95  = "Cor.surf: lower left 2bicuspid: distal"
        DEPCS96  = "Cor.surf: lower left 1molar: occlusal"
        DEPCS97  = "Cor.surf: lower left 1molar: lingual"
        DEPCS98  = "Cor.surf: lower left 1molar: buccal"
        DEPCS99  = "Cor.surf: lower left 1molar: mesial"
        DEPCS100 = "Cor.surf: lower left 1molar: distal"
        DEPCS101 = "Cor.surf: lower left 2molar: occlusal"
        DEPCS102 = "Cor.surf: lower left 2molar: lingual"
        DEPCS103 = "Cor.surf: lower left 2molar: buccal"
        DEPCS104 = "Cor.surf: lower left 2molar: mesial"
        DEPCS105 = "Cor.surf: lower left 2molar: distal"
        DEPCS106 = "Cor.surf: lower rt cen incisor: filler"
        DEPCS107 = "Cor.surf: lower rt cen incisor: lingual"
        DEPCS108 = "Cor.surf: lower rt cen incisor: buccal"
        DEPCS109 = "Cor.surf: lower rt cen incisor: mesial"
        DEPCS110 = "Cor.surf: lower rt cen incisor: distal"
        DEPCS111 = "Cor.surf: lower rt lat incisor: filler"
        DEPCS112 = "Cor.surf: lower rt lat incisor: lingual"
        DEPCS113 = "Cor.surf: lower rt lat incisor: buccal"
        DEPCS114 = "Cor.surf: lower rt lat incisor: mesial"
        DEPCS115 = "Cor.surf: lower rt lat incisor: distal"
        DEPCS116 = "Cor.surf: lower right cuspid: filler"
        DEPCS117 = "Cor.surf: lower right cuspid: lingual"
        DEPCS118 = "Cor.surf: lower right cuspid: buccal"
        DEPCS119 = "Cor.surf: lower right cuspid: mesial"
        DEPCS120 = "Cor.surf: lower right cuspid: distal"
        DEPCS121 = "Cor.surf: lower rt 1bicuspid: occlusal"
        DEPCS122 = "Cor.surf: lower rt 1bicuspid: lingual"
        DEPCS123 = "Cor.surf: lower rt 1bicuspid: buccal"
        DEPCS124 = "Cor.surf: lower rt 1bicuspid: mesial"
        DEPCS125 = "Cor.surf: lower rt 1bicuspid: distal"
        DEPCS126 = "Cor.surf: lower rt 2bicuspid: occlusal"
        DEPCS127 = "Cor.surf: lower rt 2bicuspid : lingual"
        DEPCS128 = "Cor.surf: lower rt 2bicuspid: buccal"
        DEPCS129 = "Cor.surf: lower rt 2bicuspid: mesial"
        DEPCS130 = "Cor.surf: lower rt 2bicuspid: distal"
        DEPCS131 = "Cor.surf: lower right 1molar: occlusal"
        DEPCS132 = "Cor.surf: lower right 1molar: lingual"
        DEPCS133 = "Cor.surf: lower right 1molar: buccal"
        DEPCS134 = "Cor.surf: lower right 1molar: mesial"
        DEPCS135 = "Cor.surf: lower right 1molar: distal"
        DEPCS136 = "Cor.surf: lower right 2molar: occlusal"
        DEPCS137 = "Cor.surf: lower right 2molar: lingual"
        DEPCS138 = "Cor.surf: lower right 2molar: buccal"
        DEPCS139 = "Cor.surf: lower right 2molar: mesial"
        DEPCS140 = "Cor.surf: lower right 2molar: distal"
        DEPCT1   = "Cor.tooth call: upper left cen incisor"
        DEPCT2   = "Cor.tooth call: upper left lat incisor"
        DEPCT3   = "Cor.tooth call: upper left cuspid"
        DEPCT4   = "Cor.tooth call: upper left 1bicuspid"
        DEPCT5   = "Cor.tooth call: upper left 2bicuspid"
        DEPCT6   = "Cor.tooth call: upper left 1molar"
        DEPCT7   = "Cor.tooth call: upper left 2molar"
        DEP3M1   = "Cor.tooth call: upper left 3molar"
        DEPCT8   = "Cor.tooth call: upper rt central incisor"
        DEPCT9   = "Cor.tooth call: upper rt lateral incisor"
        DEPCT10  = "Cor.tooth call: upper right cuspid"
        DEPCT11  = "Cor.tooth call: upper right 1bicuspid"
        DEPCT12  = "Cor.tooth call: upper right 2bicuspid"
        DEPCT13  = "Cor.tooth call: upper right 1molar"
        DEPCT14  = "Cor.tooth call: upper right 2molar"
        DEP3M2   = "Cor.tooth call: upper right 3molar"
        DEPCT15  = "Cor.tooth call: lower left cent incisor"
        DEPCT16  = "Cor.tooth call: lower left lat incisor"
        DEPCT17  = "Cor.tooth call: lower left cuspid"
        DEPCT18  = "Cor.tooth call: lower left 1bicuspid"
        DEPCT19  = "Cor.tooth call: lower left 2bicuspid"
        DEPCT20  = "Cor.tooth call: lower left 1molar"
        DEPCT21  = "Cor.tooth call: lower left 2molar"
        DEP3M3   = "Cor.tooth call: lower left 3molar"
        DEPCT22  = "Cor.tooth call: lower rt central incisor"
        DEPCT23  = "Cor.tooth call: lower rt lateral incisor"
        DEPCT24  = "Cor.tooth call: lower right cuspid"
        DEPCT25  = "Cor.tooth call: lower right 1bicuspid"
        DEPCT26  = "Cor.tooth call: lower right 2bicuspid"
        DEPCT27  = "Cor.tooth call: lower right 1molar"
        DEPCT28  = "cor tooth call: lower right 2molar"
        DEP3M4   = "Cor.tooth call: lower right 3molar"
        DEPSE1   = "Cor. sealant: upper left central incisor"
        DEPSE2   = "Cor. sealant: upper left lateral incisor"
        DEPSE3   = "Cor. sealant: upper left cuspid"
        DEPSE4   = "Cor. sealant: upper left 1bicuspid"
        DEPSE5   = "Cor. sealant: upper left 2bicuspid"
        DEPSE6   = "Cor. sealant: upper left 1molar"
        DEPSE7   = "Cor. sealant: upper left 2molar"
        DEPSE8   = "Cor. sealant: upper rt central incisor"
        DEPSE9   = "Cor. sealant: upper rt lateral incisor"
        DEPSE10  = "Cor. sealant: upper right cuspid"
        DEPSE11  = "Cor. sealant: upper right 1bicuspid"
        DEPSE12  = "Cor. sealant: upper right 2bicuspid"
        DEPSE13  = "Cor. sealant: upper right 1molar"
        DEPSE14  = "Cor. sealant: upper right 2molar"
        DEPSE15  = "Cor. sealant: lower left central incisor"
        DEPSE16  = "Cor. sealant: lower left lateral incisor"
        DEPSE17  = "Cor. sealant: lower left cuspid"
        DEPSE18  = "Cor. sealant: lower left 1bicuspid"
        DEPSE19  = "Cor. sealant: lower left 2bicuspid"
        DEPSE20  = "Cor. sealant: lower left 1molar"
        DEPSE21  = "Cor. sealant: lower left 2molar"
        DEPSE22  = "Cor. sealant: lower rt central incisor"
        DEPSE23  = "Cor. sealant: lower rt lateral incisor"
        DEPSE24  = "Cor. sealant: lower right cuspid"
        DEPSE25  = "Cor. sealant: lower right 1bicuspid"
        DEPSE26  = "Cor. sealant: lower right 2bicuspid"
        DEPSE27  = "Cor. sealant: lower right 1molar"
        DEPSE28  = "Cor. sealant: lower right 2molar"
        DEPRS1   = "Root surf: upr left cen incisor: lingual"
        DEPRS2   = "Root surf: upper lft cen incisor: buccal"
        DEPRS3   = "Root surf: upper lft cen incisor: mesial"
        DEPRS4   = "Root surf: upper lft cen incisor: distal"
        DEPRS5   = "Root surf:upper left lat incisor:lingual"
        DEPRS6   = "Root surf: upper lft lat incisor: buccal"
        DEPRS7   = "Root surf: upper lft lat incisor: mesial"
        DEPRS8   = "Root surf: upper lft lat incisor: distal"
        DEPRS9   = "Root surf: upper left cuspid: lingual"
        DEPRS10  = "Root surf: upper left cuspid: buccal"
        DEPRS11  = "Root surf: upper left cuspid: mesial"
        DEPRS12  = "Root surf: upper left cuspid: distal"
        DEPRS13  = "Root surf: upper left 1bicuspid: lingual"
        DEPRS14  = "Root surf: upper left 1bicuspid: buccal"
        DEPRS15  = "Root surf: upper left 1bicuspid: mesial"
        DEPRS16  = "Root surf: upper left 1bicuspid: distal"
        DEPRS17  = "Root surf: upper left 2bicuspid: lingual"
        DEPRS18  = "Root surf: upper left 2bicuspid: buccal"
        DEPRS19  = "Root surf: upper left 2bicuspid: mesial"
        DEPRS20  = "Root surf: upper left 2bicuspid: distal"
        DEPRS21  = "Root surf: upper left 1molar: lingual"
        DEPRS22  = "Root surf: upper left 1molar: buccal"
        DEPRS23  = "Root surf: upper left 1molar: mesial"
        DEPRS24  = "Root surf: upper left 1molar: distal"
        DEPRS25  = "Root surf: upper left 2molar: lingual"
        DEPRS26  = "Root surf: upper left 2molar: buccal"
        DEPRS27  = "Root surf: upper left 2molar: mesial"
        DEPRS28  = "Root surf: upper left 2molar: distal"
        DEPRS29  = "Root surf: upper rt cen incisor: lingual"
        DEPRS30  = "Root surf: upper rt cen incisor: buccal"
        DEPRS31  = "Root surf: upper rt cen incisor: mesial"
        DEPRS32  = "Root surf: upper rt cen incisor: distal"
        DEPRS33  = "Root surf: upper rt lat incisor: lingual"
        DEPRS34  = "Root surf: upper rt lat incisor: buccal"
        DEPRS35  = "Root surf: upper rt lat incisor: mesial"
        DEPRS36  = "Root surf: upper rt lat incisor: distal"
        DEPRS37  = "Root surf: upper right cuspid: lingual"
        DEPRS38  = "Root surf: upper right cuspid: buccal"
        DEPRS39  = "Root surf: upper right cuspid: mesial"
        DEPRS40  = "Root surf: upper right cuspid: distal"
        DEPRS41  = "Root surf: upper rt 1bicuspid: lingual"
        DEPRS42  = "Root surf: upper right 1bicuspid: buccal"
        DEPRS43  = "Root surf: upper right 1bicuspid: mesial"
        DEPRS44  = "Root surf: upper right 1bicuspid: distal"
        DEPRS45  = "Root surf: upper rt 2bicuspid: lingual"
        DEPRS46  = "Root surf: upper right 2bicuspid: buccal"
        DEPRS47  = "Root surf: upper right 2bicuspid: mesial"
        DEPRS48  = "Root surf: upper right 2bicuspid: distal"
        DEPRS49  = "Root surf: upper right 1molar: lingual"
        DEPRS50  = "Root surf: upper right 1molar: buccal"
        DEPRS51  = "Root surf: upper right 1molar: mesial"
        DEPRS52  = "Root surf: upper right 1molar: distal"
        DEPRS53  = "Root surf: upper right 2molar: lingual"
        DEPRS54  = "Root surf: upper right 2molar: buccal"
        DEPRS55  = "Root surf: upper right 2molar: mesial"
        DEPRS56  = "Root surf: upper right 2molar: distal"
        DEPRS57  = "Root surf: lwr left cen incisor: lingual"
        DEPRS58  = "Root surf: lwr left cen incisor: buccal"
        DEPRS59  = "Root surf: lwr left cen incisor: mesial"
        DEPRS60  = "Root surf: lwr left cen incisor: distal"
        DEPRS61  = "Root surf: lwr left lat incisor: lingual"
        DEPRS62  = "Root surf: lwr left lat incisor: buccal"
        DEPRS63  = "Root surf: lwr left lat incisor: mesial"
        DEPRS64  = "Root surf: lwr left lat incisor: distal"
        DEPRS65  = "Root surf: lower left cuspid: lingual"
        DEPRS66  = "Root surf: lower left cuspid: buccal"
        DEPRS67  = "Root surf: lower left cuspid: mesial"
        DEPRS68  = "Root surf: lower left cuspid: distal"
        DEPRS69  = "Root surf: lower left 1bicuspid: lingual"
        DEPRS70  = "Root surf: lower left 1bicuspid: buccal"
        DEPRS71  = "Root surf: lower left 1bicuspid: mesial"
        DEPRS72  = "Root surf: lower left 1bicuspid: distal"
        DEPRS73  = "Root surf: lower left 2bicuspid: lingual"
        DEPRS74  = "Root surf: lower left 2bicuspid: buccal"
        DEPRS75  = "Root surf: lower left 2bicuspid: mesial"
        DEPRS76  = "Root surf: lower left 2bicuspid: distal"
        DEPRS77  = "Root surf: lower left 1molar: lingual"
        DEPRS78  = "Root surf: lower left 1molar: buccal"
        DEPRS79  = "Root surf: lower left 1molar: mesial"
        DEPRS80  = "Root surf: lower left 1molar: distal"
        DEPRS81  = "Root surf: lower left 2molar: lingual"
        DEPRS82  = "Root surf: lower left 2molar: buccal"
        DEPRS83  = "Root surf: lower left 2molar: mesial"
        DEPRS84  = "Root surf: lower left 2molar: distal"
        DEPRS85  = "Root surf: lower rt cen incisor: lingual"
        DEPRS86  = "Root surf: lower rt cen incisor: buccal"
        DEPRS87  = "Root surf: lower rt cen incisor: mesial"
        DEPRS88  = "Root surf: lower rt cen incisor: distal"
        DEPRS89  = "Root surf: lower rt lat incisor: lingual"
        DEPRS90  = "Root surf: lower rt lat incisor: buccal"
        DEPRS91  = "Root surf: lower rt lat incisor: mesial"
        DEPRS92  = "Root surf: lower rt lat incisor: distal"
        DEPRS93  = "Root surf: lower right cuspid: lingual"
        DEPRS94  = "Root surf: lower right cuspid: buccal"
        DEPRS95  = "Root surf: lower right cuspid: mesial"
        DEPRS96  = "Root surf: lower right cuspid: distal"
        DEPRS97  = "Root surf: lower rt 1bicuspid: lingual"
        DEPRS98  = "Root surf: lower right 1bicuspid: buccal"
        DEPRS99  = "Root surf: lower right 1bicuspid: mesial"
        DEPRS100 = "Root surf: lower right 1bicuspid: distal"
        DEPRS101 = "Root surf: lower rt 2bicuspid: lingual"
        DEPRS102 = "Root surf: lower right 2bicuspid: buccal"
        DEPRS103 = "Root surf: lower right 2bicuspid: mesial"
        DEPRS104 = "Root surf: lower right 2bicuspid: distal"
        DEPRS105 = "Root surf: lower right 1molar: lingual"
        DEPRS106 = "Root surf: lower right 1molar: buccal"
        DEPRS107 = "Root surf: lower right 1molar: mesial"
        DEPRS108 = "Root surf: lower right 1molar: distal"
        DEPRS109 = "Root surf: lower right 2molar: lingual"
        DEPRS110 = "Root surf: lower right 2molar: buccal"
        DEPRS111 = "Root surf: lower right 2molar: mesial"
        DEPRS112 = "Root surf: lower right 2molar: distal"
        DEPUGN1  = "Perio:ging bleed,uppr cen incisor:mesial"
        DEPUGN2  = "Perio:ging bleed,uppr cen incisor:buccal"
        DEPUGN3  = "Perio:ging bleed,uppr lat incisor:mesial"
        DEPUGN4  = "Perio:ging bleed,uppr lat incisor:buccal"
        DEPUGN5  = "Perio:ging bleed, upper cuspid: mesial"
        DEPUGN6  = "Perio:ging bleed, upper cuspid: buccal"
        DEPUGN7  = "Perio:ging bleed,upper 1bicuspid: mesial"
        DEPUGN8  = "Perio:ging bleed,upper 1bicuspid: buccal"
        DEPUGN9  = "Perio:ging bleed,upper 2bicuspid: mesial"
        DEPUGN10 = "Perio:ging bleed,upper 2bicuspid: buccal"
        DEPUGN11 = "Perio:ging bleed, upper 1molar: mesial"
        DEPUGN12 = "Perio:ging bleed, upper 1molar: buccal"
        DEPUGN13 = "Perio:ging bleed, upper 2molar: mesial"
        DEPUGN14 = "Perio:ging bleed, upper 2molar: buccal"
        DEPLGN1  = "Perio:ging bleed,lwr cen incisor:mesial"
        DEPLGN2  = "Perio:ging bleed,lwr cen incisor:buccal"
        DEPLGN3  = "Perio:ging bleed, lwr lat incisor:mesial"
        DEPLGN4  = "Perio:ging bleed,lwr lat incisor:buccal"
        DEPLGN5  = "Perio:ging bleed, lower cuspid: mesial"
        DEPLGN6  = "Perio:ging bleed, lower cuspid: buccal"
        DEPLGN7  = "Perio:ging bleed, lwr 1bicuspid: mesial"
        DEPLGN8  = "Perio:ging bleed, lwr 1bicuspid: buccal"
        DEPLGN9  = "Perio:ging bleed, lwr 2bicuspid: mesial"
        DEPLGN10 = "Perio:ging bleed, lwr 2bicuspid: buccal"
        DEPLGN11 = "Perio:ging bleed, lower 1molar: mesial"
        DEPLGN12 = "Perio:ging bleed, lower 1molar: buccal"
        DEPLGN13 = "Perio:ging bleed, lower 2molar: mesial"
        DEPLGN14 = "Perio:ging bleed, lower 2molar: buccal"
        DEPUCL1  = "Perio:calculus, upper cen incisor:mesial"
        DEPUCL2  = "Perio:calculus, upper cen incisor:buccal"
        DEPUCL3  = "Perio:calculus, upper lat incisor:mesial"
        DEPUCL4  = "Perio:calculus, upper lat incisor:buccal"
        DEPUCL5  = "Perio: calculus, upper cuspid: mesial"
        DEPUCL6  = "Perio: calculus, upper cuspid: buccal"
        DEPUCL7  = "Perio: calculus, upper 1bicuspid: mesial"
        DEPUCL8  = "Perio: calculus, upper 1bicuspid: buccal"
        DEPUCL9  = "Perio: calculus, upper 2bicuspid: mesial"
        DEPUCL10 = "Perio: calculus, upper 2bicuspid: buccal"
        DEPUCL11 = "Perio: calculus, upper 1molar: mesial"
        DEPUCL12 = "Perio: calculus, upper 1molar: buccal"
        DEPUCL13 = "Perio: calculus, upper 2molar: mesial"
        DEPUCL14 = "Perio: calculus, upper 2molar: buccal"
        DEPLCL1  = "Perio: calculus,lower cen incisor:mesial"
        DEPLCL2  = "Perio: calculus,lower cen incisor:buccal"
        DEPLCL3  = "Perio: calculus,lower lat incisor:mesial"
        DEPLCL4  = "Perio: calculus,lower lat incisor:buccal"
        DEPLCL5  = "Perio: calculus, lower cuspid: mesial"
        DEPLCL6  = "Perio: calculus, lower cuspid: buccal"
        DEPLCL7  = "Perio: calculus, lower 1bicuspid: mesial"
        DEPLCL8  = "Perio: calculus, lower 1bicuspid: buccal"
        DEPLCL9  = "Perio: calculus, lower 2bicuspid: mesial"
        DEPLCL10 = "Perio: calculus, lower 2bicuspid: buccal"
        DEPLCL11 = "Perio: calculus, lower 1molar: mesial"
        DEPLCL12 = "Perio: calculus, lower 1molar: buccal"
        DEPLCL13 = "Perio: calculus, lower 2molar: mesial"
        DEPLCL14 = "Perio: calculus, lower 2molar: buccal"
        DEPUMCJ1 = "Perio:FGM/CEJ, upr cen incisor:mesial-mm"
        DEPUMPC1 = "Perio:pocket,upper cen incisor:mesial-mm"
        DEPUBCJ1 = "Perio:FGM/CEJ, upr cen incisor:buccal-mm"
        DEPUBPC1 = "Perio:pocket, upr cen incisor: buccal-mm"
        DEPUMCJ2 = "Perio:FGM/CEJ, upr lat incisor:mesial-mm"
        DEPUMPC2 = "Perio: pocket, upr lat incisor:mesial-mm"
        DEPUBCJ2 = "Perio:FGM/CEJ, upr lat incisor:buccal-mm"
        DEPUBPC2 = "Perio: pocket, upr lat incisor buccal-mm"
        DEPUMCJ3 = "Perio: FGM/CEJ, upper cuspid mesial-mm"
        DEPUMPC3 = "Perio: pocket, upper cuspid: mesial-mm"
        DEPUBCJ3 = "Perio: FGM/CEJ, upper cuspid: buccal-mm"
        DEPUBPC3 = "Perio: pocket, upper cuspid: buccal-mm"
        DEPUMCJ4 = "Perio FGM/CEJ, upr 1bicuspid mesial-mm"
        DEPUMPC4 = "Perio: pocket, upr 1bicuspid: mesial-mm"
        DEPUBCJ4 = "Perio: FGM/CMJ, upr 1bicuspid: buccal-mm"
        DEPUBPC4 = "Perio: pocket, upr 1bicuspid: buccal-mm"
        DEPUMCJ5 = "Perio: FGM/CEJ, upr 2bicuspid:mesial-mm"
        DEPUMPC5 = "Perio: pocket, upr 2bicuspid: mesial-mm"
        DEPUBCJ5 = "Perio: FGM/CEJ, upr 2bicuspid: buccal-mm"
        DEPUBPC5 = "Perio: pocket, upr 2bicuspid: buccal-mm"
        DEPUMCJ6 = "Perio: FGM/CEJ, upper 1molar: mesial-mm"
        DEPUMPC6 = "Perio: pocket, upper 1molar: mesial-mm"
        DEPUBCJ6 = "Perio: FGM/CEJ, upper 1molar: buccal-mm"
        DEPUBPC6 = "Perio: pocket, upper 1molar: buccal-mm"
        DEPUMCJ7 = "Perio: FGM/CEJ, upper 2molar: mesial-mm"
        DEPUMPC7 = "Perio:pocket, upper 2molar: mesial-mm"
        DEPUBCJ7 = "Perio: FGM/CEJ, upper 2molar: buccal-mm"
        DEPUBPC7 = "Perio: pocket, upper 2molar: buccal-mm"
        DEPLMCJ1 = "Perio:FGM/CEJ, lwr cen incisor:mesial-mm"
        DEPLMPC1 = "Perio:pocket,lower cen incisor:mesial-mm"
        DEPLBCJ1 = "Perio:FGM/CEJ, lwr cen incisor:buccal-mm"
        DEPLBPC1 = "Perio:pocket,lower cen incisor:buccal-mm"
        DEPLMCJ2 = "Perio:FGM/CEJ, lwr lat incisor:mesial-mm"
        DEPLMPC2 = "Perio:pocket,lower lat incisor:mesial-mm"
        DEPLBCJ2 = "Perio: FGM/CEJ lwr lat incisor:buccal-mm"
        DEPLBPC2 = "Perio:pocket,lower lat incisor:buccal-mm"
        DEPLMCJ3 = "Perio: FGM/CEJ, lower cuspid: mesial-mm"
        DEPLMPC3 = "Perio: pocket, lower cuspid: mesial-mm"
        DEPLBCJ3 = "Perio: FGM/CEJ, lower cuspid: buccal-mm"
        DEPLBPC3 = "Perio: pocket, lower cuspid: buccal-mm"
        DEPLMCJ4 = "Perio:FGM/CEJ,lower 1bicuspid:mesial-mm"
        DEPLMPC4 = "Perio:pocket,lower 1bicuspid: mesial-mm"
        DEPLBCJ4 = "Perio:FGM/CEJ,lower 1bicuspid: buccal-mm"
        DEPLBPC4 = "Perio:pocket, lower 1bicuspid: buccal-mm"
        DEPLMCJ5 = "Perio:FGM/CEJ,lower 2bicuspid: mesial-mm"
        DEPLMPC5 = "Perio:pocket, lower 2bicuspid: mesial-mm"
        DEPLBCJ5 = "Perio:FGM/CEJ,lower 2bicuspid: buccal-mm"
        DEPLBPC5 = "Perio:pocket,lower 2bicuspid: buccal-mm"
        DEPLMCJ6 = "Perio: FGM/CEJ, lower 1molar: mesial-mm"
        DEPLMPC6 = "Perio: pocket, lower 1molar: mesial-mm"
        DEPLBCJ6 = "Perio: FGM/CEJ, lower 1molar: buccal-mm"
        DEPLBPC6 = "Perio: pocket, lower 1molar: buccal-mm"
        DEPLMCJ7 = "Perio: FGM/CEJ, lower 2molar: mesial-mm"
        DEPLMPC7 = "Perio: pocket, lower 2molar: mesial-mm"
        DEPLBCJ7 = "Perio: FGM/CEJ, lower 2molar: buccal-mm"
        DEPLBPC7 = "Perio: pocket, lower 2molar: buccal-mm"
        DEPUMLA1 = "Perio:loss-attac, upr cen inci:mesial-mm"
        DEPUBLA1 = "Perio:loss-attac, upr cen inci:buccal-mm"
        DEPUMLA2 = "Perio:loss-attac, upr lat inci:mesial-mm"
        DEPUBLA2 = "Perio:loss-attac, upr lat inci:buccal-mm"
        DEPUMLA3 = "Perio: loss-attac, upr cuspid: mesial-mm"
        DEPUBLA3 = "Perio: loss-attac, upr cuspid: buccal-mm"
        DEPUMLA4 = "Perio:loss-attac,upr 1bicuspid:mesial-mm"
        DEPUBLA4 = "Perio:loss-attac,upr 1bicuspid:buccal-mm"
        DEPUMLA5 = "Perio:loss-attac,upr 2bicuspid:mesial-mm"
        DEPUBLA5 = "Perio:loss-attac,upr 2bicuspid:buccal-mm"
        DEPUMLA6 = "Perio: loss-attac, upr 1molar mesial-mm"
        DEPUBLA6 = "Perio: loss-attac, upr 1molar: buccal-mm"
        DEPUMLA7 = "Perio: loss-attac, upr 2molar:mesial-mm"
        DEPUBLA7 = "Perio: loss-attac, upr 1molar: buccal-mm"
        DEPLMLA1 = "Perio: loss-attac,lwr cen inci:mesial-mm"
        DEPLBLA1 = "Perio: loss-attac,lwr cen inci:buccal-mm"
        DEPLMLA2 = "Perio: loss-attac,lwr lat inci:mesial-mm"
        DEPLBLA2 = "Perio: loss-attac,lwr lat inci:buccal-mm"
        DEPLMLA3 = "Perio: loss-attac, lwr cuspid: mesial-mm"
        DEPLBLA3 = "Perio: loss-attac, lwr cuspid: buccal-mm"
        DEPLMLA4 = "Perio:loss-attac,lwr 1bicuspid:mesial-mm"
        DEPLBLA4 = "Perio:loss-attac,lwr 1bicuspid:buccal-mm"
        DEPLMLA5 = "Perio:loss-attac,lwr 2bicuspid:mesial-mm"
        DEPLBLA5 = "Perio:loss-attac,lwr 2bicuspid:buccal-mm"
        DEPLMLA6 = "Perio: loss attac, lwr 1molar: mesial-mm"
        DEPLBLA6 = "Perio: loss-attac, lwr 1molar: buccal-mm"
        DEPLMLA7 = "Perio: loss-attac, lwr 2molar: mesial-mm"
        DEPLBLA7 = "Perio: loss-attac, lwr 1molar: buccal-mm"
        DEPUB2MF = "Perio:furcations, upper 2bicuspid:mesial"
        DEPUB2DF = "Perio:furcations, upper 2bicuspid:distal"
        DEPUM1MF = "Perio:furcations, upper 1molar: mesial"
        DEPUM1BF = "Perio:furcations, upper 1molar: buccal"
        DEPUM1DF = "Perio:furcations, upper 1molar: distal"
        DEPUM2MF = "Perio:furcations, upper 2molar: mesial"
        DEPUM2BF = "Perio:furcations, upper 2molar: buccal"
        DEPUM2DF = "Perio: furcations, upper 2molar: distal"
        DEPLM1LF = "Perio: furcations, lower 1molar: lingual"
        DEPLM1BF = "Perio: furcations, lower 1molar: buccal"
        DEPLM2LF = "Perio: furcations, lower 2molar: lingual"
        DEPLM2BF = "Perio: furcations, lower 2molar: buccal"
        DEPNUMLS = "Oral soft tissue: number of lesions"
        DEPSTLC1 = "Soft tissue lesion 1: location"
        DEPSTDX1 = "Soft tissue lesion 1: clinical diagnosis"
        DEPSMRQ1 = "Soft tissue lesion 1: smear required"
        DEPSMTK1 = "Soft tissue lesion 1: smear taken"
        DEPYEAS1 = "Soft tissue lesion 1: yeast result"
        DEPHYPH1 = "Soft tissue lesion 1: hyphae result"
        DEPCDRQ1 = "Soft tissue lesion 1: clin. descrpt. req"
        DEPSTXT1 = "Soft tissue lesion 1: extent"
        DEPSTLN1 = "Soft tissue lesion 1: length-mm"
        DEPSTWD1 = "Soft tissue lesion 1: width-mm"
        DEPSTHT1 = "Soft tissue lesion 1: height-mm"
        DEPSTMF1 = "Soft tissue lesion 1: surface morphology"
        DEPSTCL1 = "Soft tissue lesion 1: color"
        DEPSTCS1 = "Soft tissue lesion 1: consistency"
        DEPSTPN1 = "Soft tissue lesion 1: pain"
        DEPSTPD1 = "Soft tissue lesion 1: duration"
        DEPSTHS1 = "Soft tissue lesion 1: prior history"
        DEPSTLC2 = "Soft tissue lesion 2: location"
        DEPSTDX2 = "Soft tissue lesion 2: clinical diagnosis"
        DEPSMRQ2 = "Soft tissue lesion 2: smear required"
        DEPSMTK2 = "Soft tissue lesion 2: smear taken"
        DEPYEAS2 = "Soft tissue lesion 2: yeast result"
        DEPHYPH2 = "Soft tissue lesion 2: hyphae result"
        DEPCDRQ2 = "Soft tissue lesion 2: clin. descrpt. req"
        DEPSTXT2 = "Soft tissue lesion 2: extent"
        DEPSTLN2 = "Soft tissue lesion 2: length-mm"
        DEPSTWD2 = "Soft tissue lesion 2: width-mm"
        DEPSTHT2 = "Soft tissue lesion 2: height-mm"
        DEPSTMF2 = "Soft tissue lesion 2: surface morphology"
        DEPSTCL2 = "Soft tissue lesion 2: color"
        DEPSTCS2 = "Soft tissue lesion 2: consistency"
        DEPSTPN2 = "Soft tissue lesion 2: pain"
        DEPSTPD2 = "Soft tissue lesion 2: duration"
        DEPSTHS2 = "Soft tissue lesion 2: prior history"
        DEPSTLC3 = "Soft tissue lesion 3: location"
        DEPSTDX3 = "Soft tissue lesion 3: clinical diagnosis"
        DEPSMRQ3 = "Soft tissue lesion 3: smear required"
        DEPSMTK3 = "Soft tissue lesion 3: smear taken"
        DEPYEAS3 = "Soft tissue lesion 3: yeast result"
        DEPHYPH3 = "Soft tissue lesion 3: hyphae result"
        DEPCDRQ3 = "Soft tissue lesion 3: clin. descrpt. req"
        DEPSTXT3 = "Soft tissue lesion 3: extent"
        DEPSTLN3 = "Soft tissue lesion 3: length-mm"
        DEPSTWD3 = "Soft tissue lesion 3: width-mm"
        DEPSTHT3 = "Soft tissue lesion 3: height-mm"
        DEPSTMF3 = "Soft tissue lesion 3: surface morphology"
        DEPSTCL3 = "Soft tissue lesion 3: color"
        DEPSTCS3 = "Soft tissue lesion 3: consistency"
        DEPSTPN3 = "Soft tissue lesion 3: pain"
        DEPSTPD3 = "Soft tissue lesion 3: duration"
        DEPSTHS3 = "Soft tissue lesion 3: prior history"
        DEPSTLC4 = "Soft tissue lesion 4: location"
        DEPSTDX4 = "Soft tissue lesion 4: clinical diagnosis"
        DEPSMRQ4 = "Soft tissue lesion 4: smear required"
        DEPSMTK4 = "Soft tissue lesion 4: smear taken"
        DEPYEAS4 = "Soft tissue lesion 4: yeast result"
        DEPHYPH4 = "Soft tissue lesion 4: hyphae result"
        DEPCDRQ4 = "Soft tissue lesion 4: clin. descrpt. req"
        DEPSTXT4 = "Soft tissue lesion 4: extent"
        DEPSTLN4 = "Soft tissue lesion 4: length-mm"
        DEPSTWD4 = "Soft tissue lesion 4: width-mm"
        DEPSTHT4 = "Soft tissue lesion 4: height-mm"
        DEPSTMF4 = "Soft tissue lesion 4: surface morphology"
        DEPSTCL4 = "Soft tissue lesion 4: color"
        DEPSTCS4 = "Soft tissue lesion 4: consistency"
        DEPSTPN4 = "Soft tissue lesion 4: pain"
        DEPSTPD4 = "Soft tissue lesion 4: duration"
        DEPSTHS4 = "Soft tissue lesion 4: prior history"
        DEPSTLC5 = "Soft tissue lesion 5: location"
        DEPSTDX5 = "Soft tissue lesion 5: clinical diagnosis"
        DEPSMRQ5 = "Soft tissue lesion 5: smear required"
        DEPSMTK5 = "Soft tissue lesion 5: smear taken"
        DEPYEAS5 = "Soft tissue lesion 5: yeast result"
        DEPHYPH5 = "Soft tissue lesion 5: hyphae result"
        DEPCDRQ5 = "Soft tissue lesion 5: clin. descrpt. req"
        DEPSTXT5 = "Soft tissue lesion 5: extent"
        DEPSTLN5 = "Soft tissue lesion 5: length-mm"
        DEPSTWD5 = "Soft tissue lesion 5: width-mm"
        DEPSTHT5 = "Soft tissue lesion 5: height-mm"
        DEPSTMF5 = "Soft tissue lesion 5: surface morphology"
        DEPSTCL5 = "Soft tissue lesion 5: color"
        DEPSTCS5 = "Soft tissue lesion 5: consistency"
        DEPSTPN5 = "Soft tissue lesion 5: pain"
        DEPSTPD5 = "Soft tissue lesion 5: duration"
        DEPSTHS5 = "Soft tissue lesion 5: prior history"
        DEPSTOT5 = "Soft tissue lesion 5: other"
        DEPSTLC6 = "Soft tissue lesion 6: locations"
        DEPSTDX6 = "Soft tissue lesion 6: clinical diagnosis"
        DEPSMRQ6 = "Soft tissue lesion 6: smear required"
        DEPSMTK6 = "Soft tissue lesion 6: smear taken"
        DEPYEAS6 = "Soft tissue lesion 6: yeast result"
        DEPHYPH6 = "Soft tissue lesion 6: hyphae result"
        DEPCDRQ6 = "Soft tissue lesion 6: clin. descrpt. req"
        DEPSTXT6 = "Soft tissue lesion 6: extent"
        DEPSTLN6 = "Soft tissue lesion 6: length-mm"
        DEPSTWD6 = "Soft tissue lesion 6: width-mm"
        DEPSTHT6 = "Soft tissue lesion 6: height-mm"
        DEPSTMF6 = "Soft tissue lesion 6: surface morphology"
        DEPSTCL6 = "Soft tissue lesion 6: color"
        DEPSTCS6 = "Soft tissue lesion 6: consistency"
        DEPSTPN6 = "Soft tissue lesion 6: pain"
        DEPSTPD6 = "Soft tissue lesion 6: duration"
        DEPSTHS6 = "Soft tissue lesion 6: prior history"
        DEPSTOT6 = "Soft tissue lesion 6: other"
        DEPRTC1  = "Tooth condition: upper left cen incisor"
        DEPRTC2  = "Tooth condition: upper left lat incisor"
        DEPRTC3  = "Tooth condition: upper left cuspid"
        DEPRTC4  = "Tooth condition: upper left 1bicuspid"
        DEPRTC5  = "Tooth condition: upper left 2bicuspid"
        DEPRTC6  = "Tooth condition: upper left 1molar"
        DEPRTC7  = "Tooth condition: upper left 2molar"
        DEPRTC8  = "Tooth condition: upper right cen incisor"
        DEPRTC9  = "Tooth condition: upper right lat incisor"
        DEPRTC10 = "Tooth condition: upper right cuspid"
        DEPRTC11 = "Tooth condition: upper right 1bicuspid"
        DEPRTC12 = "Tooth condition: upper right 2bicuspid"
        DEPRTC13 = "Tooth condition: upper right 1molar"
        DEPRTC14 = "Tooth condition: upper right 2molar"
        DEPRTC15 = "Tooth condition: lower left cen incisor"
        DEPRTC16 = "Tooth condition: lower left lat incisor"
        DEPRTC17 = "Tooth condition: lower left cuspid"
        DEPRTC18 = "Tooth condition: lower left 1bicuspid"
        DEPRTC19 = "Tooth condition: lower left 2bicuspid"
        DEPRTC20 = "Tooth condition: lower left 1molar"
        DEPRTC21 = "Tooth condition: lower left 2molar"
        DEPRTC22 = "Tooth condition: lower right cen incisor"
        DEPRTC23 = "Tooth condition: lower right lat incisor"
        DEPRTC24 = "Tooth condition: lower right cuspid"
        DEPRTC25 = "Tooth condition: lower right 1bicuspid"
        DEPRTC26 = "Tooth condition: lower right 2bicuspid"
        DEPRTC27 = "Tooth condition: lower right 1molar"
        DEPRTC28 = "Tooth condition: lower right 2molar"
        DEPUTRA1 = "Trauma: upper left central incisor"
        DEPUTRA2 = "Trauma: upper left lateral incisor"
        DEPUTRA3 = "Trauma: upper right central incisor"
        DEPUTRA4 = "Trauma: upper right lateral incisor"
        DEPLTRA1 = "Trauma: lower left central incisor"
        DEPLTRA2 = "Trauma: lower left lateral incisor"
        DEPLTRA3 = "Trauma: lower right central incisor"
        DEPLTRA4 = "Trauma: lower right lateral incisor"
        DEPUAL1  = "Occlusal: upper right canine-lateral-mm"
        DEPUAL2  = "Occlusal: upper right lateral-central-mm"
        DEPUAL3  = "Occlusal: upper right cen-left cen-mm"
        DEPUAL4  = "Occlusal: upper left central-left lat-mm"
        DEPUAL5  = "Occlusal: upper left lat-left canine-mm"
        DEPLAL1  = "Occlusal: lower left canine-lft lat-mm"
        DEPLAL2  = "Occlusal: lower left lateral-left cen-mm"
        DEPLAL3  = "Occlusal: lower lft central-right cen-mm"
        DEPLAL4  = "Occlusal: lower rt central-rt late-mm"
        DEPLAL5  = "Occlusal: lower rt latera-rt canine-mm"
        DEPDIAS  = "Occlusal: maxillary diastema"
        DEPXBITE = "Occlusal: posterior cross bite"
        DEPOVJET = "Occlusal characteristics: overjet-mm"
        DEPOPB   = "Occlusal characteristics: openbite"
        DEPOVB   = "Occlusal characteristics: overbite (mm)"
        DEPDQU1  = "Do you usually wear your upper denture"
        DEPDQU2  = "During past yr, problem w/ upr denture"
        DEPDQU3  = "Need a new upper jaw denture or refit"
        DEPDQU4  = "How long since had upper natural teeth"
        DEPDQL1  = "Do you usually wear your lower denture"
        DEPDQL2  = "During past yr, problem w/ lwr denture"
        DEPDQL3  = "Need a new lower jaw denture or refit"
        DEPDQL4  = "How long since had lower natural teeth"
        DEPUPTYP = "Prosthesis assessment: upper type"
        DEPUPAI  = "Prosthesis assessment: upper integrity"
        DEPUPAW  = "Prosthesis: upper excessive tooth wear"
        DEPUPARL = "Prosthesis: upper reline/cond/dent mat"
        DEPUPAS  = "Prosthesis: upper denture stability"
        DEPUPART = "Prosthesis: upper denture retention"
        DEPLPTYP = "Prosthesis assessment: lower type"
        DEPLPAI  = "Prosthesis assessment: lower integrity"
        DEPLPAW  = "Prosthesis: lower excessive tooth wear"
        DEPLPARL = "Prosthesis ass: lower reline material"
        DEPLPAS  = "Prosthesis: lower denture stability"
        DEPLPART = "Prosthesis: lower denture retention"
        ALPQ1    = "Having problems breathing in chest/lungs"
        ALPQ2    = "Do you usually have breathing problems"
        ALPQ3    = "Breathing problem worse than usual"
        ALPQ4    = "Past severe reaction, allergen skin test"
        ALPQ5    = "Severe eczema or infection on both arms"
        ALPNEGAR = "Negative control - which arm"
        ALPNEGFL = "Negative control - flare length (mm)"
        ALPNEGFW = "Negative control - flare width (mm)"
        ALPNEGCN = "Negative control - confluent"
        ALPNEGWL = "Negative control - wheal length (mm)"
        ALPNEGWW = "Negative control - wheal width (mm)"
        ALPWHIAR = "White oak - which arm"
        ALPWHIFL = "White oak - flare length (mm)"
        ALPWHIFW = "White oak - flare width (mm)"
        ALPWHICN = "White oak - confluent"
        ALPWHIWL = "White oak - wheal length (mm)"
        ALPWHIWW = "White oak - wheal width (mm)"
        ALPCATAR = "Cat - which arm"
        ALPCATFL = "Cat - flare length (mm)"
        ALPCATFW = "Cat - flare width (mm)"
        ALPCATCN = "Cat - confluent"
        ALPCATWL = "Cat - wheal length (mm)"
        ALPCATWW = "Cat - wheal width (mm)"
        ALPMITAR = "Mite - which arm"
        ALPMITFL = "Mite - flare length (mm)"
        ALPMITFW = "Mite - flare width (mm)"
        ALPMITCN = "Mite - confluent"
        ALPMITWL = "Mite - wheal length (mm)"
        ALPMITWW = "Mite - wheal width (mm)"
        ALPALTAR = "Alternaria - which arm"
        ALPALTFL = "Alternaria - flare length (mm)"
        ALPALTFW = "Alternaria - flare width (mm)"
        ALPALTCN = "Alternaria - confluent"
        ALPALTWL = "Alternaria - wheal length (mm)"
        ALPALTWW = "Alternaria - wheal width (mm)"
        ALPRYEAR = "Rye grass - which arm"
        ALPRYEFL = "Rye grass - flare length (mm)"
        ALPRYEFW = "Rye grass - flare width (mm)"
        ALPRYECN = "Rye grass - confluent"
        ALPRYEWL = "Rye grass - wheal length (mm)"
        ALPRYEWW = "Rye grass - wheal width (mm)"
        ALPPEAAR = "Peanut - which arm"
        ALPPEAFL = "Peanut - flare length (mm)"
        ALPPEAFW = "Peanut - flare width (mm)"
        ALPPEACN = "Peanut - confluent"
        ALPPEAWL = "Peanut - wheal length (mm)"
        ALPPEAWW = "Peanut - wheal width (mm)"
        ALPTHIAR = "Russian thistle - which arm"
        ALPTHIFL = "Russian thistle - flare length (mm)"
        ALPTHIFW = "Russian thistle - flare width (mm)"
        ALPTHICN = "Russian thistle - confluent"
        ALPTHIWL = "Russian thistle - wheal length (mm)"
        ALPTHIWW = "Russian thistle - wheal width (mm)"
        ALPCOCAR = "German cockroach - which arm"
        ALPCOCFL = "German cockroach - flare length (mm)"
        ALPCOCFW = "German cockroach - flare width (mm)"
        ALPCOCCN = "German cockroach - confluent"
        ALPCOCWL = "German cockroach - wheal length (mm)"
        ALPCOCWW = "German cockroach - wheal width (mm)"
        ALPBERAR = "Bermuda grass - which arm"
        ALPBERFL = "Bermuda grass - flare length (mm)"
        ALPBERFW = "Bermuda grass - flare width (mm)"
        ALPBERCN = "Bermuda grass - confluent"
        ALPBERWL = "Bermuda grass - wheal length (mm)"
        ALPBERWW = "Bermuda grass - wheal width (mm)"
        ALPRAGAR = "Ragweed - which arm"
        ALPRAGFL = "Ragweed - flare length (mm)"
        ALPRAGFW = "Ragweed - flare width (mm)"
        ALPRAGCN = "Ragweed - confluent"
        ALPRAGWL = "Ragweed - wheal length (mm)"
        ALPRAGWW = "Ragweed - wheal width (mm)"
        ALPPSCAR = "Positive control - which arm"
        ALPPSCFL = "Positive control - flare length (mm)"
        ALPPSCFW = "Positive control - flare width (mm)"
        ALPPSCCN = "Positive control - confluent"
        ALPPSCWL = "Positive control - wheal length (mm)"
        ALPPSCWW = "Positive control - wheal width (mm)"
        ALPTECH1 = "Examiner number 1"
        ALPTECH2 = "Examiner number 2"
        AUPA1    = "Cold or sinus problem within past week"
        AUPA2    = "Cold or sinus problem today"
        AUPA3    = "Exposed to very loud noise past 24 hrs"
        AUPA4    = "How many hours ago did the noise end"
        AUPA5    = "Music with headphones in past 24 hours"
        AUPA6    = "How many hours ago stop listening"
        AUPA7    = "Buzzing/ringing or other noises today"
        AUPA8    = "Earache within the past week"
        AUPA9    = "Do you have a tube in right or left ear"
        AUPA10   = "Drainage/discharge from either ear"
        AUPAUDO1 = "Audiometer number"
        AUPB1A1  = "Left ear air hear level,first,1000Hz(dB)"
        AUPB1A2  = "Left ear air hearing level, 2000 Hz (dB)"
        AUPB1A3  = "Left ear air hearing level, 3000 Hz (dB)"
        AUPB1A4  = "Left ear air hearing level, 4000 Hz (dB)"
        AUPB1A5  = "Left ear air hearing level, 6000 Hz (dB)"
        AUPB1A6  = "Left ear air hearing level, 8000 Hz (dB)"
        AUPB1A7  = "Left ear air hear lvl, repeat,1000Hz(dB)"
        AUPB1A8  = "Left ear air hearing level, 500 Hz (dB)"
        AUPB2A1  = "Right ear air hear level,first,1000Hz(dB"
        AUPB2A2  = "Right ear air hearing level, 2000 Hz(dB)"
        AUPB2A3  = "Right ear air hearing level, 3000 Hz(dB)"
        AUPB2A4  = "Right ear air hearing level, 4000 Hz(dB)"
        AUPB2A5  = "Right ear air hearing level, 6000 Hz(dB)"
        AUPB2A6  = "Right ear air hearing level, 8000 Hz(dB)"
        AUPB2A7  = "Right ear air hear lvl,repeat,1000Hz(dB)"
        AUPB2A8  = "Right ear air hearing level, 500 Hz (dB)"
        AUPAUDO2 = "Audiometer number for retest"
        AUPB1C1  = "Left ear hear lvl,first,retest,1000Hz(dB"
        AUPB1C2  = "Left ear air hear level,retest,2000Hz(dB"
        AUPB1C3  = "Left ear air hear level,retest,3000Hz(dB"
        AUPB1C4  = "Left ear air hear level,retest,4000Hz(dB"
        AUPB1C5  = "Left ear air hear level,retest,6000Hz(dB"
        AUPB1C6  = "Left ear air hear level,retest,8000Hz(dB"
        AUPB1C7  = "Lt ear hear lvl,repeat,retest,1000Hz(dB)"
        AUPB1C8  = "Left ear air hear level,retest,500Hz(dB)"
        AUPB2C1  = "Rt ear hear level,first,retest,1000Hz(dB"
        AUPB2C2  = "Right ear air hear lvl,retest,2000Hz(dB)"
        AUPB2C3  = "Right ear air hear lvl,retest,3000Hz(dB)"
        AUPB2C4  = "Right ear air hear lvl,retest,4000Hz(dB)"
        AUPB2C5  = "Right ear air hear lvl,retest,6000Hz(dB)"
        AUPB2C6  = "Right ear air hear lvl,retest,8000Hz(dB)"
        AUPB2C7  = "Rt ear hear lvl,repeat,retest,1000Hz(dB)"
        AUPB2C8  = "Right ear air hear level,retest,500Hz(dB"
        AUPTECH  = "Examiner number"
        TYPCMPLL = "Compliance (base-peak diff) left ear(ml)"
        TYPCMPLR = "Compliance(base-peak diff) right ear(ml)"
        TYPPRSPL = "Pressure at peak, left ear (daPa)"
        TYPPRSPR = "Pressure at peak, right ear (daPa)"
        TYPVOLL  = "Canal volume, left ear (ml)"
        TYPVOLR  = "Canal volume, right ear (ml)"
        TYPRFXL  = "Reflex, left ear (dB)"
        TYPRFXR  = "Reflex, right ear (dB)"
        TYPC000L = "Equiv volume at -400 daPa, left ear (ml)"
        TYPC001L = "Equiv volume at -395 daPa, left ear (ml)"
        TYPC002L = "Equiv volume at -390 daPa, left ear (ml)"
        TYPC003L = "Equiv volume at -385 daPa, left ear (ml)"
        TYPC004L = "Equiv volume at -380 daPa, left ear (ml)"
        TYPC005L = "Equiv volume at -375 daPa, left ear (ml)"
        TYPC006L = "Equiv volume at -370 daPa, left ear (ml)"
        TYPC007L = "Equiv volume at -365 daPa, left ear (ml)"
        TYPC008L = "Equiv volume at -360 daPa, left ear (ml)"
        TYPC009L = "Equiv volume at -355 daPa, left ear (ml)"
        TYPC010L = "Equiv volume at -350 daPa, left ear (ml)"
        TYPC011L = "Equiv volume at -345 daPa, left ear (ml)"
        TYPC012L = "Equiv volume at -340 daPa, left ear (ml)"
        TYPC013L = "Equiv volume at -335 daPa, left ear (ml)"
        TYPC014L = "Equiv volume at -330 daPa, left ear (ml)"
        TYPC015L = "Equiv volume at -325 daPa, left ear (ml)"
        TYPC016L = "Equiv volume at -320 daPa, left ear (ml)"
        TYPC017L = "Equiv volume at -315 daPa, left ear (ml)"
        TYPC018L = "Equiv volume at -310 daPa, left ear (ml)"
        TYPC019L = "Equiv volume at -305 daPa, left ear (ml)"
        TYPC020L = "Equiv volume at -300 daPa, left ear (ml)"
        TYPC021L = "Equiv volume at -295 daPa, left ear (ml)"
        TYPC022L = "Equiv volume at -290 daPa, left ear (ml)"
        TYPC023L = "Equiv volume at -285 daPa, left ear (ml)"
        TYPC024L = "Equiv volume at -280 daPa, left ear (ml)"
        TYPC025L = "Equiv volume at -275 daPa, left ear (ml)"
        TYPC026L = "Equiv volume at -270 daPa, left ear (ml)"
        TYPC027L = "Equiv volume at -265 daPa, left ear (ml)"
        TYPC028L = "Equiv volume at -260 daPa, left ear (ml)"
        TYPC029L = "Equiv volume at -255 daPa, left ear (ml)"
        TYPC030L = "Equiv volume at -250 daPa, left ear (ml)"
        TYPC031L = "Equiv volume at -245 daPa, left ear (ml)"
        TYPC032L = "Equiv volume at -240 daPa, left ear (ml)"
        TYPC033L = "Equiv volume at -235 daPa, left ear (ml)"
        TYPC034L = "Equiv volume at -230 daPa, left ear (ml)"
        TYPC035L = "Equiv volume at -225 daPa, left ear (ml)"
        TYPC036L = "Equiv volume at -220 daPa, left ear (ml)"
        TYPC037L = "Equiv volume at -215 daPa, left ear (ml)"
        TYPC038L = "Equiv volume at -210 daPa, left ear (ml)"
        TYPC039L = "Equiv volume at -205 daPa, left ear (ml)"
        TYPC040L = "Equiv volume at -200 daPa, left ear (ml)"
        TYPC041L = "Equiv volume at -195 daPa, left ear (ml)"
        TYPC042L = "Equiv volume at -190 daPa, left ear (ml)"
        TYPC043L = "Equiv volume at -185 daPa, left ear (ml)"
        TYPC044L = "Equiv volume at -180 daPa, left ear (ml)"
        TYPC045L = "Equiv volume at -175 daPa, left ear (ml)"
        TYPC046L = "Equiv volume at -170 daPa, left ear (ml)"
        TYPC047L = "Equiv volume at -165 daPa, left ear (ml)"
        TYPC048L = "Equiv volume at -160 daPa, left ear (ml)"
        TYPC049L = "Equiv volume at -155 daPa, left ear (ml)"
        TYPC050L = "Equiv volume at -150 daPa, left ear (ml)"
        TYPC051L = "Equiv volume at -145 daPa, left ear (ml)"
        TYPC052L = "Equiv volume at -140 daPa, left ear (ml)"
        TYPC053L = "Equiv volume at -135 daPa, left ear (ml)"
        TYPC054L = "Equiv volume at -130 daPa, left ear (ml)"
        TYPC055L = "Equiv volume at -125 daPa, left ear (ml)"
        TYPC056L = "Equiv volume at -120 daPa, left ear (ml)"
        TYPC057L = "Equiv volume at -115 daPa, left ear (ml)"
        TYPC058L = "Equiv volume at -110 daPa, left ear (ml)"
        TYPC059L = "Equiv volume at -105 daPa, left ear (ml)"
        TYPC060L = "Equiv volume at -100 daPa, left ear (ml)"
        TYPC061L = "Equiv volume at  -95 daPa, left ear (ml)"
        TYPC062L = "Equiv volume at  -90 daPa, left ear (ml)"
        TYPC063L = "Equiv volume at  -85 daPa, left ear (ml)"
        TYPC064L = "Equiv volume at  -80 daPa, left ear (ml)"
        TYPC065L = "Equiv volume at  -75 daPa, left ear (ml)"
        TYPC066L = "Equiv volume at  -70 daPa, left ear (ml)"
        TYPC067L = "Equiv volume at  -65 daPa, left ear (ml)"
        TYPC068L = "Equiv volume at  -60 daPa, left ear (ml)"
        TYPC069L = "Equiv volume at  -55 daPa, left ear (ml)"
        TYPC070L = "Equiv volume at  -50 daPa, left ear (ml)"
        TYPC071L = "Equiv volume at  -45 daPa, left ear (ml)"
        TYPC072L = "Equiv volume at  -40 daPa, left ear (ml)"
        TYPC073L = "Equiv volume at  -35 daPa, left ear (ml)"
        TYPC074L = "Equiv volume at  -30 daPa, left ear (ml)"
        TYPC075L = "Equiv volume at  -25 daPa, left ear (ml)"
        TYPC076L = "Equiv volume at  -20 daPa, left ear (ml)"
        TYPC077L = "Equiv volume at  -15 daPa, left ear (ml)"
        TYPC078L = "Equiv volume at  -10 daPa, left ear (ml)"
        TYPC079L = "Equiv volume at   -5 daPa, left ear (ml)"
        TYPC080L = "Equiv volume at    0 daPa, left ear (ml)"
        TYPC081L = "Equiv volume at    5 daPa, left ear (ml)"
        TYPC082L = "Equiv volume at   10 daPa, left ear (ml)"
        TYPC083L = "Equiv volume at   15 daPa, left ear (ml)"
        TYPC084L = "Equiv volume at   20 daPa, left ear (ml)"
        TYPC085L = "Equiv volume at   25 daPa, left ear (ml)"
        TYPC086L = "Equiv volume at   30 daPa, left ear (ml)"
        TYPC087L = "Equiv volume at   35 daPa, left ear (ml)"
        TYPC088L = "Equiv volume at   40 daPa, left ear (ml)"
        TYPC089L = "Equiv volume at   45 daPa, left ear (ml)"
        TYPC090L = "Equiv volume at   50 daPa, left ear (ml)"
        TYPC091L = "Equiv volume at   55 daPa, left ear (ml)"
        TYPC092L = "Equiv volume at   60 daPa, left ear (ml)"
        TYPC093L = "Equiv volume at   65 daPa, left ear (ml)"
        TYPC094L = "Equiv volume at   70 daPa, left ear (ml)"
        TYPC095L = "Equiv volume at   75 daPa, left ear (ml)"
        TYPC096L = "Equiv volume at   80 daPa, left ear (ml)"
        TYPC097L = "Equiv volume at   85 daPa, left ear (ml)"
        TYPC098L = "Equiv volume at   90 daPa, left ear (ml)"
        TYPC099L = "Equiv volume at   95 daPa, left ear (ml)"
        TYPC100L = "Equiv volume at  100 daPa, left ear (ml)"
        TYPC101L = "Equiv volume at  105 daPa, left ear (ml)"
        TYPC102L = "Equiv volume at  110 daPa, left ear (ml)"
        TYPC103L = "Equiv volume at  115 daPa, left ear (ml)"
        TYPC104L = "Equiv volume at  120 daPa, left ear (ml)"
        TYPC105L = "Equiv volume at  125 daPa, left ear (ml)"
        TYPC106L = "Equiv volume at  130 daPa, left ear (ml)"
        TYPC107L = "Equiv volume at  135 daPa, left ear (ml)"
        TYPC108L = "Equiv volume at  140 daPa, left ear (ml)"
        TYPC109L = "Equiv volume at  145 daPa, left ear (ml)"
        TYPC110L = "Equiv volume at  150 daPa, left ear (ml)"
        TYPC111L = "Equiv volume at  155 daPa, left ear (ml)"
        TYPC112L = "Equiv volume at  160 daPa, left ear (ml)"
        TYPC113L = "Equiv volume at  165 daPa, left ear (ml)"
        TYPC114L = "Equiv volume at  170 daPa, left ear (ml)"
        TYPC115L = "Equiv volume at  175 daPa, left ear (ml)"
        TYPC116L = "Equiv volume at  180 daPa, left ear (ml)"
        TYPC117L = "Equiv volume at  185 daPa, left ear (ml)"
        TYPC118L = "Equiv volume at  190 daPa, left ear (ml)"
        TYPC119L = "Equiv volume at  195 daPa, left ear (ml)"
        TYPC120L = "Equiv volume at  200 daPa, left ear (ml)"
        TYPC000R = "Equiv volume at -400 daPa, right ear(ml)"
        TYPC001R = "Equiv volume at -395 daPa, right ear(ml)"
        TYPC002R = "Equiv volume at -390 daPa, right ear(ml)"
        TYPC003R = "Equiv volume at -385 daPa, right ear(ml)"
        TYPC004R = "Equiv volume at -380 daPa, right ear(ml)"
        TYPC005R = "Equiv volume at -375 daPa, right ear(ml)"
        TYPC006R = "Equiv volume at -370 daPa, right ear(ml)"
        TYPC007R = "Equiv volume at -365 daPa, right ear(ml)"
        TYPC008R = "Equiv volume at -360 daPa, right ear(ml)"
        TYPC009R = "Equiv volume at -355 daPa, right ear(ml)"
        TYPC010R = "Equiv volume at -350 daPa, right ear(ml)"
        TYPC011R = "Equiv volume at -345 daPa, right ear(ml)"
        TYPC012R = "Equiv volume at -340 daPa, right ear(ml)"
        TYPC013R = "Equiv volume at -335 daPa, right ear(ml)"
        TYPC014R = "Equiv volume at -330 daPa, right ear(ml)"
        TYPC015R = "Equiv volume at -325 daPa, right ear(ml)"
        TYPC016R = "Equiv volume at -320 daPa, right ear(ml)"
        TYPC017R = "Equiv volume at -315 daPa, right ear(ml)"
        TYPC018R = "Equiv volume at -310 daPa, right ear(ml)"
        TYPC019R = "Equiv volume at -305 daPa, right ear(ml)"
        TYPC020R = "Equiv volume at -300 daPa, right ear(ml)"
        TYPC021R = "Equiv volume at -295 daPa, right ear(ml)"
        TYPC022R = "Equiv volume at -290 daPa, right ear(ml)"
        TYPC023R = "Equiv volume at -285 daPa, right ear(ml)"
        TYPC024R = "Equiv volume at -280 daPa, right ear(ml)"
        TYPC025R = "Equiv volume at -275 daPa, right ear(ml)"
        TYPC026R = "Equiv volume at -270 daPa, right ear(ml)"
        TYPC027R = "Equiv volume at -265 daPa, right ear(ml)"
        TYPC028R = "Equiv volume at -260 daPa, right ear(ml)"
        TYPC029R = "Equiv volume at -255 daPa, right ear(ml)"
        TYPC030R = "Equiv volume at -250 daPa, right ear(ml)"
        TYPC031R = "Equiv volume at -245 daPa, right ear(ml)"
        TYPC032R = "Equiv volume at -240 daPa, right ear(ml)"
        TYPC033R = "Equiv volume at -235 daPa, right ear(ml)"
        TYPC034R = "Equiv volume at -230 daPa, right ear(ml)"
        TYPC035R = "Equiv volume at -225 daPa, right ear(ml)"
        TYPC036R = "Equiv volume at -220 daPa, right ear(ml)"
        TYPC037R = "Equiv volume at -215 daPa, right ear(ml)"
        TYPC038R = "Equiv volume at -210 daPa, right ear(ml)"
        TYPC039R = "Equiv volume at -205 daPa, right ear(ml)"
        TYPC040R = "Equiv volume at -200 daPa, right ear(ml)"
        TYPC041R = "Equiv volume at -195 daPa, right ear(ml)"
        TYPC042R = "Equiv volume at -190 daPa, right ear(ml)"
        TYPC043R = "Equiv volume at -185 daPa, right ear(ml)"
        TYPC044R = "Equiv volume at -180 daPa, right ear(ml)"
        TYPC045R = "Equiv volume at -175 daPa, right ear(ml)"
        TYPC046R = "Equiv volume at -170 daPa, right ear(ml)"
        TYPC047R = "Equiv volume at -165 daPa, right ear(ml)"
        TYPC048R = "Equiv volume at -160 daPa, right ear(ml)"
        TYPC049R = "Equiv volume at -155 daPa, right ear(ml)"
        TYPC050R = "Equiv volume at -150 daPa, right ear(ml)"
        TYPC051R = "Equiv volume at -145 daPa, right ear(ml)"
        TYPC052R = "Equiv volume at -140 daPa, right ear(ml)"
        TYPC053R = "Equiv volume at -135 daPa, right ear(ml)"
        TYPC054R = "Equiv volume at -130 daPa, right ear(ml)"
        TYPC055R = "Equiv volume at -125 daPa, right ear(ml)"
        TYPC056R = "Equiv volume at -120 daPa, right ear(ml)"
        TYPC057R = "Equiv volume at -115 daPa, right ear(ml)"
        TYPC058R = "Equiv volume at -110 daPa, right ear(ml)"
        TYPC059R = "Equiv volume at -105 daPa, right ear(ml)"
        TYPC060R = "Equiv volume at -100 daPa, right ear(ml)"
        TYPC061R = "Equiv volume at -95 daPa, right ear (ml)"
        TYPC062R = "Equiv volume at -90 daPa, right ear (ml)"
        TYPC063R = "Equiv volume at -85 daPa, right ear (ml)"
        TYPC064R = "Equiv volume at -80 daPa, right ear (ml)"
        TYPC065R = "Equiv volume at -75 daPa, right ear (ml)"
        TYPC066R = "Equiv volume at -70 daPa, right ear (ml)"
        TYPC067R = "Equiv volume at -65 daPa, right ear (ml)"
        TYPC068R = "Equiv volume at -60 daPa, right ear (ml)"
        TYPC069R = "Equiv volume at -55 daPa, right ear (ml)"
        TYPC070R = "Equiv volume at -50 daPa, right ear (ml)"
        TYPC071R = "Equiv volume at -45 daPa, right ear (ml)"
        TYPC072R = "Equiv volume at -40 daPa, right ear (ml)"
        TYPC073R = "Equiv volume at -35 daPa, right ear (ml)"
        TYPC074R = "Equiv volume at -30 daPa, right ear (ml)"
        TYPC075R = "Equiv volume at -25 daPa, right ear (ml)"
        TYPC076R = "Equiv volume at -20 daPa, right ear (ml)"
        TYPC077R = "Equiv volume at -15 daPa, right ear (ml)"
        TYPC078R = "Equiv volume at -10 daPa, right ear (ml)"
        TYPC079R = "Equiv volume at  -5 daPa, right ear (ml)"
        TYPC080R = "Equiv volume at   0 daPa, right ear (ml)"
        TYPC081R = "Equiv volume at   5 daPa, right ear (ml)"
        TYPC082R = "Equiv volume at  10 daPa, right ear (ml)"
        TYPC083R = "Equiv volume at  15 daPa, right ear (ml)"
        TYPC084R = "Equiv volume at  20 daPa, right ear (ml)"
        TYPC085R = "Equiv volume at  25 daPa, right ear (ml)"
        TYPC086R = "Equiv volume at  30 daPa, right ear (ml)"
        TYPC087R = "Equiv volume at  35 daPa, right ear (ml)"
        TYPC088R = "Equiv volume at  40 daPa, right ear (ml)"
        TYPC089R = "Equiv volume at  45 daPa, right ear (ml)"
        TYPC090R = "Equiv volume at  50 daPa, right ear (ml)"
        TYPC091R = "Equiv volume at  55 daPa, right ear (ml)"
        TYPC092R = "Equiv volume at  60 daPa, right ear (ml)"
        TYPC093R = "Equiv volume at  65 daPa, right ear (ml)"
        TYPC094R = "Equiv volume at  70 daPa, right ear (ml)"
        TYPC095R = "Equiv volume at  75 daPa, right ear (ml)"
        TYPC096R = "Equiv volume at  80 daPa, right ear (ml)"
        TYPC097R = "Equiv volume at  85 daPa, right ear (ml)"
        TYPC098R = "Equiv volume at  90 daPa, right ear (ml)"
        TYPC099R = "Equiv volume at  95 daPa, right ear (ml)"
        TYPC100R = "Equiv volume at 100 daPa, right ear (ml)"
        TYPC101R = "Equiv volume at 105 daPa, right ear (ml)"
        TYPC102R = "Equiv volume at 110 daPa, right ear (ml)"
        TYPC103R = "Equiv volume at 115 daPa, right ear (ml)"
        TYPC104R = "Equiv volume at 120 daPa, right ear (ml)"
        TYPC105R = "Equiv volume at 125 daPa, right ear (ml)"
        TYPC106R = "Equiv volume at 130 daPa, right ear (ml)"
        TYPC107R = "Equiv volume at 135 daPa, right ear (ml)"
        TYPC108R = "Equiv volume at 140 daPa, right ear (ml)"
        TYPC109R = "Equiv volume at 145 daPa, right ear (ml)"
        TYPC110R = "Equiv volume at 150 daPa, right ear (ml)"
        TYPC111R = "Equiv volume at 155 daPa, right ear (ml)"
        TYPC112R = "Equiv volume at 160 daPa, right ear (ml)"
        TYPC113R = "Equiv volume at 165 daPa, right ear (ml)"
        TYPC114R = "Equiv volume at 170 daPa, right ear (ml)"
        TYPC115R = "Equiv volume at 175 daPa, right ear (ml)"
        TYPC116R = "Equiv volume at 180 daPa, right ear (ml)"
        TYPC117R = "Equiv volume at 185 daPa, right ear (ml)"
        TYPC118R = "Equiv volume at 190 daPa, right ear (ml)"
        TYPC119R = "Equiv volume at 195 daPa, right ear (ml)"
        TYPC120R = "Equiv volume at 200 daPa, right ear (ml)"
        TYPTECH  = "Examiner"
        WWPMRSR  = "Math raw score"
        WWPRRSR  = "Reading raw score"
        WWPMSSR  = "Math standardized score"
        WWPRSSR  = "Reading standardized score"
        WWPMSCSR = "Math scaled score"
        WWPRSCSR = "Reading scaled score"
        WWPBSCSR = "Block design scaled score"
        WWPDSCSR = "Digit span scaled score"
        WWPLANG  = "Language used in exam"
        WWPTECH  = "Examiner number"
        SPPQ1    = "Surgery on chest or abdomen past 3 weeks"
        SPPQ2    = "Hospitalized for heart problem past 6 wk"
        SPPQ3    = "Smoked cigarette, eaten, etc in past hr"
        SPPQ4    = "Cough, cold or other acute illness"
        SPPQ5    = "Respiratory infections past 3 weeks"
        HXPEJ6A2 = "Position for home examination"
        SPPTECH1 = "Examiner # - from spirometry data file"
        SPPTRIAL = "# forced vital cap(FVC) trials attempted"
        SPPPEAK  = "Peak expiratory flow, largest value (ml)"
        SPPFEV05 = "Forced expiratory vol(FEV),.5 sec,max-ml"
        SPPFEV1  = "FEV1 at 1.0 seconds, largest value (ml)"
        SPPFEV3  = "FEV3 at 3.0 seconds, largest value (ml)"
        SPPFEV6  = "FEV6 at 6.0 seconds, largest value (ml)"
        SPPFVC   = "FVC, largest value (ml)"
        SPPMMEF  = "Max mid-expiratory flow(ml/sec best crv)"
        SPPTYPE  = "Spirometer type"
        SPPREPRO = "Reproducibility code"
        SPPRELIA = "Review evaluation"
        SPPMANEU = "Number of acceptable trials"
        SPPTIME  = "Time of day test was conducted (hh:mm)"
        SPPEXPIR = "Expir time of trial w/ largest FVC (sec)"
        SPPFEF75 = "FEF at 75% of FVC (ml)"
        SPPTEMP  = "Spirometer internal temperature(Celsius)"
        MYPA1    = "Times per week exercise made you sweat"
        MYPA2    = "# teams/exercise programs in past year"
        MYPA3    = "Hours of TV watched yesterday"
        MYPB1    = "Have you smoked at least one cigarette"
        MYPB2    = "Age when smoked first cigarette"
        MYPB3    = "Have you smoked 100+ cigarettes in life"
        MYPB4    = "Age first smoked cigarettes regularly"
        MYPB5    = "Do you smoke cigarettes now"
        MYPB6R   = "Cigarettes smoked per day"
        MYPB7R   = "Years smoked reported amount"
        MYPB8    = "Smoked more than # in B6 for 1+ years"
        MYPB9S   = "Cigarettes smoked/day when smoked most"
        MYPB10   = "Ever quit smoking for 1 year or more"
        MYPB11   = "Cigarettes smoked in the past 5 days"
        MYPB12   = "Age last smoked cigarettes regularly"
        MYPB13S  = "Cigarettes usually smoked per day"
        MYPB14   = "Quit smoking due to health problems ..."
        MYPB15   = "Ever tried chewing tobacco or snuff"
        MYPB16   = "Age first tried chew tobacco or snuff"
        MYPB17   = "Used 5+ containers chew tobacco or snuff"
        MYPB18   = "Age started using chew tobacco/snuff reg"
        MYPB19   = "Now use chewing tobacco or snuff"
        MYPB20   = "Which use now - chewing tobacco or snuff"
        MYPB21AS = "Containers chewing tobacco used per week"
        MYPB21CS = "Containers of snuff used per week"
        MYPB22A  = "Place tobacco in side or front of mouth"
        MYPB22B  = "Place tobacco in top or bottom of mouth"
        MYPB23   = "Containrs chew tobacco/snuff past 5 days"
        MYPB24   = "Age last used chew tobacco/snuff reg"
        MYPB25   = "Which last used - chewing tobacco/snuff"
        MYPB26   = "Quit chew tobacco/snuff due to health..."
        MYPB27A  = "How many pipes smoked in past 5 days"
        MYPB27B  = "How many cigars smoked in past 5 days"
        MYPB28   = "Age check item used in skip pattern"
        MYPB29   = "Pieces of nicotine gum used past 5 days"
        MYPC1A   = "Age/sex check item used in skip pattern"
        MYPC2    = "Age when menstrual cycles started"
        MYPC3    = "How long ago was your last period"
        MYPC4    = "Age check item used in skip pattern"
        MYPC5    = "Ever taken birth control pills"
        MYPC6    = "Age began taking birth control pills"
        MYPC7S   = "How many months ago stopped BC pills"
        MYPC8S   = "How many months took birth control pills"
        MYPC9R   = "Brand of birth control pills code"
        MYPC10   = "Have you ever been pregnant"
        MYPC11   = "How many times have you been pregnant"
        MYPC12   = "Total number of live births"
        MYPC13R  = "Age at first live birth"
        MYPC14   = "Age at the time of last live birth"
        MYPC15   = "Did you breastfeed any of your children"
        MYPC16   = "How many children did you breastfeed"
        MYPC17   = "Are you now pregnant"
        MYPC18   = "Month of current pregnancy"
        MYPC19   = "Have you been pregnant in the past 2 yrs"
        MYPC20   = "Months since last pregnancy ended"
        MYPC21   = "Receive benefits from WIC in last 12 mo"
        MYPC22   = "Receiving benefits from WIC now"
        MYPC23S  = "How many months received WIC benefits"
        MYPC24   = "C12 check item used in skip pattern"
        MYPC25   = "Are you now breastfeeding your child"
        MYPC26   = "Age/sex/pregnancy check item for skip"
        MYPC27R  = "Ever had sexual intercourse"
        MYPC28   = "Age at first sexual intercourse"
        MYPD1    = "Treated for anemia within past 3 months"
        MYPD2    = "How many colds, flu, etc in past 4 weeks"
        MYPD3    = "Taken antihistamine in the past 2 days"
        MYPD4    = "Taken prescription med in past 24 hrs"
        MYPD5    = "Taken vitamins/minerals past 24 hours"
        MYPE1    = "How often do you eat breakfast"
        MYPE2    = "Are you overweight, under, about right"
        MYPE3    = "Want to weigh more, less, or stay same"
        MYPE4    = "Tried to lose weight in past 12 months"
        MYPE5    = "Currently trying to lose weight"
        MYPE6    = "Change diet due to health past 12 months"
        MYPE7A   = "Diet change reason - overweight/obesity"
        MYPE7B   = "Diet change reason - high blood pressure"
        MYPE7C   = "Diet change - high blood cholesterol"
        MYPE7D   = "Diet change reason - heart disease"
        MYPE7E   = "Diet change reason - diabetes"
        MYPE7F   = "Diet change reason - allergies"
        MYPE7G   = "Diet change reason - ulcer"
        MYPE7H   = "Diet change reason - cancer"
        MYPE7I   = "Diet change reason - pregnancy"
        MYPE7J   = "Diet change reason - health in general"
        MYPE7K   = "Diet change reason - other"
        MYPF1    = "Had at least 12 drinks alcohol in life"
        MYPF2    = "Had at least 12 drinks in last 12 months"
        MYPF3S   = "# of days drank alcohol in past 12 mos"
        MYPF4    = "Average drinks per day on drinking day"
        MYPF5S   = "# of days had 9+ drinks in past 12 mos"
        MYPF6S   = "# of days had 5+ drinks in past 12 mos"
        MYPF7    = "Have you ever used marijuana"
        MYPF8    = "Number of times used marijuana in life"
        MYPF9    = "# of days used marijuana in past month"
        MYPF10   = "Have you ever used crack or cocaine"
        MYPF11   = "Number times used crack/cocaine in life"
        MYPF12   = "Days used crack/cocaine in past month"
        MYPH1    = "Check item.Respondent relationship to SP"
        MYPH2    = "Reason for accepting proxy"
        MYPH3    = "Was SP present during interview"
        MYPEXMNR = "Examiner ID"
        FFP1AS   = "Chocolate milk and hot cocoa - times/mo"
        FFP1BS   = "Milk to drink or on cereal - times/month"
        FFP1D1   = "Type of milk used"
        FFP1ES   = "Yogurt and frozen yogurt - times/month"
        FFP1FS   = "Ice cream,ice milk,milkshakes - times/mo"
        FFP1GS   = "Cheese, all types - times/month"
        FFP1HS   = "Pizza, calzone, lasagna - times/month"
        FFP1IS   = "Cheese dishes - times/month"
        FFP2AS   = "Stew or soup with vegetables - times/mo"
        FFP2BS   = "Spaghetti/pasta w/ tomato sauce-times/mo"
        FFP2CS   = "Bacon/sausage/processed meats - times/mo"
        FFP2DS   = "Liver and other organ meats - times/mo"
        FFP2ES   = "Beef - times/month"
        FFP2FS   = "Pork and ham - times/month"
        FFP2GS   = "Shrimp, clams, etc - times/mo"
        FFP2HS   = "Fish - times/month"
        FFP2IS   = "Chicken and turkey - times/month"
        FFP2JS   = "Eggs - times/month"
        FFP3AS   = "Orange juice, etc - times/month"
        FFP3BS   = "Other fruit juices - times/momth"
        FFP3CS   = "Citrus fruits - times/month"
        FFP3DS   = "Melons - times/month"
        FFP3ES   = "Peaches, nectarines, etc - times/month"
        FFP3FS   = "Any other fruits - times/month"
        FFP4AS   = "Carrots - times/month"
        FFP4BS   = "Broccoli - times/month"
        FFP4CS   = "Brussel sprouts/cauliflower - times/mo"
        FFP4DS   = "White potatoes - times/month"
        FFP4ES   = "Sweet potatoes, yams, etc - times/month"
        FFP4FS   = "Tomatoes - times/month"
        FFP4GS   = "Spinach, greens, etc - times/month"
        FFP4HS   = "Tossed salad - times/month"
        FFP4IS   = "Cabbage, cole slaw, sauerkraut-times/mo"
        FFP4JS   = "Hot red chili peppers - times/month"
        FFP4KS   = "Other peppers - times/month"
        FFP4LS   = "Any other vegetables - times/month"
        FFP5AS   = "Beans, lentils, chickpeas - times/month"
        FFP5BS   = "Peanuts, peanut butter, etc - times/mo"
        FFP5CS   = "Cereals: All-Bran, etc - times/month"
        FFP5DS   = "Cereals: Total, etc - times/month"
        FFP5ES   = "All other cold cereals - times/month"
        FFP5FS   = "Cooked, hot cereals - times/month"
        FFP5GS   = "White bread, rolls, etc - times/month"
        FFP5HS   = "Dark breads and rolls - times/month"
        FFP5IS   = "Corn bread, muffins, tortillas-times/mo"
        FFP5JS   = "Flour tortillas - times/month"
        FFP5KS   = "Rice - times/month"
        FFP5LS   = "Salted snacks - times/month"
        FFP6AS   = "Cakes, cookies, brownies, etc - times/mo"
        FFP6BS   = "Chocolate candy and fudge - times/month"
        FFP6CS   = "Hi-C, Tang, Koolaid, etc - times/month"
        FFP6DS   = "Diet colas, diet sodas, etc - times/mo"
        FFP6ES   = "Regular colas and sodas - times/month"
        FFP6FS   = "Regular coffee - times/month"
        FFP6GS   = "Regular tea - times/month"
        FFP6HS   = "Beer and lite beer - times/month"
        FFP6IS   = "Wine, etc - times/month"
        FFP6JS   = "Hard liquor - times/month"
        FFP7AS   = "Margarine - times/month"
        FFP7BS   = "Butter - times/month"
        FFP7CS   = "Oil/vinegar, mayonnaise, etc - times/mo"
        FFP8AFC  = "1st other food or beverage - specified"
        FFP8AS   = "1st other food or beverage - times/month"
        FFP8BFC  = "2nd other food or beverage - specified"
        FFP8BS   = "2nd other food or beverage - times/month"
        FFP10    = "Respondent"
        FFPEXMNR = "Examiner number"
        MQPDLANG = "Language of DIS interview"
        MQPDPFLG = "Depression data flag"
        MQPMNFLG = "Mania data flag"
        MQPHCFLG = "Hard copy flag"
        MQPG01   = "G1 - DIS data flag"
        MQPG02   = "G2 Lifetime depressed mood"
        MQPG03   = "G3 2 years depressed mood"
        MQPG04   = "G4 Tell doctor about depressed mood"
        MQPG05L  = "G05 Lost appetite symptom"
        MQPG0501 = "G05 Tell doctor"
        MQPG06L  = "G06 Lost weight symptom"
        MQPG0601 = "G06 Tell doctor"
        MQPG07L  = "G07 Gain weight symptom"
        MQPG0701 = "G07 Tell doctor"
        MQPDGP1L = "# Pos eating symptom-depression lifetime"
        MQPG08L  = "G08 Trouble sleep symptom"
        MQPG0801 = "G08 Tell doctor"
        MQPG09L  = "G09 Sleep too much symptom"
        MQPG0901 = "G09 Tell doctor"
        MQPDGP2L = "# Pos sleep symptoms-depression lifetime"
        MQPG10L  = "G10 Tired symptom"
        MQPG1001 = "G10 Tell doctor"
        MQPDGP3L = "# Pos tired symptoms-depression lifetime"
        MQPG11L  = "G11 Talk/move slowly symptom"
        MQPG1101 = "G11 Tell doctor"
        MQPG12L  = "G12 Move a lot symptom"
        MQPG1201 = "G12 Tell doctor"
        MQPDGP4L = "# Pos movement sym-depression lifetime"
        MQPG13L  = "G13 Less sex symptom"
        MQPG1301 = "G13 Tell doctor"
        MQPG1302 = "G13-D Tell other professional"
        MQPG1303 = "G13-E Take medication >=1"
        MQPG1304 = "G13-F Interfere alot"
        MQPDGP5L = "# Pos sexual symptom-depression lifetime"
        MQPG14L  = "G14 Worthless,sinful or guilty symptom"
        MQPDGP6L = "# Pos guilt symptoms-depression lifetime"
        MQPG15L  = "G15 Concentrate symptom"
        MQPG1501 = "G15 Tell doctor"
        MQPG16L  = "G16 Thoughts slow symptom"
        MQPG1601 = "G16 Tell doctor"
        MQPDGP7L = "# Pos think symptoms-depression lifetime"
        MQPG17L  = "G17 Thought alot about death symptom"
        MQPG18L  = "G18 Felt like wanted to die symptom"
        MQPG19L  = "G19 Thought of commiting suicide symptom"
        MQPG20L  = "G20 Attempted suicide symptom"
        MQPDGP8L = "# Pos death symptoms-depression lifetime"
        MQPG21   = "G21 Check item - ask about dep spells"
        MQPG22   = "G22 Feel blue & have problem together"
        MQPG23   = "G23 Sure never had problem together"
        MQPG24   = "G24 Not feel blue but problem together"
        MQPG25   = "G25 Problem together & feeling low"
        MQPG26   = "G26 Depression longest spell in weeks"
        MQPG27   = "G27 # depressed spells lifetime"
        MQPG28   = "G28 Tell doctor about depressed spells"
        MQPG29   = "G29 Tell profess about depressed spells"
        MQPG30   = "G30 Take med during depressed spells"
        MQPG31   = "G31 Depressed spells interfere w/ life"
        MQPG32   = "G32 Age of first depressed spell"
        MQPG33   = "G33 Depressed spells after death"
        MQPG34   = "G34 Depressed spell only due to death"
        MQPG35   = "G35 Depressed spell now"
        MQPG36   = "G36 When last depressed spell end"
        MQPG37   = "G37 Age last depressed spell end"
        MQPG38   = "G38 Check item - ask about worst spell"
        MQPG39   = "G39 Age worst depressed spell"
        MQPG05W  = "G05 Lost appetite worst"
        MQPG06W  = "G06 Lost weight worst"
        MQPG07W  = "G07 Gain weight worst"
        MQPG08W  = "G08 Trouble sleep worst"
        MQPG09W  = "G09 Sleep too much worst"
        MQPG10W  = "G10 Tired worst"
        MQPG11W  = "G11 Talk/move slowly worst"
        MQPG12W  = "G12 Move a lot worst"
        MQPG13W  = "G13 Less sex worst"
        MQPG14W  = "G14 Worthless,sinful or guilty worst"
        MQPG15W  = "G15 Concentrate worst"
        MQPG16W  = "G16 Thoughts slow worst"
        MQPG17W  = "G17 Thought alot about death worst"
        MQPG18W  = "G18 Felt like wanted to die worst"
        MQPG19W  = "G19 Thought of committing suicide worst"
        MQPG20W  = "G20 Attempted suicide worst"
        MQPG41L  = "G41 Excited/high symptom"
        MQPG42L  = "G42 More active symptom"
        MQPG43L  = "G43 Spending spree symptom"
        MQPG44L  = "G44 Strongly sexual symptom"
        MQPG45L  = "G45 Talked too fast symptom"
        MQPG46L  = "G46 Thoughts raced symptom"
        MQPG47L  = "G47 Special gifts symptom"
        MQPG47EX = "Example of mania special powers"
        MQPG48L  = "G48 Slept less symptom"
        MQPG49L  = "G49 Easily distracted symptom"
        MQPG50   = "G50 Check item - ask about mania spells"
        MQPG51   = "G51 Feel high & have problems together"
        MQPG52   = "G52 Sure never had problems together"
        MQPG53   = "G53 Not feel high but problems together"
        MQPG54   = "G54 Problems together & irritable"
        MQPG55   = "G55 Mania longest spell in weeks"
        MQPG56   = "G56 # mania spells lifetime"
        MQPG57   = "G57 Tell doctor about mania spells"
        MQPG58   = "G58 Tell professional about mania spells"
        MQPG59   = "G59 Take medicine during mania spells"
        MQPG60   = "G60 Mania spells interfere w/ life"
        MQPG61   = "G61 Age of first mania spell"
        MQPG62   = "G62 Mania spell now"
        MQPG63   = "G63 When last mania spell end"
        MQPG64   = "G64 Age last mania spell end"
        MQPG65   = "G65 Check item - ask about mania spells"
        MQPG66   = "G66 Age worst mania spell"
        MQPG42W  = "G42 More active worst"
        MQPG43W  = "G43 Spending spree worst"
        MQPG44W  = "G44 Strongly sexual worst"
        MQPG45W  = "G45 Talked too fast worst"
        MQPG46W  = "G46 Thoughts raced worst"
        MQPG47W  = "G47 Special gifts worst"
        MQPG48W  = "G48 Slept less worst"
        MQPG49W  = "G49 Easily distracted worst"
        MQPDGP1W = "# Pos eating sym-depression worst period"
        MQPDGP2W = "# Pos sleep sym- depression worst period"
        MQPDGP3W = "# Pos tired sym-depression worst period"
        MQPDGP4W = "# Pos movement sym-depress worst period"
        MQPDGP5W = "# Pos sexual sym-depression worst period"
        MQPDGP6W = "# Pos guilt sym-depression worst period"
        MQPDGP7W = "# Pos think sym-depression worst period"
        MQPDGP8W = "# Pos death sym-depression worst period"
        MQPDGPSW = "Total pos sym depression groups-worst"
        MQPDYSFR = "Dysphoria for depression"
        MQPDPSX1 = "Total pos sym depress + dysphoria -worst"
        MQPDEP   = "DSMIII major depression"
        MQPFDDP  = "Age 1st depressive symptoms w/depress DX"
        MQPLDDP  = "Age last depressive symptom w/depress DX"
        MQPDPSX2 = "Total pos sym dep groups +dysphoria-life"
        MQPMNG1W = "Pos hyper-act/sex sym-mania worst period"
        MQPMNG2W = "Pos speech symptom - mania worst period"
        MQPMNG3W = "Pos racing thoughts sym-mania worst pd"
        MQPMNG4W = "Pos special gifts sym-mania worst period"
        MQPMNG5W = "Pos less sleep sym-mania worst period"
        MQPMNG6W = "Pos distractibility sym-mania worst pd"
        MQPMNG7W = "Pos spending symptom-mania worst period"
        MQPMNGSW = "Total pos symptom mania groups-worst"
        MQPEUFOR = "One week euphoric/irritable"
        MQPMNSX1 = "Tot pos sym mania groups+euphoric-worst"
        MQPMANIA = "DSMIII mania"
        MQPFDMN  = "Age first mania symptoms with mania DX"
        MQPLDMN  = "Age last mania symptoms with mania DX"
        MQPMNSX2 = "Tot pos sym mania gps+euphoria-lifetime"
        MQPDEPSE = "DSMIII single episode major depression"
        MQPFDDSE = "Age first dep with single episode dep DX"
        MQPLDDSE = "Age last dep with single episode dep DX"
        MQPDEPRT = "DSMIII recurrent major depression"
        MQPFDDRT = "Age first depressive w/ recurrent dep DX"
        MQPLDDRT = "Age last depressive w/ recurrent dep DX"
        MQPDYSA  = ">= 2 years depressive mood"
        MQPDYSD  = "# Lifetime symptoms for dysthymia"
        MQPDYSTH = "DSMIII dysthymia"
        MQPBIPOL = "DSMIII bipolar with mania DX"
        MQPFDBI  = "Age first bipolar symptoms w/ bipolar DX"
        MQPLDBI  = "Age last bipolar symptoms w/ bipolar DX"
        MQPBIPII = "DSMIII atypical bipolar"
        MQPFDBII = "Age first depressive with bipolar II DX"
        MQPLDBII = "Age last depressive with bipolar II DX"
        MAPA1    = "Cigarettes smoked in the past 5 days"
        MAPA2A   = "Number of pipes smoked past 5 days"
        MAPA2B   = "Number of cigars smoked past 5 days"
        MAPA3    = "Containrs chew tobacco/snuff past 5 days"
        MAPA4    = "Pieces of nicotine gum in past 5 days"
        MAPB1    = "Age check item used in skip pattern"
        MAPB2A   = "Three children:  1st story recall"
        MAPB2B   = "House on fire:  1st story recall"
        MAPB2C   = "Fireman climbed in:  1st story recall"
        MAPB2D   = "Children rescued:  1st story recall"
        MAPB2E   = "Minor injuries:  1st story recall"
        MAPB2F   = "Everyone well:  1st story recall"
        MAPC1    = "Currently trying to lose weight"
        MAPC2    = "Treated for anemia within past 3 months"
        MAPC3    = "How many colds, flu, etc in past 4 weeks"
        MAPC4    = "Times donated blood in past 12 months"
        MAPC5    = "How long ago was last blood donation-mos"
        MAPC6    = "Taken antihistamine in the past 2 days"
        MAPC7    = "Taken prescription med in past 24 hrs"
        MAPC8    = "Taken vitamins/minerals in past 24 hrs"
        MAPD1    = "Age check item used in skip pattern"
        MAPD2A   = "Three children:  2nd story recall"
        MAPD2B   = "House on fire:  2nd story recall"
        MAPD2C   = "Fireman climbed in:  2nd story recall"
        MAPD2D   = "Children rescued:  2nd story recall"
        MAPD2E   = "Minor injuries:  2nd story recall"
        MAPD2F   = "Everyone well:  2nd story recall"
        MAPE1    = "Had at least 12 drinks alcohol in life"
        MAPE2    = "Had at least 12 drinks in last 12 months"
        MAPE3S   = "# of days drank alcohol in past 12 mos"
        MAPE4    = "Number of drinks per day on drinking day"
        MAPE5S   = "# of days had 9+ drinks in past 12 mos"
        MAPE6S   = "# of days had 5+ drinks in past 12 mos"
        MAPE7    = "Ever drink 5+ drinks almost every day"
        MAPE8    = "Age check item used in skip pattern"
        MAPE9    = "Have you ever used marijuana"
        MAPE10   = "Number of times used marijuana in life"
        MAPE11   = "# of days used marijuana past month"
        MAPE12   = "Have you ever used crack or cocaine"
        MAPE13   = "Number times used crack/cocaine in life"
        MAPE14   = "# days used crack/cocaine in last month"
        MAPF1    = "Age/sex check item used in skip pattern"
        MAPF2    = "Age when menstrual cycles started - yrs"
        MAPF3    = "Age category menstrual cycles started"
        MAPF4    = "Have you ever been pregnant"
        MAPF5    = "How many times have you been pregnant"
        MAPF6    = "Total number of live births"
        MAPF7R   = "Age at first live birth recoded - years"
        MAPF8    = "Age at the time of last live birth - yrs"
        MAPF9    = "Did you breastfeed any of your children"
        MAPF10   = "How many children did you breastfeed"
        MAPF11   = "Age check item used in skip pattern"
        MAPF12   = "Are you now pregnant"
        MAPF12R  = "Pregnancy status recode"
        MAPF13   = "Month of current pregnancy"
        MAPF14   = "Have you been pregnant in the last 2 yrs"
        MAPF15   = "Months since last pregnancy ended"
        MAPF16   = "Receive benefits from WIC in last 12 mos"
        MAPF17   = "Receiving benefits from WIC now"
        MAPF18S  = "How many months received WIC benefits"
        MAPF19   = "F6 check item used in skip pattern"
        MAPF20   = "Are you now breastfeeding a child"
        MAPF21   = "Have you had a period in past 12 months"
        MAPF22   = "How long ago was your last period"
        MAPF23   = "How old when had last period - years"
        MAPF24   = "Age category at last period"
        MAPF25   = "Have you had a hysterectomy"
        MAPF26   = "How old when you had hysterectomy"
        MAPF27   = "Have you had one or both ovaries removed"
        MAPF28   = "Were both ovaries removed or only one"
        MAPF29   = "How old when ovary removed - years"
        MAPF30   = "Ever taken birth control pills"
        MAPF31   = "Age began taking birth control pills-yrs"
        MAPF32S  = "How many months ago stop taking BC pills"
        MAPF33S  = "How many months took birth control pills"
        MAPF34R  = "Brand of birth control pills code"
        MAPF34CK = "F30-F32 check item used in skip patterns"
        MAPF34A  = "Ever have NORPLANT implant"
        MAPF34B  = "Have NORPLANT implant now"
        MAPF34CS = "How many months ago NORPLANT implanted"
        MAPF35   = "F-section check item for skip pattern"
        MAPF36   = "Did periods stop due to radiation/chemo"
        MAPF37   = "Ever take estrogen by mouth"
        MAPF38   = "Age when first took estrogen pills - yrs"
        MAPF39S  = "How many months ago stop estrogen pills"
        MAPF40   = "How many years took estrogen pills"
        MAPF41   = "Ever used estrogen cream, supp, inject"
        MAPF42   = "Age first used estrogen crm,sup,inj -yrs"
        MAPF43S  = "Months since used estrogen crm,sup,inj"
        MAPF44   = "Years used estrogen cream, supp, inject"
        MAPF45   = "Ever used female hormone patches"
        MAPF46   = "Age when first used hormone patches -yrs"
        MAPF47S  = "Months since used hormone patches"
        MAPF48   = "How many years used hormone patches"
        MAPF49   = "Age check item used in skip pattern"
        MAPF50   = "Age at first sexual intercourse - years"
        MAPF51   = "How many different sex partners ever"
        MAPF52   = "Sex/F51 check item used in skip pattern"
        MAPF53   = "Was this partner female or male"
        MAPF54R  = "How many partners have been female"
        MAPF55   = "How many partners have been male"
        MAPF56   = "# of different sex partners in past year"
        MAPF57   = "Has doctor told you had genital herpes"
        MAPH1    = "Check item.Respondent relationship to SP"
        MAPH1OS  = "Specify other relationship to SP"
        MAPH2    = "Reason for accepting proxy"
        MAPH3    = "Was SP present during interview"
        MAPLANG  = "Instrument used for interview"
        MAPEXMNR = "Interviewer number"
        BDPTECH  = "Examiner number"
        BDPEXFLR = "Exclusion flag"
        BDPSCAN  = "Acceptable or rejected scan"
        BDPSIDE  = "Hip side that was scanned"
        BDPFNARE = "Bone area of femur neck region - cm sq"
        BDPFNBMC = "Bone mineral content of femur neck - gm"
        BDPFNBMD = "Bone mineral density femur neck-gm/cm sq"
        BDPTRARE = "Bone area of trochanter region - cm sq"
        BDPTRBMC = "BMC of trochanter region - gm"
        BDPTRBMD = "BMD of trochanter region - gm/cm sq"
        BDPINARE = "Bone area intertrochanter region - cm sq"
        BDPINBMC = "BMC of intertrochanter region - gm"
        BDPINBMD = "BMD of intertrochanter region - gm/cm sq"
        BDPWTARE = "Bone area Ward's triangle region - cm sq"
        BDPWTBMC = "BMC of Ward's triangle region - gm"
        BDPWTBMD = "BMD of Ward's triangle region - gm/cm sq"
        BDPTOARE = "Bone area of total region - cm sq"
        BDPTOBMC = "Bone mineral content of total region -gm"
        BDPTOBMD = "Bone minrl density total region-gm/cm sq"
        BDPK     = "K value for scan"
        BDPD0    = "d0 value for scan"
        HXPB1    = "Age check item used in skip pattern"
        HXPB2A   = "Had cereal in past month"
        HXPB2B   = "Had fruit in past month"
        HXPB2C   = "Had yellow/orange vegetables in past mo"
        HXPB2D   = "Had green vegetables in past month"
        HXPB2E   = "Had meat in past month"
        HXPB2F   = "Had egg yolk or egg in past month"
        HXPB2G   = "Had combo meat/vegetable dinners past mo"
        HXPB2H   = "Had yogurt, cheese, etc in past month"
        HXPB2I   = "Had bread, rolls, etc in past month"
        HXPB2J   = "Had desserts in past month"
        HXPB2K   = "Had breastmilk in past month"
        HXPB2L   = "Had formula in past month"
        HXPB2M   = "Had regular cow's milk in past month"
        HXPB2N   = "Had fruit juices in past month"
        HXPB2O   = "Had Kool-aid, etc in past month"
        HXPD1    = "Age check item used in skip pattern"
        HXPD2A   = "Three children: 1st story recall"
        HXPD2B   = "House on fire:  1st story recall"
        HXPD2C   = "Fireman climbed in: 1st story recall"
        HXPD2D   = "Children rescued: 1st story recall"
        HXPD2E   = "Minor injuries: 1st story recall"
        HXPD2F   = "Everyone well: 1st story recall"
        HXPE1    = "Treated for anemia in past 3 months"
        HXPE2    = "How many infections in the past 4 weeks"
        HXPE3    = "Times donated blood in past 12 months"
        HXPE4    = "How long since last blood donation"
        HXPE5    = "Currently trying to lose weight"
        HXPE6    = "Take antihistamine in past 2 days"
        HXPE7    = "Take prescription med in past 24 hours"
        HXPE8    = "Take vitamins/minerals in past 24 hours"
        HXPF1    = "Age check item used in skip pattern"
        HXPF2A   = "Three children: 2nd story recall"
        HXPF2B   = "House on fire: 2nd story recall"
        HXPF2C   = "Fireman climbed in: 2nd story recall"
        HXPF2D   = "Children rescued: 2nd story recall"
        HXPF2E   = "Minor injuries: 2nd story recall"
        HXPF2F   = "Everyone well: 2nd story recall"
        HXPG1    = "How many cigarettes smoked past 5 days"
        HXPG2A   = "How many pipes smoked in the past 5 days"
        HXPG2B   = "How many cigars smoked in past 5 days"
        HXPG3    = "Containrs chew tobacco/snuff past 5 days"
        HXPG4    = "Pieces of nicotine gum used past 5 days"
        HXPH1    = "Sex check item used in skip pattern"
        HXPH2    = "How old when menstrual cycles started"
        HXPH3    = "Age category menstrual cycles started"
        HXPH4    = "Had period in the past 12 months"
        HXPH5    = "How long since last period"
        HXPH6    = "Reason for not having period"
        HXPH7    = "How old when you had last period"
        HXPH8    = "Age category at last period"
        HXPH9    = "Have you had a hysterectomy"
        HXPH10   = "How old when you had hysterectomy"
        HXPH11   = "Have you had one or both ovaries removed"
        HXPH12   = "Were both ovaries removed or only one"
        HXPH13   = "How old when ovary/ovaries were removed"
        HXPH14   = "Ever taken birth control pills"
        HXPH15   = "Age first took birth control pills"
        HXPH16S  = "Days since stopped birth control pills"
        HXPH17S  = "How many months took birth control pills"
        HXPH18   = "Check item used in skip pattern"
        HXPH19   = "Ever take estrogen in any form"
        HXPH20   = "Age when first took estrogen"
        HXPH21S  = "How many months ago stopped estrogen"
        HXPH22   = "How many years on estrogen"
        HXPLANG  = "Instrument used for interview"
        HXPEXMNR = "Examiner number"
        GUPQ7    = "Are there any abdominal surgical scars"
        GUPQ8A1  = "Surgical scar - area 1"
        GUPQ8A2  = "Surgical scar - area 2"
        GUPQ8A3  = "Surgical scar - area 3"
        GUPQ8A4  = "Surgical scar - area 4"
        GUPQ8A5  = "Surgical scar - area 5"
        GUPQ8A6  = "Surgical scar - area 6"
        GUPQ18   = "Thickness of gallbladder wall (mm)"
        GUPQ24R  = "Adjud. finding - largest echo clump (mm)"
        GUPQ37R  = "Other nonGB findings - renal - recode"
        GUPQ38R  = "Other nonGB findings-hepat/liver -recode"
        GUPLCSTR = "Radiologist notes indicate liver cyst"
        GUPLCSZE = "Other nonGB -liver cysts,size(cm,yrs4-6)"
        GUPRCSTR = "Radiologist notes indicate renal cyst"
        GUPRCSZE = "Other nonGB -renal cysts,size(cm,yrs4-6)"
        GUPLHMGR = "Radiologist notes indicate hemangioma"
        GUPCHSZE = "Other nonGB -cav hemang, size(cm,yrs4-6)"
        GUPTDX1R = "Sonographer - primary finding"
        GUPTDX2R = "Sonographer - secondary finding"
        GUPR1ID  = "Radiologist ID number - first reading"
        GUPR1DX1 = "Radiologist first reading - finding 1"
        GUPR1DX2 = "Radiologist first reading - finding 2"
        GUPR1CNF = "Radiologist first reading - confidence"
        GUPR1QLT = "Radiologist first reading - quality"
        GUPR2ID  = "Radiologist ID number - second reading"
        GUPFDX1R = "Final adjudicated primary finding"
        GUPFDX2R = "Final adjudicated secondary finding"
        GUPGBPSZ = "Other nonGB - GB polyp, size(mm,yrs 4-6)"
        GUPTECH  = "Technician number"
        CNPQ01   = "How much sleep did you get last night"
        CNPQ02   = "Now feeling energetic, ... exhausted"
        CNPQ03   = "Familiarity w/ computers: none,some,alot"
        CNPQ04   = "# cups caffeine coffee, etc, past 3 hrs"
        CNPQ05   = "How many drinks of alcohol in past 3 hrs"
        CNPQ06   = "Which hand prefer to use for this test"
        CNPQ07   = "Simple Reaction Time Test(SRTT) complete"
        CNPQ08   = "Symbol Digit Substitution Test (SDST)"
        CNPQ09   = "Serial Digit Learning Test (SDLT)"
        CNPQ10   = "How hard tried to perform computer test"
        CNPLANG  = "Language used for test administration"
        CNPTEMP  = "Room temperature (degrees Fahrenheit)"
        CNPTECH  = "Examiner number"
        CNPNBPH  = "LOG: # of trials with preferred hand"
        CNPRT01  = "SRTT: Trial 01 reaction time (msec)"
        CNPRT02  = "SRTT: Trial 02 reaction time (msec)"
        CNPRT03  = "SRTT: Trial 03 reaction time (msec)"
        CNPRT04  = "SRTT: Trial 04 reaction time (msec)"
        CNPRT05  = "SRTT: Trial 05 reaction time (msec)"
        CNPRT06  = "SRTT: Trial 06 reaction time (msec)"
        CNPRT07  = "SRTT: Trial 07 reaction time (msec)"
        CNPRT08  = "SRTT: Trial 08 reaction time (msec)"
        CNPRT09  = "SRTT: Trial 09 reaction time (msec)"
        CNPRT10  = "SRTT: Trial 10 reaction time (msec)"
        CNPRT11  = "SRTT: Trial 11 reaction time (msec)"
        CNPRT12  = "SRTT: Trial 12 reaction time (msec)"
        CNPRT13  = "SRTT: Trial 13 reaction time (msec)"
        CNPRT14  = "SRTT: Trial 14 reaction time (msec)"
        CNPRT15  = "SRTT: Trial 15 reaction time (msec)"
        CNPRT16  = "SRTT: Trial 16 reaction time (msec)"
        CNPRT17  = "SRTT: Trial 17 reaction time (msec)"
        CNPRT18  = "SRTT: Trial 18 reaction time (msec)"
        CNPRT19  = "SRTT: Trial 19 reaction time (msec)"
        CNPRT20  = "SRTT: Trial 20 reaction time (msec)"
        CNPRT21  = "SRTT: Trial 21 reaction time (msec)"
        CNPRT22  = "SRTT: Trial 22 reaction time (msec)"
        CNPRT23  = "SRTT: Trial 23 reaction time (msec)"
        CNPRT24  = "SRTT: Trial 24 reaction time (msec)"
        CNPRT25  = "SRTT: Trial 25 reaction time (msec)"
        CNPRT26  = "SRTT: Trial 26 reaction time (msec)"
        CNPRT27  = "SRTT: Trial 27 reaction time (msec)"
        CNPRT28  = "SRTT: Trial 28 reaction time (msec)"
        CNPRT29  = "SRTT: Trial 29 reaction time (msec)"
        CNPRT30  = "SRTT: Trial 30 reaction time (msec)"
        CNPRT31  = "SRTT: Trial 31 reaction time (msec)"
        CNPRT32  = "SRTT: Trial 32 reaction time (msec)"
        CNPRT33  = "SRTT: Trial 33 reaction time (msec)"
        CNPRT34  = "SRTT: Trial 34 reaction time (msec)"
        CNPRT35  = "SRTT: Trial 35 reaction time (msec)"
        CNPRT36  = "SRTT: Trial 36 reaction time (msec)"
        CNPRT37  = "SRTT: Trial 37 reaction time (msec)"
        CNPRT38  = "SRTT: Trial 38 reaction time (msec)"
        CNPRT39  = "SRTT: Trial 39 reaction time (msec)"
        CNPRT40  = "SRTT: Trial 40 reaction time (msec)"
        CNPRT41  = "SRTT: Trial 41 reaction time (msec)"
        CNPRT42  = "SRTT: Trial 42 reaction time (msec)"
        CNPRT43  = "SRTT: Trial 43 reaction time (msec)"
        CNPRT44  = "SRTT: Trial 44 reaction time (msec)"
        CNPRT45  = "SRTT: Trial 45 reaction time (msec)"
        CNPRT46  = "SRTT: Trial 46 reaction time (msec)"
        CNPRT47  = "SRTT: Trial 47 reaction time (msec)"
        CNPRT48  = "SRTT: Trial 48 reaction time (msec)"
        CNPRT49  = "SRTT: Trial 49 reaction time (msec)"
        CNPRT50  = "SRTT: Trial 50 reaction time (msec)"
        CNPMENRT = "SRTT summary:  Mean reaction time (msec)"
        CNPSDRT  = "SRTT: Standard deviation, reaction times"
        CNP1ERR  = "SDST: Number of errors, trial 1"
        CNP1LAT1 = "SDST: Latency 1, trial 1 (sec)"
        CNP1LAT2 = "SDST: Latency 2, trial 1 (sec)"
        CNP1LAT3 = "SDST: Latency 3, trial 1 (sec)"
        CNP1LAT4 = "SDST: Latency 4, trial 1 (sec)"
        CNP1LAT5 = "SDST: Latency 5, trial 1 (sec)"
        CNP1LAT6 = "SDST: Latency 6, trial 1 (sec)"
        CNP1LAT7 = "SDST: Latency 7, trial 1 (sec)"
        CNP1LAT8 = "SDST: Latency 8, trial 1 (sec)"
        CNP1LAT9 = "SDST: Latency 9, trial 1 (sec)"
        CNP1TOTL = "SDST: Total latency, trial 1 (sec)"
        CNPCORR1 = "SDST: # correct, latencies 2-9, trial 1"
        CNPCLAT1 = "SDST: Corrected latency, trial 1 (sec)"
        CNP2ERR  = "SDST: Number of errors, trial 2"
        CNP2LAT1 = "SDST: Latency 1, trial 2 (sec)"
        CNP2LAT2 = "SDST: Latency 2, trial 2 (sec)"
        CNP2LAT3 = "SDST: Latency 3, trial 2 (sec)"
        CNP2LAT4 = "SDST: Latency 4, trial 2 (sec)"
        CNP2LAT5 = "SDST: Latency 5, trial 2 (sec)"
        CNP2LAT6 = "SDST: Latency 6, trial 2 (sec)"
        CNP2LAT7 = "SDST: Latency 7, trial 2 (sec)"
        CNP2LAT8 = "SDST: Latency 8, trial 2 (sec)"
        CNP2LAT9 = "SDST: Latency 9, trial 2 (sec)"
        CNP2TOTL = "SDST: Total latency, trial 2 (sec)"
        CNPCORR2 = "SDST: # correct, latencies 2-9, trial 2"
        CNPCLAT2 = "SDST: Corrected latency, trial 2 (sec)"
        CNP3ERR  = "SDST: Number of errors, trial 3"
        CNP3LAT1 = "SDST: Latency 1, trial 3 (sec)"
        CNP3LAT2 = "SDST: Latency 2, trial 3 (sec)"
        CNP3LAT3 = "SDST: Latency 3, trial 3 (sec)"
        CNP3LAT4 = "SDST: Latency 4, trial 3 (sec)"
        CNP3LAT5 = "SDST: Latency 5, trial 3 (sec)"
        CNP3LAT6 = "SDST: Latency 6, trial 3 (sec)"
        CNP3LAT7 = "SDST: Latency 7, trial 3 (sec)"
        CNP3LAT8 = "SDST: Latency 8, trial 3 (sec)"
        CNP3LAT9 = "SDST: Latency 9, trial 3 (sec)"
        CNP3TOTL = "SDST: Total latency, trial 3 (sec)"
        CNPCORR3 = "SDST: # correct, latencies 2-9, trial 3"
        CNPCLAT3 = "SDST: Corrected latency, trial 3 (sec)"
        CNP4ERR  = "SDST: Number of errors, trial 4"
        CNP4LAT1 = "SDST: Latency 1, trial 4 (sec)"
        CNP4LAT2 = "SDST: Latency 2, trial 4 (sec)"
        CNP4LAT3 = "SDST: Latency 3, trial 4 (sec)"
        CNP4LAT4 = "SDST: Latency 4, trial 4 (sec)"
        CNP4LAT5 = "SDST: Latency 5, trial 4 (sec)"
        CNP4LAT6 = "SDST: Latency 6, trial 4 (sec)"
        CNP4LAT7 = "SDST: Latency 7, trial 4 (sec)"
        CNP4LAT8 = "SDST: Latency 8, trial 4 (sec)"
        CNP4LAT9 = "SDST: Latency 9, trial 4 (sec)"
        CNP4TOTL = "SDST: Total latency, trial 4 (sec)"
        CNPCORR4 = "SDST: # correct, latencies 2-9, trial 4"
        CNPCLAT4 = "SDST: Corrected latency, trial 4 (sec)"
        CNPCBEST = "SDST: Mean, 2 lowest corrected latencies"
        CNPT0TRA = "SDLT: Total 0 trials"
        CNP1SCOR = "SDLT: Score, trial 1"
        CNP2SCOR = "SDLT: Score, trial 2"
        CNP3SCOR = "SDLT: Score, trial 3"
        CNP4SCOR = "SDLT: Score, trial 4"
        CNP5SCOR = "SDLT: Score, trial 5"
        CNP6SCOR = "SDLT: Score, trial 6"
        CNP7SCOR = "SDLT: Score, trial 7"
        CNP8SCOR = "SDLT: Score, trial 8"
        CNPTSTOC = "SDLT summary: Trials to criterion"
        CNPTTSCR = "SDLT summary: Total score"
        FPPPHOTO = "Photo taken"
        FPP1A    = "Eye color: right eye"
        FPP1B    = "Eye color: left eye"
        FPP2     = "Pupil size before dilation ... (mm)"
        FPP3     = "Pupil size on camera monitor (mm)"
        FPP4MIN  = "Elapsed time:dark room/taking photo(min)"
        FPP4SEC  = "Elapsed time:dark room/taking photo(sec)"
        FPPPHTG  = "Photographer"
        FPPEYE   = "Eye"
        FPP1005  = "Grader code"
        FPP1020  = "Fundus"
        FPP1030  = "Focus"
        FPP1041  = "Field definition"
        FPP1046  = "Horizontal field definition"
        FPP1047  = "Vertical field definition"
        FPP1050  = "Artifact present"
        FPP1051  = "Type of artifact: haze"
        FPP1052  = "Type of artifact: dust/dirt"
        FPP1053  = "Type of artifact: lashes"
        FPP1054  = "Type of artifact: arc"
        FPP1055  = "Type artifact:uneven illumination,center"
        FPP1056  = "Type artifact:uneven illumination, edge"
        FPP1057  = "Type of artifact: central dot"
        FPP1059  = "Type of artifact: other"
        FPP1060  = "Gradability"
        FPP1070  = "Diabetic retinopathy level"
        FPP1080  = "Hemorrhages or microaneurysms"
        FPP1090  = "Hard exudates"
        FPP1100  = "Soft exudates"
        FPP1110  = "Intraretinal microvascular abnormalities"
        FPP1120  = "Venous beading"
        FPP1130  = "New vessels in disc"
        FPP1140  = "New vessels elsewhere"
        FPP1150  = "Fibrous proliferation"
        FPP1160  = "Pre-retinal or vitreous hemorrhage"
        FPP1170  = "Other abnormalities"
        FPP1172  = "Degeneration, retinal pigment epithelium"
        FPP1173  = "Central circle RPE degeneration"
        FPP1174  = "Geographic atrophy"
        FPP1175  = "Central circle geographic atrophy"
        FPP1176  = "Sub-retinal hemorrhage"
        FPP1177  = "Central circle sub-retinal hemorrhage"
        FPP1178  = "Sub-retinal fibrous scar"
        FPP1179  = "Central circle sub-retinal fibrous scar"
        FPP1180  = "Sensory serous (sub-retinal) detachment"
        FPP1181  = "Central cir sensory serous subret detach"
        FPP1182  = "Hyperpigmentation"
        FPP1183  = "Central circle hyperpigmentation"
        FPP1184  = "Chorioretinal abnormalities, other"
        FPP1185  = "Central cir chorioretinal abnormal,other"
        FPP1186  = "Peripapillary atrophy"
        FPP1188  = "Branch or central artery occlusion"
        FPP1189  = "Central circle branch/artery occlusion"
        FPP1190  = "Branch vein occlusion"
        FPP1191  = "Central circle branch vein occlusion"
        FPP1192  = "Central vein occlusion"
        FPP1193  = "Central circle central vein occlusion"
        FPP1194  = "Significant arterio-venous nicking"
        FPP1196  = "Hollenhorst plaque"
        FPP1197  = "Central circle hollenhorst plaque"
        FPP1198  = "Asteroid hyalosis"
        FPP1199  = "Central circle asteroid hyalosis"
        FPP1200  = "Nevus"
        FPP1201  = "Central circle nevus"
        FPP1202  = "Surface wrinkling retinopathy"
        FPP1203  = "Central circ surf wrinkling retinopathy"
        FPP1204  = "Abnormal disc"
        FPP1205  = "Large cup-to-disc ratio"
        FPP1206  = "Histoplasmosis (POHS)"
        FPP1207  = "Central circle histoplasmosis (POHS)"
        FPP1208  = "Clinically, macular edema, hard exudates"
        FPP1209  = "Central cir macular edema, hard exudates"
        FPP1210  = "Retinal detachment"
        FPP1211  = "Central circle retinal detachment"
        FPP1212  = "Photocoagulation treatment in arcades"
        FPP1214  = "Photocoagulation treatmt outside arcades"
        FPP1220  = "Other miscellaneous abnormalities"
        FPP1221  = "Other misc central circle abnormalities"
        FPP1228  = "Answer drusen questions"
        FPP1230  = "Hard drusen"
        FPP1240  = "Soft drusen"
        FPP1250  = "Drusen area: grid"
        FPP1260  = "Drusen area: outside"
        FPP1262  = "Drusen area: central circle"
        FPP1264  = "Drusen area: inner circle"
        FPP1266  = "Central circle soft drusen"
        FPPSURET = "Summary diabetic retinopathy score"
        FPPSUMAC = "Summary age-related maculopathy score"
        FPPSUDRU = "Summary drusen score"
        PFPHHS   = "Health status screener"
        PFPRSER  = "Right shoulder external rotation"
        PFPLSER  = "Left shoulder external rotation"
        PFPRSIR  = "Right shoulder internal rotation"
        PFPLSIR  = "Left shoulder internal rotation"
        PFPUKEY  = "Ability to pick up key--first trial"
        PFPHKEY  = "Ability to hold key--first trial"
        PFPTKEY  = "Time to unlock lock--first trial (sec)"
        HXPBED   = "Check item--bedbound (home exam only)"
        PFPWC    = "In wheelchair (mobile exam center only)"
        PFPUPWC  = "Can get up from chair/wheelchair by self"
        PFPSCOOT = "Use of arms to scoot forward"
        PFPUSTND = "Ability to stand"
        PFPTSTND = "Time to complete five stands (sec)"
        PFPNSTND = "Number of stands"
        HXPCHAIR = "Chair height--home exam only (in)"
        PFPRFLEX = "Right hip and knee flexion"
        PFPLFLEX = "Left hip and knee flexion"
        PFPSTAND = "Ability to stand without holding on"
        PFPTTAND = "Time tandem stand held (sec)"
        PFPOWALK = "Observed walking without help"
        PFPRWALK = "Able to walk alone w/out another person"
        PFPTWLKA = "Time to complete 8-ft walk, trial A(sec)"
        PFPNSTPA = "Number of steps--trial A"
        PFPTWLKB = "Time to complete 8-ft walk--trial B(sec)"
        PFPNSTPB = "Number of steps--trial B"
        PFPPAIN  = "Pain reported on walking"
        PFPDEVIC = "Type of device used"
        PFPTECH  = "Examiner number"
      ;

