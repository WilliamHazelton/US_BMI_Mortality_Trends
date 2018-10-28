/*
 *  Survey:           NHANES 1 Epidemiologic Followup Study
 *  Years:            1982


*/




DATA D_n82int;
   INFILE 'z:\Data\Esophagus\NHEFS\TEMP\n82int.txt' LRECL = 2000 MISSOVER;
INPUT @1    SEQNUM1  $CHAR5.
        @6    BLANK1   $CHAR2.
        @8    RECLABA0 $CHAR2.
        @10   BLANK2   $CHAR1.
        @11   QSTARTH  $CHAR2.
        @13   QSTARTM  $CHAR2.
        @15   QSTARTD  $CHAR1.
        @16   A1       $CHAR1.
        @17   A2       $CHAR1.
        @18   A3       $CHAR1.
        @19   A4       $CHAR1.
        @20   A5       $CHAR1.
        @21   A6       $CHAR1.
        @22   A7_A16   $CHAR2.
        @24   A8_A17   $CHAR2.
        @26   A9_A18   $CHAR1.
        @27   SUBAGE   $CHAR2.
        @29   SUBSEX   $CHAR1.
        @30   BLANK3   $CHAR2.
        @32   A13_A22b $CHAR2.
        @34   A14_A23b $CHAR1.
        @35   A15_A24b $CHAR2.
        @37   A13_A22c $CHAR2.
        @39   A14_A23c $CHAR1.
        @40   A15_A24c $CHAR2.
        @42   A13_A22d $CHAR2.
        @44   A14_A23d $CHAR1.
        @45   A15_A24d $CHAR2.
        @47   A13_A22e $CHAR2.
        @49   A14_A23e $CHAR1.
        @50   A15_A24e $CHAR2.
        @52   A13_A22f $CHAR2.
        @54   A14_A23f $CHAR1.
        @55   A15_A24f $CHAR2.
        @57   A13_A22g $CHAR2.
        @59   A14_A23g $CHAR1.
        @60   A15_A24g $CHAR2.
        @62   A13_A22h $CHAR2.
        @64   A14_A23h $CHAR1.
        @65   A15_A24h $CHAR2.
        @67   A13_A22i $CHAR2.
        @69   A14_A23i $CHAR1.
        @70   A15_A24i $CHAR2.
        @72   A13_A22j $CHAR2.
        @74   A14_A23j $CHAR1.
        @75   A15_A24j $CHAR2.
        @77   A13_A22k $CHAR2.
        @79   A14_A23k $CHAR1.
        @80   A15_A24k $CHAR2.
        @82   A13_A22l $CHAR2.
        @84   A14_A23l $CHAR1.
        @85   A15_A24l $CHAR2.
        @87   A13_A22m $CHAR2.
        @89   A14_A23m $CHAR1.
        @90   A15_A24m $CHAR2.
        @92   A13_A22n $CHAR2.
        @94   A14_A23n $CHAR1.
        @95   A15_A24n $CHAR2.
        @97   A13_A22o $CHAR2.
        @99   A14_A23o $CHAR1.
        @100  A15_A24o $CHAR2.
        @102  A25      $CHAR2.
        @104  A26      $CHAR2.
        @106  A27a     $CHAR2.
        @108  A27b     $CHAR2.
        @110  A27c     $CHAR2.
        @112  A27d     $CHAR2.
        @114  A27e     $CHAR2.
        @116  BLANK4   $CHAR6.
        @122  QTYPE    $CHAR1.
        @123  BLANK4a  $CHAR6.
        @129  HMEMFLAG $CHAR1.
        @130  BLANK4b  $CHAR3.
        @133  SEQNUM2  $CHAR5.
        @138  BLANK5   $CHAR2.
        @140  RECLABB0 $CHAR2.
        @142  BLANK6   $CHAR1.
        @143  B1       $CHAR2.
        @145  B2       $CHAR2.
        @147  B3       $CHAR2.
        @149  B4       $CHAR1.
        @150  B5       $CHAR4.
        @154  B6       $CHAR1.
        @155  B7       $CHAR4.
        @159  B8       $CHAR1.
        @160  B9       $CHAR4.
        @164  B10      $CHAR1.
        @165  B11      $CHAR4.
        @169  B12      $CHAR1.
        @170  B13aA    $CHAR1.
        @171  B13aB1   $CHAR3.
        @174  B13aB2   $CHAR3.
        @177  B13bA    $CHAR1.
        @178  B13bB1   $CHAR3.
        @181  B13bB2   $CHAR3.
        @184  B13cA    $CHAR1.
        @185  B13cB1   $CHAR3.
        @188  B13cB2   $CHAR3.
        @191  B13dA    $CHAR1.
        @192  B13dB1   $CHAR3.
        @195  B13dB2   $CHAR3.
        @198  B13eA    $CHAR1.
        @199  B13eB1   $CHAR3.
        @202  B13eB2   $CHAR3.
        @205  BLANK7   $CHAR60.
        @265  SEQNUM3  $CHAR5.
        @270  BLANK8   $CHAR2.
        @272  RECLABC0 $CHAR2.
        @274  BLANK9   $CHAR1.
        @275  C1       $CHAR1.
        @276  C2       $CHAR1.
        @277  C3       $CHAR2.
        @279  C4       $CHAR2.
        @281  C5       $CHAR2.
        @283  C6       $CHAR1.
        @284  C7       $CHAR2.
        @286  C8       $CHAR1.
        @287  C9       $CHAR1.
        @288  C10      $CHAR1.
        @289  C11      $CHAR2.
        @291  C12      $CHAR1.
        @292  C13      $CHAR1.
        @293  C14      $CHAR1.
        @294  C15      $CHAR1.
        @295  C16      $CHAR1.
        @296  C17      $CHAR1.
        @297  C18      $CHAR2.
        @299  C19      $CHAR2.
        @301  C20AMT   $CHAR2.
        @303  C20PER   $CHAR1.
        @304  C21      $CHAR1.
        @305  C22      $CHAR1.
        @306  C23      $CHAR1.
        @307  C24      $CHAR2.
        @309  C25      $CHAR2.
        @311  C26AMT   $CHAR2.
        @313  C26PER   $CHAR1.
        @314  C27      $CHAR1.
        @315  BLANK10  $CHAR82.
        @397  SEQNUM4  $CHAR5.
        @402  BLANK11  $CHAR2.
        @404  RECLABD1 $CHAR2.
        @406  BLANK12  $CHAR1.
        @407  D1       $CHAR1.
        @408  D2       $CHAR1.
        @409  D3       $CHAR4.
        @413  D4       $CHAR1.
        @414  D5       $CHAR1.
        @415  D6       $CHAR1.
        @416  D7       $CHAR1.
        @417  D8       $CHAR1.
        @418  D9       $CHAR1.
        @419  D10a     $CHAR1.
        @420  D10b     $CHAR1.
        @421  D10c     $CHAR1.
        @422  D11      $CHAR1.
        @423  D12      $CHAR1.
        @424  D13      $CHAR1.
        @425  D14      $CHAR2.
        @427  D15      $CHAR1.
        @428  D16      $CHAR4.
        @432  D17a     $CHAR1.
        @433  D17b     $CHAR1.
        @434  D17c     $CHAR1.
        @435  D17d     $CHAR1.
        @436  D18      $CHAR1.
        @437  D18a     $CHAR1.
        @438  D18b     $CHAR1.
        @439  D19      $CHAR1.
        @440  D20      $CHAR1.
        @441  D21      $CHAR1.
        @442  D22      $CHAR2.
        @444  D23      $CHAR4.
        @448  D24      $CHAR2.
        @450  D25      $CHAR4.
        @454  D26a     $CHAR2.
        @456  D26b     $CHAR1.
        @457  D27      $CHAR1.
        @458  D28      $CHAR1.
        @459  D29      $CHAR1.
        @460  D30      $CHAR1.
        @461  D31      $CHAR1.
        @462  D32      $CHAR1.
        @463  D33      $CHAR1.
        @464  D34      $CHAR1.
        @465  D35      $CHAR1.
        @466  D36      $CHAR2.
        @468  D37      $CHAR1.
        @469  D38      $CHAR4.
        @473  D39a     $CHAR1.
        @474  D39b     $CHAR1.
        @475  D40a     $CHAR1.
        @476  D40b     $CHAR1.
        @477  D41a     $CHAR1.
        @478  D41b     $CHAR1.
        @479  D42a     $CHAR1.
        @480  D42b     $CHAR1.
        @481  D43      $CHAR1.
        @482  D44      $CHAR4.
        @486  D45      $CHAR1.
        @487  D46      $CHAR4.
        @491  D47      $CHAR1.
        @492  D48      $CHAR1.
        @493  D49      $CHAR1.
        @494  D50      $CHAR2.
        @496  D51      $CHAR4.
        @500  D52      $CHAR1.
        @501  D53      $CHAR1.
        @502  D54      $CHAR1.
        @503  D55      $CHAR1.
        @504  D56      $CHAR2.
        @506  BLANK13  $CHAR23.
        @529  SEQNUM5  $CHAR5.
        @534  BLANK14  $CHAR2.
        @536  RECLABD2 $CHAR2.
        @538  BLANK15  $CHAR1.
        @539  D57c1    $CHAR2.
        @541  D58c1    $CHAR1.
        @542  D59c1    $CHAR2.
        @544  D60c1a   $CHAR1.
        @545  D60c1b   $CHAR1.
        @546  D60c1c   $CHAR1.
        @547  D60c1d   $CHAR1.
        @548  D60c1e   $CHAR1.
        @549  D60c1f   $CHAR1.
        @550  D60c1f1  $CHAR2.
        @552  D60c1f2  $CHAR2.
        @554  D61c1    $CHAR1.
        @555  D57c2    $CHAR2.
        @557  D58c2    $CHAR1.
        @558  D59c2    $CHAR2.
        @560  D60c2a   $CHAR1.
        @561  D60c2b   $CHAR1.
        @562  D60c2c   $CHAR1.
        @563  D60c2d   $CHAR1.
        @564  D60c2e   $CHAR1.
        @565  D60c2f   $CHAR1.
        @566  D60c2f1  $CHAR2.
        @568  D60c2f2  $CHAR2.
        @570  D61c2    $CHAR1.
        @571  D57c3    $CHAR2.
        @573  D58c3    $CHAR1.
        @574  D59c3    $CHAR2.
        @576  D60c3a   $CHAR1.
        @577  D60c3b   $CHAR1.
        @578  D60c3c   $CHAR1.
        @579  D60c3d   $CHAR1.
        @580  D60c3e   $CHAR1.
        @581  D60c3f   $CHAR1.
        @582  D60c3f1  $CHAR2.
        @584  D60c3f2  $CHAR2.
        @586  D61c3    $CHAR1.
        @587  D57c4    $CHAR2.
        @589  D58c4    $CHAR1.
        @590  D59c4    $CHAR2.
        @592  D60c4a   $CHAR1.
        @593  D60c4b   $CHAR1.
        @594  D60c4c   $CHAR1.
        @595  D60c4d   $CHAR1.
        @596  D60c4e   $CHAR1.
        @597  D60c4f   $CHAR1.
        @598  D60c4f1  $CHAR2.
        @600  D60c4f2  $CHAR2.
        @602  D61c4    $CHAR1.
        @603  D62      $CHAR1.
        @604  D63DX1   $CHAR3.
        @607  D64DX1   $CHAR4.
        @611  D65DX1   $CHAR1.
        @612  D63DX2   $CHAR3.
        @615  D64DX2   $CHAR4.
        @619  D65DX2   $CHAR1.
        @620  D63DX3   $CHAR3.
        @623  D64DX3   $CHAR4.
        @627  D65DX3   $CHAR1.
        @628  D66      $CHAR1.
        @629  D67      $CHAR1.
        @630  D68      $CHAR1.
        @631  D69      $CHAR1.
        @632  D70      $CHAR1.
        @633  D71      $CHAR1.
        @634  D72      $CHAR1.
        @635  D73      $CHAR1.
        @636  D74      $CHAR1.
        @637  D75a     $CHAR1.
        @638  D75b     $CHAR1.
        @639  D75c     $CHAR1.
        @640  D76      $CHAR1.
        @641  D77      $CHAR1.
        @642  D78      $CHAR1.
        @643  D79      $CHAR1.
        @644  D80      $CHAR1.
        @645  D81      $CHAR1.
        @646  D82      $CHAR1.
        @647  D83      $CHAR1.
        @648  BLANK16  $CHAR13.
        @661  SEQNUM6  $CHAR5.
        @666  BLANK17  $CHAR2.
        @668  RECLABE1 $CHAR2.
        @670  BLANK18  $CHAR1.
        @671  E1       $CHAR1.
        @672  E2       $CHAR1.
        @673  E3       $CHAR1.
        @674  E4a      $CHAR1.
        @675  E4b      $CHAR1.
        @676  E5       $CHAR1.
        @677  E6       $CHAR1.
        @678  E7       $CHAR1.
        @679  E8       $CHAR1.
        @680  E9       $CHAR1.
        @681  E10      $CHAR1.
        @682  E11      $CHAR2.
        @684  E12      $CHAR1.
        @685  E13      $CHAR1.
        @686  E14      $CHAR1.
        @687  E15      $CHAR1.
        @688  E16      $CHAR1.
        @689  E17      $CHAR1.
        @690  E18a     $CHAR1.
        @691  E18b     $CHAR1.
        @692  E18c     $CHAR1.
        @693  E19a     $CHAR1.
        @694  E19b     $CHAR1.
        @695  E19c     $CHAR1.
        @696  E19d     $CHAR1.
        @697  E19e     $CHAR1.
        @698  E20      $CHAR1.
        @699  E21      $CHAR1.
        @700  E22      $CHAR1.
        @701  E23      $CHAR1.
        @702  E24      $CHAR1.
        @703  E25      $CHAR1.
        @704  E26      $CHAR1.
        @705  E27a     $CHAR1.
        @706  E27b     $CHAR2.
        @708  E28      $CHAR1.
        @709  E29      $CHAR1.
        @710  E30      $CHAR2.
        @712  E31      $CHAR1.
        @713  E32      $CHAR1.
        @714  E33      $CHAR1.
        @715  E34a     $CHAR1.
        @716  E34b     $CHAR1.
        @717  E34c     $CHAR1.
        @718  E35a     $CHAR1.
        @719  E35b     $CHAR1.
        @720  E35c     $CHAR1.
        @721  E36      $CHAR1.
        @722  E37      $CHAR1.
        @723  E38      $CHAR1.
        @724  E39a     $CHAR1.
        @725  E39b     $CHAR1.
        @726  E39c     $CHAR1.
        @727  E39d     $CHAR1.
        @728  E40a     $CHAR1.
        @729  E40b     $CHAR1.
        @730  E40c     $CHAR1.
        @731  E40d     $CHAR1.
        @732  E40e     $CHAR1.
        @733  E41      $CHAR1.
        @734  E42      $CHAR1.
        @735  E43      $CHAR1.
        @736  E44      $CHAR1.
        @737  E45      $CHAR1.
        @738  E46      $CHAR1.
        @739  E47      $CHAR1.
        @740  E48      $CHAR2.
        @742  E49      $CHAR1.
        @743  E50      $CHAR1.
        @744  E51      $CHAR2.
        @746  E52      $CHAR1.
        @747  E53      $CHAR1.
        @748  E54a     $CHAR1.
        @749  E54b     $CHAR1.
        @750  E54c     $CHAR1.
        @751  E54d     $CHAR1.
        @752  E54e     $CHAR1.
        @753  E54f     $CHAR1.
        @754  E54g     $CHAR1.
        @755  E54g1    $CHAR1.
        @756  E54g2    $CHAR1.
        @757  E55      $CHAR1.
        @758  E56a     $CHAR1.
        @759  E56b     $CHAR1.
        @760  E56c     $CHAR1.
        @761  E56d     $CHAR1.
        @762  E56e     $CHAR1.
        @763  E56e1    $CHAR1.
        @764  E56e2    $CHAR1.
        @765  E57      $CHAR1.
        @766  E58      $CHAR1.
        @767  E59      $CHAR1.
        @768  E60a     $CHAR1.
        @769  E60b     $CHAR1.
        @770  E61      $CHAR1.
        @771  E62      $CHAR2.
        @773  E63      $CHAR1.
        @774  E64      $CHAR1.
        @775  E65      $CHAR1.
        @776  E66a     $CHAR1.
        @777  E66b     $CHAR1.
        @778  E66c     $CHAR1.
        @779  E67a     $CHAR1.
        @780  E67b     $CHAR1.
        @781  E68a     $CHAR1.
        @782  E68b     $CHAR1.
        @783  E69      $CHAR1.
        @784  E70      $CHAR1.
        @785  E71      $CHAR1.
        @786  BLANK19  $CHAR7.
        @793  SEQNUM7  $CHAR5.
        @798  BLANK20  $CHAR2.
        @800  RECLABE2 $CHAR2.
        @802  BLANK21  $CHAR1.
        @803  E72a1    $CHAR1.
        @804  E72a2    $CHAR1.
        @805  E72b1    $CHAR1.
        @806  E72b2    $CHAR1.
        @807  E72c1    $CHAR1.
        @808  E72c2    $CHAR1.
        @809  E72d1    $CHAR1.
        @810  E72d2    $CHAR1.
        @811  E72e1    $CHAR1.
        @812  E72e2    $CHAR1.
        @813  E72f1    $CHAR1.
        @814  E72f2    $CHAR1.
        @815  E73      $CHAR1.
        @816  E74      $CHAR2.
        @818  E75      $CHAR1.
        @819  E76      $CHAR1.
        @820  E77a1    $CHAR1.
        @821  E77a2    $CHAR1.
        @822  E77b1    $CHAR1.
        @823  E77b2    $CHAR1.
        @824  E77c1    $CHAR1.
        @825  E77c2    $CHAR1.
        @826  E77d1    $CHAR1.
        @827  E77d2    $CHAR1.
        @828  E77e1    $CHAR1.
        @829  E77e2    $CHAR1.
        @830  E77f1    $CHAR1.
        @831  E77f2    $CHAR1.
        @832  E77g1    $CHAR1.
        @833  E77g2    $CHAR1.
        @834  E77h1    $CHAR1.
        @835  E77h2    $CHAR1.
        @836  E78      $CHAR1.
        @837  E79a1    $CHAR1.
        @838  E79a2    $CHAR1.
        @839  E79b1    $CHAR1.
        @840  E79b2    $CHAR1.
        @841  E79c1    $CHAR1.
        @842  E79c2    $CHAR1.
        @843  E79d1    $CHAR1.
        @844  E79d2    $CHAR1.
        @845  E79e1    $CHAR1.
        @846  E79e2    $CHAR1.
        @847  E79f1    $CHAR1.
        @848  E79f2    $CHAR1.
        @849  E79g1    $CHAR1.
        @850  E79g2    $CHAR1.
        @851  E79h1    $CHAR1.
        @852  E79h2    $CHAR1.
        @853  E80      $CHAR1.
        @854  E81a1    $CHAR1.
        @855  E81a2    $CHAR2.
        @857  E81b1    $CHAR1.
        @858  E81b2    $CHAR2.
        @860  E81c1    $CHAR1.
        @861  E81c2    $CHAR2.
        @863  E81d1    $CHAR1.
        @864  E81d2    $CHAR2.
        @866  E81e1    $CHAR1.
        @867  E81e2    $CHAR2.
        @869  E81f1    $CHAR1.
        @870  E81f2    $CHAR2.
        @872  E81g     $CHAR1.
        @873  E81h1    $CHAR1.
        @874  E81h2    $CHAR2.
        @876  E81i1    $CHAR1.
        @877  E81i2    $CHAR2.
        @879  E82      $CHAR1.
        @880  E83      $CHAR2.
        @882  E84      $CHAR1.
        @883  E85      $CHAR1.
        @884  E86a1    $CHAR1.
        @885  E86a2    $CHAR1.
        @886  E86b1    $CHAR1.
        @887  E86b2    $CHAR1.
        @888  E86c1    $CHAR1.
        @889  E86c2    $CHAR1.
        @890  E86d1    $CHAR1.
        @891  E86d2    $CHAR1.
        @892  E86e1    $CHAR1.
        @893  E86e2    $CHAR1.
        @894  E86f1    $CHAR1.
        @895  E86f2    $CHAR1.
        @896  E86g1    $CHAR1.
        @897  E86g2    $CHAR1.
        @898  E86h1    $CHAR1.
        @899  E86h2    $CHAR1.
        @900  E86i1    $CHAR1.
        @901  E87a     $CHAR1.
        @902  E87b     $CHAR1.
        @903  E87c     $CHAR1.
        @904  E88      $CHAR1.
        @905  E89      $CHAR1.
        @906  E90      $CHAR1.
        @907  E91      $CHAR1.
        @908  E92      $CHAR2.
        @910  E93      $CHAR1.
        @911  E94      $CHAR1.
        @912  E95      $CHAR1.
        @913  E96      $CHAR1.
        @914  E97      $CHAR2.
        @916  E98      $CHAR1.
        @917  E99      $CHAR1.
        @918  E100     $CHAR2.
        @920  BLANK22  $CHAR5.
        @925  SEQNUM8  $CHAR5.
        @930  BLANK23  $CHAR2.
        @932  RECLABF0 $CHAR2.
        @934  BLANK24  $CHAR1.
        @935  RESANSEC $CHAR1.
        @936  F1       $CHAR1.
        @937  F2AMT    $CHAR2.
        @939  F2PER    $CHAR1.
        @940  F3a      $CHAR1.
        @941  F3b1     $CHAR1.
        @942  F3b2     $CHAR1.
        @943  F3c      $CHAR1.
        @944  F4a      $CHAR1.
        @945  F4b      $CHAR1.
        @946  F5a      $CHAR1.
        @947  F5b1     $CHAR1.
        @948  F5b2     $CHAR1.
        @949  F5c      $CHAR1.
        @950  F6a      $CHAR1.
        @951  F6b1     $CHAR1.
        @952  F6b2     $CHAR1.
        @953  F6c      $CHAR1.
        @954  F7a      $CHAR1.
        @955  F7b      $CHAR1.
        @956  F8a      $CHAR1.
        @957  F8b      $CHAR1.
        @958  F9a      $CHAR1.
        @959  F9b      $CHAR1.
        @960  F10a     $CHAR1.
        @961  F10b     $CHAR1.
        @962  F11a     $CHAR1.
        @963  F11b1    $CHAR1.
        @964  F11b2    $CHAR1.
        @965  F11c     $CHAR1.
        @966  F12a     $CHAR1.
        @967  F12b1    $CHAR1.
        @968  F12b2    $CHAR1.
        @969  F12c     $CHAR1.
        @970  F13a     $CHAR1.
        @971  F13b1    $CHAR1.
        @972  F13b2    $CHAR1.
        @973  F13c     $CHAR1.
        @974  F14a     $CHAR1.
        @975  F14b     $CHAR1.
        @976  F15a     $CHAR1.
        @977  F15b1    $CHAR1.
        @978  F15b2    $CHAR1.
        @979  F15c     $CHAR1.
        @980  F16a     $CHAR1.
        @981  F16b     $CHAR1.
        @982  F17a     $CHAR1.
        @983  F17b1    $CHAR1.
        @984  F17b2    $CHAR1.
        @985  F17c     $CHAR1.
        @986  F18a     $CHAR1.
        @987  F18b     $CHAR1.
        @988  F19a     $CHAR1.
        @989  F19b1    $CHAR1.
        @990  F19b2    $CHAR1.
        @991  F19c     $CHAR1.
        @992  F20a     $CHAR1.
        @993  F20b1    $CHAR1.
        @994  F20b2    $CHAR1.
        @995  F20c     $CHAR1.
        @996  F21a     $CHAR1.
        @997  F21b     $CHAR1.
        @998  F22a     $CHAR1.
        @999  F22b1    $CHAR1.
        @1000 F22b2    $CHAR1.
        @1001 F22c     $CHAR1.
        @1002 F23a     $CHAR1.
        @1003 F23b     $CHAR1.
        @1004 F24a     $CHAR1.
        @1005 F24b1    $CHAR1.
        @1006 F24b2    $CHAR1.
        @1007 F24c     $CHAR1.
        @1008 F25a     $CHAR1.
        @1009 F25b     $CHAR1.
        @1010 F26a     $CHAR1.
        @1011 F26b     $CHAR1.
        @1012 F27a     $CHAR1.
        @1013 F27b     $CHAR1.
        @1014 F28a     $CHAR1.
        @1015 F28b     $CHAR1.
        @1016 BLANK25  $CHAR41.
        @1057 SEQNUM9  $CHAR5.
        @1062 BLANK26  $CHAR2.
        @1064 RECLABG1 $CHAR2.
        @1066 BLANK27  $CHAR1.
        @1067 G1a      $CHAR1.
        @1068 G1b      $CHAR4.
        @1072 G1c      $CHAR1.
        @1073 G2a      $CHAR1.
        @1074 G2b      $CHAR4.
        @1078 G2c      $CHAR1.
        @1079 G3a      $CHAR1.
        @1080 G3b      $CHAR4.
        @1084 G3c      $CHAR1.
        @1085 G4a      $CHAR1.
        @1086 G4b      $CHAR4.
        @1090 G4c      $CHAR1.
        @1091 G5a      $CHAR1.
        @1092 G5b      $CHAR4.
        @1096 G5c      $CHAR1.
        @1097 G6a      $CHAR1.
        @1098 G6b      $CHAR4.
        @1102 G6c      $CHAR1.
        @1103 G7a      $CHAR1.
        @1104 G7b      $CHAR4.
        @1108 G7c      $CHAR1.
        @1109 G8a      $CHAR1.
        @1110 G8b      $CHAR4.
        @1114 G8c      $CHAR1.
        @1115 G9a      $CHAR1.
        @1116 G9b      $CHAR4.
        @1120 G9c      $CHAR1.
        @1121 G10a     $CHAR1.
        @1122 G10b     $CHAR4.
        @1126 G10c     $CHAR1.
        @1127 G11a     $CHAR1.
        @1128 G11b     $CHAR4.
        @1132 G11c     $CHAR1.
        @1133 G12a     $CHAR1.
        @1134 G12b     $CHAR4.
        @1138 G12c     $CHAR1.
        @1139 G13a     $CHAR1.
        @1140 G13b     $CHAR4.
        @1144 G13c     $CHAR1.
        @1145 G14a     $CHAR1.
        @1146 G14b     $CHAR4.
        @1150 G14c     $CHAR1.
        @1151 G15a     $CHAR1.
        @1152 G15b     $CHAR4.
        @1156 G15c     $CHAR1.
        @1157 G16a     $CHAR1.
        @1158 G16b     $CHAR4.
        @1162 G16c     $CHAR1.
        @1163 G17a     $CHAR1.
        @1164 G17b     $CHAR4.
        @1168 G17c     $CHAR1.
        @1169 G18a     $CHAR1.
        @1170 G18b     $CHAR4.
        @1174 G18c     $CHAR1.
        @1175 G19a     $CHAR1.
        @1176 G19b     $CHAR4.
        @1180 G19c     $CHAR1.
        @1181 G20a     $CHAR1.
        @1182 G20b     $CHAR4.
        @1186 G20c     $CHAR1.
        @1187 BLANK28  $CHAR2.
        @1189 SEQNUM10 $CHAR5.
        @1194 BLANK29  $CHAR2.
        @1196 RECLABG2 $CHAR2.
        @1198 BLANK30  $CHAR1.
        @1199 G21a     $CHAR1.
        @1200 G21b     $CHAR4.
        @1204 G21c     $CHAR1.
        @1205 G22a     $CHAR1.
        @1206 G22b     $CHAR4.
        @1210 G22c     $CHAR1.
        @1211 G23a     $CHAR1.
        @1212 G23b     $CHAR4.
        @1216 G23c     $CHAR1.
        @1217 G24a     $CHAR1.
        @1218 G25a     $CHAR2.
        @1220 G26a     $CHAR1.
        @1221 G27aAMT  $CHAR2.
        @1223 G27aPER  $CHAR1.
        @1224 G28      $CHAR1.
        @1225 G24b     $CHAR1.
        @1226 G25b     $CHAR2.
        @1228 G26b     $CHAR1.
        @1229 G27bAMT  $CHAR2.
        @1231 G27bPER  $CHAR1.
        @1232 G29      $CHAR1.
        @1233 G30      $CHAR2.
        @1235 G31      $CHAR1.
        @1236 G32AMT   $CHAR2.
        @1238 G32PER   $CHAR1.
        @1239 G33      $CHAR1.
        @1240 G34      $CHAR1.
        @1241 G35a     $CHAR1.
        @1242 G35b     $CHAR1.
        @1243 G35c     $CHAR1.
        @1244 G35d     $CHAR1.
        @1245 G35e     $CHAR1.
        @1246 G35f     $CHAR1.
        @1247 G35g     $CHAR1.
        @1248 G35h     $CHAR1.
        @1249 G35i     $CHAR1.
        @1250 G35j     $CHAR1.
        @1251 G35k     $CHAR1.
        @1252 G35k1    $CHAR2.
        @1254 G35k2    $CHAR2.
        @1256 G35k3    $CHAR2.
        @1258 G36      $CHAR1.
        @1259 G37      $CHAR4.
        @1263 G38      $CHAR1.
        @1264 G39a     $CHAR1.
        @1265 G39b     $CHAR1.
        @1266 G39c     $CHAR1.
        @1267 G39c1    $CHAR1.
        @1268 G39c2    $CHAR1.
        @1269 G40      $CHAR1.
        @1270 G41      $CHAR1.
        @1271 G42      $CHAR4.
        @1275 G43      $CHAR1.
        @1276 G44a     $CHAR1.
        @1277 G44b     $CHAR1.
        @1278 G44c     $CHAR1.
        @1279 G44d     $CHAR1.
        @1280 G44d1    $CHAR1.
        @1281 G44d2    $CHAR1.
        @1282 G45      $CHAR1.
        @1283 G46      $CHAR1.
        @1284 G47      $CHAR4.
        @1288 G48      $CHAR1.
        @1289 G49a     $CHAR1.
        @1290 G49b     $CHAR1.
        @1291 G49c     $CHAR1.
        @1292 G49c1    $CHAR1.
        @1293 G50      $CHAR1.
        @1294 G51      $CHAR1.
        @1295 G52      $CHAR1.
        @1296 G53a     $CHAR1.
        @1297 G53b1    $CHAR2.
        @1299 G53c1AMT $CHAR2.
        @1301 G53c1OFT $CHAR1.
        @1302 G53d1    $CHAR2.
        @1304 G53b2    $CHAR2.
        @1306 G53c2AMT $CHAR2.
        @1308 G53c2OFT $CHAR1.
        @1309 G53d2    $CHAR2.
        @1311 G54a     $CHAR1.
        @1312 G54bAMT  $CHAR2.
        @1314 G54bOFT  $CHAR1.
        @1315 G54c     $CHAR4.
        @1319 G54d     $CHAR2.
        @1321 SEQNUM11 $CHAR5.
        @1326 BLANK31  $CHAR2.
        @1328 RECLABG3 $CHAR2.
        @1330 BLANK32  $CHAR1.
        @1331 G55a     $CHAR1.
        @1332 G55bAMT  $CHAR2.
        @1334 G55bOFT  $CHAR1.
        @1335 G55c     $CHAR5.
        @1340 G55d     $CHAR2.
        @1342 G56a     $CHAR1.
        @1343 G56bAMT  $CHAR2.
        @1345 G56bOFT  $CHAR1.
        @1346 G56c     $CHAR4.
        @1350 G56d     $CHAR2.
        @1352 G57a     $CHAR1.
        @1353 G57bAMT  $CHAR2.
        @1355 G57bOFT  $CHAR1.
        @1356 G57d     $CHAR2.
        @1358 G58a     $CHAR1.
        @1359 G58b1    $CHAR2.
        @1361 G58c1AMT $CHAR2.
        @1363 G58c1OFT $CHAR1.
        @1364 G58d1    $CHAR2.
        @1366 G58b2    $CHAR2.
        @1368 G58c2AMT $CHAR2.
        @1370 G58c2OFT $CHAR1.
        @1371 G58d2    $CHAR2.
        @1373 G58b3    $CHAR2.
        @1375 G58c3AMT $CHAR2.
        @1377 G58c3OFT $CHAR1.
        @1378 G58d3    $CHAR2.
        @1380 G58b4    $CHAR2.
        @1382 G58c4AMT $CHAR2.
        @1384 G58c4OFT $CHAR1.
        @1385 G58d4    $CHAR2.
        @1387 G59a     $CHAR1.
        @1388 G59b1    $CHAR2.
        @1390 G59d1    $CHAR2.
        @1392 G59b2    $CHAR2.
        @1394 G59d2    $CHAR2.
        @1396 G59b3    $CHAR2.
        @1398 G59d3    $CHAR2.
        @1400 G60      $CHAR2.
        @1402 G61      $CHAR1.
        @1403 G62      $CHAR1.
        @1404 BLANK33  $CHAR9.
        @1413 G28x1    $CHAR2.
        @1415 G28x2    $CHAR2.
        @1417 G28x3    $CHAR2.
        @1419 BLANK34  $CHAR34.
        @1453 SEQNUM12 $CHAR5.
        @1458 BLANK35  $CHAR2.
        @1460 RECLABH0 $CHAR2.
        @1462 BLANK36  $CHAR1.
        @1463 H1       $CHAR1.
        @1464 H2       $CHAR1.
        @1465 H3a      $CHAR1.
        @1466 H3b      $CHAR1.
        @1467 H3c      $CHAR1.
        @1468 SCORE    $CHAR2.
        @1470 BLANK37  $CHAR115.
        @1585 SEQNUM13 $CHAR5.
        @1590 BLANK38  $CHAR2.
        @1592 RECLABI0 $CHAR2.
        @1594 BLANK39  $CHAR1.
        @1595 I1       $CHAR1.
        @1596 I2       $CHAR1.
        @1597 I3       $CHAR1.
        @1598 I4       $CHAR1.
        @1599 I5       $CHAR1.
        @1600 I6       $CHAR1.
        @1601 I7       $CHAR1.
        @1602 I8       $CHAR1.
        @1603 I9       $CHAR1.
        @1604 I10      $CHAR1.
        @1605 I11      $CHAR1.
        @1606 I12      $CHAR1.
        @1607 I13      $CHAR1.
        @1608 I14      $CHAR1.
        @1609 I15      $CHAR1.
        @1610 I16      $CHAR1.
        @1611 I17      $CHAR1.
        @1612 I18      $CHAR1.
        @1613 I19      $CHAR1.
        @1614 I20      $CHAR1.
        @1615 I21      $CHAR1.
        @1616 I22      $CHAR1.
        @1617 I23      $CHAR1.
        @1618 I24      $CHAR1.
        @1619 I25      $CHAR1.
        @1620 I26      $CHAR1.
        @1621 I27      $CHAR2.
        @1623 I28      $CHAR2.
        @1625 I29      $CHAR2.
        @1627 I30      $CHAR2.
        @1629 I31      $CHAR1.
        @1630 BLANK40  $CHAR87.
        @1717 SEQNUM14 $CHAR5.
        @1722 BLANK41  $CHAR2.
        @1724 RECLABJ0 $CHAR2.
        @1726 BLANK42  $CHAR1.
        @1727 J1       $CHAR1.
        @1728 J2       $CHAR1.
        @1729 J3       $CHAR1.
        @1730 J4       $CHAR1.
        @1731 J5       $CHAR1.
        @1732 J6       $CHAR1.
        @1733 J7       $CHAR1.
        @1734 J8       $CHAR1.
        @1735 SLFADMBK $CHAR1.
        @1736 BLANK43  $CHAR113.
        @1849 SEQNUM15 $CHAR5.
        @1854 BLANK44  $CHAR2.
        @1856 RECLABK0 $CHAR2.
        @1858 BLANK45  $CHAR1.
        @1859 K1       $CHAR1.
        @1860 K2       $CHAR1.
        @1861 K3       $CHAR1.
        @1862 K4       $CHAR3.
        @1865 K5       $CHAR3.
        @1868 K6       $CHAR3.
        @1871 K7       $CHAR3.
        @1874 BLANK46  $CHAR107.
        @1981 SEQNUM16 $CHAR5.
        @1986 BLANK47  $CHAR2.
        @1988 RECLABL0 $CHAR2.
        @1990 BLANK48  $CHAR1.
        @1991 L1       $CHAR1.
        @1992 L2a      $CHAR1.
        @1993 L2b      $CHAR1.
        @1994 L3P1     $CHAR2.
        @1996 L4P1     $CHAR1.
        @1997 L5P1     $CHAR2.
        @1999 L6P1     $CHAR1.
        @2000 L3P2     $CHAR2.
        @2002 L4P2     $CHAR1.
        @2003 L5P2     $CHAR2.
        @2005 L6P2     $CHAR1.
        @2006 L3P3     $CHAR2.
        @2008 L4P3     $CHAR1.
        @2009 L5P3     $CHAR2.
        @2011 L6P3     $CHAR1.
        @2012 L7       $CHAR3.
        @2015 L8AMT    $CHAR2.
        @2017 L8PER    $CHAR1.
        @2018 L9       $CHAR3.
        @2021 L10      $CHAR1.
        @2022 L11      $CHAR1.
        @2023 L12      $CHAR1.
        @2024 L13a     $CHAR1.
        @2025 L13b     $CHAR1.
        @2026 L14      $CHAR1.
        @2027 BLANK49  $CHAR86.
        @2113 SEQNUM17 $CHAR5.
        @2118 BLANK50  $CHAR2.
        @2120 RECLABM0 $CHAR2.
        @2122 BLANK51  $CHAR1.
        @2123 M1       $CHAR1.
        @2124 M2       $CHAR1.
        @2125 M3       $CHAR1.
        @2126 M4       $CHAR1.
        @2127 M5       $CHAR2.
        @2129 M6AMT    $CHAR2.
        @2131 M6PER    $CHAR1.
        @2132 M7       $CHAR2.
        @2134 M8       $CHAR2.
        @2136 M9       $CHAR3.
        @2139 M10      $CHAR3.
        @2142 M11      $CHAR1.
        @2143 M12      $CHAR1.
        @2144 M13      $CHAR2.
        @2146 M14      $CHAR2.
        @2148 M15      $CHAR2.
        @2150 M16      $CHAR2.
        @2152 M17      $CHAR2.
        @2154 M18      $CHAR2.
        @2156 M19      $CHAR1.
        @2157 M20      $CHAR2.
	@2159 M21      $CHAR2.
	@2161 M22AMT   $CHAR2.
        @2163 M22PER   $CHAR1.
        @2164 BLANK52  $CHAR81.
        @2245 SEQNUM18 $CHAR5.
        @2250 BLANK53  $CHAR2.
        @2252 RECLABN1 $CHAR2.
        @2254 BLANK54  $CHAR1.
        @2255 N1aAMT   $CHAR2.
        @2257 N1aPER   $CHAR1.
        @2258 N1bAMT   $CHAR2.
        @2260 N1bPER   $CHAR1.
        @2261 N1cAMT   $CHAR2.
        @2263 N1cPER   $CHAR1.
        @2264 N1dAMT   $CHAR2.
        @2266 N1dPER   $CHAR1.
        @2267 N1eAMT   $CHAR2.
        @2269 N1ePER   $CHAR1.
        @2270 N1fAMT   $CHAR2.
        @2272 N1fPER   $CHAR1.
        @2273 N1gAMT   $CHAR2.
        @2275 N1gPER   $CHAR1.
        @2276 N2       $CHAR2.
        @2278 N3AMT    $CHAR2.
        @2280 N3PER    $CHAR1.
        @2281 N4       $CHAR1.
        @2282 N5AMT    $CHAR2.
        @2284 N5PER    $CHAR1.
        @2285 N6       $CHAR1.
        @2286 N7aAMT   $CHAR2.
        @2288 N7aPER   $CHAR1.
        @2289 N7bAMT   $CHAR2.
        @2291 N7bPER   $CHAR1.
        @2292 N7cAMT   $CHAR2.
        @2294 N7cPER   $CHAR1.
        @2295 N7dAMT   $CHAR2.
        @2297 N7dPER   $CHAR1.
        @2298 N7eAMT   $CHAR2.
        @2300 N7ePER   $CHAR1.
        @2301 N8       $CHAR1.
        @2302 N9aAMT   $CHAR2.
        @2304 N9aPER   $CHAR1.
        @2305 N9bAMT   $CHAR2.
        @2307 N9bPER   $CHAR1.
        @2308 N9cAMT   $CHAR2.
        @2310 N9cPER   $CHAR1.
        @2311 N10aAMT  $CHAR2.
        @2313 N10aPER  $CHAR1.
        @2314 N10aCK   $CHAR1.
        @2315 N10bAMT  $CHAR2.
        @2317 N10bPER  $CHAR1.
        @2318 N10bCK   $CHAR1.
        @2319 N10cAMT  $CHAR2.
        @2321 N10cPER  $CHAR1.
        @2322 N10cCK   $CHAR1.
        @2323 N11AMT   $CHAR2.
        @2325 N11PER   $CHAR1.
        @2326 N12AMT   $CHAR2.
        @2328 N12PER   $CHAR1.
        @2329 N13      $CHAR1.
        @2330 N14AMT   $CHAR2.
        @2332 N14PER   $CHAR1.
        @2333 N15      $CHAR2.
        @2335 N16      $CHAR1.
        @2336 N17AMT   $CHAR2.
        @2338 N17PER   $CHAR1.
        @2339 N18      $CHAR2.
        @2341 N19aAMT  $CHAR2.
        @2343 N19aPER  $CHAR1.
        @2344 N19bAMT  $CHAR2.
        @2346 N19bPER  $CHAR1.
        @2347 N20aAMT  $CHAR2.
        @2349 N20aPER  $CHAR1.
        @2350 N20bAMT  $CHAR2.
        @2352 N20bPER  $CHAR1.
        @2353 N20cAMT  $CHAR2.
        @2355 N20cPER  $CHAR1.
        @2356 N20dAMT  $CHAR2.
        @2358 N20dPER  $CHAR1.
        @2359 N20eAMT  $CHAR2.
        @2361 N20ePER  $CHAR1.
        @2362 N20fAMT  $CHAR2.
        @2364 N20fPER  $CHAR1.
        @2365 N21AMT   $CHAR2.
        @2367 N21PER   $CHAR1.
        @2368 BLANK55  $CHAR9.
        @2377 SEQNUM19 $CHAR5.
        @2382 BLANK56  $CHAR2.
        @2384 RECLABN2 $CHAR2.
        @2386 BLANK57  $CHAR1.
        @2387 N22aAMT  $CHAR2.
        @2389 N22aPER  $CHAR1.
        @2390 N22aCK   $CHAR1.
        @2391 N22bAMT  $CHAR2.
        @2393 N22bPER  $CHAR1.
        @2394 N22bCK   $CHAR1.
        @2395 N22cAMT  $CHAR2.
        @2397 N22cPER  $CHAR1.
        @2398 N22cCK   $CHAR1.
        @2399 N22dAMT  $CHAR2.
        @2401 N22dPER  $CHAR1.
        @2402 N22dCK   $CHAR1.
        @2403 N22eAMT  $CHAR2.
        @2405 N22ePER  $CHAR1.
        @2406 N22eCK   $CHAR1.
        @2407 N22fAMT  $CHAR2.
        @2409 N22fPER  $CHAR1.
        @2410 N22fCK   $CHAR1.
        @2411 N22gAMT  $CHAR2.
        @2413 N22gPER  $CHAR1.
        @2414 N22gCK   $CHAR1.
        @2415 N22hAMT  $CHAR2.
        @2417 N22hPER  $CHAR1.
        @2418 N22hCK   $CHAR1.
        @2419 N22iAMT  $CHAR2.
        @2421 N22iPER  $CHAR1.
        @2422 N22iCK   $CHAR1.
        @2423 N22jAMT  $CHAR2.
        @2425 N22jPER  $CHAR1.
        @2426 N22jCK   $CHAR1.
        @2427 N22kAMT  $CHAR2.
        @2429 N22kPER  $CHAR1.
        @2430 N22kCK   $CHAR1.
        @2431 N22lAMT  $CHAR2.
        @2433 N22lPER  $CHAR1.
        @2434 N22lCK   $CHAR1.
        @2435 N22mAMT  $CHAR2.
        @2437 N22mPER  $CHAR1.
        @2438 N22mCK   $CHAR1.
        @2439 N22nAMT  $CHAR2.
        @2441 N22nPER  $CHAR1.
        @2442 N22nCK   $CHAR1.
        @2443 N22oAMT  $CHAR2.
        @2445 N22oPER  $CHAR1.
        @2446 N22oCK   $CHAR1.
        @2447 N22pAMT  $CHAR2.
        @2449 N22pPER  $CHAR1.
        @2450 N22pCK   $CHAR1.
        @2451 N22qAMT  $CHAR2.
        @2453 N22qPER  $CHAR1.
        @2454 N22qCK   $CHAR1.
        @2455 N23AMT   $CHAR2.
        @2457 N23PER   $CHAR1.
        @2458 N24AMT   $CHAR2.
        @2460 N24PER   $CHAR1.
        @2461 N25      $CHAR1.
        @2462 N26aAMT  $CHAR2.
        @2464 N26aPER  $CHAR1.
        @2465 N26aCK   $CHAR1.
        @2466 N26bAMT  $CHAR2.
        @2468 N26bPER  $CHAR1.
        @2469 N26bCK   $CHAR1.
        @2470 N26cAMT  $CHAR2.
        @2472 N26cPER  $CHAR1.
        @2473 N26cCK   $CHAR1.
        @2474 N26dAMT  $CHAR2.
        @2476 N26dPER  $CHAR1.
        @2477 N26dCK   $CHAR1.
        @2478 N26eAMT  $CHAR2.
        @2480 N26ePER  $CHAR1.
        @2481 N26eCK   $CHAR1.
        @2482 N26fAMT  $CHAR2.
        @2484 N26fPER  $CHAR1.
        @2485 N26fCK   $CHAR1.
        @2486 N26gAMT  $CHAR2.
        @2488 N26gPER  $CHAR1.
        @2489 N26gCK   $CHAR1.
        @2490 N26hAMT  $CHAR2.
        @2492 N26hPER  $CHAR1.
        @2493 N26hCK   $CHAR1.
        @2494 N26iAMT  $CHAR2.
        @2496 N26iPER  $CHAR1.
        @2497 N26iCK   $CHAR1.
        @2498 BLANK57a $CHAR11.
        @2509 SEQNUM20 $CHAR5.
        @2514 BLANK58  $CHAR2.
        @2516 RECLABN3 $CHAR2.
        @2518 BLANK59  $CHAR1.
        @2519 N26jAMT  $CHAR2.
        @2521 N26jPER  $CHAR1.
        @2522 N26jCK   $CHAR1.
        @2523 N26kAMT  $CHAR2.
        @2525 N26kPER  $CHAR1.
        @2526 N26kCK   $CHAR1.
        @2527 N26lAMT  $CHAR2.
        @2529 N26lPER  $CHAR1.
        @2530 N26lCK   $CHAR1.
        @2531 N26mAMT  $CHAR2.
        @2533 N26mPER  $CHAR1.
        @2534 N26mCK   $CHAR1.
        @2535 N26nAMT  $CHAR2.
        @2537 N26nPER  $CHAR1.
        @2538 N26nCK   $CHAR1.
        @2539 N26oAMT  $CHAR2.
        @2541 N26oPER  $CHAR1.
        @2542 N26oCK   $CHAR1.
        @2543 N26pAMT  $CHAR2.
        @2545 N26pPER  $CHAR1.
        @2546 N26pCK   $CHAR1.
        @2547 N26qAMT  $CHAR2.
        @2549 N26qPER  $CHAR1.
        @2550 N26qCK   $CHAR1.
        @2551 N26rAMT  $CHAR2.
        @2553 N26rPER  $CHAR1.
        @2554 N26rCK   $CHAR1.
        @2555 N26sAMT  $CHAR2.
        @2557 N26sPER  $CHAR1.
        @2558 N26sCK   $CHAR1.
        @2559 N26tAMT  $CHAR2.
        @2561 N26tPER  $CHAR1.
        @2562 N26tCK   $CHAR1.
        @2563 N26uAMT  $CHAR2.
        @2565 N26uPER  $CHAR1.
        @2566 N26uCK   $CHAR1.
        @2567 N26vAMT  $CHAR2.
        @2569 N26vPER  $CHAR1.
        @2570 N26vCK   $CHAR1.
        @2571 N26wAMT  $CHAR2.
        @2573 N26wPER  $CHAR1.
        @2574 N26wCK   $CHAR1.
        @2575 N26xAMT  $CHAR2.
        @2577 N26xPER  $CHAR1.
        @2578 N26xCK   $CHAR1.
        @2579 N26yAMT  $CHAR2.
        @2581 N26yPER  $CHAR1.
        @2582 N26yCK   $CHAR1.
        @2583 N27AMT   $CHAR2.
        @2585 N27PER   $CHAR1.
        @2586 N28AMT   $CHAR2.
        @2588 N28PER   $CHAR1.
        @2589 N29AMT   $CHAR2.
        @2591 N29PER   $CHAR1.
        @2592 N30      $CHAR2.
        @2594 N31AMT   $CHAR2.
        @2596 N31PER   $CHAR1.
        @2597 N32AMT   $CHAR2.
        @2599 N32PER   $CHAR1.
        @2600 N33AMT   $CHAR2.
        @2602 N33PER   $CHAR1.
        @2603 N34aAMT  $CHAR2.
        @2605 N34aPER  $CHAR1.
        @2606 N34bAMT  $CHAR2.
        @2608 N34bPER  $CHAR1.
        @2609 N34cAMT  $CHAR2.
        @2611 N34cPER  $CHAR1.
        @2612 N34dAMT  $CHAR2.
        @2614 N34dPER  $CHAR1.
        @2615 N35AMT   $CHAR2.
        @2617 N35PER   $CHAR1.
        @2618 N36AMT   $CHAR2.
        @2620 N36PER   $CHAR1.
        @2621 N37      $CHAR1.
        @2622 N38aAMT  $CHAR2.
        @2624 N38aPER  $CHAR1.
        @2625 N38bAMT  $CHAR2.
        @2627 N38bPER  $CHAR1.
        @2628 N38cAMT  $CHAR2.
        @2630 N38cPER  $CHAR1.
        @2631 N38dAMT  $CHAR2.
        @2633 N38dPER  $CHAR1.
        @2634 N38eAMT  $CHAR2.
        @2636 N38ePER  $CHAR1.
        @2637 N38fAMT  $CHAR2.
        @2639 N38fPER  $CHAR1.
        @2640 BLANK61  $CHAR1.
        @2641 SEQNUM21 $CHAR5.
        @2646 BLANK62  $CHAR2.
        @2648 RECLABN4 $CHAR2.
        @2650 BLANK63  $CHAR1.
        @2651 N39aAMT  $CHAR2.
        @2653 N39aPER  $CHAR1.
        @2654 N39bAMT  $CHAR2.
        @2656 N39bPER  $CHAR1.
        @2657 N40      $CHAR2.
        @2659 N41aAMT  $CHAR2.
        @2661 N41aPER  $CHAR1.
        @2662 N41aCK   $CHAR1.
        @2663 N41bAMT  $CHAR2.
        @2665 N41bPER  $CHAR1.
        @2666 N41bCK   $CHAR1.
        @2667 N41cAMT  $CHAR2.
        @2669 N41cPER  $CHAR1.
        @2670 N41cCK   $CHAR1.
        @2671 N41dAMT  $CHAR2.
        @2673 N41dPER  $CHAR1.
        @2674 N41dCK   $CHAR1.
        @2675 N41eAMT  $CHAR2.
        @2677 N41ePER  $CHAR1.
        @2678 N41eCK   $CHAR1.
        @2679 N42AMT   $CHAR2.
        @2681 N42PER   $CHAR1.
        @2682 N43      $CHAR1.
        @2683 N44aAMT  $CHAR2.
        @2685 N44aPER  $CHAR1.
        @2686 N44bAMT  $CHAR2.
        @2688 N44bPER  $CHAR1.
        @2689 N44cAMT  $CHAR2.
        @2691 N44cPER  $CHAR1.
        @2692 N44dAMT  $CHAR2.
        @2694 N44dPER  $CHAR1.
        @2695 N44eAMT  $CHAR2.
        @2697 N44ePER  $CHAR1.
        @2698 N44fAMT  $CHAR2.
        @2700 N44fPER  $CHAR1.
        @2701 N45      $CHAR2.
        @2703 N46      $CHAR1.
        @2704 N47      $CHAR1.
        @2705 N48a     $CHAR1.
        @2706 N48b     $CHAR1.
        @2707 N48c     $CHAR1.
        @2708 N48d     $CHAR1.
        @2709 N48e     $CHAR1.
        @2710 N48f     $CHAR1.
        @2711 N48f1    $CHAR1.
        @2712 N48f2    $CHAR1.
        @2713 N49a     $CHAR1.
        @2714 N49b     $CHAR1.
        @2715 N49c     $CHAR1.
        @2716 N49d     $CHAR1.
        @2717 N49e     $CHAR1.
        @2718 N49e1    $CHAR1.
        @2719 N49e2    $CHAR1.
        @2720 N50      $CHAR1.
        @2721 N51a     $CHAR1.
        @2722 N51b     $CHAR1.
        @2723 N51c     $CHAR1.
        @2724 N52      $CHAR1.
        @2725 N53      $CHAR1.
        @2726 N54      $CHAR2.
        @2728 N55      $CHAR2.
        @2730 N56      $CHAR1.
        @2731 N57      $CHAR1.
        @2732 N58AMT   $CHAR2.
        @2734 N58PER   $CHAR1.
        @2735 BLANK64  $CHAR38.
        @2773 SEQNUM22 $CHAR5.
        @2778 BLANK65  $CHAR2.
        @2780 RECLABOH $CHAR2.
        @2782 BLANK66  $CHAR1.
        @2783 OH1      $CHAR1.
        @2784 OH2      $CHAR1.
        @2785 OH3      $CHAR1.
        @2786 OH4      $CHAR1.
        @2787 OH5      $CHAR1.
        @2788 OH6AMT   $CHAR2.
        @2790 OH6PER   $CHAR1.
        @2791 OH7      $CHAR2.
        @2793 BLANK67  $CHAR112.
        @2905 SEQNUM23 $CHAR5.
        @2910 BLANK68  $CHAR2.
        @2912 RECLABP0 $CHAR2.
        @2914 BLANK69  $CHAR1.
        @2915 P1       $CHAR1.
        @2916 P2       $CHAR1.
        @2917 P3       $CHAR1.
        @2918 P4       $CHAR1.
        @2919 P5       $CHAR1.
        @2920 P6       $CHAR1.
        @2921 P7       $CHAR1.
        @2922 P8       $CHAR1.
        @2923 P9       $CHAR1.
        @2924 P10      $CHAR1.
        @2925 P11      $CHAR1.
        @2926 P12      $CHAR1.
        @2927 P13      $CHAR1.
        @2928 P14      $CHAR1.
        @2929 P15      $CHAR1.
        @2930 P16      $CHAR1.
        @2931 P17      $CHAR1.
        @2932 P18      $CHAR1.
        @2933 P19      $CHAR1.
        @2934 P20      $CHAR1.
        @2935 BLANK70  $CHAR102.
        @3037 SEQNUM24 $CHAR5.
        @3042 BLANK71  $CHAR2.
        @3044 RECLABQ0 $CHAR2.
        @3046 BLANK72  $CHAR1.
        @3047 BOX_N    $CHAR1.
        @3048 Q1       $CHAR1.
        @3049 Q2       $CHAR1.
        @3050 Q3       $CHAR1.
        @3051 Q4       $CHAR1.
        @3052 Q5       $CHAR3.
        @3055 BLANK73  $CHAR114.
        @3169 SEQNUM25 $CHAR5.
        @3174 BLANK74  $CHAR2.
        @3176 RECLABR0 $CHAR2.
        @3178 BLANK75  $CHAR1.
        @3179 R1       $CHAR1.
        @3180 R2       $CHAR1.
        @3181 R3       $CHAR1.
        @3182 R4       $CHAR1.
        @3183 R5       $CHAR1.
        @3184 R6       $CHAR1.
        @3185 R7       $CHAR1.
        @3186 R8       $CHAR1.
        @3187 BLANK76  $CHAR114.
        @3301 SEQNUM26 $CHAR5.
        @3306 BLANK77  $CHAR2.
        @3308 RECLABS0 $CHAR2.
        @3310 BLANK78  $CHAR1.
        @3311 S1       $CHAR1.
        @3312 S2       $CHAR1.
        @3313 S3       $CHAR1.
        @3314 S4       $CHAR1.
        @3315 S5       $CHAR1.
        @3316 S6       $CHAR1.
        @3317 S7       $CHAR1.
        @3318 S8       $CHAR1.
        @3319 S9a      $CHAR1.
        @3320 S9b      $CHAR1.
        @3321 S9c      $CHAR1.
        @3322 S9d      $CHAR1.
        @3323 S10a     $CHAR1.
        @3324 S10b     $CHAR1.
        @3325 S10c     $CHAR1.
        @3326 BLANK79  $CHAR107.
        @3433 SEQNUM27 $CHAR5.
        @3438 BLANK80  $CHAR2.
        @3440 RECLABT0 $CHAR2.
        @3442 BLANK81  $CHAR1.
        @3443 T1       $CHAR1.
        @3444 T2       $CHAR1.
        @3445 T3       $CHAR1.
        @3446 T4       $CHAR2.
        @3448 T5       $CHAR1.
        @3449 T6       $CHAR1.
        @3450 T7a      $CHAR1.
        @3451 T7b      $CHAR1.
        @3452 T7c      $CHAR1.
        @3453 T8a      $CHAR1.
        @3454 T8b      $CHAR1.
        @3455 T8c      $CHAR1.
        @3456 BLANK82  $CHAR109.
        @3565 SEQNUM28 $CHAR5.
        @3570 BLANK83  $CHAR2.
        @3572 RECLABU0 $CHAR2.
        @3574 BLANK84  $CHAR1.
        @3575 U1a      $CHAR2.
        @3577 U1b      $CHAR2.
        @3579 U1c      $CHAR2.
        @3581 U1d      $CHAR2.
        @3583 U2       $CHAR1.
        @3584 U3       $CHAR1.
        @3585 U4       $CHAR1.
        @3586 U5       $CHAR1.
        @3587 U6       $CHAR1.
        @3588 U8       $CHAR1.
        @3589 U9_U10   $CHAR3.
        @3592 U11      $CHAR2.
        @3594 U12_U13  $CHAR3.
        @3597 U14      $CHAR1.
        @3598 U15      $CHAR1.
        @3599 U16      $CHAR4.
        @3603 U17      $CHAR1.
        @3604 U18      $CHAR1.
        @3605 U19      $CHAR1.
        @3606 U20      $CHAR1.
        @3607 U21      $CHAR1.
        @3608 U22      $CHAR1.
        @3609 U23_U24  $CHAR3.
        @3612 U25_U26  $CHAR3.
        @3615 U27      $CHAR2.
        @3617 U28      $CHAR1.
        @3618 U29      $CHAR1.
        @3619 U30      $CHAR2.
        @3621 U31      $CHAR2.
        @3623 U32a     $CHAR1.
        @3624 U32b     $CHAR1.
        @3625 U32c     $CHAR1.
        @3626 U32d     $CHAR1.
        @3627 U32e     $CHAR1.
        @3628 U32f     $CHAR1.
        @3629 U32g     $CHAR1.
        @3630 U32h     $CHAR1.
        @3631 U32i     $CHAR1.
        @3632 U32j     $CHAR1.
        @3633 U32k     $CHAR1.
        @3634 U32k1    $CHAR1.
        @3635 BLANK85  $CHAR25.
        @3660 INTENDHR $CHAR2.
        @3662 INTENDMM $CHAR2.
        @3664 INTVENDD $CHAR1.
        @3665 PRIMRESP $CHAR1.
        @3666 RELPROX  $CHAR2.
        @3668 REASPROX $CHAR1.
        @3669 INFOSAT  $CHAR1.
        @3670 AWARELVL $CHAR1.
        @3671 BLANK86  $CHAR26.
        @3697 SEQNUM29 $CHAR5.
        @3702 BLANK87  $CHAR2.
        @3704 RECLABV0 $CHAR2.
        @3706 BLANK88  $CHAR1.
        @3707 VA1      $CHAR1.
        @3708 VA3      $CHAR1.
        @3709 VA4      $CHAR1.
        @3710 BLANK88A $CHAR1.
        @3711 VG26a    $CHAR1.
        @3712 VG26b    $CHAR4.
        @3716 VG26c    $CHAR1.
        @3717 VG28a    $CHAR1.
        @3718 VG28b    $CHAR4.
        @3722 VG29a    $CHAR1.
        @3723 VG29b    $CHAR4.
        @3727 VU15     $CHAR1.
        @3728 VU16     $CHAR1.
        @3729 VU17     $CHAR4.
        @3733 VU18     $CHAR1.
        @3734 VU19     $CHAR1.
        @3735 VU20     $CHAR1.
        @3736 VU21     $CHAR2.
        @3738 VU22     $CHAR1.
        @3739 VU23_24  $CHAR3.
        @3742 VU25_26  $CHAR3.
        @3745 VV1      $CHAR1.
        @3746 VV2      $CHAR1.
        @3747 VV3a     $CHAR1.
        @3748 VV3b     $CHAR1.
        @3749 VV3c     $CHAR1.
        @3750 VV3d     $CHAR1.
        @3751 VV3e     $CHAR1.
        @3752 VV3f     $CHAR1.
        @3753 VV3g     $CHAR1.
        @3754 VV3h     $CHAR1.
        @3755 VV3i     $CHAR1.
        @3756 VV3j     $CHAR1.
        @3757 VV4      $CHAR1.
        @3758 VV5      $CHAR1.
        @3759 VV6      $CHAR1.
        @3760 VV7a     $CHAR1.
        @3761 VV7b     $CHAR1.
        @3762 VV7c     $CHAR1.
        @3763 VV7d     $CHAR1.
        @3764 VV7e     $CHAR1.
        @3765 VV7f     $CHAR1.
        @3766 VV7g     $CHAR1.
        @3767 VV7h     $CHAR1.
        @3768 VV8      $CHAR1.
        @3769 VV9      $CHAR1.
        @3770 VV10     $CHAR1.
        @3771 VV11a    $CHAR1.
        @3772 VV11b    $CHAR1.
        @3773 VV11c    $CHAR1.
        @3774 VV12AMT  $CHAR2.
        @3776 VV12PER  $CHAR1.
        @3777 VV13     $CHAR1.
        @3778 VV14     $CHAR1.
        @3779 VV15     $CHAR1.
        @3780 VV16     $CHAR1.
        @3781 VV17     $CHAR1.
        @3782 BOX_P    $CHAR1.
        @3783 VV18     $CHAR1.
        @3784 BLANK89  $CHAR45.
        @3829 SEQNUM30 $CHAR5.
        @3834 BLANK90  $CHAR2.
        @3836 RECLABW1 $CHAR2.
        @3838 BLANK91  $CHAR1.
        @3839 SECLET1  $CHAR1.
        @3840 QSNUM1   $CHAR2.
        @3842 SQIND1   $CHAR1.
        @3843 FACTYP1  $CHAR2.
        @3845 BLANK92  $CHAR7.
        @3852 YRADM1   $CHAR4.
        @3856 SECLET2  $CHAR1.
        @3857 QSNUM2   $CHAR2.
        @3859 SQIND2   $CHAR1.
        @3860 FACTYP2  $CHAR2.
        @3862 BLANK93  $CHAR7.
        @3869 YRADM2   $CHAR4.
        @3873 SECLET3  $CHAR1.
        @3874 QSNUM3   $CHAR2.
        @3876 SQIND3   $CHAR1.
        @3877 FACTYP3  $CHAR2.
        @3879 BLANK94  $CHAR7.
        @3886 YRADM3   $CHAR4.
        @3890 SECLET4  $CHAR1.
        @3891 QSNUM4   $CHAR2.
        @3893 SQIND4   $CHAR1.
        @3894 FACTYP4  $CHAR2.
        @3896 BLANK95  $CHAR7.
        @3903 YRADM4   $CHAR4.
        @3907 SECLET5  $CHAR1.
        @3908 QSNUM5   $CHAR2.
        @3910 SQIND5   $CHAR1.
        @3911 FACTYP5  $CHAR2.
        @3913 BLANK96  $CHAR7.
        @3920 YRADM5   $CHAR4.
        @3924 SECLET6  $CHAR1.
        @3925 QSNUM6   $CHAR2.
        @3927 SQIND6   $CHAR1.
        @3928 FACTYP6  $CHAR2.
        @3930 BLANK97  $CHAR7.
        @3937 YRADM6   $CHAR4.
        @3941 SECLET7  $CHAR1.
        @3942 QSNUM7   $CHAR2.
        @3944 SQIND7   $CHAR1.
        @3945 FACTYP7  $CHAR2.
        @3947 BLANK98  $CHAR7.
        @3954 YRADM7   $CHAR4.
        @3958 BLANK99  $CHAR3.
        @3961 SEQNUM31 $CHAR5.
        @3966 BLANK100 $CHAR2.
        @3968 RECLABW2 $CHAR2.
        @3970 BLANK101 $CHAR1.
        @3971 SECLET8  $CHAR1.
        @3972 QSNUM8   $CHAR2.
        @3974 SQIND8   $CHAR1.
        @3975 FACTYP8  $CHAR2.
        @3977 BLANK102 $CHAR7.
        @3984 YRADM8   $CHAR4.
        @3988 SECLET9  $CHAR1.
        @3989 QSNUM9   $CHAR2.
        @3991 SQIND9   $CHAR1.
        @3992 FACTYP9  $CHAR2.
        @3994 BLANK103 $CHAR7.
        @4001 YRADM9   $CHAR4.
        @4005 SECLET10 $CHAR1.
        @4006 QSNUM10  $CHAR2.
        @4008 SQIND10  $CHAR1.
        @4009 FACTYP10 $CHAR2.
        @4011 BLANK104 $CHAR7.
        @4018 YRADM10  $CHAR4.
        @4022 SECLET11 $CHAR1.
        @4023 QSNUM11  $CHAR2.
        @4025 SQIND11  $CHAR1.
        @4026 FACTYP11 $CHAR2.
        @4028 BLANK105 $CHAR7.
        @4035 YRADM11  $CHAR4.
        @4039 SECLET12 $CHAR1.
        @4040 QSNUM12  $CHAR2.
        @4042 SQIND12  $CHAR1.
        @4043 FACTYP12 $CHAR2.
        @4045 BLANK106 $CHAR7.
        @4052 YRADM12  $CHAR4.
        @4056 SECLET13 $CHAR1.
        @4057 QSNUM13  $CHAR2.
        @4059 SQIND13  $CHAR1.
        @4060 FACTYP13 $CHAR2.
        @4062 BLANK107 $CHAR7.
        @4069 YRADM13  $CHAR4.
        @4073 SECLET14 $CHAR1.
        @4074 QSNUM14  $CHAR2.
        @4076 SQIND14  $CHAR1.
        @4077 FACTYP14 $CHAR2.
        @4079 BLANK108 $CHAR7.
        @4086 YRADM14  $CHAR4.
        @4090 BLANK109 $CHAR3.
        @4093 SEQNUM32 $CHAR5.
        @4098 BLANK110 $CHAR2.
        @4100 RECLABX0 $CHAR2.
        @4102 BLANK111 $CHAR1.
        @4103 PMR1a    $CHAR1.
        @4104 PMR1b    $CHAR1.
        @4105 PMR2a1   $CHAR1.
        @4106 PMR2a2   $CHAR1.
        @4107 PMR2a3   $CHAR1.
        @4108 PMR2b1   $CHAR1.
        @4109 PMR2b2   $CHAR1.
        @4110 PMR2b3   $CHAR1.
        @4111 PMR2b4   $CHAR1.
        @4112 PMR2b5   $CHAR1.
        @4113 PMR2c    $CHAR1.
        @4114 PMR3a    $CHAR1.
        @4115 PMR3b    $CHAR3.
        @4118 PMR4a    $CHAR1.
        @4119 PMR4b1   $CHAR3.
        @4122 PMR4b2   $CHAR3.
        @4125 PMR4c1SY $CHAR3.
        @4128 PMR4c1DI $CHAR3.
        @4131 PMR4c2SY $CHAR3.
        @4134 PMR4c2DI $CHAR3.
        @4137 PMR4c3SY $CHAR3.
        @4140 PMR4c3DI $CHAR3.
        @4143 PMR4cAVS $CHAR3.
        @4146 PMR4cAVD $CHAR3.
        @4149 PMR5a    $CHAR1.
        @4150 PMR5b1   $CHAR3.
        @4153 PMR5b2   $CHAR3.
        @4156 BLANK112 $CHAR58.
        @4214 REVRACE  $CHAR1.
        @4215 BLANK113 $CHAR2.
        @4217 RECAGENH $CHAR2.
        @4219 STRATA   $CHAR2.
        @4221 PPSU     $CHAR3.
        @4224 NHISUB   $CHAR1.
        @4225 SEQNUM33 $CHAR5.
        @4230 BLANK114 $CHAR2.
        @4232 RECLABY0 $CHAR2.
        @4234 BLANK115 $CHAR1.
        @4235 FINTDMO  $CHAR2.
        @4237 FINTDDY  $CHAR2.
        @4239 FINTDYR  $CHAR2.
        @4241 NEXDTMO  $CHAR2.
        @4243 NEXDTDY  $CHAR2.
        @4245 NEXDTYR  $CHAR2.
        @4247 CNIDOBMO $CHAR2.
        @4249 BLANK116 $CHAR2.
        @4251 CNIDOBYR $CHAR2.
        @4253 SEXSUBJ  $CHAR1.
        @4254 FWUPRACE $CHAR1.
        @4255 BLANK117 $CHAR2.
        @4257 MIGRSTAT $CHAR1.
        @4258 CURROCCP $CHAR3.
        @4261 FAMINC   $CHAR2.
        @4263 CURVITST $CHAR1.
        @4264 BLANK118 $CHAR2.
        @4266 DDTHMO   $CHAR2.
        @4268 DDTHDY   $CHAR2.
        @4270 DDTHYR   $CHAR2.
        @4272 AGEDTH   $CHAR2.
        @4274 UNCAUDTH $CHAR4.
        @4278 INFOSOSQ $CHAR1.
        @4279 INFOSOPQ $CHAR1.
        @4280 BLANK119 $CHAR1.
        @4281 DTHCERT  $CHAR1.
        @4282 BLANK120 $CHAR29.
        @4311 MDAUTHFR $CHAR1.
        @4312 SZPLC    $CHAR1.
        @4313 SMSA     $CHAR1.
        @4314 HGRSCHAT $CHAR2.
        @4316 FARM     $CHAR1.
        @4317 POVINDX  $CHAR3.
        @4320 REGION   $CHAR1.
        @4321 SWDP1    $CHAR6.
        @4327 SWSP1    $CHAR6.
        @4333 SWDP2    $CHAR6.
        @4339 SWSP2    $CHAR6.
        @4345 SWDP3    $CHAR6.
        @4351 SWDP4    $CHAR6.
        ;
