Saturn Assembler                                       Tue May 22 21:55:38 2018
V3.0.9 (04/15/2007)                                      MainSVF.a      Page    1

    1               * File  MainSVF.s       1
    2               * RPL
    3               * File  MainSVF.s       2
    4               * C:\Users\Neo\Desktop\HP\Vibrações\single dregree of freedom\MainSVF.s, part of the VibrationsSDF.hpp project, created by <> on 31/12/2017
    5               * File  MainSVF.s       3
    6
    7               * File  MainSVF.s       4
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
   21               *|| Resuming file MainSVF.s at line 4
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
  108               *|| Resuming file MainSVF.s at line 5
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
  930               *|| Resuming file MainSVF.s at line 6
  931
  932 00000 000000          CON(6)  =~xVibeS
  933 00006         =xVibeS
  934               * File  MainSVF.s       9
  935 00006 00000           CON(5)  =DOCOL
  936               * File  MainSVF.s       10
  937 0000B 00000           CON(5)  ='
  938 00010 00000           CON(5)  =DOIDNT
  939 00015 30              CON(2)  3
  940 00017 354464          NIBASC  \SDF\
  941 0001D 00000           CON(5)  =PURGE
  942               * File  MainSVF.s       11
  943 00022 00000           CON(5)  =DOREAL
  944 00027 000             NIBHEX  000
  945 0002A 0000000         NIBHEX  000000000001
            00001
  946 00036 0               NIBHEX  0
  947 00037 00000           CON(5)  =DOIDNT
  948 0003C 30              CON(2)  3
  949 0003E 354464          NIBASC  \SDF\
  950 00044 00000           CON(5)  =CREATE
  951               * File  MainSVF.s       12
  952 00049 00000           CON(5)  =DOBINT
  953 0004E 30000           CON(5)  3
  954 00053 00000           CON(5)  =DOENG
  955               * File  MainSVF.s       13
  956 00058 00000           CON(5)  =%0
  957 0005D 00000           CON(5)  =DOLIST
  958 00062 00000           CON(5)  =DOLAM
  959 00067 01              CON(2)  16
  960 00069 66F6572         NIBASC  \fourierAvaliable\
            7965627
            146716C6961626C656

  961 00089 00000           CON(5)  =SEMI
  962 0008E 00000           CON(5)  =BIND
  963               * File  MainSVF.s       14
  964 00093 00000           CON(5)  =DEPTH
  965 00098 00000           CON(5)  =UNCOERCE
  966 0009D 00000           CON(5)  =%4
  967 000A2 00000           CON(5)  =%MIN
  968 000A7 00000           CON(5)  =%4
  969 000AC 00000           CON(5)  =EQUAL
  970               * File  MainSVF.s       15
  971 000B1 00000           CON(5)  =IT
  972 000B6 00000           CON(5)  =DOCOL
  973               * File  MainSVF.s       16
  974 000BB 00000           CON(5)  =DOLIST
  975 000C0 00000           CON(5)  =DOLAM
  976 000C5 10              CON(2)  1
  977 000C7 45              NIBASC  \T\
  978 000C9 00000           CON(5)  =DOLAM
  979 000CE 20              CON(2)  2
  980 000D0 1603            NIBASC  \a0\
  981 000D4 00000           CON(5)  =DOLAM
  982 000D9 20              CON(2)  2
  983 000DB 16E6            NIBASC  \an\
  984 000DF 00000           CON(5)  =DOLAM
  985 000E4 20              CON(2)  2
  986 000E6 26E6            NIBASC  \bn\
  987 000EA 00000           CON(5)  =SEMI
  988 000EF 00000           CON(5)  =BIND
  989 000F4 00000           CON(5)  =%1
  990 000F9 00000           CON(5)  ='
  991 000FE 00000           CON(5)  =DOLAM
  992 00103 01              CON(2)  16
  993 00105 66F6572         NIBASC  \fourierAvaliable\
            7965627
            146716C6961626C656

  994 00125 00000           CON(5)  =STO
  995               * File  MainSVF.s       17
  996 0012A 00000           CON(5)  =DOLAM
  997 0012F 20              CON(2)  2
  998 00131 26E6            NIBASC  \bn\
  999 00135 00000           CON(5)  =TYPEZINT?
 1000 0013A 00000           CON(5)  =IT
 1001 0013F 00000           CON(5)  =DOCOL
 1002 00144 00000           CON(5)  =DOLAM
 1003 00149 20              CON(2)  2
 1004 0014B 26E6            NIBASC  \bn\
 1005 0014F 00000           CON(5)  =DOFLASHP
 1006 00154 0000000         CON(7)  =^Z>R
 1007 0015B 00000           CON(5)  ='
 1008 00160 00000           CON(5)  =DOLAM
 1009 00165 20              CON(2)  2
 1010 00167 26E6            NIBASC  \bn\
 1011 0016B 00000           CON(5)  =STO
 1012 00170 00000           CON(5)  =SEMI
 1013               * File  MainSVF.s       18
 1014 00175 00000           CON(5)  =DOLAM
 1015 0017A 20              CON(2)  2
 1016 0017C 16E6            NIBASC  \an\
 1017 00180 00000           CON(5)  =TYPEZINT?
 1018 00185 00000           CON(5)  =IT
 1019 0018A 00000           CON(5)  =DOCOL
 1020 0018F 00000           CON(5)  =DOLAM
 1021 00194 20              CON(2)  2
 1022 00196 16E6            NIBASC  \an\
 1023 0019A 00000           CON(5)  =DOFLASHP
 1024 0019F 0000000         CON(7)  =^Z>R
 1025 001A6 00000           CON(5)  ='
 1026 001AB 00000           CON(5)  =DOLAM
 1027 001B0 20              CON(2)  2
 1028 001B2 16E6            NIBASC  \an\
 1029 001B6 00000           CON(5)  =STO
 1030 001BB 00000           CON(5)  =SEMI
 1031               * File  MainSVF.s       19
 1032 001C0 00000           CON(5)  =DOLAM
 1033 001C5 20              CON(2)  2
 1034 001C7 1603            NIBASC  \a0\
 1035 001CB 00000           CON(5)  =TYPEZINT?
 1036 001D0 00000           CON(5)  =IT
 1037 001D5 00000           CON(5)  =DOCOL
 1038 001DA 00000           CON(5)  =DOLAM
 1039 001DF 20              CON(2)  2
 1040 001E1 1603            NIBASC  \a0\
 1041 001E5 00000           CON(5)  =DOFLASHP
 1042 001EA 0000000         CON(7)  =^Z>R
 1043 001F1 00000           CON(5)  ='
 1044 001F6 00000           CON(5)  =DOLAM
 1045 001FB 20              CON(2)  2
 1046 001FD 1603            NIBASC  \a0\
 1047 00201 00000           CON(5)  =STO
 1048 00206 00000           CON(5)  =SEMI
 1049               * File  MainSVF.s       20
 1050 0020B 00000           CON(5)  =DOLAM
 1051 00210 10              CON(2)  1
 1052 00212 45              NIBASC  \T\
 1053 00214 00000           CON(5)  =TYPEZINT?
 1054 00219 00000           CON(5)  =IT
 1055 0021E 00000           CON(5)  =DOCOL
 1056 00223 00000           CON(5)  =DOLAM
 1057 00228 10              CON(2)  1
 1058 0022A 45              NIBASC  \T\
 1059 0022C 00000           CON(5)  =DOFLASHP
 1060 00231 0000000         CON(7)  =^Z>R
 1061 00238 00000           CON(5)  ='
 1062 0023D 00000           CON(5)  =DOLAM
 1063 00242 10              CON(2)  1
 1064 00244 45              NIBASC  \T\
 1065 00246 00000           CON(5)  =STO
 1066 0024B 00000           CON(5)  =SEMI
 1067               * File  MainSVF.s       21
 1068 00250 00000           CON(5)  =SEMI
 1069               * File  MainSVF.s       22
 1070
 1071               * File  MainSVF.s       23
 1072 00255 00000           CON(5)  =%0
 1073 0025A 00000           CON(5)  =%0
 1074 0025F 00000           CON(5)  =%0
 1075 00264 00000           CON(5)  =%0
 1076 00269 00000           CON(5)  =%0
 1077 0026E 00000           CON(5)  =%0
 1078 00273 00000           CON(5)  =%0
 1079 00278 00000           CON(5)  =DOLIST
 1080 0027D 00000           CON(5)  =DOLAM
 1081 00282 30              CON(2)  3
 1082 00284 669603          NIBASC  \fi0\
 1083 0028A 00000           CON(5)  =DOLAM
 1084 0028F 10              CON(2)  1
 1085 00291 85              NIBASC  \X\
 1086 00293 00000           CON(5)  =DOLAM
 1087 00298 40              CON(2)  4
 1088 0029A 4597075         NIBASC  \Type\
            6
 1089 002A2 00000           CON(5)  =DOLAM
 1090 002A7 20              CON(2)  2
 1091 002A9 8707            NIBASC  \xp\
 1092 002AD 00000           CON(5)  =DOLAM
 1093 002B2 20              CON(2)  2
 1094 002B4 8747            NIBASC  \xt\
 1095 002B8 00000           CON(5)  =DOLAM
 1096 002BD 10              CON(2)  1
 1097 002BF 27              NIBASC  \r\
 1098 002C1 00000           CON(5)  =DOLAM
 1099 002C6 30              CON(2)  3
 1100 002C8 4656C6          NIBASC  \del\
 1101 002CE 00000           CON(5)  =SEMI
 1102 002D3 00000           CON(5)  =BIND
 1103               * File  MainSVF.s       24
 1104 002D8 00000           CON(5)  =%0
 1105 002DD 00000           CON(5)  =%0
 1106 002E2 00000           CON(5)  =%0
 1107 002E7 00000           CON(5)  =%0
 1108 002EC 00000           CON(5)  =%0
 1109 002F1 00000           CON(5)  =%0
 1110 002F6 00000           CON(5)  =%0
 1111 002FB 00000           CON(5)  =%0
 1112 00300 00000           CON(5)  =DOLIST
 1113 00305 00000           CON(5)  =DOLAM
 1114 0030A 20              CON(2)  2
 1115 0030C 6403            NIBASC  \F0\
 1116 00310 00000           CON(5)  =DOLAM
 1117 00315 20              CON(2)  2
 1118 00317 7703            NIBASC  \w0\
 1119 0031B 00000           CON(5)  =DOLAM
 1120 00320 30              CON(2)  3
 1121 00322 073796          NIBASC  \psi\
 1122 00328 00000           CON(5)  =DOLAM
 1123 0032D 10              CON(2)  1
 1124 0032F E6              NIBASC  \n\
 1125 00331 00000           CON(5)  =DOLAM
 1126 00336 30              CON(2)  3
 1127 00338 6696E6          NIBASC  \fin\
 1128 0033E 00000           CON(5)  =DOLAM
 1129 00343 20              CON(2)  2
 1130 00345 1403            NIBASC  \A0\
 1131 00349 00000           CON(5)  =DOLAM
 1132 0034E 20              CON(2)  2
 1133 00350 14E6            NIBASC  \An\
 1134 00354 00000           CON(5)  =DOLAM
 1135 00359 20              CON(2)  2
 1136 0035B 24E6            NIBASC  \Bn\
 1137 0035F 00000           CON(5)  =SEMI
 1138 00364 00000           CON(5)  =BIND
 1139               * File  MainSVF.s       25
 1140 00369 00000           CON(5)  =DOCSTR
 1141 0036E 90000           CON(5)  9
 1142 00373 D2D2            NIBASC  \--\
 1143 00377 00000           CON(5)  =%0
 1144 0037C 00000           CON(5)  =%0
 1145 00381 00000           CON(5)  =%0
 1146 00386 00000           CON(5)  =%0
 1147 0038B 00000           CON(5)  =%0
 1148 00390 00000           CON(5)  =%0
 1149 00395 00000           CON(5)  =DOLIST
 1150 0039A 00000           CON(5)  =DOLAM
 1151 0039F 20              CON(2)  2
 1152 003A1 7746            NIBASC  \wd\
 1153 003A5 00000           CON(5)  =DOLAM
 1154 003AA 20              CON(2)  2
 1155 003AC 8503            NIBASC  \X0\
 1156 003B0 00000           CON(5)  =DOLAM
 1157 003B5 20              CON(2)  2
 1158 003B7 3413            NIBASC  \C1\
 1159 003BB 00000           CON(5)  =DOLAM
 1160 003C0 20              CON(2)  2
 1161 003C2 3423            NIBASC  \C2\
 1162 003C6 00000           CON(5)  =DOLAM
 1163 003CB 30              CON(2)  3
 1164 003CD 669636          NIBASC  \fic\
 1165 003D3 00000           CON(5)  =DOLAM
 1166 003D8 20              CON(2)  2
 1167 003DA 8786            NIBASC  \xh\
 1168 003DE 00000           CON(5)  =DOLAM
 1169 003E3 30              CON(2)  3
 1170 003E5 870703          NIBASC  \xp0\
 1171 003EB 00000           CON(5)  =SEMI
 1172 003F0 00000           CON(5)  =BIND
 1173               * File  MainSVF.s       26
 1174
 1175               * File  MainSVF.s       27
 1176 003F5 00000           CON(5)  =DOROMP
 1177 003FA 000000          CON(6)  =~Welcome
 1178               * File  MainSVF.s       28
 1179
 1180               * File  MainSVF.s       29
 1181 00400 00000           CON(5)  =%0
 1182 00405 00000           CON(5)  =DOLIST
 1183 0040A 00000           CON(5)  =DOLAM
 1184 0040F 30              CON(2)  3
 1185 00411 870713          NIBASC  \xp1\
 1186 00417 00000           CON(5)  =SEMI
 1187 0041C 00000           CON(5)  =BIND
 1188               * File  MainSVF.s       30
 1189 00421 00000           CON(5)  =DOROMP
 1190 00426 000000          CON(6)  =~ForceMenu
 1191               * File  MainSVF.s       31
 1192 0042C 00000           CON(5)  =IT
 1193 00431 00000           CON(5)  =DOCOL
 1194               * File  MainSVF.s       32
 1195 00436 00000           CON(5)  =DOLIST
 1196 0043B 00000           CON(5)  =DOLAM
 1197 00440 50              CON(2)  5
 1198 00442 6447970         NIBASC  \Ftype\
            756
 1199 0044C 00000           CON(5)  =SEMI
 1200 00451 00000           CON(5)  =BIND
 1201               * File  MainSVF.s       33
 1202 00456 00000           CON(5)  =DROP
 1203               * 10h
 1204               * File  MainSVF.s       34
 1205 0045B 00000           CON(5)  =DOLAM
 1206 00460 50              CON(2)  5
 1207 00462 6447970         NIBASC  \Ftype\
            756
 1208 0046C 00000           CON(5)  =DOCSTR
 1209 00471 D0000           CON(5)  13
 1210 00476 E4F6E65         NIBASC  \None\
            6
 1211 0047E 00000           CON(5)  =EQUAL
 1212 00483 00000           CON(5)  =NOT
 1213               * File  MainSVF.s       35
 1214 00488 00000           CON(5)  =ITE
 1215 0048D 00000           CON(5)  =DOCOL
 1216               * File  MainSVF.s       36
 1217 00492 00000           CON(5)  =DOLAM
 1218 00497 50              CON(2)  5
 1219 00499 6447970         NIBASC  \Ftype\
            756
 1220 004A3 00000           CON(5)  =DOCSTR
 1221 004A8 52000           CON(5)  37
 1222 004AD 6403A23         NIBASC  \F0*COS(w0*t+psi)\
            4F43582
            7703A247B207379692

 1223 004CD 00000           CON(5)  =EQUAL
 1224               * File  MainSVF.s       37
 1225 004D2 00000           CON(5)  =DOLAM
 1226 004D7 50              CON(2)  5
 1227 004D9 6447970         NIBASC  \Ftype\
            756
 1228 004E3 00000           CON(5)  =DOCSTR
 1229 004E8 52000           CON(5)  37
 1230 004ED 6403A23         NIBASC  \F0*SIN(w0*t+psi)\
            594E482
            7703A247B207379692

 1231 0050D 00000           CON(5)  =EQUAL
 1232 00512 00000           CON(5)  =OR
 1233               * File  MainSVF.s       38
 1234 00517 00000           CON(5)  =ITE
 1235 0051C 00000           CON(5)  =DOCOL
 1236 00521 00000           CON(5)  =DOROMP
 1237 00526 000000          CON(6)  =~MenuFcos
 1238 0052C 00000           CON(5)  =SEMI
 1239               * File  MainSVF.s       39
 1240 00531 00000           CON(5)  =DOCOL
 1241               * File  MainSVF.s       40
 1242 00536 00000           CON(5)  =DOLAM
 1243 0053B 50              CON(2)  5
 1244 0053D 6447970         NIBASC  \Ftype\
            756
 1245 00547 00000           CON(5)  =DOCSTR
 1246 0054C F1000           CON(5)  31
 1247 00551 64F6572         NIBASC  \Fourier serie\
            7965627
            023756279656

 1248 0056B 00000           CON(5)  =EQUAL
 1249               * File  MainSVF.s       41
 1250 00570 00000           CON(5)  =ITE
 1251 00575 00000           CON(5)  =DOCOL
 1252 0057A 00000           CON(5)  =DOROMP
 1253 0057F 000000          CON(6)  =~MenuFourier
 1254 00585 00000           CON(5)  =SEMI
 1255               * File  MainSVF.s       42
 1256 0058A 00000           CON(5)  =DOCOL
 1257 0058F 00000           CON(5)  =DOROMP
 1258 00594 000000          CON(6)  =~MenuConvolution
 1259 0059A 00000           CON(5)  =SEMI
 1260               * File  MainSVF.s       43
 1261 0059F 00000           CON(5)  =SEMI
 1262               * File  MainSVF.s       44
 1263 005A4 00000           CON(5)  =SEMI
 1264               * File  MainSVF.s       45
 1265 005A9 00000           CON(5)  =DOCOL
 1266 005AE 00000           CON(5)  =TRUE
 1267 005B3 00000           CON(5)  =SEMI
 1268               * File  MainSVF.s       46
 1269 005B8 00000           CON(5)  =IT
 1270 005BD 00000           CON(5)  =DOCOL
 1271               * File  MainSVF.s       47
 1272 005C2 00000           CON(5)  =DOROMP
 1273 005C7 000000          CON(6)  =~SDFmenu
 1274               * File  MainSVF.s       48
 1275 005CD 00000           CON(5)  =DOROMP
 1276 005D2 000000          CON(6)  =~hSolver
 1277               * solves te homogeneus eq
 1278               * File  MainSVF.s       49
 1279 005D8 00000           CON(5)  =DOROMP
 1280 005DD 000000          CON(6)  =~T0
 1281               * File  MainSVF.s       50
 1282 005E3 00000           CON(5)  =DOROMP
 1283 005E8 000000          CON(6)  =~SDFResults
 1284               * File  MainSVF.s       51
 1285 005EE 00000           CON(5)  =IT
 1286 005F3 00000           CON(5)  =DOCOL
 1287               * File  MainSVF.s       52
 1288 005F8 00000           CON(5)  =DOROMP
 1289 005FD 000000          CON(6)  =~ForceType
 1290               * Analises force type
 1291               * File  MainSVF.s       53
 1292
 1293               * File  MainSVF.s       54
 1294 00603 00000           CON(5)  =SEMI
 1295               * File  MainSVF.s       55
 1296 00608 00000           CON(5)  =SEMI
 1297               * File  MainSVF.s       56
 1298
 1299               * File  MainSVF.s       57
 1300
 1301               * File  MainSVF.s       58
 1302
 1303               * File  MainSVF.s       59
 1304 0060D 00000           CON(5)  =DEPTH
 1305 00612 00000           CON(5)  =NDROP
 1306               * File  MainSVF.s       60
 1307 00617 00000           CON(5)  =DOLAM
 1308 0061C 50              CON(2)  5
 1309 0061E 6447970         NIBASC  \Ftype\
            756
 1310 00628 00000           CON(5)  =DOCSTR
 1311 0062D F1000           CON(5)  31
 1312 00632 64F6572         NIBASC  \Fourier serie\
            7965627
            023756279656

 1313 0064C 00000           CON(5)  =EQUAL
 1314               * File  MainSVF.s       61
 1315 00651 00000           CON(5)  =IT
 1316 00656 00000           CON(5)  =DOCOL
 1317               * File  MainSVF.s       62
 1318 0065B 00000           CON(5)  =DOLAM
 1319 00660 10              CON(2)  1
 1320 00662 45              NIBASC  \T\
 1321               * File  MainSVF.s       63
 1322 00664 00000           CON(5)  =DOLAM
 1323 00669 20              CON(2)  2
 1324 0066B 1603            NIBASC  \a0\
 1325               * File  MainSVF.s       64
 1326 0066F 00000           CON(5)  =DOLAM
 1327 00674 20              CON(2)  2
 1328 00676 16E6            NIBASC  \an\
 1329               * File  MainSVF.s       65
 1330 0067A 00000           CON(5)  =DOLAM
 1331 0067F 20              CON(2)  2
 1332 00681 26E6            NIBASC  \bn\
 1333               * File  MainSVF.s       66
 1334 00685 00000           CON(5)  =SEMI
 1335               * File  MainSVF.s       67
 1336 0068A 00000           CON(5)  =DOCSTR
 1337 0068F B1000           CON(5)  27
 1338 00694 0716274         NIBASC  \particular:\
            7963657
            C61627A3
 1339               * File  MainSVF.s       68
 1340 006AA 00000           CON(5)  =DOLAM
 1341 006AF 20              CON(2)  2
 1342 006B1 8707            NIBASC  \xp\
 1343               * File  MainSVF.s       69
 1344 006B5 00000           CON(5)  =DOCSTR
 1345 006BA 11000           CON(5)  17
 1346 006BF 7656271         NIBASC  \geral:\
            6C6A3
 1347               * File  MainSVF.s       70
 1348 006CB 00000           CON(5)  =DOLAM
 1349 006D0 20              CON(2)  2
 1350 006D2 8747            NIBASC  \xt\
 1351               * File  MainSVF.s       71
 1352 006D6 00000           CON(5)  =SEMI
 1353               * File  MainSVF.s       72
 1354 006DB 00000           CON(5)  ='
 1355 006E0 00000           CON(5)  =DOIDNT
 1356 006E5 30              CON(2)  3
 1357 006E7 354464          NIBASC  \SDF\
 1358 006ED 00000           CON(5)  =PURGE
 1359               * File  MainSVF.s       73
 1360 006F2 00000           CON(5)  =ABND
 1361               * File  MainSVF.s       74
 1362 006F7 00000           CON(5)  =DOFLASHP
 1363 006FC 0000000         CON(7)  =^EXACTON
 1364               * File  MainSVF.s       75
 1365
 1366               * File  MainSVF.s       76
 1367 00703 00000           CON(5)  =SEMI
 1368               * File  MainSVF.s       77
 1369
 1370               * File  MainSVF.s       78
 1371 00708         =hSolver
 1372               * File  MainSVF.s       79
 1373 00708 00000           CON(5)  =DOCOL
 1374               * File  MainSVF.s       80
 1375 0070D 00000           CON(5)  =IT
 1376 00712 00000           CON(5)  =DOCOL
 1377               * File  MainSVF.s       81
 1378 00717 00000           CON(5)  =DOLIST
 1379 0071C 00000           CON(5)  =DOLAM
 1380 00721 10              CON(2)  1
 1381 00723 D4              NIBASC  \M\
 1382 00725 00000           CON(5)  =DOLAM
 1383 0072A 10              CON(2)  1
 1384 0072C B4              NIBASC  \K\
 1385 0072E 00000           CON(5)  =DOLAM
 1386 00733 10              CON(2)  1
 1387 00735 34              NIBASC  \C\
 1388 00737 00000           CON(5)  =DOLAM
 1389 0073C 20              CON(2)  2
 1390 0073E 4787            NIBASC  \tx\
 1391 00742 00000           CON(5)  =DOLAM
 1392 00747 20              CON(2)  2
 1393 00749 8703            NIBASC  \x0\
 1394 0074D 00000           CON(5)  =DOLAM
 1395 00752 20              CON(2)  2
 1396 00754 6703            NIBASC  \v0\
 1397 00758 00000           CON(5)  =SEMI
 1398 0075D 00000           CON(5)  =BIND
 1399               * File  MainSVF.s       82
 1400 00762 00000           CON(5)  =DROP
 1401               * 10h
 1402               * File  MainSVF.s       83
 1403
 1404               * File  MainSVF.s       84
 1405 00767 00000           CON(5)  =DOLAM
 1406 0076C 10              CON(2)  1
 1407 0076E B4              NIBASC  \K\
 1408 00770 00000           CON(5)  =DOLAM
 1409 00775 10              CON(2)  1
 1410 00777 D4              NIBASC  \M\
 1411 00779 00000           CON(5)  =%/
 1412 0077E 00000           CON(5)  =%SQRT
 1413               * wn
 1414               * File  MainSVF.s       85
 1415 00783 00000           CON(5)  =DOLAM
 1416 00788 20              CON(2)  2
 1417 0078A 6403            NIBASC  \F0\
 1418 0078E 00000           CON(5)  =DOLAM
 1419 00793 10              CON(2)  1
 1420 00795 B4              NIBASC  \K\
 1421 00797 00000           CON(5)  =%/
 1422               * File  MainSVF.s       86
 1423 0079C 00000           CON(5)  =DOLAM
 1424 007A1 10              CON(2)  1
 1425 007A3 34              NIBASC  \C\
 1426 007A5 00000           CON(5)  =DOLAM
 1427 007AA 10              CON(2)  1
 1428 007AC B4              NIBASC  \K\
 1429 007AE 00000           CON(5)  =DOLAM
 1430 007B3 10              CON(2)  1
 1431 007B5 D4              NIBASC  \M\
 1432 007B7 00000           CON(5)  =%*
 1433 007BC 00000           CON(5)  =%SQRT
 1434 007C1 00000           CON(5)  =DOREAL
 1435 007C6 000             NIBHEX  000
 1436 007C9 0000000         NIBHEX  000000000002
            00002
 1437 007D5 0               NIBHEX  0
 1438 007D6 00000           CON(5)  =%*
 1439 007DB 00000           CON(5)  =%/
 1440               * File  MainSVF.s       87
 1441 007E0 00000           CON(5)  =DOLIST
 1442 007E5 00000           CON(5)  =DOLAM
 1443 007EA 20              CON(2)  2
 1444 007EC 77E6            NIBASC  \wn\
 1445 007F0 00000           CON(5)  =DOLAM
 1446 007F5 50              CON(2)  5
 1447 007F7 4656C63         NIBASC  \delST\
            545
 1448 00801 00000           CON(5)  =DOLAM
 1449 00806 30              CON(2)  3
 1450 00808 A74716          NIBASC  \zta\
 1451 0080E 00000           CON(5)  =SEMI
 1452 00813 00000           CON(5)  =BIND
 1453               * File  MainSVF.s       88
 1454
 1455               * File  MainSVF.s       89
 1456
 1457               * File  MainSVF.s       90
 1458
 1459               * File  MainSVF.s       91
 1460 00818 00000           CON(5)  =DOLAM
 1461 0081D 30              CON(2)  3
 1462 0081F A74716          NIBASC  \zta\
 1463 00825 00000           CON(5)  =%0
 1464 0082A 00000           CON(5)  =EQUAL
 1465               * zta equal to 0?
 1466               * File  MainSVF.s       92
 1467 0082F 00000           CON(5)  =ITE
 1468 00834 00000           CON(5)  =DOCOL
 1469 00839 00000           CON(5)  =DOROMP
 1470 0083E 000000          CON(6)  =~notDumped
 1471 00844 00000           CON(5)  =SEMI
 1472               * File  MainSVF.s       93
 1473 00849 00000           CON(5)  =DOCOL
 1474               * File  MainSVF.s       94
 1475 0084E 00000           CON(5)  =DOLAM
 1476 00853 30              CON(2)  3
 1477 00855 A74716          NIBASC  \zta\
 1478 0085B 00000           CON(5)  =DOREAL
 1479 00860 000             NIBHEX  000
 1480 00863 0000000         NIBHEX  000000000001
            00001
 1481 0086F 0               NIBHEX  0
 1482 00870 00000           CON(5)  =%-
 1483 00875 00000           CON(5)  =%ABS
 1484 0087A 00000           CON(5)  =DOREAL
 1485 0087F 799             NIBHEX  799
 1486 00882 0000000         NIBHEX  000000000001
            00001
 1487 0088E 0               NIBHEX  0
 1488 0088F 00000           CON(5)  =%MAX
 1489 00894 00000           CON(5)  =DOREAL
 1490 00899 799             NIBHEX  799
 1491 0089C 0000000         NIBHEX  000000000001
            00001
 1492 008A8 0               NIBHEX  0
 1493 008A9 00000           CON(5)  =EQUAL
 1494               * zta close to 1?
 1495               * File  MainSVF.s       95
 1496 008AE 00000           CON(5)  =ITE
 1497 008B3 00000           CON(5)  =DOCOL
 1498 008B8 00000           CON(5)  =DOROMP
 1499 008BD 000000          CON(6)  =~criticalyDumped
 1500 008C3 00000           CON(5)  =SEMI
 1501               * File  MainSVF.s       96
 1502 008C8 00000           CON(5)  =DOCOL
 1503 008CD 00000           CON(5)  =DOLAM
 1504 008D2 30              CON(2)  3
 1505 008D4 A74716          NIBASC  \zta\
 1506 008DA 00000           CON(5)  =%1
 1507 008DF 00000           CON(5)  =%MAX
 1508 008E4 00000           CON(5)  =%1
 1509 008E9 00000           CON(5)  =EQUAL
 1510               * zta lower than 1?
 1511               * File  MainSVF.s       97
 1512 008EE 00000           CON(5)  =ITE
 1513 008F3 00000           CON(5)  =DOCOL
 1514 008F8 00000           CON(5)  =DOROMP
 1515 008FD 000000          CON(6)  =~subDumped
 1516 00903 00000           CON(5)  =SEMI
 1517               * File  MainSVF.s       98
 1518 00908 00000           CON(5)  =DOCOL
 1519 0090D 00000           CON(5)  =DOROMP
 1520 00912 000000          CON(6)  =~superDumped
 1521 00918 00000           CON(5)  =SEMI
 1522               * File  MainSVF.s       99
 1523 0091D 00000           CON(5)  =SEMI
 1524               * File  MainSVF.s       100
 1525 00922 00000           CON(5)  =SEMI
 1526               * File  MainSVF.s       101
 1527
 1528               * File  MainSVF.s       102
 1529 00927 00000           CON(5)  =SEMI
 1530               * File  MainSVF.s       103
 1531 0092C 00000           CON(5)  =SEMI
 1532               * File  MainSVF.s       104
 1533 00931         =ForceType
 1534               * File  MainSVF.s       105
 1535 00931 00000           CON(5)  =DOCOL
 1536               * File  MainSVF.s       106
 1537
 1538               * File  MainSVF.s       107
 1539 00936 00000           CON(5)  =DOLAM
 1540 0093B 50              CON(2)  5
 1541 0093D 6447970         NIBASC  \Ftype\
            756
 1542 00947 00000           CON(5)  =DOCSTR
 1543 0094C D0000           CON(5)  13
 1544 00951 E4F6E65         NIBASC  \None\
            6
 1545 00959 00000           CON(5)  =EQUAL
 1546 0095E 00000           CON(5)  =NOT
 1547               * File  MainSVF.s       108
 1548 00963 00000           CON(5)  =IT
 1549 00968 00000           CON(5)  =DOCOL
 1550               * File  MainSVF.s       109
 1551 0096D 00000           CON(5)  =DOLAM
 1552 00972 50              CON(2)  5
 1553 00974 6447970         NIBASC  \Ftype\
            756
 1554 0097E 00000           CON(5)  =DOCSTR
 1555 00983 52000           CON(5)  37
 1556 00988 6403A23         NIBASC  \F0*COS(w0*t+psi)\
            4F43582
            7703A247B207379692

 1557 009A8 00000           CON(5)  =EQUAL
 1558               * File  MainSVF.s       110
 1559 009AD 00000           CON(5)  =DOLAM
 1560 009B2 50              CON(2)  5
 1561 009B4 6447970         NIBASC  \Ftype\
            756
 1562 009BE 00000           CON(5)  =DOCSTR
 1563 009C3 52000           CON(5)  37
 1564 009C8 6403A23         NIBASC  \F0*SIN(w0*t+psi)\
            594E482
            7703A247B207379692

 1565 009E8 00000           CON(5)  =EQUAL
 1566 009ED 00000           CON(5)  =OR
 1567               * File  MainSVF.s       111
 1568 009F2 00000           CON(5)  =ITE
 1569 009F7 00000           CON(5)  =DOCOL
 1570 009FC 00000           CON(5)  =DOROMP
 1571 00A01 000000          CON(6)  =~Fcos
 1572 00A07 00000           CON(5)  =SEMI
 1573               * File  MainSVF.s       112
 1574 00A0C 00000           CON(5)  =DOCOL
 1575               * File  MainSVF.s       113
 1576 00A11 00000           CON(5)  =DOLAM
 1577 00A16 50              CON(2)  5
 1578 00A18 6447970         NIBASC  \Ftype\
            756
 1579 00A22 00000           CON(5)  =DOCSTR
 1580 00A27 F1000           CON(5)  31
 1581 00A2C 64F6572         NIBASC  \Fourier serie\
            7965627
            023756279656

 1582 00A46 00000           CON(5)  =EQUAL
 1583               * File  MainSVF.s       114
 1584 00A4B 00000           CON(5)  =ITE
 1585 00A50 00000           CON(5)  =DOCOL
 1586 00A55 00000           CON(5)  =DOROMP
 1587 00A5A 000000          CON(6)  =~Fourier
 1588 00A60 00000           CON(5)  =SEMI
 1589               * File  MainSVF.s       115
 1590 00A65 00000           CON(5)  =DOCOL
 1591 00A6A 00000           CON(5)  =DOROMP
 1592 00A6F 000000          CON(6)  =~Convolution
 1593 00A75 00000           CON(5)  =SEMI
 1594               * File  MainSVF.s       116
 1595 00A7A 00000           CON(5)  =SEMI
 1596               * File  MainSVF.s       117
 1597
 1598               * File  MainSVF.s       118
 1599 00A7F 00000           CON(5)  =DOROMP
 1600 00A84 000000          CON(6)  =~T0
 1601               * File  MainSVF.s       119
 1602 00A8A 00000           CON(5)  =DOROMP
 1603 00A8F 000000          CON(6)  =~ForcedResults
 1604               * File  MainSVF.s       120
 1605 00A95 00000           CON(5)  =SEMI
 1606               * File  MainSVF.s       121
 1607
 1608               * File  MainSVF.s       122
 1609 00A9A 00000           CON(5)  =SEMI
 1610               * File  MainSVF.s       123
 1611
 1612               * File  MainSVF.s       124
 1613 00A9F         =T0
 1614               * File  MainSVF.s       125
 1615 00A9F 00000           CON(5)  =DOCOL
 1616               * File  MainSVF.s       126
 1617 00AA4 00000           CON(5)  ='
 1618 00AA9 00000           CON(5)  =DOIDNT
 1619 00AAE 10              CON(2)  1
 1620 00AB0 47              NIBASC  \t\
 1621 00AB2 00000           CON(5)  =PURGE
 1622               * File  MainSVF.s       127
 1623 00AB7 00000           CON(5)  =DOLAM
 1624 00ABC 20              CON(2)  2
 1625 00ABE 4787            NIBASC  \tx\
 1626 00AC2 00000           CON(5)  =DOIDNT
 1627 00AC7 10              CON(2)  1
 1628 00AC9 47              NIBASC  \t\
 1629 00ACB 00000           CON(5)  =CREATE
 1630               * File  MainSVF.s       128
 1631 00AD0 00000           CON(5)  =DOLAM
 1632 00AD5 20              CON(2)  2
 1633 00AD7 8747            NIBASC  \xt\
 1634 00ADB 00000           CON(5)  =xEVAL
 1635 00AE0 00000           CON(5)  ='
 1636 00AE5 00000           CON(5)  =DOLAM
 1637 00AEA 20              CON(2)  2
 1638 00AEC 1403            NIBASC  \A0\
 1639 00AF0 00000           CON(5)  =STO
 1640               * just for not creating another one
 1641               * File  MainSVF.s       129
 1642 00AF5 00000           CON(5)  ='
 1643 00AFA 00000           CON(5)  =DOIDNT
 1644 00AFF 10              CON(2)  1
 1645 00B01 47              NIBASC  \t\
 1646 00B03 00000           CON(5)  =PURGE
 1647               * File  MainSVF.s       130
 1648 00B08 00000           CON(5)  =SEMI
 1649               * File  MainSVF.s       131
 1650
 1651               * File  MainSVF.s       132
 1652 00B0D         =notDumped
 1653               * File  MainSVF.s       133
 1654 00B0D 00000           CON(5)  =DOCOL
 1655               * File  MainSVF.s       134
 1656 00B12 00000           CON(5)  =DOCSTR
 1657 00B17 91000           CON(5)  25
 1658 00B1C E6F6470         NIBASC  \not Dumped\
            24457D6
            075646
 1659 00B30 00000           CON(5)  ='
 1660 00B35 00000           CON(5)  =DOLAM
 1661 00B3A 40              CON(2)  4
 1662 00B3C 4597075         NIBASC  \Type\
            6
 1663 00B44 00000           CON(5)  =STO
 1664               * File  MainSVF.s       135
 1665 00B49 00000           CON(5)  =DOCSTR
 1666 00B4E D0000           CON(5)  13
 1667 00B53 7287037         NIBASC  \'x0'\
            2
 1668 00B5B 00000           CON(5)  =DOSTR>
 1669 00B60 00000           CON(5)  =xEVAL
 1670 00B65 00000           CON(5)  ='
 1671 00B6A 00000           CON(5)  =DOLAM
 1672 00B6F 20              CON(2)  2
 1673 00B71 3413            NIBASC  \C1\
 1674 00B75 00000           CON(5)  =STO
 1675               * File  MainSVF.s       136
 1676 00B7A 00000           CON(5)  =DOCSTR
 1677 00B7F 31000           CON(5)  19
 1678 00B84 726703F         NIBASC  \'v0/wn'\
            277E672
 1679 00B92 00000           CON(5)  =DOSTR>
 1680 00B97 00000           CON(5)  =xEVAL
 1681 00B9C 00000           CON(5)  ='
 1682 00BA1 00000           CON(5)  =DOLAM
 1683 00BA6 20              CON(2)  2
 1684 00BA8 3423            NIBASC  \C2\
 1685 00BAC 00000           CON(5)  =STO
 1686               * File  MainSVF.s       137
 1687
 1688               * File  MainSVF.s       138
 1689 00BB1 00000           CON(5)  =DOCSTR
 1690 00BB6 B3000           CON(5)  59
 1691 00BBB 723413A         NIBASC  \'C1*COS(wn*t)+C2*SIN\
            234F435
            8277E6A24792B23423A23594E4

 1692 00BE3 8277E6A         NIBASC  \(wn*t)'\
            2479272
 1693 00BF1 00000           CON(5)  =DOSTR>
 1694 00BF6 00000           CON(5)  =xEVAL
 1695 00BFB 00000           CON(5)  ='
 1696 00C00 00000           CON(5)  =DOLAM
 1697 00C05 20              CON(2)  2
 1698 00C07 8747            NIBASC  \xt\
 1699 00C0B 00000           CON(5)  =STO
 1700               * File  MainSVF.s       139
 1701
 1702               * File  MainSVF.s       140
 1703 00C10 00000           CON(5)  =SEMI
 1704               * File  MainSVF.s       141
 1705 00C15         =subDumped
 1706               * File  MainSVF.s       142
 1707 00C15 00000           CON(5)  =DOCOL
 1708               * File  MainSVF.s       143
 1709 00C1A 00000           CON(5)  =DOCSTR
 1710 00C1F 91000           CON(5)  25
 1711 00C24 3757260         NIBASC  \sub Dumped\
            24457D6
            075646
 1712 00C38 00000           CON(5)  ='
 1713 00C3D 00000           CON(5)  =DOLAM
 1714 00C42 40              CON(2)  4
 1715 00C44 4597075         NIBASC  \Type\
            6
 1716 00C4C 00000           CON(5)  =STO
 1717               * File  MainSVF.s       144
 1718 00C51 00000           CON(5)  =DOCSTR
 1719 00C56 92000           CON(5)  41
 1720 00C5B 7277E6A         NIBASC  \'wn*(1-zta^2)^0.5'\
            28213D2
            A74716E52392E503E25372

 1721 00C7F 00000           CON(5)  =DOSTR>
 1722 00C84 00000           CON(5)  =xEVAL
 1723 00C89 00000           CON(5)  ='
 1724 00C8E 00000           CON(5)  =DOLAM
 1725 00C93 20              CON(2)  2
 1726 00C95 7746            NIBASC  \wd\
 1727 00C99 00000           CON(5)  =STO
 1728               * File  MainSVF.s       145
 1729 00C9E 00000           CON(5)  =DOCSTR
 1730 00CA3 53000           CON(5)  53
 1731 00CA8 7282670         NIBASC  \'(v0 +zta*wn*x0)/((w\
            302B2A7
            4716A277E6A2870392F2828277

 1732 00CD0 4692927         NIBASC  \d))'\
            2
 1733 00CD8 00000           CON(5)  =DOSTR>
 1734 00CDD 00000           CON(5)  =xEVAL
 1735 00CE2 00000           CON(5)  ='
 1736 00CE7 00000           CON(5)  =DOLAM
 1737 00CEC 20              CON(2)  2
 1738 00CEE 3423            NIBASC  \C2\
 1739 00CF2 00000           CON(5)  =STO
 1740               * File  MainSVF.s       146
 1741 00CF7 00000           CON(5)  =DOCSTR
 1742 00CFC F2000           CON(5)  47
 1743 00D01 7282828         NIBASC  \'((x0^2 + C2^2)^0.5)\
            703E523
            02B2023423E52392E503E25392

 1744 00D29 72              NIBASC  \'\
 1745 00D2B 00000           CON(5)  =DOSTR>
 1746 00D30 00000           CON(5)  =xEVAL
 1747 00D35 00000           CON(5)  ='
 1748 00D3A 00000           CON(5)  =DOLAM
 1749 00D3F 20              CON(2)  2
 1750 00D41 8503            NIBASC  \X0\
 1751 00D45 00000           CON(5)  =STO
 1752               * File  MainSVF.s       147
 1753
 1754               * File  MainSVF.s       148
 1755 00D4A 00000           CON(5)  =DOLAM
 1756 00D4F 20              CON(2)  2
 1757 00D51 8703            NIBASC  \x0\
 1758 00D55 00000           CON(5)  =%0
 1759 00D5A 00000           CON(5)  =EQUAL
 1760               * File  MainSVF.s       149
 1761 00D5F 00000           CON(5)  =DOLAM
 1762 00D64 20              CON(2)  2
 1763 00D66 7746            NIBASC  \wd\
 1764 00D6A 00000           CON(5)  =%0
 1765 00D6F 00000           CON(5)  =EQUAL
 1766               * File  MainSVF.s       150
 1767 00D74 00000           CON(5)  =OR
 1768 00D79 00000           CON(5)  =NOT
 1769               * File  MainSVF.s       151
 1770 00D7E 00000           CON(5)  =ITE
 1771 00D83 00000           CON(5)  =DOCOL
 1772 00D88 00000           CON(5)  =DOCSTR
 1773 00D8D 34000           CON(5)  67
 1774 00D92 7214451         NIBASC  \'ATAN(-(v0+zta*wn*x0\
            4E482D2
            826703B2A74716A277E6A28703

 1775 00DBA 92F2827         NIBASC  \)/(wd*x0))'\
            746A287
            03929272
 1776 00DD0 00000           CON(5)  =DOSTR>
 1777 00DD5 00000           CON(5)  =xEVAL
 1778 00DDA 00000           CON(5)  ='
 1779 00DDF 00000           CON(5)  =DOLAM
 1780 00DE4 30              CON(2)  3
 1781 00DE6 669603          NIBASC  \fi0\
 1782 00DEC 00000           CON(5)  =STO
 1783 00DF1 00000           CON(5)  =SEMI
 1784               * File  MainSVF.s       152
 1785 00DF6 00000           CON(5)  =DOCOL
 1786 00DFB 00000           CON(5)  =DOREAL
 1787 00E00 000             NIBHEX  000
 1788 00E03 0000000         NIBHEX  000000080751
            80751
 1789 00E0F 0               NIBHEX  0
 1790 00E10 00000           CON(5)  ='
 1791 00E15 00000           CON(5)  =DOLAM
 1792 00E1A 30              CON(2)  3
 1793 00E1C 669603          NIBASC  \fi0\
 1794 00E22 00000           CON(5)  =STO
 1795 00E27 00000           CON(5)  =SEMI
 1796               * File  MainSVF.s       153
 1797 00E2C 00000           CON(5)  =DOCSTR
 1798 00E31 74000           CON(5)  71
 1799 00E36 728503A         NIBASC  \'X0*EXP(-zta*wn*t)*C\
            2548505
            82D2A74716A277E6A24792A234

 1800 00E5E F435827         NIBASC  \OS(wd*t-fi0)'\
            746A247
            D26696039272

 1801 00E78 00000           CON(5)  =DOSTR>
 1802 00E7D 00000           CON(5)  =xEVAL
 1803 00E82 00000           CON(5)  ='
 1804 00E87 00000           CON(5)  =DOLAM
 1805 00E8C 20              CON(2)  2
 1806 00E8E 8747            NIBASC  \xt\
 1807 00E92 00000           CON(5)  =STO
 1808               * File  MainSVF.s       154
 1809
 1810               * File  MainSVF.s       155
 1811
 1812               * File  MainSVF.s       156
 1813 00E97 00000           CON(5)  =DOLAM
 1814 00E9C 20              CON(2)  2
 1815 00E9E 8703            NIBASC  \x0\
 1816 00EA2 00000           CON(5)  ='
 1817 00EA7 00000           CON(5)  =DOLAM
 1818 00EAC 20              CON(2)  2
 1819 00EAE 3413            NIBASC  \C1\
 1820 00EB2 00000           CON(5)  =STO
 1821               * File  MainSVF.s       157
 1822
 1823               * File  MainSVF.s       158
 1824 00EB7 00000           CON(5)  =SEMI
 1825               * File  MainSVF.s       159
 1826 00EBC         =criticalyDumped
 1827               * File  MainSVF.s       160
 1828 00EBC 00000           CON(5)  =DOCOL
 1829               * File  MainSVF.s       161
 1830 00EC1 00000           CON(5)  =DOCSTR
 1831 00EC6 52000           CON(5)  37
 1832 00ECB 3627964         NIBASC  \criticaly Dumped\
            7963616
            C697024457D6075646

 1833 00EEB 00000           CON(5)  ='
 1834 00EF0 00000           CON(5)  =DOLAM
 1835 00EF5 40              CON(2)  4
 1836 00EF7 4597075         NIBASC  \Type\
            6
 1837 00EFF 00000           CON(5)  =STO
 1838               * File  MainSVF.s       162
 1839 00F04 00000           CON(5)  =DOCSTR
 1840 00F09 D0000           CON(5)  13
 1841 00F0E 7287037         NIBASC  \'x0'\
            2
 1842 00F16 00000           CON(5)  =DOSTR>
 1843 00F1B 00000           CON(5)  =xEVAL
 1844 00F20 00000           CON(5)  ='
 1845 00F25 00000           CON(5)  =DOLAM
 1846 00F2A 20              CON(2)  2
 1847 00F2C 3413            NIBASC  \C1\
 1848 00F30 00000           CON(5)  =STO
 1849               * File  MainSVF.s       163
 1850 00F35 00000           CON(5)  =DOCSTR
 1851 00F3A D1000           CON(5)  29
 1852 00F3F 7267030         NIBASC  \'v0 + wn*x0'\
            2B20277
            E6A2870372

 1853 00F57 00000           CON(5)  =DOSTR>
 1854 00F5C 00000           CON(5)  =xEVAL
 1855 00F61 00000           CON(5)  ='
 1856 00F66 00000           CON(5)  =DOLAM
 1857 00F6B 20              CON(2)  2
 1858 00F6D 3423            NIBASC  \C2\
 1859 00F71 00000           CON(5)  =STO
 1860               * File  MainSVF.s       164
 1861 00F76 00000           CON(5)  =DOCSTR
 1862 00F7B B1000           CON(5)  27
 1863 00F80 7282870         NIBASC  \'(x0+C2*t)'\
            3B23423
            A2479272
 1864 00F96 00000           CON(5)  =DOSTR>
 1865 00F9B 00000           CON(5)  =xEVAL
 1866 00FA0 00000           CON(5)  ='
 1867 00FA5 00000           CON(5)  =DOLAM
 1868 00FAA 20              CON(2)  2
 1869 00FAC 8503            NIBASC  \X0\
 1870 00FB0 00000           CON(5)  =STO
 1871               * File  MainSVF.s       165
 1872 00FB5 00000           CON(5)  =DOCSTR
 1873 00FBA 13000           CON(5)  49
 1874 00FBF 7282341         NIBASC  \'(C1+C2*t)*EXP(-wn*t\
            3B23423
            A24792A254850582D277E6A247

 1875 00FE7 9272            NIBASC  \)'\
 1876 00FEB 00000           CON(5)  =DOSTR>
 1877 00FF0 00000           CON(5)  =xEVAL
 1878 00FF5 00000           CON(5)  ='
 1879 00FFA 00000           CON(5)  =DOLAM
 1880 00FFF 20              CON(2)  2
 1881 01001 8747            NIBASC  \xt\
 1882 01005 00000           CON(5)  =STO
 1883               * File  MainSVF.s       166
 1884 0100A 00000           CON(5)  =DOLAM
 1885 0100F 20              CON(2)  2
 1886 01011 8703            NIBASC  \x0\
 1887 01015 00000           CON(5)  ='
 1888 0101A 00000           CON(5)  =DOLAM
 1889 0101F 20              CON(2)  2
 1890 01021 3413            NIBASC  \C1\
 1891 01025 00000           CON(5)  =STO
 1892               * File  MainSVF.s       167
 1893
 1894               * File  MainSVF.s       168
 1895 0102A 00000           CON(5)  =SEMI
 1896               * File  MainSVF.s       169
 1897 0102F         =superDumped
 1898 0102F 00000           CON(5)  =DOCOL
 1899               * File  MainSVF.s       170
 1900
 1901               * File  MainSVF.s       171
 1902 01034 00000           CON(5)  =DOCSTR
 1903 01039 D1000           CON(5)  29
 1904 0103E 3757075         NIBASC  \super Dumped\
            6270244
            57D6075646

 1905 01056 00000           CON(5)  ='
 1906 0105B 00000           CON(5)  =DOLAM
 1907 01060 40              CON(2)  4
 1908 01062 4597075         NIBASC  \Type\
            6
 1909 0106A 00000           CON(5)  =STO
 1910               * File  MainSVF.s       172
 1911
 1912               * File  MainSVF.s       173
 1913 0106F 00000           CON(5)  =DOCSTR
 1914 01074 B7000           CON(5)  123
 1915 01079 728703A         NIBASC  \'x0*wn*((zta + ((zta\
            277E6A2
            8282A7471602B2028282A74716

 1916 010A1 E52392D         NIBASC  \^2)-1)^0.5)+v0)/(2*w\
            21392E5
            03E25392B2670392F28223A277

 1917 010C9 E6A2828         NIBASC  \n*((zta^2)-1)^0.5)'\
            2A74716
            E52392D21392E503E2539272

 1918 010EF 00000           CON(5)  =DOSTR>
 1919 010F4 00000           CON(5)  =xEVAL
 1920 010F9 00000           CON(5)  ='
 1921 010FE 00000           CON(5)  =DOLAM
 1922 01103 20              CON(2)  2
 1923 01105 3413            NIBASC  \C1\
 1924 01109 00000           CON(5)  =STO
 1925               * File  MainSVF.s       174
 1926 0110E 00000           CON(5)  =DOCSTR
 1927 01113 F7000           CON(5)  127
 1928 01118 7282870         NIBASC  \'(x0*wn*((zta - ((zt\
            3A277E6
            A28282A7471602D2028282A747

 1929 01140 16E5239         NIBASC  \a^2)-1)^0.5)-v0)/(2*\
            2D21392
            E503E25392D2670392F28223A2

 1930 01168 77E6A28         NIBASC  \wn*((zta^2)-1)^0.5))\
            282A747
            16E52392D21392E503E2539292

 1931 01190 72              NIBASC  \'\
 1932 01192 00000           CON(5)  =DOSTR>
 1933 01197 00000           CON(5)  =xEVAL
 1934 0119C 00000           CON(5)  ='
 1935 011A1 00000           CON(5)  =DOLAM
 1936 011A6 20              CON(2)  2
 1937 011A8 3423            NIBASC  \C2\
 1938 011AC 00000           CON(5)  =STO
 1939               * File  MainSVF.s       175
 1940 011B1 00000           CON(5)  =%1
 1941 011B6 00000           CON(5)  ='
 1942 011BB 00000           CON(5)  =DOLAM
 1943 011C0 20              CON(2)  2
 1944 011C2 8503            NIBASC  \X0\
 1945 011C6 00000           CON(5)  =STO
 1946               * File  MainSVF.s       176
 1947 011CB 00000           CON(5)  =DOCSTR
 1948 011D0 79000           CON(5)  151
 1949 011D5 723413A         NIBASC  \'C1*EXP((-zta + (zta\
            2548505
            8282D2A7471602B20282A74716

 1950 011FD E523D21         NIBASC  \^2-1)^0.5)*wn*t)+C2*\
            392E503
            E25392A277E6A24792B23423A2

 1951 01225 5485058         NIBASC  \EXP((-zta - (zta^2-1\
            282D2A7
            471602D20282A74716E523D213

 1952 0124D 92E503E         NIBASC  \)^0.5)*wn*t)'\
            25392A2
            77E6A2479272

 1953 01267 00000           CON(5)  =DOSTR>
 1954 0126C 00000           CON(5)  =xEVAL
 1955 01271 00000           CON(5)  ='
 1956 01276 00000           CON(5)  =DOLAM
 1957 0127B 20              CON(2)  2
 1958 0127D 8747            NIBASC  \xt\
 1959 01281 00000           CON(5)  =STO
 1960               * File  MainSVF.s       177
 1961
 1962               * File  MainSVF.s       178
 1963 01286 00000           CON(5)  =SEMI
 1964               * File  MainSVF.s       179
 1965
 1966               * File  MainSVF.s       180
 1967 0128B         =Fcos
 1968 0128B 00000           CON(5)  =DOCOL
 1969               * File  MainSVF.s       181
 1970 01290 00000           CON(5)  =DOIDNT
 1971 01295 30              CON(2)  3
 1972 01297 354464          NIBASC  \SDF\
 1973 0129D 00000           CON(5)  =%0
 1974 012A2 00000           CON(5)  =EQUAL
 1975               * File  MainSVF.s       182
 1976 012A7 00000           CON(5)  =IT
 1977 012AC 00000           CON(5)  =DOCOL
 1978               * File  MainSVF.s       183
 1979 012B1 00000           CON(5)  =DOLIST
 1980 012B6 00000           CON(5)  =DOLAM
 1981 012BB 20              CON(2)  2
 1982 012BD 8513            NIBASC  \X1\
 1983 012C1 00000           CON(5)  =DOLAM
 1984 012C6 20              CON(2)  2
 1985 012C8 3613            NIBASC  \c1\
 1986 012CC 00000           CON(5)  =DOLAM
 1987 012D1 20              CON(2)  2
 1988 012D3 3623            NIBASC  \c2\
 1989 012D7 00000           CON(5)  =DOLAM
 1990 012DC 20              CON(2)  2
 1991 012DE 6696            NIBASC  \fi\
 1992 012E2 00000           CON(5)  =SEMI
 1993 012E7 00000           CON(5)  =BIND
 1994               * File  MainSVF.s       184
 1995 012EC 00000           CON(5)  =SEMI
 1996               * File  MainSVF.s       185
 1997
 1998               * File  MainSVF.s       186
 1999 012F1 00000           CON(5)  =%0
 2000 012F6 00000           CON(5)  =%0
 2001 012FB 00000           CON(5)  =%0
 2002 01300 00000           CON(5)  =%0
 2003 01305 00000           CON(5)  =DOLIST
 2004 0130A 00000           CON(5)  =DOLAM
 2005 0130F 20              CON(2)  2
 2006 01311 8513            NIBASC  \X1\
 2007 01315 00000           CON(5)  =DOLAM
 2008 0131A 20              CON(2)  2
 2009 0131C 3613            NIBASC  \c1\
 2010 01320 00000           CON(5)  =DOLAM
 2011 01325 20              CON(2)  2
 2012 01327 3623            NIBASC  \c2\
 2013 0132B 00000           CON(5)  =DOLAM
 2014 01330 20              CON(2)  2
 2015 01332 6696            NIBASC  \fi\
 2016 01336 00000           CON(5)  =SEMI
 2017 0133B 00000           CON(5)  =BIND
 2018               * File  MainSVF.s       187
 2019
 2020               * File  MainSVF.s       188
 2021 01340 00000           CON(5)  =DOCSTR
 2022 01345 31000           CON(5)  19
 2023 0134A 727703F         NIBASC  \'w0/wn'\
            277E672
 2024 01358 00000           CON(5)  =DOSTR>
 2025 0135D 00000           CON(5)  =xEVAL
 2026 01362 00000           CON(5)  ='
 2027 01367 00000           CON(5)  =DOLAM
 2028 0136C 10              CON(2)  1
 2029 0136E 27              NIBASC  \r\
 2030 01370 00000           CON(5)  =STO
 2031               * File  MainSVF.s       189
 2032 01375 00000           CON(5)  =DOCSTR
 2033 0137A 11000           CON(5)  17
 2034 0137F 726403F         NIBASC  \'F0/K'\
            2B472
 2035 0138B 00000           CON(5)  =DOSTR>
 2036 01390 00000           CON(5)  =xEVAL
 2037 01395 00000           CON(5)  ='
 2038 0139A 00000           CON(5)  =DOLAM
 2039 0139F 30              CON(2)  3
 2040 013A1 4656C6          NIBASC  \del\
 2041 013A7 00000           CON(5)  =STO
 2042               * File  MainSVF.s       190
 2043
 2044               * File  MainSVF.s       191
 2045 013AC 00000           CON(5)  =DOLAM
 2046 013B1 10              CON(2)  1
 2047 013B3 27              NIBASC  \r\
 2048 013B5 00000           CON(5)  =DOREAL
 2049 013BA 000             NIBHEX  000
 2050 013BD 0000000         NIBHEX  000000000001
            00001
 2051 013C9 0               NIBHEX  0
 2052 013CA 00000           CON(5)  =%-
 2053 013CF 00000           CON(5)  =%ABS
 2054 013D4 00000           CON(5)  =DOREAL
 2055 013D9 799             NIBHEX  799
 2056 013DC 0000000         NIBHEX  000000000001
            00001
 2057 013E8 0               NIBHEX  0
 2058 013E9 00000           CON(5)  =%MAX
 2059 013EE 00000           CON(5)  =DOREAL
 2060 013F3 799             NIBHEX  799
 2061 013F6 0000000         NIBHEX  000000000001
            00001
 2062 01402 0               NIBHEX  0
 2063 01403 00000           CON(5)  =EQUAL
 2064 01408 00000           CON(5)  =NOT
 2065               * ressonance
 2066               * File  MainSVF.s       192
 2067 0140D 00000           CON(5)  =ITE
 2068 01412 00000           CON(5)  =DOCOL
 2069 01417 00000           CON(5)  =DOCSTR
 2070 0141C 54000           CON(5)  69
 2071 01421 72D213A         NIBASC  \'-1*psi+ATAN(2*zta*r\
            2073796
            B2144514E48223A2A74716A227

 2072 01449 F28213D         NIBASC  \/(1-(r^2)))'\
            28227E5
            2392929272

 2073 01461 00000           CON(5)  =DOSTR>
 2074 01466 00000           CON(5)  =xEVAL
 2075 0146B 00000           CON(5)  ='
 2076 01470 00000           CON(5)  =DOLAM
 2077 01475 30              CON(2)  3
 2078 01477 669636          NIBASC  \fic\
 2079 0147D 00000           CON(5)  =STO
 2080               * psi is the force fase angle
 2081               * File  MainSVF.s       193
 2082 01482 00000           CON(5)  =DOCSTR
 2083 01487 B4000           CON(5)  75
 2084 0148C 724656C         NIBASC  \'del/(((1-r^2)^2+(2*\
            6F28282
            8213D227E52392E523B28223A2

 2085 014B4 A74716A         NIBASC  \zta*r)^2)^0.5)'\
            22792E5
            2392E503E2539272

 2086 014D2 00000           CON(5)  =DOSTR>
 2087 014D7 00000           CON(5)  =xEVAL
 2088 014DC 00000           CON(5)  ='
 2089 014E1 00000           CON(5)  =DOLAM
 2090 014E6 10              CON(2)  1
 2091 014E8 85              NIBASC  \X\
 2092 014EA 00000           CON(5)  =STO
 2093               * File  MainSVF.s       194
 2094
 2095               * File  MainSVF.s       195
 2096 014EF 00000           CON(5)  =DOLAM
 2097 014F4 50              CON(2)  5
 2098 014F6 6447970         NIBASC  \Ftype\
            756
 2099 01500 00000           CON(5)  =DOCSTR
 2100 01505 52000           CON(5)  37
 2101 0150A 6403A23         NIBASC  \F0*COS(w0*t+psi)\
            4F43582
            7703A247B207379692

 2102 0152A 00000           CON(5)  =EQUAL
 2103               * check if is sin or cos
 2104               * File  MainSVF.s       196
 2105 0152F 00000           CON(5)  =ITE
 2106 01534 00000           CON(5)  =DOCOL
 2107               * File  MainSVF.s       197
 2108 01539 00000           CON(5)  =DOCSTR
 2109 0153E 72000           CON(5)  39
 2110 01543 7285A23         NIBASC  \'X*COS(w0*t-fic)'\
            4F43582
            7703A247D26696369272

 2111 01565 00000           CON(5)  =DOSTR>
 2112 0156A 00000           CON(5)  =xEVAL
 2113 0156F 00000           CON(5)  ='
 2114 01574 00000           CON(5)  =DOLAM
 2115 01579 20              CON(2)  2
 2116 0157B 8707            NIBASC  \xp\
 2117 0157F 00000           CON(5)  =STO
 2118               * x[t]
 2119               * File  MainSVF.s       198
 2120 01584 00000           CON(5)  =DOCSTR
 2121 01589 F1000           CON(5)  31
 2122 0158E 7285A23         NIBASC  \'X*COS(-fic)'\
            4F43582
            D26696369272

 2123 015A8 00000           CON(5)  =DOSTR>
 2124 015AD 00000           CON(5)  =xEVAL
 2125 015B2 00000           CON(5)  ='
 2126 015B7 00000           CON(5)  =DOLAM
 2127 015BC 30              CON(2)  3
 2128 015BE 870703          NIBASC  \xp0\
 2129 015C4 00000           CON(5)  =STO
 2130               * t = 0
 2131               * File  MainSVF.s       199
 2132 015C9 00000           CON(5)  =DOCSTR
 2133 015CE 72000           CON(5)  39
 2134 015D3 72D285A         NIBASC  \'-X*w0*SIN(-fic)'\
            27703A2
            3594E482D26696369272

 2135 015F5 00000           CON(5)  =DOSTR>
 2136 015FA 00000           CON(5)  =xEVAL
 2137 015FF 00000           CON(5)  ='
 2138 01604 00000           CON(5)  =DOLAM
 2139 01609 30              CON(2)  3
 2140 0160B 870713          NIBASC  \xp1\
 2141 01611 00000           CON(5)  =STO
 2142               * t' = 0
 2143               * File  MainSVF.s       200
 2144 01616 00000           CON(5)  =SEMI
 2145               * File  MainSVF.s       201
 2146 0161B 00000           CON(5)  =DOCOL
 2147               * File  MainSVF.s       202
 2148 01620 00000           CON(5)  =DOCSTR
 2149 01625 72000           CON(5)  39
 2150 0162A 7285A23         NIBASC  \'X*SIN(w0*t-fic)'\
            594E482
            7703A247D26696369272

 2151 0164C 00000           CON(5)  =DOSTR>
 2152 01651 00000           CON(5)  =xEVAL
 2153 01656 00000           CON(5)  ='
 2154 0165B 00000           CON(5)  =DOLAM
 2155 01660 20              CON(2)  2
 2156 01662 8707            NIBASC  \xp\
 2157 01666 00000           CON(5)  =STO
 2158               * x[t]
 2159               * File  MainSVF.s       203
 2160 0166B 00000           CON(5)  =DOCSTR
 2161 01670 F1000           CON(5)  31
 2162 01675 7285A23         NIBASC  \'X*SIN(-fic)'\
            594E482
            D26696369272

 2163 0168F 00000           CON(5)  =DOSTR>
 2164 01694 00000           CON(5)  =xEVAL
 2165 01699 00000           CON(5)  ='
 2166 0169E 00000           CON(5)  =DOLAM
 2167 016A3 30              CON(2)  3
 2168 016A5 870703          NIBASC  \xp0\
 2169 016AB 00000           CON(5)  =STO
 2170               * t = 0
 2171               * File  MainSVF.s       204
 2172 016B0 00000           CON(5)  =DOCSTR
 2173 016B5 52000           CON(5)  37
 2174 016BA 7285A27         NIBASC  \'X*w0*COS(-fic)'\
            703A234
            F43582D26696369272

 2175 016DA 00000           CON(5)  =DOSTR>
 2176 016DF 00000           CON(5)  =xEVAL
 2177 016E4 00000           CON(5)  ='
 2178 016E9 00000           CON(5)  =DOLAM
 2179 016EE 30              CON(2)  3
 2180 016F0 870713          NIBASC  \xp1\
 2181 016F6 00000           CON(5)  =STO
 2182               * t' = 0
 2183               * File  MainSVF.s       205
 2184 016FB 00000           CON(5)  =SEMI
 2185               * File  MainSVF.s       206
 2186
 2187               * File  MainSVF.s       207
 2188 01700 00000           CON(5)  =DOLAM
 2189 01705 40              CON(2)  4
 2190 01707 4597075         NIBASC  \Type\
            6
 2191 0170F 00000           CON(5)  =DOCSTR
 2192 01714 91000           CON(5)  25
 2193 01719 3757260         NIBASC  \sub Dumped\
            24457D6
            075646
 2194 0172D 00000           CON(5)  =EQUAL
 2195               * File  MainSVF.s       208
 2196 01732 00000           CON(5)  =ITE
 2197 01737 00000           CON(5)  =DOCOL
 2198               * File  MainSVF.s       209
 2199 0173C 00000           CON(5)  =DOCSTR
 2200 01741 D1000           CON(5)  29
 2201 01746 7282870         NIBASC  \'(x0-xp0)^2'\
            3D28707
            0392E52372

 2202 0175E 00000           CON(5)  =DOSTR>
 2203 01763 00000           CON(5)  =xEVAL
 2204               * File  MainSVF.s       210
 2205 01768 00000           CON(5)  =DOCSTR
 2206 0176D F3000           CON(5)  63
 2207 01772 7282670         NIBASC  \'(v0+zta*wn*(x0-xp0)\
            3B2A747
            16A277E6A2828703D287070392

 2208 0179A D287071         NIBASC  \-xp1)/wd'\
            392F277
            4672
 2209 017AC 00000           CON(5)  =DOSTR>
 2210 017B1 00000           CON(5)  =xEVAL
 2211               * File  MainSVF.s       211
 2212 017B6 00000           CON(5)  =DUP
 2213 017BB 00000           CON(5)  =%*
 2214 017C0 00000           CON(5)  =%+
 2215 017C5 00000           CON(5)  =%SQRT
 2216 017CA 00000           CON(5)  =xEVAL
 2217 017CF 00000           CON(5)  ='
 2218 017D4 00000           CON(5)  =DOLAM
 2219 017D9 20              CON(2)  2
 2220 017DB 8513            NIBASC  \X1\
 2221 017DF 00000           CON(5)  =STO
 2222               * File  MainSVF.s       212
 2223 017E4 00000           CON(5)  =DOCSTR
 2224 017E9 93000           CON(5)  57
 2225 017EE 7233E21         NIBASC  \'3.1416-ACOS((x0-xp0\
            3431363
            D21434F43582828703D2870703

 2226 01816 92F2851         NIBASC  \)/X1)'\
            39272
 2227 01822 00000           CON(5)  =DOSTR>
 2228 01827 00000           CON(5)  =xEVAL
 2229 0182C 00000           CON(5)  ='
 2230 01831 00000           CON(5)  =DOLAM
 2231 01836 20              CON(2)  2
 2232 01838 6696            NIBASC  \fi\
 2233 0183C 00000           CON(5)  =STO
 2234               * File  MainSVF.s       213
 2235 01841 00000           CON(5)  =DOCSTR
 2236 01846 54000           CON(5)  69
 2237 0184B 728513A         NIBASC  \'X1*EXP(-zta*wn*t)*C\
            2548505
            82D2A74716A277E6A24792A234

 2238 01873 F435827         NIBASC  \OS(wd*t-fi)'\
            746A247
            D266969272

 2239 0188B 00000           CON(5)  =DOSTR>
 2240 01890 00000           CON(5)  =xEVAL
 2241 01895 00000           CON(5)  ='
 2242 0189A 00000           CON(5)  =DOLAM
 2243 0189F 20              CON(2)  2
 2244 018A1 8786            NIBASC  \xh\
 2245 018A5 00000           CON(5)  =STO
 2246               * File  MainSVF.s       214
 2247 018AA 00000           CON(5)  =SEMI
 2248               * File  MainSVF.s       215
 2249 018AF 00000           CON(5)  =DOCOL
 2250               * File  MainSVF.s       216
 2251 018B4 00000           CON(5)  =DOLAM
 2252 018B9 40              CON(2)  4
 2253 018BB 4597075         NIBASC  \Type\
            6
 2254 018C3 00000           CON(5)  =DOCSTR
 2255 018C8 52000           CON(5)  37
 2256 018CD 3627964         NIBASC  \criticaly Dumped\
            7963616
            C697024457D6075646

 2257 018ED 00000           CON(5)  =EQUAL
 2258               * File  MainSVF.s       217
 2259 018F2 00000           CON(5)  =ITE
 2260 018F7 00000           CON(5)  =DOCOL
 2261 018FC 00000           CON(5)  =DOCSTR
 2262 01901 16000           CON(5)  97
 2263 01906 7282828         NIBASC  \'((x0-xp0)+((x0-xp0)\
            703D287
            070392B282828703D287070392

 2264 0192E A277E6D         NIBASC  \*wn-xp1+v0)*t)*EXP(-\
            2870713
            B2670392A24792A254850582D2

 2265 01956 77E6A24         NIBASC  \wn*t)'\
            79272
 2266 01962 00000           CON(5)  =DOSTR>
 2267 01967 00000           CON(5)  =xEVAL
 2268 0196C 00000           CON(5)  ='
 2269 01971 00000           CON(5)  =DOLAM
 2270 01976 20              CON(2)  2
 2271 01978 8786            NIBASC  \xh\
 2272 0197C 00000           CON(5)  =STO
 2273 01981 00000           CON(5)  =SEMI
 2274               * File  MainSVF.s       218
 2275 01986 00000           CON(5)  =DOCOL
 2276 0198B 00000           CON(5)  =DOLAM
 2277 01990 40              CON(2)  4
 2278 01992 4597075         NIBASC  \Type\
            6
 2279 0199A 00000           CON(5)  =DOCSTR
 2280 0199F D1000           CON(5)  29
 2281 019A4 3757075         NIBASC  \super Dumped\
            6270244
            57D6075646

 2282 019BC 00000           CON(5)  =EQUAL
 2283               * File  MainSVF.s       219
 2284 019C1 00000           CON(5)  =ITE
 2285 019C6 00000           CON(5)  =DOCOL
 2286               * File  MainSVF.s       220
 2287 019CB 00000           CON(5)  =DOCSTR
 2288 019D0 73000           CON(5)  55
 2289 019D5 72D2A74         NIBASC  \'-zta+wn*((zta^2)-1)\
            716B277
            E6A28282A74716E52392D21392

 2290 019FD E503E25         NIBASC  \^0.5'\
            372
 2291 01A07 00000           CON(5)  =DOSTR>
 2292 01A0C 00000           CON(5)  =xEVAL
 2293 01A11 00000           CON(5)  ='
 2294 01A16 00000           CON(5)  =DOLAM
 2295 01A1B 20              CON(2)  2
 2296 01A1D 3613            NIBASC  \c1\
 2297 01A21 00000           CON(5)  =STO
 2298               * File  MainSVF.s       221
 2299 01A26 00000           CON(5)  =DOCSTR
 2300 01A2B 73000           CON(5)  55
 2301 01A30 72D2A74         NIBASC  \'-zta-wn*((zta^2)-1)\
            716D277
            E6A28282A74716E52392D21392

 2302 01A58 E503E25         NIBASC  \^0.5'\
            372
 2303 01A62 00000           CON(5)  =DOSTR>
 2304 01A67 00000           CON(5)  =xEVAL
 2305 01A6C 00000           CON(5)  ='
 2306 01A71 00000           CON(5)  =DOLAM
 2307 01A76 20              CON(2)  2
 2308 01A78 3623            NIBASC  \c2\
 2309 01A7C 00000           CON(5)  =STO
 2310               * File  MainSVF.s       222
 2311 01A81 00000           CON(5)  =DOCSTR
 2312 01A86 34000           CON(5)  67
 2313 01A8B 7282670         NIBASC  \'(v0-x0*c1+xp0*c1-xp\
            3D28703
            A23613B2870703A23613D28707

 2314 01AB3 1392F28         NIBASC  \1)/(c2-c1)'\
            23623D2
            36139272
 2315 01AC9 00000           CON(5)  =DOSTR>
 2316 01ACE 00000           CON(5)  =xEVAL
 2317 01AD3 00000           CON(5)  ='
 2318 01AD8 00000           CON(5)  =DOLAM
 2319 01ADD 20              CON(2)  2
 2320 01ADF 3423            NIBASC  \C2\
 2321 01AE3 00000           CON(5)  =STO
 2322               * File  MainSVF.s       223
 2323 01AE8 00000           CON(5)  =DOCSTR
 2324 01AED B1000           CON(5)  27
 2325 01AF2 728703D         NIBASC  \'x0-C2-xp0'\
            23423D2
            87070372
 2326 01B08 00000           CON(5)  =DOSTR>
 2327 01B0D 00000           CON(5)  =xEVAL
 2328 01B12 00000           CON(5)  ='
 2329 01B17 00000           CON(5)  =DOLAM
 2330 01B1C 20              CON(2)  2
 2331 01B1E 3413            NIBASC  \C1\
 2332 01B22 00000           CON(5)  =STO
 2333               * File  MainSVF.s       224
 2334 01B27 00000           CON(5)  =DOCSTR
 2335 01B2C D3000           CON(5)  61
 2336 01B31 723413A         NIBASC  \'C1*EXP(c1*t)+C2*EXP\
            2548505
            823613A24792B23423A2548505

 2337 01B59 8282362         NIBASC  \((c2*t)'\
            3A24792
            72
 2338 01B69 00000           CON(5)  =DOSTR>
 2339 01B6E 00000           CON(5)  =xEVAL
 2340 01B73 00000           CON(5)  ='
 2341 01B78 00000           CON(5)  =DOLAM
 2342 01B7D 20              CON(2)  2
 2343 01B7F 8786            NIBASC  \xh\
 2344 01B83 00000           CON(5)  =STO
 2345               * File  MainSVF.s       225
 2346 01B88 00000           CON(5)  =SEMI
 2347               * File  MainSVF.s       226
 2348 01B8D 00000           CON(5)  =DOCOL
 2349               * File  MainSVF.s       227
 2350 01B92 00000           CON(5)  =DOCSTR
 2351 01B97 D5000           CON(5)  93
 2352 01B9C 7282870         NIBASC  \'(x0-xp0)*COS(wn*t)+\
            3D28707
            0392A234F4358277E6A24792B2

 2353 01BC4 8282670         NIBASC  \((v0-xp1)/wn)*SIN(wn\
            3D28707
            1392F277E692A23594E48277E6

 2354 01BEC A247927         NIBASC  \*t)'\
            2
 2355 01BF4 00000           CON(5)  =DOSTR>
 2356 01BF9 00000           CON(5)  =xEVAL
 2357 01BFE 00000           CON(5)  ='
 2358 01C03 00000           CON(5)  =DOLAM
 2359 01C08 20              CON(2)  2
 2360 01C0A 8786            NIBASC  \xh\
 2361 01C0E 00000           CON(5)  =STO
 2362               * File  MainSVF.s       228
 2363 01C13 00000           CON(5)  =SEMI
 2364               * File  MainSVF.s       229
 2365 01C18 00000           CON(5)  =SEMI
 2366               * File  MainSVF.s       230
 2367 01C1D 00000           CON(5)  =SEMI
 2368               * File  MainSVF.s       231
 2369 01C22 00000           CON(5)  =DOLAM
 2370 01C27 20              CON(2)  2
 2371 01C29 8786            NIBASC  \xh\
 2372 01C2D 00000           CON(5)  =DOLAM
 2373 01C32 20              CON(2)  2
 2374 01C34 8707            NIBASC  \xp\
 2375 01C38 00000           CON(5)  =x+
 2376 01C3D 00000           CON(5)  ='
 2377 01C42 00000           CON(5)  =DOLAM
 2378 01C47 20              CON(2)  2
 2379 01C49 8747            NIBASC  \xt\
 2380 01C4D 00000           CON(5)  =STO
 2381               * File  MainSVF.s       232
 2382 01C52 00000           CON(5)  =SEMI
 2383               * File  MainSVF.s       233
 2384 01C57 00000           CON(5)  =DOCOL
 2385               * File  MainSVF.s       234
 2386 01C5C 00000           CON(5)  =DOCSTR
 2387 01C61 77000           CON(5)  119
 2388 01C66 728703A         NIBASC  \'x0*COS(wn*t)+(v0/wn\
            234F435
            8277E6A24792B2826703F277E6

 2389 01C8E 92A2359         NIBASC  \)*SIN(wn*t)+((del*wn\
            4E48277
            E6A24792B282824656C6A277E6

 2390 01CB6 A24792F         NIBASC  \*t)/2)*SIN(wn*t)'\
            22392A2
            3594E48277E6A2479272

 2391 01CD8 00000           CON(5)  =DOSTR>
 2392 01CDD 00000           CON(5)  =xEVAL
 2393 01CE2 00000           CON(5)  ='
 2394 01CE7 00000           CON(5)  =DOLAM
 2395 01CEC 20              CON(2)  2
 2396 01CEE 8747            NIBASC  \xt\
 2397 01CF2 00000           CON(5)  =STO
 2398 01CF7 00000           CON(5)  =SEMI
 2399               * File  MainSVF.s       235
 2400
 2401               * File  MainSVF.s       236
 2402 01CFC 00000           CON(5)  =SEMI
 2403               * File  MainSVF.s       237
 2404
 2405               * File  MainSVF.s       238
 2406 01D01         =Convolution
 2407 01D01 00000           CON(5)  =DOCOL
 2408               * File  MainSVF.s       239
 2409 01D06 00000           CON(5)  =%0
 2410 01D0B 00000           CON(5)  =%0
 2411 01D10 00000           CON(5)  =%0
 2412 01D15 00000           CON(5)  =%0
 2413 01D1A 00000           CON(5)  =DOLIST
 2414 01D1F 00000           CON(5)  =DOLAM
 2415 01D24 20              CON(2)  2
 2416 01D26 8513            NIBASC  \X1\
 2417 01D2A 00000           CON(5)  =DOLAM
 2418 01D2F 20              CON(2)  2
 2419 01D31 3613            NIBASC  \c1\
 2420 01D35 00000           CON(5)  =DOLAM
 2421 01D3A 20              CON(2)  2
 2422 01D3C 3623            NIBASC  \c2\
 2423 01D40 00000           CON(5)  =DOLAM
 2424 01D45 20              CON(2)  2
 2425 01D47 6696            NIBASC  \fi\
 2426 01D4B 00000           CON(5)  =SEMI
 2427 01D50 00000           CON(5)  =BIND
 2428               * File  MainSVF.s       240
 2429 01D55 00000           CON(5)  =DOCSTR
 2430 01D5A D4000           CON(5)  77
 2431 01D5F 726403A         NIBASC  \'F0*EXP(-zta*wn*t)*S\
            2548505
            82D2A74716A277E6A24792A235

 2432 01D87 94E4827         NIBASC  \IN(wd*t)/(M*wd)'\
            746A247
            92F282D4A277469272

 2433 01DA7 00000           CON(5)  =DOSTR>
 2434 01DAC 00000           CON(5)  =xEVAL
 2435 01DB1 00000           CON(5)  ='
 2436 01DB6 00000           CON(5)  =DOLAM
 2437 01DBB 20              CON(2)  2
 2438 01DBD 8707            NIBASC  \xp\
 2439 01DC1 00000           CON(5)  =STO
 2440               * File  MainSVF.s       241
 2441
 2442               * File  MainSVF.s       242
 2443 01DC6 00000           CON(5)  =%0
 2444 01DCB 00000           CON(5)  ='
 2445 01DD0 00000           CON(5)  =DOLAM
 2446 01DD5 30              CON(2)  3
 2447 01DD7 870703          NIBASC  \xp0\
 2448 01DDD 00000           CON(5)  =STO
 2449               * File  MainSVF.s       243
 2450 01DE2 00000           CON(5)  =DOCSTR
 2451 01DE7 11000           CON(5)  17
 2452 01DEC 726403F         NIBASC  \'F0/M'\
            2D472
 2453 01DF8 00000           CON(5)  =DOSTR>
 2454 01DFD 00000           CON(5)  =xEVAL
 2455 01E02 00000           CON(5)  ='
 2456 01E07 00000           CON(5)  =DOLAM
 2457 01E0C 30              CON(2)  3
 2458 01E0E 870713          NIBASC  \xp1\
 2459 01E14 00000           CON(5)  =STO
 2460               * File  MainSVF.s       244
 2461
 2462               * File  MainSVF.s       245
 2463 01E19 00000           CON(5)  =DOLAM
 2464 01E1E 40              CON(2)  4
 2465 01E20 4597075         NIBASC  \Type\
            6
 2466 01E28 00000           CON(5)  =DOCSTR
 2467 01E2D 91000           CON(5)  25
 2468 01E32 3757260         NIBASC  \sub Dumped\
            24457D6
            075646
 2469 01E46 00000           CON(5)  =EQUAL
 2470               * File  MainSVF.s       246
 2471 01E4B 00000           CON(5)  =ITE
 2472 01E50 00000           CON(5)  =DOCOL
 2473               * File  MainSVF.s       247
 2474 01E55 00000           CON(5)  =DOCSTR
 2475 01E5A D1000           CON(5)  29
 2476 01E5F 7282870         NIBASC  \'(x0-xp0)^2'\
            3D28707
            0392E52372

 2477 01E77 00000           CON(5)  =DOSTR>
 2478 01E7C 00000           CON(5)  =xEVAL
 2479               * File  MainSVF.s       248
 2480 01E81 00000           CON(5)  =DOCSTR
 2481 01E86 F3000           CON(5)  63
 2482 01E8B 7282670         NIBASC  \'(v0+zta*wn*(x0-xp0)\
            3B2A747
            16A277E6A2828703D287070392

 2483 01EB3 D287071         NIBASC  \-xp1)/wd'\
            392F277
            4672
 2484 01EC5 00000           CON(5)  =DOSTR>
 2485 01ECA 00000           CON(5)  =xEVAL
 2486               * File  MainSVF.s       249
 2487 01ECF 00000           CON(5)  =DUP
 2488 01ED4 00000           CON(5)  =%*
 2489 01ED9 00000           CON(5)  =%+
 2490 01EDE 00000           CON(5)  =%SQRT
 2491 01EE3 00000           CON(5)  =xEVAL
 2492 01EE8 00000           CON(5)  =DOREAL
 2493 01EED 000             NIBHEX  000
 2494 01EF0 0000000         NIBHEX  000000000001
            00001
 2495 01EFC 9               NIBHEX  9
 2496 01EFD 00000           CON(5)  =%*
 2497 01F02 00000           CON(5)  ='
 2498 01F07 00000           CON(5)  =DOLAM
 2499 01F0C 20              CON(2)  2
 2500 01F0E 8513            NIBASC  \X1\
 2501 01F12 00000           CON(5)  =STO
 2502               * File  MainSVF.s       250
 2503 01F17 00000           CON(5)  =DOCSTR
 2504 01F1C B2000           CON(5)  43
 2505 01F21 721434F         NIBASC  \'ACOS((x0-xp0)/X1)'\
            4358282
            8703D287070392F285139272

 2506 01F47 00000           CON(5)  =DOSTR>
 2507 01F4C 00000           CON(5)  =xEVAL
 2508 01F51 00000           CON(5)  ='
 2509 01F56 00000           CON(5)  =DOLAM
 2510 01F5B 20              CON(2)  2
 2511 01F5D 6696            NIBASC  \fi\
 2512 01F61 00000           CON(5)  =STO
 2513               * File  MainSVF.s       251
 2514 01F66 00000           CON(5)  =DOCSTR
 2515 01F6B 54000           CON(5)  69
 2516 01F70 728513A         NIBASC  \'X1*EXP(-zta*wn*t)*C\
            2548505
            82D2A74716A277E6A24792A234

 2517 01F98 F435827         NIBASC  \OS(wd*t-fi)'\
            746A247
            D266969272

 2518 01FB0 00000           CON(5)  =DOSTR>
 2519 01FB5 00000           CON(5)  =xEVAL
 2520 01FBA 00000           CON(5)  ='
 2521 01FBF 00000           CON(5)  =DOLAM
 2522 01FC4 20              CON(2)  2
 2523 01FC6 8786            NIBASC  \xh\
 2524 01FCA 00000           CON(5)  =STO
 2525               * File  MainSVF.s       252
 2526 01FCF 00000           CON(5)  =SEMI
 2527               * File  MainSVF.s       253
 2528 01FD4 00000           CON(5)  =DOCOL
 2529               * File  MainSVF.s       254
 2530 01FD9 00000           CON(5)  =DOLAM
 2531 01FDE 40              CON(2)  4
 2532 01FE0 4597075         NIBASC  \Type\
            6
 2533 01FE8 00000           CON(5)  =DOCSTR
 2534 01FED 52000           CON(5)  37
 2535 01FF2 3627964         NIBASC  \criticaly Dumped\
            7963616
            C697024457D6075646

 2536 02012 00000           CON(5)  =EQUAL
 2537               * File  MainSVF.s       255
 2538 02017 00000           CON(5)  =ITE
 2539 0201C 00000           CON(5)  =DOCOL
 2540 02021 00000           CON(5)  =DOCSTR
 2541 02026 16000           CON(5)  97
 2542 0202B 7282828         NIBASC  \'((x0-xp0)+((x0-xp0)\
            703D287
            070392B282828703D287070392

 2543 02053 A277E6D         NIBASC  \*wn-xp1+v0)*t)*EXP(-\
            2870713
            B2670392A24792A254850582D2

 2544 0207B 77E6A24         NIBASC  \wn*t)'\
            79272
 2545 02087 00000           CON(5)  =DOSTR>
 2546 0208C 00000           CON(5)  =xEVAL
 2547 02091 00000           CON(5)  ='
 2548 02096 00000           CON(5)  =DOLAM
 2549 0209B 20              CON(2)  2
 2550 0209D 8786            NIBASC  \xh\
 2551 020A1 00000           CON(5)  =STO
 2552 020A6 00000           CON(5)  =SEMI
 2553               * File  MainSVF.s       256
 2554 020AB 00000           CON(5)  =DOCOL
 2555 020B0 00000           CON(5)  =DOLAM
 2556 020B5 40              CON(2)  4
 2557 020B7 4597075         NIBASC  \Type\
            6
 2558 020BF 00000           CON(5)  =DOCSTR
 2559 020C4 D1000           CON(5)  29
 2560 020C9 3757075         NIBASC  \super Dumped\
            6270244
            57D6075646

 2561 020E1 00000           CON(5)  =EQUAL
 2562               * File  MainSVF.s       257
 2563 020E6 00000           CON(5)  =ITE
 2564 020EB 00000           CON(5)  =DOCOL
 2565               * File  MainSVF.s       258
 2566 020F0 00000           CON(5)  =DOCSTR
 2567 020F5 73000           CON(5)  55
 2568 020FA 72D2A74         NIBASC  \'-zta+wn*((zta^2)-1)\
            716B277
            E6A28282A74716E52392D21392

 2569 02122 E503E25         NIBASC  \^0.5'\
            372
 2570 0212C 00000           CON(5)  =DOSTR>
 2571 02131 00000           CON(5)  =xEVAL
 2572 02136 00000           CON(5)  ='
 2573 0213B 00000           CON(5)  =DOLAM
 2574 02140 20              CON(2)  2
 2575 02142 3613            NIBASC  \c1\
 2576 02146 00000           CON(5)  =STO
 2577               * File  MainSVF.s       259
 2578 0214B 00000           CON(5)  =DOCSTR
 2579 02150 73000           CON(5)  55
 2580 02155 72D2A74         NIBASC  \'-zta-wn*((zta^2)-1)\
            716D277
            E6A28282A74716E52392D21392

 2581 0217D E503E25         NIBASC  \^0.5'\
            372
 2582 02187 00000           CON(5)  =DOSTR>
 2583 0218C 00000           CON(5)  =xEVAL
 2584 02191 00000           CON(5)  ='
 2585 02196 00000           CON(5)  =DOLAM
 2586 0219B 20              CON(2)  2
 2587 0219D 3623            NIBASC  \c2\
 2588 021A1 00000           CON(5)  =STO
 2589               * File  MainSVF.s       260
 2590 021A6 00000           CON(5)  =DOCSTR
 2591 021AB 34000           CON(5)  67
 2592 021B0 7282670         NIBASC  \'(v0-x0*c1+xp0*c1-xp\
            3D28703
            A23613B2870703A23613D28707

 2593 021D8 1392F28         NIBASC  \1)/(c2-c1)'\
            23623D2
            36139272
 2594 021EE 00000           CON(5)  =DOSTR>
 2595 021F3 00000           CON(5)  =xEVAL
 2596 021F8 00000           CON(5)  ='
 2597 021FD 00000           CON(5)  =DOLAM
 2598 02202 20              CON(2)  2
 2599 02204 3423            NIBASC  \C2\
 2600 02208 00000           CON(5)  =STO
 2601               * File  MainSVF.s       261
 2602 0220D 00000           CON(5)  =DOCSTR
 2603 02212 B1000           CON(5)  27
 2604 02217 728703D         NIBASC  \'x0-C2-xp0'\
            23423D2
            87070372
 2605 0222D 00000           CON(5)  =DOSTR>
 2606 02232 00000           CON(5)  =xEVAL
 2607 02237 00000           CON(5)  ='
 2608 0223C 00000           CON(5)  =DOLAM
 2609 02241 20              CON(2)  2
 2610 02243 3413            NIBASC  \C1\
 2611 02247 00000           CON(5)  =STO
 2612               * File  MainSVF.s       262
 2613 0224C 00000           CON(5)  =DOCSTR
 2614 02251 D3000           CON(5)  61
 2615 02256 723413A         NIBASC  \'C1*EXP(c1*t)+C2*EXP\
            2548505
            823613A24792B23423A2548505

 2616 0227E 8282362         NIBASC  \((c2*t)'\
            3A24792
            72
 2617 0228E 00000           CON(5)  =DOSTR>
 2618 02293 00000           CON(5)  =xEVAL
 2619 02298 00000           CON(5)  ='
 2620 0229D 00000           CON(5)  =DOLAM
 2621 022A2 20              CON(2)  2
 2622 022A4 8786            NIBASC  \xh\
 2623 022A8 00000           CON(5)  =STO
 2624               * File  MainSVF.s       263
 2625 022AD 00000           CON(5)  =SEMI
 2626               * File  MainSVF.s       264
 2627 022B2 00000           CON(5)  =DOCOL
 2628               * File  MainSVF.s       265
 2629 022B7 00000           CON(5)  =DOCSTR
 2630 022BC D5000           CON(5)  93
 2631 022C1 7282870         NIBASC  \'(x0-xp0)*COS(wn*t)+\
            3D28707
            0392A234F4358277E6A24792B2

 2632 022E9 8282670         NIBASC  \((v0-xp1)/wn)*SIN(wn\
            3D28707
            1392F277E692A23594E48277E6

 2633 02311 A247927         NIBASC  \*t)'\
            2
 2634 02319 00000           CON(5)  =DOSTR>
 2635 0231E 00000           CON(5)  =xEVAL
 2636 02323 00000           CON(5)  ='
 2637 02328 00000           CON(5)  =DOLAM
 2638 0232D 20              CON(2)  2
 2639 0232F 8786            NIBASC  \xh\
 2640 02333 00000           CON(5)  =STO
 2641               * File  MainSVF.s       266
 2642 02338 00000           CON(5)  =SEMI
 2643               * File  MainSVF.s       267
 2644 0233D 00000           CON(5)  =SEMI
 2645               * File  MainSVF.s       268
 2646 02342 00000           CON(5)  =SEMI
 2647               * File  MainSVF.s       269
 2648 02347 00000           CON(5)  =DOLAM
 2649 0234C 20              CON(2)  2
 2650 0234E 8786            NIBASC  \xh\
 2651 02352 00000           CON(5)  =DOLAM
 2652 02357 20              CON(2)  2
 2653 02359 8707            NIBASC  \xp\
 2654 0235D 00000           CON(5)  =x+
 2655 02362 00000           CON(5)  ='
 2656 02367 00000           CON(5)  =DOLAM
 2657 0236C 20              CON(2)  2
 2658 0236E 8747            NIBASC  \xt\
 2659 02372 00000           CON(5)  =STO
 2660               * File  MainSVF.s       270
 2661 02377 00000           CON(5)  =SEMI
 2662               * File  MainSVF.s       271
 2663
 2664               * File  MainSVF.s       272
 2665 0237C         =Fourier
 2666 0237C 00000           CON(5)  =DOCOL
 2667               * File  MainSVF.s       273
 2668 02381 00000           CON(5)  =%0
 2669 02386 00000           CON(5)  =DOLIST
 2670 0238B 00000           CON(5)  =DOLAM
 2671 02390 40              CON(2)  4
 2672 02392 86F6C64         NIBASC  \hold\
            6
 2673 0239A 00000           CON(5)  =SEMI
 2674 0239F 00000           CON(5)  =BIND
 2675               * File  MainSVF.s       274
 2676 023A4 00000           CON(5)  =DOREAL
 2677 023A9 000             NIBHEX  000
 2678 023AC 0000000         NIBHEX  000000013826
            13826
 2679 023B8 0               NIBHEX  0
 2680 023B9 00000           CON(5)  =DOLAM
 2681 023BE 10              CON(2)  1
 2682 023C0 45              NIBASC  \T\
 2683 023C2 00000           CON(5)  =%/
 2684 023C7 00000           CON(5)  ='
 2685 023CC 00000           CON(5)  =DOLAM
 2686 023D1 20              CON(2)  2
 2687 023D3 7703            NIBASC  \w0\
 2688 023D7 00000           CON(5)  =STO
 2689               * File  MainSVF.s       275
 2690 023DC 00000           CON(5)  =DOCSTR
 2691 023E1 31000           CON(5)  19
 2692 023E6 727703F         NIBASC  \'w0/wn'\
            277E672
 2693 023F4 00000           CON(5)  =DOSTR>
 2694 023F9 00000           CON(5)  =xEVAL
 2695 023FE 00000           CON(5)  ='
 2696 02403 00000           CON(5)  =DOLAM
 2697 02408 10              CON(2)  1
 2698 0240A 27              NIBASC  \r\
 2699 0240C 00000           CON(5)  =STO
 2700               * File  MainSVF.s       276
 2701
 2702               * File  MainSVF.s       277
 2703 02411 00000           CON(5)  =DOLAM
 2704 02416 20              CON(2)  2
 2705 02418 1603            NIBASC  \a0\
 2706 0241C 00000           CON(5)  =DOLAM
 2707 02421 10              CON(2)  1
 2708 02423 B4              NIBASC  \K\
 2709 02425 00000           CON(5)  =DOREAL
 2710 0242A 000             NIBHEX  000
 2711 0242D 0000000         NIBHEX  000000000002
            00002
 2712 02439 0               NIBHEX  0
 2713 0243A 00000           CON(5)  =%*
 2714 0243F 00000           CON(5)  =%/
 2715 02444 00000           CON(5)  ='
 2716 02449 00000           CON(5)  =DOLAM
 2717 0244E 20              CON(2)  2
 2718 02450 8707            NIBASC  \xp\
 2719 02454 00000           CON(5)  =STO
 2720               * File  MainSVF.s       278
 2721
 2722               * File  MainSVF.s       279
 2723 02459 00000           CON(5)  =DOLAM
 2724 0245E 10              CON(2)  1
 2725 02460 E6              NIBASC  \n\
 2726 02462 00000           CON(5)  =DOBINT
 2727 02467 20000           CON(5)  2
 2728 0246C 00000           CON(5)  =%MAX
 2729 02471 00000           CON(5)  =COERCE
 2730 02476 00000           CON(5)  =DOBINT
 2731 0247B 10000           CON(5)  1
 2732               * File  MainSVF.s       280
 2733 02480 00000           CON(5)  =DO
 2734               * File  MainSVF.s       281
 2735 02485 00000           CON(5)  =INDEX@
 2736 0248A 00000           CON(5)  =UNCOERCE
 2737 0248F 00000           CON(5)  ='
 2738 02494 00000           CON(5)  =DOLAM
 2739 02499 10              CON(2)  1
 2740 0249B E6              NIBASC  \n\
 2741 0249D 00000           CON(5)  =STO
 2742               * File  MainSVF.s       282
 2743 024A2 00000           CON(5)  =DOCSTR
 2744 024A7 15000           CON(5)  81
 2745 024AC 72B4A28         NIBASC  \'K*((1-(n*r)^2)^2+ (\
            28213D2
            82E6A22792E52392E523B20282

 2746 024D4 23A2A74         NIBASC  \2*zta*n*r)^2)^0.5'\
            716A2E6
            A22792E52392E503E25372

 2747 024F8 00000           CON(5)  =DOSTR>
 2748 024FD 00000           CON(5)  =xEVAL
 2749 02502 00000           CON(5)  ='
 2750 02507 00000           CON(5)  =DOLAM
 2751 0250C 40              CON(2)  4
 2752 0250E 86F6C64         NIBASC  \hold\
            6
 2753 02516 00000           CON(5)  =STO
 2754               * File  MainSVF.s       283
 2755
 2756               * File  MainSVF.s       284
 2757 0251B 00000           CON(5)  =DOCSTR
 2758 02520 34000           CON(5)  67
 2759 02525 7214451         NIBASC  \'ATAN(2*(zta*n*r)/(1\
            4E48223
            A282A74716A2E6A22792F28213

 2760 0254D D282E6A         NIBASC  \-(n*r)^2))'\
            22792E5
            23929272
 2761 02563 00000           CON(5)  =DOSTR>
 2762 02568 00000           CON(5)  =xEVAL
 2763 0256D 00000           CON(5)  ='
 2764 02572 00000           CON(5)  =DOLAM
 2765 02577 30              CON(2)  3
 2766 02579 6696E6          NIBASC  \fin\
 2767 0257F 00000           CON(5)  =STO
 2768               * File  MainSVF.s       285
 2769 02584 00000           CON(5)  =DOCSTR
 2770 02589 D0000           CON(5)  13
 2771 0258E 7216E67         NIBASC  \'an'\
            2
 2772 02596 00000           CON(5)  =DOSTR>
 2773 0259B 00000           CON(5)  =xEVAL
 2774 025A0 00000           CON(5)  ='
 2775 025A5 00000           CON(5)  =DOIDNT
 2776 025AA 10              CON(2)  1
 2777 025AC E6              NIBASC  \n\
 2778 025AE 00000           CON(5)  =DOLAM
 2779 025B3 10              CON(2)  1
 2780 025B5 E6              NIBASC  \n\
 2781 025B7 00000           CON(5)  =DOFLASHP
 2782 025BC 0000000         CON(7)  =^REPLACE2BY1
 2783 025C3 00000           CON(5)  =xEVAL
 2784               * File  MainSVF.s       286
 2785 025C8 00000           CON(5)  =DOLAM
 2786 025CD 40              CON(2)  4
 2787 025CF 86F6C64         NIBASC  \hold\
            6
 2788 025D7 00000           CON(5)  =%/
 2789 025DC 00000           CON(5)  ='
 2790 025E1 00000           CON(5)  =DOLAM
 2791 025E6 20              CON(2)  2
 2792 025E8 14E6            NIBASC  \An\
 2793 025EC 00000           CON(5)  =STO
 2794               * File  MainSVF.s       287
 2795 025F1 00000           CON(5)  =DOCSTR
 2796 025F6 D0000           CON(5)  13
 2797 025FB 7226E67         NIBASC  \'bn'\
            2
 2798 02603 00000           CON(5)  =DOSTR>
 2799 02608 00000           CON(5)  =xEVAL
 2800 0260D 00000           CON(5)  ='
 2801 02612 00000           CON(5)  =DOIDNT
 2802 02617 10              CON(2)  1
 2803 02619 E6              NIBASC  \n\
 2804 0261B 00000           CON(5)  =DOLAM
 2805 02620 10              CON(2)  1
 2806 02622 E6              NIBASC  \n\
 2807 02624 00000           CON(5)  =DOFLASHP
 2808 02629 0000000         CON(7)  =^REPLACE2BY1
 2809 02630 00000           CON(5)  =xEVAL
 2810               * File  MainSVF.s       288
 2811 02635 00000           CON(5)  =DOLAM
 2812 0263A 40              CON(2)  4
 2813 0263C 86F6C64         NIBASC  \hold\
            6
 2814 02644 00000           CON(5)  =%/
 2815 02649 00000           CON(5)  ='
 2816 0264E 00000           CON(5)  =DOLAM
 2817 02653 20              CON(2)  2
 2818 02655 24E6            NIBASC  \Bn\
 2819 02659 00000           CON(5)  =STO
 2820               * File  MainSVF.s       289
 2821
 2822               * File  MainSVF.s       290
 2823 0265E 00000           CON(5)  =DOLAM
 2824 02663 20              CON(2)  2
 2825 02665 8707            NIBASC  \xp\
 2826               * File  MainSVF.s       291
 2827 02669 00000           CON(5)  =DOCSTR
 2828 0266E 35000           CON(5)  83
 2829 02673 7214E6A         NIBASC  \'An*COS(n*w0*t-fin)+\
            234F435
            82E6A27703A247D26696E692B2

 2830 0269B 24E6A23         NIBASC  \Bn*COS(n*w0*t-fin)'\
            4F43582
            E6A27703A247D26696E69272

 2831 026C1 00000           CON(5)  =DOSTR>
 2832 026C6 00000           CON(5)  =xEVAL
 2833               * File  MainSVF.s       292
 2834 026CB 00000           CON(5)  =x+
 2835 026D0 00000           CON(5)  ='
 2836 026D5 00000           CON(5)  =DOLAM
 2837 026DA 20              CON(2)  2
 2838 026DC 8707            NIBASC  \xp\
 2839 026E0 00000           CON(5)  =STO
 2840               * File  MainSVF.s       293
 2841 026E5 00000           CON(5)  =LOOP
 2842               * File  MainSVF.s       294
 2843
 2844               * File  MainSVF.s       295
 2845
 2846               * File  MainSVF.s       296
 2847
 2848               * File  MainSVF.s       297
 2849 026EA 00000           CON(5)  =SEMI
 2850               * File  MainSVF.s       298
 2851
 2852               * File  MainSVF.s       299
 2853 026EF         =MenuFcos
 2854               * File  MainSVF.s       300
 2855 026EF 00000           CON(5)  =DOCOL
 2856               * File  MainSVF.s       301
 2857 026F4 00000           CON(5)  =DOCSTR
 2858 026F9 B0000           CON(5)  11
 2859 026FE 6403A3          NIBASC  \F0:\
 2860 02704 00000           CON(5)  =BINT0
 2861 02709 00000           CON(5)  =BINT8
 2862               * File  MainSVF.s       302
 2863 0270E 00000           CON(5)  =DOCSTR
 2864 02713 B0000           CON(5)  11
 2865 02718 A9              CON(2)  #9A
 2866 0271A 03A3            NIBASC  \0:\
 2867 0271E 00000           CON(5)  =BINT0
 2868 02723 00000           CON(5)  =BINT14
 2869               * File  MainSVF.s       303
 2870 02728 00000           CON(5)  =DOCSTR
 2871 0272D D0000           CON(5)  13
 2872 02732 073796A         NIBASC  \psi:\
            3
 2873 0273A 00000           CON(5)  =BINT0
 2874 0273F 00000           CON(5)  =BINT20
 2875               * File  MainSVF.s       304
 2876
 2877               * File  MainSVF.s       305
 2878               * F0
 2879               * File  MainSVF.s       306
 2880 02744 00000           CON(5)  ='DROPFALSE
 2881               * File  MainSVF.s       307
 2882 02749 00000           CON(5)  =DOBINT
 2883 0274E 51000           CON(5)  21
 2884 02753 00000           CON(5)  =DOBINT
 2885 02758 80000           CON(5)  8
 2886 0275D 00000           CON(5)  =DOBINT
 2887 02762 23000           CON(5)  50
 2888 02767 00000           CON(5)  =DOBINT
 2889 0276C 50000           CON(5)  5
 2890               * x y b h
 2891               * File  MainSVF.s       308
 2892 02771 00000           CON(5)  =BINT1
 2893 02776 00000           CON(5)  =DOLIST
 2894 0277B 00000           CON(5)  =ZERO
 2895 02780 00000           CON(5)  =EIGHT
 2896 02785 00000           CON(5)  =NINE
 2897 0278A 00000           CON(5)  =SEMI
 2898 0278F 00000           CON(5)  =BINT3
 2899               * File  MainSVF.s       309
 2900 02794 00000           CON(5)  =DOCSTR
 2901 02799 32000           CON(5)  35
 2902 0279E 64F6273         NIBASC  \Force Amplitude\
            6560214
            D607C69647574656

 2903 027BC 00000           CON(5)  =MINUSONE
 2904 027C1 00000           CON(5)  =MINUSONE
 2905 027C6 00000           CON(5)  =DOCSTR
 2906 027CB 90000           CON(5)  9
 2907 027D0 D2D2            NIBASC  \--\
 2908 027D4 00000           CON(5)  =DUP
 2909               * File  MainSVF.s       310
 2910
 2911               * File  MainSVF.s       311
 2912               * w0
 2913               * File  MainSVF.s       312
 2914 027D9 00000           CON(5)  ='DROPFALSE
 2915               * File  MainSVF.s       313
 2916 027DE 00000           CON(5)  =DOBINT
 2917 027E3 51000           CON(5)  21
 2918 027E8 00000           CON(5)  =DOBINT
 2919 027ED E0000           CON(5)  14
 2920 027F2 00000           CON(5)  =DOBINT
 2921 027F7 23000           CON(5)  50
 2922 027FC 00000           CON(5)  =DOBINT
 2923 02801 50000           CON(5)  5
 2924               * x y b h
 2925               * File  MainSVF.s       314
 2926 02806 00000           CON(5)  =BINT1
 2927 0280B 00000           CON(5)  =DOLIST
 2928 02810 00000           CON(5)  =ZERO
 2929 02815 00000           CON(5)  =EIGHT
 2930 0281A 00000           CON(5)  =NINE
 2931 0281F 00000           CON(5)  =SEMI
 2932 02824 00000           CON(5)  =BINT3
 2933               * File  MainSVF.s       315
 2934 02829 00000           CON(5)  =DOCSTR
 2935 0282E 32000           CON(5)  35
 2936 02833 64F6273         NIBASC  \Force frequence\
            6560266
            2756175756E63656

 2937 02851 00000           CON(5)  =MINUSONE
 2938 02856 00000           CON(5)  =MINUSONE
 2939 0285B 00000           CON(5)  =DOCSTR
 2940 02860 90000           CON(5)  9
 2941 02865 D2D2            NIBASC  \--\
 2942 02869 00000           CON(5)  =DUP
 2943               * File  MainSVF.s       316
 2944
 2945               * File  MainSVF.s       317
 2946               * psi
 2947               * File  MainSVF.s       318
 2948 0286E 00000           CON(5)  ='DROPFALSE
 2949               * File  MainSVF.s       319
 2950 02873 00000           CON(5)  =DOBINT
 2951 02878 51000           CON(5)  21
 2952 0287D 00000           CON(5)  =DOBINT
 2953 02882 41000           CON(5)  20
 2954 02887 00000           CON(5)  =DOBINT
 2955 0288C 23000           CON(5)  50
 2956 02891 00000           CON(5)  =DOBINT
 2957 02896 50000           CON(5)  5
 2958               * x y b h
 2959               * File  MainSVF.s       320
 2960 0289B 00000           CON(5)  =BINT1
 2961 028A0 00000           CON(5)  =DOLIST
 2962 028A5 00000           CON(5)  =ZERO
 2963 028AA 00000           CON(5)  =EIGHT
 2964 028AF 00000           CON(5)  =NINE
 2965 028B4 00000           CON(5)  =SEMI
 2966 028B9 00000           CON(5)  =BINT3
 2967               * File  MainSVF.s       321
 2968 028BE 00000           CON(5)  =DOCSTR
 2969 028C3 91000           CON(5)  25
 2970 028C8 64F6273         NIBASC  \Force fase\
            6560266
            163756
 2971 028DC 00000           CON(5)  =MINUSONE
 2972 028E1 00000           CON(5)  =MINUSONE
 2973 028E6 00000           CON(5)  =DOCSTR
 2974 028EB 90000           CON(5)  9
 2975 028F0 D2D2            NIBASC  \--\
 2976 028F4 00000           CON(5)  =DUP
 2977               * File  MainSVF.s       322
 2978
 2979               * File  MainSVF.s       323
 2980 028F9 00000           CON(5)  =BINT3
 2981 028FE 00000           CON(5)  =BINT3
 2982               * File  MainSVF.s       324
 2983 02903 00000           CON(5)  =DOROMP
 2984 02908 000000          CON(6)  =~MenuBase
 2985               * File  MainSVF.s       325
 2986 0290E 00000           CON(5)  =DOCSTR
 2987 02913 F1000           CON(5)  31
 2988 02918 1427D6F         NIBASC  \Armonic force\
            6E69636
            0266F6273656

 2989               * File  MainSVF.s       326
 2990 02932 00000           CON(5)  =DOFLASHP
 2991 02937 0000000         CON(7)  =^IfMain
 2992               * File  MainSVF.s       327
 2993
 2994               * File  MainSVF.s       328
 2995 0293E 00000           CON(5)  =DEPTH
 2996 02943 00000           CON(5)  =UNCOERCE
 2997 02948 00000           CON(5)  =%4
 2998 0294D 00000           CON(5)  =%MIN
 2999 02952 00000           CON(5)  =%4
 3000 02957 00000           CON(5)  =EQUAL
 3001               * File  MainSVF.s       329
 3002 0295C 00000           CON(5)  =IT
 3003 02961 00000           CON(5)  =DOCOL
 3004               * File  MainSVF.s       330
 3005 02966 00000           CON(5)  =SWAP
 3006               * File  MainSVF.s       331
 3007 0296B 00000           CON(5)  =xEVAL
 3008 02970 00000           CON(5)  ='
 3009 02975 00000           CON(5)  =DOLAM
 3010 0297A 30              CON(2)  3
 3011 0297C 073796          NIBASC  \psi\
 3012 02982 00000           CON(5)  =STO
 3013               * File  MainSVF.s       332
 3014 02987 00000           CON(5)  =SWAP
 3015               * File  MainSVF.s       333
 3016 0298C 00000           CON(5)  =xEVAL
 3017 02991 00000           CON(5)  ='
 3018 02996 00000           CON(5)  =DOLAM
 3019 0299B 20              CON(2)  2
 3020 0299D 7703            NIBASC  \w0\
 3021 029A1 00000           CON(5)  =STO
 3022               * File  MainSVF.s       334
 3023 029A6 00000           CON(5)  =SWAP
 3024               * File  MainSVF.s       335
 3025 029AB 00000           CON(5)  =xEVAL
 3026 029B0 00000           CON(5)  ='
 3027 029B5 00000           CON(5)  =DOLAM
 3028 029BA 20              CON(2)  2
 3029 029BC 6403            NIBASC  \F0\
 3030 029C0 00000           CON(5)  =STO
 3031               * File  MainSVF.s       336
 3032 029C5 00000           CON(5)  =SEMI
 3033               * File  MainSVF.s       337
 3034 029CA 00000           CON(5)  =SEMI
 3035               * File  MainSVF.s       338
 3036
 3037               * File  MainSVF.s       339
 3038 029CF         =MenuConvolution
 3039               * File  MainSVF.s       340
 3040 029CF 00000           CON(5)  =DOCOL
 3041               * File  MainSVF.s       341
 3042 029D4 00000           CON(5)  =DOCSTR
 3043 029D9 90000           CON(5)  9
 3044 029DE 64A3            NIBASC  \F:\
 3045 029E2 00000           CON(5)  =BINT0
 3046 029E7 00000           CON(5)  =BINT20
 3047               * File  MainSVF.s       342
 3048
 3049               * File  MainSVF.s       343
 3050               * F0
 3051               * File  MainSVF.s       344
 3052 029EC 00000           CON(5)  ='DROPFALSE
 3053               * File  MainSVF.s       345
 3054 029F1 00000           CON(5)  =DOBINT
 3055 029F6 51000           CON(5)  21
 3056 029FB 00000           CON(5)  =DOBINT
 3057 02A00 41000           CON(5)  20
 3058 02A05 00000           CON(5)  =DOBINT
 3059 02A0A 23000           CON(5)  50
 3060 02A0F 00000           CON(5)  =DOBINT
 3061 02A14 50000           CON(5)  5
 3062               * x y b h
 3063               * File  MainSVF.s       346
 3064 02A19 00000           CON(5)  =BINT1
 3065 02A1E 00000           CON(5)  =DOLIST
 3066 02A23 00000           CON(5)  =ZERO
 3067 02A28 00000           CON(5)  =EIGHT
 3068 02A2D 00000           CON(5)  =NINE
 3069 02A32 00000           CON(5)  =SEMI
 3070 02A37 00000           CON(5)  =BINT3
 3071               * File  MainSVF.s       347
 3072 02A3C 00000           CON(5)  =DOCSTR
 3073 02A41 B1000           CON(5)  27
 3074 02A46 45F6471         NIBASC  \Total force\
            6C60266
            F6273656
 3075 02A5C 00000           CON(5)  =MINUSONE
 3076 02A61 00000           CON(5)  =MINUSONE
 3077 02A66 00000           CON(5)  =DOCSTR
 3078 02A6B 90000           CON(5)  9
 3079 02A70 D2D2            NIBASC  \--\
 3080 02A74 00000           CON(5)  =DUP
 3081               * File  MainSVF.s       348
 3082
 3083               * File  MainSVF.s       349
 3084 02A79 00000           CON(5)  =BINT1
 3085 02A7E 00000           CON(5)  =BINT1
 3086               * File  MainSVF.s       350
 3087 02A83 00000           CON(5)  =DOROMP
 3088 02A88 000000          CON(6)  =~MenuBase
 3089               * File  MainSVF.s       351
 3090 02A8E 00000           CON(5)  =DOCSTR
 3091 02A93 F1000           CON(5)  31
 3092 02A98 1427D6F         NIBASC  \Armonic force\
            6E69636
            0266F6273656

 3093               * File  MainSVF.s       352
 3094 02AB2 00000           CON(5)  =DOFLASHP
 3095 02AB7 0000000         CON(7)  =^IfMain
 3096               * File  MainSVF.s       353
 3097
 3098               * File  MainSVF.s       354
 3099 02ABE 00000           CON(5)  =DEPTH
 3100 02AC3 00000           CON(5)  =UNCOERCE
 3101 02AC8 00000           CON(5)  =%2
 3102 02ACD 00000           CON(5)  =%MIN
 3103 02AD2 00000           CON(5)  =%2
 3104 02AD7 00000           CON(5)  =EQUAL
 3105               * File  MainSVF.s       355
 3106 02ADC 00000           CON(5)  =IT
 3107 02AE1 00000           CON(5)  =DOCOL
 3108               * File  MainSVF.s       356
 3109 02AE6 00000           CON(5)  =SWAP
 3110               * File  MainSVF.s       357
 3111 02AEB 00000           CON(5)  =xEVAL
 3112               * File  MainSVF.s       358
 3113 02AF0 00000           CON(5)  ='
 3114 02AF5 00000           CON(5)  =DOLAM
 3115 02AFA 20              CON(2)  2
 3116 02AFC 6403            NIBASC  \F0\
 3117 02B00 00000           CON(5)  =STO
 3118               * File  MainSVF.s       359
 3119 02B05 00000           CON(5)  =SEMI
 3120               * File  MainSVF.s       360
 3121 02B0A 00000           CON(5)  =SEMI
 3122               * File  MainSVF.s       361
 3123 02B0F         =MenuFourier
 3124 02B0F 00000           CON(5)  =DOCOL
 3125               * File  MainSVF.s       362
 3126 02B14 00000           CON(5)  =DOCSTR
 3127 02B19 90000           CON(5)  9
 3128 02B1E 45A3            NIBASC  \T:\
 3129 02B22 00000           CON(5)  =DOBINT
 3130 02B27 00000           CON(5)  0
 3131 02B2C 00000           CON(5)  =DOBINT
 3132 02B31 80000           CON(5)  8
 3133               * File  MainSVF.s       363
 3134 02B36 00000           CON(5)  =DOCSTR
 3135 02B3B B0000           CON(5)  11
 3136 02B40 1603A3          NIBASC  \a0:\
 3137 02B46 00000           CON(5)  =DOBINT
 3138 02B4B 00000           CON(5)  0
 3139 02B50 00000           CON(5)  =DOBINT
 3140 02B55 E0000           CON(5)  14
 3141               * File  MainSVF.s       364
 3142 02B5A 00000           CON(5)  =DOCSTR
 3143 02B5F B0000           CON(5)  11
 3144 02B64 16E6A3          NIBASC  \an:\
 3145 02B6A 00000           CON(5)  =DOBINT
 3146 02B6F 00000           CON(5)  0
 3147 02B74 00000           CON(5)  =DOBINT
 3148 02B79 41000           CON(5)  20
 3149               * File  MainSVF.s       365
 3150 02B7E 00000           CON(5)  =DOCSTR
 3151 02B83 B0000           CON(5)  11
 3152 02B88 26E6A3          NIBASC  \bn:\
 3153 02B8E 00000           CON(5)  =DOBINT
 3154 02B93 00000           CON(5)  0
 3155 02B98 00000           CON(5)  =DOBINT
 3156 02B9D A1000           CON(5)  26
 3157               * File  MainSVF.s       366
 3158 02BA2 00000           CON(5)  =DOCSTR
 3159 02BA7 B0000           CON(5)  11
 3160 02BAC E602A3          NIBASC  \n :\
 3161 02BB2 00000           CON(5)  =DOBINT
 3162 02BB7 00000           CON(5)  0
 3163 02BBC 00000           CON(5)  =DOBINT
 3164 02BC1 02000           CON(5)  32
 3165               * File  MainSVF.s       367
 3166
 3167               * File  MainSVF.s       368
 3168               * T
 3169               * File  MainSVF.s       369
 3170 02BC6 00000           CON(5)  ='DROPFALSE
 3171               * File  MainSVF.s       370
 3172 02BCB 00000           CON(5)  =DOBINT
 3173 02BD0 51000           CON(5)  21
 3174 02BD5 00000           CON(5)  =DOBINT
 3175 02BDA 80000           CON(5)  8
 3176 02BDF 00000           CON(5)  =DOBINT
 3177 02BE4 23000           CON(5)  50
 3178 02BE9 00000           CON(5)  =DOBINT
 3179 02BEE 50000           CON(5)  5
 3180               * x y b h
 3181               * File  MainSVF.s       371
 3182 02BF3 00000           CON(5)  =BINT1
 3183 02BF8 00000           CON(5)  =DOLIST
 3184 02BFD 00000           CON(5)  =ZERO
 3185 02C02 00000           CON(5)  =EIGHT
 3186 02C07 00000           CON(5)  =NINE
 3187 02C0C 00000           CON(5)  =SEMI
 3188 02C11 00000           CON(5)  =BINT3
 3189               * File  MainSVF.s       372
 3190 02C16 00000           CON(5)  =DOCSTR
 3191 02C1B 50000           CON(5)  5
 3192 02C20 00000           CON(5)  =MINUSONE
 3193 02C25 00000           CON(5)  =MINUSONE
 3194 02C2A 00000           CON(5)  =DOLAM
 3195 02C2F 10              CON(2)  1
 3196 02C31 45              NIBASC  \T\
 3197 02C33 00000           CON(5)  =DUP
 3198               * File  MainSVF.s       373
 3199
 3200               * File  MainSVF.s       374
 3201               * a0
 3202               * File  MainSVF.s       375
 3203 02C38 00000           CON(5)  ='DROPFALSE
 3204               * File  MainSVF.s       376
 3205 02C3D 00000           CON(5)  =DOBINT
 3206 02C42 51000           CON(5)  21
 3207 02C47 00000           CON(5)  =DOBINT
 3208 02C4C E0000           CON(5)  14
 3209 02C51 00000           CON(5)  =DOBINT
 3210 02C56 23000           CON(5)  50
 3211 02C5B 00000           CON(5)  =DOBINT
 3212 02C60 50000           CON(5)  5
 3213               * x y b h
 3214               * File  MainSVF.s       377
 3215 02C65 00000           CON(5)  =BINT1
 3216 02C6A 00000           CON(5)  =DOLIST
 3217 02C6F 00000           CON(5)  =ZERO
 3218 02C74 00000           CON(5)  =EIGHT
 3219 02C79 00000           CON(5)  =NINE
 3220 02C7E 00000           CON(5)  =SEMI
 3221 02C83 00000           CON(5)  =BINT3
 3222               * File  MainSVF.s       378
 3223 02C88 00000           CON(5)  =DOCSTR
 3224 02C8D B1000           CON(5)  27
 3225 02C92 34F6E63         NIBASC  \Constant a0\
            74716E6
            47021603
 3226 02CA8 00000           CON(5)  =MINUSONE
 3227 02CAD 00000           CON(5)  =MINUSONE
 3228 02CB2 00000           CON(5)  =DOLAM
 3229 02CB7 20              CON(2)  2
 3230 02CB9 1603            NIBASC  \a0\
 3231 02CBD 00000           CON(5)  =DUP
 3232               * File  MainSVF.s       379
 3233
 3234               * File  MainSVF.s       380
 3235               * an
 3236               * File  MainSVF.s       381
 3237 02CC2 00000           CON(5)  ='DROPFALSE
 3238               * File  MainSVF.s       382
 3239 02CC7 00000           CON(5)  =DOBINT
 3240 02CCC 51000           CON(5)  21
 3241 02CD1 00000           CON(5)  =DOBINT
 3242 02CD6 41000           CON(5)  20
 3243 02CDB 00000           CON(5)  =DOBINT
 3244 02CE0 23000           CON(5)  50
 3245 02CE5 00000           CON(5)  =DOBINT
 3246 02CEA 50000           CON(5)  5
 3247               * x y b h
 3248               * File  MainSVF.s       383
 3249 02CEF 00000           CON(5)  =BINT1
 3250 02CF4 00000           CON(5)  =DOLIST
 3251 02CF9 00000           CON(5)  =ZERO
 3252 02CFE 00000           CON(5)  =EIGHT
 3253 02D03 00000           CON(5)  =NINE
 3254 02D08 00000           CON(5)  =SEMI
 3255 02D0D 00000           CON(5)  =BINT3
 3256               * File  MainSVF.s       384
 3257 02D12 00000           CON(5)  =DOCSTR
 3258 02D17 B1000           CON(5)  27
 3259 02D1C 5417571         NIBASC  \Equation an\
            64796F6
            E60216E6
 3260 02D32 00000           CON(5)  =MINUSONE
 3261 02D37 00000           CON(5)  =MINUSONE
 3262 02D3C 00000           CON(5)  =DOLAM
 3263 02D41 20              CON(2)  2
 3264 02D43 16E6            NIBASC  \an\
 3265 02D47 00000           CON(5)  =DUP
 3266               * File  MainSVF.s       385
 3267
 3268               * File  MainSVF.s       386
 3269               * bn
 3270               * File  MainSVF.s       387
 3271 02D4C 00000           CON(5)  ='DROPFALSE
 3272               * File  MainSVF.s       388
 3273 02D51 00000           CON(5)  =DOBINT
 3274 02D56 51000           CON(5)  21
 3275 02D5B 00000           CON(5)  =DOBINT
 3276 02D60 A1000           CON(5)  26
 3277 02D65 00000           CON(5)  =DOBINT
 3278 02D6A 23000           CON(5)  50
 3279 02D6F 00000           CON(5)  =DOBINT
 3280 02D74 50000           CON(5)  5
 3281               * x y b h
 3282               * File  MainSVF.s       389
 3283 02D79 00000           CON(5)  =BINT1
 3284 02D7E 00000           CON(5)  =DOLIST
 3285 02D83 00000           CON(5)  =ZERO
 3286 02D88 00000           CON(5)  =EIGHT
 3287 02D8D 00000           CON(5)  =NINE
 3288 02D92 00000           CON(5)  =SEMI
 3289 02D97 00000           CON(5)  =BINT3
 3290               * File  MainSVF.s       390
 3291 02D9C 00000           CON(5)  =DOCSTR
 3292 02DA1 B1000           CON(5)  27
 3293 02DA6 5417571         NIBASC  \Equation bn\
            64796F6
            E60226E6
 3294 02DBC 00000           CON(5)  =MINUSONE
 3295 02DC1 00000           CON(5)  =MINUSONE
 3296 02DC6 00000           CON(5)  =DOLAM
 3297 02DCB 20              CON(2)  2
 3298 02DCD 26E6            NIBASC  \bn\
 3299 02DD1 00000           CON(5)  =DUP
 3300               * File  MainSVF.s       391
 3301
 3302               * File  MainSVF.s       392
 3303               * j
 3304               * File  MainSVF.s       393
 3305 02DD6 00000           CON(5)  ='DROPFALSE
 3306               * File  MainSVF.s       394
 3307 02DDB 00000           CON(5)  =DOBINT
 3308 02DE0 51000           CON(5)  21
 3309 02DE5 00000           CON(5)  =DOBINT
 3310 02DEA 02000           CON(5)  32
 3311 02DEF 00000           CON(5)  =DOBINT
 3312 02DF4 23000           CON(5)  50
 3313 02DF9 00000           CON(5)  =DOBINT
 3314 02DFE 50000           CON(5)  5
 3315               * x y b h
 3316               * File  MainSVF.s       395
 3317 02E03 00000           CON(5)  =BINT1
 3318 02E08 00000           CON(5)  =DOLIST
 3319 02E0D 00000           CON(5)  =ZERO
 3320 02E12 00000           CON(5)  =SEMI
 3321 02E17 00000           CON(5)  =BINT3
 3322               * File  MainSVF.s       396
 3323 02E1C 00000           CON(5)  =DOCSTR
 3324 02E21 B2000           CON(5)  43
 3325 02E26 84F6770         NIBASC  \How many calculate:\
            2D616E6
            97023616C63657C6164756A3

 3326 02E4C 00000           CON(5)  =MINUSONE
 3327 02E51 00000           CON(5)  =MINUSONE
 3328 02E56 00000           CON(5)  =%4
 3329 02E5B 00000           CON(5)  =DUP
 3330               * File  MainSVF.s       397
 3331
 3332               * File  MainSVF.s       398
 3333 02E60 00000           CON(5)  =DOBINT
 3334 02E65 50000           CON(5)  5
 3335 02E6A 00000           CON(5)  =DOBINT
 3336 02E6F 50000           CON(5)  5
 3337               * File  MainSVF.s       399
 3338 02E74 00000           CON(5)  =DOROMP
 3339 02E79 000000          CON(6)  =~MenuBase
 3340               * File  MainSVF.s       400
 3341 02E7F 00000           CON(5)  =DOCSTR
 3342 02E84 52000           CON(5)  37
 3343 02E89 0202D45         NIBASC  \  Menu Fourier  \
            6E65702
            64F657279656270202

 3344               * File  MainSVF.s       401
 3345 02EA9 00000           CON(5)  =DOFLASHP
 3346 02EAE 0000000         CON(7)  =^IfMain
 3347               * File  MainSVF.s       402
 3348
 3349               * File  MainSVF.s       403
 3350 02EB5 00000           CON(5)  =SWAP
 3351 02EBA 00000           CON(5)  ='
 3352 02EBF 00000           CON(5)  =DOLAM
 3353 02EC4 10              CON(2)  1
 3354 02EC6 E6              NIBASC  \n\
 3355 02EC8 00000           CON(5)  =STO
 3356               * File  MainSVF.s       404
 3357
 3358               * File  MainSVF.s       405
 3359 02ECD 00000           CON(5)  =SEMI
 3360               * File  MainSVF.s       406
 3361 02ED2         =MenuExponential
 3362 02ED2 00000           CON(5)  =DOCOL
 3363               * File  MainSVF.s       407
 3364 02ED7 00000           CON(5)  =DOCSTR
 3365 02EDC 32000           CON(5)  35
 3366 02EE1 E4F6470         NIBASC  \Not implemented\
            296D607
            C656D656E6475646

 3367 02EFF 00000           CON(5)  =DOBINT
 3368 02F04 00000           CON(5)  0
 3369 02F09 00000           CON(5)  =DOBINT
 3370 02F0E 80000           CON(5)  8
 3371               * File  MainSVF.s       408
 3372 02F13 00000           CON(5)  =DOBINT
 3373 02F18 10000           CON(5)  1
 3374 02F1D 00000           CON(5)  =DOBINT
 3375 02F22 00000           CON(5)  0
 3376               * File  MainSVF.s       409
 3377 02F27 00000           CON(5)  =DOROMP
 3378 02F2C 000000          CON(6)  =~MenuBase
 3379               * File  MainSVF.s       410
 3380 02F32 00000           CON(5)  =DOCSTR
 3381 02F37 52000           CON(5)  37
 3382 02F3C 0202D45         NIBASC  \  Menu Fourier  \
            6E65702
            64F657279656270202

 3383               * File  MainSVF.s       411
 3384 02F5C 00000           CON(5)  =DOFLASHP
 3385 02F61 0000000         CON(7)  =^IfMain
 3386               * File  MainSVF.s       412
 3387 02F68 00000           CON(5)  =SEMI
 3388               * File  MainSVF.s       413
 3389
 3390               * File  MainSVF.s       414
 3391 02F6D         =SDFResults
 3392               * File  MainSVF.s       415
 3393 02F6D 00000           CON(5)  =DOCOL
 3394               * File  MainSVF.s       416
 3395
 3396               * File  MainSVF.s       417
 3397 02F72 00000           CON(5)  =DOCSTR
 3398 02F77 F0000           CON(5)  15
 3399 02F7C 4597075         NIBASC  \Type:\
            6A3
 3400 02F86 00000           CON(5)  =DOBINT
 3401 02F8B 00000           CON(5)  0
 3402 02F90 00000           CON(5)  =DOBINT
 3403 02F95 80000           CON(5)  8
 3404               * File  MainSVF.s       418
 3405 02F9A 00000           CON(5)  =DOCSTR
 3406 02F9F D0000           CON(5)  13
 3407 02FA4 A74716A         NIBASC  \zta:\
            3
 3408 02FAC 00000           CON(5)  =DOBINT
 3409 02FB1 00000           CON(5)  0
 3410 02FB6 00000           CON(5)  =DOBINT
 3411 02FBB E0000           CON(5)  14
 3412               * File  MainSVF.s       419
 3413 02FC0 00000           CON(5)  =DOCSTR
 3414 02FC5 F0000           CON(5)  15
 3415 02FCA 8782479         NIBASC  \x(t)=\
            2D3
 3416 02FD4 00000           CON(5)  =DOBINT
 3417 02FD9 00000           CON(5)  0
 3418 02FDE 00000           CON(5)  =DOBINT
 3419 02FE3 41000           CON(5)  20
 3420               * File  MainSVF.s       420
 3421 02FE8 00000           CON(5)  =DOCSTR
 3422 02FED B0000           CON(5)  11
 3423 02FF2 A9              CON(2)  #9A
 3424 02FF4 E6A3            NIBASC  \n:\
 3425 02FF8 00000           CON(5)  =DOBINT
 3426 02FFD 00000           CON(5)  0
 3427 03002 00000           CON(5)  =DOBINT
 3428 03007 E1000           CON(5)  30
 3429               * File  MainSVF.s       421
 3430 0300C 00000           CON(5)  =DOCSTR
 3431 03011 B0000           CON(5)  11
 3432 03016 A9              CON(2)  #9A
 3433 03018 46A3            NIBASC  \d:\
 3434 0301C 00000           CON(5)  =DOBINT
 3435 03021 00000           CON(5)  0
 3436 03026 00000           CON(5)  =DOBINT
 3437 0302B 42000           CON(5)  36
 3438               * File  MainSVF.s       422
 3439 03030 00000           CON(5)  =DOCSTR
 3440 03035 B0000           CON(5)  11
 3441 0303A 3413A3          NIBASC  \C1:\
 3442 03040 00000           CON(5)  =DOBINT
 3443 03045 00000           CON(5)  0
 3444 0304A 00000           CON(5)  =DOBINT
 3445 0304F A2000           CON(5)  42
 3446               * File  MainSVF.s       423
 3447 03054 00000           CON(5)  =DOCSTR
 3448 03059 B0000           CON(5)  11
 3449 0305E 3423A3          NIBASC  \C2:\
 3450 03064 00000           CON(5)  =DOBINT
 3451 03069 00000           CON(5)  0
 3452 0306E 00000           CON(5)  =DOBINT
 3453 03073 03000           CON(5)  48
 3454               * File  MainSVF.s       424
 3455 03078 00000           CON(5)  =DOCSTR
 3456 0307D D0000           CON(5)  13
 3457 03082 669603A         NIBASC  \fi0:\
            3
 3458 0308A 00000           CON(5)  =DOBINT
 3459 0308F 00000           CON(5)  0
 3460 03094 00000           CON(5)  =DOBINT
 3461 03099 63000           CON(5)  54
 3462               * File  MainSVF.s       425
 3463 0309E 00000           CON(5)  =DOCSTR
 3464 030A3 11000           CON(5)  17
 3465 030A8 8782470         NIBASC  \x(t0)=\
            392D3
 3466 030B4 00000           CON(5)  =DOBINT
 3467 030B9 00000           CON(5)  0
 3468 030BE 00000           CON(5)  =DOBINT
 3469 030C3 C3000           CON(5)  60
 3470               * File  MainSVF.s       426
 3471
 3472               * File  MainSVF.s       427
 3473 030C8 00000           CON(5)  =DOROMP
 3474 030CD 000000          CON(6)  =~SDFdraw
 3475               * File  MainSVF.s       428
 3476
 3477               * File  MainSVF.s       429
 3478               * type
 3479               * File  MainSVF.s       430
 3480 030D3 00000           CON(5)  ='DROPFALSE
 3481               * File  MainSVF.s       431
 3482 030D8 00000           CON(5)  =DOBINT
 3483 030DD 51000           CON(5)  21
 3484 030E2 00000           CON(5)  =DOBINT
 3485 030E7 80000           CON(5)  8
 3486 030EC 00000           CON(5)  =DOBINT
 3487 030F1 23000           CON(5)  50
 3488 030F6 00000           CON(5)  =DOBINT
 3489 030FB 50000           CON(5)  5
 3490               * x y b h
 3491               * File  MainSVF.s       432
 3492 03100 00000           CON(5)  =BINT1
 3493 03105 00000           CON(5)  =DOLIST
 3494 0310A 00000           CON(5)  =ZERO
 3495 0310F 00000           CON(5)  =SEMI
 3496 03114 00000           CON(5)  =BINT3
 3497               * File  MainSVF.s       433
 3498 03119 00000           CON(5)  =DOCSTR
 3499 0311E D1000           CON(5)  29
 3500 03123 4457D60         NIBASC  \Dumping type\
            796E676
            0247970756

 3501 0313B 00000           CON(5)  =MINUSONE
 3502 03140 00000           CON(5)  =MINUSONE
 3503 03145 00000           CON(5)  =DOLAM
 3504 0314A 40              CON(2)  4
 3505 0314C 4597075         NIBASC  \Type\
            6
 3506 03154 00000           CON(5)  =DUP
 3507               * File  MainSVF.s       434
 3508
 3509               * File  MainSVF.s       435
 3510               * zeta
 3511               * File  MainSVF.s       436
 3512 03159 00000           CON(5)  ='DROPFALSE
 3513               * File  MainSVF.s       437
 3514 0315E 00000           CON(5)  =DOBINT
 3515 03163 01000           CON(5)  16
 3516 03168 00000           CON(5)  =DOBINT
 3517 0316D E0000           CON(5)  14
 3518 03172 00000           CON(5)  =DOBINT
 3519 03177 23000           CON(5)  50
 3520 0317C 00000           CON(5)  =DOBINT
 3521 03181 50000           CON(5)  5
 3522               * x y b h
 3523               * File  MainSVF.s       438
 3524 03186 00000           CON(5)  =BINT1
 3525               * File  MainSVF.s       439
 3526 0318B 00000           CON(5)  =DOLIST
 3527 03190 00000           CON(5)  =ZERO
 3528 03195 00000           CON(5)  =SEMI
 3529 0319A 00000           CON(5)  =BINT3
 3530               * File  MainSVF.s       440
 3531 0319F 00000           CON(5)  =DOCSTR
 3532 031A4 D0000           CON(5)  13
 3533 031A9 A756471         NIBASC  \zeta\
            6
 3534 031B1 00000           CON(5)  =MINUSONE
 3535 031B6 00000           CON(5)  =MINUSONE
 3536 031BB 00000           CON(5)  =DOLAM
 3537 031C0 30              CON(2)  3
 3538 031C2 A74716          NIBASC  \zta\
 3539 031C8 00000           CON(5)  =DUP
 3540               * File  MainSVF.s       441
 3541
 3542               * File  MainSVF.s       442
 3543               * xt
 3544               * File  MainSVF.s       443
 3545 031CD 00000           CON(5)  ='DROPFALSE
 3546               * File  MainSVF.s       444
 3547 031D2 00000           CON(5)  =DOBINT
 3548 031D7 91000           CON(5)  25
 3549 031DC 00000           CON(5)  =DOBINT
 3550 031E1 41000           CON(5)  20
 3551 031E6 00000           CON(5)  =DOBINT
 3552 031EB 54000           CON(5)  69
 3553 031F0 00000           CON(5)  =DOBINT
 3554 031F5 50000           CON(5)  5
 3555               * x y b h
 3556               * File  MainSVF.s       445
 3557 031FA 00000           CON(5)  =BINT1
 3558 031FF 00000           CON(5)  =DOLIST
 3559 03204 00000           CON(5)  =ZERO
 3560 03209 00000           CON(5)  =SEMI
 3561               * File  MainSVF.s       446
 3562 0320E 00000           CON(5)  =BINT3
 3563               * File  MainSVF.s       447
 3564 03213 00000           CON(5)  =DOCSTR
 3565 03218 D0000           CON(5)  13
 3566 0321D 8782479         NIBASC  \x(t)\
            2
 3567 03225 00000           CON(5)  =MINUSONE
 3568 0322A 00000           CON(5)  =MINUSONE
 3569 0322F 00000           CON(5)  =DOLAM
 3570 03234 20              CON(2)  2
 3571 03236 8747            NIBASC  \xt\
 3572 0323A 00000           CON(5)  =xEVAL
 3573 0323F 00000           CON(5)  =DUP
 3574               * File  MainSVF.s       448
 3575
 3576               * File  MainSVF.s       449
 3577               * wn
 3578               * File  MainSVF.s       450
 3579 03244 00000           CON(5)  ='DROPFALSE
 3580               * File  MainSVF.s       451
 3581 03249 00000           CON(5)  =DOBINT
 3582 0324E 31000           CON(5)  19
 3583 03253 00000           CON(5)  =DOBINT
 3584 03258 E1000           CON(5)  30
 3585 0325D 00000           CON(5)  =DOBINT
 3586 03262 23000           CON(5)  50
 3587 03267 00000           CON(5)  =DOBINT
 3588 0326C 50000           CON(5)  5
 3589               * x y b h
 3590               * File  MainSVF.s       452
 3591 03271 00000           CON(5)  =BINT1
 3592 03276 00000           CON(5)  =DOLIST
 3593 0327B 00000           CON(5)  =ZERO
 3594 03280 00000           CON(5)  =EIGHT
 3595 03285 00000           CON(5)  =NINE
 3596 0328A 00000           CON(5)  =SEMI
 3597 0328F 00000           CON(5)  =BINT3
 3598               * File  MainSVF.s       453
 3599 03294 00000           CON(5)  =DOCSTR
 3600 03299 73000           CON(5)  55
 3601 0329E E416475         NIBASC  \Natural frequence (r\
            72716C6
            02662756175756E63656028227

 3602 032C6 1646F23         NIBASC  \ad/s)\
            792
 3603 032D0 00000           CON(5)  =MINUSONE
 3604 032D5 00000           CON(5)  =MINUSONE
 3605 032DA 00000           CON(5)  =DOLAM
 3606 032DF 20              CON(2)  2
 3607 032E1 77E6            NIBASC  \wn\
 3608 032E5 00000           CON(5)  =DUP
 3609               * File  MainSVF.s       454
 3610
 3611               * File  MainSVF.s       455
 3612               * wd
 3613               * File  MainSVF.s       456
 3614 032EA 00000           CON(5)  ='DROPFALSE
 3615               * File  MainSVF.s       457
 3616 032EF 00000           CON(5)  =DOBINT
 3617 032F4 31000           CON(5)  19
 3618 032F9 00000           CON(5)  =DOBINT
 3619 032FE 42000           CON(5)  36
 3620 03303 00000           CON(5)  =DOBINT
 3621 03308 23000           CON(5)  50
 3622 0330D 00000           CON(5)  =DOBINT
 3623 03312 50000           CON(5)  5
 3624               * x y b h
 3625               * File  MainSVF.s       458
 3626 03317 00000           CON(5)  =BINT1
 3627 0331C 00000           CON(5)  =DOLIST
 3628 03321 00000           CON(5)  =ZERO
 3629 03326 00000           CON(5)  =SEMI
 3630 0332B 00000           CON(5)  =BINT3
 3631               * File  MainSVF.s       459
 3632 03330 00000           CON(5)  =DOCSTR
 3633 03335 53000           CON(5)  53
 3634 0333A 4457D60         NIBASC  \Dumped frequence (ra\
            7564602
            662756175756E6365602822716

 3635 03362 46F2379         NIBASC  \d/s)\
            2
 3636 0336A 00000           CON(5)  =MINUSONE
 3637 0336F 00000           CON(5)  =MINUSONE
 3638 03374 00000           CON(5)  =DOLAM
 3639 03379 20              CON(2)  2
 3640 0337B 7746            NIBASC  \wd\
 3641 0337F 00000           CON(5)  =DUP
 3642               * File  MainSVF.s       460
 3643
 3644               * File  MainSVF.s       461
 3645               * C1
 3646               * File  MainSVF.s       462
 3647 03384 00000           CON(5)  ='DROPFALSE
 3648               * File  MainSVF.s       463
 3649 03389 00000           CON(5)  =DOBINT
 3650 0338E 41000           CON(5)  20
 3651 03393 00000           CON(5)  =DOBINT
 3652 03398 A2000           CON(5)  42
 3653 0339D 00000           CON(5)  =DOBINT
 3654 033A2 23000           CON(5)  50
 3655 033A7 00000           CON(5)  =DOBINT
 3656 033AC 50000           CON(5)  5
 3657               * x y b h
 3658               * File  MainSVF.s       464
 3659 033B1 00000           CON(5)  =BINT1
 3660 033B6 00000           CON(5)  =DOLIST
 3661 033BB 00000           CON(5)  =ZERO
 3662 033C0 00000           CON(5)  =SEMI
 3663 033C5 00000           CON(5)  =BINT3
 3664               * File  MainSVF.s       465
 3665 033CA 00000           CON(5)  =DOCSTR
 3666 033CF 91000           CON(5)  25
 3667 033D4 34F6E63         NIBASC  \Constant 1\
            74716E6
            470213
 3668 033E8 00000           CON(5)  =MINUSONE
 3669 033ED 00000           CON(5)  =MINUSONE
 3670 033F2 00000           CON(5)  =DOLAM
 3671 033F7 20              CON(2)  2
 3672 033F9 3413            NIBASC  \C1\
 3673 033FD 00000           CON(5)  =DUP
 3674               * File  MainSVF.s       466
 3675
 3676               * File  MainSVF.s       467
 3677               * C2
 3678               * File  MainSVF.s       468
 3679 03402 00000           CON(5)  ='DROPFALSE
 3680               * File  MainSVF.s       469
 3681 03407 00000           CON(5)  =DOBINT
 3682 0340C 71000           CON(5)  23
 3683 03411 00000           CON(5)  =DOBINT
 3684 03416 03000           CON(5)  48
 3685 0341B 00000           CON(5)  =DOBINT
 3686 03420 23000           CON(5)  50
 3687 03425 00000           CON(5)  =DOBINT
 3688 0342A 50000           CON(5)  5
 3689               * x y b h
 3690               * File  MainSVF.s       470
 3691 0342F 00000           CON(5)  =BINT1
 3692 03434 00000           CON(5)  =DOLIST
 3693 03439 00000           CON(5)  =ZERO
 3694 0343E 00000           CON(5)  =SEMI
 3695 03443 00000           CON(5)  =BINT3
 3696               * File  MainSVF.s       471
 3697 03448 00000           CON(5)  =DOCSTR
 3698 0344D 91000           CON(5)  25
 3699 03452 34F6E63         NIBASC  \Constant 2\
            74716E6
            470223
 3700 03466 00000           CON(5)  =MINUSONE
 3701 0346B 00000           CON(5)  =MINUSONE
 3702 03470 00000           CON(5)  =DOLAM
 3703 03475 20              CON(2)  2
 3704 03477 3423            NIBASC  \C2\
 3705 0347B 00000           CON(5)  =DUP
 3706               * File  MainSVF.s       472
 3707
 3708               * File  MainSVF.s       473
 3709               * fi0
 3710               * File  MainSVF.s       474
 3711 03480 00000           CON(5)  ='DROPFALSE
 3712               * File  MainSVF.s       475
 3713 03485 00000           CON(5)  =DOBINT
 3714 0348A 71000           CON(5)  23
 3715 0348F 00000           CON(5)  =DOBINT
 3716 03494 63000           CON(5)  54
 3717 03499 00000           CON(5)  =DOBINT
 3718 0349E 23000           CON(5)  50
 3719 034A3 00000           CON(5)  =DOBINT
 3720 034A8 50000           CON(5)  5
 3721               * x y b h
 3722               * File  MainSVF.s       476
 3723 034AD 00000           CON(5)  =BINT1
 3724 034B2 00000           CON(5)  =DOLIST
 3725 034B7 00000           CON(5)  =ZERO
 3726 034BC 00000           CON(5)  =SEMI
 3727 034C1 00000           CON(5)  =BINT3
 3728               * File  MainSVF.s       477
 3729 034C6 00000           CON(5)  =DOCSTR
 3730 034CB 52000           CON(5)  37
 3731 034D0 6416375         NIBASC  \Fase angle (rad)\
            60216E6
            76C656028227164692

 3732 034F0 00000           CON(5)  =MINUSONE
 3733 034F5 00000           CON(5)  =MINUSONE
 3734 034FA 00000           CON(5)  =DOLAM
 3735 034FF 30              CON(2)  3
 3736 03501 669603          NIBASC  \fi0\
 3737 03507 00000           CON(5)  =DUP
 3738               * File  MainSVF.s       478
 3739
 3740               * File  MainSVF.s       479
 3741               * t0
 3742               * File  MainSVF.s       480
 3743 0350C 00000           CON(5)  ='DROPFALSE
 3744               * File  MainSVF.s       481
 3745 03511 00000           CON(5)  =DOBINT
 3746 03516 A1000           CON(5)  26
 3747 0351B 00000           CON(5)  =DOBINT
 3748 03520 C3000           CON(5)  60
 3749 03525 00000           CON(5)  =DOBINT
 3750 0352A 23000           CON(5)  50
 3751 0352F 00000           CON(5)  =DOBINT
 3752 03534 50000           CON(5)  5
 3753               * x y b h
 3754               * File  MainSVF.s       482
 3755 03539 00000           CON(5)  =BINT1
 3756 0353E 00000           CON(5)  =DOLIST
 3757 03543 00000           CON(5)  =ZERO
 3758 03548 00000           CON(5)  =SEMI
 3759 0354D 00000           CON(5)  =BINT3
 3760               * File  MainSVF.s       483
 3761 03552 00000           CON(5)  =DOCSTR
 3762 03557 B1000           CON(5)  27
 3763 0355C 2756175         NIBASC  \requested t\
            7563747
            56460247
 3764 03572 00000           CON(5)  =MINUSONE
 3765 03577 00000           CON(5)  =MINUSONE
 3766 0357C 00000           CON(5)  =DOLAM
 3767 03581 20              CON(2)  2
 3768 03583 1403            NIBASC  \A0\
 3769 03587 00000           CON(5)  =DUP
 3770               * File  MainSVF.s       484
 3771
 3772               * File  MainSVF.s       485
 3773
 3774               * File  MainSVF.s       486
 3775 0358C 00000           CON(5)  =DOBINT
 3776 03591 A0000           CON(5)  10
 3777 03596 00000           CON(5)  =DOBINT
 3778 0359B 90000           CON(5)  9
 3779               * File  MainSVF.s       487
 3780 035A0 00000           CON(5)  =DOROMP
 3781 035A5 000000          CON(6)  =~MenuBase
 3782               * File  MainSVF.s       488
 3783 035AB 00000           CON(5)  =DOCSTR
 3784 035B0 33000           CON(5)  51
 3785 035B5 020284F         NIBASC  \  Homogeneus Solutio\
            6D6F676
            56E65657370235F6C6574796F6

 3786 035DD E60202          NIBASC  \n  \
 3787               * File  MainSVF.s       489
 3788 035E3 00000           CON(5)  =DOFLASHP
 3789 035E8 0000000         CON(7)  =^IfMain
 3790               * File  MainSVF.s       490
 3791 035EF 00000           CON(5)  =SEMI
 3792               * File  MainSVF.s       491
 3793
 3794               * File  MainSVF.s       492
 3795 035F4         =ForcedResults
 3796               * File  MainSVF.s       493
 3797 035F4 00000           CON(5)  =DOCOL
 3798               * File  MainSVF.s       494
 3799 035F9 00000           CON(5)  =DOCSTR
 3800 035FE 11000           CON(5)  17
 3801 03603 8707824         NIBASC  \xp(t)=\
            792D3
 3802 0360F 00000           CON(5)  =DOBINT
 3803 03614 00000           CON(5)  0
 3804 03619 00000           CON(5)  =DOBINT
 3805 0361E 80000           CON(5)  8
 3806               * File  MainSVF.s       495
 3807 03623 00000           CON(5)  =DOCSTR
 3808 03628 90000           CON(5)  9
 3809 0362D 27A3            NIBASC  \r:\
 3810 03631 00000           CON(5)  =DOBINT
 3811 03636 00000           CON(5)  0
 3812 0363B 00000           CON(5)  =DOBINT
 3813 03640 E0000           CON(5)  14
 3814               * File  MainSVF.s       496
 3815 03645 00000           CON(5)  =DOCSTR
 3816 0364A 90000           CON(5)  9
 3817 0364F 85A3            NIBASC  \X:\
 3818 03653 00000           CON(5)  =DOBINT
 3819 03658 00000           CON(5)  0
 3820 0365D 00000           CON(5)  =DOBINT
 3821 03662 41000           CON(5)  20
 3822               * File  MainSVF.s       497
 3823 03667 00000           CON(5)  =DOCSTR
 3824 0366C D0000           CON(5)  13
 3825 03671 29              CON(2)  #92
 3826 03673 3747A3          NIBASC  \st:\
 3827 03679 00000           CON(5)  =DOBINT
 3828 0367E 00000           CON(5)  0
 3829 03683 00000           CON(5)  =DOBINT
 3830 03688 E1000           CON(5)  30
 3831               * File  MainSVF.s       498
 3832 0368D 00000           CON(5)  =DOCSTR
 3833 03692 B0000           CON(5)  11
 3834 03697 6696A3          NIBASC  \fi:\
 3835 0369D 00000           CON(5)  =DOBINT
 3836 036A2 00000           CON(5)  0
 3837 036A7 00000           CON(5)  =DOBINT
 3838 036AC 42000           CON(5)  36
 3839               * File  MainSVF.s       499
 3840 036B1 00000           CON(5)  =DOCSTR
 3841 036B6 D1000           CON(5)  29
 3842 036BB 74E2023         NIBASC  \G. Solution:\
            5F6C657
            4796F6E6A3

 3843 036D3 00000           CON(5)  =DOBINT
 3844 036D8 00000           CON(5)  0
 3845 036DD 00000           CON(5)  =DOBINT
 3846 036E2 C2000           CON(5)  44
 3847               * File  MainSVF.s       500
 3848 036E7 00000           CON(5)  =DOCSTR
 3849 036EC 11000           CON(5)  17
 3850 036F1 8782470         NIBASC  \x(t0):\
            392A3
 3851 036FD 00000           CON(5)  =DOBINT
 3852 03702 00000           CON(5)  0
 3853 03707 00000           CON(5)  =DOBINT
 3854 0370C 83000           CON(5)  56
 3855               * File  MainSVF.s       501
 3856
 3857               * File  MainSVF.s       502
 3858 03711 00000           CON(5)  =DOROMP
 3859 03716 000000          CON(6)  =~SDFdraw
 3860               * File  MainSVF.s       503
 3861
 3862               * File  MainSVF.s       504
 3863               * xp 1
 3864               * File  MainSVF.s       505
 3865 0371C 00000           CON(5)  ='DROPFALSE
 3866               * File  MainSVF.s       506
 3867 03721 00000           CON(5)  =DOBINT
 3868 03726 91000           CON(5)  25
 3869 0372B 00000           CON(5)  =DOBINT
 3870 03730 80000           CON(5)  8
 3871 03735 00000           CON(5)  =DOBINT
 3872 0373A 23000           CON(5)  50
 3873 0373F 00000           CON(5)  =DOBINT
 3874 03744 50000           CON(5)  5
 3875               * x y b h
 3876               * File  MainSVF.s       507
 3877 03749 00000           CON(5)  =BINT1
 3878 0374E 00000           CON(5)  =DOLIST
 3879 03753 00000           CON(5)  =ZERO
 3880 03758 00000           CON(5)  =SEMI
 3881 0375D 00000           CON(5)  =BINT3
 3882               * File  MainSVF.s       508
 3883 03762 00000           CON(5)  =DOCSTR
 3884 03767 B2000           CON(5)  43
 3885 0376C 0516274         NIBASC  \Particular solution\
            7963657
            C616270237F6C6574796F6E6

 3886 03792 00000           CON(5)  =MINUSONE
 3887 03797 00000           CON(5)  =MINUSONE
 3888 0379C 00000           CON(5)  =DOLAM
 3889 037A1 20              CON(2)  2
 3890 037A3 8707            NIBASC  \xp\
 3891 037A7 00000           CON(5)  =DUP
 3892               * File  MainSVF.s       509
 3893
 3894               * File  MainSVF.s       510
 3895               * r 2
 3896               * File  MainSVF.s       511
 3897 037AC 00000           CON(5)  ='DROPFALSE
 3898               * File  MainSVF.s       512
 3899 037B1 00000           CON(5)  =DOBINT
 3900 037B6 F0000           CON(5)  15
 3901 037BB 00000           CON(5)  =DOBINT
 3902 037C0 E0000           CON(5)  14
 3903 037C5 00000           CON(5)  =DOBINT
 3904 037CA 23000           CON(5)  50
 3905 037CF 00000           CON(5)  =DOBINT
 3906 037D4 50000           CON(5)  5
 3907               * x y b h
 3908               * File  MainSVF.s       513
 3909 037D9 00000           CON(5)  =BINT1
 3910               * File  MainSVF.s       514
 3911 037DE 00000           CON(5)  =DOLIST
 3912 037E3 00000           CON(5)  =ZERO
 3913 037E8 00000           CON(5)  =SEMI
 3914 037ED 00000           CON(5)  =BINT3
 3915               * File  MainSVF.s       515
 3916 037F2 00000           CON(5)  =DOCSTR
 3917 037F7 32000           CON(5)  35
 3918 037FC 6427561         NIBASC  \Frequence ratio\
            75756E6
            36560227164796F6

 3919 0381A 00000           CON(5)  =MINUSONE
 3920 0381F 00000           CON(5)  =MINUSONE
 3921 03824 00000           CON(5)  =DOLAM
 3922 03829 10              CON(2)  1
 3923 0382B 27              NIBASC  \r\
 3924 0382D 00000           CON(5)  =DUP
 3925               * File  MainSVF.s       516
 3926
 3927               * File  MainSVF.s       517
 3928               * X 3
 3929               * File  MainSVF.s       518
 3930 03832 00000           CON(5)  ='DROPFALSE
 3931               * File  MainSVF.s       519
 3932 03837 00000           CON(5)  =DOBINT
 3933 0383C F0000           CON(5)  15
 3934 03841 00000           CON(5)  =DOBINT
 3935 03846 41000           CON(5)  20
 3936 0384B 00000           CON(5)  =DOBINT
 3937 03850 54000           CON(5)  69
 3938 03855 00000           CON(5)  =DOBINT
 3939 0385A 50000           CON(5)  5
 3940               * x y b h
 3941               * File  MainSVF.s       520
 3942 0385F 00000           CON(5)  =BINT1
 3943 03864 00000           CON(5)  =DOLIST
 3944 03869 00000           CON(5)  =ZERO
 3945 0386E 00000           CON(5)  =SEMI
 3946               * File  MainSVF.s       521
 3947 03873 00000           CON(5)  =BINT3
 3948               * File  MainSVF.s       522
 3949 03878 00000           CON(5)  =DOCSTR
 3950 0387D 71000           CON(5)  23
 3951 03882 14D607C         NIBASC  \Amplitude\
            6964757
            4656
 3952 03894 00000           CON(5)  =MINUSONE
 3953 03899 00000           CON(5)  =MINUSONE
 3954 0389E 00000           CON(5)  =DOLAM
 3955 038A3 10              CON(2)  1
 3956 038A5 85              NIBASC  \X\
 3957 038A7 00000           CON(5)  =DUP
 3958               * File  MainSVF.s       523
 3959
 3960               * File  MainSVF.s       524
 3961               * del 4
 3962               * File  MainSVF.s       525
 3963 038AC 00000           CON(5)  ='DROPFALSE
 3964               * File  MainSVF.s       526
 3965 038B1 00000           CON(5)  =DOBINT
 3966 038B6 31000           CON(5)  19
 3967 038BB 00000           CON(5)  =DOBINT
 3968 038C0 E1000           CON(5)  30
 3969 038C5 00000           CON(5)  =DOBINT
 3970 038CA 64000           CON(5)  70
 3971 038CF 00000           CON(5)  =DOBINT
 3972 038D4 50000           CON(5)  5
 3973               * x y b h
 3974               * File  MainSVF.s       527
 3975 038D9 00000           CON(5)  =BINT1
 3976 038DE 00000           CON(5)  =DOLIST
 3977 038E3 00000           CON(5)  =ZERO
 3978 038E8 00000           CON(5)  =EIGHT
 3979 038ED 00000           CON(5)  =NINE
 3980 038F2 00000           CON(5)  =SEMI
 3981 038F7 00000           CON(5)  =BINT3
 3982               * File  MainSVF.s       528
 3983 038FC 00000           CON(5)  =DOCSTR
 3984 03901 F3000           CON(5)  63
 3985 03906 445666C         NIBASC  \Deflection under sta\
            6563647
            96F6E60257E646562702374716

 3986 0392E 4796360         NIBASC  \tic force\
            266F627
            3656
 3987 03940 00000           CON(5)  =MINUSONE
 3988 03945 00000           CON(5)  =MINUSONE
 3989 0394A 00000           CON(5)  =DOLAM
 3990 0394F 30              CON(2)  3
 3991 03951 4656C6          NIBASC  \del\
 3992 03957 00000           CON(5)  =DUP
 3993               * File  MainSVF.s       529
 3994
 3995               * File  MainSVF.s       530
 3996               * fic 5
 3997               * File  MainSVF.s       531
 3998 0395C 00000           CON(5)  ='DROPFALSE
 3999               * File  MainSVF.s       532
 4000 03961 00000           CON(5)  =DOBINT
 4001 03966 31000           CON(5)  19
 4002 0396B 00000           CON(5)  =DOBINT
 4003 03970 42000           CON(5)  36
 4004 03975 00000           CON(5)  =DOBINT
 4005 0397A 64000           CON(5)  70
 4006 0397F 00000           CON(5)  =DOBINT
 4007 03984 60000           CON(5)  6
 4008               * x y b h
 4009               * File  MainSVF.s       533
 4010 03989 00000           CON(5)  =BINT1
 4011 0398E 00000           CON(5)  =DOLIST
 4012 03993 00000           CON(5)  =ZERO
 4013 03998 00000           CON(5)  =SEMI
 4014 0399D 00000           CON(5)  =BINT3
 4015               * File  MainSVF.s       534
 4016 039A2 00000           CON(5)  =DOCSTR
 4017 039A7 F0000           CON(5)  15
 4018 039AC 8227164         NIBASC  \(rad)\
            692
 4019 039B6 00000           CON(5)  =MINUSONE
 4020 039BB 00000           CON(5)  =MINUSONE
 4021 039C0 00000           CON(5)  =DOLAM
 4022 039C5 30              CON(2)  3
 4023 039C7 669636          NIBASC  \fic\
 4024 039CD 00000           CON(5)  =DUP
 4025               * File  MainSVF.s       535
 4026
 4027               * File  MainSVF.s       536
 4028               * xg 6
 4029               * File  MainSVF.s       537
 4030 039D2 00000           CON(5)  ='DROPFALSE
 4031               * File  MainSVF.s       538
 4032 039D7 00000           CON(5)  =DOBINT
 4033 039DC 00000           CON(5)  0
 4034 039E1 00000           CON(5)  =DOBINT
 4035 039E6 23000           CON(5)  50
 4036 039EB 00000           CON(5)  =DOBINT
 4037 039F0 46000           CON(5)  100
 4038 039F5 00000           CON(5)  =DOBINT
 4039 039FA 60000           CON(5)  6
 4040               * x y b h
 4041               * File  MainSVF.s       539
 4042 039FF 00000           CON(5)  =BINT1
 4043 03A04 00000           CON(5)  =DOLIST
 4044 03A09 00000           CON(5)  =ZERO
 4045 03A0E 00000           CON(5)  =SEMI
 4046 03A13 00000           CON(5)  =BINT3
 4047               * File  MainSVF.s       540
 4048 03A18 00000           CON(5)  =DOCSTR
 4049 03A1D F1000           CON(5)  31
 4050 03A22 8786824         NIBASC  \xh(t) + xp(t)\
            79202B2
            028707824792

 4051 03A3C 00000           CON(5)  =MINUSONE
 4052 03A41 00000           CON(5)  =MINUSONE
 4053 03A46 00000           CON(5)  =DOLAM
 4054 03A4B 20              CON(2)  2
 4055 03A4D 8747            NIBASC  \xt\
 4056 03A51 00000           CON(5)  =DUP
 4057               * File  MainSVF.s       541
 4058
 4059               * File  MainSVF.s       542
 4060               * t0 7
 4061               * File  MainSVF.s       543
 4062 03A56 00000           CON(5)  ='DROPFALSE
 4063               * File  MainSVF.s       544
 4064 03A5B 00000           CON(5)  =DOBINT
 4065 03A60 E1000           CON(5)  30
 4066 03A65 00000           CON(5)  =DOBINT
 4067 03A6A 83000           CON(5)  56
 4068 03A6F 00000           CON(5)  =DOBINT
 4069 03A74 46000           CON(5)  100
 4070 03A79 00000           CON(5)  =DOBINT
 4071 03A7E 60000           CON(5)  6
 4072               * x y b h
 4073               * File  MainSVF.s       545
 4074 03A83 00000           CON(5)  =BINT1
 4075 03A88 00000           CON(5)  =DOLIST
 4076 03A8D 00000           CON(5)  =ZERO
 4077 03A92 00000           CON(5)  =SEMI
 4078 03A97 00000           CON(5)  =BINT3
 4079               * File  MainSVF.s       546
 4080 03A9C 00000           CON(5)  =DOCSTR
 4081 03AA1 B1000           CON(5)  27
 4082 03AA6 2756175         NIBASC  \requested t\
            7563747
            56460247
 4083 03ABC 00000           CON(5)  =MINUSONE
 4084 03AC1 00000           CON(5)  =MINUSONE
 4085 03AC6 00000           CON(5)  =DOLAM
 4086 03ACB 20              CON(2)  2
 4087 03ACD 1403            NIBASC  \A0\
 4088 03AD1 00000           CON(5)  =DUP
 4089               * File  MainSVF.s       547
 4090
 4091               * File  MainSVF.s       548
 4092 03AD6 00000           CON(5)  =DOBINT
 4093 03ADB 80000           CON(5)  8
 4094 03AE0 00000           CON(5)  =DOBINT
 4095 03AE5 70000           CON(5)  7
 4096               * File  MainSVF.s       549
 4097 03AEA 00000           CON(5)  =DOROMP
 4098 03AEF 000000          CON(6)  =~MenuBase
 4099               * File  MainSVF.s       550
 4100 03AF5 00000           CON(5)  =DOCSTR
 4101 03AFA F2000           CON(5)  47
 4102 03AFF 0202051         NIBASC  \  Particular Result \
            6274796
            3657C616270225563757C64702

 4103 03B27 02              NIBASC  \ \
 4104               * File  MainSVF.s       551
 4105 03B29 00000           CON(5)  =DOFLASHP
 4106 03B2E 0000000         CON(7)  =^IfMain
 4107               * File  MainSVF.s       552
 4108 03B35 00000           CON(5)  =SEMI
 4109               * File  MainSVF.s       553
 4110
 4111               * File  MainSVF.s       554
 4112
 4113               * File  MainSVF.s       555
 4114 03B3A         =ForceMenu
 4115               * File  MainSVF.s       556
 4116 03B3A 00000           CON(5)  =DOCOL
 4117               * File  MainSVF.s       557
 4118 03B3F 00000           CON(5)  =DOCSTR
 4119 03B44 B1000           CON(5)  27
 4120 03B49 64F6273         NIBASC  \Force type:\
            6560247
            970756A3
 4121 03B5F 00000           CON(5)  =DOBINT
 4122 03B64 00000           CON(5)  0
 4123 03B69 00000           CON(5)  =DOBINT
 4124 03B6E 80000           CON(5)  8
 4125               * File  MainSVF.s       558
 4126
 4127               * File  MainSVF.s       559
 4128 03B73 00000           CON(5)  =DOROMP
 4129 03B78 000000          CON(6)  =~SDFdraw
 4130               * File  MainSVF.s       560
 4131
 4132               * File  MainSVF.s       561
 4133               * std
 4134               * File  MainSVF.s       562
 4135 03B7E 00000           CON(5)  ='DROPFALSE
 4136 03B83 00000           CON(5)  =DOBINT
 4137 03B88 D2000           CON(5)  45
 4138 03B8D 00000           CON(5)  =DOBINT
 4139 03B92 80000           CON(5)  8
 4140 03B97 00000           CON(5)  =DOBINT
 4141 03B9C C3000           CON(5)  60
 4142 03BA1 00000           CON(5)  =DOBINT
 4143 03BA6 50000           CON(5)  5
 4144               * x y b h
 4145               * File  MainSVF.s       563
 4146 03BAB 00000           CON(5)  =BINT12
 4147               * File  MainSVF.s       564
 4148 03BB0 00000           CON(5)  =MINUSONE
 4149 03BB5 00000           CON(5)  =BINT1
 4150               * File  MainSVF.s       565
 4151 03BBA 00000           CON(5)  =DOCSTR
 4152 03BBF 12000           CON(5)  33
 4153 03BC4 5487964         NIBASC  \Exitation type\
            7164796
            F6E60247970756

 4154               * File  MainSVF.s       566
 4155 03BE0 00000           CON(5)  =DOLAM
 4156 03BE5 01              CON(2)  16
 4157 03BE7 66F6572         NIBASC  \fourierAvaliable\
            7965627
            146716C6961626C656

 4158 03C07 00000           CON(5)  =%1
 4159 03C0C 00000           CON(5)  =EQUAL
 4160               * File  MainSVF.s       567
 4161 03C11 00000           CON(5)  =ITE
 4162 03C16 00000           CON(5)  =DOCOL
 4163 03C1B 00000           CON(5)  =DOLIST
 4164 03C20 00000           CON(5)  =DOCSTR
 4165 03C25 D0000           CON(5)  13
 4166 03C2A E4F6E65         NIBASC  \None\
            6
 4167 03C32 00000           CON(5)  =DOCSTR
 4168 03C37 52000           CON(5)  37
 4169 03C3C 6403A23         NIBASC  \F0*COS(w0*t+psi)\
            4F43582
            7703A247B207379692

 4170 03C5C 00000           CON(5)  =DOCSTR
 4171 03C61 52000           CON(5)  37
 4172 03C66 6403A23         NIBASC  \F0*SIN(w0*t+psi)\
            594E482
            7703A247B207379692

 4173 03C86 00000           CON(5)  =DOCSTR
 4174 03C8B B1000           CON(5)  27
 4175 03C90 34F6E66         NIBASC  \Convolution\
            7F6C657
            4796F6E6
 4176 03CA6 00000           CON(5)  =DOCSTR
 4177 03CAB F1000           CON(5)  31
 4178 03CB0 64F6572         NIBASC  \Fourier serie\
            7965627
            023756279656

 4179 03CCA 00000           CON(5)  =SEMI
 4180 03CCF 00000           CON(5)  =SEMI
 4181               * File  MainSVF.s       568
 4182 03CD4 00000           CON(5)  =DOCOL
 4183 03CD9 00000           CON(5)  =DOLIST
 4184 03CDE 00000           CON(5)  =DOCSTR
 4185 03CE3 D0000           CON(5)  13
 4186 03CE8 E4F6E65         NIBASC  \None\
            6
 4187 03CF0 00000           CON(5)  =DOCSTR
 4188 03CF5 52000           CON(5)  37
 4189 03CFA 6403A23         NIBASC  \F0*COS(w0*t+psi)\
            4F43582
            7703A247B207379692

 4190 03D1A 00000           CON(5)  =DOCSTR
 4191 03D1F 52000           CON(5)  37
 4192 03D24 6403A23         NIBASC  \F0*SIN(w0*t+psi)\
            594E482
            7703A247B207379692

 4193 03D44 00000           CON(5)  =DOCSTR
 4194 03D49 B1000           CON(5)  27
 4195 03D4E 34F6E66         NIBASC  \Convolution\
            7F6C657
            4796F6E6
 4196 03D64 00000           CON(5)  =SEMI
 4197 03D69 00000           CON(5)  =SEMI
 4198               * File  MainSVF.s       569
 4199 03D6E 00000           CON(5)  =BINT2
 4200 03D73 00000           CON(5)  =DOCSTR
 4201 03D78 D0000           CON(5)  13
 4202 03D7D E4F6E65         NIBASC  \None\
            6
 4203 03D85 00000           CON(5)  =DUP
 4204               * File  MainSVF.s       570
 4205
 4206               * File  MainSVF.s       571
 4207 03D8A 00000           CON(5)  =DOBINT
 4208 03D8F 20000           CON(5)  2
 4209 03D94 00000           CON(5)  =DOBINT
 4210 03D99 10000           CON(5)  1
 4211               * File  MainSVF.s       572
 4212 03D9E 00000           CON(5)  =DOROMP
 4213 03DA3 000000          CON(6)  =~MenuBase
 4214               * File  MainSVF.s       573
 4215 03DA9 00000           CON(5)  =DOCSTR
 4216 03DAE 12000           CON(5)  33
 4217 03DB3 020264F         NIBASC  \  Force type  \
            6273656
            02479707560202

 4218               * File  MainSVF.s       574
 4219 03DCF 00000           CON(5)  =DOFLASHP
 4220 03DD4 0000000         CON(7)  =^IfMain
 4221               * File  MainSVF.s       575
 4222 03DDB 00000           CON(5)  =SEMI
 4223               * File  MainSVF.s       576
 4224
 4225               * File  MainSVF.s       577
 4226 03DE0         =MenuBase
 4227               * File  MainSVF.s       578
 4228 03DE0 00000           CON(5)  =DOCOL
 4229               * File  MainSVF.s       579
 4230 03DE5 00000           CON(5)  ='
 4231               * File  MainSVF.s       580
 4232 03DEA 00000           CON(5)  =DOCOL
 4233               * File  MainSVF.s       581
 4234               * Handle a new menu
 4235               * File  MainSVF.s       582
 4236 03DEF 00000           CON(5)  =ELEVEN
 4237 03DF4 00000           CON(5)  =OVER#=case
 4238               * File  MainSVF.s       583
 4239 03DF9 00000           CON(5)  =DOCOL
 4240               * File  MainSVF.s       584
 4241 03DFE 00000           CON(5)  =DROP
 4242               * File  MainSVF.s       585
 4243 03E03 00000           CON(5)  =DOLIST
 4244 03E08 00000           CON(5)  =DOLIST
 4245 03E0D 00000           CON(5)  =DOCSTR
 4246 03E12 D0000           CON(5)  13
 4247 03E17 5446964         NIBASC  \Edit\
            7
 4248 03E1F 00000           CON(5)  =DOFLASHP
 4249 03E24 0000000         CON(7)  =^IfKeyEdit
 4250 03E2B 00000           CON(5)  =SEMI
 4251               * File  MainSVF.s       586
 4252 03E30 00000           CON(5)  =DOLIST
 4253 03E35 00000           CON(5)  =DOCSTR
 4254 03E3A D0000           CON(5)  13
 4255 03E3F 059636B         NIBASC  \Pick\
            6
 4256 03E47 00000           CON(5)  =DOFLASHP
 4257 03E4C 0000000         CON(7)  =^IfKeyChoose
 4258 03E53 00000           CON(5)  =SEMI
 4259               * File  MainSVF.s       587
 4260 03E58 00000           CON(5)  =NullMenuKey
 4261               * File  MainSVF.s       588
 4262 03E5D 00000           CON(5)  =NullMenuKey
 4263               * File  MainSVF.s       589
 4264 03E62 00000           CON(5)  =DOLIST
 4265 03E67 00000           CON(5)  =DOCSTR
 4266 03E6C D0000           CON(5)  13
 4267 03E71 241636B         NIBASC  \Back\
            6
 4268 03E79 00000           CON(5)  =DOFLASHP
 4269 03E7E 0000000         CON(7)  =^IfONKeyPress
 4270 03E85 00000           CON(5)  =SEMI
 4271               * File  MainSVF.s       590
 4272 03E8A 00000           CON(5)  =DOLIST
 4273 03E8F 00000           CON(5)  =DOCSTR
 4274 03E94 B0000           CON(5)  11
 4275 03E99 74F412          NIBASC  \GO!\
 4276 03E9F 00000           CON(5)  =DOFLASHP
 4277 03EA4 0000000         CON(7)  =^IfEnterKeyPress
 4278 03EAB 00000           CON(5)  =SEMI
 4279 03EB0 00000           CON(5)  =SEMI
 4280               * File  MainSVF.s       591
 4281 03EB5 00000           CON(5)  =TRUE
 4282               * File  MainSVF.s       592
 4283 03EBA 00000           CON(5)  =SEMI
 4284               * File  MainSVF.s       593
 4285               * Handle the GO! Just exit
 4286               * File  MainSVF.s       594
 4287 03EBF 00000           CON(5)  =SIXTEEN
 4288 03EC4 00000           CON(5)  =OVER#=case
 4289               * File  MainSVF.s       595
 4290 03EC9 00000           CON(5)  =DOCOL
 4291               * File  MainSVF.s       596
 4292 03ECE 00000           CON(5)  =TRUE
 4293 03ED3 00000           CON(5)  =TRUE
 4294               * File  MainSVF.s       597
 4295 03ED8 00000           CON(5)  =SEMI
 4296               * File  MainSVF.s       598
 4297 03EDD 00000           CON(5)  =FOURTEEN
 4298 03EE2 00000           CON(5)  =OVER#=case
 4299               * File  MainSVF.s       599
 4300 03EE7 00000           CON(5)  =DOCOL
 4301               * File  MainSVF.s       600
 4302 03EEC 00000           CON(5)  =DROP
 4303               * Remove the message number
 4304               * File  MainSVF.s       601
 4305 03EF1 00000           CON(5)  =ClrDAsOK
 4306               * Refresh entire display
 4307               * File  MainSVF.s       602
 4308 03EF6 00000           CON(5)  =TRUE
 4309               * End the informbox
 4310               * File  MainSVF.s       603
 4311 03EFB 00000           CON(5)  =TRUE
 4312               * This message handled
 4313               * File  MainSVF.s       604
 4314 03F00 00000           CON(5)  =SEMI
 4315               * File  MainSVF.s       605
 4316 03F05 00000           CON(5)  =DROPFALSE
 4317               * File  MainSVF.s       606
 4318 03F0A 00000           CON(5)  =SEMI
 4319               * File  MainSVF.s       607
 4320 03F0F 00000           CON(5)  =SEMI
 4321               * File  MainSVF.s       608
 4322 03F14         =SDFdraw
 4323               * File  MainSVF.s       609
 4324 03F14 00000           CON(5)  =DOCOL
 4325               * File  MainSVF.s       610
 4326 03F19 00000           CON(5)  =DOGROB
 4327 03F1E F5100           CON(5)  351
 4328 03F23 A2000A1         NIBHEX  A2000A1000094294
            0000942
            94
 4329 03F33 0084294         NIBHEX  0084294200CFFFFF
            200CFFF
            FF
 4330 03F43 0008004         NIBHEX  0008004000080040
            0000800
            40
 4331 03F53 0008004         NIBHEX  0008004000180040
            0001800
            40
 4332 03F63 009C004         NIBHEX  009C004000540048
            0005400
            48
 4333 03F73 303C305         NIBHEX  303C305900502019
            9005020
            19
 4334 03F83 009C30F         NIBHEX  009C30F930040040
            9300400
            40
 4335 03F93 000C304         NIBHEX  000C304000002040
            0000020
            40
 4336 03FA3 0008304         NIBHEX  0008304000080040
            0000800
            40
 4337 03FB3 0008004         NIBHEX  00080040000FFFF3
            0000FFF
            F3
 4338 03FC3 0001000         NIBHEX  0001000200010002
            2000100
            02
 4339 03FD3 0001000         NIBHEX  0001000200018802
            2000188
            02
 4340 03FE3 00018D0         NIBHEX  00018D0200018A02
            200018A
            02
 4341 03FF3 0001880         NIBHEX  0001880200010002
            2000100
            02
 4342 04003 0001000         NIBHEX  0001000200010002
            2000100
            02
 4343 04013 0001000         NIBHEX  0001000200010002
            2000100
            02
 4344 04023 000FFFF         NIBHEX  000FFFF300000000
            3000000
            00
 4345 04033 0000020         NIBHEX  0000020000000200
            0000002
            00
 4346 04043 0000020         NIBHEX  0000020000008F00
            000008F
            00
 4347 04053 000007E         NIBHEX  000007E000000220
            0000002
            20
 4348 04063 0000006         NIBHEX  0000006000000020
            0000000
            20
 4349 04073 0000002         NIBHEX  0000002000
            000
 4350               * File  MainSVF.s       611
 4351 0407D 00000           CON(5)  =DOBINT
 4352 04082 96000           CON(5)  105
 4353 04087 00000           CON(5)  =DOBINT
 4354 0408C 01000           CON(5)  16
 4355               * File  MainSVF.s       612
 4356 04091 00000           CON(5)  =SEMI
 4357               * File  MainSVF.s       613
 4358
 4359               * File  MainSVF.s       614
 4360
 4361               * File  MainSVF.s       615
 4362
 4363               * File  MainSVF.s       616
 4364
 4365               * File  MainSVF.s       617
 4366
 4367               * File  MainSVF.s       618
 4368
 4369               * File  MainSVF.s       619
 4370
 4371               * File  MainSVF.s       620
 4372
 4373               * File  MainSVF.s       621
 4374
 4375               * File  MainSVF.s       622
 4376
 4377               * File  MainSVF.s       623
 4378
 4379               * File  MainSVF.s       624
 4380
 4381               * File  MainSVF.s       625
 4382
 4383               * File  MainSVF.s       626
 4384
 4385               * File  MainSVF.s       627
 4386
 4387               * File  MainSVF.s       628
 4388
 4389               * File  MainSVF.s       629
 4390
