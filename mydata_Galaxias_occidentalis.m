function [data, auxData, metaData, txtData, weights] = mydata_Galaxias_occidentalis
% file generated by prt_mydata

%% set metaData
metaData.phylum     = 'Chordata';
metaData.class      = 'Actinopterygii';
metaData.order      = 'Galaxiiformes';
metaData.family     = 'Galaxiidae';
metaData.species    = 'Galaxias_occidentalis';
metaData.species_en = 'Western galaxias';

metaData.ecoCode.climate = {'Csa','Csb'};
metaData.ecoCode.ecozone = {'TA','TO'};
metaData.ecoCode.habitat = {'0bFc','jpFr','jpFl','0bFp','0bFpe'};
metaData.ecoCode.embryo  = {'Fh'};
metaData.ecoCode.migrate = {'Mp'};
metaData.ecoCode.food    = {'biCi','biCik','biCvf'};
metaData.ecoCode.gender  = {'Dg'};
metaData.ecoCode.reprod  = {'O'};

metaData.T_typical  = C2K(16.5); % K, body temp

metaData.data_0     = {'tp','tpm','am','tp','tpm','tR','am','Lh','Lp','Lpm','Li','Lim','Ri','GSI','GSI','Wwh','Wwp','Wwpm','Wwi','Wwim'};
metaData.data_1     = {'tL_f','tL_f','tL_m','LN','WwN','LWw_f','LWd_m','LWw_m'};

metaData.COMPLETE   = 2.5; % using criteria of LikaKear2011

metaData.author     = {'Callum Donohue'};
metaData.date_subm  = [2023 6 1];
metaData.email      = {'callum.donohue@murdoch.edu.au'};
metaData.address    = {'Harry Butler Institute, Murdoch University'};

metaData.curator    = {'Starrlight Augustine'};
metaData.email_cur  = {'starrlight@tecnico.ulisboa.pt'};
metaData.date_acc   = [2023 6 1];

%% set zero-variate data
data.tp = 365; units.tp = 'd'; label.tp = 'time since birth at puberty'; bibkey.tp = {'pen1991biology1','morgan1998distribution'};
  temp.tp = C2K(17.5); units.temp.tp = 'K'; label.temp.tp = 'temperature';
  comment.tp = 'Temperature reaches a mimumum of 9 - 12 degrees C in July to August and a maximum of 18 - 26 degrees C between November and March. Mean temerpature (9 - 26) provided. ';
data.tpm = 365; units.tpm = 'd'; label.tpm = 'time since birth at puberty for males'; bibkey.tpm = {'pen1991biology1','morgan1998distribution'};
  temp.tpm = C2K(17.5); units.temp.tpm = 'K'; label.temp.tpm = 'temperature';
  comment.tpm = 'Temperature reaches a mimumum of 9 - 12 degrees C in July to August and a maximum of 18 - 26 degrees C between November and March. Mean temerpature (9 - 26) provided. ';
data.am = 1825; units.am = 'd'; label.am = 'life span'; bibkey.am = {'pen1991biology2'};
  temp.am = C2K(17.5); units.temp.am = 'K'; label.temp.am = 'temperature';
  comment.am = 'Temperature reaches a mimumum of 9 - 12 degrees C in July to August and a maximum of 18 - 26 degrees C between November and March. Mean temerpature (9 - 26) provided. ';

data.Lh = 0.61; units.Lh = 'cm'; label.Lh = 'length at hatch'; bibkey.Lh = {'gill1994larval'};
  comment.Lh = 'Smallest larval stage recorded. Immediately after hatch may be smaller. ';
data.Lp = 7.5; units.Lp = 'cm'; label.Lp = 'length at puberty'; bibkey.Lp = {'pen1991biology2','morgan1998distribution'};
data.Lpm = 7; units.Lpm = 'cm'; label.Lpm = 'length at puberty for males'; bibkey.Lpm = {'pen1991biology2','morgan1998distribution'};
data.Li = 16.3; units.Li = 'cm'; label.Li = 'ultimate length'; bibkey.Li = {'pen1991biology2'};
  comment.Li = 'Apparently larger individuals have been found. Personal communications has suggested that a female of 19 cm has been seen. However, 16.3 cm is published alongside an ultimate weight. The weight of larger individuals is unknown. ';
