Saturn Assembler                                       Tue May 22 21:55:38 2018
V3.0.9 (04/15/2007)                                      MatrixViewMDF. Page    1

    1               * File  MatrixViewMDF.s 1
    2               * RPL
    3               * File  MatrixViewMDF.s 2
    4               * C:\Users\Neo\Desktop\HP\Vibrações 1\MatrixView.s, part of the Vibrations.hpp project, created by <> on 24/12/2017
    5               * File  MatrixViewMDF.s 3
    6
    7               * File  MatrixViewMDF.s 4
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
   21               *|| Resuming file MatrixViewMDF.s at line 4
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
  108               *|| Resuming file MatrixViewMDF.s at line 5
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
  930               *|| Resuming file MatrixViewMDF.s at line 6
  931
  932 00000         =MTV
  933               * File  MatrixViewMDF.s 9
  934 00000 00000           CON(5)  =DOCOL
  935               * File  MatrixViewMDF.s 10
  936               * Labels
  937               * File  MatrixViewMDF.s 11
  938 00005 00000           CON(5)  =DOCSTR
  939 0000A 71000           CON(5)  23
  940 0000F 8502655         NIBASC  \X Vectors\
            63647F6
            2737
  941 00021 00000           CON(5)  =DOBINT
  942 00026 82000           CON(5)  40
  943 0002B 00000           CON(5)  =DOBINT
  944 00030 80000           CON(5)  8
  945               * File  MatrixViewMDF.s 12
  946 00035 00000           CON(5)  =DOIDNT
  947 0003A 40              CON(2)  4
  948 0003C 8513371         NIBASC  \X1s1\
            3
  949 00044 00000           CON(5)  =DOBINT
  950 00049 00000           CON(5)  0
  951 0004E 00000           CON(5)  =DOBINT
  952 00053 E0000           CON(5)  14
  953               * File  MatrixViewMDF.s 13
  954 00058 00000           CON(5)  =DOIDNT
  955 0005D 40              CON(2)  4
  956 0005F 8513372         NIBASC  \X1s2\
            3
  957 00067 00000           CON(5)  =DOBINT
  958 0006C 00000           CON(5)  0
  959 00071 00000           CON(5)  =DOBINT
  960 00076 41000           CON(5)  20
  961               * File  MatrixViewMDF.s 14
  962 0007B 00000           CON(5)  =DOIDNT
  963 00080 40              CON(2)  4
  964 00082 8513373         NIBASC  \X1s3\
            3
  965 0008A 00000           CON(5)  =DOBINT
  966 0008F 00000           CON(5)  0
  967 00094 00000           CON(5)  =DOBINT
  968 00099 A1000           CON(5)  26
  969               * File  MatrixViewMDF.s 15
  970
  971               * File  MatrixViewMDF.s 16
  972 0009E 00000           CON(5)  =DOIDNT
  973 000A3 40              CON(2)  4
  974 000A5 8523371         NIBASC  \X2s1\
            3
  975 000AD 00000           CON(5)  =DOBINT
  976 000B2 D2000           CON(5)  45
  977 000B7 00000           CON(5)  =DOBINT
  978 000BC E0000           CON(5)  14
  979               * File  MatrixViewMDF.s 17
  980 000C1 00000           CON(5)  =DOIDNT
  981 000C6 40              CON(2)  4
  982 000C8 8523372         NIBASC  \X2s2\
            3
  983 000D0 00000           CON(5)  =DOBINT
  984 000D5 D2000           CON(5)  45
  985 000DA 00000           CON(5)  =DOBINT
  986 000DF 41000           CON(5)  20
  987               * File  MatrixViewMDF.s 18
  988 000E4 00000           CON(5)  =DOIDNT
  989 000E9 40              CON(2)  4
  990 000EB 8523373         NIBASC  \X2s3\
            3
  991 000F3 00000           CON(5)  =DOBINT
  992 000F8 D2000           CON(5)  45
  993 000FD 00000           CON(5)  =DOBINT
  994 00102 A1000           CON(5)  26
  995               * File  MatrixViewMDF.s 19
  996
  997               * File  MatrixViewMDF.s 20
  998 00107 00000           CON(5)  =DOIDNT
  999 0010C 40              CON(2)  4
 1000 0010E 8533371         NIBASC  \X3s1\
            3
 1001 00116 00000           CON(5)  =DOBINT
 1002 0011B B5000           CON(5)  91
 1003 00120 00000           CON(5)  =DOBINT
 1004 00125 E0000           CON(5)  14
 1005               * File  MatrixViewMDF.s 21
 1006 0012A 00000           CON(5)  =DOIDNT
 1007 0012F 40              CON(2)  4
 1008 00131 8533372         NIBASC  \X3s2\
            3
 1009 00139 00000           CON(5)  =DOBINT
 1010 0013E B5000           CON(5)  91
 1011 00143 00000           CON(5)  =DOBINT
 1012 00148 41000           CON(5)  20
 1013               * File  MatrixViewMDF.s 22
 1014 0014D 00000           CON(5)  =DOIDNT
 1015 00152 40              CON(2)  4
 1016 00154 8533373         NIBASC  \X3s3\
            3
 1017 0015C 00000           CON(5)  =DOBINT
 1018 00161 B5000           CON(5)  91
 1019 00166 00000           CON(5)  =DOBINT
 1020 0016B A1000           CON(5)  26
 1021               * File  MatrixViewMDF.s 23
 1022
 1023               * File  MatrixViewMDF.s 24
 1024 00170 00000           CON(5)  =DOCSTR
 1025 00175 D2000           CON(5)  45
 1026 0017A E4F627D         NIBASC  \Normalized X Vectors\
            616C696
            A7564602850265563647F62737

 1027 001A2 00000           CON(5)  =DOBINT
 1028 001A7 E1000           CON(5)  30
 1029 001AC 00000           CON(5)  =DOBINT
 1030 001B1 02000           CON(5)  32
 1031               * File  MatrixViewMDF.s 25
 1032 001B6 00000           CON(5)  =DOIDNT
 1033 001BB 50              CON(2)  5
 1034 001BD E685133         NIBASC  \nX1s1\
            713
 1035 001C7 00000           CON(5)  =DOBINT
 1036 001CC 00000           CON(5)  0
 1037 001D1 00000           CON(5)  =DOBINT
 1038 001D6 62000           CON(5)  38
 1039               * File  MatrixViewMDF.s 26
 1040 001DB 00000           CON(5)  =DOIDNT
 1041 001E0 50              CON(2)  5
 1042 001E2 E685133         NIBASC  \nX1s2\
            723
 1043 001EC 00000           CON(5)  =DOBINT
 1044 001F1 00000           CON(5)  0
 1045 001F6 00000           CON(5)  =DOBINT
 1046 001FB C2000           CON(5)  44
 1047               * File  MatrixViewMDF.s 27
 1048 00200 00000           CON(5)  =DOIDNT
 1049 00205 50              CON(2)  5
 1050 00207 E685133         NIBASC  \nX1s3\
            733
 1051 00211 00000           CON(5)  =DOBINT
 1052 00216 00000           CON(5)  0
 1053 0021B 00000           CON(5)  =DOBINT
 1054 00220 23000           CON(5)  50
 1055               * File  MatrixViewMDF.s 28
 1056
 1057               * File  MatrixViewMDF.s 29
 1058 00225 00000           CON(5)  =DOIDNT
 1059 0022A 50              CON(2)  5
 1060 0022C E685233         NIBASC  \nX2s1\
            713
 1061 00236 00000           CON(5)  =DOBINT
 1062 0023B D2000           CON(5)  45
 1063 00240 00000           CON(5)  =DOBINT
 1064 00245 62000           CON(5)  38
 1065               * File  MatrixViewMDF.s 30
 1066 0024A 00000           CON(5)  =DOIDNT
 1067 0024F 50              CON(2)  5
 1068 00251 E685233         NIBASC  \nX2s2\
            723
 1069 0025B 00000           CON(5)  =DOBINT
 1070 00260 D2000           CON(5)  45
 1071 00265 00000           CON(5)  =DOBINT
 1072 0026A C2000           CON(5)  44
 1073               * File  MatrixViewMDF.s 31
 1074 0026F 00000           CON(5)  =DOIDNT
 1075 00274 50              CON(2)  5
 1076 00276 E685233         NIBASC  \nX2s3\
            733
 1077 00280 00000           CON(5)  =DOBINT
 1078 00285 D2000           CON(5)  45
 1079 0028A 00000           CON(5)  =DOBINT
 1080 0028F 23000           CON(5)  50
 1081               * File  MatrixViewMDF.s 32
 1082
 1083               * File  MatrixViewMDF.s 33
 1084 00294 00000           CON(5)  =DOIDNT
 1085 00299 50              CON(2)  5
 1086 0029B E685333         NIBASC  \nX3s1\
            713
 1087 002A5 00000           CON(5)  =DOBINT
 1088 002AA B5000           CON(5)  91
 1089 002AF 00000           CON(5)  =DOBINT
 1090 002B4 62000           CON(5)  38
 1091               * File  MatrixViewMDF.s 34
 1092 002B9 00000           CON(5)  =DOIDNT
 1093 002BE 50              CON(2)  5
 1094 002C0 E685333         NIBASC  \nX3s2\
            723
 1095 002CA 00000           CON(5)  =DOBINT
 1096 002CF B5000           CON(5)  91
 1097 002D4 00000           CON(5)  =DOBINT
 1098 002D9 C2000           CON(5)  44
 1099               * File  MatrixViewMDF.s 35
 1100 002DE 00000           CON(5)  =DOIDNT
 1101 002E3 50              CON(2)  5
 1102 002E5 E685333         NIBASC  \nX3s3\
            733
 1103 002EF 00000           CON(5)  =DOBINT
 1104 002F4 B5000           CON(5)  91
 1105 002F9 00000           CON(5)  =DOBINT
 1106 002FE 23000           CON(5)  50
 1107               * File  MatrixViewMDF.s 36
 1108
 1109               * File  MatrixViewMDF.s 37
 1110 00303 00000           CON(5)  =DOBINT
 1111 00308 41000           CON(5)  20
 1112 0030D 00000           CON(5)  =DOBINT
 1113 00312 00000           CON(5)  0
 1114               * File  MatrixViewMDF.s 38
 1115 00317 00000           CON(5)  ='
 1116               * File  MatrixViewMDF.s 39
 1117 0031C 00000           CON(5)  =DOCOL
 1118               * File  MatrixViewMDF.s 40
 1119               * Handle a new menu
 1120               * File  MatrixViewMDF.s 41
 1121 00321 00000           CON(5)  =ELEVEN
 1122 00326 00000           CON(5)  =OVER#=case
 1123               * File  MatrixViewMDF.s 42
 1124 0032B 00000           CON(5)  =DOCOL
 1125               * File  MatrixViewMDF.s 43
 1126 00330 00000           CON(5)  =DROP
 1127               * File  MatrixViewMDF.s 44
 1128 00335 00000           CON(5)  =DOLIST
 1129 0033A 00000           CON(5)  =DOLIST
 1130 0033F 00000           CON(5)  =DOCSTR
 1131 00344 D0000           CON(5)  13
 1132 00349 5444944         NIBASC  \EDIT\
            5
 1133 00351 00000           CON(5)  =DOFLASHP
 1134 00356 0000000         CON(7)  =^IfKeyEdit
 1135 0035D 00000           CON(5)  =SEMI
 1136               * File  MatrixViewMDF.s 45
 1137 00362 00000           CON(5)  =NullMenuKey
 1138               * File  MatrixViewMDF.s 46
 1139 00367 00000           CON(5)  =NullMenuKey
 1140               * File  MatrixViewMDF.s 47
 1141 0036C 00000           CON(5)  =NullMenuKey
 1142               * File  MatrixViewMDF.s 48
 1143 00371 00000           CON(5)  =DOLIST
 1144 00376 00000           CON(5)  =DOCSTR
 1145 0037B D0000           CON(5)  13
 1146 00380 241636B         NIBASC  \Back\
            6
 1147 00388 00000           CON(5)  =DOFLASHP
 1148 0038D 0000000         CON(7)  =^IfONKeyPress
 1149 00394 00000           CON(5)  =SEMI
 1150               * File  MatrixViewMDF.s 49
 1151 00399 00000           CON(5)  =DOLIST
 1152 0039E 00000           CON(5)  =DOCSTR
 1153 003A3 D0000           CON(5)  13
 1154 003A8 E454854         NIBASC  \NEXT\
            5
 1155 003B0 00000           CON(5)  =DOFLASHP
 1156 003B5 0000000         CON(7)  =^IfEnterKeyPress
 1157 003BC 00000           CON(5)  =SEMI
 1158 003C1 00000           CON(5)  =SEMI
 1159               * File  MatrixViewMDF.s 50
 1160 003C6 00000           CON(5)  =TRUE
 1161               * File  MatrixViewMDF.s 51
 1162 003CB 00000           CON(5)  =SEMI
 1163               * File  MatrixViewMDF.s 52
 1164               * Handle the GO! Just exit
 1165               * File  MatrixViewMDF.s 53
 1166 003D0 00000           CON(5)  =SIXTEEN
 1167 003D5 00000           CON(5)  =OVER#=case
 1168               * File  MatrixViewMDF.s 54
 1169 003DA 00000           CON(5)  =DOCOL
 1170               * File  MatrixViewMDF.s 55
 1171 003DF 00000           CON(5)  =TRUE
 1172               * File  MatrixViewMDF.s 56
 1173 003E4 00000           CON(5)  =TRUE
 1174               * File  MatrixViewMDF.s 57
 1175 003E9 00000           CON(5)  =SEMI
 1176               * File  MatrixViewMDF.s 58
 1177
 1178               * File  MatrixViewMDF.s 59
 1179 003EE 00000           CON(5)  =FOURTEEN
 1180 003F3 00000           CON(5)  =OVER#=case
 1181               * File  MatrixViewMDF.s 60
 1182 003F8 00000           CON(5)  =DOCOL
 1183               * File  MatrixViewMDF.s 61
 1184 003FD 00000           CON(5)  =TRUE
 1185               * File  MatrixViewMDF.s 62
 1186 00402 00000           CON(5)  =TRUE
 1187               * File  MatrixViewMDF.s 63
 1188 00407 00000           CON(5)  =SEMI
 1189               * File  MatrixViewMDF.s 64
 1190 0040C 00000           CON(5)  =DROPFALSE
 1191               * File  MatrixViewMDF.s 65
 1192 00411 00000           CON(5)  =SEMI
 1193               * File  MatrixViewMDF.s 66
 1194 00416 00000           CON(5)  =DOCSTR
 1195 0041B 51000           CON(5)  21
 1196 00420 8502655         NIBASC  \X Vector\
            63647F6
            27
 1197               * File  MatrixViewMDF.s 67
 1198 00430 00000           CON(5)  =DOFLASHP
 1199 00435 0000000         CON(7)  =^IfMain
 1200               * File  MatrixViewMDF.s 68
 1201 0043C 00000           CON(5)  =DROP
 1202               * File  MatrixViewMDF.s 69
 1203 00441 00000           CON(5)  =DROP
 1204               * File  MatrixViewMDF.s 70
 1205 00446 00000           CON(5)  =SEMI
