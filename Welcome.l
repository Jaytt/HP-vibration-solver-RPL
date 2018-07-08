Saturn Assembler                                       Tue May 22 21:55:38 2018
V3.0.9 (04/15/2007)                                      Welcome.a      Page    1

    1               * File  Welcome.s       1
    2               * RPL
    3               * File  Welcome.s       2
    4               * C:\Users\Neo\Desktop\HP\Vibrações 1\KMmenu.s, part of the Vibrations.hpp project, created by <> on 24/12/2017
    5               * File  Welcome.s       3
    6
    7               * File  Welcome.s       4
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
   21               *|| Resuming file Welcome.s at line 4
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
  108               *|| Resuming file Welcome.s at line 5
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
  930               *|| Resuming file Welcome.s at line 6
  931
  932 00000         =Welcome
  933               * File  Welcome.s       9
  934 00000 00000           CON(5)  =DOCOL
  935               * File  Welcome.s       10
  936
  937               * File  Welcome.s       11
  938 00005 00000           CON(5)  =0LASTOWDOB!
  939 0000A 00000           CON(5)  =CK0NOLASTWD
  940               * File  Welcome.s       12
  941 0000F 00000           CON(5)  =ClrDA1IsStat
  942 00014 00000           CON(5)  =RECLAIMDISP
  943               * File  Welcome.s       13
  944 00019 00000           CON(5)  =TURNMENUOFF
  945               * File  Welcome.s       14
  946
  947               * File  Welcome.s       15
  948 0001E 00000           CON(5)  =HARDBUFF2
  949               * Pointer to menu grob
  950               * File  Welcome.s       16
  951 00023 00000           CON(5)  =ZEROZERO
  952 00028 00000           CON(5)  =DOBINT
  953 0002D 38000           CON(5)  131
  954 00032 00000           CON(5)  =EIGHT
  955 00037 00000           CON(5)  =GROB!ZERO
  956               * Clear menu grob
  957               * File  Welcome.s       17
  958 0003C 00000           CON(5)  =INVGROB
  959               * Invert menu grob
  960               * File  Welcome.s       18
  961 00041 00000           CON(5)  =ZERO
  962 00046 00000           CON(5)  =ONE
  963 0004B 00000           CON(5)  =DOBINT
  964 00050 38000           CON(5)  131
  965 00055 00000           CON(5)  =EIGHT
  966 0005A 00000           CON(5)  =GROB!ZERODRP
  967               * Clear bottom seven rows of menu grob
  968               * File  Welcome.s       19
  969 0005F 00000           CON(5)  =ABUFF
  970 00064 00000           CON(5)  =DOBINT
  971 00069 05000           CON(5)  80
  972 0006E 00000           CON(5)  =HEIGHTENGROB
  973               * File  Welcome.s       20
  974
  975               * File  Welcome.s       21
  976 00073 00000           CON(5)  =DOGROB
  977 00078 FE900           CON(5)  2543
  978 0007D F4000E7         NIBHEX  F4000E7000000000
            0000000
            00
  979 0008D 0000000         NIBHEX  0000000000000000
            0000000
            00
  980 0009D 0000000         NIBHEX  000000000000E003
            00000E0
            03
  981 000AD 000000C         NIBHEX  000000C0100E1000
            0100E10
            00
  982 000BD 0706000         NIBHEX  0706000C100042A0
            C100042
            A0
  983 000CD 4668842         NIBHEX  4668842010084AEE
            010084A
            EE
  984 000DD 0109CCC         NIBHEX  0109CCC480004E83
            480004E
            83
  985 000ED AAA88AE         NIBHEX  AAA88AE03508AC44
            03508AC
            44
  986 000FD 0301255         NIBHEX  0301255D41004A22
            D41004A
            22
  987 0010D E668AE8         NIBHEX  E668AE805608E844
            05608E8
            44
  988 0011D 01092DC         NIBHEX  01092DC4C1004AA1
            4C1004A
            A1
  989 0012D A2205A6         NIBHEX  A2205A603409A644
            03409A6
            44
  990 0013D 0116C45         NIBHEX  0116C45D51000000
            D510000
            00
  991 0014D 0000000         NIBHEX  0000000003060000
            0030600
            00
  992 0015D 0000000         NIBHEX  0000000000000000
            0000000
            00
  993 0016D 0000000         NIBHEX  0000000000000000
            0000000
            00
  994 0017D 0000000         NIBHEX  0000000000000000
            0000000
            00
  995 0018D 0000000         NIBHEX  0000000000000000
            0000000
            00
  996 0019D 0000000         NIBHEX  0000000000000000
            0000000
            00
  997 001AD 0000000         NIBHEX  0000000000000000
            0000000
            00
  998 001BD 0000000         NIBHEX  0000000000000000
            0000000
            00
  999 001CD 0000000         NIBHEX  0000000000000000
            0000000
            00
 1000 001DD 0000000         NIBHEX  0000000000000000
            0000000
            00
 1001 001ED 0000000         NIBHEX  0000000000000000
            0000000
            00
 1002 001FD 0000000         NIBHEX  0000000000200000
            0002000
            00
 1003 0020D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1004 0021D 0000000         NIBHEX  0000000000210004
            0002100
            04
 1005 0022D 0700700         NIBHEX  0700700040000000
            0400000
            00
 1006 0023D 0000000         NIBHEX  0000000000A05625
            000A056
            25
 1007 0024D 3184152         NIBHEX  3184152307000000
            3070000
            00
 1008 0025D 0000000         NIBHEX  0000000000A16921
            000A169
            21
 1009 0026D 53847CA         NIBHEX  53847CA442000000
            4420000
            00
 1010 0027D 0000000         NIBHEX  0000000000A04921
            000A049
            21
 1011 0028D 318445B         NIBHEX  318445B442000000
            4420000
            00
 1012 0029D 0000000         NIBHEX  0000000000A036C1
            000A036
            C1
 1013 002AD 5703752         NIBHEX  5703752742000000
            7420000
            00
 1014 002BD 0000000         NIBHEX  0000000000000000
            0000000
            00
 1015 002CD 0000000         NIBHEX  0000000400000000
            4000000
            00
 1016 002DD 0000000         NIBHEX  0000000000000000
            0000000
            00
 1017 002ED 0000008         NIBHEX  0000008400000000
            4000000
            00
 1018 002FD 00E006E         NIBHEX  00E006EE00000000
            E000000
            00
 1019 0030D 0000000         NIBHEX  0000000349948982
            3499489
            82
 1020 0031D 98201A2         NIBHEX  98201A2260000000
            2600000
            00
 1021 0032D 0000000         NIBHEX  0000000085A44A86
            085A44A
            86
 1022 0033D 9D68266         NIBHEX  9D682666A0000000
            6A00000
            00
 1023 0034D 0000000         NIBHEX  0000000005A44AAA
            005A44A
            AA
 1024 0035D 9A283A2         NIBHEX  9A283A2260000000
            2600000
            00
 1025 0036D 0000000         NIBHEX  00000000C8178152
            0C81781
            52
 1026 0037D 98E826E         NIBHEX  98E826EEA0000000
            EA00000
            00
 1027 0038D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1028 0039D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1029 003AD 0000000         NIBHEX  0000000000000000
            0000000
            00
 1030 003BD 0000000         NIBHEX  0000000000000000
            0000000
            00
 1031 003CD 0000000         NIBHEX  0000000000000000
            0000000
            00
 1032 003DD 0000000         NIBHEX  0000000000000000
            0000000
            00
 1033 003ED 0000000         NIBHEX  0000000000000000
            0000000
            00
 1034 003FD 0000000         NIBHEX  0000000000000000
            0000000
            00
 1035 0040D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1036 0041D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1037 0042D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1038 0043D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1039 0044D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1040 0045D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1041 0046D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1042 0047D 00FF700         NIBHEX  00FF700000000000
            0000000
            00
 1043 0048D 0000000         NIBHEX  0000000000000002
            0000000
            02
 1044 0049D 4C30000         NIBHEX  4C30000000000000
            0000000
            00
 1045 004AD 0000000         NIBHEX  0000000000000003
            0000000
            03
 1046 004BD F300000         NIBHEX  F300000000000000
            0000000
            00
 1047 004CD 0000000         NIBHEX  00000000000000FF
            0000000
            FF
 1048 004DD 7000000         NIBHEX  7000000000000000
            0000000
            00
 1049 004ED 0000040         NIBHEX  0000040000000001
            0000000
            01
 1050 004FD 2000000         NIBHEX  2000000000000000
            0000000
            00
 1051 0050D 00000C0         NIBHEX  00000C0000000081
            0000000
            81
 1052 0051D 3000000         NIBHEX  3000000000000000
            0000000
            00
 1053 0052D 0000060         NIBHEX  0000060000000080
            0000000
            80
 1054 0053D 1000000         NIBHEX  1000000000000000
            0000000
            00
 1055 0054D 0000060         NIBHEX  0000060000008180
            0000081
            80
 1056 0055D 1000000         NIBHEX  1000000000000000
            0000000
            00
 1057 0056D 0000060         NIBHEX  000006000000C148
            00000C1
            48
 1058 0057D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1059 0058D 0000060         NIBHEX  0000060E3000E048
            E3000E0
            48
 1060 0059D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1061 005AD 0000030         NIBHEX  00000307E0817028
            7E08170
            28
 1062 005BD 0000000         NIBHEX  0000000000000000
            0000000
            00
 1063 005CD 0000038         NIBHEX  00000381E0C9702C
            1E0C970
            2C
 1064 005DD 0000000         NIBHEX  0000000000000000
            0000000
            00
 1065 005ED 0000038         NIBHEX  00000380E03F3024
            0E03F30
            24
 1066 005FD 0000000         NIBHEX  0000000000000000
            0000000
            00
 1067 0060D 0000038         NIBHEX  00000380BC063004
            0BC0630
            04
 1068 0061D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1069 0062D 0000038         NIBHEX  0000038F13001000
            F130010
            00
 1070 0063D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1071 0064D 00008F0         NIBHEX  00008F0600081000
            6000810
            00
 1072 0065D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1073 0066D 0FFFF70         NIBHEX  0FFFF70000080000
            0000800
            00
 1074 0067D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1075 0068D CFF0810         NIBHEX  CFF08100000C0000
            0000C00
            00
 1076 0069D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1077 006AD 00C1800         NIBHEX  00C1800000040000
            0000400
            00
 1078 006BD 0000000         NIBHEX  0000000000000000
            0000000
            00
 1079 006CD 0083800         NIBHEX  0083800000020000
            0000200
            00
 1080 006DD 0000000         NIBHEX  0000000000000000
            0000000
            00
 1081 006ED 0006800         NIBHEX  0006800000020000
            0000200
            00
 1082 006FD 0000000         NIBHEX  0000000000000000
            0000000
            00
 1083 0070D 000C400         NIBHEX  000C400000010000
            0000100
            00
 1084 0071D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1085 0072D 0008500         NIBHEX  0008500000000000
            0000000
            00
 1086 0073D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1087 0074D 0008700         NIBHEX  0008700000000000
            0000000
            00
 1088 0075D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1089 0076D 0000700         NIBHEX  0000700000000000
            0000000
            00
 1090 0077D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1091 0078D 0000300         NIBHEX  0000300000000000
            0000000
            00
 1092 0079D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1093 007AD 0000300         NIBHEX  0000300000000000
            0000000
            00
 1094 007BD 0000000         NIBHEX  0000000000000000
            0000000
            00
 1095 007CD 0000200         NIBHEX  0000200E10000000
            E100000
            00
 1096 007DD 0000000         NIBHEX  0000000000000000
            0000000
            00
 1097 007ED 0000000         NIBHEX  0000000120000000
            1200000
            00
 1098 007FD 0000000         NIBHEX  00000000000E1000
            0000E10
            00
 1099 0080D C000838         NIBHEX  C000838C46220281
            C462202
            81
 1100 0081D 0110000         NIBHEX  0110000000084AEE
            000084A
            EE
 1101 0082D 2999909         NIBHEX  2999909259639242
            2596392
            42
 1102 0083D 3B10000         NIBHEX  3B1000000008AC44
            00008AC
            44
 1103 0084D 24AAA9A         NIBHEX  24AAA9A279AA2248
            279AA22
            48
 1104 0085D 4510000         NIBHEX  451000000008E844
            00008E8
            44
 1105 0086D 25A998B         NIBHEX  25A998BC6E2AB24A
            C6E2AB2
            4A
 1106 0087D 4110000         NIBHEX  411000000009A644
            00009A6
            44
 1107 0088D C89AAB2         NIBHEX  C89AAB21082AA691
            1082AA6
            91
 1108 0089D 3110000         NIBHEX  3110000000060000
            0000600
            00
 1109 008AD 0000000         NIBHEX  0000000E19000000
            E190000
            00
 1110 008BD 0000000         NIBHEX  0000000000000000
            0000000
            00
 1111 008CD 0000000         NIBHEX  0000000006000000
            0060000
            00
 1112 008DD 0000000         NIBHEX  0000000000000000
            0000000
            00
 1113 008ED 0000000         NIBHEX  0000000000000000
            0000000
            00
 1114 008FD 0000000         NIBHEX  0000000000000000
            0000000
            00
 1115 0090D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1116 0091D 0020000         NIBHEX  0020000000000000
            0000000
            00
 1117 0092D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1118 0093D 0010000         NIBHEX  0010000000000000
            0000000
            00
 1119 0094D 0000000         NIBHEX  0000000000011040
            0000110
            40
 1120 0095D 0008164         NIBHEX  0008164C00000000
            C000000
            00
 1121 0096D 0000000         NIBHEX  00000000000B9C09
            0000B9C
            09
 1122 0097D C804296         NIBHEX  C804296210000000
            2100000
            00
 1123 0098D 0000000         NIBHEX  000000000005555B
            0000555
            5B
 1124 0099D 2510294         NIBHEX  2510294C00000000
            C000000
            00
 1125 009AD 0000000         NIBHEX  000000000001DD4D
            00001DD
            4D
 1126 009BD 2D10194         NIBHEX  2D10194210000000
            2100000
            00
 1127 009CD 0000000         NIBHEX  0000000000015559
            0000155
            59
 1128 009DD C518094         NIBHEX  C518094210000000
            2100000
            00
 1129 009ED 0000000         NIBHEX  0000000000000000
            0000000
            00
 1130 009FD 010C36E         NIBHEX  010C36EC00000000
            C000000
            00
 1131 00A0D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1132 00A1D 2100000         NIBHEX  2100000000000000
            0000000
            00
 1133 00A2D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1134 00A3D C000000         NIBHEX  C000000000000000
            0000000
            00
 1135 00A4D 0000000         NIBHEX  0000000000000000
            0000000
            00
 1136 00A5D 0000000         NIBHEX  0000000000
            000
 1137               * File  Welcome.s       22
 1138 00A67 00000           CON(5)  =ABUFF
 1139 00A6C 00000           CON(5)  =DOBINT
 1140 00A71 00000           CON(5)  0
 1141 00A76 00000           CON(5)  =DOBINT
 1142 00A7B 00000           CON(5)  0
 1143 00A80 00000           CON(5)  =GROB!
 1144               * File  Welcome.s       23
 1145 00A85 00000           CON(5)  =DOBINT
 1146 00A8A 00000           CON(5)  0
 1147 00A8F 00000           CON(5)  =DOBINT
 1148 00A94 00000           CON(5)  0
 1149 00A99 00000           CON(5)  =DOBINT
 1150 00A9E 20000           CON(5)  2
 1151 00AA3 00000           CON(5)  =DOBINT
 1152 00AA8 20000           CON(5)  2
 1153 00AAD 00000           CON(5)  =LINEOFF
 1154               * File  Welcome.s       24
 1155
 1156               *  FindF
 1157               * File  Welcome.s       26
 1158 00AB2 00000           CON(5)  =WaitForKey
 1159               * File  Welcome.s       27
 1160
 1161               * File  Welcome.s       28
 1162 00AB7 00000           CON(5)  =FLUSHKEYS
 1163 00ABC 00000           CON(5)  =ATTNFLGCLR
 1164               * File  Welcome.s       29
 1165 00AC1 00000           CON(5)  =ClrDAsOK
 1166               * File  Welcome.s       30
 1167 00AC6 00000           CON(5)  =RECLAIMDISP
 1168               * Resize and clear ABUFF when done
 1169               * File  Welcome.s       31
 1170
 1171               * File  Welcome.s       32
 1172 00ACB 00000           CON(5)  =SEMI