data.Lim = 12.6; units.Lim = 'cm'; label.Lim = 'ultimate length for males'; bibkey.Lim = {'pen1991biology2'};

data.Ri = 4.21; units.Ri = '#/d'; label.Ri = 'ultimate reproduction rate'; bibkey.Ri = {'pen1991biology1'};
  temp.Ri = C2K(17.5); units.temp.Ri = 'K'; label.temp.Ri = 'temperature';
  comment.Ri = 'Temperature reaches a mimumum of 9 - 12 degrees C in July to August and a maximum of 18 - 26 degrees C between November and March. Mean temerpature (9 - 26) provided. Rate = 1538 (annual fecunditiy at age 3) / 365 (e.g., ultimate fecundity; can also do mean fecudity over life = 905/365)';

data.Wwp = 2.8; units.Wwp = 'g'; label.Wwp = 'wet weight at puberty'; bibkey.Wwp = {'pen1991biology1'};
data.Wwi = 32; units.Wwi = 'g'; label.Wwi = 'ultimate wet weight'; bibkey.Wwi = {'pen1991biology2'};
data.Wwim = 12.1; units.Wwim = 'g'; label.Wwim = 'ultimate wet weight for males'; bibkey.Wwim = {'pen1991biology2'};

%% set uni-variate data
% time - length
data.tL_f = [ ... 
  38.69 2.892
  66.795 3.5043
  102.565 4.2085
  138.7 4.8821
  186.515 5.6168
  250.39 6.321
  318.28 7.0558
  386.17 7.6681
  446.03 8.1886
  509.905 8.7091
  577.795 9.1989
  653.715 9.6275
  721.605 10.0255
  817.6 10.4236
  941.335 10.8828
  1049.38 11.1889
  1181.14 11.4645
  1292.83 11.6482
  1408.54 11.7707
  1508.55 11.9237
  1596.51 12.0156
  1684.11 12.1074
  1780.11 12.1993
  1827.92 12.2605];
units.tL_f = {'d', 'cm'}; label.tL_f = {'time', 'length'};
temp.tL_f = C2K(17.5); units.temp.tL_f = 'K'; label.temp.tL_f = 'temperature';
bibkey.tL_f = {'pen1991biology2'};
comment.tL_f = 'Temperature reaches a mimumum of 9 - 12 degrees C in July to August and a maximum of 18 - 26 degrees C between November and March. Mean temerpature (9 - 26) provided. ';

% time - length
data.tL_m = [ ... 
  21.9 3.0084
  45.99 3.3758
  96.36 4.0922
  151.475 4.7351
  199.29 5.3413
  249.66 5.8924
  300.03 6.3884
  359.89 6.9027
  432.89 7.4538
  512.825 7.9568
  595.68 8.416
  689.85 8.8534
  798.255 9.2689
  889.505 9.5751
  986.595 9.7719
  1077.85 9.9687
  1172.02 10.1436
  1263.27 10.253
  1365.83 10.3842
  1462.92 10.4717];
units.tL_m = {'d', 'cm'}; label.tL_m = {'time', 'length'};
temp.tL_m = C2K(17.5); units.temp.tL_m = 'K'; label.temp.tL_m = 'temperature';
bibkey.tL_m = {'pen1991biology2'};
comment.tL_m = 'Temperature reaches a mimumum of 9 - 12 degrees C in July to August and a maximum of 18 - 26 degrees C between November and March. Mean temerpature (9 - 26) provided. ';