Saturn Assembler                                       Tue May 22 21:55:38 2018
V3.0.9 (04/15/2007)   Symbol Table                       MainSVF.a      Page    2

 %*                                Ext                   -  1432  1438  2213
                                        2488  2496  2713
 %+                                Ext                   -  2214  2489
 %-                                Ext                   -  1482  2052
 %/                                Ext                   -  1411  1421  1439
                                        2683  2714  2788  2814
 %0                                Ext                   -   956  1072  1073
                                        1074  1075  1076  1077  1078  1104  1105
                                        1106  1107  1108  1109  1110  1111  1143
                                        1144  1145  1146  1147  1148  1181  1463
                                        1758  1764  1973  1999  2000  2001  2002
                                        2409  2410  2411  2412  2443  2668
 %1                                Ext                   -   989  1506  1508
                                        1940  4158
 %2                                Ext                   -  3101  3103
 %4                                Ext                   -   966   968  2997
                                        2999  3328
 %ABS                              Ext                   -  1483  2053
 %MAX                              Ext                   -  1488  1507  2058
                                        2728
 %MIN                              Ext                   -   967  2998  3102
 %SQRT                             Ext                   -  1412  1433  2215
                                        2490
 '                                 Ext                   -   937   990  1007
                                        1025  1043  1061  1354  1617  1635  1642
                                        1659  1670  1681  1695  1712  1723  1735
                                        1747  1778  1790  1803  1816  1833  1844
                                        1855  1866  1878  1887  1905  1920  1934
                                        1941  1955  2026  2037  2075  2088  2113
                                        2125  2137  2153  2165  2177  2217  2229
                                        2241  2268  2293  2305  2317  2328  2340
                                        2357  2376  2393  2435  2444  2455  2497
                                        2508  2520  2547  2572  2584  2596  2607
                                        2619  2636  2655  2684  2695  2715  2737
                                        2749  2763  2774  2789  2800  2815  2835
                                        3008  3017  3026  3113  3351  4230
 'DROPFALSE                        Ext                   -  2880  2914  2948
                                        3052  3170  3203  3237  3271  3305  3480
                                        3512  3545  3579  3614  3647  3679  3711
                                        3743  3865  3897  3930  3963  3998  4030
                                        4062  4135
 ABND                              Ext                   -  1360
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
 BIND                              Ext                   -   962   988  1102
                                        1138  1172  1187  1200  1398  1452  1993
                                        2017  2427  2674
 BINT0                             Ext                   -  2860  2867  2873
                                        3045
 BINT1                             Ext                   -  2892  2926  2960
                                        3064  3084  3085  3182  3215  3249  3283
                                        3317  3492  3524  3557  3591  3626  3659
                                        3691  3723  3755  3877  3909  3942  3975
                                        4010  4042  4074  4149
 BINT12                            Ext                   -  4146
 BINT14                            Ext                   -  2868
 BINT2                             Ext                   -  4199
 BINT20                            Ext                   -  2874  3046
 BINT3                             Ext                   -  2898  2932  2966
                                        2980  2981  3070  3188  3221  3255  3289
                                        3321  3496  3529  3562  3597  3630  3663
                                        3695  3727  3759  3881  3914  3947  3981
                                        4014  4046  4078
 BINT8                             Ext                   -  2861
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
 COERCE                            Ext                   -  2729
 CREATE                            Ext                   -   950  1629
 CarefulBit                        Abs       3 #00000003 -   282
 CarefulFl                         Abs       4 #00000004 -   210   281   282
 CarefulNib                        Abs       0 #00000000 -   281
 ClockFmtBit                       Abs       0 #00000000 -   285
 ClockFmtFl                        Abs      41 #00000029 -   242   284   285
 ClockFmtNib                       Abs      10 #0000000A -   284
 ClockOnBit                        Abs       3 #00000003 -   288
 ClockOnFl                         Abs      40 #00000028 -   241   287   288
 ClockOnNib                        Abs       9 #00000009 -   287
 ClrDAsOK                          Ext                   -  4305
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
=Convolution                       Rel    7425 #00001D01 -  2406
 DEPTH                             Ext                   -   964  1304  2995
                                        3099
 DO                                Ext                   -  2733
 DOBINT                            Ext                   -   952  2726  2730
                                        2882  2884  2886  2888  2916  2918  2920
                                        2922  2950  2952  2954  2956  3054  3056
                                        3058  3060  3129  3131  3137  3139  3145
                                        3147  3153  3155  3161  3163  3172  3174
                                        3176  3178  3205  3207  3209  3211  3239
                                        3241  3243  3245  3273  3275  3277  3279
                                        3307  3309  3311  3313  3333  3335  3367
                                        3369  3372  3374  3400  3402  3408  3410
                                        3416  3418  3425  3427  3434  3436  3442
                                        3444  3450  3452  3458  3460  3466  3468
                                        3482  3484  3486  3488  3514  3516  3518
                                        3520  3547  3549  3551  3553  3581  3583
                                        3585  3587  3616  3618  3620  3622  3649
                                        3651  3653  3655  3681  3683  3685  3687
                                        3713  3715  3717  3719  3745  3747  3749
                                        3751  3775  3777  3802  3804  3810  3812
                                        3818  3820  3827  3829  3835  3837  3843
                                        3845  3851  3853  3867  3869  3871  3873
                                        3899  3901  3903  3905  3932  3934  3936
                                        3938  3965  3967  3969  3971  4000  4002
                                        4004  4006  4032  4034  4036  4038  4064
                                        4066  4068  4070  4092  4094  4121  4123
                                        4136  4138  4140  4142  4207  4209  4351
                                        4353
 DOCOL                             Ext                   -   935   972  1001
                                        1019  1037  1055  1193  1215  1235  1240
                                        1251  1256  1265  1270  1286  1316  1373
                                        1376  1468  1473  1497  1502  1513  1518
                                        1535  1549  1569  1574  1585  1590  1615
                                        1654  1707  1771  1785  1828  1898  1968
                                        1977  2068  2106  2146  2197  2249  2260
                                        2275  2285  2348  2384  2407  2472  2528
                                        2539  2554  2564  2627  2666  2855  3003
                                        3040  3107  3124  3362  3393  3797  4116
                                        4162  4182  4228  4232  4239  4290  4300
                                        4324
 DOCSTR                            Ext                   -  1140  1208  1220
                                        1228  1245  1310  1336  1344  1542  1554
                                        1562  1579  1656  1665  1676  1689  1709
                                        1718  1729  1741  1772  1797  1830  1839
                                        1850  1861  1872  1902  1913  1926  1947
                                        2021  2032  2069  2082  2099  2108  2120
                                        2132  2148  2160  2172  2191  2199  2205
                                        2223  2235  2254  2261  2279  2287  2299
                                        2311  2323  2334  2350  2386  2429  2450
                                        2466  2474  2480  2503  2514  2533  2540
                                        2558  2566  2578  2590  2602  2613  2629
                                        2690  2743  2757  2769  2795  2827  2857
                                        2863  2870  2900  2905  2934  2939  2968
                                        2973  2986  3042  3072  3077  3090  3126
                                        3134  3142  3150  3158  3190  3223  3257
                                        3291  3323  3341  3364  3380  3397  3405
                                        3413  3421  3430  3439  3447  3455  3463
                                        3498  3531  3564  3599  3632  3665  3697
                                        3729  3761  3783  3799  3807  3815  3823
                                        3832  3840  3848  3883  3916  3949  3983
                                        4016  4048  4080  4100  4118  4151  4164
                                        4167  4170  4173  4176  4184  4187  4190
                                        4193  4200  4215  4245  4253  4265  4273
 DOENG                             Ext                   -   954
 DOFLASHP                          Ext                   -  1005  1023  1041
                                        1059  1362  2781  2807  2990  3094  3345
                                        3384  3788  4105  4219  4248  4256  4268
                                        4276
 DOGROB                            Ext                   -  4326
 DOIDNT                            Ext                   -   938   947  1355
                                        1618  1626  1643  1970  2775  2801
 DOLAM                             Ext                   -   958   975   978
                                         981   984   991   996  1002  1008  1014
                                        1020  1026  1032  1038  1044  1050  1056
                                        1062  1080  1083  1086  1089  1092  1095
                                        1098  1113  1116  1119  1122  1125  1128
                                        1131  1134  1150  1153  1156  1159  1162
                                        1165  1168  1183  1196  1205  1217  1225
                                        1242  1307  1318  1322  1326  1330  1340
                                        1348  1379  1382  1385  1388  1391  1394
                                        1405  1408  1415  1418  1423  1426  1429
                                        1442  1445  1448  1460  1475  1503  1539
                                        1551  1559  1576  1623  1631  1636  1660
                                        1671  1682  1696  1713  1724  1736  1748
                                        1755  1761  1779  1791  1804  1813  1817
                                        1834  1845  1856  1867  1879  1884  1888
                                        1906  1921  1935  1942  1956  1980  1983
                                        1986  1989  2004  2007  2010  2013  2027
                                        2038  2045  2076  2089  2096  2114  2126
                                        2138  2154  2166  2178  2188  2218  2230
                                        2242  2251  2269  2276  2294  2306  2318
                                        2329  2341  2358  2369  2372  2377  2394
                                        2414  2417  2420  2423  2436  2445  2456
                                        2463  2498  2509  2521  2530  2548  2555
                                        2573  2585  2597  2608  2620  2637  2648
                                        2651  2656  2670  2680  2685  2696  2703
                                        2706  2716  2723  2738  2750  2764  2778
                                        2785  2790  2804  2811  2816  2823  2836
                                        3009  3018  3027  3114  3194  3228  3262
                                        3296  3352  3503  3536  3569  3605  3638
                                        3670  3702  3734  3766  3888  3921  3954
                                        3989  4021  4053  4085  4155
 DOLIST                            Ext                   -   957   974  1079
                                        1112  1149  1182  1195  1378  1441  1979
                                        2003  2413  2669  2893  2927  2961  3065
                                        3183  3216  3250  3284  3318  3493  3526
                                        3558  3592  3627  3660  3692  3724  3756
                                        3878  3911  3943  3976  4011  4043  4075
                                        4163  4183  4243  4244  4252  4264  4272
 DOREAL                            Ext                   -   943  1434  1478
                                        1484  1489  1786  2048  2054  2059  2492
                                        2676  2709
 DOROMP                            Ext                   -  1176  1189  1236
                                        1252  1257  1272  1275  1279  1282  1288
                                        1469  1498  1514  1519  1570  1586  1591
                                        1599  1602  2983  3087  3338  3377  3473
                                        3780  3858  4097  4128  4212
 DOSTR>                            Ext                   -  1668  1679  1693
                                        1721  1733  1745  1776  1801  1842  1853
                                        1864  1876  1918  1932  1953  2024  2035
                                        2073  2086  2111  2123  2135  2151  2163
                                        2175  2202  2209  2227  2239  2266  2291
                                        2303  2315  2326  2338  2355  2391  2433
                                        2453  2477  2484  2506  2518  2545  2570
                                        2582  2594  2605  2617  2634  2693  2747
                                        2761  2772  2798  2831
 DROP                              Ext                   -  1202  1400  4241
                                        4302
 DROPFALSE                         Ext                   -  4316
 DUP                               Ext                   -  2212  2487  2908
                                        2942  2976  3080  3197  3231  3265  3299
                                        3329  3506  3539  3573  3608  3641  3673
                                        3705  3737  3769  3891  3924  3957  3992
                                        4024  4056  4088  4203
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
 EIGHT                             Ext                   -  2895  2929  2963
                                        3067  3185  3218  3252  3286  3594  3978
 ELEVEN                            Ext                   -  4236
 EQUAL                             Ext                   -   969  1211  1223
                                        1231  1248  1313  1464  1493  1509  1545
                                        1557  1565  1582  1759  1765  1974  2063
                                        2102  2194  2257  2282  2469  2536  2561
                                        3000  3104  4159
 ErableHeaderBit                   Abs       0 #00000000 -   894
 ErableHeaderFl                    Abs      93 #0000005D -   892   893   894
 ErableHeaderNib                   Abs      23 #00000017 -   893
 ErrorBeepBit                      Abs       3 #00000003 -   312
 ErrorBeepFl                       Abs      56 #00000038 -   256   311   312
 ErrorBeepNib                      Abs      13 #0000000D -   311
 ExactModeBit                      Abs       0 #00000000 -   919
 ExactModeFl                       Abs     105 #00000069 -   917   918   919
 ExactModeNib                      Abs      26 #0000001A -   918
 FOURTEEN                          Ext                   -  4297
 FastEViewBit                      Abs       2 #00000002 -   315
 FastEViewNib                      Abs      14 #0000000E -   314
 FastEqViewFl                      Abs      59 #0000003B -   259   314   315