Saturn Assembler                                       Tue May 22 21:55:38 2018
V3.0.9 (04/15/2007)   Symbol Table                       Welcome.a      Page    2

 0LASTOWDOB!                       Ext                   -   938
 ABUFF                             Ext                   -   969  1138
 ATTNFLGCLR                        Ext                   -  1163
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
 CK0NOLASTWD                       Ext                   -   939
 CarefulBit                        Abs       3 #00000003 -   282
 CarefulFl                         Abs       4 #00000004 -   210   281   282
 CarefulNib                        Abs       0 #00000000 -   281
 ClockFmtBit                       Abs       0 #00000000 -   285
 ClockFmtFl                        Abs      41 #00000029 -   242   284   285
 ClockFmtNib                       Abs      10 #0000000A -   284
 ClockOnBit                        Abs       3 #00000003 -   288
 ClockOnFl                         Abs      40 #00000028 -   241   287   288
 ClockOnNib                        Abs       9 #00000009 -   287
 ClrDA1IsStat                      Ext                   -   941
 ClrDAsOK                          Ext                   -  1165
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
 DOBINT                            Ext                   -   952   963   970
                                        1139  1141  1145  1147  1149  1151
 DOCOL                             Ext                   -   934
 DOGROB                            Ext                   -   976
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
 EIGHT                             Ext                   -   954   965
 ErableHeaderBit                   Abs       0 #00000000 -   894
 ErableHeaderFl                    Abs      93 #0000005D -   892   893   894
 ErableHeaderNib                   Abs      23 #00000017 -   893
 ErrorBeepBit                      Abs       3 #00000003 -   312
 ErrorBeepFl                       Abs      56 #00000038 -   256   311   312
 ErrorBeepNib                      Abs      13 #0000000D -   311
 ExactModeBit                      Abs       0 #00000000 -   919
 ExactModeFl                       Abs     105 #00000069 -   917   918   919
 ExactModeNib                      Abs      26 #0000001A -   918
 FLUSHKEYS                         Ext                   -  1162
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
 GROB!                             Ext                   -  1143
 GROB!ZERO                         Ext                   -   955
 GROB!ZERODRP                      Ext                   -   966
 GrobDisplayBit                    Abs       2 #00000002 -   864
 GrobDisplayFl                     Abs      83 #00000053 -   862   863   864
 GrobDisplayNib                    Abs      20 #00000014 -   863
 HARDBUFF2                         Ext                   -   948
 HEIGHTENGROB                      Ext                   -   972
 INVGROB                           Ext                   -   958
 IODataFmtBit                      Abs       2 #00000002 -   333
 IODataFmtFl                       Abs      35 #00000023 -   235   332   333
 IODataFmtNib                      Abs       8 #00000008 -   332
 IODeviceBit                       Abs       0 #00000000 -   336
 IODeviceFl                        Abs      33 #00000021 -   233   335   336
 IODeviceNib                       Abs       8 #00000008 -   335
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
 LINEOFF                           Ext                   -  1153
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
 ONE                               Ext                   -   962
 OverfActBit                       Abs       0 #00000000 -   363
 OverfActFl                        Abs      21 #00000015 -   223   362   363
 OverfActNib                       Abs       5 #00000005 -   362
 OverflowBit                       Abs       0 #00000000 -   366
 OverflowFl                        Abs      25 #00000019 -   227   365   366
 OverflowNib                       Abs       6 #00000006 -   365
 OverwriteBit                      Abs       3 #00000003 -   369
 OverwriteFl                       Abs      36 #00000024 -   236   368   369
 OverwriteNib                      Abs       8 #00000008 -   368
 PrettyPrintBit                    Abs       2 #00000002 -   852
 PrettyPrintFl                     Abs      79 #0000004F -   850   851   852
 PrettyPrintNib                    Abs      19 #00000013 -   851
 PrintDevBit                       Abs       1 #00000001 -   372
 PrintDevFl                        Abs      34 #00000022 -   234   371   372
 PrintDevNib                       Abs       8 #00000008 -   371
 RECLAIMDISP                       Ext                   -   942  1167
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
 SEMI                              Ext                   -  1172
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
 TURNMENUOFF                       Ext                   -   944
 TriAlphaBit                       Abs       3 #00000003 -   390
 TriAlphaFl                        Abs      60 #0000003C -   260   389   390
 TriAlphaNib                       Abs      14 #0000000E -   389
 TriUserBit                        Abs       0 #00000000 -   393
 TriUserFl                         Abs      61 #0000003D -   261   392   393
 TriUserNib                        Abs      15 #0000000F -   392
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
 VerboseBit                        Abs       1 #00000001 -   342
 VerboseFl                         Abs      58 #0000003A -   258   341   342
 VerboseNib                        Abs      14 #0000000E -   341
 VerticalListBit                   Abs       0 #00000000 -   906
 VerticalListFl                    Abs      97 #00000061 -   904   905   906
 VerticalListNib                   Abs      24 #00000018 -   905
 VerticalVectorBit                 Abs       1 #00000001 -   909
 VerticalVectorFl                  Abs      98 #00000062 -   907   908   909
 VerticalVectorNib                 Abs      24 #00000018 -   908
 WaitForKey                        Ext                   -  1158
=Welcome                           Rel       0 #00000000 -   932
 ZERO                              Ext                   -   961
 ZEROZERO                          Ext                   -   951
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
Saturn Assembler                                       Tue May 22 21:55:38 2018
V3.0.9 (04/15/2007)   Statistics                         Welcome.a      Page    3

Input Parameters

  Source file name is Welcome.a

  Listing file name is Welcome.l

  Object file name is Welcome.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
