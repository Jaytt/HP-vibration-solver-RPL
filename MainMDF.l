Saturn Assembler                                       Tue May 22 21:55:38 2018
V3.0.9 (04/15/2007)                                      MainMDF.a      Page    1

    1               * File  MainMDF.s       1
    2               * RPL
    3               * File  MainMDF.s       2
    4               * C:\Users\Neo\Desktop\HP\Vibra\231\245es 1\main.s, part of the Vibrations.hpp project, created by <> on 23/12/2017
    5               * File  MainMDF.s       3
    6
    7               * File  MainMDF.s       4
    8               *|| Reading from C:\Users\NewUser\Dropbox\HP Progs\HP\Vibrações\single dregree of freedom\VibrationsSDF.h
    9
   10               =RomId  EQU     #222
   11               * ROMID set to 222
   12
   13
   14
   15
   16
   17
   18
   19
   20
   21               *|| Resuming file MainMDF.s at line 4
   22               *|| Reading from C:\Users\NewUser\Documents\Debug4x\Include\informbox.h
   23
   24
   25
   26
   27
   28
   29
   30
   31
   32
   33
   34
   35
   36
   37
   38
   39
   40
   41
   42
   43
   44
   45
   46
   47
   48
   49
   50
   51
   52
   53
   54
   55
   56
   57
   58
   59
   60
   61
   62
   63
   64
   65
   66
   67
   68
   69
   70
   71
   72
   73
   74
   75
   76
   77
   78
   79
   80
   81
   82
   83
   84
   85
   86
   87
   88
   89
   90
   91
   92
   93
   94
   95               * Do not modify any of these constants
   96
   97               * Do not modify any of these constants
   98               * ( was zint
   99
  100
  101
  102
  103
  104
  105
  106
  107
  108               *|| Resuming file MainMDF.s at line 5
  109               *|| Reading from C:\Users\NewUser\Documents\Debug4x\Include\Header.h
  110
  111
  112               * RPL
  113               * insure RPL-mode exit
  114
  115               * ( Rad
  116
  117               * ( %2PI
  118               * ( %PI/24
  119
  120
  121
  122
  123               * ( 1=1Var, 2=2Var Statistic
  124               * ( 1=Histogram, 2=BoxWhisker
  125
  126
  127
  128
  129
  130               * ASSEMBLE
  131               DefSysF64-33 EQU        #00000000
  132               DefSysF32-01 EQU        #04010FF0
  133               DefSysF65-96 EQU        #42000000       Just Algebraic Mode is On by Default
  134               DefSysF97-128 EQU       #00000000
  135
  136               * RPL
  137
  138
  139               * ( solution mode
  140               * ( constants mode
  141               * ( results mode
  142               * ( careful evaluation mode
  143
  144               * ( binary integer wordsize
  145               * must start on nibble boundary
  146               * ( binary integer base
  147               * must follow "fnBinWordS6"
  148
  149               * ( financial BEGIN/END mode
  150               * ( complex number and vector
  151               * mode
  152               * ( angle mode
  153               * must start on a nibble boundary
  154               * ( complex 2D mode
  155               * ( underflow action
  156               * ( overflow action
  157               * ( infinite result action
  158               * ( underflow-negative indicator
  159               * ( underflow-positive indicator
  160               * ( overflow indicator
  161               * ( infinite result indicator
  162               * ( symbolic-comples decompilation
  163               * ( simultaneous plot mode
  164               * ( axis drawing plot mode
  165
  166               * ( connect points mode
  167               * ( graphics cursor type mode
  168               * ( I/O device
  169               * ( print device
  170               * ( I/O data format
  171               * ( variable overwrite mode
  172               * ( double-space print mode
  173               * ( suppress auto CR mode
  174               * ( suppress I/O status messages
  175
  176
  177               * ( clock display mode
  178               * ( clock display format
  179               * ( date format
  180               * ( reschedule unacknowledged
  181               * repeat alarms mode
  182               * ( delete acknowledged non-repeat
  183               * alarms mode
  184
  185               * ( number of decimal digits
  186               * must start on nibble boundary
  187               * ( number display format
  188               * must start on nibble boundary
  189               * ( radix mark
  190               * ( multi-line display mode
  191               * ( show precedence mode
  192               * ( zero out tiny matrix elements
  193
  194               * ( last arguments mode
  195               * ( error beep mode
  196               * ( alarm beep mode
  197               * ( verbose display mode
  198               * ( variable name only mode
  199               * ( 3-way alpha mode
  200               * ( 3-way user keys mode
  201               * ( user keys mode
  202               * ( special parser mode
  203               * ( index wraparound indicator
  204
  205
  206               * ASSEMBLE
  207               SolutionsFl  EQU 1
  208               ConstantsFl  EQU 2
  209               ResultsFl    EQU 3
  210               CarefulFl    EQU 4
  211
  212               BinWordSFl1  EQU 5      must start on a nibble boundary
  213               BinWordSBCt  EQU 6      number of bits
  214               BinBaseFl1   EQU 11     must follow "BinWordSFl6"
  215               BinBaseBCt   EQU 2      number of bits
  216
  217               ComVecDiFl1  EQU 15
  218               ComVecDiBCt  EQU 2      number of bits
  219               AngleFl1     EQU 17     must start on a nibble boundary
  220               AngleBCt     EQU 2      number of bits
  221               Complex2DFl  EQU 19
  222               UnderfActFl  EQU 20
  223               OverfActFl   EQU 21
  224               InfResActFl  EQU 22
  225               UnderfNegFl  EQU 23
  226               UnderfPosFl  EQU 24
  227               OverflowFl   EQU 25
  228               InfResultFl  EQU 26
  229
  230               FunctPlotFl  EQU 30
  231               ConnectPtFl  EQU 31
  232               GCursorFl    EQU 32
  233               IODeviceFl   EQU 33
  234               PrintDevFl   EQU 34
  235               IODataFmtFl  EQU 35
  236               OverwriteFl  EQU 36
  237               DblSpaceFl   EQU 37
  238               NoAutoCRFl   EQU 38
  239               NoIOStsMsgFl EQU 39
  240
  241               ClockOnFl    EQU 40
  242               ClockFmtFl   EQU 41
  243               DateFmtFl    EQU 42
  244               ResRepAlmFl  EQU 43
  245               DelNRAlmFl   EQU 44
  246
  247               NumDigsFl1   EQU 45     must start on a nibble boundary
  248               NumDigsBCt   EQU 4      number of bits
  249               NumDispFl1   EQU 49     must start on a nibble boundary
  250               NumDispBCt   EQU 2      number of bits
  251               RadixFl      EQU 51
  252               MultiDispFl  EQU 52
  253               ShowPrecFl   EQU 53
  254
  255               LastArgsFl   EQU 55
  256               ErrorBeepFl  EQU 56
  257               AlarmBeepFl  EQU 57
  258               VerboseFl    EQU 58
  259               FastEqViewFl EQU 59
  260               TriAlphaFl   EQU 60
  261               TriUserFl    EQU 61
  262               UserKeysFl   EQU 62
  263               NoParseFl    EQU 63
  264               IndexWrapFl  EQU 64
  265
  266
  267
  268               AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
  269               AlarmBeepBit EQU ((AlarmBeepFl)-1)%4
  270
  271               AngleNib     EQU ((AngleFl1)-1)/4
  272               AngleBit1    EQU ((AngleFl1)-1)%4
  273               AngleBit2    EQU (AngleBit1)+1
  274
  275               BinBaseNib   EQU ((BinBaseFl1)-1)/4
  276               BinBaseBit1  EQU ((BinBaseFl1)-1)%4
  277
  278               BinWordSNib  EQU ((BinWordSFl1)-1)/4
  279               BinWordSBit1 EQU ((BinWordSFl1)-1)%4
  280
  281               CarefulNib   EQU ((CarefulFl)-1)/4
  282               CarefulBit   EQU ((CarefulFl)-1)%4
  283
  284               ClockFmtNib  EQU ((ClockFmtFl)-1)/4
  285               ClockFmtBit  EQU ((ClockFmtFl)-1)%4
  286
  287               ClockOnNib   EQU ((ClockOnFl)-1)/4
  288               ClockOnBit   EQU ((ClockOnFl)-1)%4
  289
  290               Complex2DNib EQU ((Complex2DFl)-1)/4
  291               Complex2DBit EQU ((Complex2DFl)-1)%4
  292
  293               ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
  294               ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4
  295
  296               ConnectPtNib EQU ((ConnectPtFl)-1)/4
  297               ConnectPtBit EQU ((ConnectPtFl)-1)%4
  298
  299               ConstantsNib EQU ((ConstantsFl)-1)/4
  300               ConstantsBit EQU ((ConstantsFl)-1)%4
  301
  302               DateFmtNib   EQU ((DateFmtFl)-1)/4
  303               DateFmtBit   EQU ((DateFmtFl)-1)%4
  304
  305               DblSpaceNib  EQU ((DblSpaceFl)-1)/4
  306               DblSpaceBit  EQU ((DblSpaceFl)-1)%4
  307
  308               DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
  309               DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4
  310
  311               ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
  312               ErrorBeepBit EQU ((ErrorBeepFl)-1)%4
  313
  314               FastEViewNib EQU ((FastEqViewFl)-1)/4
  315               FastEViewBit EQU ((FastEqViewFl)-1)%4
  316
  317               FunctPlotNib EQU ((FunctPlotFl)-1)/4
  318               FunctPlotBit EQU ((FunctPlotFl)-1)%4
  319
  320               GCursorNib   EQU ((GCursorFl)-1)/4
  321               GCursorBit   EQU ((GCursorFl)-1)%4
  322
  323               IndexWrapNib EQU ((IndexWrapFl)-1)/4
  324               IndexWrapBit EQU ((IndexWrapFl)-1)%4
  325
  326               InfResActNib EQU ((InfResActFl)-1)/4
  327               InfResActBit EQU ((InfResActFl)-1)%4
  328
  329               InfResultNib EQU ((InfResultFl)-1)/4
  330               InfResultBit EQU ((InfResultFl)-1)%4
  331
  332               IODataFmtNib EQU ((IODataFmtFl)-1)/4
  333               IODataFmtBit EQU ((IODataFmtFl)-1)%4
  334
  335               IODeviceNib  EQU ((IODeviceFl)-1)/4
  336               IODeviceBit  EQU ((IODeviceFl)-1)%4
  337
  338               LastArgsNib  EQU ((LastArgsFl)-1)/4
  339               LastArgsBit  EQU ((LastArgsFl)-1)%4
  340
  341               VerboseNib   EQU ((VerboseFl)-1)/4
  342               VerboseBit   EQU ((VerboseFl)-1)%4
  343
  344               MultiDispNib EQU ((MultiDispFl)-1)/4
  345               MultiDispBit EQU ((MultiDispFl)-1)%4
  346
  347               NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
  348               NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4
  349
  350               NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
  351               NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4
  352
  353               NoParseNib   EQU ((NoParseFl)-1)/4
  354               NoParseBit   EQU ((NoParseFl)-1)%4
  355
  356               NumDigsNib   EQU ((NumDigsFl1)-1)/4
  357               NumDigsBit1  EQU ((NumDigsFl1)-1)%4
  358
  359               NumDispNib   EQU ((NumDispFl1)-1)/4
  360               NumDispBit1  EQU ((NumDispFl1)-1)%4
  361
  362               OverfActNib  EQU ((OverfActFl)-1)/4
  363               OverfActBit  EQU ((OverfActFl)-1)%4
  364
  365               OverflowNib  EQU ((OverflowFl)-1)/4
  366               OverflowBit  EQU ((OverflowFl)-1)%4
  367
  368               OverwriteNib EQU ((OverwriteFl)-1)/4
  369               OverwriteBit EQU ((OverwriteFl)-1)%4
  370
  371               PrintDevNib  EQU ((PrintDevFl)-1)/4
  372               PrintDevBit  EQU ((PrintDevFl)-1)%4
  373
  374               RadixNib     EQU ((RadixFl)-1)/4
  375               RadixBit     EQU ((RadixFl)-1)%4
  376
  377               ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
  378               ResRepAlmBit EQU ((ResRepAlmFl)-1)%4
  379
  380               ResultsNib   EQU ((ResultsFl)-1)/4
  381               ResultsBit   EQU ((ResultsFl)-1)%4
  382
  383               ShowPrecNib  EQU ((ShowPrecFl)-1)/4
  384               ShowPrecBit  EQU ((ShowPrecFl)-1)%4
  385
  386               SolutionsNib EQU ((SolutionsFl)-1)/4
  387               SolutionsBit EQU ((SolutionsFl)-1)%4
  388
  389               TriAlphaNib  EQU ((TriAlphaFl)-1)/4
  390               TriAlphaBit  EQU ((TriAlphaFl)-1)%4
  391
  392               TriUserNib   EQU ((TriUserFl)-1)/4
  393               TriUserBit   EQU ((TriUserFl)-1)%4
  394
  395               UnderfActNib EQU ((UnderfActFl)-1)/4
  396               UnderfActBit EQU ((UnderfActFl)-1)%4
  397
  398               UnderfNegNib EQU ((UnderfNegFl)-1)/4
  399               UnderfNegBit EQU ((UnderfNegFl)-1)%4
  400
  401               UnderfPosNib EQU ((UnderfPosFl)-1)/4
  402               UnderfPosBit EQU ((UnderfPosFl)-1)%4
  403
  404               UserKeysNib  EQU ((UserKeysFl)-1)/4
  405               UserKeysBit  EQU ((UserKeysFl)-1)%4
  406
  407               * RPL
  408               * RPL
  409               * insure RPL-mode exit
  410
  411
  412               * ASSEMBLE
  413
  414
  415               nonALG EQU 8                    not-allowed-in-algebraics flag
  416               hasHELP EQU 4                   has-help-data flag
  417               hasPROMPTM EQU 4                same as above
  418               hasALIAS EQU 2                  has-algebraic-alias flag
  419               hasPDATA EQU 1                  has-parse-data flag
  420
  421
  422               hasDER EQU 8                    has-derivative flag
  423               hasINV EQU 4                    has-inverse flag
  424               hasCOLCT EQU 2                  has-COLCT-data flag
  425               hasEXPND EQU 1                  has-EXPND-data flag
  426
  427
  428               hasFORM EQU 8                   has-FORM-menu flag
  429               hasINTG EQU 4                   has-Integral-data flag
  430               hasWHERE EQU 2                  has-WHERE-code flag
  431               hasVUNS EQU 1                   has-veryunsymin-code flag
  432
  433
  434               pdEX EQU #0             general expression
  435               pdOP EQU #1             operator
  436               pdQE EQU #2             quoted expression
  437               pdQN EQU #3             quoted name
  438               pdLP EQU #4             left parenthesis
  439               pdRP EQU #5             right parenthesis
  440               pdCM EQU #6             comma (non-radix)
  441               pdEQ EQU #7             equal-sign separator
  442               pdOS0 EQU #8            optional repeat 0
  443               pdOS1 EQU #9            optional repeat 1
  444               pdOS2 EQU #A            optional repeat 2
  445               pdOS3 EQU #B            optional repeat 3
  446               pdOS4 EQU #C            optional repeat 4
  447               pdOS5 EQU #D            optional repeat 5
  448               pdOS6 EQU #E            optional repeat 6
  449               pdOS7 EQU #F            optional repeat 7
  450
  451               * RPL
  452               * RPL
  453               * insure RPL-mode exit
  454
  455
  456
  457
  458
  459
  460
  461
  462
  463
  464
  465
  466
  467
  468
  469
  470
  471               * RPL
  472               * insure RPL-mode exit
  473
  474               * RPL
  475               * insure RPL-mode exit
  476
  477
  478
  479
  480
  481
  482
  483
  484
  485               * ( for internal use only
  486
  487
  488
  489
  490
  491
  492
  493
  494
  495
  496               * ( decimal 67
  497               * ( decimal 86
  498               * ( decimal 82
  499               * ( decimal 85
  500               * ( decimal 101
  501               * ( decimal 97
  502               * ( decimal 100
  503               * ( decimal 113
  504               * ( decimal 112
  505
  506               * ( check width
  507               * ( field character width
  508
  509               * ( decimal 67
  510               * ( decimal 85
  511               * ( decimal 97
  512
  513
  514
  515
  516
  517
  518
  519
  520
  521
  522
  523
  524
  525
  526
  527
  528
  529               * RPL
  530               * insure RPL-mode exit
  531
  532               * ( decimal 66
  533               * ( decimal 67
  534               * ( decimal 69
  535               * ( decimal 82
  536               * ( decimal 83
  537               * ( decimal 84
  538               * ( decimal 85
  539               * ( decimal 86
  540               * ( decimal 87
  541
  542
  543               * ( norm-view default visible row count
  544               * ( default first row X location
  545               * ( default first row Y location
  546               * ( default row width
  547               * ( default row height
  548
  549               * ( max-view width
  550               * ( max-view height
  551               * ( max-view default visible row count
  552
  553               * ( prompt area height
  554
  555               * ( more-up/down icon width
  556
  557
  558
  559               * RPL
  560               * insure RPL-mode exit
  561
  562
  563
  564
  565
  566
  567
  568
  569
  570
  571
  572
  573
  574
  575
  576
  577
  578
  579
  580
  581
  582
  583
  584
  585
  586
  587
  588
  589
  590
  591
  592
  593
  594
  595
  596
  597
  598
  599
  600
  601
  602
  603
  604
  605
  606
  607
  608
  609
  610
  611
  612
  613
  614
  615
  616
  617
  618
  619
  620
  621
  622
  623
  624
  625
  626
  627
  628
  629
  630
  631
  632
  633
  634
  635
  636
  637
  638
  639
  640
  641
  642
  643
  644
  645
  646
  647
  648
  649
  650
  651
  652
  653
  654
  655
  656
  657
  658
  659
  660
  661
  662
  663
  664
  665
  666
  667
  668
  669
  670
  671
  672
  673
  674
  675
  676
  677
  678
  679
  680
  681
  682
  683
  684
  685
  686
  687
  688
  689
  690
  691
  692
  693
  694
  695
  696
  697
  698
  699
  700
  701
  702
  703
  704
  705
  706
  707
  708
  709
  710
  711
  712
  713
  714
  715
  716
  717
  718
  719
  720
  721
  722
  723
  724
  725
  726
  727
  728
  729
  730
  731
  732
  733
  734
  735
  736
  737
  738
  739
  740
  741
  742
  743
  744
  745
  746
  747
  748
  749
  750
  751
  752
  753
  754
  755
  756
  757
  758
  759
  760
  761
  762
  763
  764
  765
  766
  767
  768
  769
  770
  771
  772
  773
  774
  775
  776               * RPL
  777               * insure RPL-mode exit
  778
  779
  780
  781               * ( set for informations
  782               * ( set for step by step mode on
  783               * ( internal use: true if VXXL success
  784               * ( set for no gcd computations
  785               * ( set for complex mode
  786               * ( internal use:       LN->-INV[-LN]]
  787               * ( set for approx mode
  788               * ( set for TSIMP call inside SERIES
  789               * ( internal use:       modular computation
  790               * ( internal use:       testing remainder=0
  791               * ( set to allow numeric factorization
  792               * ( set for large matrices
  793               * ( set: don't simplify inside non rational operation
  794               * ( set to see i as an irrquad c=-1
  795               * ( set to disable linearity simplif.
  796               * ( set for increasing power x+1 -> 1+x
  797               * ( internal use:       sqrt not as irrquad
  798               * ( set if sin are prefered to cos
  799               * ( set for menu as choosebox
  800               * ( set if xINT is not simplified
  801               * ( set if non rigourous mode
  802               * ( set to allow silent mode switch
  803               * ( set if xLN returns LN[ABS[]]
  804
  805
  806               * ASSEMBLE
  807
  808               MultiLineFl     EQU     65
  809               MultiLineNib    EQU     ((MultiLineFl)-1)/4
  810               MultiLineBit    EQU     ((MultiLineFl)-1)%4
  811               MultiLineStringsFl      EQU     66
  812               MultiLineStringsNib     EQU     ((MultiLineStringsFl)-1)/4
  813               MultiLineStringsBit     EQU     ((MultiLineStringsFl)-1)%4
  814               DigitalClockFl  EQU     67
  815               DigitalClockNib EQU     ((DigitalClockFl)-1)/4
  816               DigitalClockBit EQU     ((DigitalClockFl)-1)%4
  817               CmdAutoIndentFl EQU     68
  818               CmdAutoIndentNib        EQU     ((CmdAutoIndentFl)-1)/4
  819               CmdAutoIndentBit        EQU     ((CmdAutoIndentFl)-1)%4
  820               FullScreenEditFl        EQU     69
  821               FullScreenEditNib       EQU     ((FullScreenEditFl)-1)/4
  822               FullScreenEditBit       EQU     ((FullScreenEditFl)-1)%4
  823               MultiLine2GROBFl        EQU     70
  824               MultiLine2GROBNib       EQU     ((MultiLine2GROBFl)-1)/4
  825               MultiLine2GROBBit       EQU     ((MultiLine2GROBFl)-1)%4
  826               DesasmWithAdrFl EQU     71
  827               DesasmWithAdrNib        EQU     ((DesasmWithAdrFl)-1)/4
  828               DesasmWithAdrBit        EQU     ((DesasmWithAdrFl)-1)%4
  829               BigFontStackFl  EQU     72
  830               BigFontStackNib EQU     ((BigFontStackFl)-1)/4
  831               BigFontStackBit EQU     ((BigFontStackFl)-1)%4
  832               BigFontCmdFl    EQU     73
  833               BigFontCmdNib   EQU     ((BigFontCmdFl)-1)/4
  834               BigFontCmdBit   EQU     ((BigFontCmdFl)-1)%4
  835               RightJustifiedStackFl   EQU     74
  836               RightJustifiedStackNib  EQU     ((RightJustifiedStackFl)-1)/4
  837               RightJustifiedStackBit  EQU     ((RightJustifiedStackFl)-1)%4
  838               KeystrokeBeepFl EQU     75
  839               KeystrokeBeepNib        EQU     ((KeystrokeBeepFl)-1)/4
  840               KeystrokeBeepBit        EQU     ((KeystrokeBeepFl)-1)%4
  841               FilerConfirmationFl     EQU     76
  842               FilerConfirmationNib    EQU     ((FilerConfirmationFl)-1)/4
  843               FilerConfirmationBit    EQU     ((FilerConfirmationFl)-1)%4
  844               FilerConfirmFl  EQU     77
  845               FilerConfirmNib EQU     ((FilerConfirmFl)-1)/4
  846               FilerConfirmBit EQU     ((FilerConfirmFl)-1)%4
  847               KernelParamFl   EQU     78
  848               KernelParamNib  EQU     ((KernelParamFl)-1)/4
  849               KernelParamBit  EQU     ((KernelParamFl)-1)%4
  850               PrettyPrintFl   EQU     79
  851               PrettyPrintNib  EQU     ((PrettyPrintFl)-1)/4
  852               PrettyPrintBit  EQU     ((PrettyPrintFl)-1)%4
  853               SmallFontEQWStackFl     EQU     80
  854               SmallFontEQWStackNib    EQU     ((SmallFontEQWStackFl)-1)/4
  855               SmallFontEQWStackBit    EQU     ((SmallFontEQWStackFl)-1)%4
  856               SmallFontEQWGrobFl      EQU     81
  857               SmallFontEQWGrobNib     EQU     ((SmallFontEQWGrobFl)-1)/4
  858               SmallFontEQWGrobBit     EQU     ((SmallFontEQWGrobFl)-1)%4
  859               SmallFontEQWEditFl      EQU     82
  860               SmallFontEQWEditNib     EQU     ((SmallFontEQWEditFl)-1)/4
  861               SmallFontEQWEditBit     EQU     ((SmallFontEQWEditFl)-1)%4
  862               GrobDisplayFl   EQU     83
  863               GrobDisplayNib  EQU     ((GrobDisplayFl)-1)/4
  864               GrobDisplayBit  EQU     ((GrobDisplayFl)-1)%4
  865               MKSmallFontMenuFl       EQU     84
  866               MKSmallFontMenuNib      EQU     ((MKSmallFontMenuFl)-1)/4
  867               MKSmallFontMenuBit      EQU     ((MKSmallFontMenuFl)-1)%4
  868               SystemRPLStackFl        EQU     85
  869               SystemRPLStackNib       EQU     ((SystemRPLStackFl)-1)/4
  870               SystemRPLStackBit       EQU     ((SystemRPLStackFl)-1)%4
  871               MASDDecompilerFl        EQU     86
  872               MASDDecompilerNib       EQU     ((MASDDecompilerFl)-1)/4
  873               MASDDecompilerBit       EQU     ((MASDDecompilerFl)-1)%4
  874               RecursiveStackFl        EQU     87
  875               RecursiveStackNib       EQU     ((RecursiveStackFl)-1)/4
  876               RecursiveStackBit       EQU     ((RecursiveStackFl)-1)%4
  877               RecursiveEditFl EQU     88
  878               RecursiveEditNib        EQU     ((RecursiveEditFl)-1)/4
  879               RecursiveEditBit        EQU     ((RecursiveEditFl)-1)%4
  880               AddressesCLEFl  EQU     89
  881               AddressesCLENib EQU     ((AddressesCLEFl)-1)/4
  882               AddressesCLEBit EQU     ((AddressesCLEFl)-1)%4
  883               SmallFontChooseFl       EQU     90
  884               SmallFontChooseNib      EQU     ((SmallFontChooseFl)-1)/4
  885               SmallFontChooseBit      EQU     ((SmallFontChooseFl)-1)%4
  886               ArrayOnlyFl     EQU     91
  887               ArrayOnlyNib    EQU     ((ArrayOnlyFl)-1)/4
  888               ArrayOnlyBit    EQU     ((ArrayOnlyFl)-1)%4
  889               MLMASDModeFl    EQU     92
  890               MLMASDModeNib   EQU     ((MLMASDModeFl)-1)/4
  891               MLMASDModeBit   EQU     ((MLMASDModeFl)-1)%4
  892               ErableHeaderFl  EQU     93
  893               ErableHeaderNib EQU     ((ErableHeaderFl)-1)/4
  894               ErableHeaderBit EQU     ((ErableHeaderFl)-1)%4
  895               AutoSaveFl      EQU     94
  896               AutoSaveNib     EQU     ((AutoSaveFl)-1)/4
  897               AutoSaveBit     EQU     ((AutoSaveFl)-1)%4
  898               AlgebraicModeFl EQU     95
  899               AlgebraicModeNib        EQU     ((AlgebraicModeFl)-1)/4
  900               AlgebraicModeBit        EQU     ((AlgebraicModeFl)-1)%4
  901               MenuOnFl        EQU     96
  902               MenuOnNib       EQU     ((MenuOnFl)-1)/4
  903               MenuOnBit       EQU     ((MenuOnFl)-1)%4
  904               VerticalListFl  EQU     97
  905               VerticalListNib EQU     ((VerticalListFl)-1)/4
  906               VerticalListBit EQU     ((VerticalListFl)-1)%4
  907               VerticalVectorFl        EQU     98
  908               VerticalVectorNib       EQU     ((VerticalVectorFl)-1)/4
  909               VerticalVectorBit       EQU     ((VerticalVectorFl)-1)%4
  910
  911
  912               ComplexFl       EQU     103
  913               ComplexNib      EQU     ((ComplexFl)-1)/4
  914               ComplexBit      EQU     ((ComplexFl)-1)%4
  915
  916
  917               ExactModeFl     EQU     105
  918               ExactModeNib    EQU     ((ExactModeFl)-1)/4
  919               ExactModeBit    EQU     ((ExactModeFl)-1)%4
  920
  921
  922               * RPL
  923
  924
  925
  926               * ASSEMBLE
  927                       SETLIST CODE, INCLUDE, PSEUDO
  928               * RPL
  929
  930               *|| Resuming file MainMDF.s at line 6
  931
  932 00000 000000          CON(6)  =~xVibeM
  933 00006         =xVibeM
  934               * File  MainMDF.s       9
  935 00006 00000           CON(5)  =DOCOL
  936               *=========Header
  937               * File  MainMDF.s       11
  938 0000B 00000           CON(5)  =CK0
  939               * File  MainMDF.s       12
  940 00010 00000           CON(5)  =savefmt1
  941               * File  MainMDF.s       13
  942 00015 00000           CON(5)  =DOBINT
  943 0001A 20000           CON(5)  2
  944 0001F 00000           CON(5)  =DOSCI
  945               * File  MainMDF.s       14
  946
  947               * File  MainMDF.s       15
  948 00024 00000           CON(5)  =DOROMP
  949 00029 000000          CON(6)  =~purgeAll
  950               *============
  951               * File  MainMDF.s       17
  952
  953               * File  MainMDF.s       18
  954 0002F 00000           CON(5)  =DOREAL
  955 00034 000             NIBHEX  000
  956 00037 0000000         NIBHEX  000000000000
            00000
  957 00043 0               NIBHEX  0
  958 00044 00000           CON(5)  =DOIDNT
  959 00049 30              CON(2)  3
  960 0004B 354464          NIBASC  \SDF\
  961 00051 00000           CON(5)  =CREATE
  962               * File  MainMDF.s       19
  963 00056 00000           CON(5)  =DOROMP
  964 0005B 000000          CON(6)  =~Welcome
  965               * File  MainMDF.s       20
  966 00061 00000           CON(5)  =DOROMP
  967 00066 000000          CON(6)  =~KMmenu
  968               * MENU
  969               * File  MainMDF.s       21
  970
  971               * File  MainMDF.s       22
  972 0006C 00000           CON(5)  =IT
  973 00071 00000           CON(5)  =DOCOL
  974               * File  MainMDF.s       23
  975
  976               * File  MainMDF.s       24
  977 00076 00000           CON(5)  =DOLIST
  978 0007B 00000           CON(5)  =DOLAM
  979 00080 20              CON(2)  2
  980 00082 B613            NIBASC  \k1\
  981 00086 00000           CON(5)  =DOLAM
  982 0008B 20              CON(2)  2
  983 0008D B623            NIBASC  \k2\
  984 00091 00000           CON(5)  =DOLAM
  985 00096 20              CON(2)  2
  986 00098 B633            NIBASC  \k3\
  987 0009C 00000           CON(5)  =DOLAM
  988 000A1 20              CON(2)  2
  989 000A3 B643            NIBASC  \k4\
  990 000A7 00000           CON(5)  =DOLAM
  991 000AC 20              CON(2)  2
  992 000AE B653            NIBASC  \k5\
  993 000B2 00000           CON(5)  =DOLAM
  994 000B7 20              CON(2)  2
  995 000B9 B663            NIBASC  \k6\
  996 000BD 00000           CON(5)  =DOLAM
  997 000C2 20              CON(2)  2
  998 000C4 D613            NIBASC  \m1\
  999 000C8 00000           CON(5)  =DOLAM
 1000 000CD 20              CON(2)  2
 1001 000CF D623            NIBASC  \m2\
 1002 000D3 00000           CON(5)  =DOLAM
 1003 000D8 20              CON(2)  2
 1004 000DA D633            NIBASC  \m3\
 1005 000DE 00000           CON(5)  =SEMI
 1006 000E3 00000           CON(5)  =BIND
 1007               * File  MainMDF.s       25
 1008
 1009               * File  MainMDF.s       26
 1010               * M matrix
 1011               * File  MainMDF.s       27
 1012 000E8 00000           CON(5)  =DOLAM
 1013 000ED 20              CON(2)  2
 1014 000EF D613            NIBASC  \m1\
 1015 000F3 00000           CON(5)  =%0
 1016 000F8 00000           CON(5)  =%0
 1017               * File  MainMDF.s       28
 1018 000FD 00000           CON(5)  =%0
 1019 00102 00000           CON(5)  =DOLAM
 1020 00107 20              CON(2)  2
 1021 00109 D623            NIBASC  \m2\
 1022 0010D 00000           CON(5)  =%0
 1023               * File  MainMDF.s       29
 1024 00112 00000           CON(5)  =%0
 1025 00117 00000           CON(5)  =%0
 1026 0011C 00000           CON(5)  =DOLAM
 1027 00121 20              CON(2)  2
 1028 00123 D633            NIBASC  \m3\
 1029               * File  MainMDF.s       30
 1030 00127 00000           CON(5)  =DOLIST
 1031 0012C 00000           CON(5)  =DOREAL
 1032 00131 000             NIBHEX  000
 1033 00134 0000000         NIBHEX  000000000003
            00003
 1034 00140 0               NIBHEX  0
 1035 00141 00000           CON(5)  =DOREAL
 1036 00146 000             NIBHEX  000
 1037 00149 0000000         NIBHEX  000000000003
            00003
 1038 00155 0               NIBHEX  0
 1039 00156 00000           CON(5)  =SEMI
 1040 0015B 00000           CON(5)  =DOFLASHP
 1041 00160 0000000         CON(7)  =^XEQ>ARRY
 1042               * File  MainMDF.s       31
 1043
 1044               * File  MainMDF.s       32
 1045 00167 00000           CON(5)  =DOLAM
 1046 0016C 20              CON(2)  2
 1047 0016E B613            NIBASC  \k1\
 1048 00172 00000           CON(5)  =DOLAM
 1049 00177 20              CON(2)  2
 1050 00179 B623            NIBASC  \k2\
 1051 0017D 00000           CON(5)  =%+
 1052 00182 00000           CON(5)  =DOLAM
 1053 00187 20              CON(2)  2
 1054 00189 B633            NIBASC  \k3\
 1055 0018D 00000           CON(5)  =%+
 1056               * File  MainMDF.s       33
 1057 00192 00000           CON(5)  =DOLAM
 1058 00197 20              CON(2)  2
 1059 00199 B623            NIBASC  \k2\
 1060 0019D 00000           CON(5)  =DOREAL
 1061 001A2 000             NIBHEX  000
 1062 001A5 0000000         NIBHEX  000000000001
            00001
 1063 001B1 9               NIBHEX  9
 1064 001B2 00000           CON(5)  =%*
 1065               * File  MainMDF.s       34
 1066 001B7 00000           CON(5)  =DOLAM
 1067 001BC 20              CON(2)  2
 1068 001BE B633            NIBASC  \k3\
 1069 001C2 00000           CON(5)  =DOREAL
 1070 001C7 000             NIBHEX  000
 1071 001CA 0000000         NIBHEX  000000000001
            00001
 1072 001D6 9               NIBHEX  9
 1073 001D7 00000           CON(5)  =%*
 1074               * File  MainMDF.s       35
 1075 001DC 00000           CON(5)  =DOLAM
 1076 001E1 20              CON(2)  2
 1077 001E3 B623            NIBASC  \k2\
 1078 001E7 00000           CON(5)  =DOREAL
 1079 001EC 000             NIBHEX  000
 1080 001EF 0000000         NIBHEX  000000000001
            00001
 1081 001FB 9               NIBHEX  9
 1082 001FC 00000           CON(5)  =%*
 1083               * File  MainMDF.s       36
 1084 00201 00000           CON(5)  =DOLAM
 1085 00206 20              CON(2)  2
 1086 00208 B623            NIBASC  \k2\
 1087 0020C 00000           CON(5)  =DOLAM
 1088 00211 20              CON(2)  2
 1089 00213 B643            NIBASC  \k4\
 1090 00217 00000           CON(5)  =%+
 1091 0021C 00000           CON(5)  =DOLAM
 1092 00221 20              CON(2)  2
 1093 00223 B663            NIBASC  \k6\
 1094 00227 00000           CON(5)  =%+
 1095               * File  MainMDF.s       37
 1096 0022C 00000           CON(5)  =DOLAM
 1097 00231 20              CON(2)  2
 1098 00233 B643            NIBASC  \k4\
 1099 00237 00000           CON(5)  =DOREAL
 1100 0023C 000             NIBHEX  000
 1101 0023F 0000000         NIBHEX  000000000001
            00001
 1102 0024B 9               NIBHEX  9
 1103 0024C 00000           CON(5)  =%*
 1104               * File  MainMDF.s       38
 1105 00251 00000           CON(5)  =DOLAM
 1106 00256 20              CON(2)  2
 1107 00258 B633            NIBASC  \k3\
 1108 0025C 00000           CON(5)  =DOREAL
 1109 00261 000             NIBHEX  000
 1110 00264 0000000         NIBHEX  000000000001
            00001
 1111 00270 9               NIBHEX  9
 1112 00271 00000           CON(5)  =%*
 1113               * File  MainMDF.s       39
 1114 00276 00000           CON(5)  =DOLAM
 1115 0027B 20              CON(2)  2
 1116 0027D B643            NIBASC  \k4\
 1117 00281 00000           CON(5)  =DOREAL
 1118 00286 000             NIBHEX  000
 1119 00289 0000000         NIBHEX  000000000001
            00001
 1120 00295 9               NIBHEX  9
 1121 00296 00000           CON(5)  =%*
 1122               * File  MainMDF.s       40
 1123 0029B 00000           CON(5)  =DOLAM
 1124 002A0 20              CON(2)  2
 1125 002A2 B643            NIBASC  \k4\
 1126 002A6 00000           CON(5)  =DOLAM
 1127 002AB 20              CON(2)  2
 1128 002AD B653            NIBASC  \k5\
 1129 002B1 00000           CON(5)  =%+
 1130 002B6 00000           CON(5)  =DOLAM
 1131 002BB 20              CON(2)  2
 1132 002BD B633            NIBASC  \k3\
 1133 002C1 00000           CON(5)  =%+
 1134               * File  MainMDF.s       41
 1135 002C6 00000           CON(5)  =DOLIST
 1136 002CB 00000           CON(5)  =DOREAL
 1137 002D0 000             NIBHEX  000
 1138 002D3 0000000         NIBHEX  000000000003
            00003
 1139 002DF 0               NIBHEX  0
 1140 002E0 00000           CON(5)  =DOREAL
 1141 002E5 000             NIBHEX  000
 1142 002E8 0000000         NIBHEX  000000000003
            00003
 1143 002F4 0               NIBHEX  0
 1144 002F5 00000           CON(5)  =SEMI
 1145 002FA 00000           CON(5)  =DOFLASHP
 1146 002FF 0000000         CON(7)  =^XEQ>ARRY
 1147               * File  MainMDF.s       42
 1148 00306 00000           CON(5)  =DOLIST
 1149 0030B 00000           CON(5)  =DOLAM
 1150 00310 10              CON(2)  1
 1151 00312 D4              NIBASC  \M\
 1152 00314 00000           CON(5)  =DOLAM
 1153 00319 10              CON(2)  1
 1154 0031B B4              NIBASC  \K\
 1155 0031D 00000           CON(5)  =SEMI
 1156 00322 00000           CON(5)  =BIND
 1157               * File  MainMDF.s       43
 1158
 1159               * File  MainMDF.s       44
 1160               * Caclculate omega and X
 1161               * File  MainMDF.s       45
 1162 00327 00000           CON(5)  =DOLAM
 1163 0032C 10              CON(2)  1
 1164 0032E D4              NIBASC  \M\
 1165               * File  MainMDF.s       46
 1166 00330 00000           CON(5)  =DOFLASHP
 1167 00335 0000000         CON(7)  =^MATINV
 1168               * File  MainMDF.s       47
 1169 0033C 00000           CON(5)  =DOLAM
 1170 00341 10              CON(2)  1
 1171 00343 B4              NIBASC  \K\
 1172               * File  MainMDF.s       48
 1173 00345 00000           CON(5)  =DOFLASHP
 1174 0034A 0000000         CON(7)  =^MAT*
 1175               * File  MainMDF.s       49
 1176 00351 00000           CON(5)  =DOFLASHP
 1177 00356 0000000         CON(7)  =^MATEGV
 1178               * File  MainMDF.s       50
 1179 0035D 00000           CON(5)  =DOLIST
 1180 00362 00000           CON(5)  =DOLAM
 1181 00367 10              CON(2)  1
 1182 00369 87              NIBASC  \x\
 1183 0036B 00000           CON(5)  =DOLAM
 1184 00370 60              CON(2)  6
 1185 00372 C416D62         NIBASC  \Lambda\
            64616
 1186 0037E 00000           CON(5)  =SEMI
 1187 00383 00000           CON(5)  =BIND
 1188               * File  MainMDF.s       51
 1189 00388 00000           CON(5)  =DOLAM
 1190 0038D 60              CON(2)  6
 1191 0038F C416D62         NIBASC  \Lambda\
            64616
 1192               * File  MainMDF.s       52
 1193 0039B 00000           CON(5)  =DOFLASHP
 1194 003A0 0000000         CON(7)  =^XEQARRY>
 1195 003A7 00000           CON(5)  =DROP
 1196               * File  MainMDF.s       53
 1197 003AC 00000           CON(5)  =DOLIST
 1198 003B1 00000           CON(5)  =DOLAM
 1199 003B6 20              CON(2)  2
 1200 003B8 7713            NIBASC  \w1\
 1201 003BC 00000           CON(5)  =DOLAM
 1202 003C1 20              CON(2)  2
 1203 003C3 7723            NIBASC  \w2\
 1204 003C7 00000           CON(5)  =DOLAM
 1205 003CC 20              CON(2)  2
 1206 003CE 7733            NIBASC  \w3\
 1207 003D2 00000           CON(5)  =SEMI
 1208 003D7 00000           CON(5)  =BIND
 1209               * File  MainMDF.s       54
 1210
 1211               * File  MainMDF.s       55
 1212               * OMEGA
 1213               * File  MainMDF.s       56
 1214 003DC 00000           CON(5)  =DOLAM
 1215 003E1 20              CON(2)  2
 1216 003E3 7713            NIBASC  \w1\
 1217 003E7 00000           CON(5)  =DOREAL
 1218 003EC 999             NIBHEX  999
 1219 003EF 0000000         NIBHEX  000000000005
            00005
 1220 003FB 0               NIBHEX  0
 1221 003FC 00000           CON(5)  =%^
 1222 00401 00000           CON(5)  =a%>$
 1223 00406 00000           CON(5)  =DOIDNT
 1224 0040B 20              CON(2)  2
 1225 0040D 7713            NIBASC  \w1\
 1226 00411 00000           CON(5)  =CREATE
 1227               * File  MainMDF.s       57
 1228 00416 00000           CON(5)  =DOLAM
 1229 0041B 20              CON(2)  2
 1230 0041D 7723            NIBASC  \w2\
 1231 00421 00000           CON(5)  =DOREAL
 1232 00426 999             NIBHEX  999
 1233 00429 0000000         NIBHEX  000000000005
            00005
 1234 00435 0               NIBHEX  0
 1235 00436 00000           CON(5)  =%^
 1236 0043B 00000           CON(5)  =a%>$
 1237 00440 00000           CON(5)  =DOIDNT
 1238 00445 20              CON(2)  2
 1239 00447 7723            NIBASC  \w2\
 1240 0044B 00000           CON(5)  =CREATE
 1241               * File  MainMDF.s       58
 1242 00450 00000           CON(5)  =DOLAM
 1243 00455 20              CON(2)  2
 1244 00457 7733            NIBASC  \w3\
 1245 0045B 00000           CON(5)  =DOREAL
 1246 00460 999             NIBHEX  999
 1247 00463 0000000         NIBHEX  000000000005
            00005
 1248 0046F 0               NIBHEX  0
 1249 00470 00000           CON(5)  =%^
 1250 00475 00000           CON(5)  =a%>$
 1251 0047A 00000           CON(5)  =DOIDNT
 1252 0047F 20              CON(2)  2
 1253 00481 7733            NIBASC  \w3\
 1254 00485 00000           CON(5)  =CREATE
 1255               * File  MainMDF.s       59
 1256
 1257               * File  MainMDF.s       60
 1258
 1259               * File  MainMDF.s       61
 1260               * VECTOR TO STR
 1261               * File  MainMDF.s       62
 1262 0048A 00000           CON(5)  =DOLAM
 1263 0048F 10              CON(2)  1
 1264 00491 B4              NIBASC  \K\
 1265               * File  MainMDF.s       63
 1266 00493 00000           CON(5)  =DOFLASHP
 1267 00498 0000000         CON(7)  =^MATTRAN
 1268               * File  MainMDF.s       64
 1269 0049F 00000           CON(5)  =DOFLASHP
 1270 004A4 0000000         CON(7)  =^XEQARRY>
 1271 004AB 00000           CON(5)  =DROP
 1272               * File  MainMDF.s       65
 1273 004B0 00000           CON(5)  =DOLIST
 1274 004B5 00000           CON(5)  =DOREAL
 1275 004BA 000             NIBHEX  000
 1276 004BD 0000000         NIBHEX  000000000003
            00003
 1277 004C9 0               NIBHEX  0
 1278 004CA 00000           CON(5)  =DOREAL
 1279 004CF 000             NIBHEX  000
 1280 004D2 0000000         NIBHEX  000000000001
            00001
 1281 004DE 0               NIBHEX  0
 1282 004DF 00000           CON(5)  =SEMI
 1283 004E4 00000           CON(5)  =DOFLASHP
 1284 004E9 0000000         CON(7)  =^XEQ>ARRY
 1285               * File  MainMDF.s       66
 1286 004F0 00000           CON(5)  =DOLIST
 1287 004F5 00000           CON(5)  =DOLAM
 1288 004FA 20              CON(2)  2
 1289 004FC B433            NIBASC  \K3\
 1290 00500 00000           CON(5)  =SEMI
 1291 00505 00000           CON(5)  =BIND
 1292               * File  MainMDF.s       67
 1293 0050A 00000           CON(5)  =DOLIST
 1294 0050F 00000           CON(5)  =DOREAL
 1295 00514 000             NIBHEX  000
 1296 00517 0000000         NIBHEX  000000000003
            00003
 1297 00523 0               NIBHEX  0
 1298 00524 00000           CON(5)  =DOREAL
 1299 00529 000             NIBHEX  000
 1300 0052C 0000000         NIBHEX  000000000001
            00001
 1301 00538 0               NIBHEX  0
 1302 00539 00000           CON(5)  =SEMI
 1303 0053E 00000           CON(5)  =DOFLASHP
 1304 00543 0000000         CON(7)  =^XEQ>ARRY
 1305               * File  MainMDF.s       68
 1306 0054A 00000           CON(5)  =DOLIST
 1307 0054F 00000           CON(5)  =DOLAM
 1308 00554 20              CON(2)  2
 1309 00556 B423            NIBASC  \K2\
 1310 0055A 00000           CON(5)  =SEMI
 1311 0055F 00000           CON(5)  =BIND
 1312               * File  MainMDF.s       69
 1313 00564 00000           CON(5)  =DOLIST
 1314 00569 00000           CON(5)  =DOREAL
 1315 0056E 000             NIBHEX  000
 1316 00571 0000000         NIBHEX  000000000003
            00003
 1317 0057D 0               NIBHEX  0
 1318 0057E 00000           CON(5)  =DOREAL
 1319 00583 000             NIBHEX  000
 1320 00586 0000000         NIBHEX  000000000001
            00001
 1321 00592 0               NIBHEX  0
 1322 00593 00000           CON(5)  =SEMI
 1323 00598 00000           CON(5)  =DOFLASHP
 1324 0059D 0000000         CON(7)  =^XEQ>ARRY
 1325               * File  MainMDF.s       70
 1326 005A4 00000           CON(5)  =DOLIST
 1327 005A9 00000           CON(5)  =DOLAM
 1328 005AE 20              CON(2)  2
 1329 005B0 B413            NIBASC  \K1\
 1330 005B4 00000           CON(5)  =SEMI
 1331 005B9 00000           CON(5)  =BIND
 1332               * File  MainMDF.s       71
 1333
 1334               * File  MainMDF.s       72
 1335 005BE 00000           CON(5)  =DOLAM
 1336 005C3 20              CON(2)  2
 1337 005C5 B413            NIBASC  \K1\
 1338 005C9 00000           CON(5)  =DOFLASHP
 1339 005CE 0000000         CON(7)  =^XEQARRY>
 1340 005D5 00000           CON(5)  =DROP
 1341               * File  MainMDF.s       73
 1342 005DA 00000           CON(5)  =a%>$
 1343 005DF 00000           CON(5)  =UNROT
 1344 005E4 00000           CON(5)  =a%>$
 1345 005E9 00000           CON(5)  =UNROT
 1346 005EE 00000           CON(5)  =a%>$
 1347 005F3 00000           CON(5)  =UNROT
 1348               * File  MainMDF.s       74
 1349 005F8 00000           CON(5)  =DOIDNT
 1350 005FD 40              CON(2)  4
 1351 005FF B413373         NIBASC  \K1s3\
            3
 1352 00607 00000           CON(5)  =CREATE
 1353 0060C 00000           CON(5)  =DOIDNT
 1354 00611 40              CON(2)  4
 1355 00613 B413372         NIBASC  \K1s2\
            3
 1356 0061B 00000           CON(5)  =CREATE
 1357 00620 00000           CON(5)  =DOIDNT
 1358 00625 40              CON(2)  4
 1359 00627 B413371         NIBASC  \K1s1\
            3
 1360 0062F 00000           CON(5)  =CREATE
 1361               * File  MainMDF.s       75
 1362
 1363               * File  MainMDF.s       76
 1364 00634 00000           CON(5)  =DOLAM
 1365 00639 20              CON(2)  2
 1366 0063B B423            NIBASC  \K2\
 1367 0063F 00000           CON(5)  =DOFLASHP
 1368 00644 0000000         CON(7)  =^XEQARRY>
 1369 0064B 00000           CON(5)  =DROP
 1370               * File  MainMDF.s       77
 1371 00650 00000           CON(5)  =a%>$
 1372 00655 00000           CON(5)  =UNROT
 1373 0065A 00000           CON(5)  =a%>$
 1374 0065F 00000           CON(5)  =UNROT
 1375 00664 00000           CON(5)  =a%>$
 1376 00669 00000           CON(5)  =UNROT
 1377               * File  MainMDF.s       78
 1378 0066E 00000           CON(5)  =DOIDNT
 1379 00673 40              CON(2)  4
 1380 00675 B423373         NIBASC  \K2s3\
            3
 1381 0067D 00000           CON(5)  =CREATE
 1382 00682 00000           CON(5)  =DOIDNT
 1383 00687 40              CON(2)  4
 1384 00689 B423372         NIBASC  \K2s2\
            3
 1385 00691 00000           CON(5)  =CREATE
 1386 00696 00000           CON(5)  =DOIDNT
 1387 0069B 40              CON(2)  4
 1388 0069D B423371         NIBASC  \K2s1\
            3
 1389 006A5 00000           CON(5)  =CREATE
 1390               * File  MainMDF.s       79
 1391
 1392               * File  MainMDF.s       80
 1393 006AA 00000           CON(5)  =DOLAM
 1394 006AF 20              CON(2)  2
 1395 006B1 B433            NIBASC  \K3\
 1396 006B5 00000           CON(5)  =DOFLASHP
 1397 006BA 0000000         CON(7)  =^XEQARRY>
 1398 006C1 00000           CON(5)  =DROP
 1399               * File  MainMDF.s       81
 1400 006C6 00000           CON(5)  =a%>$
 1401 006CB 00000           CON(5)  =UNROT
 1402 006D0 00000           CON(5)  =a%>$
 1403 006D5 00000           CON(5)  =UNROT
 1404 006DA 00000           CON(5)  =a%>$
 1405 006DF 00000           CON(5)  =UNROT
 1406               * File  MainMDF.s       82
 1407 006E4 00000           CON(5)  =DOIDNT
 1408 006E9 40              CON(2)  4
 1409 006EB B433373         NIBASC  \K3s3\
            3
 1410 006F3 00000           CON(5)  =CREATE
 1411 006F8 00000           CON(5)  =DOIDNT
 1412 006FD 40              CON(2)  4
 1413 006FF B433372         NIBASC  \K3s2\
            3
 1414 00707 00000           CON(5)  =CREATE
 1415 0070C 00000           CON(5)  =DOIDNT
 1416 00711 40              CON(2)  4
 1417 00713 B433371         NIBASC  \K3s1\
            3
 1418 0071B 00000           CON(5)  =CREATE
 1419               * File  MainMDF.s       83
 1420
 1421               * File  MainMDF.s       84
 1422 00720 00000           CON(5)  =DOROMP
 1423 00725 000000          CON(6)  =~MTV1
 1424 0072B 00000           CON(5)  =DROP
 1425               * Secund menu
 1426               * File  MainMDF.s       85
 1427
 1428               * File  MainMDF.s       86
 1429
 1430               * File  MainMDF.s       87
 1431 00730 00000           CON(5)  =DOLAM
 1432 00735 10              CON(2)  1
 1433 00737 87              NIBASC  \x\
 1434               * File  MainMDF.s       88
 1435 00739 00000           CON(5)  =DOFLASHP
 1436 0073E 0000000         CON(7)  =^MATTRAN
 1437               * File  MainMDF.s       89
 1438 00745 00000           CON(5)  =DOFLASHP
 1439 0074A 0000000         CON(7)  =^XEQARRY>
 1440 00751 00000           CON(5)  =DROP
 1441               * File  MainMDF.s       90
 1442 00756 00000           CON(5)  =DOLIST
 1443 0075B 00000           CON(5)  =DOREAL
 1444 00760 000             NIBHEX  000
 1445 00763 0000000         NIBHEX  000000000003
            00003
 1446 0076F 0               NIBHEX  0
 1447 00770 00000           CON(5)  =DOREAL
 1448 00775 000             NIBHEX  000
 1449 00778 0000000         NIBHEX  000000000001
            00001
 1450 00784 0               NIBHEX  0
 1451 00785 00000           CON(5)  =SEMI
 1452 0078A 00000           CON(5)  =DOFLASHP
 1453 0078F 0000000         CON(7)  =^XEQ>ARRY
 1454               * File  MainMDF.s       91
 1455 00796 00000           CON(5)  =DOLIST
 1456 0079B 00000           CON(5)  =DOLAM
 1457 007A0 20              CON(2)  2
 1458 007A2 8533            NIBASC  \X3\
 1459 007A6 00000           CON(5)  =SEMI
 1460 007AB 00000           CON(5)  =BIND
 1461               * File  MainMDF.s       92
 1462 007B0 00000           CON(5)  =DOLIST
 1463 007B5 00000           CON(5)  =DOREAL
 1464 007BA 000             NIBHEX  000
 1465 007BD 0000000         NIBHEX  000000000003
            00003
 1466 007C9 0               NIBHEX  0
 1467 007CA 00000           CON(5)  =DOREAL
 1468 007CF 000             NIBHEX  000
 1469 007D2 0000000         NIBHEX  000000000001
            00001
 1470 007DE 0               NIBHEX  0
 1471 007DF 00000           CON(5)  =SEMI
 1472 007E4 00000           CON(5)  =DOFLASHP
 1473 007E9 0000000         CON(7)  =^XEQ>ARRY
 1474               * File  MainMDF.s       93
 1475 007F0 00000           CON(5)  =DOLIST
 1476 007F5 00000           CON(5)  =DOLAM
 1477 007FA 20              CON(2)  2
 1478 007FC 8523            NIBASC  \X2\
 1479 00800 00000           CON(5)  =SEMI
 1480 00805 00000           CON(5)  =BIND
 1481               * File  MainMDF.s       94
 1482 0080A 00000           CON(5)  =DOLIST
 1483 0080F 00000           CON(5)  =DOREAL
 1484 00814 000             NIBHEX  000
 1485 00817 0000000         NIBHEX  000000000003
            00003
 1486 00823 0               NIBHEX  0
 1487 00824 00000           CON(5)  =DOREAL
 1488 00829 000             NIBHEX  000
 1489 0082C 0000000         NIBHEX  000000000001
            00001
 1490 00838 0               NIBHEX  0
 1491 00839 00000           CON(5)  =SEMI
 1492 0083E 00000           CON(5)  =DOFLASHP
 1493 00843 0000000         CON(7)  =^XEQ>ARRY
 1494               * File  MainMDF.s       95
 1495 0084A 00000           CON(5)  =DOLIST
 1496 0084F 00000           CON(5)  =DOLAM
 1497 00854 20              CON(2)  2
 1498 00856 8513            NIBASC  \X1\
 1499 0085A 00000           CON(5)  =SEMI
 1500 0085F 00000           CON(5)  =BIND
 1501               * File  MainMDF.s       96
 1502
 1503               * File  MainMDF.s       97
 1504 00864 00000           CON(5)  =DOLAM
 1505 00869 20              CON(2)  2
 1506 0086B 8513            NIBASC  \X1\
 1507 0086F 00000           CON(5)  =DOLAM
 1508 00874 20              CON(2)  2
 1509 00876 8513            NIBASC  \X1\
 1510 0087A 00000           CON(5)  =DOFLASHP
 1511 0087F 0000000         CON(7)  =^MATTRAN
 1512 00886 00000           CON(5)  =DOLAM
 1513 0088B 10              CON(2)  1
 1514 0088D D4              NIBASC  \M\
 1515 0088F 00000           CON(5)  =DOFLASHP
 1516 00894 0000000         CON(7)  =^MAT*
 1517 0089B 00000           CON(5)  =DOLAM
 1518 008A0 20              CON(2)  2
 1519 008A2 8513            NIBASC  \X1\
 1520 008A6 00000           CON(5)  =DOFLASHP
 1521 008AB 0000000         CON(7)  =^MAT*
 1522 008B2 00000           CON(5)  =DOFLASHP
 1523 008B7 0000000         CON(7)  =^XEQARRY>
 1524 008BE 00000           CON(5)  =DROP
 1525 008C3 00000           CON(5)  =DOREAL
 1526 008C8 999             NIBHEX  999
 1527 008CB 0000000         NIBHEX  000000000005
            00005
 1528 008D7 0               NIBHEX  0
 1529 008D8 00000           CON(5)  =%^
 1530 008DD 00000           CON(5)  =DOFLASHP
 1531 008E2 0000000         CON(7)  =^MAT/SCL
 1532               * File  MainMDF.s       98
 1533 008E9 00000           CON(5)  =DOLAM
 1534 008EE 20              CON(2)  2
 1535 008F0 8523            NIBASC  \X2\
 1536 008F4 00000           CON(5)  =DOLAM
 1537 008F9 20              CON(2)  2
 1538 008FB 8523            NIBASC  \X2\
 1539 008FF 00000           CON(5)  =DOFLASHP
 1540 00904 0000000         CON(7)  =^MATTRAN
 1541 0090B 00000           CON(5)  =DOLAM
 1542 00910 10              CON(2)  1
 1543 00912 D4              NIBASC  \M\
 1544 00914 00000           CON(5)  =DOFLASHP
 1545 00919 0000000         CON(7)  =^MAT*
 1546 00920 00000           CON(5)  =DOLAM
 1547 00925 20              CON(2)  2
 1548 00927 8523            NIBASC  \X2\
 1549 0092B 00000           CON(5)  =DOFLASHP
 1550 00930 0000000         CON(7)  =^MAT*
 1551 00937 00000           CON(5)  =DOFLASHP
 1552 0093C 0000000         CON(7)  =^XEQARRY>
 1553 00943 00000           CON(5)  =DROP
 1554 00948 00000           CON(5)  =DOREAL
 1555 0094D 999             NIBHEX  999
 1556 00950 0000000         NIBHEX  000000000005
            00005
 1557 0095C 0               NIBHEX  0
 1558 0095D 00000           CON(5)  =%^
 1559 00962 00000           CON(5)  =DOFLASHP
 1560 00967 0000000         CON(7)  =^MAT/SCL
 1561               * File  MainMDF.s       99
 1562 0096E 00000           CON(5)  =DOLAM
 1563 00973 20              CON(2)  2
 1564 00975 8533            NIBASC  \X3\
 1565 00979 00000           CON(5)  =DOLAM
 1566 0097E 20              CON(2)  2
 1567 00980 8533            NIBASC  \X3\
 1568 00984 00000           CON(5)  =DOFLASHP
 1569 00989 0000000         CON(7)  =^MATTRAN
 1570 00990 00000           CON(5)  =DOLAM
 1571 00995 10              CON(2)  1
 1572 00997 D4              NIBASC  \M\
 1573 00999 00000           CON(5)  =DOFLASHP
 1574 0099E 0000000         CON(7)  =^MAT*
 1575 009A5 00000           CON(5)  =DOLAM
 1576 009AA 20              CON(2)  2
 1577 009AC 8533            NIBASC  \X3\
 1578 009B0 00000           CON(5)  =DOFLASHP
 1579 009B5 0000000         CON(7)  =^MAT*
 1580 009BC 00000           CON(5)  =DOFLASHP
 1581 009C1 0000000         CON(7)  =^XEQARRY>
 1582 009C8 00000           CON(5)  =DROP
 1583 009CD 00000           CON(5)  =DOREAL
 1584 009D2 999             NIBHEX  999
 1585 009D5 0000000         NIBHEX  000000000005
            00005
 1586 009E1 0               NIBHEX  0
 1587 009E2 00000           CON(5)  =%^
 1588 009E7 00000           CON(5)  =DOFLASHP
 1589 009EC 0000000         CON(7)  =^MAT/SCL
 1590               * File  MainMDF.s       100
 1591
 1592               * File  MainMDF.s       101
 1593
 1594               * File  MainMDF.s       102
 1595 009F3 00000           CON(5)  =DOLIST
 1596 009F8 00000           CON(5)  =DOLAM
 1597 009FD 30              CON(2)  3
 1598 009FF E68513          NIBASC  \nX1\
 1599 00A05 00000           CON(5)  =DOLAM
 1600 00A0A 30              CON(2)  3
 1601 00A0C E68523          NIBASC  \nX2\
 1602 00A12 00000           CON(5)  =DOLAM
 1603 00A17 30              CON(2)  3
 1604 00A19 E68533          NIBASC  \nX3\
 1605 00A1F 00000           CON(5)  =SEMI
 1606 00A24 00000           CON(5)  =BIND
 1607               * File  MainMDF.s       103
 1608
 1609               * File  MainMDF.s       104
 1610
 1611               * File  MainMDF.s       105
 1612
 1613               * File  MainMDF.s       106
 1614               * VECTOR TO STR
 1615               * File  MainMDF.s       107
 1616 00A29 00000           CON(5)  =DOLAM
 1617 00A2E 20              CON(2)  2
 1618 00A30 8513            NIBASC  \X1\
 1619 00A34 00000           CON(5)  =DOROMP
 1620 00A39 000000          CON(6)  =~VectorToSTR
 1621               * File  MainMDF.s       108
 1622 00A3F 00000           CON(5)  =DOIDNT
 1623 00A44 40              CON(2)  4
 1624 00A46 8513373         NIBASC  \X1s3\
            3
 1625 00A4E 00000           CON(5)  =CREATE
 1626 00A53 00000           CON(5)  =DOIDNT
 1627 00A58 40              CON(2)  4
 1628 00A5A 8513372         NIBASC  \X1s2\
            3
 1629 00A62 00000           CON(5)  =CREATE
 1630 00A67 00000           CON(5)  =DOIDNT
 1631 00A6C 40              CON(2)  4
 1632 00A6E 8513371         NIBASC  \X1s1\
            3
 1633 00A76 00000           CON(5)  =CREATE
 1634               * File  MainMDF.s       109
 1635
 1636               * File  MainMDF.s       110
 1637 00A7B 00000           CON(5)  =DOLAM
 1638 00A80 20              CON(2)  2
 1639 00A82 8523            NIBASC  \X2\
 1640 00A86 00000           CON(5)  =DOROMP
 1641 00A8B 000000          CON(6)  =~VectorToSTR
 1642               * File  MainMDF.s       111
 1643 00A91 00000           CON(5)  =DOIDNT
 1644 00A96 40              CON(2)  4
 1645 00A98 8523373         NIBASC  \X2s3\
            3
 1646 00AA0 00000           CON(5)  =CREATE
 1647 00AA5 00000           CON(5)  =DOIDNT
 1648 00AAA 40              CON(2)  4
 1649 00AAC 8523372         NIBASC  \X2s2\
            3
 1650 00AB4 00000           CON(5)  =CREATE
 1651 00AB9 00000           CON(5)  =DOIDNT
 1652 00ABE 40              CON(2)  4
 1653 00AC0 8523371         NIBASC  \X2s1\
            3
 1654 00AC8 00000           CON(5)  =CREATE
 1655               * File  MainMDF.s       112
 1656
 1657               * File  MainMDF.s       113
 1658 00ACD 00000           CON(5)  =DOLAM
 1659 00AD2 20              CON(2)  2
 1660 00AD4 8533            NIBASC  \X3\
 1661 00AD8 00000           CON(5)  =DOROMP
 1662 00ADD 000000          CON(6)  =~VectorToSTR
 1663               * File  MainMDF.s       114
 1664 00AE3 00000           CON(5)  =DOIDNT
 1665 00AE8 40              CON(2)  4
 1666 00AEA 8533373         NIBASC  \X3s3\
            3
 1667 00AF2 00000           CON(5)  =CREATE
 1668 00AF7 00000           CON(5)  =DOIDNT
 1669 00AFC 40              CON(2)  4
 1670 00AFE 8533372         NIBASC  \X3s2\
            3
 1671 00B06 00000           CON(5)  =CREATE
 1672 00B0B 00000           CON(5)  =DOIDNT
 1673 00B10 40              CON(2)  4
 1674 00B12 8533371         NIBASC  \X3s1\
            3
 1675 00B1A 00000           CON(5)  =CREATE
 1676               * File  MainMDF.s       115
 1677
 1678               * File  MainMDF.s       116
 1679 00B1F 00000           CON(5)  =DOLAM
 1680 00B24 30              CON(2)  3
 1681 00B26 E68513          NIBASC  \nX1\
 1682 00B2C 00000           CON(5)  =DOROMP
 1683 00B31 000000          CON(6)  =~VectorToSTR
 1684               * File  MainMDF.s       117
 1685 00B37 00000           CON(5)  =DOIDNT
 1686 00B3C 50              CON(2)  5
 1687 00B3E E685133         NIBASC  \nX1s3\
            733
 1688 00B48 00000           CON(5)  =CREATE
 1689 00B4D 00000           CON(5)  =DOIDNT
 1690 00B52 50              CON(2)  5
 1691 00B54 E685133         NIBASC  \nX1s2\
            723
 1692 00B5E 00000           CON(5)  =CREATE
 1693 00B63 00000           CON(5)  =DOIDNT
 1694 00B68 50              CON(2)  5
 1695 00B6A E685133         NIBASC  \nX1s1\
            713
 1696 00B74 00000           CON(5)  =CREATE
 1697               * File  MainMDF.s       118
 1698
 1699               * File  MainMDF.s       119
 1700 00B79 00000           CON(5)  =DOLAM
 1701 00B7E 30              CON(2)  3
 1702 00B80 E68523          NIBASC  \nX2\
 1703 00B86 00000           CON(5)  =DOROMP
 1704 00B8B 000000          CON(6)  =~VectorToSTR
 1705               * File  MainMDF.s       120
 1706 00B91 00000           CON(5)  =DOIDNT
 1707 00B96 50              CON(2)  5
 1708 00B98 E685233         NIBASC  \nX2s3\
            733
 1709 00BA2 00000           CON(5)  =CREATE
 1710 00BA7 00000           CON(5)  =DOIDNT
 1711 00BAC 50              CON(2)  5
 1712 00BAE E685233         NIBASC  \nX2s2\
            723
 1713 00BB8 00000           CON(5)  =CREATE
 1714 00BBD 00000           CON(5)  =DOIDNT
 1715 00BC2 50              CON(2)  5
 1716 00BC4 E685233         NIBASC  \nX2s1\
            713
 1717 00BCE 00000           CON(5)  =CREATE
 1718               * File  MainMDF.s       121
 1719
 1720               * File  MainMDF.s       122
 1721 00BD3 00000           CON(5)  =DOLAM
 1722 00BD8 30              CON(2)  3
 1723 00BDA E68533          NIBASC  \nX3\
 1724 00BE0 00000           CON(5)  =DOROMP
 1725 00BE5 000000          CON(6)  =~VectorToSTR
 1726               * File  MainMDF.s       123
 1727 00BEB 00000           CON(5)  =DOIDNT
 1728 00BF0 50              CON(2)  5
 1729 00BF2 E685333         NIBASC  \nX3s3\
            733
 1730 00BFC 00000           CON(5)  =CREATE
 1731 00C01 00000           CON(5)  =DOIDNT
 1732 00C06 50              CON(2)  5
 1733 00C08 E685333         NIBASC  \nX3s2\
            723
 1734 00C12 00000           CON(5)  =CREATE
 1735 00C17 00000           CON(5)  =DOIDNT
 1736 00C1C 50              CON(2)  5
 1737 00C1E E685333         NIBASC  \nX3s1\
            713
 1738 00C28 00000           CON(5)  =CREATE
 1739               * File  MainMDF.s       124
 1740
 1741               * File  MainMDF.s       125
 1742 00C2D 00000           CON(5)  =DOROMP
 1743 00C32 000000          CON(6)  =~MTV
 1744 00C38 00000           CON(5)  =DROP
 1745               * third menu
 1746               * File  MainMDF.s       126
 1747
 1748               * File  MainMDF.s       127
 1749 00C3D 00000           CON(5)  =DEPTH
 1750               * File  MainMDF.s       128
 1751 00C42 00000           CON(5)  =NDROP
 1752               * File  MainMDF.s       129
 1753
 1754               * File  MainMDF.s       130
 1755 00C47 00000           CON(5)  =DOROMP
 1756 00C4C 000000          CON(6)  =~Forcemenu
 1757               * File  MainMDF.s       131
 1758 00C52 00000           CON(5)  =IT
 1759 00C57 00000           CON(5)  =DOCOL
 1760               * File  MainMDF.s       132
 1761 00C5C 00000           CON(5)  =DOROMP
 1762 00C61 000000          CON(6)  =~analiseQ
 1763               * File  MainMDF.s       133
 1764
 1765               * File  MainMDF.s       134
 1766 00C67 00000           CON(5)  =SEMI
 1767               * File  MainMDF.s       135
 1768
 1769               * File  MainMDF.s       136
 1770 00C6C 00000           CON(5)  =SEMI
 1771               * File  MainMDF.s       137
 1772 00C71 00000           CON(5)  =rstfmt1
 1773               * File  MainMDF.s       138
 1774 00C76 00000           CON(5)  =DOROMP
 1775 00C7B 000000          CON(6)  =~purgeAll
 1776               * File  MainMDF.s       139
 1777 00C81 00000           CON(5)  =ABND
 1778               * File  MainMDF.s       140
 1779 00C86 00000           CON(5)  =DOFLASHP
 1780 00C8B 0000000         CON(7)  =^EXACTON
 1781               * File  MainMDF.s       141
 1782 00C92 00000           CON(5)  =SEMI
 1783               * File  MainMDF.s       142
 1784
 1785               * File  MainMDF.s       143
 1786 00C97         =analiseQ
 1787               * File  MainMDF.s       144
 1788 00C97 00000           CON(5)  =DOCOL
 1789               * File  MainMDF.s       145
 1790 00C9C 00000           CON(5)  =DOLIST
 1791 00CA1 00000           CON(5)  =DOLAM
 1792 00CA6 30              CON(2)  3
 1793 00CA8 644513          NIBASC  \FT1\
 1794 00CAE 00000           CON(5)  =DOLAM
 1795 00CB3 30              CON(2)  3
 1796 00CB5 644523          NIBASC  \FT2\
 1797 00CBB 00000           CON(5)  =DOLAM
 1798 00CC0 30              CON(2)  3
 1799 00CC2 644533          NIBASC  \FT3\
 1800 00CC8 00000           CON(5)  =SEMI
 1801 00CCD 00000           CON(5)  =BIND
 1802               * File  MainMDF.s       146
 1803 00CD2 00000           CON(5)  =DOLIST
 1804 00CD7 00000           CON(5)  =DOLAM
 1805 00CDC 40              CON(2)  4
 1806 00CDE 0737961         NIBASC  \psi1\
            3
 1807 00CE6 00000           CON(5)  =DOLAM
 1808 00CEB 40              CON(2)  4
 1809 00CED 0737962         NIBASC  \psi2\
            3
 1810 00CF5 00000           CON(5)  =DOLAM
 1811 00CFA 40              CON(2)  4
 1812 00CFC 0737963         NIBASC  \psi3\
            3
 1813 00D04 00000           CON(5)  =SEMI
 1814 00D09 00000           CON(5)  =BIND
 1815               * File  MainMDF.s       147
 1816 00D0E 00000           CON(5)  =DOLIST
 1817 00D13 00000           CON(5)  =DOLAM
 1818 00D18 30              CON(2)  3
 1819 00D1A 770313          NIBASC  \w01\
 1820 00D20 00000           CON(5)  =DOLAM
 1821 00D25 30              CON(2)  3
 1822 00D27 770323          NIBASC  \w02\
 1823 00D2D 00000           CON(5)  =DOLAM
 1824 00D32 30              CON(2)  3
 1825 00D34 770333          NIBASC  \w03\
 1826 00D3A 00000           CON(5)  =SEMI
 1827 00D3F 00000           CON(5)  =BIND
 1828               * File  MainMDF.s       148
 1829 00D44 00000           CON(5)  =DOLIST
 1830 00D49 00000           CON(5)  =DOLAM
 1831 00D4E 30              CON(2)  3
 1832 00D50 640313          NIBASC  \F01\
 1833 00D56 00000           CON(5)  =DOLAM
 1834 00D5B 30              CON(2)  3
 1835 00D5D 640323          NIBASC  \F02\
 1836 00D63 00000           CON(5)  =DOLAM
 1837 00D68 30              CON(2)  3
 1838 00D6A 640333          NIBASC  \F03\
 1839 00D70 00000           CON(5)  =SEMI
 1840 00D75 00000           CON(5)  =BIND
 1841               * File  MainMDF.s       149
 1842
 1843               * File  MainMDF.s       150
 1844 00D7A 00000           CON(5)  =DOLAM
 1845 00D7F 30              CON(2)  3
 1846 00D81 644513          NIBASC  \FT1\
 1847 00D87 00000           CON(5)  =DOCSTR
 1848 00D8C 52000           CON(5)  37
 1849 00D91 6403A23         NIBASC  \F0*COS(w0*t+psi)\
            4F43582
            7703A247B207379692

 1850 00DB1 00000           CON(5)  =EQUAL
 1851               * File  MainMDF.s       151
 1852 00DB6 00000           CON(5)  =ITE
 1853 00DBB 00000           CON(5)  =DOCOL
 1854 00DC0 00000           CON(5)  =DOCSTR
 1855 00DC5 F2000           CON(5)  47
 1856 00DCA 7264031         NIBASC  \'F01*COS(w01*t+psi1)\
            3A234F4
            3582770313A247B20737961392

 1857 00DF2 72              NIBASC  \'\
 1858 00DF4 00000           CON(5)  =DOSTR>
 1859 00DF9 00000           CON(5)  =xEVAL
 1860 00DFE 00000           CON(5)  =SEMI
 1861               * File  MainMDF.s       152
 1862 00E03 00000           CON(5)  =DOCOL
 1863 00E08 00000           CON(5)  =DOCSTR
 1864 00E0D F2000           CON(5)  47
 1865 00E12 7264031         NIBASC  \'F01*SIN(w01*t+psi1)\
            3A23594
            E482770313A247B20737961392

 1866 00E3A 72              NIBASC  \'\
 1867 00E3C 00000           CON(5)  =DOSTR>
 1868 00E41 00000           CON(5)  =xEVAL
 1869 00E46 00000           CON(5)  =SEMI
 1870               * File  MainMDF.s       153
 1871 00E4B 00000           CON(5)  =DOLAM
 1872 00E50 30              CON(2)  3
 1873 00E52 644523          NIBASC  \FT2\
 1874 00E58 00000           CON(5)  =DOCSTR
 1875 00E5D 52000           CON(5)  37
 1876 00E62 6403A23         NIBASC  \F0*COS(w0*t+psi)\
            4F43582
            7703A247B207379692

 1877 00E82 00000           CON(5)  =EQUAL
 1878               * File  MainMDF.s       154
 1879 00E87 00000           CON(5)  =ITE
 1880 00E8C 00000           CON(5)  =DOCOL
 1881 00E91 00000           CON(5)  =DOCSTR
 1882 00E96 F2000           CON(5)  47
 1883 00E9B 7264032         NIBASC  \'F02*COS(w02*t+psi2)\
            3A234F4
            3582770323A247B20737962392

 1884 00EC3 72              NIBASC  \'\
 1885 00EC5 00000           CON(5)  =DOSTR>
 1886 00ECA 00000           CON(5)  =xEVAL
 1887 00ECF 00000           CON(5)  =SEMI
 1888               * File  MainMDF.s       155
 1889 00ED4 00000           CON(5)  =DOCOL
 1890 00ED9 00000           CON(5)  =DOCSTR
 1891 00EDE F2000           CON(5)  47
 1892 00EE3 7264032         NIBASC  \'F02*SIN(w02*t+psi2)\
            3A23594
            E482770323A247B20737962392

 1893 00F0B 72              NIBASC  \'\
 1894 00F0D 00000           CON(5)  =DOSTR>
 1895 00F12 00000           CON(5)  =xEVAL
 1896 00F17 00000           CON(5)  =SEMI
 1897               * File  MainMDF.s       156
 1898 00F1C 00000           CON(5)  =DOLAM
 1899 00F21 30              CON(2)  3
 1900 00F23 644533          NIBASC  \FT3\
 1901 00F29 00000           CON(5)  =DOCSTR
 1902 00F2E 52000           CON(5)  37
 1903 00F33 6403A23         NIBASC  \F0*COS(w0*t+psi)\
            4F43582
            7703A247B207379692

 1904 00F53 00000           CON(5)  =EQUAL
 1905               * File  MainMDF.s       157
 1906 00F58 00000           CON(5)  =ITE
 1907 00F5D 00000           CON(5)  =DOCOL
 1908 00F62 00000           CON(5)  =DOCSTR
 1909 00F67 F2000           CON(5)  47
 1910 00F6C 7264033         NIBASC  \'F03*COS(w03*t+psi3)\
            3A234F4
            3582770333A247B20737963392

 1911 00F94 72              NIBASC  \'\
 1912 00F96 00000           CON(5)  =DOSTR>
 1913 00F9B 00000           CON(5)  =xEVAL
 1914 00FA0 00000           CON(5)  =SEMI
 1915               * File  MainMDF.s       158
 1916 00FA5 00000           CON(5)  =DOCOL
 1917 00FAA 00000           CON(5)  =DOCSTR
 1918 00FAF F2000           CON(5)  47
 1919 00FB4 7264033         NIBASC  \'F03*SIN(w03*t+psi3)\
            3A23594
            E482770333A247B20737963392

 1920 00FDC 72              NIBASC  \'\
 1921 00FDE 00000           CON(5)  =DOSTR>
 1922 00FE3 00000           CON(5)  =xEVAL
 1923 00FE8 00000           CON(5)  =SEMI
 1924               * File  MainMDF.s       159
 1925 00FED 00000           CON(5)  =DOLIST
 1926 00FF2 00000           CON(5)  =DOREAL
 1927 00FF7 000             NIBHEX  000
 1928 00FFA 0000000         NIBHEX  000000000003
            00003
 1929 01006 0               NIBHEX  0
 1930 01007 00000           CON(5)  =DOREAL
 1931 0100C 000             NIBHEX  000
 1932 0100F 0000000         NIBHEX  000000000001
            00001
 1933 0101B 0               NIBHEX  0
 1934 0101C 00000           CON(5)  =SEMI
 1935 01021 00000           CON(5)  =DOFLASHP
 1936 01026 0000000         CON(7)  =^XEQ>ARRY
 1937 0102D 00000           CON(5)  =DOLIST
 1938 01032 00000           CON(5)  =DOLAM
 1939 01037 20              CON(2)  2
 1940 01039 6403            NIBASC  \F0\
 1941 0103D 00000           CON(5)  =SEMI
 1942 01042 00000           CON(5)  =BIND
 1943               * File  MainMDF.s       160
 1944
 1945               * File  MainMDF.s       161
 1946
 1947               * File  MainMDF.s       162
 1948 01047 00000           CON(5)  =DOLAM
 1949 0104C 30              CON(2)  3
 1950 0104E E68513          NIBASC  \nX1\
 1951 01054 00000           CON(5)  =DOFLASHP
 1952 01059 0000000         CON(7)  =^XEQARRY>
 1953 01060 00000           CON(5)  =DROP
 1954               * File  MainMDF.s       163
 1955 01065 00000           CON(5)  =DOLAM
 1956 0106A 30              CON(2)  3
 1957 0106C E68523          NIBASC  \nX2\
 1958 01072 00000           CON(5)  =DOFLASHP
 1959 01077 0000000         CON(7)  =^XEQARRY>
 1960 0107E 00000           CON(5)  =DROP
 1961               * File  MainMDF.s       164
 1962 01083 00000           CON(5)  =DOLAM
 1963 01088 30              CON(2)  3
 1964 0108A E68533          NIBASC  \nX3\
 1965 01090 00000           CON(5)  =DOFLASHP
 1966 01095 0000000         CON(7)  =^XEQARRY>
 1967 0109C 00000           CON(5)  =DROP
 1968               * File  MainMDF.s       165
 1969 010A1 00000           CON(5)  =DOLIST
 1970 010A6 00000           CON(5)  =DOREAL
 1971 010AB 000             NIBHEX  000
 1972 010AE 0000000         NIBHEX  000000000003
            00003
 1973 010BA 0               NIBHEX  0
 1974 010BB 00000           CON(5)  =DOREAL
 1975 010C0 000             NIBHEX  000
 1976 010C3 0000000         NIBHEX  000000000003
            00003
 1977 010CF 0               NIBHEX  0
 1978 010D0 00000           CON(5)  =SEMI
 1979 010D5 00000           CON(5)  =DOFLASHP
 1980 010DA 0000000         CON(7)  =^XEQ>ARRY
 1981               * File  MainMDF.s       166
 1982 010E1 00000           CON(5)  =DOFLASHP
 1983 010E6 0000000         CON(7)  =^MATTRAN
 1984 010ED 00000           CON(5)  =DOLIST
 1985 010F2 00000           CON(5)  =DOLAM
 1986 010F7 20              CON(2)  2
 1987 010F9 E685            NIBASC  \nX\
 1988 010FD 00000           CON(5)  =SEMI
 1989 01102 00000           CON(5)  =BIND
 1990               * File  MainMDF.s       167
 1991
 1992               * File  MainMDF.s       168
 1993 01107 00000           CON(5)  =DOLAM
 1994 0110C 20              CON(2)  2
 1995 0110E E685            NIBASC  \nX\
 1996 01112 00000           CON(5)  =DOFLASHP
 1997 01117 0000000         CON(7)  =^MATTRAN
 1998               * File  MainMDF.s       169
 1999 0111E 00000           CON(5)  =DOLAM
 2000 01123 20              CON(2)  2
 2001 01125 6403            NIBASC  \F0\
 2002               * File  MainMDF.s       170
 2003 01129 00000           CON(5)  =DOFLASHP
 2004 0112E 0000000         CON(7)  =^MAT*
 2005               * File  MainMDF.s       171
 2006 01135 00000           CON(5)  =DOFLASHP
 2007 0113A 0000000         CON(7)  =^XEQARRY>
 2008 01141 00000           CON(5)  =DROP
 2009               * File  MainMDF.s       172
 2010 01146 00000           CON(5)  =DOLIST
 2011 0114B 00000           CON(5)  =DOLAM
 2012 01150 20              CON(2)  2
 2013 01152 1513            NIBASC  \Q1\
 2014 01156 00000           CON(5)  =DOLAM
 2015 0115B 20              CON(2)  2
 2016 0115D 1523            NIBASC  \Q2\
 2017 01161 00000           CON(5)  =DOLAM
 2018 01166 20              CON(2)  2
 2019 01168 1533            NIBASC  \Q3\
 2020 0116C 00000           CON(5)  =SEMI
 2021 01171 00000           CON(5)  =BIND
 2022               * File  MainMDF.s       173
 2023 01176 00000           CON(5)  =DOLAM
 2024 0117B 20              CON(2)  2
 2025 0117D 1513            NIBASC  \Q1\
 2026 01181 00000           CON(5)  =xEVAL
 2027 01186 00000           CON(5)  ='
 2028 0118B 00000           CON(5)  =DOLAM
 2029 01190 20              CON(2)  2
 2030 01192 1513            NIBASC  \Q1\
 2031 01196 00000           CON(5)  =STO
 2032               * File  MainMDF.s       174
 2033 0119B 00000           CON(5)  =DOLAM
 2034 011A0 20              CON(2)  2
 2035 011A2 1523            NIBASC  \Q2\
 2036 011A6 00000           CON(5)  =xEVAL
 2037 011AB 00000           CON(5)  ='
 2038 011B0 00000           CON(5)  =DOLAM
 2039 011B5 20              CON(2)  2
 2040 011B7 1523            NIBASC  \Q2\
 2041 011BB 00000           CON(5)  =STO
 2042               * File  MainMDF.s       175
 2043 011C0 00000           CON(5)  =DOLAM
 2044 011C5 20              CON(2)  2
 2045 011C7 1533            NIBASC  \Q3\
 2046 011CB 00000           CON(5)  =xEVAL
 2047 011D0 00000           CON(5)  ='
 2048 011D5 00000           CON(5)  =DOLAM
 2049 011DA 20              CON(2)  2
 2050 011DC 1533            NIBASC  \Q3\
 2051 011E0 00000           CON(5)  =STO
 2052               * File  MainMDF.s       176
 2053
 2054               * File  MainMDF.s       177
 2055 011E5 00000           CON(5)  =DOROMP
 2056 011EA 000000          CON(6)  =~InitCond
 2057               * File  MainMDF.s       178
 2058 011F0 00000           CON(5)  =ITE
 2059 011F5 00000           CON(5)  =DOCOL
 2060               * File  MainMDF.s       179
 2061 011FA 00000           CON(5)  =DOLIST
 2062 011FF 00000           CON(5)  =DOREAL
 2063 01204 000             NIBHEX  000
 2064 01207 0000000         NIBHEX  000000000003
            00003
 2065 01213 0               NIBHEX  0
 2066 01214 00000           CON(5)  =DOREAL
 2067 01219 000             NIBHEX  000
 2068 0121C 0000000         NIBHEX  000000000001
            00001
 2069 01228 0               NIBHEX  0
 2070 01229 00000           CON(5)  =SEMI
 2071 0122E 00000           CON(5)  =DOFLASHP
 2072 01233 0000000         CON(7)  =^XEQ>ARRY
 2073               * File  MainMDF.s       180
 2074 0123A 00000           CON(5)  =DOLIST
 2075 0123F 00000           CON(5)  =DOLAM
 2076 01244 20              CON(2)  2
 2077 01246 6703            NIBASC  \v0\
 2078 0124A 00000           CON(5)  =SEMI
 2079 0124F 00000           CON(5)  =BIND
 2080               * USER
 2081               * File  MainMDF.s       181
 2082 01254 00000           CON(5)  =DOLIST
 2083 01259 00000           CON(5)  =DOREAL
 2084 0125E 000             NIBHEX  000
 2085 01261 0000000         NIBHEX  000000000003
            00003
 2086 0126D 0               NIBHEX  0
 2087 0126E 00000           CON(5)  =DOREAL
 2088 01273 000             NIBHEX  000
 2089 01276 0000000         NIBHEX  000000000001
            00001
 2090 01282 0               NIBHEX  0
 2091 01283 00000           CON(5)  =SEMI
 2092 01288 00000           CON(5)  =DOFLASHP
 2093 0128D 0000000         CON(7)  =^XEQ>ARRY
 2094               * File  MainMDF.s       182
 2095 01294 00000           CON(5)  =DOLIST
 2096 01299 00000           CON(5)  =DOLAM
 2097 0129E 20              CON(2)  2
 2098 012A0 8703            NIBASC  \x0\
 2099 012A4 00000           CON(5)  =SEMI
 2100 012A9 00000           CON(5)  =BIND
 2101               * USER
 2102               * File  MainMDF.s       183
 2103
 2104               * File  MainMDF.s       184
 2105 012AE 00000           CON(5)  =DEPTH
 2106 012B3 00000           CON(5)  =NDROP
 2107               * File  MainMDF.s       185
 2108
 2109               * File  MainMDF.s       186
 2110 012B8 00000           CON(5)  =DOCSTR
 2111 012BD F0000           CON(5)  15
 2112 012C2 1782039         NIBASC  \q(0)=\
            2D3
 2113               * File  MainMDF.s       187
 2114 012CC 00000           CON(5)  =DOLAM
 2115 012D1 20              CON(2)  2
 2116 012D3 E685            NIBASC  \nX\
 2117 012D7 00000           CON(5)  =DOFLASHP
 2118 012DC 0000000         CON(7)  =^MATTRAN
 2119 012E3 00000           CON(5)  =DOLAM
 2120 012E8 10              CON(2)  1
 2121 012EA D4              NIBASC  \M\
 2122 012EC 00000           CON(5)  =DOFLASHP
 2123 012F1 0000000         CON(7)  =^MAT*
 2124 012F8 00000           CON(5)  =DOLAM
 2125 012FD 20              CON(2)  2
 2126 012FF 8703            NIBASC  \x0\
 2127 01303 00000           CON(5)  =DOFLASHP
 2128 01308 0000000         CON(7)  =^MAT*
 2129 0130F 00000           CON(5)  =DOFLASHP
 2130 01314 0000000         CON(7)  =^XEQARRY>
 2131 0131B 00000           CON(5)  =DROP
 2132               * File  MainMDF.s       188
 2133 01320 00000           CON(5)  =DOLIST
 2134 01325 00000           CON(5)  =DOLAM
 2135 0132A 30              CON(2)  3
 2136 0132C 170313          NIBASC  \q01\
 2137 01332 00000           CON(5)  =DOLAM
 2138 01337 30              CON(2)  3
 2139 01339 170323          NIBASC  \q02\
 2140 0133F 00000           CON(5)  =DOLAM
 2141 01344 30              CON(2)  3
 2142 01346 170333          NIBASC  \q03\
 2143 0134C 00000           CON(5)  =SEMI
 2144 01351 00000           CON(5)  =BIND
 2145               * File  MainMDF.s       189
 2146 01356 00000           CON(5)  =DOLAM
 2147 0135B 30              CON(2)  3
 2148 0135D 170313          NIBASC  \q01\
 2149 01363 00000           CON(5)  =DOLAM
 2150 01368 30              CON(2)  3
 2151 0136A 170323          NIBASC  \q02\
 2152 01370 00000           CON(5)  =DOLAM
 2153 01375 30              CON(2)  3
 2154 01377 170333          NIBASC  \q03\
 2155 0137D 00000           CON(5)  =DOLIST
 2156 01382 00000           CON(5)  =DOREAL
 2157 01387 000             NIBHEX  000
 2158 0138A 0000000         NIBHEX  000000000003
            00003
 2159 01396 0               NIBHEX  0
 2160 01397 00000           CON(5)  =DOREAL
 2161 0139C 000             NIBHEX  000
 2162 0139F 0000000         NIBHEX  000000000001
            00001
 2163 013AB 0               NIBHEX  0
 2164 013AC 00000           CON(5)  =SEMI
 2165 013B1 00000           CON(5)  =DOFLASHP
 2166 013B6 0000000         CON(7)  =^XEQ>ARRY
 2167               * File  MainMDF.s       190
 2168
 2169               * File  MainMDF.s       191
 2170 013BD 00000           CON(5)  =DOCSTR
 2171 013C2 91000           CON(5)  25
 2172 013C7 4617820         NIBASC  \dq(0)/dt =\
            392F246
            4702D3
 2173               * File  MainMDF.s       192
 2174 013DB 00000           CON(5)  =DOLAM
 2175 013E0 20              CON(2)  2
 2176 013E2 E685            NIBASC  \nX\
 2177 013E6 00000           CON(5)  =DOFLASHP
 2178 013EB 0000000         CON(7)  =^MATTRAN
 2179 013F2 00000           CON(5)  =DOLAM
 2180 013F7 10              CON(2)  1
 2181 013F9 D4              NIBASC  \M\
 2182 013FB 00000           CON(5)  =DOFLASHP
 2183 01400 0000000         CON(7)  =^MAT*
 2184 01407 00000           CON(5)  =DOLAM
 2185 0140C 20              CON(2)  2
 2186 0140E 6703            NIBASC  \v0\
 2187 01412 00000           CON(5)  =DOFLASHP
 2188 01417 0000000         CON(7)  =^MAT*
 2189 0141E 00000           CON(5)  =DOFLASHP
 2190 01423 0000000         CON(7)  =^XEQARRY>
 2191 0142A 00000           CON(5)  =DROP
 2192               * File  MainMDF.s       193
 2193 0142F 00000           CON(5)  =DOLIST
 2194 01434 00000           CON(5)  =DOLAM
 2195 01439 40              CON(2)  4
 2196 0143B 1717031         NIBASC  \qq01\
            3
 2197 01443 00000           CON(5)  =DOLAM
 2198 01448 40              CON(2)  4
 2199 0144A 1717032         NIBASC  \qq02\
            3
 2200 01452 00000           CON(5)  =DOLAM
 2201 01457 40              CON(2)  4
 2202 01459 1717033         NIBASC  \qq03\
            3
 2203 01461 00000           CON(5)  =SEMI
 2204 01466 00000           CON(5)  =BIND
 2205               * File  MainMDF.s       194
 2206 0146B 00000           CON(5)  =DOLAM
 2207 01470 40              CON(2)  4
 2208 01472 1717031         NIBASC  \qq01\
            3
 2209 0147A 00000           CON(5)  =DOLAM
 2210 0147F 40              CON(2)  4
 2211 01481 1717032         NIBASC  \qq02\
            3
 2212 01489 00000           CON(5)  =DOLAM
 2213 0148E 40              CON(2)  4
 2214 01490 1717033         NIBASC  \qq03\
            3
 2215 01498 00000           CON(5)  =DOLIST
 2216 0149D 00000           CON(5)  =DOREAL
 2217 014A2 000             NIBHEX  000
 2218 014A5 0000000         NIBHEX  000000000003
            00003
 2219 014B1 0               NIBHEX  0
 2220 014B2 00000           CON(5)  =DOREAL
 2221 014B7 000             NIBHEX  000
 2222 014BA 0000000         NIBHEX  000000000001
            00001
 2223 014C6 0               NIBHEX  0
 2224 014C7 00000           CON(5)  =SEMI
 2225 014CC 00000           CON(5)  =DOFLASHP
 2226 014D1 0000000         CON(7)  =^XEQ>ARRY
 2227               * File  MainMDF.s       195
 2228
 2229               * File  MainMDF.s       196
 2230 014D8 00000           CON(5)  =DOLAM
 2231 014DD 20              CON(2)  2
 2232 014DF E685            NIBASC  \nX\
 2233               * File  MainMDF.s       197
 2234 014E3 00000           CON(5)  =DOCSTR
 2235 014E8 52000           CON(5)  37
 2236 014ED 7217171         NIBASC  \'qqq +w1*q = Q1'\
            702B277
            13A21702D302151372

 2237 0150D 00000           CON(5)  =DOSTR>
 2238 01512 00000           CON(5)  =xEVAL
 2239               * File  MainMDF.s       198
 2240 01517 00000           CON(5)  =DOCSTR
 2241 0151C 52000           CON(5)  37
 2242 01521 7217171         NIBASC  \'qqq +w2*q = Q2'\
            702B277
            23A21702D302152372

 2243 01541 00000           CON(5)  =DOSTR>
 2244 01546 00000           CON(5)  =xEVAL
 2245               * File  MainMDF.s       199
 2246 0154B 00000           CON(5)  =DOCSTR
 2247 01550 52000           CON(5)  37
 2248 01555 7217171         NIBASC  \'qqq +w3*q = Q3'\
            702B277
            33A21702D302153372

 2249 01575 00000           CON(5)  =DOSTR>
 2250 0157A 00000           CON(5)  =xEVAL
 2251               * File  MainMDF.s       200
 2252 0157F 00000           CON(5)  =DOLIST
 2253 01584 00000           CON(5)  =DOREAL
 2254 01589 000             NIBHEX  000
 2255 0158C 0000000         NIBHEX  000000000003
            00003
 2256 01598 0               NIBHEX  0
 2257 01599 00000           CON(5)  =DOREAL
 2258 0159E 000             NIBHEX  000
 2259 015A1 0000000         NIBHEX  000000000001
            00001
 2260 015AD 0               NIBHEX  0
 2261 015AE 00000           CON(5)  =SEMI
 2262 015B3 00000           CON(5)  =DOFLASHP
 2263 015B8 0000000         CON(7)  =^XEQ>ARRY
 2264               * File  MainMDF.s       201
 2265
 2266               * File  MainMDF.s       202
 2267 015BF 00000           CON(5)  =SEMI
 2268               * File  MainMDF.s       203
 2269 015C4 00000           CON(5)  =DOCOL
 2270               * File  MainMDF.s       204
 2271 015C9 00000           CON(5)  =DEPTH
 2272 015CE 00000           CON(5)  =NDROP
 2273               * File  MainMDF.s       205
 2274 015D3 00000           CON(5)  =SEMI
 2275               * File  MainMDF.s       206
 2276
 2277               * File  MainMDF.s       207
 2278 015D8 00000           CON(5)  =SEMI
 2279               * File  MainMDF.s       208
 2280
 2281               * File  MainMDF.s       209
 2282 015DD         =VectorToSTR
 2283               * File  MainMDF.s       210
 2284 015DD 00000           CON(5)  =DOCOL
 2285               * File  MainMDF.s       211
 2286 015E2 00000           CON(5)  =DOFLASHP
 2287 015E7 0000000         CON(7)  =^XEQARRY>
 2288 015EE 00000           CON(5)  =DROP
 2289               * File  MainMDF.s       212
 2290 015F3 00000           CON(5)  =a%>$
 2291 015F8 00000           CON(5)  =UNROT
 2292 015FD 00000           CON(5)  =a%>$
 2293 01602 00000           CON(5)  =UNROT
 2294 01607 00000           CON(5)  =a%>$
 2295 0160C 00000           CON(5)  =UNROT
 2296               * File  MainMDF.s       213
 2297 01611 00000           CON(5)  =SEMI
 2298               * File  MainMDF.s       214
 2299
 2300               * File  MainMDF.s       215
 2301 01616         =purgeAll
 2302               * File  MainMDF.s       216
 2303 01616 00000           CON(5)  =DOCOL
 2304               * File  MainMDF.s       217
 2305 0161B 00000           CON(5)  ='
 2306 01620 00000           CON(5)  =DOIDNT
 2307 01625 30              CON(2)  3
 2308 01627 354464          NIBASC  \SDF\
 2309 0162D 00000           CON(5)  =PURGE
 2310               * File  MainMDF.s       218
 2311 01632 00000           CON(5)  ='
 2312 01637 00000           CON(5)  =DOIDNT
 2313 0163C 20              CON(2)  2
 2314 0163E 7733            NIBASC  \w3\
 2315 01642 00000           CON(5)  =PURGE
 2316 01647 00000           CON(5)  ='
 2317 0164C 00000           CON(5)  =DOIDNT
 2318 01651 20              CON(2)  2
 2319 01653 7723            NIBASC  \w2\
 2320 01657 00000           CON(5)  =PURGE
 2321 0165C 00000           CON(5)  ='
 2322 01661 00000           CON(5)  =DOIDNT
 2323 01666 20              CON(2)  2
 2324 01668 7713            NIBASC  \w1\
 2325 0166C 00000           CON(5)  =PURGE
 2326               * File  MainMDF.s       219
 2327 01671 00000           CON(5)  ='
 2328 01676 00000           CON(5)  =DOIDNT
 2329 0167B 40              CON(2)  4
 2330 0167D B413373         NIBASC  \K1s3\
            3
 2331 01685 00000           CON(5)  =PURGE
 2332 0168A 00000           CON(5)  ='
 2333 0168F 00000           CON(5)  =DOIDNT
 2334 01694 40              CON(2)  4
 2335 01696 B413372         NIBASC  \K1s2\
            3
 2336 0169E 00000           CON(5)  =PURGE
 2337 016A3 00000           CON(5)  ='
 2338 016A8 00000           CON(5)  =DOIDNT
 2339 016AD 40              CON(2)  4
 2340 016AF B413371         NIBASC  \K1s1\
            3
 2341 016B7 00000           CON(5)  =PURGE
 2342               * File  MainMDF.s       220
 2343 016BC 00000           CON(5)  ='
 2344 016C1 00000           CON(5)  =DOIDNT
 2345 016C6 40              CON(2)  4
 2346 016C8 B423373         NIBASC  \K2s3\
            3
 2347 016D0 00000           CON(5)  =PURGE
 2348 016D5 00000           CON(5)  ='
 2349 016DA 00000           CON(5)  =DOIDNT
 2350 016DF 40              CON(2)  4
 2351 016E1 B423372         NIBASC  \K2s2\
            3
 2352 016E9 00000           CON(5)  =PURGE
 2353 016EE 00000           CON(5)  ='
 2354 016F3 00000           CON(5)  =DOIDNT
 2355 016F8 40              CON(2)  4
 2356 016FA B423371         NIBASC  \K2s1\
            3
 2357 01702 00000           CON(5)  =PURGE
 2358               * File  MainMDF.s       221
 2359 01707 00000           CON(5)  ='
 2360 0170C 00000           CON(5)  =DOIDNT
 2361 01711 40              CON(2)  4
 2362 01713 B433373         NIBASC  \K3s3\
            3
 2363 0171B 00000           CON(5)  =PURGE
 2364 01720 00000           CON(5)  ='
 2365 01725 00000           CON(5)  =DOIDNT
 2366 0172A 40              CON(2)  4
 2367 0172C B433372         NIBASC  \K3s2\
            3
 2368 01734 00000           CON(5)  =PURGE
 2369 01739 00000           CON(5)  ='
 2370 0173E 00000           CON(5)  =DOIDNT
 2371 01743 40              CON(2)  4
 2372 01745 B433371         NIBASC  \K3s1\
            3
 2373 0174D 00000           CON(5)  =PURGE
 2374               * File  MainMDF.s       222
 2375 01752 00000           CON(5)  ='
 2376 01757 00000           CON(5)  =DOIDNT
 2377 0175C 50              CON(2)  5
 2378 0175E E685133         NIBASC  \nX1s3\
            733
 2379 01768 00000           CON(5)  =PURGE
 2380 0176D 00000           CON(5)  ='
 2381 01772 00000           CON(5)  =DOIDNT
 2382 01777 50              CON(2)  5
 2383 01779 E685133         NIBASC  \nX1s2\
            723
 2384 01783 00000           CON(5)  =PURGE
 2385 01788 00000           CON(5)  ='
 2386 0178D 00000           CON(5)  =DOIDNT
 2387 01792 50              CON(2)  5
 2388 01794 E685133         NIBASC  \nX1s1\
            713
 2389 0179E 00000           CON(5)  =PURGE
 2390               * File  MainMDF.s       223
 2391 017A3 00000           CON(5)  ='
 2392 017A8 00000           CON(5)  =DOIDNT
 2393 017AD 50              CON(2)  5
 2394 017AF E685233         NIBASC  \nX2s3\
            733
 2395 017B9 00000           CON(5)  =PURGE
 2396 017BE 00000           CON(5)  ='
 2397 017C3 00000           CON(5)  =DOIDNT
 2398 017C8 50              CON(2)  5
 2399 017CA E685233         NIBASC  \nX2s2\
            723
 2400 017D4 00000           CON(5)  =PURGE
 2401 017D9 00000           CON(5)  ='
 2402 017DE 00000           CON(5)  =DOIDNT
 2403 017E3 50              CON(2)  5
 2404 017E5 E685233         NIBASC  \nX2s1\
            713
 2405 017EF 00000           CON(5)  =PURGE
 2406               * File  MainMDF.s       224
 2407 017F4 00000           CON(5)  ='
 2408 017F9 00000           CON(5)  =DOIDNT
 2409 017FE 50              CON(2)  5
 2410 01800 E685333         NIBASC  \nX3s3\
            733
 2411 0180A 00000           CON(5)  =PURGE
 2412 0180F 00000           CON(5)  ='
 2413 01814 00000           CON(5)  =DOIDNT
 2414 01819 50              CON(2)  5
 2415 0181B E685333         NIBASC  \nX3s2\
            723
 2416 01825 00000           CON(5)  =PURGE
 2417 0182A 00000           CON(5)  ='
 2418 0182F 00000           CON(5)  =DOIDNT
 2419 01834 50              CON(2)  5
 2420 01836 E685333         NIBASC  \nX3s1\
            713
 2421 01840 00000           CON(5)  =PURGE
 2422               * File  MainMDF.s       225
 2423
 2424               * File  MainMDF.s       226
 2425 01845 00000           CON(5)  ='
 2426 0184A 00000           CON(5)  =DOIDNT
 2427 0184F 40              CON(2)  4
 2428 01851 8513373         NIBASC  \X1s3\
            3
 2429 01859 00000           CON(5)  =PURGE
 2430 0185E 00000           CON(5)  ='
 2431 01863 00000           CON(5)  =DOIDNT
 2432 01868 40              CON(2)  4
 2433 0186A 8513372         NIBASC  \X1s2\
            3
 2434 01872 00000           CON(5)  =PURGE
 2435 01877 00000           CON(5)  ='
 2436 0187C 00000           CON(5)  =DOIDNT
 2437 01881 40              CON(2)  4
 2438 01883 8513371         NIBASC  \X1s1\
            3
 2439 0188B 00000           CON(5)  =PURGE
 2440               * File  MainMDF.s       227
 2441 01890 00000           CON(5)  ='
 2442 01895 00000           CON(5)  =DOIDNT
 2443 0189A 40              CON(2)  4
 2444 0189C 8523373         NIBASC  \X2s3\
            3
 2445 018A4 00000           CON(5)  =PURGE
 2446 018A9 00000           CON(5)  ='
 2447 018AE 00000           CON(5)  =DOIDNT
 2448 018B3 40              CON(2)  4
 2449 018B5 8523372         NIBASC  \X2s2\
            3
 2450 018BD 00000           CON(5)  =PURGE
 2451 018C2 00000           CON(5)  ='
 2452 018C7 00000           CON(5)  =DOIDNT
 2453 018CC 40              CON(2)  4
 2454 018CE 8523371         NIBASC  \X2s1\
            3
 2455 018D6 00000           CON(5)  =PURGE
 2456               * File  MainMDF.s       228
 2457 018DB 00000           CON(5)  ='
 2458 018E0 00000           CON(5)  =DOIDNT
 2459 018E5 40              CON(2)  4
 2460 018E7 8533373         NIBASC  \X3s3\
            3
 2461 018EF 00000           CON(5)  =PURGE
 2462 018F4 00000           CON(5)  ='
 2463 018F9 00000           CON(5)  =DOIDNT
 2464 018FE 40              CON(2)  4
 2465 01900 8533372         NIBASC  \X3s2\
            3
 2466 01908 00000           CON(5)  =PURGE
 2467 0190D 00000           CON(5)  ='
 2468 01912 00000           CON(5)  =DOIDNT
 2469 01917 40              CON(2)  4
 2470 01919 8533371         NIBASC  \X3s1\
            3
 2471 01921 00000           CON(5)  =PURGE
 2472               * File  MainMDF.s       229
 2473 01926 00000           CON(5)  ='
 2474 0192B 00000           CON(5)  =DOIDNT
 2475 01930 40              CON(2)  4
 2476 01932 B413373         NIBASC  \K1s3\
            3
 2477 0193A 00000           CON(5)  =PURGE
 2478 0193F 00000           CON(5)  ='
 2479 01944 00000           CON(5)  =DOIDNT
 2480 01949 40              CON(2)  4
 2481 0194B B413372         NIBASC  \K1s2\
            3
 2482 01953 00000           CON(5)  =PURGE
 2483 01958 00000           CON(5)  ='
 2484 0195D 00000           CON(5)  =DOIDNT
 2485 01962 40              CON(2)  4
 2486 01964 B413371         NIBASC  \K1s1\
            3
 2487 0196C 00000           CON(5)  =PURGE
 2488               * File  MainMDF.s       230
 2489 01971 00000           CON(5)  ='
 2490 01976 00000           CON(5)  =DOIDNT
 2491 0197B 40              CON(2)  4
 2492 0197D B423373         NIBASC  \K2s3\
            3
 2493 01985 00000           CON(5)  =PURGE
 2494 0198A 00000           CON(5)  ='
 2495 0198F 00000           CON(5)  =DOIDNT
 2496 01994 40              CON(2)  4
 2497 01996 B423372         NIBASC  \K2s2\
            3
 2498 0199E 00000           CON(5)  =PURGE
 2499 019A3 00000           CON(5)  ='
 2500 019A8 00000           CON(5)  =DOIDNT
 2501 019AD 40              CON(2)  4
 2502 019AF B423371         NIBASC  \K2s1\
            3
 2503 019B7 00000           CON(5)  =PURGE
 2504               * File  MainMDF.s       231
 2505 019BC 00000           CON(5)  ='
 2506 019C1 00000           CON(5)  =DOIDNT
 2507 019C6 40              CON(2)  4
 2508 019C8 B433373         NIBASC  \K3s3\
            3
 2509 019D0 00000           CON(5)  =PURGE
 2510 019D5 00000           CON(5)  ='
 2511 019DA 00000           CON(5)  =DOIDNT
 2512 019DF 40              CON(2)  4
 2513 019E1 B433372         NIBASC  \K3s2\
            3
 2514 019E9 00000           CON(5)  =PURGE
 2515 019EE 00000           CON(5)  ='
 2516 019F3 00000           CON(5)  =DOIDNT
 2517 019F8 40              CON(2)  4
 2518 019FA B433371         NIBASC  \K3s1\
            3
 2519 01A02 00000           CON(5)  =PURGE
 2520               * File  MainMDF.s       232
 2521
 2522               * File  MainMDF.s       233
 2523 01A07 00000           CON(5)  ='
 2524 01A0C 00000           CON(5)  =DOIDNT
 2525 01A11 20              CON(2)  2
 2526 01A13 7733            NIBASC  \w3\
 2527 01A17 00000           CON(5)  =PURGE
 2528 01A1C 00000           CON(5)  ='
 2529 01A21 00000           CON(5)  =DOIDNT
 2530 01A26 20              CON(2)  2
 2531 01A28 7723            NIBASC  \w2\
 2532 01A2C 00000           CON(5)  =PURGE
 2533 01A31 00000           CON(5)  ='
 2534 01A36 00000           CON(5)  =DOIDNT
 2535 01A3B 20              CON(2)  2
 2536 01A3D 7713            NIBASC  \w1\
 2537 01A41 00000           CON(5)  =PURGE
 2538               * File  MainMDF.s       234
 2539 01A46 00000           CON(5)  =SEMI
Saturn Assembler                                       Tue May 22 21:55:38 2018
V3.0.9 (04/15/2007)   Symbol Table                       MainMDF.a      Page    2

 %*                                Ext                   -  1064  1073  1082
                                        1103  1112  1121
 %+                                Ext                   -  1051  1055  1090
                                        1094  1129  1133
 %0                                Ext                   -  1015  1016  1018
                                        1022  1024  1025
 %^                                Ext                   -  1221  1235  1249
                                        1529  1558  1587
 '                                 Ext                   -  2027  2037  2047
                                        2305  2311  2316  2321  2327  2332  2337
                                        2343  2348  2353  2359  2364  2369  2375
                                        2380  2385  2391  2396  2401  2407  2412
                                        2417  2425  2430  2435  2441  2446  2451
                                        2457  2462  2467  2473  2478  2483  2489
                                        2494  2499  2505  2510  2515  2523  2528
                                        2533
 ABND                              Ext                   -  1777
 AddressesCLEBit                   Abs       0 #00000000 -   882
 AddressesCLEFl                    Abs      89 #00000059 -   880   881   882
 AddressesCLENib                   Abs      22 #00000016 -   881
 AlarmBeepBit                      Abs       0 #00000000 -   269
 AlarmBeepFl                       Abs      57 #00000039 -   257   268   269
 AlarmBeepNib                      Abs      14 #0000000E -   268
 AlgebraicModeBit                  Abs       2 #00000002 -   900
 AlgebraicModeFl                   Abs      95 #0000005F -   898   899   900
 AlgebraicModeNib                  Abs      23 #00000017 -   899
 AngleBCt                          Abs       2 #00000002 -   220
 AngleBit1                         Abs       0 #00000000 -   272   273
 AngleBit2                         Abs       1 #00000001 -   273
 AngleFl1                          Abs      17 #00000011 -   219   271   272
 AngleNib                          Abs       4 #00000004 -   271
 ArrayOnlyBit                      Abs       2 #00000002 -   888
 ArrayOnlyFl                       Abs      91 #0000005B -   886   887   888
 ArrayOnlyNib                      Abs      22 #00000016 -   887
 AutoSaveBit                       Abs       1 #00000001 -   897
 AutoSaveFl                        Abs      94 #0000005E -   895   896   897
 AutoSaveNib                       Abs      23 #00000017 -   896
 BIND                              Ext                   -  1006  1156  1187
                                        1208  1291  1311  1331  1460  1480  1500
                                        1606  1801  1814  1827  1840  1942  1989
                                        2021  2079  2100  2144  2204
 BigFontCmdBit                     Abs       0 #00000000 -   834
 BigFontCmdFl                      Abs      73 #00000049 -   832   833   834
 BigFontCmdNib                     Abs      18 #00000012 -   833
 BigFontStackBit                   Abs       3 #00000003 -   831
 BigFontStackFl                    Abs      72 #00000048 -   829   830   831
 BigFontStackNib                   Abs      17 #00000011 -   830
 BinBaseBCt                        Abs       2 #00000002 -   215
 BinBaseBit1                       Abs       2 #00000002 -   276
 BinBaseFl1                        Abs      11 #0000000B -   214   275   276
 BinBaseNib                        Abs       2 #00000002 -   275
 BinWordSBCt                       Abs       6 #00000006 -   213
 BinWordSBit1                      Abs       0 #00000000 -   279
 BinWordSFl1                       Abs       5 #00000005 -   212   278   279
 BinWordSNib                       Abs       1 #00000001 -   278
 CK0                               Ext                   -   938
 CREATE                            Ext                   -   961  1226  1240
                                        1254  1352  1356  1360  1381  1385  1389
                                        1410  1414  1418  1625  1629  1633  1646
                                        1650  1654  1667  1671  1675  1688  1692
                                        1696  1709  1713  1717  1730  1734  1738
 CarefulBit                        Abs       3 #00000003 -   282
 CarefulFl                         Abs       4 #00000004 -   210   281   282
 CarefulNib                        Abs       0 #00000000 -   281
 ClockFmtBit                       Abs       0 #00000000 -   285
 ClockFmtFl                        Abs      41 #00000029 -   242   284   285
 ClockFmtNib                       Abs      10 #0000000A -   284
 ClockOnBit                        Abs       3 #00000003 -   288
 ClockOnFl                         Abs      40 #00000028 -   241   287   288
 ClockOnNib                        Abs       9 #00000009 -   287
 CmdAutoIndentBit                  Abs       3 #00000003 -   819
 CmdAutoIndentFl                   Abs      68 #00000044 -   817   818   819
 CmdAutoIndentNib                  Abs      16 #00000010 -   818
 ComVecDiBCt                       Abs       2 #00000002 -   218
 ComVecDiBit1                      Abs       2 #00000002 -   294
 ComVecDiFl1                       Abs      15 #0000000F -   217   293   294
 ComVecDiNib                       Abs       3 #00000003 -   293
 Complex2DBit                      Abs       2 #00000002 -   291
 Complex2DFl                       Abs      19 #00000013 -   221   290   291
 Complex2DNib                      Abs       4 #00000004 -   290
 ComplexBit                        Abs       2 #00000002 -   914
 ComplexFl                         Abs     103 #00000067 -   912   913   914
 ComplexNib                        Abs      25 #00000019 -   913
 ConnectPtBit                      Abs       2 #00000002 -   297
 ConnectPtFl                       Abs      31 #0000001F -   231   296   297
 ConnectPtNib                      Abs       7 #00000007 -   296
 ConstantsBit                      Abs       1 #00000001 -   300
 ConstantsFl                       Abs       2 #00000002 -   208   299   300
 ConstantsNib                      Abs       0 #00000000 -   299
 DEPTH                             Ext                   -  1749  2105  2271
 DOBINT                            Ext                   -   942
 DOCOL                             Ext                   -   935   973  1759
                                        1788  1853  1862  1880  1889  1907  1916
                                        2059  2269  2284  2303
 DOCSTR                            Ext                   -  1847  1854  1863
                                        1874  1881  1890  1901  1908  1917  2110
                                        2170  2234  2240  2246
 DOFLASHP                          Ext                   -  1040  1145  1166
                                        1173  1176  1193  1266  1269  1283  1303
                                        1323  1338  1367  1396  1435  1438  1452
                                        1472  1492  1510  1515  1520  1522  1530
                                        1539  1544  1549  1551  1559  1568  1573
                                        1578  1580  1588  1779  1935  1951  1958
                                        1965  1979  1982  1996  2003  2006  2071
                                        2092  2117  2122  2127  2129  2165  2177
                                        2182  2187  2189  2225  2262  2286
 DOIDNT                            Ext                   -   958  1223  1237
                                        1251  1349  1353  1357  1378  1382  1386
                                        1407  1411  1415  1622  1626  1630  1643
                                        1647  1651  1664  1668  1672  1685  1689
                                        1693  1706  1710  1714  1727  1731  1735
                                        2306  2312  2317  2322  2328  2333  2338
                                        2344  2349  2354  2360  2365  2370  2376
                                        2381  2386  2392  2397  2402  2408  2413
                                        2418  2426  2431  2436  2442  2447  2452
                                        2458  2463  2468  2474  2479  2484  2490
                                        2495  2500  2506  2511  2516  2524  2529
                                        2534
 DOLAM                             Ext                   -   978   981   984
                                         987   990   993   996   999  1002  1012
                                        1019  1026  1045  1048  1052  1057  1066
                                        1075  1084  1087  1091  1096  1105  1114
                                        1123  1126  1130  1149  1152  1162  1169
                                        1180  1183  1189  1198  1201  1204  1214
                                        1228  1242  1262  1287  1307  1327  1335
                                        1364  1393  1431  1456  1476  1496  1504
                                        1507  1512  1517  1533  1536  1541  1546
                                        1562  1565  1570  1575  1596  1599  1602
                                        1616  1637  1658  1679  1700  1721  1791
                                        1794  1797  1804  1807  1810  1817  1820
                                        1823  1830  1833  1836  1844  1871  1898
                                        1938  1948  1955  1962  1985  1993  1999
                                        2011  2014  2017  2023  2028  2033  2038
                                        2043  2048  2075  2096  2114  2119  2124
                                        2134  2137  2140  2146  2149  2152  2174
                                        2179  2184  2194  2197  2200  2206  2209
                                        2212  2230
 DOLIST                            Ext                   -   977  1030  1135
                                        1148  1179  1197  1273  1286  1293  1306
                                        1313  1326  1442  1455  1462  1475  1482
                                        1495  1595  1790  1803  1816  1829  1925
                                        1937  1969  1984  2010  2061  2074  2082
                                        2095  2133  2155  2193  2215  2252
 DOREAL                            Ext                   -   954  1031  1035
                                        1060  1069  1078  1099  1108  1117  1136
                                        1140  1217  1231  1245  1274  1278  1294
                                        1298  1314  1318  1443  1447  1463  1467
                                        1483  1487  1525  1554  1583  1926  1930
                                        1970  1974  2062  2066  2083  2087  2156
                                        2160  2216  2220  2253  2257
 DOROMP                            Ext                   -   948   963   966
                                        1422  1619  1640  1661  1682  1703  1724
                                        1742  1755  1761  1774  2055
 DOSCI                             Ext                   -   944
 DOSTR>                            Ext                   -  1858  1867  1885
                                        1894  1912  1921  2237  2243  2249
 DROP                              Ext                   -  1195  1271  1340
                                        1369  1398  1424  1440  1524  1553  1582
                                        1744  1953  1960  1967  2008  2131  2191
                                        2288
 DateFmtBit                        Abs       1 #00000001 -   303
 DateFmtFl                         Abs      42 #0000002A -   243   302   303
 DateFmtNib                        Abs      10 #0000000A -   302
 DblSpaceBit                       Abs       0 #00000000 -   306
 DblSpaceFl                        Abs      37 #00000025 -   237   305   306
 DblSpaceNib                       Abs       9 #00000009 -   305
 DefSysF32-01                      Abs67178480 #04010FF0 -   132
 DefSysF64-33                      Abs       0 #00000000 -   131
 DefSysF65-96                      Abs1107296256 #42000000 -   133
 DefSysF97-128                     Abs       0 #00000000 -   134
 DelNRAlmBit                       Abs       3 #00000003 -   309
 DelNRAlmFl                        Abs      44 #0000002C -   245   308   309
 DelNRAlmNib                       Abs      10 #0000000A -   308
 DesasmWithAdrBit                  Abs       2 #00000002 -   828
 DesasmWithAdrFl                   Abs      71 #00000047 -   826   827   828
 DesasmWithAdrNib                  Abs      17 #00000011 -   827
 DigitalClockBit                   Abs       2 #00000002 -   816
 DigitalClockFl                    Abs      67 #00000043 -   814   815   816
 DigitalClockNib                   Abs      16 #00000010 -   815
 EQUAL                             Ext                   -  1850  1877  1904
 ErableHeaderBit                   Abs       0 #00000000 -   894
 ErableHeaderFl                    Abs      93 #0000005D -   892   893   894
 ErableHeaderNib                   Abs      23 #00000017 -   893
 ErrorBeepBit                      Abs       3 #00000003 -   312
 ErrorBeepFl                       Abs      56 #00000038 -   256   311   312
 ErrorBeepNib                      Abs      13 #0000000D -   311
 ExactModeBit                      Abs       0 #00000000 -   919
 ExactModeFl                       Abs     105 #00000069 -   917   918   919
 ExactModeNib                      Abs      26 #0000001A -   918
 FastEViewBit                      Abs       2 #00000002 -   315
 FastEViewNib                      Abs      14 #0000000E -   314
 FastEqViewFl                      Abs      59 #0000003B -   259   314   315
 FilerConfirmBit                   Abs       0 #00000000 -   846
 FilerConfirmFl                    Abs      77 #0000004D -   844   845   846
 FilerConfirmNib                   Abs      19 #00000013 -   845
 FilerConfirmationBit              Abs       3 #00000003 -   843
 FilerConfirmationFl               Abs      76 #0000004C -   841   842   843
 FilerConfirmationNib              Abs      18 #00000012 -   842
 FullScreenEditBit                 Abs       0 #00000000 -   822
 FullScreenEditFl                  Abs      69 #00000045 -   820   821   822
 FullScreenEditNib                 Abs      17 #00000011 -   821
 FunctPlotBit                      Abs       1 #00000001 -   318
 FunctPlotFl                       Abs      30 #0000001E -   230   317   318
 FunctPlotNib                      Abs       7 #00000007 -   317
 GCursorBit                        Abs       3 #00000003 -   321
 GCursorFl                         Abs      32 #00000020 -   232   320   321
 GCursorNib                        Abs       7 #00000007 -   320
 GrobDisplayBit                    Abs       2 #00000002 -   864
 GrobDisplayFl                     Abs      83 #00000053 -   862   863   864
 GrobDisplayNib                    Abs      20 #00000014 -   863
 IODataFmtBit                      Abs       2 #00000002 -   333
 IODataFmtFl                       Abs      35 #00000023 -   235   332   333
 IODataFmtNib                      Abs       8 #00000008 -   332
 IODeviceBit                       Abs       0 #00000000 -   336
 IODeviceFl                        Abs      33 #00000021 -   233   335   336
 IODeviceNib                       Abs       8 #00000008 -   335
 IT                                Ext                   -   972  1758
 ITE                               Ext                   -  1852  1879  1906
                                        2058
 IndexWrapBit                      Abs       3 #00000003 -   324
 IndexWrapFl                       Abs      64 #00000040 -   264   323   324
 IndexWrapNib                      Abs      15 #0000000F -   323
 InfResActBit                      Abs       1 #00000001 -   327
 InfResActFl                       Abs      22 #00000016 -   224   326   327
 InfResActNib                      Abs       5 #00000005 -   326
 InfResultBit                      Abs       1 #00000001 -   330
 InfResultFl                       Abs      26 #0000001A -   228   329   330
 InfResultNib                      Abs       6 #00000006 -   329
 KernelParamBit                    Abs       1 #00000001 -   849
 KernelParamFl                     Abs      78 #0000004E -   847   848   849
 KernelParamNib                    Abs      19 #00000013 -   848
 KeystrokeBeepBit                  Abs       2 #00000002 -   840
 KeystrokeBeepFl                   Abs      75 #0000004B -   838   839   840
 KeystrokeBeepNib                  Abs      18 #00000012 -   839
 LastArgsBit                       Abs       2 #00000002 -   339
 LastArgsFl                        Abs      55 #00000037 -   255   338   339
 LastArgsNib                       Abs      13 #0000000D -   338
 MASDDecompilerBit                 Abs       1 #00000001 -   873
 MASDDecompilerFl                  Abs      86 #00000056 -   871   872   873
 MASDDecompilerNib                 Abs      21 #00000015 -   872
 MKSmallFontMenuBit                Abs       3 #00000003 -   867
 MKSmallFontMenuFl                 Abs      84 #00000054 -   865   866   867
 MKSmallFontMenuNib                Abs      20 #00000014 -   866
 MLMASDModeBit                     Abs       3 #00000003 -   891
 MLMASDModeFl                      Abs      92 #0000005C -   889   890   891
 MLMASDModeNib                     Abs      22 #00000016 -   890
 MenuOnBit                         Abs       3 #00000003 -   903
 MenuOnFl                          Abs      96 #00000060 -   901   902   903
 MenuOnNib                         Abs      23 #00000017 -   902
 MultiDispBit                      Abs       3 #00000003 -   345
 MultiDispFl                       Abs      52 #00000034 -   252   344   345
 MultiDispNib                      Abs      12 #0000000C -   344
 MultiLine2GROBBit                 Abs       1 #00000001 -   825
 MultiLine2GROBFl                  Abs      70 #00000046 -   823   824   825
 MultiLine2GROBNib                 Abs      17 #00000011 -   824
 MultiLineBit                      Abs       0 #00000000 -   810
 MultiLineFl                       Abs      65 #00000041 -   808   809   810
 MultiLineNib                      Abs      16 #00000010 -   809
 MultiLineStringsBit               Abs       1 #00000001 -   813
 MultiLineStringsFl                Abs      66 #00000042 -   811   812   813
 MultiLineStringsNib               Abs      16 #00000010 -   812
 NDROP                             Ext                   -  1751  2106  2272
 NoAutoCRBit                       Abs       1 #00000001 -   348
 NoAutoCRFl                        Abs      38 #00000026 -   238   347   348
 NoAutoCRNib                       Abs       9 #00000009 -   347
 NoIOStMsgBit                      Abs       2 #00000002 -   351
 NoIOStMsgNib                      Abs       9 #00000009 -   350
 NoIOStsMsgFl                      Abs      39 #00000027 -   239   350   351
 NoParseBit                        Abs       2 #00000002 -   354
 NoParseFl                         Abs      63 #0000003F -   263   353   354
 NoParseNib                        Abs      15 #0000000F -   353
 NumDigsBCt                        Abs       4 #00000004 -   248
 NumDigsBit1                       Abs       0 #00000000 -   357
 NumDigsFl1                        Abs      45 #0000002D -   247   356   357
 NumDigsNib                        Abs      11 #0000000B -   356
 NumDispBCt                        Abs       2 #00000002 -   250
 NumDispBit1                       Abs       0 #00000000 -   360
 NumDispFl1                        Abs      49 #00000031 -   249   359   360
 NumDispNib                        Abs      12 #0000000C -   359
 OverfActBit                       Abs       0 #00000000 -   363
 OverfActFl                        Abs      21 #00000015 -   223   362   363
 OverfActNib                       Abs       5 #00000005 -   362
 OverflowBit                       Abs       0 #00000000 -   366
 OverflowFl                        Abs      25 #00000019 -   227   365   366
 OverflowNib                       Abs       6 #00000006 -   365
 OverwriteBit                      Abs       3 #00000003 -   369
 OverwriteFl                       Abs      36 #00000024 -   236   368   369
 OverwriteNib                      Abs       8 #00000008 -   368
 PURGE                             Ext                   -  2309  2315  2320
                                        2325  2331  2336  2341  2347  2352  2357
                                        2363  2368  2373  2379  2384  2389  2395
                                        2400  2405  2411  2416  2421  2429  2434
                                        2439  2445  2450  2455  2461  2466  2471
                                        2477  2482  2487  2493  2498  2503  2509
                                        2514  2519  2527  2532  2537
 PrettyPrintBit                    Abs       2 #00000002 -   852
 PrettyPrintFl                     Abs      79 #0000004F -   850   851   852
 PrettyPrintNib                    Abs      19 #00000013 -   851
 PrintDevBit                       Abs       1 #00000001 -   372
 PrintDevFl                        Abs      34 #00000022 -   234   371   372
 PrintDevNib                       Abs       8 #00000008 -   371
 RadixBit                          Abs       2 #00000002 -   375
 RadixFl                           Abs      51 #00000033 -   251   374   375
 RadixNib                          Abs      12 #0000000C -   374
 RecursiveEditBit                  Abs       3 #00000003 -   879
 RecursiveEditFl                   Abs      88 #00000058 -   877   878   879
 RecursiveEditNib                  Abs      21 #00000015 -   878
 RecursiveStackBit                 Abs       2 #00000002 -   876
 RecursiveStackFl                  Abs      87 #00000057 -   874   875   876
 RecursiveStackNib                 Abs      21 #00000015 -   875
 ResRepAlmBit                      Abs       2 #00000002 -   378
 ResRepAlmFl                       Abs      43 #0000002B -   244   377   378
 ResRepAlmNib                      Abs      10 #0000000A -   377
 ResultsBit                        Abs       2 #00000002 -   381
 ResultsFl                         Abs       3 #00000003 -   209   380   381
 ResultsNib                        Abs       0 #00000000 -   380
 RightJustifiedStackBit            Abs       1 #00000001 -   837
 RightJustifiedStackFl             Abs      74 #0000004A -   835   836   837
 RightJustifiedStackNib            Abs      18 #00000012 -   836
=RomId                             Abs     546 #00000222 -    10
 SEMI                              Ext                   -  1005  1039  1144
                                        1155  1186  1207  1282  1290  1302  1310
                                        1322  1330  1451  1459  1471  1479  1491
                                        1499  1605  1766  1770  1782  1800  1813
                                        1826  1839  1860  1869  1887  1896  1914
                                        1923  1934  1941  1978  1988  2020  2070
                                        2078  2091  2099  2143  2164  2203  2224
                                        2261  2267  2274  2278  2297  2539
 STO                               Ext                   -  2031  2041  2051
 ShowPrecBit                       Abs       0 #00000000 -   384
 ShowPrecFl                        Abs      53 #00000035 -   253   383   384
 ShowPrecNib                       Abs      13 #0000000D -   383
 SmallFontChooseBit                Abs       1 #00000001 -   885
 SmallFontChooseFl                 Abs      90 #0000005A -   883   884   885
 SmallFontChooseNib                Abs      22 #00000016 -   884
 SmallFontEQWEditBit               Abs       1 #00000001 -   861
 SmallFontEQWEditFl                Abs      82 #00000052 -   859   860   861
 SmallFontEQWEditNib               Abs      20 #00000014 -   860
 SmallFontEQWGrobBit               Abs       0 #00000000 -   858
 SmallFontEQWGrobFl                Abs      81 #00000051 -   856   857   858
 SmallFontEQWGrobNib               Abs      20 #00000014 -   857
 SmallFontEQWStackBit              Abs       3 #00000003 -   855
 SmallFontEQWStackFl               Abs      80 #00000050 -   853   854   855
 SmallFontEQWStackNib              Abs      19 #00000013 -   854
 SolutionsBit                      Abs       0 #00000000 -   387
 SolutionsFl                       Abs       1 #00000001 -   207   386   387
 SolutionsNib                      Abs       0 #00000000 -   386
 SystemRPLStackBit                 Abs       0 #00000000 -   870
 SystemRPLStackFl                  Abs      85 #00000055 -   868   869   870
 SystemRPLStackNib                 Abs      21 #00000015 -   869
 TriAlphaBit                       Abs       3 #00000003 -   390
 TriAlphaFl                        Abs      60 #0000003C -   260   389   390
 TriAlphaNib                       Abs      14 #0000000E -   389
 TriUserBit                        Abs       0 #00000000 -   393
 TriUserFl                         Abs      61 #0000003D -   261   392   393
 TriUserNib                        Abs      15 #0000000F -   392
 UNROT                             Ext                   -  1343  1345  1347
                                        1372  1374  1376  1401  1403  1405  2291
                                        2293  2295
 UnderfActBit                      Abs       3 #00000003 -   396
 UnderfActFl                       Abs      20 #00000014 -   222   395   396
 UnderfActNib                      Abs       4 #00000004 -   395
 UnderfNegBit                      Abs       2 #00000002 -   399
 UnderfNegFl                       Abs      23 #00000017 -   225   398   399
 UnderfNegNib                      Abs       5 #00000005 -   398
 UnderfPosBit                      Abs       3 #00000003 -   402
 UnderfPosFl                       Abs      24 #00000018 -   226   401   402
 UnderfPosNib                      Abs       5 #00000005 -   401
 UserKeysBit                       Abs       1 #00000001 -   405
 UserKeysFl                        Abs      62 #0000003E -   262   404   405
 UserKeysNib                       Abs      15 #0000000F -   404
=VectorToSTR                       Rel    5597 #000015DD -  2282
 VerboseBit                        Abs       1 #00000001 -   342
 VerboseFl                         Abs      58 #0000003A -   258   341   342
 VerboseNib                        Abs      14 #0000000E -   341
 VerticalListBit                   Abs       0 #00000000 -   906
 VerticalListFl                    Abs      97 #00000061 -   904   905   906
 VerticalListNib                   Abs      24 #00000018 -   905
 VerticalVectorBit                 Abs       1 #00000001 -   909
 VerticalVectorFl                  Abs      98 #00000062 -   907   908   909
 VerticalVectorNib                 Abs      24 #00000018 -   908
 ^EXACTON                          Ext                   -  1780
 ^MAT*                             Ext                   -  1174  1516  1521
                                        1545  1550  1574  1579  2004  2123  2128
                                        2183  2188
 ^MAT/SCL                          Ext                   -  1531  1560  1589
 ^MATEGV                           Ext                   -  1177
 ^MATINV                           Ext                   -  1167
 ^MATTRAN                          Ext                   -  1267  1436  1511
                                        1540  1569  1983  1997  2118  2178
 ^XEQ>ARRY                         Ext                   -  1041  1146  1284
                                        1304  1324  1453  1473  1493  1936  1980
                                        2072  2093  2166  2226  2263
 ^XEQARRY>                         Ext                   -  1194  1270  1339
                                        1368  1397  1439  1523  1552  1581  1952
                                        1959  1966  2007  2130  2190  2287
 a%>$                              Ext                   -  1222  1236  1250
                                        1342  1344  1346  1371  1373  1375  1400
                                        1402  1404  2290  2292  2294
=analiseQ                          Rel    3223 #00000C97 -  1786
 hasALIAS                          Abs       2 #00000002 -   418
 hasCOLCT                          Abs       2 #00000002 -   424
 hasDER                            Abs       8 #00000008 -   422
 hasEXPND                          Abs       1 #00000001 -   425
 hasFORM                           Abs       8 #00000008 -   428
 hasHELP                           Abs       4 #00000004 -   416
 hasINTG                           Abs       4 #00000004 -   429
 hasINV                            Abs       4 #00000004 -   423
 hasPDATA                          Abs       1 #00000001 -   419
 hasPROMPTM                        Abs       4 #00000004 -   417
 hasVUNS                           Abs       1 #00000001 -   431
 hasWHERE                          Abs       2 #00000002 -   430
 nonALG                            Abs       8 #00000008 -   415
 pdCM                              Abs       6 #00000006 -   440
 pdEQ                              Abs       7 #00000007 -   441
 pdEX                              Abs       0 #00000000 -   434
 pdLP                              Abs       4 #00000004 -   438
 pdOP                              Abs       1 #00000001 -   435
 pdOS0                             Abs       8 #00000008 -   442
 pdOS1                             Abs       9 #00000009 -   443
 pdOS2                             Abs      10 #0000000A -   444
 pdOS3                             Abs      11 #0000000B -   445
 pdOS4                             Abs      12 #0000000C -   446
 pdOS5                             Abs      13 #0000000D -   447
 pdOS6                             Abs      14 #0000000E -   448
 pdOS7                             Abs      15 #0000000F -   449
 pdQE                              Abs       2 #00000002 -   436
 pdQN                              Abs       3 #00000003 -   437
 pdRP                              Abs       5 #00000005 -   439
=purgeAll                          Rel    5654 #00001616 -  2301
 rstfmt1                           Ext                   -  1772
 savefmt1                          Ext                   -   940
 xEVAL                             Ext                   -  1859  1868  1886
                                        1895  1913  1922  2026  2036  2046  2238
                                        2244  2250
=xVibeM                            Rel       6 #00000006 -   933
 ~Forcemenu                        Ext                   -  1756
 ~InitCond                         Ext                   -  2056
 ~KMmenu                           Ext                   -   967
 ~MTV                              Ext                   -  1743
 ~MTV1                             Ext                   -  1423
 ~VectorToSTR                      Ext                   -  1620  1641  1662
                                        1683  1704  1725
 ~Welcome                          Ext                   -   964
 ~analiseQ                         Ext                   -  1762
 ~purgeAll                         Ext                   -   949  1775
 ~xVibeM                           Ext                   -   932
Saturn Assembler                                       Tue May 22 21:55:38 2018
V3.0.9 (04/15/2007)   Statistics                         MainMDF.a      Page    3

Input Parameters

  Source file name is MainMDF.a

  Listing file name is MainMDF.l

  Object file name is MainMDF.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