=Fcos                              Rel    4747 #0000128B -  1967
 FilerConfirmBit                   Abs       0 #00000000 -   846
 FilerConfirmFl                    Abs      77 #0000004D -   844   845   846
 FilerConfirmNib                   Abs      19 #00000013 -   845
 FilerConfirmationBit              Abs       3 #00000003 -   843
 FilerConfirmationFl               Abs      76 #0000004C -   841   842   843
 FilerConfirmationNib              Abs      18 #00000012 -   842
=ForceMenu                         Rel   15162 #00003B3A -  4114
=ForceType                         Rel    2353 #00000931 -  1533
=ForcedResults                     Rel   13812 #000035F4 -  3795
=Fourier                           Rel    9084 #0000237C -  2665
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
 INDEX@                            Ext                   -  2735
 IODataFmtBit                      Abs       2 #00000002 -   333
 IODataFmtFl                       Abs      35 #00000023 -   235   332   333
 IODataFmtNib                      Abs       8 #00000008 -   332
 IODeviceBit                       Abs       0 #00000000 -   336
 IODeviceFl                        Abs      33 #00000021 -   233   335   336
 IODeviceNib                       Abs       8 #00000008 -   335
 IT                                Ext                   -   971  1000  1018
                                        1036  1054  1192  1269  1285  1315  1375
                                        1548  1976  3002  3106
 ITE                               Ext                   -  1214  1234  1250
                                        1467  1496  1512  1568  1584  1770  2067
                                        2105  2196  2259  2284  2471  2538  2563
                                        4161
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
 LOOP                              Ext                   -  2841
 LastArgsBit                       Abs       2 #00000002 -   339
 LastArgsFl                        Abs      55 #00000037 -   255   338   339
 LastArgsNib                       Abs      13 #0000000D -   338
 MASDDecompilerBit                 Abs       1 #00000001 -   873
 MASDDecompilerFl                  Abs      86 #00000056 -   871   872   873
 MASDDecompilerNib                 Abs      21 #00000015 -   872
 MINUSONE                          Ext                   -  2903  2904  2937
                                        2938  2971  2972  3075  3076  3192  3193
                                        3226  3227  3260  3261  3294  3295  3326
                                        3327  3501  3502  3534  3535  3567  3568
                                        3603  3604  3636  3637  3668  3669  3700
                                        3701  3732  3733  3764  3765  3886  3887
                                        3919  3920  3952  3953  3987  3988  4019
                                        4020  4051  4052  4083  4084  4148
 MKSmallFontMenuBit                Abs       3 #00000003 -   867
 MKSmallFontMenuFl                 Abs      84 #00000054 -   865   866   867
 MKSmallFontMenuNib                Abs      20 #00000014 -   866
 MLMASDModeBit                     Abs       3 #00000003 -   891
 MLMASDModeFl                      Abs      92 #0000005C -   889   890   891
 MLMASDModeNib                     Abs      22 #00000016 -   890