% length - yearly fecundity
data.LN = [ ... 
  5.084 130.942
  5.2652 165.406
  5.4677 195.949
  5.6808 226.469
  5.7771 288.236
  5.8354 262.928
  5.9154 289.868
  5.9268 380.876
  6.0484 285.701
  6.198 349.288
  6.2084 324.086
  6.3002 486.58
  6.3041 312.253
  6.3259 379.995
  6.3842 348.877
  6.417 455.333
  6.4698 406.794
  6.501 315.693
  6.5074 451.259
  6.5172 346.647
  6.6201 569.16
  6.6303 511.032
  6.637 681.462
  6.6609 350.203
  6.6972 224.227
  6.7007 656.142
  6.7215 605.737
  6.7251 390.736
  6.7418 485.606
  6.799 309.225
  6.8063 557.128
  6.81 359.559
  6.8266 440.871
  6.8323 479.596
  6.8331 586.122
  6.844 619.025
  6.9333 467.752
  6.9353 711.794
  6.9392 537.466
  7.0128 424.965
  7.0178 395.901
  7.0618 564.312
  7.1143 475.1
  7.1207 616.478
  7.1213 682.33
  7.1221 783.046
  7.1411 498.283
  7.2004 600.807
  7.2291 195.937
  7.2368 486.451
  7.2805 637.431
  7.3384 557.891
  7.3464 887.142
  7.3486 497.826
  7.3654 602.38
  7.3842 956.786
  7.4174 455.063
  7.423 1148.45
  7.4301 704.891
  7.4441 1125.16
  7.4724 667.998
  7.5194 563.303
  7.5738 708.448
  7.6149 524.355
  7.6373 657.95
  7.6546 832.23
  7.6554 931.008
  7.6965 744.978
  7.7069 719.776
  7.7167 609.352
  7.72 1016.09
  7.7281 1368.58
  7.7385 1339.51
  7.7564 915.291
  7.8299 787.295
  7.8345 698.189
  7.8383 514.177
  7.9685 825.727
  8.0044 647.455
  8.0123 967.022
  8.0159 755.895
  8.1064 769.253
  8.1176 829.272
  8.2233 743.816
  8.2436 1282.22
  8.3293 1345.95
  8.3348 704.833
  8.3549 1658.63
  8.3998 855.765
  8.4028 561.354
  8.4086 1283.8
  8.6521 1118.62
  8.6888 1050.75
  8.6912 694.362
  8.6993 382.508
  8.7016 661.412
  8.7048 1064.28
  8.7075 1397.41
  8.7135 820.209
  8.727 1168.82
  8.8019 564.347
  8.8203 860.648
  8.8211 963.301
  8.926 769.382
  9.0578 618.015
  9.1182 1614.6
  9.1194 997.506
  9.1216 1266.73
  9.2544 1243.19
  9.2591 1953.11
  9.2651 1802.21
  9.3558 1279.77
  9.4062 932.957
  9.4209 1426.83
  9.5483 1391.68
  9.6474 1143.54
  9.719 783.128
  9.7739 1764.03
  9.814 686.075
  9.8457 2542.11
  9.9267 802.039
  9.9463 1255.22
  10.0323 703.025
  10.0496 1681.37
  10.0593 1983.11
  10.2059 1217.79
  10.244 1440.06
  10.3446 1291.6
  10.4607 2151.64
  10.4615 1352.22
  10.475 1227.78
  10.5315 1018.54
  10.5365 2537.94
  10.6479 1923.58
  10.6505 1346.51
  10.7435 1155.72
  10.7646 1957.73
  10.7751 1465.35
  10.8246 1290.54
  10.8341 1557.87
  11.0278 2129.21
  11.2174 2197.61
  11.3522 1781.73];
units.LN = {'cm', '#'}; label.LN = {'length', 'yearly fecundity'};
temp.LN = C2K(17.5); units.temp.LN = 'K'; label.temp.LN = 'temperature';
bibkey.LN = {'pen1991biology1'};
comment.LN = 'Temperature reaches a mimumum of 9 - 12 degrees C in July to August and a maximum of 18 - 26 degrees C between November and March. Mean temerpature (9 - 26) provided. ';

