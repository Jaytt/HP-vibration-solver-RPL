Saturn Assembler                                       Tue May 22 21:55:38 2018
V3.0.9 (04/15/2007)                                      KMmenuMDF.a    Page    1

    1               * File  KMmenuMDF.s     1
    2               * RPL
    3               * File  KMmenuMDF.s     2
    4               * C:\Users\Neo\Desktop\HP\Vibrações 1\KMmenu.s, part of the Vibrations.hpp project, created by <> on 24/12/2017
    5               * File  KMmenuMDF.s     3
    6
    7               * File  KMmenuMDF.s     4
    8
    9               * File  KMmenuMDF.s     5
   10               *|| Reading from C:\Users\NewUser\Dropbox\HP Progs\HP\Vibrações\single dregree of freedom\VibrationsSDF.h
   11
   12               =RomId  EQU     #222
   13               * ROMID set to 222
   14
   15
   16
   17
   18
   19
   20
   21
   22
   23               *|| Resuming file KMmenuMDF.s at line 5
   24               *|| Reading from C:\Users\NewUser\Documents\Debug4x\Include\informbox.h
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
   95
   96
   97               * Do not modify any of these constants
   98
   99               * Do not modify any of these constants
  100               * ( was zint
  101
  102
  103
  104
  105
  106
  107
  108
  109
  110               *|| Resuming file KMmenuMDF.s at line 6
  111               *|| Reading from C:\Users\NewUser\Documents\Debug4x\Include\Header.h
  112
  113
  114               * RPL
  115               * insure RPL-mode exit
  116
  117               * ( Rad
  118
  119               * ( %2PI
  120               * ( %PI/24
  121
  122
  123
  124
  125               * ( 1=1Var, 2=2Var Statistic
  126               * ( 1=Histogram, 2=BoxWhisker
  127
  128
  129
  130
  131
  132               * ASSEMBLE
  133               DefSysF64-33 EQU        #00000000
  134               DefSysF32-01 EQU        #04010FF0
  135               DefSysF65-96 EQU        #42000000       Just Algebraic Mode is On by Default
  136               DefSysF97-128 EQU       #00000000
  137
  138               * RPL
  139
  140
  141               * ( solution mode
  142               * ( constants mode
  143               * ( results mode
  144               * ( careful evaluation mode
  145
  146               * ( binary integer wordsize
  147               * must start on nibble boundary
  148               * ( binary integer base
  149               * must follow "fnBinWordS6"
  150
  151               * ( financial BEGIN/END mode
  152               * ( complex number and vector
  153               * mode
  154               * ( angle mode
  155               * must start on a nibble boundary
  156               * ( complex 2D mode
  157               * ( underflow action
  158               * ( overflow action
  159               * ( infinite result action
  160               * ( underflow-negative indicator
  161               * ( underflow-positive indicator
  162               * ( overflow indicator
  163               * ( infinite result indicator
  164               * ( symbolic-comples decompilation
  165               * ( simultaneous plot mode
  166               * ( axis drawing plot mode
  167
  168               * ( connect points mode
  169               * ( graphics cursor type mode
  170               * ( I/O device
  171               * ( print device
  172               * ( I/O data format
  173               * ( variable overwrite mode
  174               * ( double-space print mode
  175               * ( suppress auto CR mode
  176               * ( suppress I/O status messages
  177
  178
  179               * ( clock display mode
  180               * ( clock display format
  181               * ( date format
  182               * ( reschedule unacknowledged
  183               * repeat alarms mode
  184               * ( delete acknowledged non-repeat
  185               * alarms mode
  186
  187               * ( number of decimal digits
  188               * must start on nibble boundary
  189               * ( number display format
  190               * must start on nibble boundary
  191               * ( radix mark
  192               * ( multi-line display mode
  193               * ( show precedence mode
  194               * ( zero out tiny matrix elements
  195
  196               * ( last arguments mode
  197               * ( error beep mode
  198               * ( alarm beep mode
  199               * ( verbose display mode
  200               * ( variable name only mode
  201               * ( 3-way alpha mode
  202               * ( 3-way user keys mode
  203               * ( user keys mode
  204               * ( special parser mode
  205               * ( index wraparound indicator
  206
  207
  208               * ASSEMBLE
  209               SolutionsFl  EQU 1
  210               ConstantsFl  EQU 2
  211               ResultsFl    EQU 3
  212               CarefulFl    EQU 4
  213
  214               BinWordSFl1  EQU 5      must start on a nibble boundary
  215               BinWordSBCt  EQU 6      number of bits
  216               BinBaseFl1   EQU 11     must follow "BinWordSFl6"
  217               BinBaseBCt   EQU 2      number of bits
  218
  219               ComVecDiFl1  EQU 15
  220               ComVecDiBCt  EQU 2      number of bits
  221               AngleFl1     EQU 17     must start on a nibble boundary
  222               AngleBCt     EQU 2      number of bits
  223               Complex2DFl  EQU 19
  224               UnderfActFl  EQU 20
  225               OverfActFl   EQU 21
  226               InfResActFl  EQU 22
  227               UnderfNegFl  EQU 23
  228               UnderfPosFl  EQU 24
  229               OverflowFl   EQU 25
  230               InfResultFl  EQU 26
  231
  232               FunctPlotFl  EQU 30
  233               ConnectPtFl  EQU 31
  234               GCursorFl    EQU 32
  235               IODeviceFl   EQU 33
  236               PrintDevFl   EQU 34
  237               IODataFmtFl  EQU 35
  238               OverwriteFl  EQU 36
  239               DblSpaceFl   EQU 37
  240               NoAutoCRFl   EQU 38
  241               NoIOStsMsgFl EQU 39
  242
  243               ClockOnFl    EQU 40
  244               ClockFmtFl   EQU 41
  245               DateFmtFl    EQU 42
  246               ResRepAlmFl  EQU 43
  247               DelNRAlmFl   EQU 44
  248
  249               NumDigsFl1   EQU 45     must start on a nibble boundary
  250               NumDigsBCt   EQU 4      number of bits
  251               NumDispFl1   EQU 49     must start on a nibble boundary
  252               NumDispBCt   EQU 2      number of bits
  253               RadixFl      EQU 51
  254               MultiDispFl  EQU 52
  255               ShowPrecFl   EQU 53
  256
  257               LastArgsFl   EQU 55
  258               ErrorBeepFl  EQU 56
  259               AlarmBeepFl  EQU 57
  260               VerboseFl    EQU 58
  261               FastEqViewFl EQU 59
  262               TriAlphaFl   EQU 60
  263               TriUserFl    EQU 61
  264               UserKeysFl   EQU 62
  265               NoParseFl    EQU 63
  266               IndexWrapFl  EQU 64
  267
  268
  269
  270               AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
  271               AlarmBeepBit EQU ((AlarmBeepFl)-1)%4
  272
  273               AngleNib     EQU ((AngleFl1)-1)/4
  274               AngleBit1    EQU ((AngleFl1)-1)%4
  275               AngleBit2    EQU (AngleBit1)+1
  276
  277               BinBaseNib   EQU ((BinBaseFl1)-1)/4
  278               BinBaseBit1  EQU ((BinBaseFl1)-1)%4
  279
  280               BinWordSNib  EQU ((BinWordSFl1)-1)/4
  281               BinWordSBit1 EQU ((BinWordSFl1)-1)%4
  282
  283               CarefulNib   EQU ((CarefulFl)-1)/4
  284               CarefulBit   EQU ((CarefulFl)-1)%4
  285
  286               ClockFmtNib  EQU ((ClockFmtFl)-1)/4
  287               ClockFmtBit  EQU ((ClockFmtFl)-1)%4
  288
  289               ClockOnNib   EQU ((ClockOnFl)-1)/4
  290               ClockOnBit   EQU ((ClockOnFl)-1)%4
  291
  292               Complex2DNib EQU ((Complex2DFl)-1)/4
  293               Complex2DBit EQU ((Complex2DFl)-1)%4
  294
  295               ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
  296               ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4
  297
  298               ConnectPtNib EQU ((ConnectPtFl)-1)/4
  299               ConnectPtBit EQU ((ConnectPtFl)-1)%4
  300
  301               ConstantsNib EQU ((ConstantsFl)-1)/4
  302               ConstantsBit EQU ((ConstantsFl)-1)%4
  303
  304               DateFmtNib   EQU ((DateFmtFl)-1)/4
  305               DateFmtBit   EQU ((DateFmtFl)-1)%4
  306
  307               DblSpaceNib  EQU ((DblSpaceFl)-1)/4
  308               DblSpaceBit  EQU ((DblSpaceFl)-1)%4
  309
  310               DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
  311               DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4
  312
  313               ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
  314               ErrorBeepBit EQU ((ErrorBeepFl)-1)%4
  315
  316               FastEViewNib EQU ((FastEqViewFl)-1)/4
  317               FastEViewBit EQU ((FastEqViewFl)-1)%4
  318
  319               FunctPlotNib EQU ((FunctPlotFl)-1)/4
  320               FunctPlotBit EQU ((FunctPlotFl)-1)%4
  321
  322               GCursorNib   EQU ((GCursorFl)-1)/4
  323               GCursorBit   EQU ((GCursorFl)-1)%4
  324
  325               IndexWrapNib EQU ((IndexWrapFl)-1)/4
  326               IndexWrapBit EQU ((IndexWrapFl)-1)%4
  327
  328               InfResActNib EQU ((InfResActFl)-1)/4
  329               InfResActBit EQU ((InfResActFl)-1)%4
  330
  331               InfResultNib EQU ((InfResultFl)-1)/4
  332               InfResultBit EQU ((InfResultFl)-1)%4
  333
  334               IODataFmtNib EQU ((IODataFmtFl)-1)/4
  335               IODataFmtBit EQU ((IODataFmtFl)-1)%4
  336
  337               IODeviceNib  EQU ((IODeviceFl)-1)/4
  338               IODeviceBit  EQU ((IODeviceFl)-1)%4
  339
  340               LastArgsNib  EQU ((LastArgsFl)-1)/4
  341               LastArgsBit  EQU ((LastArgsFl)-1)%4
  342
  343               VerboseNib   EQU ((VerboseFl)-1)/4
  344               VerboseBit   EQU ((VerboseFl)-1)%4
  345
  346               MultiDispNib EQU ((MultiDispFl)-1)/4
  347               MultiDispBit EQU ((MultiDispFl)-1)%4
  348
  349               NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
  350               NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4
  351
  352               NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
  353               NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4
  354
  355               NoParseNib   EQU ((NoParseFl)-1)/4
  356               NoParseBit   EQU ((NoParseFl)-1)%4
  357
  358               NumDigsNib   EQU ((NumDigsFl1)-1)/4
  359               NumDigsBit1  EQU ((NumDigsFl1)-1)%4
  360
  361               NumDispNib   EQU ((NumDispFl1)-1)/4
  362               NumDispBit1  EQU ((NumDispFl1)-1)%4
  363
  364               OverfActNib  EQU ((OverfActFl)-1)/4
  365               OverfActBit  EQU ((OverfActFl)-1)%4
  366
  367               OverflowNib  EQU ((OverflowFl)-1)/4
  368               OverflowBit  EQU ((OverflowFl)-1)%4
  369
  370               OverwriteNib EQU ((OverwriteFl)-1)/4
  371               OverwriteBit EQU ((OverwriteFl)-1)%4
  372
  373               PrintDevNib  EQU ((PrintDevFl)-1)/4
  374               PrintDevBit  EQU ((PrintDevFl)-1)%4
  375
  376               RadixNib     EQU ((RadixFl)-1)/4
  377               RadixBit     EQU ((RadixFl)-1)%4
  378
  379               ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
  380               ResRepAlmBit EQU ((ResRepAlmFl)-1)%4
  381
  382               ResultsNib   EQU ((ResultsFl)-1)/4
  383               ResultsBit   EQU ((ResultsFl)-1)%4
  384
  385               ShowPrecNib  EQU ((ShowPrecFl)-1)/4
  386               ShowPrecBit  EQU ((ShowPrecFl)-1)%4
  387
  388               SolutionsNib EQU ((SolutionsFl)-1)/4
  389               SolutionsBit EQU ((SolutionsFl)-1)%4
  390
  391               TriAlphaNib  EQU ((TriAlphaFl)-1)/4
  392               TriAlphaBit  EQU ((TriAlphaFl)-1)%4
  393
  394               TriUserNib   EQU ((TriUserFl)-1)/4
  395               TriUserBit   EQU ((TriUserFl)-1)%4
  396
  397               UnderfActNib EQU ((UnderfActFl)-1)/4
  398               UnderfActBit EQU ((UnderfActFl)-1)%4
  399
  400               UnderfNegNib EQU ((UnderfNegFl)-1)/4
  401               UnderfNegBit EQU ((UnderfNegFl)-1)%4
  402
  403               UnderfPosNib EQU ((UnderfPosFl)-1)/4
  404               UnderfPosBit EQU ((UnderfPosFl)-1)%4
  405
  406               UserKeysNib  EQU ((UserKeysFl)-1)/4
  407               UserKeysBit  EQU ((UserKeysFl)-1)%4
  408
  409               * RPL
  410               * RPL
  411               * insure RPL-mode exit
  412
  413
  414               * ASSEMBLE
  415
  416
  417               nonALG EQU 8                    not-allowed-in-algebraics flag
  418               hasHELP EQU 4                   has-help-data flag
  419               hasPROMPTM EQU 4                same as above
  420               hasALIAS EQU 2                  has-algebraic-alias flag
  421               hasPDATA EQU 1                  has-parse-data flag
  422
  423
  424               hasDER EQU 8                    has-derivative flag
  425               hasINV EQU 4                    has-inverse flag
  426               hasCOLCT EQU 2                  has-COLCT-data flag
  427               hasEXPND EQU 1                  has-EXPND-data flag
  428
  429
  430               hasFORM EQU 8                   has-FORM-menu flag
  431               hasINTG EQU 4                   has-Integral-data flag
  432               hasWHERE EQU 2                  has-WHERE-code flag
  433               hasVUNS EQU 1                   has-veryunsymin-code flag
  434
  435
  436               pdEX EQU #0             general expression
  437               pdOP EQU #1             operator
  438               pdQE EQU #2             quoted expression
  439               pdQN EQU #3             quoted name
  440               pdLP EQU #4             left parenthesis
  441               pdRP EQU #5             right parenthesis
  442               pdCM EQU #6             comma (non-radix)
  443               pdEQ EQU #7             equal-sign separator
  444               pdOS0 EQU #8            optional repeat 0
  445               pdOS1 EQU #9            optional repeat 1
  446               pdOS2 EQU #A            optional repeat 2
  447               pdOS3 EQU #B            optional repeat 3
  448               pdOS4 EQU #C            optional repeat 4
  449               pdOS5 EQU #D            optional repeat 5
  450               pdOS6 EQU #E            optional repeat 6
  451               pdOS7 EQU #F            optional repeat 7
  452
  453               * RPL
  454               * RPL
  455               * insure RPL-mode exit
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
  471
  472
  473               * RPL
  474               * insure RPL-mode exit
  475
  476               * RPL
  477               * insure RPL-mode exit
  478
  479
  480
  481
  482
  483
  484
  485
  486
  487               * ( for internal use only
  488
  489
  490
  491
  492
  493
  494
  495
  496
  497
  498               * ( decimal 67
  499               * ( decimal 86
  500               * ( decimal 82
  501               * ( decimal 85
  502               * ( decimal 101
  503               * ( decimal 97
  504               * ( decimal 100
  505               * ( decimal 113
  506               * ( decimal 112
  507
  508               * ( check width
  509               * ( field character width
  510
  511               * ( decimal 67
  512               * ( decimal 85
  513               * ( decimal 97
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
  529
  530
  531               * RPL
  532               * insure RPL-mode exit
  533
  534               * ( decimal 66
  535               * ( decimal 67
  536               * ( decimal 69
  537               * ( decimal 82
  538               * ( decimal 83
  539               * ( decimal 84
  540               * ( decimal 85
  541               * ( decimal 86
  542               * ( decimal 87
  543
  544
  545               * ( norm-view default visible row count
  546               * ( default first row X location
  547               * ( default first row Y location
  548               * ( default row width
  549               * ( default row height
  550
  551               * ( max-view width
  552               * ( max-view height
  553               * ( max-view default visible row count
  554
  555               * ( prompt area height
  556
  557               * ( more-up/down icon width
  558
  559
  560
  561               * RPL
  562               * insure RPL-mode exit
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
  776
  777
  778               * RPL
  779               * insure RPL-mode exit
  780
  781
  782
  783               * ( set for informations
  784               * ( set for step by step mode on
  785               * ( internal use: true if VXXL success
  786               * ( set for no gcd computations
  787               * ( set for complex mode
  788               * ( internal use:       LN->-INV[-LN]]
  789               * ( set for approx mode
  790               * ( set for TSIMP call inside SERIES
  791               * ( internal use:       modular computation
  792               * ( internal use:       testing remainder=0
  793               * ( set to allow numeric factorization
  794               * ( set for large matrices
  795               * ( set: don't simplify inside non rational operation
  796               * ( set to see i as an irrquad c=-1
  797               * ( set to disable linearity simplif.
  798               * ( set for increasing power x+1 -> 1+x
  799               * ( internal use:       sqrt not as irrquad
  800               * ( set if sin are prefered to cos
  801               * ( set for menu as choosebox
  802               * ( set if xINT is not simplified
  803               * ( set if non rigourous mode
  804               * ( set to allow silent mode switch
  805               * ( set if xLN returns LN[ABS[]]
  806
  807
  808               * ASSEMBLE
  809
  810               MultiLineFl     EQU     65
  811               MultiLineNib    EQU     ((MultiLineFl)-1)/4
  812               MultiLineBit    EQU     ((MultiLineFl)-1)%4
  813               MultiLineStringsFl      EQU     66
  814               MultiLineStringsNib     EQU     ((MultiLineStringsFl)-1)/4
  815               MultiLineStringsBit     EQU     ((MultiLineStringsFl)-1)%4
  816               DigitalClockFl  EQU     67
  817               DigitalClockNib EQU     ((DigitalClockFl)-1)/4
  818               DigitalClockBit EQU     ((DigitalClockFl)-1)%4
  819               CmdAutoIndentFl EQU     68
  820               CmdAutoIndentNib        EQU     ((CmdAutoIndentFl)-1)/4
  821               CmdAutoIndentBit        EQU     ((CmdAutoIndentFl)-1)%4
  822               FullScreenEditFl        EQU     69
  823               FullScreenEditNib       EQU     ((FullScreenEditFl)-1)/4
  824               FullScreenEditBit       EQU     ((FullScreenEditFl)-1)%4
  825               MultiLine2GROBFl        EQU     70
  826               MultiLine2GROBNib       EQU     ((MultiLine2GROBFl)-1)/4
  827               MultiLine2GROBBit       EQU     ((MultiLine2GROBFl)-1)%4
  828               DesasmWithAdrFl EQU     71
  829               DesasmWithAdrNib        EQU     ((DesasmWithAdrFl)-1)/4
  830               DesasmWithAdrBit        EQU     ((DesasmWithAdrFl)-1)%4
  831               BigFontStackFl  EQU     72
  832               BigFontStackNib EQU     ((BigFontStackFl)-1)/4
  833               BigFontStackBit EQU     ((BigFontStackFl)-1)%4
  834               BigFontCmdFl    EQU     73
  835               BigFontCmdNib   EQU     ((BigFontCmdFl)-1)/4
  836               BigFontCmdBit   EQU     ((BigFontCmdFl)-1)%4
  837               RightJustifiedStackFl   EQU     74
  838               RightJustifiedStackNib  EQU     ((RightJustifiedStackFl)-1)/4
  839               RightJustifiedStackBit  EQU     ((RightJustifiedStackFl)-1)%4
  840               KeystrokeBeepFl EQU     75
  841               KeystrokeBeepNib        EQU     ((KeystrokeBeepFl)-1)/4
  842               KeystrokeBeepBit        EQU     ((KeystrokeBeepFl)-1)%4
  843               FilerConfirmationFl     EQU     76
  844               FilerConfirmationNib    EQU     ((FilerConfirmationFl)-1)/4
  845               FilerConfirmationBit    EQU     ((FilerConfirmationFl)-1)%4
  846               FilerConfirmFl  EQU     77
  847               FilerConfirmNib EQU     ((FilerConfirmFl)-1)/4
  848               FilerConfirmBit EQU     ((FilerConfirmFl)-1)%4
  849               KernelParamFl   EQU     78
  850               KernelParamNib  EQU     ((KernelParamFl)-1)/4
  851               KernelParamBit  EQU     ((KernelParamFl)-1)%4
  852               PrettyPrintFl   EQU     79
  853               PrettyPrintNib  EQU     ((PrettyPrintFl)-1)/4
  854               PrettyPrintBit  EQU     ((PrettyPrintFl)-1)%4
  855               SmallFontEQWStackFl     EQU     80
  856               SmallFontEQWStackNib    EQU     ((SmallFontEQWStackFl)-1)/4
  857               SmallFontEQWStackBit    EQU     ((SmallFontEQWStackFl)-1)%4
  858               SmallFontEQWGrobFl      EQU     81
  859               SmallFontEQWGrobNib     EQU     ((SmallFontEQWGrobFl)-1)/4
  860               SmallFontEQWGrobBit     EQU     ((SmallFontEQWGrobFl)-1)%4
  861               SmallFontEQWEditFl      EQU     82
  862               SmallFontEQWEditNib     EQU     ((SmallFontEQWEditFl)-1)/4
  863               SmallFontEQWEditBit     EQU     ((SmallFontEQWEditFl)-1)%4
  864               GrobDisplayFl   EQU     83
  865               GrobDisplayNib  EQU     ((GrobDisplayFl)-1)/4
  866               GrobDisplayBit  EQU     ((GrobDisplayFl)-1)%4
  867               MKSmallFontMenuFl       EQU     84
  868               MKSmallFontMenuNib      EQU     ((MKSmallFontMenuFl)-1)/4
  869               MKSmallFontMenuBit      EQU     ((MKSmallFontMenuFl)-1)%4
  870               SystemRPLStackFl        EQU     85
  871               SystemRPLStackNib       EQU     ((SystemRPLStackFl)-1)/4
  872               SystemRPLStackBit       EQU     ((SystemRPLStackFl)-1)%4
  873               MASDDecompilerFl        EQU     86
  874               MASDDecompilerNib       EQU     ((MASDDecompilerFl)-1)/4
  875               MASDDecompilerBit       EQU     ((MASDDecompilerFl)-1)%4
  876               RecursiveStackFl        EQU     87
  877               RecursiveStackNib       EQU     ((RecursiveStackFl)-1)/4
  878               RecursiveStackBit       EQU     ((RecursiveStackFl)-1)%4
  879               RecursiveEditFl EQU     88
  880               RecursiveEditNib        EQU     ((RecursiveEditFl)-1)/4
  881               RecursiveEditBit        EQU     ((RecursiveEditFl)-1)%4
  882               AddressesCLEFl  EQU     89
  883               AddressesCLENib EQU     ((AddressesCLEFl)-1)/4
  884               AddressesCLEBit EQU     ((AddressesCLEFl)-1)%4
  885               SmallFontChooseFl       EQU     90
  886               SmallFontChooseNib      EQU     ((SmallFontChooseFl)-1)/4
  887               SmallFontChooseBit      EQU     ((SmallFontChooseFl)-1)%4
  888               ArrayOnlyFl     EQU     91
  889               ArrayOnlyNib    EQU     ((ArrayOnlyFl)-1)/4
  890               ArrayOnlyBit    EQU     ((ArrayOnlyFl)-1)%4
  891               MLMASDModeFl    EQU     92
  892               MLMASDModeNib   EQU     ((MLMASDModeFl)-1)/4
  893               MLMASDModeBit   EQU     ((MLMASDModeFl)-1)%4
  894               ErableHeaderFl  EQU     93
  895               ErableHeaderNib EQU     ((ErableHeaderFl)-1)/4
  896               ErableHeaderBit EQU     ((ErableHeaderFl)-1)%4
  897               AutoSaveFl      EQU     94
  898               AutoSaveNib     EQU     ((AutoSaveFl)-1)/4
  899               AutoSaveBit     EQU     ((AutoSaveFl)-1)%4
  900               AlgebraicModeFl EQU     95
  901               AlgebraicModeNib        EQU     ((AlgebraicModeFl)-1)/4
  902               AlgebraicModeBit        EQU     ((AlgebraicModeFl)-1)%4
  903               MenuOnFl        EQU     96
  904               MenuOnNib       EQU     ((MenuOnFl)-1)/4
  905               MenuOnBit       EQU     ((MenuOnFl)-1)%4
  906               VerticalListFl  EQU     97
  907               VerticalListNib EQU     ((VerticalListFl)-1)/4
  908               VerticalListBit EQU     ((VerticalListFl)-1)%4
  909               VerticalVectorFl        EQU     98
  910               VerticalVectorNib       EQU     ((VerticalVectorFl)-1)/4
  911               VerticalVectorBit       EQU     ((VerticalVectorFl)-1)%4
  912
  913
  914               ComplexFl       EQU     103
  915               ComplexNib      EQU     ((ComplexFl)-1)/4
  916               ComplexBit      EQU     ((ComplexFl)-1)%4
  917
  918
  919               ExactModeFl     EQU     105
  920               ExactModeNib    EQU     ((ExactModeFl)-1)/4
  921               ExactModeBit    EQU     ((ExactModeFl)-1)%4
  922
  923
  924               * RPL
  925
  926
  927
  928               * ASSEMBLE
  929                       SETLIST CODE, INCLUDE, PSEUDO
  930               * RPL
  931
  932               *|| Resuming file KMmenuMDF.s at line 7
  933
  934 00000         =KMmenu
  935               * File  KMmenuMDF.s     10
  936 00000 00000           CON(5)  =DOCOL
  937               * File  KMmenuMDF.s     11
  938
  939               * File  KMmenuMDF.s     12
  940               * Labels
  941               * File  KMmenuMDF.s     13
  942 00005 00000           CON(5)  =DOCSTR
  943 0000A B0000           CON(5)  11
  944 0000F B413A3          NIBASC  \K1:\
  945 00015 00000           CON(5)  =BINT1
  946 0001A 00000           CON(5)  =BINT8
  947               * File  KMmenuMDF.s     14
  948 0001F 00000           CON(5)  =DOCSTR
  949 00024 B0000           CON(5)  11
  950 00029 B423A3          NIBASC  \K2:\
  951 0002F 00000           CON(5)  =BINT1
  952 00034 00000           CON(5)  =BINT14
  953               * File  KMmenuMDF.s     15
  954 00039 00000           CON(5)  =DOCSTR
  955 0003E B0000           CON(5)  11
  956 00043 B433A3          NIBASC  \K3:\
  957 00049 00000           CON(5)  =BINT1
  958 0004E 00000           CON(5)  =BINT20
  959               * File  KMmenuMDF.s     16
  960 00053 00000           CON(5)  =DOCSTR
  961 00058 B0000           CON(5)  11
  962 0005D B443A3          NIBASC  \K4:\
  963 00063 00000           CON(5)  =BINT1
  964 00068 00000           CON(5)  =BINT26
  965               * File  KMmenuMDF.s     17
  966 0006D 00000           CON(5)  =DOCSTR
  967 00072 B0000           CON(5)  11
  968 00077 B453A3          NIBASC  \K5:\
  969 0007D 00000           CON(5)  =BINT1
  970 00082 00000           CON(5)  =BINT32
  971               * File  KMmenuMDF.s     18
  972 00087 00000           CON(5)  =DOCSTR
  973 0008C B0000           CON(5)  11
  974 00091 B463A3          NIBASC  \K6:\
  975 00097 00000           CON(5)  =BINT1
  976 0009C 00000           CON(5)  =BINT38
  977               * File  KMmenuMDF.s     19
  978 000A1 00000           CON(5)  =DOCSTR
  979 000A6 B0000           CON(5)  11
  980 000AB D413A3          NIBASC  \M1:\
  981 000B1 00000           CON(5)  =BINT1
  982 000B6 00000           CON(5)  =BINT44
  983               * File  KMmenuMDF.s     20
  984 000BB 00000           CON(5)  =DOCSTR
  985 000C0 B0000           CON(5)  11
  986 000C5 D423A3          NIBASC  \M2:\
  987 000CB 00000           CON(5)  =BINT1
  988 000D0 00000           CON(5)  =BINT50
  989               * File  KMmenuMDF.s     21
  990 000D5 00000           CON(5)  =DOCSTR
  991 000DA B0000           CON(5)  11
  992 000DF D433A3          NIBASC  \M3:\
  993 000E5 00000           CON(5)  =BINT1
  994 000EA 00000           CON(5)  =BINT56
  995               * File  KMmenuMDF.s     22
  996
  997               * File  KMmenuMDF.s     23
  998 000EF 00000           CON(5)  =DOGROB
  999 000F4 7C200           CON(5)  711
 1000 000F9 A3000F2         NIBHEX  A3000F2000000000
            0000000
            00
 1001 00109 0000000         NIBHEX  0000000008429400
            0084294
            00
 1002 00119 0000042         NIBHEX  0000042942000000
            9420000
            00
 1003 00129 0EFFF70         NIBHEX  0EFFF70000000002
            0000000
            02
 1004 00139 0000000         NIBHEX  0000000000020000
            0000200
            00
 1005 00149 0000000         NIBHEX  00000001A2000000
            1A20000
            00
 1006 00159 0002620         NIBHEX  0002620000000004
            0000000
            04
 1007 00169 A200000         NIBHEX  A200000000030000
            0000300
            00
 1008 00179 0000000         NIBHEX  0000000200000000
            2000000
            00
 1009 00189 00EFF00         NIBHEX  00EFF00000000020
            0000000
            20
 1010 00199 8000000         NIBHEX  8000000000A88000
            000A880
            00
 1011 001A9 000000A         NIBHEX  000000AD8F700000
            D8F7000
            00
 1012 001B9 00AAA04         NIBHEX  00AAA04000000020
            0000000
            20
 1013 001C9 A040000         NIBHEX  A040000000EFF040
            000EFF0
            40
 1014 001D9 0000000         NIBHEX  0000000200400000
            2004000
            00
 1015 001E9 0002004         NIBHEX  0002004000000001
            0000000
            01
 1016 001F9 5740000         NIBHEX  5740000000023440
            0000234
            40
 1017 00209 0000000         NIBHEX  0000000453400000
            4534000
            00
 1018 00219 0003074         NIBHEX  0003074000000002
            0000000
            02
 1019 00229 0040000         NIBHEX  0040000000020040
            0000200
            40
 1020 00239 000000E         NIBHEX  000000EFF3400000
            FF34000
            00
 1021 00249 0020024         NIBHEX  00200240000000A8
            0000000
            A8
 1022 00259 0224D00         NIBHEX  0224D0008FBD624C
            08FBD62
            4C
 1023 00269 010080A         NIBHEX  010080AA8284D000
            A8284D0
            00
 1024 00279 8020626         NIBHEX  8020626001008020
            0010080
            20
 1025 00289 E240C00         NIBHEX  E240C00080200240
            0802002
            40
 1026 00299 000080E         NIBHEX  000080EFF3400000
            FF34000
            00
 1027 002A9 8001004         NIBHEX  8001004000008002
            0000080
            02
 1028 002B9 5540000         NIBHEX  5540000080043740
            0800437
            40
 1029 002C9 000CC00         NIBHEX  000CC00354400004
            3544000
            04
 1030 002D9 0102004         NIBHEX  01020040004DD0EF
            0004DD0
            EF
 1031 002E9 F34000C         NIBHEX  F34000C411200240
            4112002
            40
 1032 002F9 004DD0A         NIBHEX  004DD0A862400000
            8624000
            00
 1033 00309 80AD8E7         NIBHEX  80AD8E70000080AA
            0000080
            AA
 1034 00319 6200000         NIBHEX  6200000080208200
            0802082
            00
 1035 00329 0000802         NIBHEX  0000802062000000
            0620000
            00
 1036 00339 8020020         NIBHEX  80200200000080EF
            0000080
            EF
 1037 00349 F300000         NIBHEX  F300000080020000
            0800200
            00
 1038 00359 0000800         NIBHEX  00008001AE000000
            1AE0000
            00
 1039 00369 8002620         NIBHEX  8002620000008004
            0000080
            04
 1040 00379 AC00000         NIBHEX  AC00000080030E00
            080030E
            00
 1041 00389 0000800         NIBHEX  0000800200000000
            2000000
            00
 1042 00399 8FFFF70         NIBHEX  8FFFF70000004429
            0000044
            29
 1043 003A9 4200000         NIBHEX  4200000022942100
            0229421
            00
 1044 003B9 00              NIBHEX  00
 1045               * File  KMmenuMDF.s     24
 1046 003BB 00000           CON(5)  =BINT70
 1047 003C0 00000           CON(5)  =BINT8
 1048               * File  KMmenuMDF.s     25
 1049               * K1
 1050               * File  KMmenuMDF.s     26
 1051 003C5 00000           CON(5)  ='DROPFALSE
 1052               * File  KMmenuMDF.s     27
 1053 003CA 00000           CON(5)  =DOBINT
 1054 003CF C0000           CON(5)  12
 1055 003D4 00000           CON(5)  =DOBINT
 1056 003D9 80000           CON(5)  8
 1057 003DE 00000           CON(5)  =DOBINT
 1058 003E3 E1000           CON(5)  30
 1059 003E8 00000           CON(5)  =DOBINT
 1060 003ED 50000           CON(5)  5
 1061               * x y b h
 1062               * File  KMmenuMDF.s     28
 1063 003F2 00000           CON(5)  =BINT1
 1064               * File  KMmenuMDF.s     29
 1065 003F7 00000           CON(5)  =DOLIST
 1066 003FC 00000           CON(5)  =BINT0
 1067 00401 00000           CON(5)  =SEMI
 1068               * File  KMmenuMDF.s     30
 1069 00406 00000           CON(5)  =BINT3
 1070               * File  KMmenuMDF.s     31
 1071 0040B 00000           CON(5)  =DOCSTR
 1072 00410 73000           CON(5)  55
 1073 00415 9666024         NIBASC  \if don't exist just \
            6F6E672
            4702568796374702A657374702

 1074 0043D 0757470         NIBASC  \put 0\
            203
 1075               * File  KMmenuMDF.s     32
 1076 00447 00000           CON(5)  =MINUSONE
 1077               * File  KMmenuMDF.s     33
 1078 0044C 00000           CON(5)  =BINT2
 1079               * File  KMmenuMDF.s     34
 1080 00451 00000           CON(5)  =DOREAL
 1081 00456 300             NIBHEX  300
 1082 00459 0000000         NIBHEX  000000000001
            00001
 1083 00465 0               NIBHEX  0
 1084 00466 00000           CON(5)  =DUP
 1085               * File  KMmenuMDF.s     35
 1086
 1087               * File  KMmenuMDF.s     36
 1088               * K2
 1089               * File  KMmenuMDF.s     37
 1090 0046B 00000           CON(5)  ='DROPFALSE
 1091               * File  KMmenuMDF.s     38
 1092 00470 00000           CON(5)  =DOBINT
 1093 00475 C0000           CON(5)  12
 1094 0047A 00000           CON(5)  =DOBINT
 1095 0047F E0000           CON(5)  14
 1096 00484 00000           CON(5)  =DOBINT
 1097 00489 E1000           CON(5)  30
 1098 0048E 00000           CON(5)  =DOBINT
 1099 00493 50000           CON(5)  5
 1100               * x y b h
 1101               * File  KMmenuMDF.s     39
 1102 00498 00000           CON(5)  =BINT1
 1103               * File  KMmenuMDF.s     40
 1104 0049D 00000           CON(5)  =DOLIST
 1105 004A2 00000           CON(5)  =BINT0
 1106 004A7 00000           CON(5)  =SEMI
 1107               * File  KMmenuMDF.s     41
 1108 004AC 00000           CON(5)  =BINT3
 1109               * File  KMmenuMDF.s     42
 1110 004B1 00000           CON(5)  =DOCSTR
 1111 004B6 70000           CON(5)  7
 1112 004BB 02              NIBASC  \ \
 1113               * File  KMmenuMDF.s     43
 1114 004BD 00000           CON(5)  =MINUSONE
 1115               * File  KMmenuMDF.s     44
 1116 004C2 00000           CON(5)  =BINT2
 1117               * File  KMmenuMDF.s     45
 1118 004C7 00000           CON(5)  =DOREAL
 1119 004CC 300             NIBHEX  300
 1120 004CF 0000000         NIBHEX  000000000001
            00001
 1121 004DB 0               NIBHEX  0
 1122 004DC 00000           CON(5)  =DUP
 1123               * File  KMmenuMDF.s     46
 1124
 1125               * File  KMmenuMDF.s     47
 1126               * K3
 1127               * File  KMmenuMDF.s     48
 1128 004E1 00000           CON(5)  ='DROPFALSE
 1129               * File  KMmenuMDF.s     49
 1130 004E6 00000           CON(5)  =DOBINT
 1131 004EB C0000           CON(5)  12
 1132 004F0 00000           CON(5)  =DOBINT
 1133 004F5 41000           CON(5)  20
 1134 004FA 00000           CON(5)  =DOBINT
 1135 004FF E1000           CON(5)  30
 1136 00504 00000           CON(5)  =DOBINT
 1137 00509 50000           CON(5)  5
 1138               * x y b h
 1139               * File  KMmenuMDF.s     50
 1140 0050E 00000           CON(5)  =BINT1
 1141               * File  KMmenuMDF.s     51
 1142 00513 00000           CON(5)  =DOLIST
 1143 00518 00000           CON(5)  =BINT0
 1144 0051D 00000           CON(5)  =SEMI
 1145               * File  KMmenuMDF.s     52
 1146 00522 00000           CON(5)  =BINT3
 1147               * File  KMmenuMDF.s     53
 1148 00527 00000           CON(5)  =DOCSTR
 1149 0052C 73000           CON(5)  55
 1150 00531 9666024         NIBASC  \if don't exist just \
            6F6E672
            4702568796374702A657374702

 1151 00559 0757470         NIBASC  \put 0\
            203
 1152               * File  KMmenuMDF.s     54
 1153 00563 00000           CON(5)  =MINUSONE
 1154               * File  KMmenuMDF.s     55
 1155 00568 00000           CON(5)  =BINT2
 1156               * File  KMmenuMDF.s     56
 1157 0056D 00000           CON(5)  =DOREAL
 1158 00572 300             NIBHEX  300
 1159 00575 0000000         NIBHEX  000000000001
            00001
 1160 00581 0               NIBHEX  0
 1161 00582 00000           CON(5)  =DUP
 1162               * File  KMmenuMDF.s     57
 1163
 1164               * File  KMmenuMDF.s     58
 1165               * K4
 1166               * File  KMmenuMDF.s     59
 1167 00587 00000           CON(5)  ='DROPFALSE
 1168               * File  KMmenuMDF.s     60
 1169 0058C 00000           CON(5)  =DOBINT
 1170 00591 C0000           CON(5)  12
 1171 00596 00000           CON(5)  =DOBINT
 1172 0059B A1000           CON(5)  26
 1173 005A0 00000           CON(5)  =DOBINT
 1174 005A5 E1000           CON(5)  30
 1175 005AA 00000           CON(5)  =DOBINT
 1176 005AF 50000           CON(5)  5
 1177               * x y b h
 1178               * File  KMmenuMDF.s     61
 1179 005B4 00000           CON(5)  =BINT1
 1180               * File  KMmenuMDF.s     62
 1181 005B9 00000           CON(5)  =DOLIST
 1182 005BE 00000           CON(5)  =BINT0
 1183 005C3 00000           CON(5)  =SEMI
 1184               * File  KMmenuMDF.s     63
 1185 005C8 00000           CON(5)  =BINT3
 1186               * File  KMmenuMDF.s     64
 1187 005CD 00000           CON(5)  =DOCSTR
 1188 005D2 73000           CON(5)  55
 1189 005D7 9666024         NIBASC  \if don't exist just \
            6F6E672
            4702568796374702A657374702

 1190 005FF 0757470         NIBASC  \put 0\
            203
 1191               * File  KMmenuMDF.s     65
 1192 00609 00000           CON(5)  =MINUSONE
 1193               * File  KMmenuMDF.s     66
 1194 0060E 00000           CON(5)  =BINT2
 1195               * File  KMmenuMDF.s     67
 1196 00613 00000           CON(5)  =DOREAL
 1197 00618 000             NIBHEX  000
 1198 0061B 0000000         NIBHEX  000000000000
            00000
 1199 00627 0               NIBHEX  0
 1200 00628 00000           CON(5)  =DUP
 1201               * File  KMmenuMDF.s     68
 1202
 1203               * File  KMmenuMDF.s     69
 1204               * K5
 1205               * File  KMmenuMDF.s     70
 1206 0062D 00000           CON(5)  ='DROPFALSE
 1207               * File  KMmenuMDF.s     71
 1208 00632 00000           CON(5)  =DOBINT
 1209 00637 C0000           CON(5)  12
 1210 0063C 00000           CON(5)  =DOBINT
 1211 00641 02000           CON(5)  32
 1212 00646 00000           CON(5)  =DOBINT
 1213 0064B E1000           CON(5)  30
 1214 00650 00000           CON(5)  =DOBINT
 1215 00655 50000           CON(5)  5
 1216               * x y b h
 1217               * File  KMmenuMDF.s     72
 1218 0065A 00000           CON(5)  =BINT1
 1219               * File  KMmenuMDF.s     73
 1220 0065F 00000           CON(5)  =DOLIST
 1221 00664 00000           CON(5)  =BINT0
 1222 00669 00000           CON(5)  =SEMI
 1223               * File  KMmenuMDF.s     74
 1224 0066E 00000           CON(5)  =BINT3
 1225               * File  KMmenuMDF.s     75
 1226 00673 00000           CON(5)  =DOCSTR
 1227 00678 73000           CON(5)  55
 1228 0067D 9666024         NIBASC  \if don't exist just \
            6F6E672
            4702568796374702A657374702

 1229 006A5 0757470         NIBASC  \put 0\
            203
 1230               * File  KMmenuMDF.s     76
 1231 006AF 00000           CON(5)  =MINUSONE
 1232               * File  KMmenuMDF.s     77
 1233 006B4 00000           CON(5)  =BINT2
 1234               * File  KMmenuMDF.s     78
 1235 006B9 00000           CON(5)  =DOREAL
 1236 006BE 000             NIBHEX  000
 1237 006C1 0000000         NIBHEX  000000000000
            00000
 1238 006CD 0               NIBHEX  0
 1239 006CE 00000           CON(5)  =DUP
 1240               * File  KMmenuMDF.s     79
 1241
 1242               * File  KMmenuMDF.s     80
 1243               * K6
 1244               * File  KMmenuMDF.s     81
 1245 006D3 00000           CON(5)  ='DROPFALSE
 1246               * File  KMmenuMDF.s     82
 1247 006D8 00000           CON(5)  =DOBINT
 1248 006DD C0000           CON(5)  12
 1249 006E2 00000           CON(5)  =DOBINT
 1250 006E7 62000           CON(5)  38
 1251 006EC 00000           CON(5)  =DOBINT
 1252 006F1 E1000           CON(5)  30
 1253 006F6 00000           CON(5)  =DOBINT
 1254 006FB 50000           CON(5)  5
 1255               * x y b h
 1256               * File  KMmenuMDF.s     83
 1257 00700 00000           CON(5)  =BINT1
 1258               * File  KMmenuMDF.s     84
 1259 00705 00000           CON(5)  =DOLIST
 1260 0070A 00000           CON(5)  =BINT0
 1261 0070F 00000           CON(5)  =SEMI
 1262               * File  KMmenuMDF.s     85
 1263 00714 00000           CON(5)  =BINT3
 1264               * File  KMmenuMDF.s     86
 1265 00719 00000           CON(5)  =DOCSTR
 1266 0071E 73000           CON(5)  55
 1267 00723 9666024         NIBASC  \if don't exist just \
            6F6E672
            4702568796374702A657374702

 1268 0074B 0757470         NIBASC  \put 0\
            203
 1269               * File  KMmenuMDF.s     87
 1270 00755 00000           CON(5)  =MINUSONE
 1271               * File  KMmenuMDF.s     88
 1272 0075A 00000           CON(5)  =BINT2
 1273               * File  KMmenuMDF.s     89
 1274 0075F 00000           CON(5)  =DOREAL
 1275 00764 000             NIBHEX  000
 1276 00767 0000000         NIBHEX  000000000000
            00000
 1277 00773 0               NIBHEX  0
 1278 00774 00000           CON(5)  =DUP
 1279               * File  KMmenuMDF.s     90
 1280
 1281               * File  KMmenuMDF.s     91
 1282               * M1
 1283               * File  KMmenuMDF.s     92
 1284 00779 00000           CON(5)  ='DROPFALSE
 1285               * File  KMmenuMDF.s     93
 1286 0077E 00000           CON(5)  =DOBINT
 1287 00783 C0000           CON(5)  12
 1288 00788 00000           CON(5)  =DOBINT
 1289 0078D C2000           CON(5)  44
 1290 00792 00000           CON(5)  =DOBINT
 1291 00797 E1000           CON(5)  30
 1292 0079C 00000           CON(5)  =DOBINT
 1293 007A1 50000           CON(5)  5
 1294               * x y b h
 1295               * File  KMmenuMDF.s     94
 1296 007A6 00000           CON(5)  =BINT1
 1297               * File  KMmenuMDF.s     95
 1298 007AB 00000           CON(5)  =DOLIST
 1299 007B0 00000           CON(5)  =BINT0
 1300 007B5 00000           CON(5)  =SEMI
 1301               * File  KMmenuMDF.s     96
 1302 007BA 00000           CON(5)  =BINT3
 1303               * File  KMmenuMDF.s     97
 1304 007BF 00000           CON(5)  =DOCSTR
 1305 007C4 73000           CON(5)  55
 1306 007C9 9666024         NIBASC  \if don't exist just \
            6F6E672
            4702568796374702A657374702

 1307 007F1 0757470         NIBASC  \put 1\
            213
 1308               * File  KMmenuMDF.s     98
 1309 007FB 00000           CON(5)  =MINUSONE
 1310               * File  KMmenuMDF.s     99
 1311 00800 00000           CON(5)  =BINT2
 1312               * File  KMmenuMDF.s     100
 1313 00805 00000           CON(5)  =DOREAL
 1314 0080A 000             NIBHEX  000
 1315 0080D 0000000         NIBHEX  000000000002
            00002
 1316 00819 0               NIBHEX  0
 1317 0081A 00000           CON(5)  =DUP
 1318               * File  KMmenuMDF.s     101
 1319
 1320               * File  KMmenuMDF.s     102
 1321               * M2
 1322               * File  KMmenuMDF.s     103
 1323 0081F 00000           CON(5)  ='DROPFALSE
 1324               * File  KMmenuMDF.s     104
 1325 00824 00000           CON(5)  =DOBINT
 1326 00829 C0000           CON(5)  12
 1327 0082E 00000           CON(5)  =DOBINT
 1328 00833 23000           CON(5)  50
 1329 00838 00000           CON(5)  =DOBINT
 1330 0083D E1000           CON(5)  30
 1331 00842 00000           CON(5)  =DOBINT
 1332 00847 50000           CON(5)  5
 1333               * x y b h
 1334               * File  KMmenuMDF.s     105
 1335 0084C 00000           CON(5)  =BINT1
 1336               * File  KMmenuMDF.s     106
 1337 00851 00000           CON(5)  =DOLIST
 1338 00856 00000           CON(5)  =BINT0
 1339 0085B 00000           CON(5)  =SEMI
 1340               * File  KMmenuMDF.s     107
 1341 00860 00000           CON(5)  =BINT3
 1342               * File  KMmenuMDF.s     108
 1343 00865 00000           CON(5)  =DOCSTR
 1344 0086A 73000           CON(5)  55
 1345 0086F 9666024         NIBASC  \if don't exist just \
            6F6E672
            4702568796374702A657374702

 1346 00897 0757470         NIBASC  \put 1\
            213
 1347               * File  KMmenuMDF.s     109
 1348 008A1 00000           CON(5)  =MINUSONE
 1349               * File  KMmenuMDF.s     110
 1350 008A6 00000           CON(5)  =BINT2
 1351               * File  KMmenuMDF.s     111
 1352 008AB 00000           CON(5)  =DOREAL
 1353 008B0 000             NIBHEX  000
 1354 008B3 0000000         NIBHEX  000000000001
            00001
 1355 008BF 0               NIBHEX  0
 1356 008C0 00000           CON(5)  =DUP
 1357               * File  KMmenuMDF.s     112
 1358
 1359               * File  KMmenuMDF.s     113
 1360               * M3
 1361               * File  KMmenuMDF.s     114
 1362 008C5 00000           CON(5)  ='DROPFALSE
 1363               * File  KMmenuMDF.s     115
 1364 008CA 00000           CON(5)  =DOBINT
 1365 008CF C0000           CON(5)  12
 1366 008D4 00000           CON(5)  =DOBINT
 1367 008D9 83000           CON(5)  56
 1368 008DE 00000           CON(5)  =DOBINT
 1369 008E3 E1000           CON(5)  30
 1370 008E8 00000           CON(5)  =DOBINT
 1371 008ED 50000           CON(5)  5
 1372               * x y b h
 1373               * File  KMmenuMDF.s     116
 1374 008F2 00000           CON(5)  =BINT1
 1375               * File  KMmenuMDF.s     117
 1376 008F7 00000           CON(5)  =DOLIST
 1377 008FC 00000           CON(5)  =BINT0
 1378 00901 00000           CON(5)  =SEMI
 1379               * File  KMmenuMDF.s     118
 1380 00906 00000           CON(5)  =BINT3
 1381               * File  KMmenuMDF.s     119
 1382 0090B 00000           CON(5)  =DOCSTR
 1383 00910 73000           CON(5)  55
 1384 00915 9666024         NIBASC  \if don't exist just \
            6F6E672
            4702568796374702A657374702

 1385 0093D 0757470         NIBASC  \put 1\
            213
 1386               * File  KMmenuMDF.s     120
 1387 00947 00000           CON(5)  =MINUSONE
 1388               * Texto
 1389               * File  KMmenuMDF.s     121
 1390 0094C 00000           CON(5)  =BINT2
 1391               * File  KMmenuMDF.s     122
 1392 00951 00000           CON(5)  =DOREAL
 1393 00956 000             NIBHEX  000
 1394 00959 0000000         NIBHEX  000000000001
            00001
 1395 00965 0               NIBHEX  0
 1396 00966 00000           CON(5)  =DUP
 1397               * File  KMmenuMDF.s     123
 1398
 1399               * File  KMmenuMDF.s     124
 1400 0096B 00000           CON(5)  =BINT10
 1401 00970 00000           CON(5)  =BINT9
 1402               * File  KMmenuMDF.s     125
 1403 00975 00000           CON(5)  ='DROPFALSE
 1404               * File  KMmenuMDF.s     126
 1405 0097A 00000           CON(5)  =DOCSTR
 1406 0097F 52000           CON(5)  37
 1407 00984 6596262         NIBASC  \Vibration System\
            7164796
            F6E6023597374756D6

 1408               * File  KMmenuMDF.s     127
 1409 009A4 00000           CON(5)  =DOFLASHP
 1410 009A9 0000000         CON(7)  =^IfMain
 1411               * File  KMmenuMDF.s     128
 1412
 1413               * File  KMmenuMDF.s     129
 1414
 1415               * File  KMmenuMDF.s     130
 1416 009B0 00000           CON(5)  =SEMI
 1417               * File  KMmenuMDF.s     131
 1418
 1419               * File  KMmenuMDF.s     132
 1420 009B5         =Forcemenu
 1421               * File  KMmenuMDF.s     133
 1422 009B5 00000           CON(5)  =DOCOL
 1423               * File  KMmenuMDF.s     134
 1424 009BA 00000           CON(5)  =DOCSTR
 1425 009BF B0000           CON(5)  11
 1426 009C4 6413A3          NIBASC  \F1:\
 1427 009CA 00000           CON(5)  =BINT0
 1428 009CF 00000           CON(5)  =BINT8
 1429 009D4 00000           CON(5)  =DOCSTR
 1430 009D9 B0000           CON(5)  11
 1431 009DE 6403A3          NIBASC  \F0:\
 1432 009E4 00000           CON(5)  =BINT15
 1433 009E9 00000           CON(5)  =BINT8
 1434 009EE 00000           CON(5)  =DOCSTR
 1435 009F3 B0000           CON(5)  11
 1436 009F8 7703A3          NIBASC  \w0:\
 1437 009FE 00000           CON(5)  =BINT49
 1438 00A03 00000           CON(5)  =BINT8
 1439 00A08 00000           CON(5)  =DOCSTR
 1440 00A0D D0000           CON(5)  13
 1441 00A12 073796A         NIBASC  \psi:\
            3
 1442 00A1A 00000           CON(5)  =BINT83
 1443 00A1F 00000           CON(5)  =BINT8
 1444               * File  KMmenuMDF.s     135
 1445 00A24 00000           CON(5)  =DOCSTR
 1446 00A29 F0000           CON(5)  15
 1447 00A2E 4597075         NIBASC  \Type:\
            6A3
 1448 00A38 00000           CON(5)  =BINT0
 1449 00A3D 00000           CON(5)  =BINT14
 1450               * File  KMmenuMDF.s     136
 1451
 1452               * File  KMmenuMDF.s     137
 1453 00A42 00000           CON(5)  =DOCSTR
 1454 00A47 B0000           CON(5)  11
 1455 00A4C 6423A3          NIBASC  \F2:\
 1456 00A52 00000           CON(5)  =BINT0
 1457 00A57 00000           CON(5)  =BINT26
 1458 00A5C 00000           CON(5)  =DOCSTR
 1459 00A61 B0000           CON(5)  11
 1460 00A66 6403A3          NIBASC  \F0:\
 1461 00A6C 00000           CON(5)  =BINT15
 1462 00A71 00000           CON(5)  =BINT26
 1463 00A76 00000           CON(5)  =DOCSTR
 1464 00A7B B0000           CON(5)  11
 1465 00A80 7703A3          NIBASC  \w0:\
 1466 00A86 00000           CON(5)  =BINT49
 1467 00A8B 00000           CON(5)  =BINT26
 1468 00A90 00000           CON(5)  =DOCSTR
 1469 00A95 D0000           CON(5)  13
 1470 00A9A 073796A         NIBASC  \psi:\
            3
 1471 00AA2 00000           CON(5)  =BINT83
 1472 00AA7 00000           CON(5)  =BINT26
 1473               * File  KMmenuMDF.s     138
 1474 00AAC 00000           CON(5)  =DOCSTR
 1475 00AB1 F0000           CON(5)  15
 1476 00AB6 4597075         NIBASC  \Type:\
            6A3
 1477 00AC0 00000           CON(5)  =BINT0
 1478 00AC5 00000           CON(5)  =BINT32
 1479               * File  KMmenuMDF.s     139
 1480
 1481               * File  KMmenuMDF.s     140
 1482 00ACA 00000           CON(5)  =DOCSTR
 1483 00ACF B0000           CON(5)  11
 1484 00AD4 6433A3          NIBASC  \F3:\
 1485 00ADA 00000           CON(5)  =BINT0
 1486 00ADF 00000           CON(5)  =BINT44
 1487 00AE4 00000           CON(5)  =DOCSTR
 1488 00AE9 B0000           CON(5)  11
 1489 00AEE 6403A3          NIBASC  \F0:\
 1490 00AF4 00000           CON(5)  =BINT15
 1491 00AF9 00000           CON(5)  =BINT44
 1492 00AFE 00000           CON(5)  =DOCSTR
 1493 00B03 B0000           CON(5)  11
 1494 00B08 7703A3          NIBASC  \w0:\
 1495 00B0E 00000           CON(5)  =BINT49
 1496 00B13 00000           CON(5)  =BINT44
 1497 00B18 00000           CON(5)  =DOCSTR
 1498 00B1D D0000           CON(5)  13
 1499 00B22 073796A         NIBASC  \psi:\
            3
 1500 00B2A 00000           CON(5)  =BINT83
 1501 00B2F 00000           CON(5)  =BINT44
 1502               * File  KMmenuMDF.s     141
 1503 00B34 00000           CON(5)  =DOCSTR
 1504 00B39 F0000           CON(5)  15
 1505 00B3E 4597075         NIBASC  \Type:\
            6A3
 1506 00B48 00000           CON(5)  =BINT0
 1507 00B4D 00000           CON(5)  =BINT50
 1508               * File  KMmenuMDF.s     142
 1509
 1510               * File  KMmenuMDF.s     143
 1511               * F01
 1512               * File  KMmenuMDF.s     144
 1513 00B52 00000           CON(5)  ='DROPFALSE
 1514               * File  KMmenuMDF.s     145
 1515 00B57 00000           CON(5)  =DOBINT
 1516 00B5C B1000           CON(5)  27
 1517 00B61 00000           CON(5)  =DOBINT
 1518 00B66 80000           CON(5)  8
 1519 00B6B 00000           CON(5)  =DOBINT
 1520 00B70 41000           CON(5)  20
 1521 00B75 00000           CON(5)  =DOBINT
 1522 00B7A 50000           CON(5)  5
 1523               * File  KMmenuMDF.s     146
 1524 00B7F 00000           CON(5)  =BINT1
 1525 00B84 00000           CON(5)  =DOLIST
 1526 00B89 00000           CON(5)  =ZERO
 1527 00B8E 00000           CON(5)  =SEMI
 1528               * File  KMmenuMDF.s     147
 1529 00B93 00000           CON(5)  =BINT3
 1530 00B98 00000           CON(5)  =DOCSTR
 1531 00B9D 50000           CON(5)  5
 1532 00BA2 00000           CON(5)  =MINUSONE
 1533 00BA7 00000           CON(5)  =BINT2
 1534 00BAC 00000           CON(5)  =DOREAL
 1535 00BB1 000             NIBHEX  000
 1536 00BB4 0000000         NIBHEX  000000000000
            00000
 1537 00BC0 0               NIBHEX  0
 1538 00BC1 00000           CON(5)  =DUP
 1539               * File  KMmenuMDF.s     148
 1540
 1541               * File  KMmenuMDF.s     149
 1542               * F02
 1543               * File  KMmenuMDF.s     150
 1544 00BC6 00000           CON(5)  ='DROPFALSE
 1545               * File  KMmenuMDF.s     151
 1546 00BCB 00000           CON(5)  =DOBINT
 1547 00BD0 B1000           CON(5)  27
 1548 00BD5 00000           CON(5)  =DOBINT
 1549 00BDA A1000           CON(5)  26
 1550 00BDF 00000           CON(5)  =DOBINT
 1551 00BE4 41000           CON(5)  20
 1552 00BE9 00000           CON(5)  =DOBINT
 1553 00BEE 50000           CON(5)  5
 1554               * File  KMmenuMDF.s     152
 1555 00BF3 00000           CON(5)  =BINT1
 1556 00BF8 00000           CON(5)  =DOLIST
 1557 00BFD 00000           CON(5)  =ZERO
 1558 00C02 00000           CON(5)  =SEMI
 1559               * File  KMmenuMDF.s     153
 1560 00C07 00000           CON(5)  =BINT3
 1561 00C0C 00000           CON(5)  =DOCSTR
 1562 00C11 50000           CON(5)  5
 1563 00C16 00000           CON(5)  =MINUSONE
 1564 00C1B 00000           CON(5)  =BINT2
 1565 00C20 00000           CON(5)  =DOREAL
 1566 00C25 000             NIBHEX  000
 1567 00C28 0000000         NIBHEX  000000000000
            00000
 1568 00C34 0               NIBHEX  0
 1569 00C35 00000           CON(5)  =DUP
 1570               * File  KMmenuMDF.s     154
 1571
 1572               * File  KMmenuMDF.s     155
 1573               * F03
 1574               * File  KMmenuMDF.s     156
 1575 00C3A 00000           CON(5)  ='DROPFALSE
 1576               * File  KMmenuMDF.s     157
 1577 00C3F 00000           CON(5)  =DOBINT
 1578 00C44 B1000           CON(5)  27
 1579 00C49 00000           CON(5)  =DOBINT
 1580 00C4E C2000           CON(5)  44
 1581 00C53 00000           CON(5)  =DOBINT
 1582 00C58 41000           CON(5)  20
 1583 00C5D 00000           CON(5)  =DOBINT
 1584 00C62 50000           CON(5)  5
 1585               * File  KMmenuMDF.s     158
 1586 00C67 00000           CON(5)  =BINT1
 1587 00C6C 00000           CON(5)  =DOLIST
 1588 00C71 00000           CON(5)  =ZERO
 1589 00C76 00000           CON(5)  =SEMI
 1590               * File  KMmenuMDF.s     159
 1591 00C7B 00000           CON(5)  =BINT3
 1592 00C80 00000           CON(5)  =DOCSTR
 1593 00C85 50000           CON(5)  5
 1594 00C8A 00000           CON(5)  =MINUSONE
 1595 00C8F 00000           CON(5)  =BINT2
 1596 00C94 00000           CON(5)  =DOREAL
 1597 00C99 000             NIBHEX  000
 1598 00C9C 0000000         NIBHEX  000000000005
            00005
 1599 00CA8 0               NIBHEX  0
 1600 00CA9 00000           CON(5)  =DUP
 1601               * File  KMmenuMDF.s     160
 1602
 1603               * File  KMmenuMDF.s     161
 1604               * w01
 1605               * File  KMmenuMDF.s     162
 1606 00CAE 00000           CON(5)  ='DROPFALSE
 1607               * File  KMmenuMDF.s     163
 1608 00CB3 00000           CON(5)  =DOBINT
 1609 00CB8 D3000           CON(5)  61
 1610 00CBD 00000           CON(5)  =DOBINT
 1611 00CC2 80000           CON(5)  8
 1612 00CC7 00000           CON(5)  =DOBINT
 1613 00CCC 41000           CON(5)  20
 1614 00CD1 00000           CON(5)  =DOBINT
 1615 00CD6 50000           CON(5)  5
 1616               * File  KMmenuMDF.s     164
 1617 00CDB 00000           CON(5)  =BINT1
 1618 00CE0 00000           CON(5)  =DOLIST
 1619 00CE5 00000           CON(5)  =ZERO
 1620 00CEA 00000           CON(5)  =SEMI
 1621               * File  KMmenuMDF.s     165
 1622 00CEF 00000           CON(5)  =BINT3
 1623 00CF4 00000           CON(5)  =DOCSTR
 1624 00CF9 50000           CON(5)  5
 1625 00CFE 00000           CON(5)  =MINUSONE
 1626 00D03 00000           CON(5)  =BINT2
 1627 00D08 00000           CON(5)  =DOREAL
 1628 00D0D 100             NIBHEX  100
 1629 00D10 0000000         NIBHEX  000000000001
            00001
 1630 00D1C 0               NIBHEX  0
 1631 00D1D 00000           CON(5)  =DUP
 1632               * File  KMmenuMDF.s     166
 1633
 1634               * File  KMmenuMDF.s     167
 1635               * w02
 1636               * File  KMmenuMDF.s     168
 1637 00D22 00000           CON(5)  ='DROPFALSE
 1638               * File  KMmenuMDF.s     169
 1639 00D27 00000           CON(5)  =DOBINT
 1640 00D2C D3000           CON(5)  61
 1641 00D31 00000           CON(5)  =DOBINT
 1642 00D36 A1000           CON(5)  26
 1643 00D3B 00000           CON(5)  =DOBINT
 1644 00D40 41000           CON(5)  20
 1645 00D45 00000           CON(5)  =DOBINT
 1646 00D4A 50000           CON(5)  5
 1647               * File  KMmenuMDF.s     170
 1648 00D4F 00000           CON(5)  =BINT1
 1649 00D54 00000           CON(5)  =DOLIST
 1650 00D59 00000           CON(5)  =ZERO
 1651 00D5E 00000           CON(5)  =SEMI
 1652               * File  KMmenuMDF.s     171
 1653 00D63 00000           CON(5)  =BINT3
 1654 00D68 00000           CON(5)  =DOCSTR
 1655 00D6D 50000           CON(5)  5
 1656 00D72 00000           CON(5)  =MINUSONE
 1657 00D77 00000           CON(5)  =BINT2
 1658 00D7C 00000           CON(5)  =DOREAL
 1659 00D81 100             NIBHEX  100
 1660 00D84 0000000         NIBHEX  000000000001
            00001
 1661 00D90 0               NIBHEX  0
 1662 00D91 00000           CON(5)  =DUP
 1663               * File  KMmenuMDF.s     172
 1664
 1665               * File  KMmenuMDF.s     173
 1666               * w03
 1667               * File  KMmenuMDF.s     174
 1668 00D96 00000           CON(5)  ='DROPFALSE
 1669               * File  KMmenuMDF.s     175
 1670 00D9B 00000           CON(5)  =DOBINT
 1671 00DA0 D3000           CON(5)  61
 1672 00DA5 00000           CON(5)  =DOBINT
 1673 00DAA C2000           CON(5)  44
 1674 00DAF 00000           CON(5)  =DOBINT
 1675 00DB4 41000           CON(5)  20
 1676 00DB9 00000           CON(5)  =DOBINT
 1677 00DBE 50000           CON(5)  5
 1678               * File  KMmenuMDF.s     176
 1679 00DC3 00000           CON(5)  =BINT1
 1680 00DC8 00000           CON(5)  =DOLIST
 1681 00DCD 00000           CON(5)  =ZERO
 1682 00DD2 00000           CON(5)  =SEMI
 1683               * File  KMmenuMDF.s     177
 1684 00DD7 00000           CON(5)  =BINT3
 1685 00DDC 00000           CON(5)  =DOCSTR
 1686 00DE1 50000           CON(5)  5
 1687 00DE6 00000           CON(5)  =MINUSONE
 1688 00DEB 00000           CON(5)  =BINT2
 1689 00DF0 00000           CON(5)  =DOREAL
 1690 00DF5 100             NIBHEX  100
 1691 00DF8 0000000         NIBHEX  000000000001
            00001
 1692 00E04 0               NIBHEX  0
 1693 00E05 00000           CON(5)  =DUP
 1694               * File  KMmenuMDF.s     178
 1695
 1696               * File  KMmenuMDF.s     179
 1697               * psi1
 1698               * File  KMmenuMDF.s     180
 1699 00E0A 00000           CON(5)  ='DROPFALSE
 1700               * File  KMmenuMDF.s     181
 1701 00E0F 00000           CON(5)  =DOBINT
 1702 00E14 26000           CON(5)  98
 1703 00E19 00000           CON(5)  =DOBINT
 1704 00E1E 80000           CON(5)  8
 1705 00E23 00000           CON(5)  =DOBINT
 1706 00E28 41000           CON(5)  20
 1707 00E2D 00000           CON(5)  =DOBINT
 1708 00E32 50000           CON(5)  5
 1709               * File  KMmenuMDF.s     182
 1710 00E37 00000           CON(5)  =BINT1
 1711 00E3C 00000           CON(5)  =DOLIST
 1712 00E41 00000           CON(5)  =ZERO
 1713 00E46 00000           CON(5)  =SEMI
 1714               * File  KMmenuMDF.s     183
 1715 00E4B 00000           CON(5)  =BINT3
 1716 00E50 00000           CON(5)  =DOCSTR
 1717 00E55 50000           CON(5)  5
 1718 00E5A 00000           CON(5)  =MINUSONE
 1719 00E5F 00000           CON(5)  =BINT2
 1720 00E64 00000           CON(5)  =DOREAL
 1721 00E69 000             NIBHEX  000
 1722 00E6C 0000000         NIBHEX  000000000000
            00000
 1723 00E78 0               NIBHEX  0
 1724 00E79 00000           CON(5)  =DUP
 1725               * File  KMmenuMDF.s     184
 1726
 1727               * File  KMmenuMDF.s     185
 1728               * psi2
 1729               * File  KMmenuMDF.s     186
 1730 00E7E 00000           CON(5)  ='DROPFALSE
 1731               * File  KMmenuMDF.s     187
 1732 00E83 00000           CON(5)  =DOBINT
 1733 00E88 26000           CON(5)  98
 1734 00E8D 00000           CON(5)  =DOBINT
 1735 00E92 A1000           CON(5)  26
 1736 00E97 00000           CON(5)  =DOBINT
 1737 00E9C 41000           CON(5)  20
 1738 00EA1 00000           CON(5)  =DOBINT
 1739 00EA6 50000           CON(5)  5
 1740               * File  KMmenuMDF.s     188
 1741 00EAB 00000           CON(5)  =BINT1
 1742 00EB0 00000           CON(5)  =DOLIST
 1743 00EB5 00000           CON(5)  =ZERO
 1744 00EBA 00000           CON(5)  =SEMI
 1745               * File  KMmenuMDF.s     189
 1746 00EBF 00000           CON(5)  =BINT3
 1747 00EC4 00000           CON(5)  =DOCSTR
 1748 00EC9 50000           CON(5)  5
 1749 00ECE 00000           CON(5)  =MINUSONE
 1750 00ED3 00000           CON(5)  =BINT2
 1751 00ED8 00000           CON(5)  =DOREAL
 1752 00EDD 000             NIBHEX  000
 1753 00EE0 0000000         NIBHEX  000000000000
            00000
 1754 00EEC 0               NIBHEX  0
 1755 00EED 00000           CON(5)  =DUP
 1756               * File  KMmenuMDF.s     190
 1757
 1758               * File  KMmenuMDF.s     191
 1759               * psi3
 1760               * File  KMmenuMDF.s     192
 1761 00EF2 00000           CON(5)  ='DROPFALSE
 1762               * File  KMmenuMDF.s     193
 1763 00EF7 00000           CON(5)  =DOBINT
 1764 00EFC 26000           CON(5)  98
 1765 00F01 00000           CON(5)  =DOBINT
 1766 00F06 C2000           CON(5)  44
 1767 00F0B 00000           CON(5)  =DOBINT
 1768 00F10 41000           CON(5)  20
 1769 00F15 00000           CON(5)  =DOBINT
 1770 00F1A 50000           CON(5)  5
 1771               * File  KMmenuMDF.s     194
 1772 00F1F 00000           CON(5)  =BINT1
 1773 00F24 00000           CON(5)  =DOLIST
 1774 00F29 00000           CON(5)  =ZERO
 1775 00F2E 00000           CON(5)  =SEMI
 1776               * File  KMmenuMDF.s     195
 1777 00F33 00000           CON(5)  =BINT3
 1778 00F38 00000           CON(5)  =DOCSTR
 1779 00F3D 50000           CON(5)  5
 1780 00F42 00000           CON(5)  =MINUSONE
 1781 00F47 00000           CON(5)  =BINT2
 1782 00F4C 00000           CON(5)  =DOREAL
 1783 00F51 000             NIBHEX  000
 1784 00F54 0000000         NIBHEX  000000000000
            00000
 1785 00F60 0               NIBHEX  0
 1786 00F61 00000           CON(5)  =DUP
 1787               * File  KMmenuMDF.s     196
 1788
 1789               * File  KMmenuMDF.s     197
 1790               * type f1
 1791               * File  KMmenuMDF.s     198
 1792 00F66 00000           CON(5)  ='DROPFALSE
 1793 00F6B 00000           CON(5)  =DOBINT
 1794 00F70 91000           CON(5)  25
 1795 00F75 00000           CON(5)  =DOBINT
 1796 00F7A E0000           CON(5)  14
 1797 00F7F 00000           CON(5)  =DOBINT
 1798 00F84 C3000           CON(5)  60
 1799 00F89 00000           CON(5)  =DOBINT
 1800 00F8E 50000           CON(5)  5
 1801               * x y b h
 1802               * File  KMmenuMDF.s     199
 1803 00F93 00000           CON(5)  =BINT12
 1804 00F98 00000           CON(5)  =MINUSONE
 1805 00F9D 00000           CON(5)  =BINT1
 1806               * File  KMmenuMDF.s     200
 1807 00FA2 00000           CON(5)  =DOCSTR
 1808 00FA7 93000           CON(5)  57
 1809 00FAC 9466023         NIBASC  \If constant just mak\
            6F6E637
            4716E64702A657374702D616B6

 1810 00FD4 5602770         NIBASC  \e w0=0\
            3D303
 1811               * File  KMmenuMDF.s     201
 1812 00FE0 00000           CON(5)  =DOLIST
 1813 00FE5 00000           CON(5)  =DOCSTR
 1814 00FEA 52000           CON(5)  37
 1815 00FEF 6403A23         NIBASC  \F0*COS(w0*t+psi)\
            4F43582
            7703A247B207379692

 1816 0100F 00000           CON(5)  =DOCSTR
 1817 01014 52000           CON(5)  37
 1818 01019 6403A23         NIBASC  \F0*SIN(w0*t+psi)\
            594E482
            7703A247B207379692

 1819 01039 00000           CON(5)  =SEMI
 1820               * File  KMmenuMDF.s     202
 1821 0103E 00000           CON(5)  =BINT2
 1822 01043 00000           CON(5)  =DOCSTR
 1823 01048 52000           CON(5)  37
 1824 0104D 6403A23         NIBASC  \F0*SIN(w0*t+psi)\
            594E482
            7703A247B207379692

 1825 0106D 00000           CON(5)  =DUP
 1826               * File  KMmenuMDF.s     203
 1827
 1828               * File  KMmenuMDF.s     204
 1829               * type f2
 1830               * File  KMmenuMDF.s     205
 1831 01072 00000           CON(5)  ='DROPFALSE
 1832 01077 00000           CON(5)  =DOBINT
 1833 0107C 91000           CON(5)  25
 1834 01081 00000           CON(5)  =DOBINT
 1835 01086 02000           CON(5)  32
 1836 0108B 00000           CON(5)  =DOBINT
 1837 01090 C3000           CON(5)  60
 1838 01095 00000           CON(5)  =DOBINT
 1839 0109A 50000           CON(5)  5
 1840               * x y b h
 1841               * File  KMmenuMDF.s     206
 1842 0109F 00000           CON(5)  =BINT12
 1843 010A4 00000           CON(5)  =MINUSONE
 1844 010A9 00000           CON(5)  =BINT1
 1845               * File  KMmenuMDF.s     207
 1846 010AE 00000           CON(5)  =DOCSTR
 1847 010B3 93000           CON(5)  57
 1848 010B8 9466023         NIBASC  \If constant just mak\
            6F6E637
            4716E64702A657374702D616B6

 1849 010E0 5602770         NIBASC  \e w0=0\
            3D303
 1850               * File  KMmenuMDF.s     208
 1851 010EC 00000           CON(5)  =DOLIST
 1852 010F1 00000           CON(5)  =DOCSTR
 1853 010F6 52000           CON(5)  37
 1854 010FB 6403A23         NIBASC  \F0*COS(w0*t+psi)\
            4F43582
            7703A247B207379692

 1855 0111B 00000           CON(5)  =DOCSTR
 1856 01120 52000           CON(5)  37
 1857 01125 6403A23         NIBASC  \F0*SIN(w0*t+psi)\
            594E482
            7703A247B207379692

 1858 01145 00000           CON(5)  =SEMI
 1859               * File  KMmenuMDF.s     209
 1860 0114A 00000           CON(5)  =BINT2
 1861 0114F 00000           CON(5)  =DOCSTR
 1862 01154 52000           CON(5)  37
 1863 01159 6403A23         NIBASC  \F0*SIN(w0*t+psi)\
            594E482
            7703A247B207379692

 1864 01179 00000           CON(5)  =DUP
 1865               * File  KMmenuMDF.s     210
 1866
 1867               * File  KMmenuMDF.s     211
 1868               * type f3
 1869               * File  KMmenuMDF.s     212
 1870 0117E 00000           CON(5)  ='DROPFALSE
 1871 01183 00000           CON(5)  =DOBINT
 1872 01188 91000           CON(5)  25
 1873 0118D 00000           CON(5)  =DOBINT
 1874 01192 23000           CON(5)  50
 1875 01197 00000           CON(5)  =DOBINT
 1876 0119C C3000           CON(5)  60
 1877 011A1 00000           CON(5)  =DOBINT
 1878 011A6 50000           CON(5)  5
 1879               * x y b h
 1880               * File  KMmenuMDF.s     213
 1881 011AB 00000           CON(5)  =BINT12
 1882 011B0 00000           CON(5)  =MINUSONE
 1883 011B5 00000           CON(5)  =BINT1
 1884               * File  KMmenuMDF.s     214
 1885 011BA 00000           CON(5)  =DOCSTR
 1886 011BF 93000           CON(5)  57
 1887 011C4 9466023         NIBASC  \If constant just mak\
            6F6E637
            4716E64702A657374702D616B6

 1888 011EC 5602770         NIBASC  \e w0=0\
            3D303
 1889               * File  KMmenuMDF.s     215
 1890 011F8 00000           CON(5)  =DOLIST
 1891 011FD 00000           CON(5)  =DOCSTR
 1892 01202 52000           CON(5)  37
 1893 01207 6403A23         NIBASC  \F0*COS(w0*t+psi)\
            4F43582
            7703A247B207379692

 1894 01227 00000           CON(5)  =DOCSTR
 1895 0122C 52000           CON(5)  37
 1896 01231 6403A23         NIBASC  \F0*SIN(w0*t+psi)\
            594E482
            7703A247B207379692

 1897 01251 00000           CON(5)  =SEMI
 1898 01256 00000           CON(5)  =BINT2
 1899 0125B 00000           CON(5)  =DOCSTR
 1900 01260 52000           CON(5)  37
 1901 01265 6403A23         NIBASC  \F0*SIN(w0*t+psi)\
            594E482
            7703A247B207379692

 1902 01285 00000           CON(5)  =DUP
 1903               *
 1904               * File  KMmenuMDF.s     217
 1905 0128A 00000           CON(5)  =DOBINT
 1906 0128F F0000           CON(5)  15
 1907 01294 00000           CON(5)  =DOBINT
 1908 01299 C0000           CON(5)  12
 1909               * File  KMmenuMDF.s     218
 1910 0129E 00000           CON(5)  =DOROMP
 1911 012A3 000000          CON(6)  =~MenuBase
 1912               * File  KMmenuMDF.s     219
 1913 012A9 00000           CON(5)  =DOCSTR
 1914 012AE 91000           CON(5)  25
 1915 012B3 020264F         NIBASC  \  Forces  \
            6273656
            370202
 1916               * File  KMmenuMDF.s     220
 1917 012C7 00000           CON(5)  =DOFLASHP
 1918 012CC 0000000         CON(7)  =^IfMain
 1919               * File  KMmenuMDF.s     221
 1920 012D3 00000           CON(5)  =SEMI
 1921               * File  KMmenuMDF.s     222
 1922
 1923               * File  KMmenuMDF.s     223
 1924 012D8         =InitCond
 1925               * File  KMmenuMDF.s     224
 1926 012D8 00000           CON(5)  =DOCOL
 1927               * File  KMmenuMDF.s     225
 1928 012DD 00000           CON(5)  =DOCSTR
 1929 012E2 F0000           CON(5)  15
 1930 012E7 8782039         NIBASC  \x(0):\
            2A3
 1931 012F1 00000           CON(5)  =BINT0
 1932 012F6 00000           CON(5)  =BINT8
 1933               * File  KMmenuMDF.s     226
 1934 012FB 00000           CON(5)  =DOCSTR
 1935 01300 B0000           CON(5)  11
 1936 01305 8713A3          NIBASC  \x1:\
 1937 0130B 00000           CON(5)  =BINT0
 1938 01310 00000           CON(5)  =BINT14
 1939 01315 00000           CON(5)  =DOCSTR
 1940 0131A B0000           CON(5)  11
 1941 0131F 8723A3          NIBASC  \x2:\
 1942 01325 00000           CON(5)  =BINT39
 1943 0132A 00000           CON(5)  =BINT14
 1944 0132F 00000           CON(5)  =DOCSTR
 1945 01334 B0000           CON(5)  11
 1946 01339 8733A3          NIBASC  \x3:\
 1947 0133F 00000           CON(5)  =BINT75
 1948 01344 00000           CON(5)  =BINT14
 1949               * File  KMmenuMDF.s     227
 1950
 1951               * File  KMmenuMDF.s     228
 1952
 1953               * File  KMmenuMDF.s     229
 1954 01349 00000           CON(5)  =DOCSTR
 1955 0134E F0000           CON(5)  15
 1956 01353 6782039         NIBASC  \v(0):\
            2A3
 1957 0135D 00000           CON(5)  =BINT0
 1958 01362 00000           CON(5)  =BINT26
 1959               * File  KMmenuMDF.s     230
 1960 01367 00000           CON(5)  =DOCSTR
 1961 0136C B0000           CON(5)  11
 1962 01371 6713A3          NIBASC  \v1:\
 1963 01377 00000           CON(5)  =BINT0
 1964 0137C 00000           CON(5)  =BINT32
 1965 01381 00000           CON(5)  =DOCSTR
 1966 01386 B0000           CON(5)  11
 1967 0138B 6723A3          NIBASC  \v2:\
 1968 01391 00000           CON(5)  =BINT39
 1969 01396 00000           CON(5)  =BINT32
 1970 0139B 00000           CON(5)  =DOCSTR
 1971 013A0 B0000           CON(5)  11
 1972 013A5 6733A3          NIBASC  \v3:\
 1973 013AB 00000           CON(5)  =BINT75
 1974 013B0 00000           CON(5)  =BINT32
 1975               * File  KMmenuMDF.s     231
 1976
 1977               * File  KMmenuMDF.s     232
 1978               * x0
 1979               * File  KMmenuMDF.s     233
 1980 013B5 00000           CON(5)  ='DROPFALSE
 1981               * File  KMmenuMDF.s     234
 1982 013BA 00000           CON(5)  =DOBINT
 1983 013BF F0000           CON(5)  15
 1984 013C4 00000           CON(5)  =DOBINT
 1985 013C9 E0000           CON(5)  14
 1986 013CE 00000           CON(5)  =DOBINT
 1987 013D3 41000           CON(5)  20
 1988 013D8 00000           CON(5)  =DOBINT
 1989 013DD 50000           CON(5)  5
 1990               * File  KMmenuMDF.s     235
 1991 013E2 00000           CON(5)  =BINT1
 1992 013E7 00000           CON(5)  =DOLIST
 1993 013EC 00000           CON(5)  =ZERO
 1994 013F1 00000           CON(5)  =SEMI
 1995               * File  KMmenuMDF.s     236
 1996 013F6 00000           CON(5)  =BINT3
 1997 013FB 00000           CON(5)  =DOCSTR
 1998 01400 50000           CON(5)  5
 1999 01405 00000           CON(5)  =MINUSONE
 2000 0140A 00000           CON(5)  =BINT2
 2001 0140F 00000           CON(5)  =DOREAL
 2002 01414 000             NIBHEX  000
 2003 01417 0000000         NIBHEX  000000000000
            00000
 2004 01423 0               NIBHEX  0
 2005 01424 00000           CON(5)  =DUP
 2006               * File  KMmenuMDF.s     237
 2007
 2008               * File  KMmenuMDF.s     238
 2009               * x0
 2010               * File  KMmenuMDF.s     239
 2011 01429 00000           CON(5)  ='DROPFALSE
 2012               * File  KMmenuMDF.s     240
 2013 0142E 00000           CON(5)  =DOBINT
 2014 01433 33000           CON(5)  51
 2015 01438 00000           CON(5)  =DOBINT
 2016 0143D E0000           CON(5)  14
 2017 01442 00000           CON(5)  =DOBINT
 2018 01447 41000           CON(5)  20
 2019 0144C 00000           CON(5)  =DOBINT
 2020 01451 50000           CON(5)  5
 2021               * File  KMmenuMDF.s     241
 2022 01456 00000           CON(5)  =BINT1
 2023 0145B 00000           CON(5)  =DOLIST
 2024 01460 00000           CON(5)  =ZERO
 2025 01465 00000           CON(5)  =SEMI
 2026               * File  KMmenuMDF.s     242
 2027 0146A 00000           CON(5)  =BINT3
 2028 0146F 00000           CON(5)  =DOCSTR
 2029 01474 50000           CON(5)  5
 2030 01479 00000           CON(5)  =MINUSONE
 2031 0147E 00000           CON(5)  =BINT2
 2032 01483 00000           CON(5)  =DOREAL
 2033 01488 000             NIBHEX  000
 2034 0148B 0000000         NIBHEX  000000000000
            00000
 2035 01497 0               NIBHEX  0
 2036 01498 00000           CON(5)  =DUP
 2037               * File  KMmenuMDF.s     243
 2038
 2039               * File  KMmenuMDF.s     244
 2040               * x0
 2041               * File  KMmenuMDF.s     245
 2042 0149D 00000           CON(5)  ='DROPFALSE
 2043               * File  KMmenuMDF.s     246
 2044 014A2 00000           CON(5)  =DOBINT
 2045 014A7 A5000           CON(5)  90
 2046 014AC 00000           CON(5)  =DOBINT
 2047 014B1 E0000           CON(5)  14
 2048 014B6 00000           CON(5)  =DOBINT
 2049 014BB 41000           CON(5)  20
 2050 014C0 00000           CON(5)  =DOBINT
 2051 014C5 50000           CON(5)  5
 2052               * File  KMmenuMDF.s     247
 2053 014CA 00000           CON(5)  =BINT1
 2054 014CF 00000           CON(5)  =DOLIST
 2055 014D4 00000           CON(5)  =ZERO
 2056 014D9 00000           CON(5)  =SEMI
 2057               * File  KMmenuMDF.s     248
 2058 014DE 00000           CON(5)  =BINT3
 2059 014E3 00000           CON(5)  =DOCSTR
 2060 014E8 50000           CON(5)  5
 2061 014ED 00000           CON(5)  =MINUSONE
 2062 014F2 00000           CON(5)  =BINT2
 2063 014F7 00000           CON(5)  =DOREAL
 2064 014FC 000             NIBHEX  000
 2065 014FF 0000000         NIBHEX  000000000000
            00000
 2066 0150B 0               NIBHEX  0
 2067 0150C 00000           CON(5)  =DUP
 2068               * File  KMmenuMDF.s     249
 2069
 2070               * File  KMmenuMDF.s     250
 2071               * v0
 2072               * File  KMmenuMDF.s     251
 2073 01511 00000           CON(5)  ='DROPFALSE
 2074               * File  KMmenuMDF.s     252
 2075 01516 00000           CON(5)  =DOBINT
 2076 0151B F0000           CON(5)  15
 2077 01520 00000           CON(5)  =DOBINT
 2078 01525 02000           CON(5)  32
 2079 0152A 00000           CON(5)  =DOBINT
 2080 0152F 41000           CON(5)  20
 2081 01534 00000           CON(5)  =DOBINT
 2082 01539 50000           CON(5)  5
 2083               * File  KMmenuMDF.s     253
 2084 0153E 00000           CON(5)  =BINT1
 2085 01543 00000           CON(5)  =DOLIST
 2086 01548 00000           CON(5)  =ZERO
 2087 0154D 00000           CON(5)  =SEMI
 2088               * File  KMmenuMDF.s     254
 2089 01552 00000           CON(5)  =BINT3
 2090 01557 00000           CON(5)  =DOCSTR
 2091 0155C 50000           CON(5)  5
 2092 01561 00000           CON(5)  =MINUSONE
 2093 01566 00000           CON(5)  =BINT2
 2094 0156B 00000           CON(5)  =DOREAL
 2095 01570 000             NIBHEX  000
 2096 01573 0000000         NIBHEX  000000000000
            00000
 2097 0157F 0               NIBHEX  0
 2098 01580 00000           CON(5)  =DUP
 2099               * File  KMmenuMDF.s     255
 2100
 2101               * File  KMmenuMDF.s     256
 2102               * v0
 2103               * File  KMmenuMDF.s     257
 2104 01585 00000           CON(5)  ='DROPFALSE
 2105               * File  KMmenuMDF.s     258
 2106 0158A 00000           CON(5)  =DOBINT
 2107 0158F 33000           CON(5)  51
 2108 01594 00000           CON(5)  =DOBINT
 2109 01599 02000           CON(5)  32
 2110 0159E 00000           CON(5)  =DOBINT
 2111 015A3 41000           CON(5)  20
 2112 015A8 00000           CON(5)  =DOBINT
 2113 015AD 50000           CON(5)  5
 2114               * File  KMmenuMDF.s     259
 2115 015B2 00000           CON(5)  =BINT1
 2116 015B7 00000           CON(5)  =DOLIST
 2117 015BC 00000           CON(5)  =ZERO
 2118 015C1 00000           CON(5)  =SEMI
 2119               * File  KMmenuMDF.s     260
 2120 015C6 00000           CON(5)  =BINT3
 2121 015CB 00000           CON(5)  =DOCSTR
 2122 015D0 50000           CON(5)  5
 2123 015D5 00000           CON(5)  =MINUSONE
 2124 015DA 00000           CON(5)  =BINT2
 2125 015DF 00000           CON(5)  =DOREAL
 2126 015E4 000             NIBHEX  000
 2127 015E7 0000000         NIBHEX  000000000000
            00000
 2128 015F3 0               NIBHEX  0
 2129 015F4 00000           CON(5)  =DUP
 2130               * File  KMmenuMDF.s     261
 2131
 2132               * File  KMmenuMDF.s     262
 2133               * v0
 2134               * File  KMmenuMDF.s     263
 2135 015F9 00000           CON(5)  ='DROPFALSE
 2136               * File  KMmenuMDF.s     264
 2137 015FE 00000           CON(5)  =DOBINT
 2138 01603 A5000           CON(5)  90
 2139 01608 00000           CON(5)  =DOBINT
 2140 0160D 02000           CON(5)  32
 2141 01612 00000           CON(5)  =DOBINT
 2142 01617 41000           CON(5)  20
 2143 0161C 00000           CON(5)  =DOBINT
 2144 01621 50000           CON(5)  5
 2145               * File  KMmenuMDF.s     265
 2146 01626 00000           CON(5)  =BINT1
 2147 0162B 00000           CON(5)  =DOLIST
 2148 01630 00000           CON(5)  =ZERO
 2149 01635 00000           CON(5)  =SEMI
 2150               * File  KMmenuMDF.s     266
 2151 0163A 00000           CON(5)  =BINT3
 2152 0163F 00000           CON(5)  =DOCSTR
 2153 01644 50000           CON(5)  5
 2154 01649 00000           CON(5)  =MINUSONE
 2155 0164E 00000           CON(5)  =BINT2
 2156 01653 00000           CON(5)  =DOREAL
 2157 01658 000             NIBHEX  000
 2158 0165B 0000000         NIBHEX  000000000000
            00000
 2159 01667 0               NIBHEX  0
 2160 01668 00000           CON(5)  =DUP
 2161               * File  KMmenuMDF.s     267
 2162
 2163               * File  KMmenuMDF.s     268
 2164
 2165               * File  KMmenuMDF.s     269
 2166 0166D 00000           CON(5)  =DOBINT
 2167 01672 80000           CON(5)  8
 2168 01677 00000           CON(5)  =DOBINT
 2169 0167C 60000           CON(5)  6
 2170               * File  KMmenuMDF.s     270
 2171 01681 00000           CON(5)  =DOROMP
 2172 01686 000000          CON(6)  =~MenuBase
 2173               * File  KMmenuMDF.s     271
 2174 0168C 00000           CON(5)  =DOCSTR
 2175 01691 52000           CON(5)  37
 2176 01696 0202858         NIBASC  \  X(0) and V(0) \
            2039202
            16E646026582039202

 2177               * File  KMmenuMDF.s     272
 2178 016B6 00000           CON(5)  =DOFLASHP
 2179 016BB 0000000         CON(7)  =^IfMain
 2180               * File  KMmenuMDF.s     273
 2181
 2182               * File  KMmenuMDF.s     274
 2183 016C2 00000           CON(5)  =SEMI
 2184               * File  KMmenuMDF.s     275
 2185
Saturn Assembler                                       Tue May 22 21:55:38 2018
V3.0.9 (04/15/2007)   Symbol Table                       KMmenuMDF.a    Page    2

 'DROPFALSE                        Ext                   -  1051  1090  1128
                                        1167  1206  1245  1284  1323  1362  1403
                                        1513  1544  1575  1606  1637  1668  1699
                                        1730  1761  1792  1831  1870  1980  2011
                                        2042  2073  2104  2135
 AddressesCLEBit                   Abs       0 #00000000 -   884
 AddressesCLEFl                    Abs      89 #00000059 -   882   883   884
 AddressesCLENib                   Abs      22 #00000016 -   883
 AlarmBeepBit                      Abs       0 #00000000 -   271
 AlarmBeepFl                       Abs      57 #00000039 -   259   270   271
 AlarmBeepNib                      Abs      14 #0000000E -   270
 AlgebraicModeBit                  Abs       2 #00000002 -   902
 AlgebraicModeFl                   Abs      95 #0000005F -   900   901   902
 AlgebraicModeNib                  Abs      23 #00000017 -   901
 AngleBCt                          Abs       2 #00000002 -   222
 AngleBit1                         Abs       0 #00000000 -   274   275
 AngleBit2                         Abs       1 #00000001 -   275
 AngleFl1                          Abs      17 #00000011 -   221   273   274
 AngleNib                          Abs       4 #00000004 -   273
 ArrayOnlyBit                      Abs       2 #00000002 -   890
 ArrayOnlyFl                       Abs      91 #0000005B -   888   889   890
 ArrayOnlyNib                      Abs      22 #00000016 -   889
 AutoSaveBit                       Abs       1 #00000001 -   899
 AutoSaveFl                        Abs      94 #0000005E -   897   898   899
 AutoSaveNib                       Abs      23 #00000017 -   898
 BINT0                             Ext                   -  1066  1105  1143
                                        1182  1221  1260  1299  1338  1377  1427
                                        1448  1456  1477  1485  1506  1931  1937
                                        1957  1963
 BINT1                             Ext                   -   945   951   957
                                         963   969   975   981   987   993  1063
                                        1102  1140  1179  1218  1257  1296  1335
                                        1374  1524  1555  1586  1617  1648  1679
                                        1710  1741  1772  1805  1844  1883  1991
                                        2022  2053  2084  2115  2146
 BINT10                            Ext                   -  1400
 BINT12                            Ext                   -  1803  1842  1881
 BINT14                            Ext                   -   952  1449  1938
                                        1943  1948
 BINT15                            Ext                   -  1432  1461  1490
 BINT2                             Ext                   -  1078  1116  1155
                                        1194  1233  1272  1311  1350  1390  1533
                                        1564  1595  1626  1657  1688  1719  1750
                                        1781  1821  1860  1898  2000  2031  2062
                                        2093  2124  2155
 BINT20                            Ext                   -   958
 BINT26                            Ext                   -   964  1457  1462
                                        1467  1472  1958
 BINT3                             Ext                   -  1069  1108  1146
                                        1185  1224  1263  1302  1341  1380  1529
                                        1560  1591  1622  1653  1684  1715  1746
                                        1777  1996  2027  2058  2089  2120  2151
 BINT32                            Ext                   -   970  1478  1964
                                        1969  1974
 BINT38                            Ext                   -   976
 BINT39                            Ext                   -  1942  1968
 BINT44                            Ext                   -   982  1486  1491
                                        1496  1501
 BINT49                            Ext                   -  1437  1466  1495
 BINT50                            Ext                   -   988  1507
 BINT56                            Ext                   -   994
 BINT70                            Ext                   -  1046
 BINT75                            Ext                   -  1947  1973
 BINT8                             Ext                   -   946  1047  1428
                                        1433  1438  1443  1932
 BINT83                            Ext                   -  1442  1471  1500
 BINT9                             Ext                   -  1401
 BigFontCmdBit                     Abs       0 #00000000 -   836
 BigFontCmdFl                      Abs      73 #00000049 -   834   835   836
 BigFontCmdNib                     Abs      18 #00000012 -   835
 BigFontStackBit                   Abs       3 #00000003 -   833
 BigFontStackFl                    Abs      72 #00000048 -   831   832   833
 BigFontStackNib                   Abs      17 #00000011 -   832
 BinBaseBCt                        Abs       2 #00000002 -   217
 BinBaseBit1                       Abs       2 #00000002 -   278
 BinBaseFl1                        Abs      11 #0000000B -   216   277   278
 BinBaseNib                        Abs       2 #00000002 -   277
 BinWordSBCt                       Abs       6 #00000006 -   215
 BinWordSBit1                      Abs       0 #00000000 -   281
 BinWordSFl1                       Abs       5 #00000005 -   214   280   281
 BinWordSNib                       Abs       1 #00000001 -   280
 CarefulBit                        Abs       3 #00000003 -   284
 CarefulFl                         Abs       4 #00000004 -   212   283   284
 CarefulNib                        Abs       0 #00000000 -   283
 ClockFmtBit                       Abs       0 #00000000 -   287
 ClockFmtFl                        Abs      41 #00000029 -   244   286   287
 ClockFmtNib                       Abs      10 #0000000A -   286
 ClockOnBit                        Abs       3 #00000003 -   290
 ClockOnFl                         Abs      40 #00000028 -   243   289   290
 ClockOnNib                        Abs       9 #00000009 -   289
 CmdAutoIndentBit                  Abs       3 #00000003 -   821
 CmdAutoIndentFl                   Abs      68 #00000044 -   819   820   821
 CmdAutoIndentNib                  Abs      16 #00000010 -   820
 ComVecDiBCt                       Abs       2 #00000002 -   220
 ComVecDiBit1                      Abs       2 #00000002 -   296
 ComVecDiFl1                       Abs      15 #0000000F -   219   295   296
 ComVecDiNib                       Abs       3 #00000003 -   295
 Complex2DBit                      Abs       2 #00000002 -   293
 Complex2DFl                       Abs      19 #00000013 -   223   292   293
 Complex2DNib                      Abs       4 #00000004 -   292
 ComplexBit                        Abs       2 #00000002 -   916
 ComplexFl                         Abs     103 #00000067 -   914   915   916
 ComplexNib                        Abs      25 #00000019 -   915
 ConnectPtBit                      Abs       2 #00000002 -   299
 ConnectPtFl                       Abs      31 #0000001F -   233   298   299
 ConnectPtNib                      Abs       7 #00000007 -   298
 ConstantsBit                      Abs       1 #00000001 -   302
 ConstantsFl                       Abs       2 #00000002 -   210   301   302
 ConstantsNib                      Abs       0 #00000000 -   301
 DOBINT                            Ext                   -  1053  1055  1057
                                        1059  1092  1094  1096  1098  1130  1132
                                        1134  1136  1169  1171  1173  1175  1208
                                        1210  1212  1214  1247  1249  1251  1253
                                        1286  1288  1290  1292  1325  1327  1329
                                        1331  1364  1366  1368  1370  1515  1517
                                        1519  1521  1546  1548  1550  1552  1577
                                        1579  1581  1583  1608  1610  1612  1614
                                        1639  1641  1643  1645  1670  1672  1674
                                        1676  1701  1703  1705  1707  1732  1734
                                        1736  1738  1763  1765  1767  1769  1793
                                        1795  1797  1799  1832  1834  1836  1838
                                        1871  1873  1875  1877  1905  1907  1982
                                        1984  1986  1988  2013  2015  2017  2019
                                        2044  2046  2048  2050  2075  2077  2079
                                        2081  2106  2108  2110  2112  2137  2139
                                        2141  2143  2166  2168
 DOCOL                             Ext                   -   936  1422  1926
 DOCSTR                            Ext                   -   942   948   954
                                         960   966   972   978   984   990  1071
                                        1110  1148  1187  1226  1265  1304  1343
                                        1382  1405  1424  1429  1434  1439  1445
                                        1453  1458  1463  1468  1474  1482  1487
                                        1492  1497  1503  1530  1561  1592  1623
                                        1654  1685  1716  1747  1778  1807  1813
                                        1816  1822  1846  1852  1855  1861  1885
                                        1891  1894  1899  1913  1928  1934  1939
                                        1944  1954  1960  1965  1970  1997  2028
                                        2059  2090  2121  2152  2174
 DOFLASHP                          Ext                   -  1409  1917  2178
 DOGROB                            Ext                   -   998
 DOLIST                            Ext                   -  1065  1104  1142
                                        1181  1220  1259  1298  1337  1376  1525
                                        1556  1587  1618  1649  1680  1711  1742
                                        1773  1812  1851  1890  1992  2023  2054
                                        2085  2116  2147
 DOREAL                            Ext                   -  1080  1118  1157
                                        1196  1235  1274  1313  1352  1392  1534
                                        1565  1596  1627  1658  1689  1720  1751
                                        1782  2001  2032  2063  2094  2125  2156
 DOROMP                            Ext                   -  1910  2171
 DUP                               Ext                   -  1084  1122  1161
                                        1200  1239  1278  1317  1356  1396  1538
                                        1569  1600  1631  1662  1693  1724  1755
                                        1786  1825  1864  1902  2005  2036  2067
                                        2098  2129  2160
 DateFmtBit                        Abs       1 #00000001 -   305
 DateFmtFl                         Abs      42 #0000002A -   245   304   305
 DateFmtNib                        Abs      10 #0000000A -   304
 DblSpaceBit                       Abs       0 #00000000 -   308
 DblSpaceFl                        Abs      37 #00000025 -   239   307   308
 DblSpaceNib                       Abs       9 #00000009 -   307
 DefSysF32-01                      Abs67178480 #04010FF0 -   134
 DefSysF64-33                      Abs       0 #00000000 -   133
 DefSysF65-96                      Abs1107296256 #42000000 -   135
 DefSysF97-128                     Abs       0 #00000000 -   136
 DelNRAlmBit                       Abs       3 #00000003 -   311
 DelNRAlmFl                        Abs      44 #0000002C -   247   310   311
 DelNRAlmNib                       Abs      10 #0000000A -   310
 DesasmWithAdrBit                  Abs       2 #00000002 -   830
 DesasmWithAdrFl                   Abs      71 #00000047 -   828   829   830
 DesasmWithAdrNib                  Abs      17 #00000011 -   829
 DigitalClockBit                   Abs       2 #00000002 -   818
 DigitalClockFl                    Abs      67 #00000043 -   816   817   818
 DigitalClockNib                   Abs      16 #00000010 -   817
 ErableHeaderBit                   Abs       0 #00000000 -   896
 ErableHeaderFl                    Abs      93 #0000005D -   894   895   896
 ErableHeaderNib                   Abs      23 #00000017 -   895
 ErrorBeepBit                      Abs       3 #00000003 -   314
 ErrorBeepFl                       Abs      56 #00000038 -   258   313   314
 ErrorBeepNib                      Abs      13 #0000000D -   313
 ExactModeBit                      Abs       0 #00000000 -   921
 ExactModeFl                       Abs     105 #00000069 -   919   920   921
 ExactModeNib                      Abs      26 #0000001A -   920
 FastEViewBit                      Abs       2 #00000002 -   317
 FastEViewNib                      Abs      14 #0000000E -   316
 FastEqViewFl                      Abs      59 #0000003B -   261   316   317
 FilerConfirmBit                   Abs       0 #00000000 -   848
 FilerConfirmFl                    Abs      77 #0000004D -   846   847   848
 FilerConfirmNib                   Abs      19 #00000013 -   847
 FilerConfirmationBit              Abs       3 #00000003 -   845
 FilerConfirmationFl               Abs      76 #0000004C -   843   844   845
 FilerConfirmationNib              Abs      18 #00000012 -   844
=Forcemenu                         Rel    2485 #000009B5 -  1420
 FullScreenEditBit                 Abs       0 #00000000 -   824
 FullScreenEditFl                  Abs      69 #00000045 -   822   823   824
 FullScreenEditNib                 Abs      17 #00000011 -   823
 FunctPlotBit                      Abs       1 #00000001 -   320
 FunctPlotFl                       Abs      30 #0000001E -   232   319   320
 FunctPlotNib                      Abs       7 #00000007 -   319
 GCursorBit                        Abs       3 #00000003 -   323
 GCursorFl                         Abs      32 #00000020 -   234   322   323
 GCursorNib                        Abs       7 #00000007 -   322
 GrobDisplayBit                    Abs       2 #00000002 -   866
 GrobDisplayFl                     Abs      83 #00000053 -   864   865   866
 GrobDisplayNib                    Abs      20 #00000014 -   865
 IODataFmtBit                      Abs       2 #00000002 -   335
 IODataFmtFl                       Abs      35 #00000023 -   237   334   335
 IODataFmtNib                      Abs       8 #00000008 -   334
 IODeviceBit                       Abs       0 #00000000 -   338
 IODeviceFl                        Abs      33 #00000021 -   235   337   338
 IODeviceNib                       Abs       8 #00000008 -   337
 IndexWrapBit                      Abs       3 #00000003 -   326
 IndexWrapFl                       Abs      64 #00000040 -   266   325   326
 IndexWrapNib                      Abs      15 #0000000F -   325
 InfResActBit                      Abs       1 #00000001 -   329
 InfResActFl                       Abs      22 #00000016 -   226   328   329
 InfResActNib                      Abs       5 #00000005 -   328
 InfResultBit                      Abs       1 #00000001 -   332
 InfResultFl                       Abs      26 #0000001A -   230   331   332
 InfResultNib                      Abs       6 #00000006 -   331
=InitCond                          Rel    4824 #000012D8 -  1924
=KMmenu                            Rel       0 #00000000 -   934
 KernelParamBit                    Abs       1 #00000001 -   851
 KernelParamFl                     Abs      78 #0000004E -   849   850   851
 KernelParamNib                    Abs      19 #00000013 -   850
 KeystrokeBeepBit                  Abs       2 #00000002 -   842
 KeystrokeBeepFl                   Abs      75 #0000004B -   840   841   842
 KeystrokeBeepNib                  Abs      18 #00000012 -   841
 LastArgsBit                       Abs       2 #00000002 -   341
 LastArgsFl                        Abs      55 #00000037 -   257   340   341
 LastArgsNib                       Abs      13 #0000000D -   340
 MASDDecompilerBit                 Abs       1 #00000001 -   875
 MASDDecompilerFl                  Abs      86 #00000056 -   873   874   875
 MASDDecompilerNib                 Abs      21 #00000015 -   874
 MINUSONE                          Ext                   -  1076  1114  1153
                                        1192  1231  1270  1309  1348  1387  1532
                                        1563  1594  1625  1656  1687  1718  1749
                                        1780  1804  1843  1882  1999  2030  2061
                                        2092  2123  2154
 MKSmallFontMenuBit                Abs       3 #00000003 -   869
 MKSmallFontMenuFl                 Abs      84 #00000054 -   867   868   869
 MKSmallFontMenuNib                Abs      20 #00000014 -   868
 MLMASDModeBit                     Abs       3 #00000003 -   893
 MLMASDModeFl                      Abs      92 #0000005C -   891   892   893
 MLMASDModeNib                     Abs      22 #00000016 -   892
 MenuOnBit                         Abs       3 #00000003 -   905
 MenuOnFl                          Abs      96 #00000060 -   903   904   905
 MenuOnNib                         Abs      23 #00000017 -   904
 MultiDispBit                      Abs       3 #00000003 -   347
 MultiDispFl                       Abs      52 #00000034 -   254   346   347
 MultiDispNib                      Abs      12 #0000000C -   346
 MultiLine2GROBBit                 Abs       1 #00000001 -   827
 MultiLine2GROBFl                  Abs      70 #00000046 -   825   826   827
 MultiLine2GROBNib                 Abs      17 #00000011 -   826
 MultiLineBit                      Abs       0 #00000000 -   812
 MultiLineFl                       Abs      65 #00000041 -   810   811   812
 MultiLineNib                      Abs      16 #00000010 -   811
 MultiLineStringsBit               Abs       1 #00000001 -   815
 MultiLineStringsFl                Abs      66 #00000042 -   813   814   815
 MultiLineStringsNib               Abs      16 #00000010 -   814
 NoAutoCRBit                       Abs       1 #00000001 -   350
 NoAutoCRFl                        Abs      38 #00000026 -   240   349   350
 NoAutoCRNib                       Abs       9 #00000009 -   349
 NoIOStMsgBit                      Abs       2 #00000002 -   353
 NoIOStMsgNib                      Abs       9 #00000009 -   352
 NoIOStsMsgFl                      Abs      39 #00000027 -   241   352   353
 NoParseBit                        Abs       2 #00000002 -   356
 NoParseFl                         Abs      63 #0000003F -   265   355   356
 NoParseNib                        Abs      15 #0000000F -   355
 NumDigsBCt                        Abs       4 #00000004 -   250
 NumDigsBit1                       Abs       0 #00000000 -   359
 NumDigsFl1                        Abs      45 #0000002D -   249   358   359
 NumDigsNib                        Abs      11 #0000000B -   358
 NumDispBCt                        Abs       2 #00000002 -   252
 NumDispBit1                       Abs       0 #00000000 -   362
 NumDispFl1                        Abs      49 #00000031 -   251   361   362
 NumDispNib                        Abs      12 #0000000C -   361
 OverfActBit                       Abs       0 #00000000 -   365
 OverfActFl                        Abs      21 #00000015 -   225   364   365
 OverfActNib                       Abs       5 #00000005 -   364
 OverflowBit                       Abs       0 #00000000 -   368
 OverflowFl                        Abs      25 #00000019 -   229   367   368
 OverflowNib                       Abs       6 #00000006 -   367
 OverwriteBit                      Abs       3 #00000003 -   371
 OverwriteFl                       Abs      36 #00000024 -   238   370   371
 OverwriteNib                      Abs       8 #00000008 -   370
 PrettyPrintBit                    Abs       2 #00000002 -   854
 PrettyPrintFl                     Abs      79 #0000004F -   852   853   854
 PrettyPrintNib                    Abs      19 #00000013 -   853
 PrintDevBit                       Abs       1 #00000001 -   374
 PrintDevFl                        Abs      34 #00000022 -   236   373   374
 PrintDevNib                       Abs       8 #00000008 -   373
 RadixBit                          Abs       2 #00000002 -   377
 RadixFl                           Abs      51 #00000033 -   253   376   377
 RadixNib                          Abs      12 #0000000C -   376
 RecursiveEditBit                  Abs       3 #00000003 -   881
 RecursiveEditFl                   Abs      88 #00000058 -   879   880   881
 RecursiveEditNib                  Abs      21 #00000015 -   880
 RecursiveStackBit                 Abs       2 #00000002 -   878
 RecursiveStackFl                  Abs      87 #00000057 -   876   877   878
 RecursiveStackNib                 Abs      21 #00000015 -   877
 ResRepAlmBit                      Abs       2 #00000002 -   380
 ResRepAlmFl                       Abs      43 #0000002B -   246   379   380
 ResRepAlmNib                      Abs      10 #0000000A -   379
 ResultsBit                        Abs       2 #00000002 -   383
 ResultsFl                         Abs       3 #00000003 -   211   382   383
 ResultsNib                        Abs       0 #00000000 -   382
 RightJustifiedStackBit            Abs       1 #00000001 -   839
 RightJustifiedStackFl             Abs      74 #0000004A -   837   838   839
 RightJustifiedStackNib            Abs      18 #00000012 -   838
=RomId                             Abs     546 #00000222 -    12
 SEMI                              Ext                   -  1067  1106  1144
                                        1183  1222  1261  1300  1339  1378  1416
                                        1527  1558  1589  1620  1651  1682  1713
                                        1744  1775  1819  1858  1897  1920  1994
                                        2025  2056  2087  2118  2149  2183
 ShowPrecBit                       Abs       0 #00000000 -   386
 ShowPrecFl                        Abs      53 #00000035 -   255   385   386
 ShowPrecNib                       Abs      13 #0000000D -   385
 SmallFontChooseBit                Abs       1 #00000001 -   887
 SmallFontChooseFl                 Abs      90 #0000005A -   885   886   887
 SmallFontChooseNib                Abs      22 #00000016 -   886
 SmallFontEQWEditBit               Abs       1 #00000001 -   863
 SmallFontEQWEditFl                Abs      82 #00000052 -   861   862   863
 SmallFontEQWEditNib               Abs      20 #00000014 -   862
 SmallFontEQWGrobBit               Abs       0 #00000000 -   860
 SmallFontEQWGrobFl                Abs      81 #00000051 -   858   859   860
 SmallFontEQWGrobNib               Abs      20 #00000014 -   859
 SmallFontEQWStackBit              Abs       3 #00000003 -   857
 SmallFontEQWStackFl               Abs      80 #00000050 -   855   856   857
 SmallFontEQWStackNib              Abs      19 #00000013 -   856
 SolutionsBit                      Abs       0 #00000000 -   389
 SolutionsFl                       Abs       1 #00000001 -   209   388   389
 SolutionsNib                      Abs       0 #00000000 -   388
 SystemRPLStackBit                 Abs       0 #00000000 -   872
 SystemRPLStackFl                  Abs      85 #00000055 -   870   871   872
 SystemRPLStackNib                 Abs      21 #00000015 -   871
 TriAlphaBit                       Abs       3 #00000003 -   392
 TriAlphaFl                        Abs      60 #0000003C -   262   391   392
 TriAlphaNib                       Abs      14 #0000000E -   391
 TriUserBit                        Abs       0 #00000000 -   395
 TriUserFl                         Abs      61 #0000003D -   263   394   395
 TriUserNib                        Abs      15 #0000000F -   394
 UnderfActBit                      Abs       3 #00000003 -   398
 UnderfActFl                       Abs      20 #00000014 -   224   397   398
 UnderfActNib                      Abs       4 #00000004 -   397
 UnderfNegBit                      Abs       2 #00000002 -   401
 UnderfNegFl                       Abs      23 #00000017 -   227   400   401
 UnderfNegNib                      Abs       5 #00000005 -   400
 UnderfPosBit                      Abs       3 #00000003 -   404
 UnderfPosFl                       Abs      24 #00000018 -   228   403   404
 UnderfPosNib                      Abs       5 #00000005 -   403
 UserKeysBit                       Abs       1 #00000001 -   407
 UserKeysFl                        Abs      62 #0000003E -   264   406   407
 UserKeysNib                       Abs      15 #0000000F -   406
 VerboseBit                        Abs       1 #00000001 -   344
 VerboseFl                         Abs      58 #0000003A -   260   343   344
 VerboseNib                        Abs      14 #0000000E -   343
 VerticalListBit                   Abs       0 #00000000 -   908
 VerticalListFl                    Abs      97 #00000061 -   906   907   908
 VerticalListNib                   Abs      24 #00000018 -   907
 VerticalVectorBit                 Abs       1 #00000001 -   911
 VerticalVectorFl                  Abs      98 #00000062 -   909   910   911
 VerticalVectorNib                 Abs      24 #00000018 -   910
 ZERO                              Ext                   -  1526  1557  1588
                                        1619  1650  1681  1712  1743  1774  1993
                                        2024  2055  2086  2117  2148
 ^IfMain                           Ext                   -  1410  1918  2179
 hasALIAS                          Abs       2 #00000002 -   420
 hasCOLCT                          Abs       2 #00000002 -   426
 hasDER                            Abs       8 #00000008 -   424
 hasEXPND                          Abs       1 #00000001 -   427
 hasFORM                           Abs       8 #00000008 -   430
 hasHELP                           Abs       4 #00000004 -   418
 hasINTG                           Abs       4 #00000004 -   431
 hasINV                            Abs       4 #00000004 -   425
 hasPDATA                          Abs       1 #00000001 -   421
 hasPROMPTM                        Abs       4 #00000004 -   419
 hasVUNS                           Abs       1 #00000001 -   433
 hasWHERE                          Abs       2 #00000002 -   432
 nonALG                            Abs       8 #00000008 -   417
 pdCM                              Abs       6 #00000006 -   442
 pdEQ                              Abs       7 #00000007 -   443
 pdEX                              Abs       0 #00000000 -   436
 pdLP                              Abs       4 #00000004 -   440
 pdOP                              Abs       1 #00000001 -   437
 pdOS0                             Abs       8 #00000008 -   444
 pdOS1                             Abs       9 #00000009 -   445
 pdOS2                             Abs      10 #0000000A -   446
 pdOS3                             Abs      11 #0000000B -   447
 pdOS4                             Abs      12 #0000000C -   448
 pdOS5                             Abs      13 #0000000D -   449
 pdOS6                             Abs      14 #0000000E -   450
 pdOS7                             Abs      15 #0000000F -   451
 pdQE                              Abs       2 #00000002 -   438
 pdQN                              Abs       3 #00000003 -   439
 pdRP                              Abs       5 #00000005 -   441
 ~MenuBase                         Ext                   -  1911  2172
Saturn Assembler                                       Tue May 22 21:55:38 2018
V3.0.9 (04/15/2007)   Statistics                         KMmenuMDF.a    Page    3

Input Parameters

  Source file name is KMmenuMDF.a

  Listing file name is KMmenuMDF.l

  Object file name is KMmenuMDF.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