=MenuBase                          Rel   15840 #00003DE0 -  4226
=MenuConvolution                   Rel   10703 #000029CF -  3038
=MenuExponential                   Rel   11986 #00002ED2 -  3361
=MenuFcos                          Rel    9967 #000026EF -  2853
=MenuFourier                       Rel   11023 #00002B0F -  3123
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
 NDROP                             Ext                   -  1305
 NINE                              Ext                   -  2896  2930  2964
                                        3068  3186  3219  3253  3287  3595  3979
 NOT                               Ext                   -  1212  1546  1768
                                        2064
 NoAutoCRBit                       Abs       1 #00000001 -   348
 NoAutoCRFl                        Abs      38 #00000026 -   238   347   348
 NoAutoCRNib                       Abs       9 #00000009 -   347
 NoIOStMsgBit                      Abs       2 #00000002 -   351
 NoIOStMsgNib                      Abs       9 #00000009 -   350
 NoIOStsMsgFl                      Abs      39 #00000027 -   239   350   351
 NoParseBit                        Abs       2 #00000002 -   354
 NoParseFl                         Abs      63 #0000003F -   263   353   354
 NoParseNib                        Abs      15 #0000000F -   353
 NullMenuKey                       Ext                   -  4260  4262
 NumDigsBCt                        Abs       4 #00000004 -   248
 NumDigsBit1                       Abs       0 #00000000 -   357
 NumDigsFl1                        Abs      45 #0000002D -   247   356   357
 NumDigsNib                        Abs      11 #0000000B -   356
 NumDispBCt                        Abs       2 #00000002 -   250
 NumDispBit1                       Abs       0 #00000000 -   360
 NumDispFl1                        Abs      49 #00000031 -   249   359   360
 NumDispNib                        Abs      12 #0000000C -   359
 OR                                Ext                   -  1232  1566  1767
 OVER#=case                        Ext                   -  4237  4288  4298
 OverfActBit                       Abs       0 #00000000 -   363
 OverfActFl                        Abs      21 #00000015 -   223   362   363
 OverfActNib                       Abs       5 #00000005 -   362
 OverflowBit                       Abs       0 #00000000 -   366
 OverflowFl                        Abs      25 #00000019 -   227   365   366
 OverflowNib                       Abs       6 #00000006 -   365
 OverwriteBit                      Abs       3 #00000003 -   369
 OverwriteFl                       Abs      36 #00000024 -   236   368   369
 OverwriteNib                      Abs       8 #00000008 -   368
 PURGE                             Ext                   -   941  1358  1621
                                        1646
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
=SDFResults                        Rel   12141 #00002F6D -  3391
=SDFdraw                           Rel   16148 #00003F14 -  4322
 SEMI                              Ext                   -   961   987  1012
                                        1030  1048  1066  1068  1101  1137  1171
                                        1186  1199  1238  1254  1259  1261  1263
                                        1267  1294  1296  1334  1352  1367  1397
                                        1451  1471  1500  1516  1521  1523  1525
                                        1529  1531  1572  1588  1593  1595  1605
                                        1609  1648  1703  1783  1795  1824  1895
                                        1963  1992  1995  2016  2144  2184  2247
                                        2273  2346  2363  2365  2367  2382  2398
                                        2402  2426  2526  2552  2625  2642  2644
                                        2646  2661  2673  2849  2897  2931  2965
                                        3032  3034  3069  3119  3121  3187  3220
                                        3254  3288  3320  3359  3387  3495  3528
                                        3560  3596  3629  3662  3694  3726  3758
                                        3791  3880  3913  3945  3980  4013  4045
                                        4077  4108  4179  4180  4196  4197  4222
                                        4250  4258  4270  4278  4279  4283  4295
                                        4314  4318  4320  4356
 SIXTEEN                           Ext                   -  4287
 STO                               Ext                   -   994  1011  1029
                                        1047  1065  1639  1663  1674  1685  1699
                                        1716  1727  1739  1751  1782  1794  1807
                                        1820  1837  1848  1859  1870  1882  1891
                                        1909  1924  1938  1945  1959  2030  2041
                                        2079  2092  2117  2129  2141  2157  2169
                                        2181  2221  2233  2245  2272  2297  2309
                                        2321  2332  2344  2361  2380  2397  2439
                                        2448  2459  2501  2512  2524  2551  2576
                                        2588  2600  2611  2623  2640  2659  2688
                                        2699  2719  2741  2753  2767  2793  2819
                                        2839  3012  3021  3030  3117  3355
 SWAP                              Ext                   -  3005  3014  3023
                                        3109  3350
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
=T0                                Rel    2719 #00000A9F -  1613
 TRUE                              Ext                   -  1266  4281  4292
                                        4293  4308  4311
 TYPEZINT?                         Ext                   -   999  1017  1035
                                        1053
 TriAlphaBit                       Abs       3 #00000003 -   390
 TriAlphaFl                        Abs      60 #0000003C -   260   389   390
 TriAlphaNib                       Abs      14 #0000000E -   389
 TriUserBit                        Abs       0 #00000000 -   393
 TriUserFl                         Abs      61 #0000003D -   261   392   393
 TriUserNib                        Abs      15 #0000000F -   392
 UNCOERCE                          Ext                   -   965  2736  2996
                                        3100
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
 ZERO                              Ext                   -  2894  2928  2962
                                        3066  3184  3217  3251  3285  3319  3494
                                        3527  3559  3593  3628  3661  3693  3725
                                        3757  3879  3912  3944  3977  4012  4044
                                        4076
 ^EXACTON                          Ext                   -  1363
 ^IfEnterKeyPress                  Ext                   -  4277
 ^IfKeyChoose                      Ext                   -  4257
 ^IfKeyEdit                        Ext                   -  4249
 ^IfMain                           Ext                   -  2991  3095  3346
                                        3385  3789  4106  4220
 ^IfONKeyPress                     Ext                   -  4269
 ^REPLACE2BY1                      Ext                   -  2782  2808
 ^Z>R                              Ext                   -  1006  1024  1042
                                        1060