% wet weight - yearly fecundity
data.WwN = [ ... 
  1.04 234.974
  1.15 383.129
  1.213 290.437
  1.398 566.259
  1.423 319.403
  1.444 369.682
  1.525 357.711
  1.566 317.976
  1.636 500.572
  1.656 466.808
  1.682 353.627
  1.695 228.545
  1.724 395.288
  1.773 514.371
  1.812 371.401
  1.813 428.974
  1.884 677.085
  1.91 561.919
  1.937 611.531
  1.963 466.586
  1.982 305.764
  2.053 579.683
  2.066 468.497
  2.067 631.29
  2.075 670.991
  2.092 395.022
  2.117 192.504
  2.148 484.321
  2.163 692.765
  2.176 565.697
  2.23 504.114
  2.231 611.319
  2.321 791.916
  2.341 720.431
  2.408 563.545
  2.411 895.086
  2.484 656.798
  2.51 545.603
  2.587 714.298
  2.599 567.377
  2.637 928.673
  2.646 527.637
  2.741 458.083
  2.763 606.964
  2.792 803.487
  2.868 843.139
  2.876 934.457
  2.908 785.536
  2.926 505.597
  2.928 725.963
  2.987 1142.83
  3.057 658.37
  3.059 866.824
  3.207 1297.53
  3.223 846.853
  3.228 733.687
  3.255 1347.12
  3.282 662.178
  3.306 1029.44
  3.351 757.422
  3.385 1392.69
  3.399 703.785
  3.49 963.793
  3.535 701.701
  3.55 832.72
  3.57 743.368
  3.593 1062.98
  3.62 967.67
  3.671 1289.25
  3.753 1370.59
  3.803 878.199
  3.843 1424.13
  3.887 393.727
  3.898 840.41
  4.018 1640
  4.121 582.161
  4.177 715.135
  4.183 679.395
  4.29 1141.89
  4.306 639.601
  4.366 1199.41
  4.488 1687.31
  4.491 784.393
  4.495 1179.46
  4.589 1018.59
  4.892 635.207
  4.964 1261.32
  4.99 795.945
  5.053 958.694
  5.165 577.437
  5.366 1086.32
  5.534 1445.14
  5.651 1171.88
  5.843 1829.27
  5.892 1282.88
  5.92 717.451
  5.938 1422.61
  5.973 1708.47
  6.255 1463.68
  6.379 828.295
  6.406 1285.69
  6.531 1787.48
  6.536 1247.48
  6.555 2003.46
  6.62 1965.3
  6.902 707.212
  6.908 1317.09
  7.104 1256.6
  7.314 2571.5
  7.324 1367.61
  7.675 1592.89
  7.69 1980.41
  7.816 2555.26
  7.935 1392.58
  7.999 1173.36
  8.218 1297.09
  8.325 1042.89
  8.369 2167.33
  8.382 1312.85
  8.61 2224.33
  8.995 1483.94
  9.265 2274.68
  9.701 2150.49
  9.752 1807.39];
units.WwN = {'g', '#'}; label.WwN = {'wet weight', 'yearly fecundity'};
temp.WwN = C2K(17.5); units.temp.WwN = 'K'; label.temp.WwN = 'temperature';
bibkey.WwN = {'pen1991biology1'};
comment.WwN = 'Temperature reaches a mimumum of 9 - 12 degrees C in July to August and a maximum of 18 - 26 degrees C between November and March. Mean temerpature (9 - 26) provided. ';