Saturn Assembler                                       Tue May 22 21:55:38 2018
V3.0.9 (04/15/2007)   Symbol Table                       MatrixViewMDF. Page    2

 '                                 Ext                   -  1115
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
 DOBINT                            Ext                   -   941   943   949
                                         951   957   959   965   967   975   977
                                         983   985   991   993  1001  1003  1009
                                        1011  1017  1019  1027  1029  1035  1037
                                        1043  1045  1051  1053  1061  1063  1069
                                        1071  1077  1079  1087  1089  1095  1097
                                        1103  1105  1110  1112
 DOCOL                             Ext                   -   934  1117  1124
                                        1169  1182
 DOCSTR                            Ext                   -   938  1024  1130
                                        1144  1152  1194
 DOFLASHP                          Ext                   -  1133  1147  1155
                                        1198
 DOIDNT                            Ext                   -   946   954   962
                                         972   980   988   998  1006  1014  1032
                                        1040  1048  1058  1066  1074  1084  1092
                                        1100
 DOLIST                            Ext                   -  1128  1129  1143
                                        1151
 DROP                              Ext                   -  1126  1201  1203
 DROPFALSE                         Ext                   -  1190
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
 ELEVEN                            Ext                   -  1121
 ErableHeaderBit                   Abs       0 #00000000 -   894
 ErableHeaderFl                    Abs      93 #0000005D -   892   893   894
 ErableHeaderNib                   Abs      23 #00000017 -   893
 ErrorBeepBit                      Abs       3 #00000003 -   312
 ErrorBeepFl                       Abs      56 #00000038 -   256   311   312
 ErrorBeepNib                      Abs      13 #0000000D -   311
 ExactModeBit                      Abs       0 #00000000 -   919
 ExactModeFl                       Abs     105 #00000069 -   917   918   919
 ExactModeNib                      Abs      26 #0000001A -   918
 FOURTEEN                          Ext                   -  1179
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
=MTV                               Rel       0 #00000000 -   932
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
 NullMenuKey                       Ext                   -  1137  1139  1141
 NumDigsBCt                        Abs       4 #00000004 -   248
 NumDigsBit1                       Abs       0 #00000000 -   357
 NumDigsFl1                        Abs      45 #0000002D -   247   356   357
 NumDigsNib                        Abs      11 #0000000B -   356
 NumDispBCt                        Abs       2 #00000002 -   250
 NumDispBit1                       Abs       0 #00000000 -   360
 NumDispFl1                        Abs      49 #00000031 -   249   359   360
 NumDispNib                        Abs      12 #0000000C -   359
 OVER#=case                        Ext                   -  1122  1167  1180
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
 SEMI                              Ext                   -  1135  1149  1157
                                        1158  1162  1175  1188  1192  1205
 SIXTEEN                           Ext                   -  1166
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
 TRUE                              Ext                   -  1160  1171  1173
                                        1184  1186
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
 ^IfEnterKeyPress                  Ext                   -  1156
 ^IfKeyEdit                        Ext                   -  1134
 ^IfMain                           Ext                   -  1199
 ^IfONKeyPress                     Ext                   -  1148
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
V3.0.9 (04/15/2007)   Statistics                         MatrixViewMDF. Page    3

Input Parameters

  Source file name is MatrixViewMDF.a

  Listing file name is MatrixViewMDF.l

  Object file name is MatrixViewMDF.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