*** THIS NEXT STATEMENT ASSIGNS LABELS *** ;   
LABEL SEQNUM1  = 'SAMPLE SEQUENCE NUMBER FOR SECTION A0'
      RECLABA0 = 'RECORD LABEL FOR SECTION A0'
      QSTARTH  = 'HOUR SUBJECT QUESTIONNAIRE BEGAN'
      QSTARTM  = 'MINUTES OF HOUR S QUESTIONNAIRE BEGAN'
      QSTARTD  = 'TIME OF DAY QUESTIONNAIRE BEGAN AM/PM'
      A1       = 'NUMBER AND STREET ADDRESS OF S'
      A2       = 'CITY AND STATE ADDRESS OF S'
      A3       = 'AGE OF S'
      A4       = 'MONTH S WAS BORN'
      A5       = 'YEAR S WAS BORN'
      A6       = 'LIVING QUARTERS OF S'
      A7_A16   = 'NUMBER OF PEOPLE LIVING IN HH WITH S'
      A8_A17   = 'LENGTH OF TIME S LIVED ALONE'
      A9_A18   = 'NAME OF THE HEAD OF HOUSEHOLD'
      SUBAGE   = 'AGE OF S AT INITIAL FOLLOWUP INTV'
      SUBSEX   = 'SEX OF SUBJECT'
      A13_A22b = 'AGE OF PERSON B ON THEIR LAST BIRTHDAY'
      A14_A23b = 'SEX OF PERSON B'
      A15_A24b = 'RELATION OF PERSON B TO S'
      A13_A22c = 'AGE OF PERSON C ON THEIR LAST BIRTHDAY'
      A14_A23c = 'S OF PERSON C'
      A15_A24c = 'RELATION OF PERSON C TO S'
      A13_A22d = 'AGE OF PERSON D ON THEIR LAST BIRTHDAY'
      A14_A23d = 'SEX OF PERSON D'
      A15_A24d = 'RELATION OF PERSON D TO S'
      A13_A22e = 'AGE OF PERSON E ON THEIR LAST BIRTHDAY'
      A14_A23e = 'SEX OF PERSON E'
      A15_A24e = 'RELATION OF PERSON E TO S'
      A13_A22f = 'AGE OF PERSON F ON THEIR LAST BIRTHDAY'
      A14_A23f = 'SEX OF PERSON F'
      A15_A24f = 'RELATION OF PERSON F TO S'
      A13_A22g = 'AGE OF PERSON G ON THEIR LAST BIRTHDAY'
      A14_A23g = 'SEX OF PERSON G'
      A15_A24g = 'RELATION OF PERSON G TO S'
      A13_A22h = 'AGE OF PERSON H ON THEIR LAST BIRTHDAY'
      A14_A23h = 'SEX OF PERSON H'
      A15_A24h = 'RELATION OF PERSON H TO S'
      A13_A22i = 'AGE OF PERSON I ON THEIR LAST BIRTHDAY'
      A14_A23i = 'SEX OF PERSON I'
      A15_A24i = 'RELATION OF PERSON I TO S'
      A13_A22j = 'AGE OF PERSON J ON THEIR LAST BIRTHDAY'
      A14_A23j = 'SEX OF PERSON J'
      A15_A24j = 'RELATION OF PERSON J TO S'
      A13_A22k = 'AGE OF PERSON K ON THEIR LAST BIRTHDAY'
      A14_A23k = 'SEX OF PERSON K'
      A15_A24k = 'RELATION OF PERSON K TO S'
      A13_A22l = 'AGE OF PERSON L ON THEIR LAST BIRTHDAY'
      A14_A23l = 'SEX OF PERSON L'
      A15_A24l = 'RELATION OF PERSON L TO S'
      A13_A22m = 'AGE OF PERSON M ON THEIR LAST BIRTHDAY'
      A14_A23m = 'SEX OF PERSON M'
      A15_A24m = 'RELATION OF PERSON M TO S'
      A13_A22n = 'AGE OF PERSON N ON THEIR LAST BIRTHDAY'
      A14_A23n = 'SEX OF PERSON N'
      A15_A24n = 'RELATION OF PERSON N TO S'
      A13_A22o = 'AGE OF PERSON O ON THEIR LAST BIRTHDAY'
      A14_A23o = 'SEX OF PERSON O'
      A15_A24o = 'RELATION OF PERSON O TO S'
      A25      = 'HIGHEST LVL OF SCHOOL COMPLETED BY HHH'
      A26      = 'NUM OF CHILDREN LIVING AWAY FROM HOME'
      A27a     = 'CHILDREN LIVE LESS THAN 1/2 HOUR AWAY?'
      A27b     = 'ABOUT AN 1/2 HOUR AWAY?'
      A27c     = 'ABOUT AN HOUR AWAY?'
      A27d     = 'ABOUT TWO HOURS AWAY?'
      A27e     = 'MORE THAN TWO HOURS AWAY?'
      QTYPE    = 'TYPE OF QUESTIONNAIRE GIVEN'
      HMEMFLAG = 'HOUSEHOLD MEMBERS FLAG'
      SEQNUM2  = 'SAMPLE SEQUENCE NUMBER FOR SECTION B0'
      RECLABB0 = 'RECORD LABEL FOR SECTION B0'
      B1       = 'NUMBER OF SIBLINGS OF S'
      B2       = 'NUMBER OF SIBLINGS BORN BEFORE S'
      B3       = 'NUMBER OF CHILDREN S HAS'
      B4       = 'IS THE MOTHER OF S STILL LIVING?'
      B5       = 'YEAR OF MOTHER''S DEATH'
      B6       = 'MOTHER''S DEATH DUE TO INJURY/ACCIDENT?'
      B7       = 'YEAR MOTHER OF S WAS BORN'
      B8       = 'IS THE FATHER OF S STILL LIVING?'
      B9       = 'YEAR OF FATHER''S DEATH'
      B10      = 'FATHER''S DEATH DUE TO INJURY/ACCIDENT?'
      B11      = 'YEAR FATHER OF S WAS BORN'
      B12      = 'DR EVER SAY RELATIVES INCLUDED HAD CANC?'
      B13aA    = 'WHICH RELATIVES HAVE HAD CANC (REL 1)'
      B13aB1   = 'SITE/TYPE OF CANCER#1 OF RELATIVE 1'
      B13aB2   = 'SITE/TYPE OF CANCER#2 OF RELATIVE 1'
      B13bA    = 'WHICH RELATIVES HAVE HAD CANC (REL 2)'
      B13bB1   = 'SITE/TYPE OF CANCER#1 OF RELATIVE 2'
      B13bB2   = 'SITE/TYPE OF CANCER#2 OF RELATIVE 2'
      B13cA    = 'WHICH RELATIVES HAVE HAD CANC (REL 3)'
      B13cB1   = 'SITE/TYPE OF CANCER#1 OF RELATIVE 3'
      B13cB2   = 'SITE/TYPE OF CANCER#2 OF RELATIVE 3'
      B13dA    = 'WHICH RELATIVES HAVE HAD CANC (REL 4)'
      B13dB1   = 'SITE/TYPE OF CANCER#1 OF RELATIVE 4'
      B13dB2   = 'SITE/TYPE OF CANCER#2 OF RELATIVE 4'
      B13eA    = 'WHICH RELATIVES HAVE HAD CANC (REL 5)'
      B13eB1   = 'SITE/TYPE OF CANCER#1 OF RELATIVE 5'
      B13eB2   = 'SITE/TYPE OF CANCER#2 OF RELATIVE 5'
      SEQNUM3  = 'SAMPLE SEQUENCE NUMBER FOR SECTION C0'
      RECLABC0 = 'RECORD LABEL FOR SECTION C0'
      C1       = 'S EVER BEEN PREGNANT'
      C2       = 'IS S PREGNANT NOW?'
      C3       = 'AGE OF S WHEN FIRST CHILD WAS BORN'
      C4       = 'AGE OF S WHEN LAST CHILD WAS BORN'
      C5       = 'NUMBER OF LIVE BIRTHS S HAS HAD'
      C6       = 'HAS S EVER HAD A MISCARRIAGE?'
      C7       = 'NUMBER OF MISCARRIAGES S HAS HAD'
      C8       = 'IS S STILL HAVING PERIODS?'
      C9       = 'S HAVE REGULAR OR IRREGULAR PERIODS?'
      C10      = 'REASON FOR IRREGULAR PERIODS'
      C11      = 'AGE WHEN S HAD LAST PERIOD'
      C12      = 'REASON S STOPPED HAVING A PERIOD'
      C13      = 'REASON PERIOD STOPPED UNNATURALLY'
      C14      = 'S STILL HAVE WOMB OR UTERUS?'
      C15      = 'S STILL HAVE BOTH OVARIES?'
      C16      = 'S STILL HAVE ONE OVARY?'
      C17      = 'TAKE HORM PILLS FOR REAS REL TO MENOPAUSE'
      C18      = 'AGE OF S WHEN HORM PILLS WERE FRST TAKEN'
      C19      = 'AGE OF S WHEN HORM PILLS WERE LAST TAKEN'
      C20AMT   = 'NUM OF YRS AND MOS S TOOK HORM PILLS'
      C20PER   = 'TIME PERIOD OF RESPONSE TO QUES C20AMT'
      C21      = 'S STILL HAVE BOTH OVARIES?'
      C22      = 'S STILL HAVE ONE OVARY?'
      C23      = 'S EVER TAKEN BIRTH CONTROL PILLS?'
      C24      = 'AGE OF S WHEN BCP WAS FIRST TAKEN'
      C25      = 'AGE OF S WHEN BCP WAS LAST TAKEN'
      C26AMT   = 'NUM OF YRS AND MOS BCP WAS TAKEN TOTAL'
      C26PER   = 'TIME PERIOD OF RESPONSE'
      C27      = 'REASONS S TOOK BIRTH CONTROL PILLS'
      SEQNUM4  = 'SAMPLE SEQUENCE NUMBER FOR SECTION D1'
      RECLABD1 = 'RECORD LABEL FOR SECTION D1'
      D1       = 'GENERAL HEALTH STATUS OF S'
      D2       = 'DR EVER SAY S HAD HYPERTENSION/HBP'
      D3       = 'YR S WAS FRST TOLD OF HYPERTENSION/HBP'
      D4       = 'ESTIMATION WHEN S WAS TOLD OF HYPT/HBP'
      D5       = 'S EVER BEEN HOSPITALIZED FOR HYPT/HBP'
      D6       = 'S EVER HAD PAIN/DISCOMFORT IN CHEST'
      D7       = 'S EVER HAD PRESSURE/HEAVINESS IN CHEST'
      D8       = 'PAIN/PRESSURE OCCUR WHEN WALKING UPHILL'
      D9       = 'PAIN/PRESS OCCUR WHEN WALKING ON LVL GRND'
      D10a     = 'DOES PAIN OCCUR WHEN WALKING SLOW/STOPPING'
      D10b     = 'PAIN CAUSE S TO TAKE NITROGLYCERIN'
      D10c     = 'S GET PAIN WHEN WALKING AT SAME PACE'
      D11      = 'PAIN REL WHEN S STOPS WALKING/SLOWS DOWN'
      D12      = 'HOW SOON WAS THE PAIN RELIEVED?'
      D13      = 'PAIN/PRESSURE OCCUR MORE THAN THREE TIMES'
      D14      = 'AGE WHEN PAIN/PRESSURE FIRST OCCURRED'
      D15      = 'S EXPERIENCED PAIN/PRESSURE IN PAST YEAR'
      D16      = 'YEAR S LAST EXPERIENCES PAIN/PRESSURE'
      D17a     = 'PAIN/DISCOMFORT IN REGION A(SEE DIAGRAM)'
      D17b     = 'PAIN/DISCOMFORT IN REGION B(SEE DIAGRAM)'
      D17c     = 'PAIN/DISCOMFORT IN REGION C(SEE DIAGRAM)'
      D17d     = 'PAIN/DISCOMFORT IN REGION D(SEE DIAGRAM)'
      D18      = 'PAIN/DISCOMFORT BEEN FELT ANYWHERE ELSE'
      D18a     = 'WHERE DID S FEEL PAIN/DISCOMFORT?'
      D18b     = 'THE PAIN/DISCOMFORT OCCUR ANYWHERE ELSE'
      D19      = 'SEV PAIN IN CHEST LASTING 1/2 HR OR MORE'
      D20      = 'DID S SEE A DR B/C OF THIS PAIN?'
      D21      = 'WHAT DID DR SAY THIS PAIN WAS?'
      D22      = 'NUMBER OF PAIN ATTACKS S HAS HAD'
      D23      = 'YEAR OF FIRST CHEST PAIN ATTACK'
      D24      = 'LENGTH OF TIME EPISODE OF PAIN LASTED'
      D25      = 'YEAR OF LAST ATTACK'
      D26a     = 'LENGTH OF PAIN DURING LAST ATTACK'
      D26b     = 'S HOSP OVRNGHT SINC 1970 FOR THIS ATTACK'
      D27      = 'S GET PAIN IN EITHER LEG WHEN WALKING'
      D28      = 'PAIN BEGIN WHEN STANDING STILL/SITTING'
      D29      = 'WHAT PART OF LEG DID S FEEL PAIN IN?'
      D30      = 'PAIN OCCUR WHEN WALKING UPHILL/HURRY'
      D31      = 'PAIN OCCUR WHEN WALKING AT ORDINARY PACE'
      D32      = 'PAIN DISAPPEAR WHILE STILL WALKING'
      D33      = 'WHAT DOES S DO WHEN EXPERIECING PAIN?'
      D34      = 'IS PAIN RELEIVED WHEN S STOPS WALKING?'
      D35      = 'HOW SOON IS PAIN REL WHEN S STOPS WALKING'
      D36      = 'AGE WHEN PAIN FRST OCCURRED FROM WALKING'
      D37      = 'S BEEN BOTHERED BY COND IN PAST YEAR'
      D38      = 'YEAR S LAST FELT PAIN WHEN WALKING'
      D39a     = 'S EVER HAS A SUDDEN LOSS OF VISION'
      D39b     = 'SUDDEN LOSS OF VISION LAST > THAN 24HRS'
      D40a     = 'SUDDEN LOSS OF SPEECH OR DIFF SPEAKING'
      D40b     = 'LOSS OF SPCH/DIFF SPEAKING > THAN 24HRS'
      D41a     = 'WEAKNESS OF ARM/LEG ON SAME SIDE OF BODY'
      D41b     = 'WEAKNESS OF ARM/LEG LAST > THAN 24HRS'
      D42a     = 'SUDDEN NUMBNESS ON ONE SIDE OF BODY'
      D42b     = 'SUDDEN NUMBNESS LAST > THAN 24HRS'
      D43      = 'DR EVER SAY S HAD GALLBLADDER DISEASE'
      D44      = 'YEAR S FIRST TOLD ABOUT GALLBLADDER DIS'
      D45      = 'S HAVE SURG FOR GALLBLADDER DISEASE'
      D46      = 'YEAR S FRST HAD SURG FOR GALLBLDDER DIS'
      D47      = 'S HOSP FOR GALLBLADDER DISEASE SINC 1970'
      D48      = 'S TOLD BY DR ABOUT LUMP/CYST IN BREAST'
      D49      = 'S HAVE SURG FOR LUMP/CYST IN BREAST'
      D50      = 'TOTAL NUM OF BREAST BIOPSIES S HAD'
      D51      = 'YR OF FRST BIOPSY FOR CYST/LUMP'
      D52      = 'DR SAY LUMP/CYST WAS CANCEROUS/MELIGNANT'
      D53      = 'S HAD ONE OR BOTH BREAST REMOVED'
      D54      = 'HOSP OVRNGHT FOR BRST COND/PREG/FEM PROB'
      D55      = 'SKIN TUMOR/ULCER/LESIONS REQ MED ATTN'
      D56      = 'NUM OF SKIN COND SINC 1970 REQ MED ATTN'
      SEQNUM5  = 'SAMPLE SEQUENCE NUMBER FOR SECTION D2'
      RECLABD2 = 'RECORD LABEL FOR SECTION D2'
      D57c1    = 'TYPE OF FIRST SKIN CONDITION'
      D58c1    = 'DR SAY FRST SKIN COND WAS CANC/MELIG'
      D59c1    = 'NUM FRST SKIN COND RECUR REQ MED ATTN'
      D60c1a   = 'FIRST SKIN COND LOCATED ON HEAD/FACE'
      D60c1b   = 'FIRST SKIN COND LOCATED ON ARMS'
      D60c1c   = 'FIRST SKIN COND LOCATED ON HANDS'
      D60c1d   = 'FIRST SKIN COND LOCATED ON LEGS'
      D60c1e   = 'FIRST SKIN COND LOCATED ON FEET'
      D60c1f   = 'FRST SKIN COND LOC ON OTHER PT OF BODY'
      D60c1f1  = 'FIRST LOC OF FRST OTHER SKIN CONDITION'
      D60c1f2  = 'SECOND LOC OF FRST OTHER SKIN CONDITION'
      D61c1    = 'S HOSP OVERNIGHT FOR TREATMENT 1ST COND'
      D57c2    = 'TYPE OF SECOND SKIN CONDITION'
      D58c2    = 'DR SAY SEC SKIN COND WAS CANC/MELIG'
      D59c2    = 'TIMES 2ND SKIN COND RECUR REQ MED ATTN'
      D60c2a   = 'SECOND SKIN COND LOCATED ON HEAD/FACE'
      D60c2b   = 'SECOND SKIN COND LOCATED ON ARMS'
      D60c2c   = 'SECOND SKIN COND LOCATED ON HANDS'
      D60c2d   = 'SECOND SKIN COND LOCATED ON LEGS'
      D60c2e   = 'SECOND SKIN COND LOCATED ON FEET'
      D60c2f   = 'SEC SKIN COND LOC ON OTHER PT OF BODY'
      D60c2f1  = '1ST PT OF BODY 2ND SKIN CONDITION IS LOC'
      D60c2f2  = '2ND PT OF BODY 2ND SKIN CONDITION IS LOC'
      D61c2    = 'S HOSP OVRNGHT FOR TREATMENT 2ND COND'
      D57c3    = 'TYPE OF THIRD SKIN CONDITION'
      D58c3    = 'DR SAY THIRD SKIN COND WAS CANC/MELIG'
      D59c3    = 'TIMES 3RD SKIN COND RECURR REQ MED ATTN'
      D60c3a   = 'THIRD SKIN COND LOCATED ON HEAD/FACE'
      D60c3b   = 'THIRD SKIN COND LOCATED ON ARMS'
      D60c3c   = 'THIRD SKIN COND LOCATED ON HANDS'
      D60c3d   = 'THIRD SKIN COND LOCATED ON LEGS'
      D60c3e   = 'THIRD SKIN COND LOCATED ON FEET'
      D60c3f   = 'THIRD SKIN COND LOC ON OTHER PT OF BODY'
      D60c3f1  = '1ST PT OF BODY 3RD SKIN CONDITION IS LOC'
      D60c3f2  = '2ND PT OF BODY 3RD SKIN CONDITION IS LOC'
      D61c3    = 'HOSP OVRNGHT FOR TREATMENT 3RD SKIN COND'
      D57c4    = 'TYPE OF FOURTH SKIN CONDITION'
      D58c4    = 'DR SAY 4TH SKIN COND WAS CANC/MELIG'
      D59c4    = 'TIMES 4TH SKIN COND RECURRED REQ MED ATTN'
      D60c4a   = 'FOURTH SKIN COND LOCATED ON HEAD/FACE'
      D60c4b   = 'FOURTH SKIN COND LOCATED ON HEAD/FACE'
      D60c4c   = 'FOURTH SKIN COND LOCATED ON HANDS'
      D60c4d   = 'FOURTH SKIN COND LOCATED ON LEGS'
      D60c4e   = 'FOURTH SKIN COND LOCATED ON FEET'
      D60c4f   = 'FOURTH SKIN COND LOC ON OTHER PT OF BODY'
      D60c4f1  = '1ST PT OF BODY 4TH SKIN CONDITION IS LOC'
      D60c4f2  = '2ND PT OF BODY 4TH SKIN CONDITION IS LOC'
      D61c4    = 'S HOSP OVRNGHT FOR TREATMENT 4TH SKIN COND'
      D62      = 'DR EVER SAY S HAD ANY TYPE OF CANCER'
      D63DX1   = 'WHERE/WHAT TYPE OF CANCER (1ST DIAGNOSIS)'
      D64DX1   = 'YEAR S FIRST TOLD OF 1ST CANC DIAGNOSIS'
      D65DX1   = 'S HOSP OVERNIGHT FOR 1ST CANC DIAGNOSIS'
      D63DX2   = 'WHERE/WHAT TYPE OF CANCER (2ND DIAGNOSIS)'
      D64DX2   = 'YEAR S FIRST TOLD OF 2ND CANCER DIAGNOSIS'
      D65DX2   = 'S HOSP OVERNIGHT FOR 2ND CANCER DIAGNOSIS'
      D63DX3   = 'WHERE/WHAT TYPE OF CANCER (3RD DIAGNOSIS)'
      D64DX3   = 'YEAR S FRST TOLD OF 3RD CANCER DIAGNOSIS'
      D65DX3   = 'S HOSP OVERNIGHT FOR 3RD CANCER DIAGNOSIS'
      D66      = 'S USUALLY HAVE A COUGH'
      D67      = 'S USUALLY COUGH ON MOST DAYS > 3MOS'
      D68      = 'DOES S USUALLY COUGH UP PHELM FROM CHEST'
      D69      = 'S BRING UP PHELM ON MOST DAYS > 3MOS'
      D70      = 'SHORT OF BRTH WALKING ON LVL GRND/UPHILL'
      D71      = 'S WALK SLOWER THAN PEOPLE SAME AGE'
      D72      = 'SHORT OF BRTH HURRYING ON LVL GRND/HILL'
      D73      = 'STOP FOR BRTH AFT WALK 100YRDS/LVL GRND'
      D74      = 'S BRTHLESS WHEN DRESSING/UNDRESSING'
      D75a     = 'CHEST WHEEZY/WHISTLING MOST DAYS/NIGHT'
      D75b     = 'CHEST WHEEZY/WHISTLING WHEN S HAS COLD'
      D75c     = 'CHEST WHEEZY/WHISTLING OCCAS W/O COLD'
      D76      = 'S OUTDOORS FREQUENTLY AS PART OF JOB'
      D77      = 'S OUTDOORS FREQ DURING LEISURE TIME'
      D78      = 'SUNBURNED BADLY AS CHILD CAUS BLISTERING'
      D79      = 'SKIN REACTION AFT BEING IN SUN > 2HRS'
      D80      = 'CHANGES IN SKIN OCCUR AFT REP SUN EXP'
      D81      = 'CONFINED TO BED FOR > 2WKS IN LAST 10YRS'
      D82      = 'S EVER HAD BEDSORE FROM BEING BEDRIDDEN'
      D83      = 'PLACE S WAS WHEN BEDRIDDEN CAUS BEDSORE'
      SEQNUM6  = 'SAMPLE SEQUENCE NUMBER FOR SECTION E1'
      RECLABE1 = 'RECORD LABEL FOR SECTION E1'
      E1       = 'S HAVE PAIN IN NECK ON MOST DAYS'
      E2       = 'S HAVE PAIN IN BACK ON MOST DAYS'
      E3       = 'PAIN IN HIP JOINT/BUTTOCKS/GROIN/THIGHS'
      E4a      = 'PAIN IN/OR ARND KNEE MOST DAYS W/I MONTH'
      E4b      = 'WHICH KNEE IS THE PAIN LOCATED'
      E5       = 'PAIN/ACHING JOINT OTH THAN HIP/BACK/KNEE'
      E6       = 'SWOLLEN JOINTS PAINFUL WHEN TOUCHED'
      E7       = 'STIFFNESS IN JOINTS WHEN GETTING OUT BED'
      E8       = 'DR EVER TELL S HE/SHE HAD FRACTURED HIP'
      E9       = 'DR EVER TELL S HE/SHE HAD DISLOCATED HIP'
      E10      = 'LONGEST EPISODE OF NECK PAIN S EVER HAD'
      E11      = 'AGE WHEN S FIRST EXP RECURRING NECK PAIN'
      E12      = 'IS S STILL HAVING NECK PAIN?'
      E13      = 'LAST TIME S HAD NECK PAIN'
      E14      = 'NECK PAIN S HAS OCCUR MORE THAN IN PAST'
      E15      = 'IS THE PAIN PRESENT WHEN RESTING A NIGHT'
      E16      = 'S AWAKENED FROM SLEEP B/C OF NECK PAIN'
      E17      = 'DOES THE NECK PAIN SEEM TO SPREAD?'
      E18a     = 'PAIN SPREAD TO THE TOP AND BACK OF HEAD'
      E18b     = 'PAIN SPREAD TO EITHER SHOULDER'
      E18c     = 'PAIN SPREAD TO THE ARMS OR HANDS'
      E19a     = 'NECK PAIN WORSE-COUGH/SNEEZ/DEEP BRTHING'
      E19b     = 'NECK PAIN WORSEN-BEND/TWISTING MOTION'
      E19c     = 'NECK PAIN WORSEN AFT PROLONGED SITTING'
      E19d     = 'NECK PAIN WORSEN AFT PROLONGED STANDING'
      E19e     = 'NECK PAIN WORSEN AFTER OTHER MOTION'
      E20      = 'S EVER HAD NECK PAIN DUE TO AN INJURY'
      E21      = 'NECK PAIN CAUSED-SPORT/WORK/OTHER ACT'
      E22      = 'DR EVER SAY S HAD WHIPLASH'
      E23      = 'SLIPPED/RUPTURED DISK IN NECK'
      E24      = 'TRACTION TO TREAT SLIPPED/RUPTURED DISK'
      E25      = 'SSTAY IN HOSP OVERNIGHT FOR NECK PAIN'
      E26      = 'S HOSP FOR NECK PAIN SINC 1970'
      E27a     = 'S HAVE SURG FOR BACK PAIN'
      E27b     = 'NUM OF TIMES S HAD SURG FOR BACK PAIN'
      E28      = 'S HAD PAIN IN BACK > ONE MONTH'
      E29      = 'LONGEST EPISODE OF BACK PAIN S HAD'
      E30      = 'AGE OF S WHEN RECURRED BACK PAIN BEGAN'
      E31      = 'IS S STILL HAVING BACK PAIN'
      E32      = 'LAST TIME S HAD BACK PAIN'
      E33      = 'DOES PAIN OCCUR MORE FREQ THAN IN PAST'
      E34a     = 'PAIN LOCATED IN UPPER BACK'
      E34b     = 'PAIN LOCATED IN MID-BACK'
      E34c     = 'PAIN LOCATED IN LOWER BACK'
      E35a     = 'PAIN MOST INTENSE IN UPPER BACK'
      E35b     = 'PAIN MOST INTENSE IN MID-BACK'
      E35c     = 'PAIN MOST INTENSE IN LOWER BACK'
      E36      = 'PAIN PRESENT WHEN RESTING AT NIGHT'
      E37      = 'DOES BACK PAIN AWAKEN S FROM SLEEP'
      E38      = 'DOES BACK PAIN SEEM TO SPREAD'
      E39a     = 'BACK PAIN SPREADS TO BACK OF RGHT LEG'
      E39b     = 'BACK PAIN SPREADS TO BACK OF LEFT LEG'
      E39c     = 'BACK PAIN SPREADS TO HEAD'
      E39d     = 'BACK PAIN SPREADS TO THE SIDES OF BODY'
      E40a     = 'BACK PAIN WORSENS WHEN COUGH/SNEEZING'
      E40b     = 'BACK PAIN WORSENS W/ BEND/TWISTING'
      E40c     = 'BACK PAIN WORSENS AFT PROLONGED SITTING'
      E40d     = 'BACK PAIN WORSENS AFT PROLONGED STANDING'
      E40e     = 'BACK PAIN WORSENS WITH OTHER MOTION'
      E41      = 'BACK PAIN DUE TO AN INJURY'
      E42      = 'BACK PAIN DUE TO SPORTS/WORK/OTHER ACT'
      E43      = 'DR SAY S SLIPPED/RUPTURED DISK IN BACK'
      E44      = 'TRACTION TO TREAT SLIPPED/RUPT DISK'
      E45      = 'S STAY IN HOSP OVERNIGHT FOR BACK PAIN'
      E46      = 'HOSP FOR BACK PAIN SINCE 1970'
      E47      = 'SURG FOR BACK PAIN'
      E48      = 'NUM OF SURG PERFORMED FOR BACK PAIN'
      E49      = 'S HAD PAIN AROUND HIP JOINT > ONE MONTH'
      E50      = 'LONGEST EPISODE OF HIP PAIN'
      E51      = 'AGE OF S WHEN RECURRED HIP PAIN BEGAN'
      E52      = 'S STILL HAVING HIP PAIN'
      E53      = 'LAST TIME S HAD HIP PAIN'
      E54a     = 'HIP PAIN MOST INTENSE IN RIGHT BUTTOCK'
      E54b     = 'HIP PAIN MOST INTENSE IN LEFT BUTTOCK'
      E54c     = 'HIP PAIN MOST INTENSE IN RIGHT GROIN'
      E54d     = 'HIP PAIN MOST INTENSE IN LEFT GROIN'
      E54e     = 'HIP PAIN INTENSE SIDE OF RHT UPPER THIGH'
      E54f     = 'HIP PAIN INTENSE SIDE LEFT UPPER THIGH'
      E54g     = 'HIP PAIN MOST INTENSE SOMEWHERE ELSE'
      E54g1    = 'HIP PAIN MOST INTENSE IN 1ST OTHER AREA'
      E54g2    = 'HIP PAIN MOST INTENSE IN 2ND OTHER AREA'
      E55      = 'PAIN SPREAD FROM THE HIP'
      E56a     = 'PAIN SPREAD FROM HIP TO INSIDE OF LEG'
      E56b     = 'PAIN SPREAD FROM HIP TO FRONT OF LEG'
      E56c     = 'PAIN SPREAD FROM HIP TO OUTSIDE OF LEG'
      E56d     = 'PAIN SPREAD FROM HIP TO BACK OF LEG'
      E56e     = 'PAIN SPREAD FROM HIP TO SOMEWHERE ELSE'
      E56e1    = 'HIP PAIN SPREAD FROM 1ST OTHER AREA'
      E56e2    = 'HIP PAIN SPREAD FROM 2ND OTHER AREA'
      E57      = 'PAIN AROUND HIP WHEN COUGHING/SNEEZING'
      E58      = 'HIP PAIN PRESENT WHEN RESTING/MOVING'
      E59      = 'S STAYED OVERNIGHT IN HOSP FOR HIP PAIN'
      E60a     = 'PAIN AROUND KNEE MOST DAYS OUT A MONTH'
      E60b     = 'WHICH KNEE IS PAINFUL'
      E61      = 'LONGEST EPISODE OF KNEE PAIN'
      E62      = 'AGE OF S WHEN RECURRED KNEE PAIN BEGAN'
      E63      = 'S STILL HAVING KNEE PAIN'
      E64      = 'LAST TIME S HAD KNEE PAIN'
      E65      = 'KNEE PAIN PRESENT WHEN RESTING/MOVING'
      E66a     = 'KNEE PAIN CAUSE SWELLING OF KNEE JOINTS'
      E66b     = 'KNEE PAIN MAKE JOINT WARM TO THE TOUCH'
      E66c     = 'KNEE PAIN MAKE JOINT APPEAR RED'
      E67a     = 'S EVER HAD LOCKING OF THE KNEE'
      E67b     = 'WHICH KNEE LOCKED ON S'
      E68a     = 'KNEES EVERY GIVEN WAY ON S'
      E68b     = 'WHICH KNEE GAVE WAY ON S'
      E69      = 'TWISTING KNEE RESULT IN SPRAIN/SWELLING'
      E70      = 'WHICH KNEE DID SPRAIN/SWELLING OCCUR'
      E71      = 'PAIN/ACHING JOINT MOST DAYS DUR 6 WK PD'
      SEQNUM7  = 'SAMPLE SEQUENCE NUMBER FOR SECTION E2'
      RECLABE2 = 'RECORD LABEL FOR SECTION E2'
      E72a1    = 'DOES S HAVE PAINFUL FINGERS'
      E72a2    = 'WHICH FINGERS ARE PAINFUL'
      E72b1    = 'DOES S HAVE PAINFUL WRISTS'
      E72b2    = 'WHICH WRIST IS PAINFUL'
      E72c1    = 'DOES S HAVE PAINFUL ELBOWS'
      E72c2    = 'WHICH ELBOW IS PAINFUL'
      E72d1    = 'DOES S HAVE PAINFUL SHOULDERS'
      E72d2    = 'WHICH SHOULDER IS PAINFUL'
      E72e1    = 'DOES S HAVE PAINFUL ANKLES'
      E72e2    = 'WHICH ANKLE IS PAINFUL'
      E72f1    = 'DOES S HAVE PAINFUL TOES'
      E72f2    = 'WHICH TOES ARE PAINFUL'
      E73      = 'SWOLLEN JOINTS PAINFUL TO THE TOUCH'
      E74      = 'AGE OF S WHEN SWELLING JOINTS BEGAN'
      E75      = 'IS S STILL HAVING SWELLING OF JOINTS'
      E76      = 'LAST TIME S HAD SWELLING OF JOINTS'
      E77a1    = 'SWELLING OF FINGERS'
      E77a2    = 'WHICH FINGERS SWELL REGULARLY'
      E77b1    = 'SWELLING OF THE WRISTS'
      E77b2    = 'WHICH WRIST SWELLS REGULARLY'
      E77c1    = 'SWELLING OF THE ELBOWS'
      E77c2    = 'WHICH ELBOW SWELLS REGULARLY'
      E77d1    = 'SWELLING OF THE SHOULDERS'
      E77d2    = 'WHICH SHOULDER SWELLS REGULARLY'
      E77e1    = 'SWELLING OF THE HIPS'
      E77e2    = 'WHICH HIPS SWELLS REGULARLY'
      E77f1    = 'SWELLING OF THE KNEES'
      E77f2    = 'WHICH KNEE SWELLS REGULARLY'
      E77g1    = 'SWELLING OF THE ANKLES'
      E77g2    = 'WHICH ANKLE SWELLS REGULARLY'
      E77h1    = 'SWELLING OF THE TOES'
      E77h2    = 'WHICH TOES SWELL REGULARLY'
      E78      = 'S EVER HAVE A SURG PROCEDURE ON JOINTS'
      E79a1    = 'S HAD FINGERS OPERATED ON'
      E79a2    = 'WHICH FINGERS WERE OPERATED ON'
      E79b1    = 'S HAD WRIST OPERATED ON'
      E79b2    = 'WHICH WRIST WAS OPERATED ON'
      E79c1    = 'S HAD ELBOW OPERATED ON'
      E79c2    = 'WHICH ELBOW WAS OPERATED ON'
      E79d1    = 'S HAD SHOULDER OPERATED ON'
      E79d2    = 'WHICH SHOULDER WAS OPERATED ON'
      E79e1    = 'S HAD HIPS OPERATED ON'
      E79e2    = 'WHICH HIP WAS OPERATED ON'
      E79f1    = 'S HAD KNEE OPERATED ON'
      E79f2    = 'WHICH KNEE WAS OPERATED ON'
      E79g1    = 'S HAD ANKLE OPERATED ON'
      E79g2    = 'WHICH ANKLE WAS OPERATED ON'
      E79h1    = 'S HAD TOES OPERATED ON'
      E79h2    = 'WHICH TOES WERE OPERATED ON'
      E80      = 'S HAD JOINTS REPLACED'
      E81a1    = 'S HAD FINGERS ON RIGHT HAND REPLACED'
      E81a2    = 'NUM OF FINGERS S HAD REPLACED/RGHT HAND'
      E81b1    = 'S HAD FINGERS ON LEFT HAND REPLACED'
      E81b2    = 'NUM OF FINGERS S HAD REPLACED/LEFT HAND'
      E81c1    = 'S HAD LEFT HIP REPLACED'
      E81c2    = 'NUM OF LEFT HIP REPLACEMENTS S HAD'
      E81d1    = 'S HAD RIGHT HIP REPLACEMENT'
      E81d2    = 'NUM OF RIGHT HIP REPLACEMENT S HAD'
      E81e1    = 'S HAD LEFT KNEE REPLACED'
      E81e2    = 'NUM OF LEFT KNEE REPLACEMENTS'
      E81f1    = 'S HAD RIGHT KNEE REPLACED'
      E81f2    = 'NUM OF RIGHT KNEE REPLACMENTS'
      E81g     = 'DID S HAVE ANY OTHER JOINTS REPLACED'
      E81h1    = 'S HAVE OTHER JOINTS REPLACED'
      E81h2    = 'NUM OF JOINT REPLACEMENTS S HAD NOT SPEC'
      E81i1    = 'JOINTS S HAD REPLACED NOT SPECIFIED'
      E81i2    = 'NUM OF REPLACEMENTS'
      E82      = 'STIFFNESS OF JOINTS/GETTING OUT OF BED'
      E83      = 'AGE WHEN S FIRST HAD MORNING STIFFNESS'
      E84      = 'S STILL HAVING MORNING STIFFNESS'
      E85      = 'LAST TIME S HAD MORNING STIFFNESS'
      E86a1    = 'MORNING STIFFNESS/FINGERS'
      E86a2    = 'WHICH FINGERS STIFFENED IN THE MORNING'
      E86b1    = 'MORNING STIFFNESS/WRISTS'
      E86b2    = 'WHICH WRIST STIFFENED IN THE MORNING'
      E86c1    = 'MORNING STIFFNESS/ELBOWS'
      E86c2    = 'WHICH ELBOWS STIFFENED IN THE MORNING'
      E86d1    = 'MORNING STIFFNESS/SHOULDERS'
      E86d2    = 'WHICH SHOULDER STIFFENED IN THE MORNING'
      E86e1    = 'MORNING STIFFNESS/HIPS'
      E86e2    = 'WHICH HIP STIFFENED IN THE MORNING'
      E86f1    = 'MORNING STIFFNESS/KNEES'
      E86f2    = 'WHICH KNEE STIFFENED IN THE MORNING'
      E86g1    = 'MORNING STIFFNESS/ANKLES'
      E86g2    = 'WHICH ANKLES STIFFENED IN THE MORNING'
      E86h1    = 'MORNING STIFFNESS/TOES'
      E86h2    = 'WHICH TOES STIFFENED IN THE MORNING'
      E86i1    = 'MORNING STIFFNESS/BACK'
      E87a     = 'STIFFNESS USUALLY LAST ALL DAY'
      E87b     = 'STIFFNESS GEN LASTS LONGER THAN 1/2HR'
      E87c     = 'STIFFNESS GEN LASTS LONGER THAN 15MIN'
      E88      = 'S STAYED OVRNGHT IN HOSP FOR JOINT PROB'
      E89      = 'STAYED OVRNGHT IN HOSP JOINT PROB < 1970'
      E90      = 'DR EVER TELL S OF FRACTURED HIP'
      E91      = 'WHICH HIP WAS BROKEN'
      E92      = 'AGE OF S WHEN FRACTURED HIP OCCURRED'
      E93      = 'S HAVE SURG FOR FRACTURED HIP'
      E94      = 'S STAY OVRNGHT HOSP SINCE 1970 FRAC HIP'
      E95      = 'DR EVER TELL S OF DISLOCATED HIP'
      E96      = 'WHICH HIP WAS DISLOCATED'
      E97      = 'AGE OF S WHEN DISLOCATED HIP OCCURRED'
      E98      = 'S HAVE SURG FOR DISLOCATED HIP'
      E99      = 'STAY OVRNGHT HOSP SINCE 1970 DISLOC HIP'
      E100     = 'EST OF PAIN FROM JOINT COND IN PAST WEEK'
      SEQNUM8  = 'SAMPLE SEQUENCE NUMBER FOR SECTION F0'
      RECLABF0 = 'RECORD LABEL FOR SECTION F0'
      RESANSEC = 'DID R ANSWER SECTION F0'
      F1       = 'S USUALLY CONFINED TO BED MOST OF DAY'
      F2AMT    = 'NUM OF MOS/YRS S CONFINED TO BED'
      F2PER    = 'TIME PERIOD OF RESPONSE TO QUES F2AMT'
      F3a      = 'CAN S FULLY DRESS THEMSELVES'
      F3b1     = 'HELP FROM ANOTHER PERSON GETTING DRESSED'
      F3b2     = 'USE MECHANICAL AID/DEVICE TO GET DRESSED'
      F3c      = 'AMT DIFF S HAD GETTING DRESSED W/ HELP'
      F4a      = 'CAN S SHAMPOO THEIR HAIR BY THEMSELVES'
      F4b      = 'HELP FROM ANOTHER PERSON SHAMPOOING HAIR'
      F5a      = 'CAN S STAND UP FROM ARMLESS STRAIGHT CHAIR'
      F5b1     = 'HELP FROM ANOTHER TO STAND UP FROM CHAIR'
      F5b2     = 'USE MECHICAL AID TO STAND UP FROM CHAIR'
      F5c      = 'AMT OF DIFF STANDING UP FROM CHAIR ON OWN'
      F6a      = 'CAN S GET INTO/OUT OF BED BY THEMSELVES'
      F6b1     = 'AMT OF DIFF W/ HELP GETTING INTO/OUT BED'
      F6b2     = 'USE MECHANICAL AID TO GET INTO/OUT OF BED'
      F6c      = 'AMT OF DIFF W/ HELP GETTING INTO/OUT BED'
      F7a      = 'CAN S PREPARE THEIR OWN FOOD'
      F7b      = 'HELP FROM ANOTHER PERSON PREPARING FOOD'
      F8a      = 'CAN S CUT MEAT WHEN EATING'
      F8b      = 'HELP FROM ANOTHER PERSON CUTTING MEAT'
      F9a      = 'CAN S LIFT A FULL CUP/GLASS TO MOUTH'
      F9b      = 'HELP FRM ANOTHER PERSON LIFTING FULL CUP'
      F10a     = 'CAN S OPEN A NEW MILK CARTON'
      F10b     = 'HELP OPENING NEW MILK CARTON'
      F11a     = 'CAN S WALK 1/4 MILE'
      F11b1    = 'HELP WALKING 1/4 MILE'
      F11b2    = 'USE MECHANICAL AID TO WALK 1/4 MILE'
      F11c     = 'AMT OF DIFF W/ HELP WALKING 1/4 MILE'
      F12a     = 'CAN S WALK FROM ONE ROOM TO ANOTHER'
      F12b1    = 'HELP WALKING FROM RM TO RM'
      F12b2    = 'USE MECHANICAL AID WALKING FROM RM TO RM'
      F12c     = 'AMT OF DIFF WALKING FRM RM TO RM W/ HELP'
      F13a     = 'CAN S WALK DOWN AT LEAST TWO STEPS'
      F13b1    = 'HELP WALKING DOWN STEPS'
      F13b2    = 'USE MECHANICAL AID WALKING DOWN STEPS'
      F13c     = 'AMT OF DIFF WALKING DOWN STEPS WITH HELP'
      F14a     = 'CAN S TURN FAUCETS ON/OR OFF'
      F14b     = 'HELP TURNING ON/OFF FAUCETS'
      F15a     = 'CAN S GET IN/OUT OF THE BATHTUB'
      F15b1    = 'HELP GETTING IN/OUT OF BATHTUB'
      F15b2    = 'USE MECH AID GETTING IN/OUT BATHTUB'
      F15c     = 'AMT OF DIFF GETTING IN/OUT TUB W/ HELP'
      F16a     = 'CAN S WASH AND DRY WHOLE BODY'
      F16b     = 'HELP WASHING/DRYING BODY'
      F17a     = 'CAN S GET ON/OFF THE TOILET'
      F17b1    = 'HELP GETTING ON/OFF TOILET'
      F17b2    = 'USE MECHANICAL AID GETTING ON/OFF TOILET'
      F17c     = 'AMT DIFF W/ HELP GETTING ON/OFF TOILET'
      F18a     = 'CAN S COMB HAIR'
      F18b     = 'HELP FROM ANOTHER PERSON COMBING HAIR'
      F19a     = 'S REACH AND GET DOWN 5LB OBJ OVER HEAD'
      F19b1    = 'HELP GETTING DOWN 5LB OBJ FROM OVER HEAD'
      F19b2    = 'USE MECHANICAL AID GETTING DOWN 5LB OBJ'
      F19c     = 'AMT OF DIFF W/ HELP GETTING DOWN 5LB OBJ'
      F20a     = 'CAN S BEND DOWN AND PICK UP CLOTHES'
      F20b1    = 'HELP BENDING DOWN/PICKING UP CLOTHES'
      F20b2    = 'USE MECH AID BENDING/PICKING UP CLOTHES'
      F20c     = 'AMT OF DIFF W/ HELP PICKING UP CLOTHES'
      F21a     = 'CAN S OPEN PUSH BUTTON CAR DOORS'
      F21b     = 'HELP OPENING PUSH BUTTON CAR DOORS'
      F22a     = 'CAN S OPEN PREVIOUSLY OPEN JARS'
      F22b1    = 'HELP OPENING PREVIOULY OPEN JARS'
      F22b2    = 'USE MECH AID WHEN OPENING PREV OPEN JARS'
      F22c     = 'AMT OF DIFF W/ HELP OPENING JARS'
      F23a     = 'CAN S USE A PEN/PENCIL TO WRITE W/'
      F23b     = 'HELP FROM ANOTHER WHEN USING PEN/PENCIL'
      F24a     = 'CAN S GET IN/OUT OF A CAR'
      F24b1    = 'S HAVE HELP GETTING IN/OUT OF A CAR'
      F24b2    = 'USE MECH AID WHEN GETTING IN/OUT OF CAR'
      F24c     = 'AMT OF DIFF W/HELP GETTING IN/OUT CAR'
      F25a     = 'CAN S RUN ERRANDS AND SHOP'
      F25b     = 'S HAVE HELP RUNNING ERRANDS/SHOPPING'
      F26a     = 'CAN S DO LIGHT CHORES'
      F26b     = 'S HAVE HELP DOING LIGHT CHORES'
      F27a     = 'CAN S LIFT/CARRY FULL BAG OF GROCERIES'
      F27b     = 'HELP LIFTING/CARRYING FULL BAG OF GROC'
      F28a     = 'CAN S DO HEAVY CHORES'
      F28b     = 'HELP FROM ANOTHER WHEN DOING HVY CHORES'
      SEQNUM9  = 'SAMPLE SEQUENCE NUMBER FOR SECTION G1'
      RECLABG1 = 'RECORD LOCATION FOR SECTION G1'
      G1a      = 'DR EVER SAY S HAD ASTHMA'
      G1b      = 'YEAR S DIAGNOSED WITH ASTHMA'
      G1c      = 'S STAYED OVRNGHT IN HOSP FOR ASTHMA'
      G2a      = 'S DIAG W/ CHRONIC BRONCHITIS/EMPHYSEMA'
      G2b      = 'YR S DIAGNOSED W/ BRONCHITIS/EMPHYSEMA'
      G2c      = 'STAYED OVRNGHT IN HOSP FOR BRONCHITIS'
      G3a      = 'DR EVER SAY S HAD MIGRAINE HEADACHES'
      G3b      = 'YR S DIAGNOSED W/ MIGRAINE HEADACHES'
      G3c      = 'S STAYED OVRNGHT IN HOSP FOR MIGRAINE'
      G4a      = 'DR EVER SAY S HAD PSORIASIS'
      G4b      = 'YR S DIAGNOSED W/ PSORIASIS'
      G4c      = 'S STAYED OVRNGHT IN HOSP FOR PSORIASIS'
      G5a      = 'DR EVER SAY S HAD ULCERS'
      G5b      = 'YR S DIAGNOSED WITH ULCERS'
      G5c      = 'S STAYED OVRNGHT IN HOSP FOR ULCERS'
      G6a      = 'DR EVER SAY S HAD KIDNEY DISORDER'
      G6b      = 'YR S DIAGNOSED W/ KIDNEY DISORDER'
      G6c      = 'S STAYED OVRNGHT IN HOSP FOR KID DIS'
      G7a      = 'DR SAY S HAD URINARY TRACT/KID INFEC'
      G7b      = 'YR S DIAGNOSED W/ UTI/KIDNEY INFECTION'
      G7c      = 'S STAYED OVRNGHT IN HOSP UTI/KID INFEC'
      G8a      = 'DR EVER SAY S HAD TUMOR OF THE COLON'
      G8b      = 'YR S DIAGNOSED W/ TUMOR OF THE COLON'
      G8c      = 'S STAYED OVRNGHT IN HOSP TUMOR OF COLON'
      G9a      = 'DR EVER SAY S HAD CIRRHOSIS OF LIVER'
      G9b      = 'YR S DIAGNOSED W/ CIRRHOSIS OF LIVER'
      G9c      = 'S STAYED OVRNGHT HOSP CIRRHOSIS OF LIVER'
      G10a     = 'DR EVER SAY S HAD PARKINSON''S DISEASE'
      G10b     = 'YR S DIAGNOSED W/ PARKINSON''S DISEASE'
      G10c     = 'S STAYED OVRNGHT IN HOSP PARKINSON'' DIS'
      G11a     = 'DR EVER SAY S HAD MULTIPLE SCLEROSIS'
      G11b     = 'YR S DIAGNOSED W/ MULTIPLE SCLEROSIS'
      G11c     = 'S STAYED OVRNGHT IN HOSP MULT SCLEROSIS'
      G12a     = 'DR EVER SAY S HAD NERVOUS BREAKDOWN'
      G12b     = 'YR S DIAGNOSED W/ NERVOUS BREAKDOWN'
      G12c     = 'S STAYED OVRNGHT IN HOSP NERVOUS BD'
      G13a     = 'DR EVER SAY S HAD DIVERTICULITIS'
      G13b     = 'YR S DIAGNOSED W/ DIVERTICULITIS'
      G13c     = 'S STAYED OBRNGHT IN HOSP DIVERTICULITIS'
      G14a     = 'DR EVER SAY S HAD COLITIS/ENTERITIS'
      G14b     = 'YR S DIAGNOSED W/ COLITIS/ENTERITIS'
      G14c     = 'S STAYED OVRNGHT HOSP COLITIS/ENTERITIS'
      G15a     = 'DR EVER SAY S HAD HEART COND/TROUBLE'
      G15b     = 'YR S DIAGNOSED W/ HEART CONDITION'
      G15c     = 'S STAYED OVRNGHT IN HOSP HEART COND'
      G16a     = 'DR EVER SAY S HAD ANGINA'
      G16b     = 'YR S DIAGNOSED WITH ANGINA'
      G16c     = 'S STAYED OVRNGHT IN HOSP ANGINA'
      G17a     = 'DR EVERY SAY S HAD HEART ATTACK'
      G17b     = 'YR S FIRST HAD HEART ATTACK'
      G17c     = 'S STAYED OVRNGHT IN HOSP FOR HEART ATT'
      G18a     = 'DR EVER SAY S HAD CATARACTS'
      G18b     = 'YR S DIAGNOSED WITH CATARACTS'
      G18c     = 'S STAYED OVRNGHT IN HOSP FOR CATARACTS'
      G19a     = 'DR EVER SAY S HAD GLAUCOMA'
      G19b     = 'YR S DIAGNOSED W/ GLAUCOMA'
      G19c     = 'S STAYED OVRNGHT IN HOSP FOR GLAUCOMA'
      G20a     = 'DR EVER SAY S HAD A DETACHED RETINA'
      G20b     = 'YR S DIAGNOSED W/ A DETACHED RETINA'
      G20c     = 'STAYED OVRNGHT IN HOSP/DETACHED RETINA'
      SEQNUM10 = 'SAMPLE SEQUENCE NUMBER FOR SECTION G2'
      RECLABG2 = 'RECORD LABEL FOR SECTION G2'
      G21a     = 'DR EVER SAY S HAD SMALL STROKE/TIA'
      G21b     = 'YR S FIRST HAD SMALL STROKE/TIA'
      G21c     = 'STAYED OVRNGHT IN HOSP FOR SM STROKE/TIA'
      G22a     = 'DR EVER SAY S HAD A STROKE/CVA'
      G22b     = 'YR S FIRST HAD A STROKE/CVA'
      G22c     = 'S STAYED OVRNGHT IN HOSP FOR STROKE/CVA'
      G23a     = 'DR EVER SAY S HAD PROSTATE TROUBLE'
      G23b     = 'YR S FIRST TOLD OF PROSTATE TROUBLE'
      G23c     = 'S STAYED OVRNGHT IN HOSP/PROSTATE TRBLE'
      G24a     = 'S TAKEN ANTACIDS REG/AT LEAST ONCE WK'
      G25a     = 'NUM YRS S HAS TAKEN ANTACIDS REGULARLY'
      G26a     = 'S STILL TAKE ANTACIDS REGULARLY'
      G27aAMT  = 'NUM OF TIMES PER DAY/WK S USED ANTACIDS'
      G27aPER  = 'TIME PERIOD OF RESPONSE'
      G28      = 'BRAND NAME OF ANTACIDS USED MOST FREQ'
      G24b     = 'S TAKEN ASPIRIN REG/AT LEAST ONCE A WK'
      G25b     = 'NUM YRS S HAS TAKEN ASPIRIN REGULARLY'
      G26b     = 'S STILL TAKE ASPIRIN REGULARLY'
      G27bAMT  = 'NUM OF TIMES PER DAY/WK S USED ASPIRIN'
      G27bPER  = 'TIME PERIOD OF RESPONSE'
      G29      = 'DR EVER PRESCRIBLE DIGITALIS TO S'
      G30      = 'AGE OF S WHEN DIGITALIS FRST PRESCRIBED'
      G31      = 'S TAKING DIGITALIS NOW'
      G32AMT   = 'NUM TIMES PER DAY/WK S TAKES DIGITALIS'
      G32PER   = 'TIME PERIOD OF RESPONSE'
      G33      = 'DR PRESCRIBE MED FOR HYPERTENSION/HBP'
      G34      = 'S CURRENTLY TAKING HYPERTENSION/HBP MED'
      G35a     = 'ALDACTAZIDE HYPTN/HBP MED PRESCRIBED'
      G35b     = 'METHYLDOPA HYPTN/HBP MED PRESCRIBED'
      G35c     = 'CHLOROTHIAZIDE HYPTN/HBP MED PRESCRIBED'
      G35d     = 'DYAZIDE HYPTN/HBP MED PRESCRIBED'
      G35e     = 'HYDROCHLOROTHIAZIDE HYPTN/HBP MED PRES'
      G35f     = 'HYDRODIURIL HYPTN/HBP MED PRESCRIBED'
      G35g     = 'HYGROTON HYPTN/HBP MED PRESCRIBED'
      G35h     = 'PROPANOLOL HYPTN/HBP MED PRESCRIBED'
      G35i     = 'FUROSEMIDE HYPTN/HBP MED PRESCRIBED'
      G35j     = 'LOPRESSOR HYPTN/HBP MED PRESCRIBED'
      G35k     = 'OTHER HYPERTENSION/HBP MED PRESCRIBED'
      G35k1    = '1ST HYPTN MED PRESCRIBED (NOT SPECIFIED)'
      G35k2    = '2ND HYPTN MED PRESCRIBED (NOT SPECIFIED)'
      G35k3    = '3RD HYPTN MED PRESCRIBED (NOT SPECIFIED)'
      G36      = 'DR EVER SAY S HAD DIABETES'
      G37      = 'YR S FIRST DIAGNOSED W/DIABETES'
      G38      = 'S CURRENTLY TAKING MED FOR DIABETES'
      G39a     = 'CHLORPROPAMIDE/DIABETES MED PRESCRIBED'
      G39b     = 'INSULINS/DIABETES MED PRESCRIBED'
      G39c     = 'OTHER DIABETES MED TAKEN NOT MENTIONED'
      G39c1    = '1ST DIABETES MED TAKEN (NOT SPECIFIED)'
      G39c2    = '2ND DIABETES MED TAKEN (NOT SPECIFIED)'
      G40      = 'S BEEN HOSP OVRNGHT FOR DIABETES'
      G41      = 'DR EVER SAY S HAD THYROID DIS/QOITER'
      G42      = 'YR S FIRST DIAGNOSED W/ THYROID DIS'
      G43      = 'S CURRENTLY TAKEN MED FOR THYROID DIS'
      G44a     = 'SYNTHROID/THYROID DIS MED PRESCRIBED'
      G44b     = 'THYROID/THYROID DISEASE MED PRESCRIBED'
      G44c     = 'THYROID STRONG/THYROID DIS MED PRES'
      G44d     = 'OTHER MED PRESCRIBED FOR THYROID DISEASE'
      G44d1    = '1ST THYROID MED TAKEN (NOT SPECIFIED)'
      G44d2    = '2ND THYROID MED TAKEN (NOT SPECIFIED)'
      G45      = 'S BEEN HOSP OVRNGHT FOR THYROID DISEASE'
      G46      = 'DR EVER DIAGNOSE S W/ EPILEPSY'
      G47      = 'YR S FIRST DIAGNOSED W/ EPILEPSY'
      G48      = 'S CURRENTLY TAKEN MED FOR EPILEPSY'
      G49a     = 'DILANTIN/EPILEPSY MED PRESCRIBED'
      G49b     = 'PHENOBARBITAL/EPILEPSY MED PRESCRIBED'
      G49c     = 'OTHER MED PRESCRIBED FOR EPILEPSY'
      G49c1    = '1ST EPILEPSY MED TAKEN (NOT SPECIFIED)'
      G50      = 'S BEEN HOSP OVRNGHT FOR EPILEPSY'
      G51      = 'S CURR TAKE TRANQUILIZERS PRES BY DR'
      G52      = 'S CURR TAKE ANTI-DEPRESSANTS PRES BY DR'
      G53a     = 'S CURR TAKING MULTIVITAMIN PILLS'
      G53b1    = 'NAME OF MULTIVITAMIN S CURR TAKING(#1)'
      G53c1AMT = 'NUM OF MULTIVITAMINS S TAKES (#1)'
      G53c1OFT = 'HOW OFTEN S TAKES MULTIVITAMINS (#1)'
      G53d1    = 'NUM YRS S TOOK VITAMIN #1 ON REG BASIS'
      G53b2    = 'NAME OF MULTVITAMIN S CURR TAKING(#2)'
      G53c2AMT = 'NUM OF MULTIVITAMINS S TAKES (#2)'
      G53c2OFT = 'HOW OFTEN S TAKES MULTIVITAMINS (#2)'
      G53d2    = 'NUM YRS S TOOK VITAMIN #2 ON REG BASIS'
      G54a     = 'S CURRENTLY TAKING VITAMIN C TABLETS'
      G54bAMT  = 'NUM OF VITAMIN C TABLEST S TAKES'
      G54bOFT  = 'HOW OFTEN S TAKES VITAMIN C TABLETS'
      G54c     = 'DOSAGE OF EACH VITAMIN C TABLET'
      G54d     = 'NUM OF YRS S TOOK VITAMIN C ON REG BASIS'
      SEQNUM11 = 'SAMPLE SEQUENCE NUMBER FOR SECTION G3'
      RECLABG3 = 'RECORD LABEL FOR SECTION G3'
      G55a     = 'S CURRENTLY TAKING VITAMIN A CAPSULES'
      G55bAMT  = 'NUM OF VITAMIN A CAPSULES S TAKES'
      G55bOFT  = 'HOW OFTEN S TAKES VITAMIN A CAPSULES'
      G55c     = 'DOSAGE OF EACH VITAMIN A CAPSULE'
      G55d     = 'NUM OF YRS S TOOK VITAMIN A CAPSULES'
      G56a     = 'S CURRENTLY TAKING VITAMIN E CAPSULES'
      G56bAMT  = 'NUM OF VITAMIN E CAPSULES S TAKES'
      G56bOFT  = 'HOW OFTEN S TAKES VITAMIN E CAPSULES'
      G56c     = 'DOSAGE OF EACH VITAMIN E CAPSULE'
      G56d     = 'NUM OF YRS S TOOK VITAMIN E CAPSULES'
      G57a     = 'S CURR TAKING FISH LIVER OILS'
      G57bAMT  = 'NUM OF SPOONFULS/TAB OF FISH LIVER OILS'
      G57bOFT  = 'HOW OFTEN DOES S TAKE FISH LIVER OILS'
      G57d     = 'NUM OF YRS S TOOK FISH LIVER OILS'
      G58a     = 'S CURR TAKING OTHER VITAMINS/MINERALS'
      G58b1    = 'EXACT NAME OF OTHER VIT/MIN TAKEN (#1)'
      G58c1AMT = 'NUM OF PILLS OF OTH VIT/MIN TAKEN (#1)'
      G58c1OFT = 'HOW OFTEN S TAKES OTHER VIT/MIN (#1)'
      G58d1    = 'NUM OF YRS S TOOK OTHER VIT/MIN (#1)'
      G58b2    = 'EXACT NAME OF OTHER VIT/MIN TAKEN (#2)'
      G58c2AMT = 'NUM OF PILLS OF OTH VIT/MIN TAKEN (#2)'
      G58c2OFT = 'HOW OFTEN S TAKES OTHER VIT/MIN (#2)'
      G58d2    = 'NUM OF YRS S TOOK OTHER VIT/MIN (#2)'
      G58b3    = 'EXACT NAME OF OTHER VIT/MIN TAKEN (#3)'
      G58c3AMT = 'NUM OF PILLS OF OTH VIT/MIN TAKEN (#3)'
      G58c3OFT = 'HOW OFTEN S TAKES OTHER VIT/MIN (#3)'
      G58d3    = 'NUM OF YRS S TOOK OTHER VIT/MIN (#3)'
      G58b4    = 'EXACT NAME OF OTHER VIT/MIN TAKEN (#4)'
      G58c4AMT = 'NUM OF PILLS OF OTH VIT/MIN TAKEN (#4)'
      G58c4OFT = 'HOW OFTEN S TAKES OTHER VIT/MIN (#4)'
      G58d4    = 'NUM OF YRS S TOOK OTHER VIT/MIN (#4)'
      G59a     = 'S CURR TAKING OTH NUTRITIONAL SUPP (#1)'
      G59b1    = 'EXACT NAME OF OTH NUTRITIONAL SUPP (#1)'
      G59d1    = 'NUM YRS S TOOK OTH NUTRITIONAL SUPP (#1)'
      G59b2    = 'EXACT NAME OF OTH NUTRITIONAL SUPP (#2)'
      G59d2    = 'NUM YRS S TOOK OTH NUTRITIONAL SUPP (#2)'
      G59b3    = 'EXACT NAME OF OTH NUTRITIONAL SUPP (#3)'
      G59d3    = 'NUM YRS S TOOK OTH NUTRITIONAL SUPP (#3)'
      G60      = 'NUM OF YRS S TOOK ANY MULTIVITAMINS REG'
      G61      = 'HOSP OVRNGHT FOR ANY OTH REASON > 1970'
      G62      = 'STAYED OVRNGHT IN ANY OTH HLTH CARE FAC'
      G28x1    = '1ST MENTIONED ANTACID BRAND NAME'
      G28x2    = '2ND MEMTIONED ANTACID BRAND NAME'
      G28x3    = '3RD MEMTIONED ANTACID BRAND NAME'
      SEQNUM12 = 'SAMPLE SEQUENCE NUMBER FOR SECTION H0'
      RECLABH0 = 'RECORD LABEL FOR SECTION H0'
      H1       = 'CURRENT PRESIDENT OF USA'
      H2       = 'PREVIOUS PRESIDENT OF USA'
      H3a      = 'TODAY''S DATEMONTH'
      H3b      = 'TODAY''S DATEDAY'
      H3c      = 'TODAY''S DATEYEAR'
      SCORE    = 'TOTAL SCOREMENTAL STATUS QUESTIONNAIRE'
      SEQNUM13 = 'SAMPLE SEQUENCE NUMBER FOR SECTION I0'
      RECLABI0 = 'RECORD LABEL FOR SECTION I0'
      I1       = 'S BOTHERED BY THINGS NOT BOTHERSOME BEF'
      I2       = 'S HAVE POOR APPETITE DURING PAST WK'
      I3       = 'S NOT ABLE TO SHAKE BLUES W/ HELP'
      I4       = 'S FELT JUST AS GOOD AS OTHERS'
      I5       = 'S HAD TRBLE KEEPING MIND FOCUSED ON TASK'
      I6       = 'S FELT DEPRESSED'
      I7       = 'S MADE EFFORT AT EVERYTHING ATTEMPTED'
      I8       = 'S FELT HOPEFUL ABOUT THE FUTURE'
      I9       = 'S FELT HIS/HER LIFT HAS BEEN A FAILURE'
      I10      = 'S FELT FEARFUL'
      I11      = 'S HAD RESTLESS SLEEP'
      I12      = 'S FELT HAPPY'
      I13      = 'S TALKED LESS THAN USUAL'
      I14      = 'S FELT LONELY'
      I15      = 'S FELT THAT PEOPLE ARE UNFRIENDLY'
      I16      = 'S ENJOYED LIFE'
      I17      = 'S HAD CRYING SPELLS'
      I18      = 'S FELT SAD'
      I19      = 'S FELT THAT PEOPLE DISLIKED THEM'
      I20      = 'S HAD TROUBLE AT GET "GOING"'
      I21      = 'GENERAL FEELS OF S DURING PAST MONTH'
      I22      = 'S FELT STRAIN/STRESS/PRESSUE PAST MO'
      I23      = 'OPINION OF S REGARDING PERSONAL LIFE'
      I24      = 'S ANXIOUS/WORRIED/UPSET IN PAST MO'
      I25      = 'S BOTHERED W/HEALTH PROBLEMS OR FEARS'
      I26      = 'S FELT EMOTIONALLY STABLE IN PAST MO'
      I27      = 'HOW CONCERNED S HAS BEEN ABOUT HLTH'
      I28      = 'HOW RELAXED/TENSE S HAS BEEN PAST MO'
      I29      = 'DEGREE OF ENERGY S HAD IN PAST MO'
      I30      = 'DEGREE OF DEPRESSION/CHEERFULNESS OF S'
      I31      = 'AMT OF FAMILY MEMBERS S FEELS CLOSE TO'
      SEQNUM14 = 'SAMPLE SEQUENCE NUMBER FOR SECTION J0'
      RECLABJ0 = 'RECORD LABEL FOR SECTION J0'
      J1       = 'BOWEL TRBLE CAUS CONSTIPATION/DIARRHEA'
      J2       = 'HOW OFTEN S HAS A BOWEL MOVEMENT'
      J3       = 'DESCRIPTION OF USUAL BOWEL MOVEMENT'
      J4       = 'S LOSS CONTROL OF BOWEL MOVEMENT'
      J5       = 'S USE A LAXATIVE/STOOL SOFTENER'
      J6       = 'HOW OFTEN S LOSS CONTROL OF URINE'
      J7       = 'HOW OFTEN S LEAKS URINE'
      J8       = 'S LEAK URINE WHEN LAUGH/STRAIN/COUGHING'
      SLFADMBK = 'SELF-ADMINISTRATION BOOKLET COMPLETED BY'
      SEQNUM15 = 'SAMPLE SEQUENCE NUMBER FOR SECTION K0'
      RECLABK0 = 'RECORD LABEL FOR SECTION K0'
      K1       = 'WEIGHT DESCRIPTION OF S AT 12/13 YRS OLD'
      K2       = 'HEIGHT DESCRIPTION OF S AT 12/13 YRS OLD'
      K3       = 'CURR WEIGHT OF S COMPAREDTO SIX MOS AGO'
      K4       = 'CURRENT WEIGHT OF S'
      K5       = 'USUAL WEIGHT OF S AT AGE 25'
      K6       = 'USUAL WEIGHT OF S AT AGE 40'
      K7       = 'USUAL WEIGHT OF S AT AGE 65'
      SEQNUM16 = 'SAMPLE SEQUENCE FOR SECTION L0'
      RECLABL0 = 'RECORD LABEL FOR SECTION L0'
      L1       = 'S SMOKE 100 CIGARETTES IN LIFETIME'
      L2a      = 'S SMOKE CIGARETTES NOW'
      L2b      = 'S STOP SMOKING CIGARETTES IN PAST YEAR'
      L3P1     = 'AGE S BEGAN SMOKING CIG REG (1ST PD)'
      L4P1     = 'S STOP SMKING CIG AT LEAST 1 YR (1ST PD)'
      L5P1     = 'AGE S STOPPED SMKING CIG > 1 YR (1ST PD)'
      L6P1     = 'S EVER START SMOKING CIGARETTES AGAIN'
      L3P2     = 'AGE S BEGAN SMOKING CIG REG (2ND PD)'
      L4P2     = 'S STOP SMKING CIG AT LEAST 1 YR (2ND PD)'
      L5P2     = 'AGE S STOPPED SMKING CIG > 1 YR (2ND PD)'
      L6P2     = 'S EVER START SMKING CIG AGAIN AFT 2ND PD'
      L3P3     = 'AGE S BEGAN SMOKING CIG REG (3RD PD)'
      L4P3     = 'S STOP SMKING CIG AT LEAST 1 YR (3RD PD)'
      L5P3     = 'AGE S STOPPED SMKING CIG > 1 YR (3RD PD)'
      L6P3     = 'S EVER START SMKING CIG AGAIN AFT 3RD PD'
      L7       = 'NUM OF CIGARETTES A DAY S SMOKES NOW'
      L8AMT    = 'NUM OR YRS/MOS SMOKED AMOUNT CURR SMOKED'
      L8PER    = 'TIME PERIOD OF RESPONSE'
      L9       = 'TOT AVG NUM CIG S SMOKES DAILY/ALL YRS'
      L10      = 'S SMOKE FILTERED OR UNFILTERED CIG REG'
      L11      = 'S EVER SMOKE CIGARS OR PIPE'
      L12      = 'S SMOKE CIGARS OR PIPE NOW'
      L13a     = 'S EVER USE SNUFF'
      L13b     = 'S EVER SMOKE CHEWING TOBACCO'
      L14      = 'S EVER BEEN MARRIED TO CIGARETTE SMOKER'
      SEQNUM17 = 'SAMPLE SEQUENCE NUMBER FOR SECTION M0'
      RECLABM0 = 'RECORD LABEL FOR SECTION M0'
      M1       = 'S HAD AT LEAST 12 ALCOHOLIC BEV IN 1 YR'
      M2       = 'THE MAIN REASON S DOES NOT DRINK ALCOH'
      M3       = 'AT LEAST ONE ALCOHOLIC BEV IN PAST YR'
      M4       = 'MAIN REASON S DID NOT DRINK IN PAST YR'
      M5       = 'AGE WHEN S QUIT DRINKING ALCOHOL'
      M6AMT    = 'NUM OF DAYS A WK/MO S DRINKS ALCOHOL'
      M6PER    = 'TIME PERIOD OF RESPONSE'
      M7       = 'NUM DRINKS S HAS WHEN DRINKING ALCOHOL'
      M8       = 'S HAVE AT LEAST ONE DRINK IN PAST YEAR'
      M9       = 'NUM DAYS S HAD 9 OR MORE ALCHOLIC BEV'
      M10      = 'NUM DAYS S HAD 5 OR MORE ALCHOLIC BEV'
      M11      = 'S DRINKS ALCOHOL MORE/LESS THAN YEAR AGO'
      M12      = 'S A LIGHT/MODERATE/HEAVY ALCOHOL DRINKER'
      M13      = 'DRINKING PATTERN OF S AT AGE 25'
      M14      = 'DRINKING PATTERN OF S AT AGE 35'
      M15      = 'DRINKING PATTERN OF S AT AGE 45'
      M16      = 'DRINKING PATTERN OF S AT AGE 55'
      M17      = 'DRINKING PATTERN OF S AT AGE 65'
      M18      = 'DRINKING PATTERN OF S AT AGE 75'
      M19      = 'AGE WHEN S CONSUMED THE MOST ALCOHOL'
      M20      = 'DESCRIPTION OF DRINKING MOST ALCOHOL'
      M21      = 'AGE OF S BEGAN DRINKING AMOUNT'
      M22AMT   = 'NUM YRS/MOS OF TYPICAL DRINKING PATTERN'
      M22PER   = 'TIME PERIOD OF RESPONSE'
      SEQNUM18 = 'SAMPLE SEQUENCE NUMBER FOR SECTION N1'
      RECLABN1 = 'RECORD LABEL FOR SECTION N1'
      N1aAMT   = 'NUM OF TIMES S DRINKS MILK'
      N1aPER   = 'TIME PERIOD OF RESPONSE (N1aAMT)'
      N1bAMT   = 'NUM OF TIMES S DRINKS WHOLE/EVAP MILK'
      N1bPER   = 'TIME PERIOD OF RESPONSE (N1bAMT)'
      N1cAMT   = 'NUM OF TIMES S EATS ANY KIND OF YOGART'
      N1cPER   = 'TIME PERIOD OF RESPONSE (N1cAMT)'
      N1dAMT   = 'NUM OF TIMES S EATS COTTAGE CHEESE'
      N1dPER   = 'TIME PERIOD OF RESPONSE (N1dAMT)'
      N1eAMT   = 'S EAT HARD OR SOFT CHEESE'
      N1ePER   = 'TIME PERIOD OF RESPONSE (N1ePER)'
      N1fAMT   = 'S EAT ICE CREAM'
      N1fPER   = 'TIME PERIOD OF RESPONSE (N1fPER)'
      N1gAMT   = 'S EAT CREAM/HALF AND HALF/SOUR CREAM'
      N1gPER   = 'TIME PERIOD OF RESPONSE (N1gPER)'
      N2       = 'NM TIMES PER WK S EATS MEAT/FISH/POULTRY'
      N3AMT    = 'NUM TIMES S EATS POULTRY'
      N3PER    = 'TIME PERIOD OF RESPONSE (N3AMT)'
      N4       = 'S USUALLY EAT POULTRY W/ OR W/O SKIN'
      N5AMT    = 'NUM OF TIMES S EATS BEEF'
      N5PER    = 'TIME PERIOD OF RESPONSE (N5AMT)'
      N6       = 'S USUALLY EAT REG/LEAN/EX LEAN GRD BEEF'
      N7aAMT   = 'NUM OF TIMES S EATS BEEK/CHICKEN LIVER'
      N7aPER   = 'TIME PERIOD OF RESPONSE (N7aAMT)'
      N7bAMT   = 'NUM S EATS LIVERWURST/LIVER SAUSAGE'
      N7bPER   = 'TIME PERIOD OF RESPONSE (N7bAMT)'
      N7cAMT   = 'NUM S EATS SANDWICH/PACKED MEATS'
      N7cPER   = 'TIME PERIOD OF RESPONSE (N7cAMT)'
      N7dAMT   = 'ROAST PORK/PORK CHOPS/HAM/SPARE RIBS'
      N7dPER   = 'TIME PERIOD OF RESPONSE (N7dAMT)'
      N7eAMT   = 'NUM OF TIMES S EATS BACK OR PORK SAUSAGE'
      N7ePER   = 'TIME PERIOD OF RESPONSE (N7ePER)'
      N8       = 'S USUALLY EAT THE FAT ON BEEF/PORK'
      N9aAMT   = 'HOW OFTEN S EATS SHELLFISH'
      N9aPER   = 'TIME PERIOD OF RESPONSE (N9aAMT)'
      N9bAMT   = 'HOW OFTEN S EATS FRESH/FROZEN FISH'
      N9bPER   = 'TIME PERIOD OF RESPONSE (N9bAMT)'
      N9cAMT   = 'HOW OFTEN S EATS CANNED FISH'
      N9cPER   = 'TIME PERIOD OF RESPONSE (N9cAMT)'
      N10aAMT  = 'HOW OFT S EATS FRIED/DEEPFRIED MEATS'
      N10aPER  = 'TIME PERIOD OF RESPONSE (N10aAMT)'
      N10aCK   = 'CK BOXONLY EATEN CER TIMES PER YR'
      N10bAMT  = 'HOW OFTEN S EATS CHARCOAL GRILLED MEAT'
      N10bPER  = 'TIME PERIOD OF RESPONSE (N10bAMT)'
      N10bCK   = 'CK BOXONLY EATEN CER TIMES PER YR'
      N10cAMT  = 'HOW OFTEN S EATS BROILED MEAT'
      N10cPER  = 'TIME PERIOD OF RESPONSE (N10cAMT)'
      N10cCK   = 'CHECK BOXBROILED MEAT EATEN CERT TIMES'
      N11AMT   = 'NUM OF TIMES S EATS PEAUNUTS/BUTTER'
      N11PER   = 'TIME PERIOD OF RESPONSE (N11AMT)'
      N12AMT   = 'HOW OFTEN S EATS OTHER TYPES OF NUTS'
      N12PER   = 'TIME PERIOD OF RESPONSE (N12AMT)'
      N13      = 'HOW OFTEN S EATS COLD CEREAL'
      N14AMT   = 'NUM OF TIMES S EATS COLD CEREAL'
      N14PER   = 'TIME PERIOD OF RESPONSE (N14AMT)'
      N15      = 'NAME OF COLD CEREAL S EATS MOST OFTEN'
      N16      = 'HOW OFTEN S EATS HOT CEREAL/GRITS'
      N17AMT   = 'NUM OF TIMES S EATS HOT CEREAL/GRITS'
      N17PER   = 'TIME PERIOD OF RESPONSE (N17AMT)'
      N18      = 'NAME OF HOT CEREAL/GRITS S EATS MOST'
      N19aAMT  = 'NUM OF TIMES S EATS ANY KIND OF RICE'
      N19aPER  = 'TIME PERIOD OF RESPONSE (N19aAMT)'
      N19bAMT  = 'NUM OF TIMES S EATS PASTA'
      N19bPER  = 'TIME PERIOD OF RESPONSE (N19bAMT)'
      N20aAMT  = 'NUM OF TIMES S EATS WHOLE GRAIN BREAD'
      N20aPER  = 'TIME PERIOD OF RESPONSE (N20aAMT)'
      N20bAMT  = 'NUM OF TIMES S EATS WHITE BREAD'
      N20bPER  = 'TIME PERIOD OF RESPONSE (N20bAMT)'
      N20cAMT  = 'NUM OF TIMES S EATS QUICK BREADS'
      N20cPER  = 'TIME PERIOD OF RESPONSE (N20cAMT)'
      N20dAMT  = 'NUM OF TIME S EATS QUICK BREADS'
      N20dPER  = 'TIME PERIOD OF RESPONSE (N20dPER)'
      N20eAMT  = 'NUM OF TIMES S EATS CORN TORTILLAS'
      N20ePER  = 'TIME PERIOD OF RESPONSE (N20eAMT)'
      N20fAMT  = 'NUM OF TIMES S EATS BREAKFAST BARS'
      N20fPER  = 'TIME PERIOD OF RESPONSE (N20fAMT)'
      N21AMT   = 'NUM OF SERV S EATS PER WK OF FRUITS/VEG'
      N21PER   = 'TIME PERIOD OF RESPONSE (N21AMT)'
      SEQNUM19 = 'SAMPLE SEQUENCE NUMBER FOR SECTION N2'
      RECLABN2 = 'RECORD LABEL FOR SECTION N2'
      N22aAMT  = 'NUM OF TIMES S EATS FRESH APPLES'
      N22aPER  = 'TIMER PERIOD OF RESPONSE (N22aAMT)'
      N22aCK   = 'CHECK BOXIF APPLES EATEN CERTAIN TIMES'
      N22bAMT  = 'NUM OF TIMES S EATS FRESH PEARS'
      N22bPER  = 'TIME PERIOD OF RESPONSE (N22bAMT)'
      N22bCK   = 'CHECH BOXIF PEARS EATEN CERTAIN TIMES'
      N22cAMT  = 'NUM OF TIMES S EATS BANANAS'
      N22cPER  = 'TIME PERIOD OF RESPONSE (N22cAMT)'
      N22cCK   = 'CHECK BOXBANANAS EATEN CERTAIN TIMES'
      N22dAMT  = 'NUM OF TIMES S EATS FRESH ORANGES/TANG'
      N22dPER  = 'TIME PERIOD OF RESPONSE (N22dPER)'
      N22dCK   = 'CHECK BOXORANGES/TANG EATEN CERT TIMES'
      N22eAMT  = 'NUM OF TIMES S DRINKS ORANGE JUICE'
      N22ePER  = 'TIME PERIOD OF RESPONSE (N22eAMT)'
      N22eCK   = 'CHECK BOXDRINKS ORANGE JUICE CERT TIMES'
      N22fAMT  = 'NUM OF TIMES S DRINKS POWERED OJ SUBST'
      N22fPER  = 'TIME PERIOD OF RESPONSE (N22fAMT)'
      N22fCK   = 'CHECK BOXPOWERED OJ SUBSTITUTES'
      N22gAMT  = 'NUM OF TIMES S EATS FRESH GRAPEFRUIT'
      N22gPER  = 'TIME PERIOD OF RESPONSE (N22gAMT)'
      N22gCK   = 'CHECK BOXGRAPEFRUIT EATEN CERTAIN TIMES'
      N22hAMT  = 'NUM OF TIMES S DRINKS GRAPEFRUIT JUICE'
      N22hPER  = 'TIME PERIOD OF RESPONSE (N22hAMT)'
      N22hCK   = 'CHECK BOXDRINKS GRAPEFRUIT CERT TIMES'
      N22iAMT  = 'NUM TIMES S EATS VIT C ENRICH FRUIT DRKS'
      N22iPER  = 'TIME PERIOD OF RESPONSE (N22iAMT)'
      N22iCK   = 'CHECK BOXDRINKS VIT C ENRICH FRUIT DRKS'
      N22jAMT  = 'NUM TIMES S EATS FRESH/CANNED PEACH/NECT'
      N22jPER  = 'TIME PERIOD OF RESPONSE (N22jAMT)'
      N22jCK   = 'CHECK BOXFRESH/CANNED PEACH/NECT CERT'
      N22kAMT  = 'NUM OF TIMES S EATS CANTALOUPE'
      N22kPER  = 'TIME PERIOD OF RESPONSE (N22kAMT)'
      N22kCK   = 'CHECK BOXCANTALOUPE EATEN CERTAIN TIMES'
      N22lAMT  = 'NUM OF TIMES S EATS WATERMELON'
      N22lPER  = 'TIME PERIOD OF RESPONSE (N22lAMT)'
      N22lCK   = 'CHECK BOXWATERMELON EATEN CERTAIN TIMES'
      N22mAMT  = 'NUM OF TIMES S EATS FRESH PLUMS'
      N22mPER  = 'TIME PERIOD OF RESPONSE (N22mAMT)'
      N22mCK   = 'CHECK BOXFRESH PLUMS EATEN CERT TIMES'
      N22nAMT  = 'NUM TIMES S EATS FRESH/FROZ STRAWBERRIES'
      N22nPER  = 'TIME PERIOD OF RESPONSE (N22nAMT)'
      N22nCK   = 'CHECK BOXFRESH/FROZ STRAWBERRIES EATEN'
      N22oAMT  = 'NUM TIMES S EATS APRICOTS INCLUD NECTAR'
      N22oPER  = 'TIME PERIOD OF RESPONSE (N22oAMT)'
      N22oCK   = 'CHECK BOXAPRICOTS INCLUD NECTAR EATEN'
      N22pAMT  = 'NUM TIMES COOKED/DRIED PRUNES OR JUICE'
      N22pPER  = 'TIME PERIOD OF RESPONSE (N22pAMT)'
      N22pCK   = 'CHECK BOXPRUNES/JUICE EATEN CERT TIMES'
      N22qAMT  = 'NUM OF TIMES S EATS CANNED FRUIT'
      N22qPER  = 'TIME PERIOD OF RESPONSE (N22qAMT)'
      N22qCK   = 'CHECK BOXCANNED FRUIT EATEN CERT TIMES'
      N23AMT   = 'NUM OF TIMES S EATS RAW VEGATABLES'
      N23PER   = 'TIME PERIOD OF RESPONSE (N23AMT)'
      N24AMT   = 'NUM TIMES S USES ANY KIND OF SALAD DRESS'
      N24PER   = 'TIME PERIOD OF RESPONSE (N24AMT)'
      N25      = 'S USE OIL/VINEGAR ALONE AS DRESSING'
      N26aAMT  = 'NUM OF TIMES S EATS GREEN PEAS'
      N26aPER  = 'TIME PERIOD OF RESPONSE (N26aAMT)'
      N26aCK   = 'CHECK BOXGREEN PEAS EATEN CERTAIN TIMES'
      N26bAMT  = 'NUM TIMES S EATS GREEN/STRING/LIMA BEANS'
      N26bPER  = 'TIME PERIOD OF RESPONSE (N26bAMT)'
      N26bCK   = 'CHECK BOXGREEN/STRING/LIMA BEANS'
      N26cAMT  = 'NUM OF TIMES S EATS OTHER KIND OF BEANS'
      N26cPER  = 'TIME PERIOD OF RESPONSE (N26cAMT)'
      N26cCK   = 'CHECK BOXOTHER KIND OF BEANS CERT TIMES'
      N26dAMT  = 'NUM OF TIMES S EATS OKRA'
      N26dPER  = 'TIME PERIOD OF RESPONSE (N26dAMT)'
      N26dCK   = 'CHECK BOXOKRA EATEN AT CERTAIN TIMES'
      N26eAMT  = 'NUM OF TIMES S EATS BROCCOLI'
      N26ePER  = 'TIME PERIOD OF RESPONSE (N26eAMT)'
      N26eCK   = 'CHECK BOXBROCCOLI EATEN CERT TIMES'
      N26fAMT  = 'NUM OF TIMES S EATS CAULIFLOWER'
      N26fPER  = 'TIME PERIOD OF RESPONSE (N26fAMT)'
      N26fCK   = 'CHECK BOXCAULIFLOWER EATEN CERT TIMES'
      N26gAMT  = 'NUM OF TIMES S EATS BRUSSEL SPROUTS'
      N26gPER  = 'TIME PERIOD OF RESPONSE (N26gAMT)'
      N26gCK   = 'CHECK BOXBRUSSEL SPROUTS EATEN'
      N26hAMT  = 'NUM OF TIMES S EATS CORN'
      N26hPER  = 'TIME PERIOD OF RESPONSE (N26hAMT)'
      N26hCK   = 'CHECK BOXCORN EATEN AT CERTAIN TIMES'
      N26iAMT  = 'NUM OF TIMES S EATS SUMMER SQUASH'
      N26iPER  = 'TIME PERIOD OF RESPONSE (N26iAMT)'
      N26iCK   = 'CHECK BOXSUMMER SQUASH EATEN CERT TIMES'
      SEQNUM20 = 'SAMPLE SEQUENCE NUMBER FOR SECTION N3'
      RECLABN3 = 'RECORD LABEL FOR SECTION N3'
      N26jAMT  = 'NUM OF TIMES S EATS WINTER SQUASH'
      N26jPER  = 'TIME PERIOD OF RESPONSE (N26jAMT)'
      N26jCK   = 'CHECK BOXWINTER SQUASH CERTAIN TIMES'
      N26kAMT  = 'NUM OF TIMES S EATS RAW/COOKED CARROTS'
      N26kPER  = 'TIME PERIOD OF RESPONSE (N26kPER)'
      N26kCK   = 'CHECK BOXRAW/COOKED CARROTS CERT TIMES'
      N26lAMT  = 'NUM OF TIMES S EATS CUCUMBER'
      N26lPER  = 'TIME PERIOD OF RESPONSE (N26lPER)'
      N26lCK   = 'CHECK BOXCUCUMBER EATEN CERTAIN TIMES'
      N26mAMT  = 'NUM OF TIMES S EATS SWEET RED PEPPERS'
      N26mPER  = 'TIME PERIOD OF RESPONSE (N26aAMT)'
      N26mCK   = 'CHECK BOXSWEET RED PEPPERS CERT TIMES'
      N26nAMT  = 'NUM TIMES S EATS SWEET GREEN PEPPERS'
      N26nPER  = 'TIME PERIOD OF RESPONSE (N26bAMT)'
      N26nCK   = 'CHECK BOXSWEET GREEN PEPPERS CERT TIMES'
      N26oAMT  = 'NUM OF TIMES S EATS ICEBERG/HEAD LETTUCE'
      N26oPER  = 'TIME PERIOD OF RESPONSE (N26cAMT)'
      N26oCK   = 'CHECK BOXICEBERG/HD LETTUCE CERT TIMES'
      N26pAMT  = 'NUM OF TIMES S EATS LEAF LETUCE IN SALAD'
      N26pPER  = 'TIME PERIOD OF RESPONSE (N26dAMT)'
      N26pCK   = 'CHECK BOXLEAF LETTUCE EATEN CERT TIMES'
      N26qAMT  = 'NUM OF TIMES S EATS CABBAGE'
      N26qPER  = 'TIME PERIOD OF RESPONSE (N26eAMT)'
      N26qCK   = 'CHECK BOXCABBAGE EATEN CERT TIMES'
      N26rAMT  = 'NUM OF TIMES S EATS RAW/COOKED GREENS'
      N26rPER  = 'TIME PERIOD OF RESPONSE (N26fAMT)'
      N26rCK   = 'CHECK BOXRAW/COOKED GREENS EATEN'
      N26sAMT  = 'NUM S EATS SWEET POTATOES/YELLOW YAMS'
      N26sPER  = 'TIME PERIOD OF RESPONSE (N26gAMT)'
      N26sCK   = 'CHECK BOXSWEET POTATOES/YELLOW YAMS'
      N26tAMT  = 'NUM S EATS INSTANT/DEHYDRATED POTATOES'
      N26tPER  = 'TIME PERIOD OF RESPONSE (N26hAMT)'
      N26tCK   = 'CHECK BOXINSTANT/DEHYDRATED POTATOES'
      N26uAMT  = 'NUM OF TIMES S EATS WHITE POTATOES'
      N26uPER  = 'TIME PERIOD OF RESPONSE (N26iAMT)'
      N26uCK   = 'CHECK BXWHITE POTATOES EATEN CERT TIMES'
      N26vAMT  = 'NUM S EATS FRIED/HASH BROWN POTATOES'
      N26vPER  = 'TIME PERIOD OF RESPONSE (N26jAMT)'
      N26vCK   = 'CHECK BOXFRIED/HASH BROWN POTATOES'
      N26wAMT  = 'NUM OF TIMES S EATS FRESH TOMATOES'
      N26wPER  = 'TIME PERIOD OF RESPONSE (N26kPER)'
      N26wCK   = 'CHECK BOXFRESH TOMATOES CERT TIMES'
      N26xAMT  = 'NUM S EATS OTHER FORMS OF TOMATOES'
      N26xPER  = 'TIME PERIOD OF RESPONSE (N26lPER)'
      N26xCK   = 'CHECK BOXOTHER FORMS OF TOMATOES'
      N26yAMT  = 'NUM OF TIMES S EATS VEGETABLE SOUP'
      N26yPER  = 'TIME PERIOD OF RESPONSE (N26lPER)'
      N26yCK   = 'CHECK BXVEGETABLE SOUP EATEN CERT TIMES'
      N27AMT   = 'NUM S EATS ALL KINDS OF SWEETS/DESSERTS'
      N27PER   = 'TIME PERIOD OF RESPONSE (N27AMT)'
      N28AMT   = 'HOW OFTEN S EATS CHOCOLATE IN ANY FORM'
      N28PER   = 'TIME PERIOD OF RESPONSE (N28AMT)'
      N29AMT   = 'HOW OFTEN S EATS SALTY SNACKS'
      N29PER   = 'TIME PERIOD OF RESPONSE (N29AMT)'
      N30      = 'ON AVG, NUM OF EGGS S CONSUMES WEEKLY'
      N31AMT   = 'HOW OFTEN S EATS COMMERCIALLY PREP FOOD'
      N31PER   = 'TIME PERIOD OF RESPONSE (N31AMT)'
      N32AMT   = 'ON AVG, HOW OFTEN DOES S EAT FAST FOOD'
      N32PER   = 'TIME PERIOD OF RESPONSE (N32AMT)'
      N33AMT   = 'HOW OFT S EATS DISHES W/MEET AND CHEESE'
      N33PER   = 'TIME PERIOD OF RESPONSE (N33AMT)'
      N34aAMT  = 'HOW OFT DOES S USE KETCHUP/TOMATO SAUCE'
      N34aPER  = 'TIME PERIOD OF RESPONSE (N32aAMT)'
      N34bAMT  = 'HOW OFT S USE CHILI POWDER/HOT RED PEPP'
      N34bPER  = 'TIME PERIOD OF RESPONSE (N34bAMT)'
      N34cAMT  = 'HOW OFTEN DOES S USE SOY SAUCE'
      N34cPER  = 'TIME PERIOD OF RESPONSE (N34cAMT)'
      N34dAMT  = 'HOW OFTEN DOES S USE PICLEDS/OLIVES'
      N34dPER  = 'TIME PERIOD OF RESPONSE (N34dAMT)'
      N35AMT   = 'HOW OFT DOES S USE CHEESE/WHITE SAUCE'
      N35PER   = 'TIME PERIOD OF RESPONSE (N35AMT)'
      N36AMT   = 'NUM MEALS PER DAY S EATS W/ BUTTER/MARG'
      N36PER   = 'TIME PERIOD OF RESPONSE (N36AMT)'
      N37      = 'WHEN S USES BUTTER/MARG, WHAT TYPE IS IT'
      N38aAMT  = 'HOW OFTEN DOES S EAT COOKED/BROILED VEG'
      N38aPER  = 'TIME PERIOD OF RESPONSE (N38aAMT)'
      N38bAMT  = 'HOW OFT DOES S EAT STEAMED/BLANCHED VEG'
      N38bPER  = 'TIME PERIOD OF RESPONSE (N38bAMT)'
      N38cAMT  = 'HOW OFT DOES S EAT COOKED/BROILED VEG'
      N38cPER  = 'TIME PERIOD OF RESPONSE (N38cAMT)'
      N38dAMT  = 'HOW OFT S EATS STIR-FRIED/SAUTEED VEG'
      N38dPER  = 'TIME PERIOD OF RESPONSE (N38dAMT)'
      N38eAMT  = 'HOW OFT S EATS VEG BAKED STEW/CASS/SOUP'
      N38ePER  = 'TIME PERIOD OF RESPONSE (N38eAMT)'
      N38fAMT  = 'HOW OFTEN DOES S EAT VEG TAHT ARE FRIED'
      N38fPER  = 'TIME PERIOD OF RESPONSE (N38fAMT)'
      SEQNUM21 = 'SAMPLE SEQUENCE NUMBER FOR SECTION N4'
      RECLABN4 = 'RECORD LABEL FOR SECTION N4'
      N39aAMT  = 'NUM OF TIMES S EATS CANNED VEG'
      N39aPER  = 'TIME PERIOD OF RESPONSE (N39aAMT)'
      N39bAMT  = 'NUM OF TIMES S EATS FRESH/FROZEN VEG'
      N39bPER  = 'TIME PERIOD OF RESPONSE (N39bAMT)'
      N40      = 'TYPICAL OIL/FAT S USES WHEN FRYING FOOD'
      N41aAMT  = 'NUM GLASSES/CANS OF SODA S DRINKS (AVG)'
      N41aPER  = 'TIME PERIOD OF RESPONSE (N41aAMT)'
      N41aCK   = 'CHECK BOXDRINKS SODA AT CERTAIN TIMES'
      N41bAMT  = 'NUM OF CAN/BOTTLES OF BEER S DRINKS'
      N41bPER  = 'TIME PERIOD OF RESPONSE (N41bAMT)'
      N41bCK   = 'CHECH BOXDRINKS BEER AT CERTAIN TIMES'
      N41cAMT  = 'NUM OF GLASSES OF WINE S DRINKS'
      N41cPER  = 'TIME PERIOD OF RESPONSE (N41cAMT)'
      N41cCK   = 'CHECK BOXDRINKS WINE AT CERTAIN TIMES'
      N41dAMT  = 'NUM OF SHOTS/DRINKS OF HARD LIQ S DRINKS'
      N41dPER  = 'TIME PERIOD OF RESPONSE (N41dAMT)'
      N41dCK   = 'CHCK BXSHOTS/DRINKS HARD LIQ CERT TIMES'
      N41eAMT  = 'NUM GLASSES/CANS OF DIET SODA S DRINKS'
      N41ePER  = 'TIME PERIOD OF RESPONSE (N41eAMT)'
      N41eCK   = 'CHCK BXGLASS/CANS DIET SODA CERT TIMES'
      N42AMT   = 'HOW OFTEN S USES ARTIFICIALLY SWEETENERS'
      N42PER   = 'TIME PERIOD OF RESPONSE (N42AMT)'
      N43      = 'DOES S DRINK COFFEE'
      N44aAMT  = 'NUM CUPS INSTANT DECAF COFFEE S DRINKS'
      N44aPER  = 'TIME PERIOD OF RESPONSE (N44aAMT)'
      N44bAMT  = 'NUM CUPS OF OTHER INST COFFEE S DRINKS'
      N44bPER  = 'TIME PERIOD OF RESPONSE (N44bAMT)'
      N44cAMT  = 'NUM CUPS GROUND DECAF COFFEE S DRINKS'
      N44cPER  = 'TIME PERIOD OF RESPONSE (N44cAMT)'
      N44dAMT  = 'NUM CUPS OTHER GROUND COFFEE S DRINKS'
      N44dPER  = 'TIME PERIOD OF RESPONSE (N44dAMT)'
      N44eAMT  = 'NUM OF CUPS OF HERB TEA S DRINKS'
      N44ePER  = 'TIME PERIOD OF RESPONSE (N44eAMT)'
      N44fAMT  = 'NUM OF CUPS OF REGULAR TEA S DRINKS'
      N44fPER  = 'TIME PERIOD OF RESPONSE (N44fAMT)'
      N45      = 'MILK PRODUCTS USED BY S FOR COFFEE/TEA'
      N46      = 'S ON ANY SPECIAL TYPE OF DIET'
      N47      = 'SPECIAL DIET OF S PRESCRIBED BY DR'
      N48a     = 'SPECIAL DIET OF S B/C OF HIGH BLD PRESS'
      N48b     = 'SPECIAL DIET OF S B/C OF DIABETES'
      N48c     = 'SPECIAL DIET OF S USED FOR WEIGHT LOSS'
      N48d     = 'SPECIAL DIET OF S B/C OF FOOD ALLERGIES'
      N48e     = 'SPECIAL DIET OF S B/C OF HEART DISEASE'
      N48f     = 'SPECIAL DIET OF S-NOT MENTIONED'
      N48f1    = 'SPECIAL DIET OF S-1ST REASON'
      N48f2    = 'SPEICAL DIET OF S-2ND REASON'
      N49a     = 'S ON A LOW OR NO SALT DIET'
      N49b     = 'S ON A LOW SUGAR DIET'
      N49c     = 'S ON A LOW CALORIE DIET'
      N49d     = 'S ON A LOW FAT DIET'
      N49e     = 'S ONE ANOTHER DIET NOT MENTIONED'
      N49e1    = 'NAME OF 1ST DIET S IS ON (NOT MENTIONED)'
      N49e2    = 'NAME OF 2ND DIET S IS ON (NOT MENTIONED)'
      N50      = 'S HAVE TROUBLE CHEWING/BITTING FOOD'
      N51a     = 'S HAVE PROBLEMS GETTING TO THE STORE'
      N51b     = 'S HAVE PROBLEMS PURCHASING GROCERIES'
      N51c     = 'S HAVE PROBLEMS STORING FOOD'
      N52      = 'S EAT MAIN MEAL W/ OTHER OR BY SELF'
      N53      = 'HOW OFTEN DOES S EAT BREAKFAST'
      N54      = 'NUM OF BETWEEN MEAL SNACKS S EATS PER DY'
      N55      = 'NUM OF MEALS S USUALLY EATS A DAY'
      N56      = 'S USE SALT AT TABLE OR WHEN COOKING'
      N57      = 'S USE IODIZED SALT AT TABLE/WHEN COOKING'
      N58AMT   = 'HOW FREQ S USES SALT AT THE TABLE'
      N58PER   = 'TIME PERIOD OF RESPONSE (N58AMT)'
      SEQNUM22 = 'SAMPLE SEQUENCE NUMBER FOR SECTION OH'
      RECLABOH = 'RECORD LABEL FOR SECTION OH'
      OH1      = 'HOW OFTEN S HAS TRBLE FALLING ASLEEP'
      OH2      = 'S HAVE TRBLE W/ WAKING UP DURING NIGHT'
      OH3      = 'TRBLE WAKING UP AND GOIN BACK TO SLEEP'
      OH4      = 'HOW OFT S HAS TO TAKE A NAP DURING DAY'
      OH5      = 'CURR SLEEPING PROB COMPARED TO YR AGO'
      OH6AMT   = 'NUM TIMES S TOOK SEDATIVE/SLEEPING PILL'
      OH6PER   = 'TIME PERIOD OF RESPONSE'
      OH7      = 'AVERAGE HOURS OF SLEEP S GETS PER NIGHT'
      SEQNUM23 = 'SAMPLE SEQUENCE NUMBER FOR SECTION P0'
      RECLABP0 = 'RECORD LABEL FOR SECTION P0'
      P1       = 'S TOO TIRED TO DO THINGS'
      P2       = 'S HAVE STRONG NEED TO EXCEL'
      P3       = 'S USUALLY FEELS PRESSED FOR TIME'
      P4       = 'S IS HARD DRIVING AND COMPETITIVE'
      P5       = 'S EATS TOO QUICKLY'
      P6       = 'S GETS UPSET WHEN STANDING IN LINE'
      P7       = 'S LIKES TO HAVE PEOPLE AROUND'
      P8       = 'S AS BEING CHEERFUL/HIGH SPIRITED PERSON'
      P9       = 'DOESN''T GET PLEASURE CHATTING W/ OTHERS'
      P10      = 'S IS A VERY ACTIVE PERSON'
      P11      = 'PREFER JOBS NOT BEING BOTHERED BY OTHERS'
      P12      = 'STRONG EMOTIONAL ATTACHMENTS TO FRIENDS'
      P13      = 'S DOMINANT/FORCEFUL/ASSERTIVE PERSON'
      P14      = 'S DONE THINGS FOR KICKS/THRILLS'
      P15      = 'S DOES NOT LIKE WASTING TIME DAYDREAMING'
      P16      = 'POETRY HAS LITTLE EFFECT ON S'
      P17      = 'S OFTEN TRIES NEW/FOREIGN FOODS'
      P18      = 'S IS PRETTY SET IN WAYS'
      P19      = 'S ENJOYS SOLVING PROBLEMS/PUZZLES'
      P20      = 'S HAS VERY ACTIVE IMAGINATION'
      SEQNUM24 = 'SAMPLE SEQUENCE NUMBER FOR SECTION Q0'
      RECLABQ0 = 'RECORD LABEL FOR SECTION Q0'
      BOX_N    = 'S ABLE TO WALK'
      Q1       = 'GET EXER WHEN DOING RECREATIONAL ACT'
      Q2       = 'S USUALLY PHYSICALLY ACTIVE'
      Q3       = 'S FOLLOW A REG PHYSICAL EXERCISE PROGRAM'
      Q4       = 'S JOG REG AS PART OF EXERCISE PROGRAM'
      Q5       = 'NUM OF MILES S JOGS A WEEK ON AVG'
      SEQNUM25 = 'SAMPLE SEQUENCE NUMBER FOR SECTION R0'
      RECLABR0 = 'RECORD LABEL FOR SECTION R0'
      R1       = 'S LOST ALL TEETH FROM UPPER JAW'
      R2       = 'S HAVE PLATE/FALSE TEETH FOR UPPER JAW'
      R3       = 'TIME S HAD ANY TEETH IN UPPER JAW'
      R4       = 'S LOST ALL TEETH FROM LOWER JAW'
      R5       = 'S HAVE PLATE/FALSE TEETH FOR LOWER JAW'
      R6       = 'TIME S HAD ANY TEETH IN LOWER JAW'
      R7       = 'S NEED NEW DENTAL PLATE OR REFITTING'
      R8       = 'S USE FLUORIDATED TOOTHPASTE'
      SEQNUM26 = 'SAMPLE SEQUENCE NUMBER FOR SECTION S0'
      RECLABS0 = 'RECORD LABEL FOR SECTION S0'
      S1       = 'S EVER HAD RINGING IN HEARS IN PAST YRS'
      S2       = 'HOW OFTEN S NOTICED RINGING IN EARS'
      S3       = 'S BOTHERED BY RINGING EARS'
      S4       = 'S EVER USE A HEARING AID'
      S5       = 'WHICH EARS DID S HAVE HEARING AIDS FOR'
      S6       = 'S USING HEARING AID NOW'
      S7       = 'HEARING AID IMPROVE THE HEARING OF S'
      S8       = 'DIFF HEARING WHEN CARRYING NORM CONV'
      S9a      = 'W/O HEARING AID, S HEAR WHISPERING'
      S9b      = 'W/O HEARING AID, S HEAR NORMAL VOICE'
      S9c      = 'W/O HEARING AID, S HEAR SHOUTING'
      S9d      = 'W/O HEARING AID, S HEAR LOUD SPEAKING'
      S10a     = 'W/O HRG AID S DETERMINE SPCH FM NOISES'
      S10b     = 'W/O HRG AID, S TELL DIFFERENT NOISES'
      S10c     = 'S HEAR LOUD NOICES W/O HEARING AID'
      SEQNUM27 = 'SAMPLE SEQUENCE NUMBER FOR SECTION T0'
      RECLABT0 = 'RECORD LABEL FOR SECTION T0'
      T1       = 'S TOTALLY BLING IN EITHER EYE'
      T2       = 'EYE THAT S IS BLIND IN'
      T3       = 'S WEAR EYEGLASSES/CONTACT LENSES'
      T4       = 'AGE WHEN S FRST WORE GLASSES/CONTACTS'
      T5       = 'S USE MAGNIFYING GLASS FOR READING'
      T6       = 'HOW OFTEN S USES MAGINFYING GLASS'
      T7a      = 'SEE FRND ACROSS ST-WEARING GLASS/CON'
      T7b      = 'SEE FRND ACROSS RM-WEARING GLASS/CON'
      T7c      = 'SEE FRND AT ARM LENGTH-GLASSES/CON'
      T8a      = 'RECOG ORD NEWSPAPER PRINT-GLASS/CON'
      T8b      = 'SEE LETTERS IN HEADLINE-GLASSES/CON'
      T8c      = 'TELL IF LIGHT IS ON/OFF-GLASSES/CON'
      SEQNUM28 = 'SAMPLE SEQUENCE NUMBER FOR SECTION U0'
      RECLABU0 = 'RECORD LABEL FOR SECTION U0'
      U1a      = 'ETHNIC BACKGROUND OF S (#1)'
      U1b      = 'ETHNIC BACKGROUND OF S (#2)'
      U1c      = 'ETHNIC BACKGROUND OF S (#3)'
      U1d      = 'ETHNIC BACKGROUND OF S (#4)'
      U2       = 'RACE/ETHNICITY OF S'
      U3       = 'MARITAL STATUS OF S'
      U4       = 'S LIVED MOST OF LIFE IN URBAN/RURAL AREA'
      U5       = 'S LIVE ON A FARM'
      U6       = 'PRIMARY SOURCE OF DRINK WATER USED BY S'
      U8       = 'S EVER WORKED FOR MORE THAN ONE YEAR'
      U9_U10   = 'TYPE OF WORK S DID FOR LONGEST PD OF TM'
      U11      = 'NUM OF YRS S WORKED LONGEST JOB'
      U12_U13  = 'NAME OF EMPLOYER S WORKED FOR LONGEST'
      U14      = 'S STILL FOR EMPLOYER AND HOLD SAME JOB'
      U15      = 'DID S STOP WORKING/RETIRE FROM USUAL JOB'
      U16      = 'YR S QUIT WORKING/RETIRED FM USUAL JOB'
      U17      = 'S STOP WORKING FOR HLTH RELATED REASONS'
      U18      = 'S EVER RECIEVE SOCIAL SECURITY BENEFITS'
      U19      = 'S STILL RECIEVING SOC SECURITY BENEFITS'
      U20      = 'S STOP WORKING USUAL JOB VOLUNTARILY'
      U21      = 'CURRENT STATUS OF S OVER PAST 3 MOS'
      U22      = 'S WORKED AT ALL IN PAST THREE MONTHS'
      U23_U24  = 'CURRENT OCCUPATION OF S'
      U25_U26  = 'NAME OF CURRENT EMPLOYER OF S'
      U27      = 'NUM OF HRS PER WK S WORKS'
      U28      = 'S WORKED W/HVY EXP TO DUST/FUMES/VAPORS'
      U29      = 'HAD HOBBY W/ EXP TO DUST/FUMES/VAPORS'
      U30      = 'TOTAL COMBINED FAM INCOME FOR PAST YR'
      U31      = 'PERSONAL INCOME OF S FOR PAST YEAR'
      U32a     = 'S GETS PERSONAL INCOME FROM WAGES/SALARY'
      U32b     = 'PERSONAL INCOME FM SOC SEC/RAILROAD RET'
      U32c     = 'PERSONAL INC FROM PUBLIC ASSISTANCE'
      U32d     = 'PERSONAL INC FM UNEMPLOYMENT/WKERS COMP'
      U32e     = 'PERSONAL INC FM G''VT EMP/ PRIV PENSIONS'
      U32f     = 'PERSONAL INC FROM NET INCOME FROM A FARM'
      U32g     = 'PERSONAL INCOME FROM VETERAN''S PAYMENTS'
      U32h     = 'PERSONAL INC FM ALIMONY/CHILD SUPPORT'
      U32i     = 'PERSONAL INC FM CONTIBUTIONS NOT BY HHM'
      U32j     = 'PERSONAL INCOME FROM INVESTMENTS'
      U32k     = 'PERSONAL INCOME FROM ANY OTHER SOURCE'
      U32k1    = 'PERSONAL INCOME FROM 2ND OTHER SOURCE'
      INTENDHR = 'TIME INTERVIEW ENDEDHOUR'
      INTENDMM = 'TIME INTERVIEW ENDEDMINUTES'
      INTVENDD = 'TIME INTV ENDEDAM/PM DESIGNATOR'
      PRIMRESP = 'PRIMARY RESPONDENT'
      RELPROX  = 'RELATIONSHIP TO PROXY/ASSISTANT TO S'
      REASPROX = 'REASON WHY PROXY/ASSISTANCE WAS NEEDED'
      INFOSAT  = 'INFO PROVIDED BY S/PROXY AS SATISFACTORY'
      AWARELVL = 'AWARENESS LEVEL OF S DURING INTERVIEW'
      SEQNUM29 = 'SAMPLE SEQUENCE NUMBER FOR SECTION V0'
      RECLABV0 = 'RECORD LABEL FOR SECTION V0'
      VA1      = 'RELATION OF S TO PROXY'
      VA3      = 'DID PROXY LIVE W/ S PRIOR TO DEATH'
      VA4      = 'HOW FREQ PROXY SAW/TALKED TO S YR < DTH'
      VG26a    = 'DR EVER SAY S HAD ARTHRITIS'
      VG26b    = 'YR S FIRST DIAGNOSED W/ ARTHRITIS'
      VG26c    = 'S STAYED OVRGHT IN HOSP FOR ARTHRITIS'
      VG28a    = 'S HAVE AN OOPHORECTOMY/OVARIES REMOVED'
      VG28b    = 'YR S HAD OOPHORECTOMY/OVARIES REMOVED'
      VG29a    = 'S HAVE HYSTERECTOMY/WOMB REMOVED'
      VG29b    = 'YR S HAD HYSTERECTOMY/WOMB REMOVED'
      VU15     = 'S STILL WK THREE MONTHS < DEATH'
      VU16     = 'STOPPED WORKING/RETIRED AT TIME OF DTH'
      VU17     = 'YR S STOPPED WORKING/RETIRED BEF DTH'
      VU18     = 'S STOP WORKING BEF DTH B/C HLTH REASONS'
      VU19     = 'REC DISABILITY BEN FROM SOC SEC AT DEATH'
      VU20     = 'S STOP WRKING AT VOLUNARILY BEFORE DEATH'
      VU21     = 'WHAT S DID MOST 3 MOS BEFORE DEATH'
      VU22     = 'S WORKING THREE MOS BEFORE DEATH'
      VU23_24  = 'OCCUPATION OF S HELD BEFORE DEATH'
      VU25_26  = 'EMPLOYER''S NAME OF S PRIOR TO DEATH'
      VV1      = 'S CONFINED TO HM/INSTITUTION 4WKS < DTH'
      VV2      = 'S CONFINED B/C OF ILLNESS/DIS 72HRS <DTH'
      VV3a     = 'DID S DIE AT HOME?'
      VV3b     = 'DID S DIE AT SOMEONE ELSE''S HOME?'
      VV3c     = 'DID S DIE AT WORK?'
      VV3d     = 'DID S DIE ON THE STREET?'
      VV3e     = 'DID S DIE IN AN AUTOMOBILE?'
      VV3f     = 'DID S DIE IN TRANSIT TO THE HOSP?'
      VV3g     = 'S DIE IN EMERGENCY RM/OUTPATIENT FAC?'
      VV3h     = 'DID S DIE IN HOSPITAL?'
      VV3i     = 'DID S DIE IN AN NURSING HOME?'
      VV3j     = 'S DIE IN SOME OTHER PLACE NOT MENTIONED'
      VV4      = 'CAN PROXY TELL CIRCUMSTANCES OF S''S DTH'
      VV5      = 'CAUSE OF DEATH OF S'
      VV6      = 'ANYONE PRESENT AT TIME OF S DEATH'
      VV7a     = 'SPOUSE PRESENT AT S''S DEATH'
      VV7b     = 'CHILDREN PRESENT AT S''S DEATH'
      VV7c     = 'SIBLING PRESENT AT S''S DEATH'
      VV7d     = 'OTHER RELATIVE PRESENT AT S''S DEATH'
      VV7e     = 'FRIEND/NEIGHBOR PRES AT S''S DEATH'
      VV7f     = 'PHYSICIAN PRESENT AT S''S DEATH'
      VV7g     = 'NURSE PRESENT AT S''S DEATH'
      VV7h     = 'OTHER MED PERSONNEL PRES AT S''S DTH'
      VV8      = 'S REC MED FOR PAIN DURING 24HRS BEF DTH'
      VV9      = 'S COMPLAIN OF PAIN 24HRS BEFORE DTH'
      VV10     = 'PAIN OF S MILD/MOD/SEVERE W/I HRS OF DTH'
      VV11a    = 'S HAVE SHORTNESS OF BREATH 72HRS BEF DTH'
      VV11b    = 'S HAVE FAINTING OCCUR 72HRS BEF DTH'
      VV11c    = 'S HAVE CHEST PAIN 72 HRS BEFORE DTH'
      VV12AMT  = 'MINUTES/HRS CHEST PAIN LASTED BEF DTH'
      VV12PER  = 'TIME PERIOD OF RESPONSE'
      VV13     = 'S GET MED TO RELIEVED CHEST PAIN BEF DTH'
      VV14     = 'ELAPSED TIME BETWEEN ONSET OF SYMP & DTH'
      VV15     = 'PROXY TALK TO S W/I 24HRS OF S''S DTH'
      VV16     = 'NAMES OF PEOPLE WHO SAW S 24HRS BEF DTH'
      VV17     = 'INFO OF PEOPLE WHO SAW S 24HRS < DTH'
      BOX_P    = 'WAS PROXY INFORMATION COMPLETE?'
      VV18     = 'CAN OTHER PERSON ANS QUES ABOUT S''S DTH'
      SEQNUM30 = 'SAMPLE SEQUENCE NUMBER FOR SECTION W1'
      RECLABW1 = 'RECORD LABEL FOR SECTION W1'
      SECLET1  = 'SECTION LETTER (1ST HOSPITALIZATION)'
      QSNUM1   = 'QUESTION NUMBER (1ST HOSPITALIZATION)'
      SQIND1   = 'SUBQUESTION INDICATOR (1ST HOSP)'
      FACTYP1  = 'FACILITY TYPE (1ST HOSPITALIZATION)'
      YRADM1   = 'YEAR OF ADMISSION (1ST HOSPITALIZATION)'
      SECLET2  = 'SECTION LETTER (2ND HOSPITALIZATION)'
      QSNUM2   = 'QUESTION NUMBER (2ND HOSPITALIZATION)'
      SQIND2   = 'SUBQUESTION INDICATOR (2ND HOSP)'
      FACTYP2  = 'FACILITY TYPE (2ND HOSPITALIZATION)'
      YRADM2   = 'YEAR OF ADMISSION (2ND HOSPITALIZATION)'
      SECLET3  = 'SECTION LETTER (3RD HOSPITALIZATION)'
      QSNUM3   = 'QUESTION NUMBER (3RD HOSPITALIZATION)'
      SQIND3   = 'SUBQUESTION INDICATOR (3RD HOSP)'
      FACTYP3  = 'FACILITY TYPE (3RD HOSPITALIZATION)'
      YRADM3   = 'YEAR OF ADMISSION (3RD HOSPITALIZATION)'
      SECLET4  = 'SECTION LETTER (4TH HOSPITALIZATION)'
      QSNUM4   = 'QUESTION NUMBER (4TH HOSPITALIZATION)'
      SQIND4   = 'SUBQUESTION INDICATOR (4TH HOSP)'
      FACTYP4  = 'FACILITY TYPE (4TH HOSPITALIZATION)'
      YRADM4   = 'YEAR OF ADMISSION (4TH HOSPITALIZATION)'
      SECLET5  = 'SECTION LETTER (5TH HOSPITALIZATION)'
      QSNUM5   = 'QUESTION NUMBER (5TH HOSPITALIZATION)'
      SQIND5   = 'QUESTION INDICATOR (5TH HOSP)'
      FACTYP5  = 'FACILITY TYPE (5TH HOSPITALIZATION)'
      YRADM5   = 'YEAR OF ADMISSION (5TH HOSPITALIZATION)'
      SECLET6  = 'SECTION LETTER (6TH HOSPITALIZATION)'
      QSNUM6   = 'QUESTION NUMBER (6TH HOSPITALIZATION)'
      SQIND6   = 'QUESTION INDICATOR (6TH HOSP)'
      FACTYP6  = 'FACILITY TYPE (6TH HOSPITALIZATION)'
      YRADM6   = 'YEAR OF ADMISSION (6TH HOSPITALIZATION)'
      SECLET7  = 'SECTION LETTER (7TH HOSPITALIZATION)'
      QSNUM7   = 'QUESTION NUMBER (7TH HOSPITALIZATION)'
      SQIND7   = 'QUESTION INDICATOR (7TH HOSP)'
      FACTYP7  = 'FACILITY TYPE (7TH HOSPITALIZATION)'
      YRADM7   = 'YEAR OF ADMISSION (7TH HOSPITALIZATION)'
      SEQNUM31 = 'SAMPLE SEQUENCE NUMBER FOR SECTION W2'
      RECLABW2 = 'RECORD LABEL FOR SECTION W2'
      SECLET8  = 'SECTION LETTER (8TH HOSPITALIZATION)'
      QSNUM8   = 'QUESTION NUMBER (8TH HOSPITALIZATION)'
      SQIND8   = 'SUBQUESTION INDICATOR (8TH HOSP)'
      FACTYP8  = 'FACILITY TYPE (8TH HOSPITALIZATION)'
      YRADM8   = 'YEAR OF ADMISSION (8TH HOSPITALIZATION)'
      SECLET9  = 'SECTION LETTER (9TH HOSPITALIZATION)'
      QSNUM9   = 'QUESTION NUMBER (9TH HOSPITALIZATION)'
      SQIND9   = 'SUBQUESTION INDICATOR (9TH HOSP)'
      FACTYP9  = 'FACILITY TYPE (9TH HOSPITALIZATION)'
      YRADM9   = 'YEAR OF ADMISSION (9TH HOSPITALIZATION)'
      SECLET10 = 'SECTION LETTER (10TH HOSPITALIZATION)'
      QSNUM10  = 'QUESTION NUMBER (10TH HOSPITALIZATION)'
      SQIND10  = 'SUBQUESTION INDICATOR (10TH HOSP)'
      FACTYP10 = 'FACILITY TYPE (10TH HOSPITALIZATION)'
      YRADM10  = 'YEAR OF ADMISSION (10TH HOSPITALIZATION)'
      SECLET11 = 'SECTION LETTER (11TH HOSPITALIZATION)'
      QSNUM11  = 'QUESTION NUMBER (11TH HOSPITALIZATION)'
      SQIND11  = 'SUBQUESTION INDICATOR (11TH HOSP)'
      FACTYP11 = 'FACILITY TYPE (11TH HOSPITALIZATION)'
      YRADM11  = 'YEAR OF ADMISSION (11TH HOSPITALIZATION)'
      SECLET12 = 'SECTION LETTER (12TH HOSPITALIZATION)'
      QSNUM12  = 'QUESTION NUMBER (12TH HOSPITALIZATION)'
      SQIND12  = 'SUBQUESTION INDICATOR (12TH HOSP)'
      FACTYP12 = 'FACILITY TYPE (12TH HOSPITALIZATION)'
      YRADM12  = 'YEAR OF ADMISSION (12TH HOSPITALIZATION)'
      SECLET13 = 'SECTION LETTER (13TH HOSPITALIZATION)'
      QSNUM13  = 'QUESTION NUMBER (13TH HOSPITALIZATION)'
      SQIND13  = 'SUBQUESTION INDICATOR (13TH HOSP)'
      FACTYP13 = 'FACILITY TYPE (13TH HOSPITALIZATION)'
      YRADM13  = 'YEAR OF ADMISSION (13TH HOSPITALIZATION)'
      SECLET14 = 'SECTION LETTER (14TH HOSPITALIZATION)'
      QSNUM14  = 'QUESTION NUMBER (14TH HOSPITALIZATION)'
      SQIND14  = 'SUBQUESTION INDICATOR (14TH HOSP)'
      FACTYP14 = 'FACILITY TYPE (14TH HOSPITALIZATION)'
      YRADM14  = 'YEAR OF ADMISSION (14TH HOSPITALIZATION)'
      SEQNUM32 = 'SAMPLE SEQUENCE NUMBER FOR SECTION X0'
      RECLABX0 = 'RECORD LABEL FOR SECTION X0'
      PMR1a    = 'S HAD ALCOHOLIC BEV W/I PAST 24HRS'
      PMR1b    = 'S SMOKING/DRINKING COFFEE 15MIN BEF MEAS'
      PMR2a1   = 'MEASUREMENT NOT ATTEMPTED/PULSE'
      PMR2a2   = 'MEASUREMENT NOT ATEMPTED/BLOOD PRESSURE'
      PMR2a3   = 'MEASUREMENT NOT ATTEMPTED/WEIGHT'
      PMR2b1   = 'REASON MEAS NOT ATEMPTED/S CUT OFF INTV'
      PMR2b2   = 'MEAS NOT ATTEMPTED/S REF MEASUREMENT'
      PMR2b3   = 'MEAS NOT ATTEMPTED/PREV S PHYS COND'
      PMR2b4   = 'MEAS NOT ATTEMPTED/PREV BY EQUIP FAILURE'
      PMR2b5   = 'MEAS NOT ATTEMPTED/PREV BY OTHER PROB'
      PMR2c    = 'WHEN DID BREAKOFF/REFUSAL OCCUR'
      PMR3a    = 'RADIAL PULSE MEASUREMENT/ARM USED'
      PMR3b    = 'RADIAL PULSE MEASUREMENT/PULSE READING'
      PMR4a    = 'BLD PRESSURE MEASUREMENT/CUFF SIZE USED'
      PMR4b1   = 'MAX INFLATION LVL READING/1ST READING'
      PMR4b2   = 'MAX INFLATION LVL READING/2ND READING'
      PMR4c1SY = '1ST BLOOD PRESSURE READING/SYSTOLIC'
      PMR4c1DI = '1ST BLOOD PRESSURE READING/DISSTOLIC'
      PMR4c2SY = '2ND BLOOD PRESSURE READING/SYSTOLIC'
      PMR4c2DI = '2ND BLOOD PRESSURE READING/DISSTOLIC'
      PMR4c3SY = '3RD BLOOD PRESSURE READING/SYSTOLIC'
      PMR4c3DI = '3RD BLOOD PRESSURE READING/DISSTOLIC'
      PMR4cAVS = 'AVG 2ND/3RD BLD PRESS READING-SYSTOLIC'
      PMR4cAVD = 'AVG 2ND/3RD BLD PRESS READING-DISSTOLIC'
      PMR5a    = 'WEIGHT MEASUREMENT SCALE ON'
      PMR5b1   = 'WEIGHT MEASUREMENT 1ST WEIGHT READING'
      PMR5b2   = 'WEIGHT MEASUREMENT 2ND WEIGHT READING'
      REVRACE  = 'REVISED RACE OF S'
      RECAGENH = 'RECALCULATED AGE AT NHANES I EXAM'
      STRATA   = 'STRATA'
      PPSU     = 'PSEUDO PRIMARY SAMPLING UNITS'
      NHISUB   = 'NHANES I SUBSAMPLE'
      SEQNUM33 = 'SAMPLE SEQUENCE NUMBER FOR SECTION Y0'
      RECLABY0 = 'RECORD LABEL FOR SECTION Y0'
      FINTDMO  = 'FOLLOWUP INTERVIEW DATEMONTH'
      FINTDDY  = 'FOLLOWUP INTERVIEW DATEDAY'
      FINTDYR  = 'FOLLOWUP INTERVIEW DATEYEAR'
      NEXDTMO  = 'NHANES I EXAM DATEMONTH'
      NEXDTDY  = 'NHANES I EXAM DATEDAY'
      NEXDTYR  = 'NHANES I EXAM DATEYEAR'
      CNIDOBMO = 'CORRECTED NHANES I DATE OF BIRTHMONTH'
      CNIDOBYR = 'CORRECTED NHANES I DATE OF BIRTHYEAR'
      SEXSUBJ  = 'SEX OF SUBJECT'
      FWUPRACE = 'FOLLOWUP RACE OF S'
      MIGRSTAT = 'MIGRATION STATUS OF S'
      CURROCCP = 'CURR OCCUPATION OF S'
      FAMINC   = 'FAMILY INCOME'
      CURVITST = 'CURRENT VITAL STATUS'
      DDTHMO   = 'DATE OF DEATHMONTH'
      DDTHDY   = 'DATE OF DEATHDAY'
      DDTHYR   = 'DATE OF DEATHYEAR'
      AGEDTH   = 'AGE OF S AT TIME OF DEATH'
      UNCAUDTH = 'S''S UNDERLYING CAUSE OF DEATH'
      INFOSOSQ = 'INFOMATION SOURCE S QUESTIONNAIRE'
      INFOSOPQ = 'INFOMATION SOURCS PROXY QUESTIONNAIRE'
      DTHCERT  = 'DEATH CERTIFICATE OF S'
      MDAUTHFR = 'MEDICAL AUTHORIZATION FORM REFUSAL/MAF'
      SZPLC    = 'SIZE OF PLACE'
      SMSA     = 'SMDA-NOT SMSA'
      HGRSCHAT = 'HIGHEST GRADE OF SCHOOL EVER ATTENDED'
      FARM     = 'FARM'
      POVINDX  = 'POVERTY INDEX'
      REGION   = 'REGION'
      SWDP1    = 'DETAILED PERSONS-LOCATION 01-35'
      SWSP1    = 'ALL SAMPLE PERSONS-LOCATIONS 01-35'
      SWDP2    = 'DETAILED PERSONS-LOCATIONS 01-65'
      SWSP2    = 'ALL SAMPLE PERSONS-LOCATIONS 01-65'
      SWDP3    = 'DETAILED PEROSNS-LOCATION 66-100'
      SWDP4    = 'DETAILED PERSONS-LOCATION 1-100'
      ;

RUN;