% length - wet weight
data.LWw_f = [ ... 
  5.6 0.627
  6.3 1.426
  6.9 1.466
  8.5 3.816
  7.6 2.339
  7.3 1.687
  7.9 2.661
  6.7 1.346
  6.5 1.35
  7.1 1.407
  6.6 1.676
  7.3 2.244
  6.3 0.85
  6.8 1.382
  7 1.502
  6.7 1.166
  7.8 2.63
  7.2 1.883
  7.5 1.914
  7.9 2.19
  7.6 2.069
  10 6.823
  7.4 2.567
  7.7 2.144
  6.8 1.86
  6.6 1.24
  6.1 0.97
  6.8 1.702
  7.1 1.71
  7.5 1.362
  6.5 1.434
  6.2 1.184
  6.3 0.987
  7.7 2.326
  6.6 1.246
  7.6 2.11
  6.1 0.983
  6.5 1.146
  7.3 2.195
  6.9 1.096
  7.2 1.793
  7.2 1.864
  7.1 1.735
  8.3 2.7
  6.5 1.533
  6.6 1.335
  5.9 0.71
  6.6 1.373
  6.4 1.178
  7.2 1.9
  6.3 1.444
  7.1 2.588
  7.2 2.054
  7.4 2.225
  8 2.717
  7 1.994
  7.1 1.99
  9.3 4.093
  8.6 4.02
  6.4 0.924
  7.6 1.925
  6.8 1.236
  7.2 2.31
  7 1.163
  8.1 3.247
  8.7 3.188
  6 0.906
  7.8 2.05
  7.7 2.031
  9.7 5.879
  7.9 1.404
  9.5 4.83
  10.4 4.778
  7.3 1.856
  6.8 1.309
  6.6 1.132
  5.5 0.595
  6.8 1.109
  7.6 2.581
  7.8 2.777
  6.8 1.738
  7 1.598
  6.5 1.542
  6.3 1.044
  5.9 0.968
  5.9 0.838
  6.9 1.364
  7.1 1.964
  6.6 1.669
  6.9 1.416
  6.8 1.4
  8.2 3.051
  7.9 2.702
  6.9 1.89
  7.6 2.112
  7.5 2.006
  7.5 1.92
  9 3.333
  6.4 1.608
  7.1 1.848
  7.6 2.333
  8.7 4.142
  9.5 5.809
  8.9 3.871
  6.8 1.08
  7.6 1.9
  7 1.62
  7.3 1.49
  6 0.85
  8 1.84
  6.7 1.08
  6.6 1.19
  7 1.36
  6.8 1.22
  6.4 1.05
  6.8 1.08
  7.4 1.43
  7.1 1.4
  6.8 1.26
  6.5 1.04
  6 0.82
  5.8 0.77
  6.3 0.97
  13 10.67
  9.1 3.51
  8.6 2.75
  7 1.45
  7 1.3
  10.5 4.35
  6.9 1.07
  8.3 2.58
  8.3 2.17
  10 6.48
  11.8 6.35
  6.3 1.06
  7 1.12
  6.8 0.95
  7.6 1.53
  7.5 1.5
  8.6 2.44
  11 6.75
  6.7 1.14
  7.3 1.46
  6.9 1.11
  6.5 0.92
  6.2 0.83
  5.9 0.6
  7.2 1.43
  7.8 1.61
  6.3 0.73
  5.8 0.59
  5.8 0.61
  11 6.18
  6.1 0.84
  5.8 0.64
  6.3 0.83
  5.5 0.58
  5.8 0.62
  5.7 0.57
  5.1 0.52
  5.5 0.6
  5 0.36
  8.9 2.99
  8 1.72
  12 5.68
  9 3.77
  9 3.22
  7.1 1.83
  7.1 1.95
  7.8 2.3
  9.2 3.56
  10.2 4.89
  5.8 0.81
  10 4.18
  7.8 2.13
  6.1 0.99
  8.3 2.58
  8.3 2.17
  10 6.48
  11.8 6.35
  6.3 1.06
  7 1.12
  6.8 0.95
  7.6 1.53
  7.5 1.5
  8.6 2.44
  11 6.75
  6.7 1.14
  7.3 1.46
  6.9 1.11
  6.5 0.92
  6.2 0.83
  5.9 0.6
  7.2 1.43
  7.6 1.89
  6 0.95
  5.7 0.79
  6.3 1.05
  6.4 1.17
  6.7 1.44
  6.2 1.08
  7.8 1.61
  6.3 0.73
  5.8 0.59
  5.8 0.61
  11 6.18
  6.1 0.84
  5.8 0.64
  6.3 0.83
  5.5 0.58
  5.8 0.62
  5.7 0.57
  5.1 0.52
  5.5 0.6
  5 0.36
  8 1.82
  7.3 1.64
  6.5 1.18
  6.5 0.89
  8.1 2.34
  9 2.77
  6.4 1.09
  6.2 0.89
  6.5 0.92
  7 1.13
  8.5 2.67
  7.8 2.25
  7 1.22
  6.1 0.74
  6.1 1
  5.6 0.65
  5.7 0.45
  7.6 2.2
  5.2 0.62
  7 2.3
  8.4 3.47
  7 1.96
  6.8 1.75
  6.5 1.4
  6.5 1.44
  6.5 1.6
  6.4 1.45
  7 1.92
  6.7 1.57
  9.4 3.33
  7.1 1.6
  6.7 1.22
  6.6 1.49
  7.8 2.52
  7.9 2.05
  7.6 2.32
  7.7 1.92
  5.7 0.9
  5.7 0.82
  5.8 0.95
  6.7 1.3
  6.2 0.87
  6.4 1.2
  7.9 2.59
  7.8 2.5
  8 2.85
  7.8 2.4
  6.8 1.4
  7.5 1.9
  8 2.3
  6.7 1.09
  7.3 1.87
  8.3 2.34
  10.6 5
  10.5 3.15
  9 3.07
  12.2 8.82
  8 1.67
  8 2.09
  9 3.28
  11 5.8
  9 2.38
  6.1 1.19
  10 4.76
  8.1 2.02
  6.6 1.22
  7.8 1.7
  8.3 2.24
  8 2.15
  6.9 1.27
  5.9 0.82
  5.5 0.69
  6.2 0.9
  6.2 0.89
  7.6 1.93
  6.2 1.37
  6.4 0.97
  6.1 0.69
  5.9 0.82
  5.5 0.69
  6.2 0.9
  6.2 0.89
  7.6 1.93
  6.2 1.37
  6.4 0.97
  6.1 0.69
  4.7 0.35
  4.4 0.48
  4.6 0.58
  6.3 0.93
  6.4 0.98
  10.4 3.98
  6.5 1.3
  6.6 1.28
  6.1 0.87
  6 0.92
  6.9 1.14
  9.6 3.78
  8.5 1.68
  6.1 0.82
  6.4 1.05
  6.2 1.03
  5.5 0.79
  6.8 1.2
  6.6 0.99
  6.7 1.1
  5.8 1
  11.7 4.43
  9 2.71
  8.6 2.16
  8.6 2.05
  10.1 3.88
  10.5 3.46
  6.5 1.09
  7.1 0.95
  5.8 0.78
  9.2 4.04
  10 4.88
  10.5 6.09
  7.1 1.53
  7.2 1.48
  10.3 6.06
  9 2.62
  10.7 6.92
  6.7 1.1
  7.7 2.29
  6.7 1.36
  6 0.86
  6.8 1.3
  7 1.17
  6.6 1.31
  5.8 0.9
  6.6 1.3
  7.5 1.5
  10.2 6.47
  12 9.67
  8.1 3.14
  8.6 3.45
  8.7 2.75
  10.2 6.7
  8.5 3.25
  7.3 1.68
  7.8 2.72
  9.5 4.78
  8.1 2.24
  7.2 1.85
  8 2.55
  7.3 2.09
  8.4 3.02
  7.8 2.88
  8.5 2.96
  7.3 1.76
  9.2 3.47
  8 2
  6.5 1.16
  7.6 1.67
  7.1 1.65
  6.7 1.22
  6.2 1.04
  7.4 1.73
  6.5 1.1
  5.8 0.71
  6.2 1.09
  7.3 1.45
  5.2 0.55
  6.9 1.35
  6.5 1.26
  7.4 1.54
  6.6 1.04
  6.7 1.12
  7.7 1.52
  6.2 1.05
  5.5 0.66
  5.1 0.44
  4.7 0.34
  4.2 0.26];