=criticalyDumped                   Rel    3772 #00000EBC -  1826
=hSolver                           Rel    1800 #00000708 -  1371
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
=notDumped                         Rel    2829 #00000B0D -  1652
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
=subDumped                         Rel    3093 #00000C15 -  1705
=superDumped                       Rel    4143 #0000102F -  1897
 x+                                Ext                   -  2375  2654  2834
 xEVAL                             Ext                   -  1634  1669  1680
                                        1694  1722  1734  1746  1777  1802  1843
                                        1854  1865  1877  1919  1933  1954  2025
                                        2036  2074  2087  2112  2124  2136  2152
                                        2164  2176  2203  2210  2216  2228  2240
                                        2267  2292  2304  2316  2327  2339  2356
                                        2392  2434  2454  2478  2485  2491  2507
                                        2519  2546  2571  2583  2595  2606  2618
                                        2635  2694  2748  2762  2773  2783  2799
                                        2809  2832  3007  3016  3025  3111  3572
=xVibeS                            Rel       6 #00000006 -   933
 ~Convolution                      Ext                   -  1592
 ~Fcos                             Ext                   -  1571
 ~ForceMenu                        Ext                   -  1190
 ~ForceType                        Ext                   -  1289
 ~ForcedResults                    Ext                   -  1603
 ~Fourier                          Ext                   -  1587
 ~MenuBase                         Ext                   -  2984  3088  3339
                                        3378  3781  4098  4213
 ~MenuConvolution                  Ext                   -  1258
 ~MenuFcos                         Ext                   -  1237
 ~MenuFourier                      Ext                   -  1253
 ~SDFResults                       Ext                   -  1283
 ~SDFdraw                          Ext                   -  3474  3859  4129
 ~SDFmenu                          Ext                   -  1273
 ~T0                               Ext                   -  1280  1600
 ~Welcome                          Ext                   -  1177
 ~criticalyDumped                  Ext                   -  1499
 ~hSolver                          Ext                   -  1276
 ~notDumped                        Ext                   -  1470
 ~subDumped                        Ext                   -  1515
 ~superDumped                      Ext                   -  1520
 ~xVibeS                           Ext                   -   932
Saturn Assembler                                       Tue May 22 21:55:38 2018
V3.0.9 (04/15/2007)   Statistics                         MainSVF.a      Page    3

Input Parameters

  Source file name is MainSVF.a

  Listing file name is MainSVF.l

  Object file name is MainSVF.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