units.LWw_f = {'cm', 'g'}; label.LWw_f = {'length', 'wet weight'};
bibkey.LWw_f = {'Unpublished2023'};
comment.LWw_f = 'Combination from data collected in 2004 and 2006 from various sites in the south-west of Western Australia';

% length - wet weight
data.LWw_m = [ ... 
  5.9 0.775
  6.3 1.035
  5.3 0.723
  5.6 0.744
  6 0.956
  5.5 0.622
  5.7 0.905
  5.3 0.621
  5.6 0.717
  5.7 0.871
  5.8 0.934
  5.7 0.816
  5.3 0.548
  6.1 0.892
  5.9 0.872
  6.3 1.145
  5.6 0.639
  6 0.886
  5.3 0.618
  5.8 0.712
  5.9 0.883
  5.7 0.91
  5.8 1.029
  5.3 0.88
  5.8 0.791
  6.6 1.3
  7.9 2.115
  6.3 0.99
  6.8 1.632
  6.8 1.261
  7.3 1.75
  6.1 1.137
  6.5 0.981
  6.6 1.592
  5.9 0.832
  6 1.01
  6.8 1.685
  7.2 2.07
  6.1 1.14
  6.7 1.444
  6 0.976
  7.6 2.467
  6.1 0.847
  6.3 1.345
  5.6 0.913
  6.3 1.045
  5.3 0.522
  6.7 1.422
  5.6 0.712
  6.3 1.052
  6.1 0.879
  6.3 1.019
  8 2.353
  7.4 1.724
  6.5 1.297
  6.8 1.472
  7.1 1.528
  7.3 1.821
  5.4 0.523
  6 0.635
  6.6 1.076
  5.7 0.599
  6.4 0.839
  7.2 1.518
  5.3 0.507
  6.3 1.035
  5.5 0.705
  5.8 0.81
  6.2 1.124
  5.4 0.651
  5.2 0.683
  5.5 0.73
  5.5 0.605
  5.8 0.818
  5.4 0.588
  6 0.793
  5.6 0.677
  5.8 0.693
  5.7 0.783
  5.6 0.807
  5.2 1.078
  6 0.903
  6.3 1.094
  5.8 0.784
  5.5 0.769
  5.7 0.788
  5.9 1.048
  6.6 1.405
  6.8 1.018
  6.4 1.336
  6 1.013
  6.2 1.035
  6.5 1.289
  7.2 1.469
  6.4 1.462
  6 1.366
  6.2 1.228
  5.6 0.972
  6.7 1.59
  8.3 3.051
  6.4 1.139
  6.1 0.943
  6.3 1.384
  6.6 1.162
  5.5 0.716
  6.1 0.696
  7 1.404
  6.9 1.543
  6 1.32
  6.3 0.807
  6.6 1.014
  5.8 0.552
  6.2 0.717
  6.7 1.051
  5.5 0.673
  5.7 0.947
  5.9 1.041
  6.4 1.366
  5.6 0.591
  6.8 1.361
  6.7 1.461
  6 0.866
  6.5 1.233
  5.7 1.122
  6.2 1.157
  6.2 0.993
  7.1 1.726
  7.4 1.655
  7.2 2.511
  6.9 1.805
  6.3 0.811
  6.4 0.901
  6.1 1.027
  7.4 1.61
  6 0.971
  6.9 1.685
  8 3.193
  6.6 1.145
  7.4 1.72
  5.8 0.885
  6.1 1.194
  6.5 1.659
  6 1.024
  6.6 1.442
  7 1.67
  5.8 0.992
  6.6 1.568
  6.8 1.539
  7.6 2.859
  5.8 0.78
  9 3.1
  8.8 2.38
  9.3 3.57
  8.8 3.09
  8 2.2
  9 2.94
  8.6 2.84
  8 2.1
  8.5 2.9
  8.5 2.7
  9.1 3.2
  6.9 1.03
  6 0.78
  6.8 1.13
  6 0.73
  6 0.7
  5.6 0.65
  5.6 0.62
  7.2 1.46
  6.8 1.23
  8.1 2.32
  7.1 1.49
  6.5 1.04
  6.2 1.17
  6.9 1.03
  6 0.78
  6.5 1.05
  5.6 0.62
  5.5 0.73
  6.8 1.13
  6 0.73
  6 0.7
  5.6 0.65
  5.6 0.62
  8.2 2.31
  6.4 1.18
  8.9 3.29
  6.5 1.18
  7.4 1.93
  6 0.75
  6 0.86
  6 0.75
  6.8 1.31
  6.2 1.02
  5.5 0.65
  5.6 0.56
  9 3.23
  7.2 2.1
  7.9 2.46
  7.3 2.43
  7.9 2.82
  6.5 1.19
  7.5 3.22
  7.1 1.66
  6.6 1.06
  7.1 1.35
  7.4 1.89
  6.6 1.32
  6.3 0.98
  5.6 0.8
  5.1 0.95
  6.5 1.1
  6.1 0.87
  6.8 1.3
  6.2 1.12
  6 0.7
  8 2.14
  8.5 2.77
  8.1 2.27
  7.6 1.68
  8.2 2.08
  10 4.05
  6.5 1.28
  6.8 1.44
  7.1 1.4
  5.9 0.8
  6.5 1.18
  5.9 0.89
  8.9 2.39
  8.5 2.2
  7.7 1.54
  8 1.87
  5.8 0.66
  8 2.22
  5.7 0.59
  7.9 1.74
  8.1 1.75
  8.5 2.12
  6.3 0.72
  6.6 1.34
  5.5 0.7
  8 1.64
  7.5 1.39
  6.1 1.03
  7 1.27
  6.7 1.15
  6.1 0.87
  6.4 1.18
  7.6 1.7
  6.8 1.27
  7.4 1.54
  7.2 1.23
  7.8 1.76
  5.8 0.64
  5.1 0.47
  5.4 0.53];
units.LWw_m = {'cm', 'g'}; label.LWw_m = {'length', 'wet weight'};
bibkey.LWw_m = {'Unpublished2023'};
comment.LWw_m = 'Combination from data collected in 2004 and 2006 from various sites in the south-west of Western Australia';

%% set weights for all real data
weights = setweights(data, []);

%% set pseudodata and respective weights
[data, units, label, weights] = addpseudodata(data, units, label, weights);

%% pack auxData and txtData for output
auxData.temp = temp;
txtData.units = units;
txtData.label = label;
txtData.bibkey = bibkey;
txtData.comment = comment;

%% Group plots
set1 = {'tL_f','tL_m'}; comment1 = {'Data for females, males'};
metaData.grp.sets = {set1};
metaData.grp.comment = {comment1};

%% Links
metaData.links.id_CoL = '3F2WH'; % Cat of Life
metaData.links.id_EoL = '224692'; % Ency of Life
metaData.links.id_Wiki = 'Western_galaxias'; % Wikipedia
metaData.links.id_ADW = 'Galaxias_occidentalis'; % Anim Div. Web
metaData.links.id_Taxo = '174650'; % Taxonomicon

%% References
bibkey = 'Kooy2010'; type = 'Book'; bib = [ ...  % used in setting of chemical parameters and pseudodata
'author = {Kooijman, S.A.L.M.}, ' ...
'year = {2010}, ' ...
'title  = {Dynamic Energy Budget theory for metabolic organisation}, ' ...
'publisher = {Cambridge Univ. Press, Cambridge}, ' ...
'pages = {Table 4.2 (page 150), 8.1 (page 300)}, ' ...
'howpublished = {\url{http://www.bio.vu.nl/thb/research/bib/Kooy2010.html}}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'Unpublished2023'; type = 'misc'; bib = [ ...
'author = {Donohue, CG}, ' ... 
'note = {Unpublished data on western minnow length, weight, sex and temperature. The data was collected from 2004 - 2006 at various sites in the south-west of Western Australia}, ' ... 
'year = {2023}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ', bib, '}'';'];
%
bibkey = 'gill1994larval'; type = 'article'; bib = [ ...
'author = {Gill, Howard S and Neira, Francisco J}, ' ... 
'title = {Larval descriptions of three galaxiid fishes endemic to south-western Australia: Galaxias occidentalis, Galaxiella munda and Galaxiella nigrostriata (Salmoniformes: Galaxiidae)}, ' ... 
'journal = {Marine and Freshwater Research}, ' ... 
'year = {1994}, ' ... 
'volume = {45}, ' ... 
'pages = {1307 - 1317}, ' ... 
'doi = {https://doi.org/10.1071/MF9941307}, ' ... 
'howpublished = {\url{https://www.publish.csiro.au/paper/MF9941307}}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ', bib, '}'';'];
%
bibkey = 'morgan1998distribution'; type = 'article'; bib = [ ...
'author = {Morgan, David L and Gill, Howard S and Potter, Ian C}, ' ... 
'title = {Distribution, identification and biology of freshwater fishes in south-western Australia}, ' ... 
'journal = {Records of the Western Australian museum supplement}, ' ... 
'year = {1998}, ' ... 
'volume = {56}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ', bib, '}'';'];
%
bibkey = 'pen1991biology1'; type = 'article'; bib = [ ...
'author = {Pen, LJ and Potter, IC}, ' ... 
'title = {Biology of the western minnow, Galaxias occidentalis Ogilby (Teleostei: Galaxiidae), in a south-western Australian river: 1. Reproductive biology}, ' ... 
'journal = {Hydrobiologia}, ' ... 
'year = {1991}, ' ... 
'volume = {211}, ' ... 
'pages = {77-88}, ' ... 
'doi = {10.1007/BF00037364}, ' ... 
'howpublished = {\url{https://doi.org/10.1007/BF00037364}}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ', bib, '}'';'];
%
bibkey = 'pen1991biology2'; type = 'article'; bib = [ ...
'author = {Pen, LJ and Potter, IC}, ' ... 
'title = {Biology of the western minnow, Galaxias occidentalis Ogilby (Teleostei: Galaxiidae), in a south-western Australian river: 2. Size and age composition, growth and diet}, ' ... 
'journal = {Hydrobiologia}, ' ... 
'year = {1991}, ' ... 
'volume = {211}, ' ... 
'pages = {89-100}, ' ... 
'doi = {10.1007/BF00037365}, ' ... 
'howpublished = {\url{https://doi.org/10.1007/BF00037365}}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ', bib, '}'';'];
%
