RPL 
( C:\Users\Neo\Desktop\HP\Vibrações\single dregree of freedom\MainSVF.s, part of the VibrationsSDF.hpp project, created by <> on 31/12/2017 )

INCLUDE VibrationsSDF.h
INCLUDE informbox.h
INCLUDE Header.h

xNAME VibeS
::
  ' ID SDF PURGE
	 % 1 ID SDF CREATE
3 DOENG
%0 { LAM fourierAvaliable } BIND
DEPTH UNCOERCE %4 %MIN %4 EQUAL
         IT ::
             { LAM T LAM a0 LAM an LAM bn } BIND %1  ' LAM fourierAvaliable STO
             LAM bn  TYPEZINT? IT :: LAM bn Z>R ' LAM bn STO ;				       							
													LAM an  TYPEZINT? IT :: LAM an Z>R ' LAM an STO ;																													
													LAM a0  TYPEZINT? IT :: LAM a0 Z>R ' LAM a0 STO ;
													LAM T   TYPEZINT? IT :: LAM T Z>R  ' LAM T  STO ;
           ;

		%0 %0 %0 %0 %0 %0 %0 { LAM fi0 LAM X  LAM Type LAM xp LAM xt  LAM r  LAM del } BIND
		%0 %0 %0 %0 %0 %0 %0 %0 { LAM F0  LAM w0 LAM psi  LAM n  LAM fin LAM A0 LAM An LAM Bn } BIND
		"--" %0 %0  %0 %0 %0 %0 { LAM wd LAM X0 LAM C1 LAM C2 LAM fic LAM xh LAM xp0 } BIND
		
		Welcome
		
		%0 { LAM xp1 } BIND
		ForceMenu
	IT ::
			  { LAM Ftype } BIND
			   DROP ( 10h )
			        LAM Ftype "None" EQUAL NOT
										 ITE ::
										       LAM Ftype "F0*COS(w0*t+psi)" EQUAL
														   LAM Ftype "F0*SIN(w0*t+psi)"  EQUAL OR
											      ITE :: MenuFcos ;
																     ::
																				   LAM Ftype "Fourier serie"  EQUAL
																						 ITE :: MenuFourier ;
																						     :: MenuConvolution ;
																				 ;
															;																	
			           :: TRUE ;
					 IT ::	
							    SDFmenu
							    hSolver  ( solves te homogeneus eq )
							    T0
										 SDFResults
										 IT ::
										    ForceType ( Analises force type)
									
			           ;
										;
			

			
			DEPTH NDROP	
			LAM Ftype "Fourier serie" EQUAL
			IT ::
			     LAM T
			     LAM a0
								LAM an 			       							
								LAM bn  																													
			  ;
			  		"particular:"
					   LAM xp
					   "geral:"
					   LAM xt
			;	
			' ID SDF PURGE	
			ABND
			EXACTON	
			
;

NULLNAME hSolver
::
   IT ::
	{ LAM M LAM K LAM C LAM tx LAM x0 LAM v0 } BIND
	 DROP ( 10h )
	
	 LAM K   LAM M %/ %SQRT  ( wn )
	 LAM F0  LAM K %/
	 LAM C   LAM K  LAM M %* %SQRT % 2 %* %/
	 { LAM wn LAM delST LAM zta } BIND
	
	
	
	 LAM zta %0 EQUAL ( zta equal to 0? )
	 ITE	:: notDumped ;
	     ::
	     		LAM zta % 1 %- %ABS % 0.001 %MAX % 0.001 EQUAL ( zta close to 1? )
	       ITE :: criticalyDumped ;
		   :: LAM zta %1 %MAX %1 EQUAL ( zta lower than 1? )
	              ITE :: subDumped ;
	                  :: superDumped ;
	           ;
	     ;
			
	;
;
NULLNAME ForceType
::
				
	 LAM Ftype "None" EQUAL	NOT
	 IT ::
	      LAM Ftype "F0*COS(w0*t+psi)" EQUAL
	      LAM Ftype  "F0*SIN(w0*t+psi)"  EQUAL OR
	      ITE :: Fcos ;
	          ::
		      LAM Ftype "Fourier serie"  EQUAL
				    ITE :: Fourier ;
				        :: Convolution ;
		   ;

T0
	ForcedResults
;	

;

NULLNAME T0
::
    		' ID t PURGE
						LAM tx ID t CREATE
						LAM xt xEVAL ' LAM A0 STO  ( just for not creating another one)
						' ID t PURGE
;

NULLNAME notDumped
  ::
		 	"not Dumped"  ' LAM Type STO
		 	"'x0'"  DOSTR> xEVAL ' LAM C1 STO
		 	"'v0/wn'"  DOSTR> xEVAL ' LAM C2 STO
	
		 "'C1*COS(wn*t)+C2*SIN(wn*t)'"  DOSTR> xEVAL ' LAM xt STO	
			
 ;
NULLNAME subDumped
  ::
			"sub Dumped" ' LAM Type STO
		 "'wn*(1-zta^2)^0.5'" DOSTR> xEVAL ' LAM wd STO
			"'(v0 +zta*wn*x0)/((wd))'"  DOSTR> xEVAL ' LAM C2 STO
			"'((x0^2 + C2^2)^0.5)'"		DOSTR>	 xEVAL ' LAM X0 STO
			
			LAM x0 %0 EQUAL
			LAM wd %0 EQUAL
			OR NOT
			ITE :: "'ATAN(-(v0+zta*wn*x0)/(wd*x0))'" 	DOSTR>	 xEVAL ' LAM fi0 STO ;
			    ::  % 1.5708 ' LAM fi0 STO ;
			"'X0*EXP(-zta*wn*t)*COS(wd*t-fi0)'"	DOSTR>	xEVAL ' LAM xt STO	
			
			
			LAM x0 ' LAM C1 STO

;
NULLNAME criticalyDumped
  ::			
    "criticaly Dumped" ' LAM Type STO
    "'x0'"  DOSTR> xEVAL ' LAM C1 STO
    "'v0 + wn*x0'"  DOSTR> xEVAL ' LAM C2 STO
    "'(x0+C2*t)'" DOSTR> xEVAL ' LAM X0 STO
    "'(C1+C2*t)*EXP(-wn*t)'" DOSTR> xEVAL ' LAM xt STO
     LAM x0 ' LAM C1 STO

 ;
NULLNAME superDumped ::

   "super Dumped" ' LAM Type STO

   "'x0*wn*((zta + ((zta^2)-1)^0.5)+v0)/(2*wn*((zta^2)-1)^0.5)'"  DOSTR> xEVAL ' LAM C1 STO
   "'(x0*wn*((zta - ((zta^2)-1)^0.5)-v0)/(2*wn*((zta^2)-1)^0.5))'"  DOSTR> xEVAL ' LAM C2 STO
   %1 ' LAM X0 STO
   "'C1*EXP((-zta + (zta^2-1)^0.5)*wn*t)+C2*EXP((-zta - (zta^2-1)^0.5)*wn*t)'" DOSTR> xEVAL ' LAM xt STO	

;

NULLNAME Fcos ::
	ID SDF %0 EQUAL
	IT ::
	      { LAM X1 LAM c1 LAM c2  LAM fi } BIND
	   ;

  	%0 %0 %0  %0 { LAM X1 LAM c1 LAM c2  LAM fi } BIND
	
		"'w0/wn'" DOSTR> xEVAL ' LAM r   STO
		"'F0/K'"  DOSTR> xEVAL ' LAM del STO

		LAM r % 1 %- %ABS % 0.001 %MAX % 0.001 EQUAL NOT ( ressonance )
		          ITE :: "'-1*psi+ATAN(2*zta*r/(1-(r^2)))'" DOSTR> xEVAL ' LAM fic STO   ( psi is the force fase angle )
																		"'del/(((1-r^2)^2+(2*zta*r)^2)^0.5)'"	 DOSTR> xEVAL ' LAM X STO
																			
																		LAM Ftype "F0*COS(w0*t+psi)" EQUAL ( check if is sin or cos )
																		ITE ::
																								"'X*COS(w0*t-fic)'" DOSTR> xEVAL ' LAM xp STO	  ( x[t]   )
																								"'X*COS(-fic)'" DOSTR> xEVAL ' LAM xp0 STO        ( t = 0  )
																								"'-X*w0*SIN(-fic)'" DOSTR> xEVAL ' LAM xp1 STO    ( t' = 0 )
																						;
																		    ::
																								"'X*SIN(w0*t-fic)'" DOSTR> xEVAL ' LAM xp STO			( x[t]   )
																								"'X*SIN(-fic)'" DOSTR> xEVAL ' LAM xp0 STO      ( t = 0 )
																								"'X*w0*COS(-fic)'" DOSTR> xEVAL ' LAM xp1 STO   ( t' = 0 )
																						;
																		
																		LAM Type "sub Dumped" EQUAL
																		ITE ::
																		         "'(x0-xp0)^2'" DOSTR> xEVAL
																		         "'(v0+zta*wn*(x0-xp0)-xp1)/wd'" DOSTR> xEVAL
																		         DUP %* %+ %SQRT xEVAL ' LAM X1  STO
																		          "'3.1416-ACOS((x0-xp0)/X1)'" DOSTR> xEVAL ' LAM fi  STO
																		          "'X1*EXP(-zta*wn*t)*COS(wd*t-fi)'"	DOSTR>	xEVAL ' LAM xh STO
																		    ;
																		    ::
																		       LAM Type	"criticaly Dumped"	EQUAL
																		       ITE :: "'((x0-xp0)+((x0-xp0)*wn-xp1+v0)*t)*EXP(-wn*t)'" DOSTR> xEVAL  ' LAM xh STO ;
																		           :: LAM Type	"super Dumped"	EQUAL
																		              ITE ::
																			                    "'-zta+wn*((zta^2)-1)^0.5'" DOSTR> xEVAL ' LAM c1 STO
																			                    "'-zta-wn*((zta^2)-1)^0.5'" DOSTR> xEVAL ' LAM c2 STO
																			                    "'(v0-x0*c1+xp0*c1-xp1)/(c2-c1)'" DOSTR> xEVAL  ' LAM C2 STO
																			                    "'x0-C2-xp0'" DOSTR> xEVAL  ' LAM C1 STO
																			                    "'C1*EXP(c1*t)+C2*EXP((c2*t)'" DOSTR> xEVAL ' LAM xh STO	
																				  															;
																		                  ::
																																						"'(x0-xp0)*COS(wn*t)+((v0-xp1)/wn)*SIN(wn*t)'"  DOSTR> xEVAL  ' LAM xh STO	
																																					;
																														;							
																					;
																			LAM xh LAM xp x+ ' LAM xt STO
																		;
																		::
																			"'x0*COS(wn*t)+(v0/wn)*SIN(wn*t)+((del*wn*t)/2)*SIN(wn*t)'" DOSTR> xEVAL ' LAM xt STO ;
	
;

NULLNAME Convolution ::
			%0 %0 %0  %0 { LAM X1 LAM c1 LAM c2  LAM fi } BIND	
			"'F0*EXP(-zta*wn*t)*SIN(wd*t)/(M*wd)'" DOSTR> xEVAL ' LAM xp STO
			
			%0 ' LAM xp0 STO
			"'F0/M'" DOSTR> xEVAL ' LAM xp1 STO
			
			LAM Type	"sub Dumped"	EQUAL
			ITE ::
			         "'(x0-xp0)^2'" DOSTR> xEVAL
			         "'(v0+zta*wn*(x0-xp0)-xp1)/wd'" DOSTR> xEVAL
 			         DUP %* %+ %SQRT xEVAL % -1 %* ' LAM X1  STO
			          "'ACOS((x0-xp0)/X1)'" DOSTR> xEVAL ' LAM fi  STO
			          "'X1*EXP(-zta*wn*t)*COS(wd*t-fi)'"	DOSTR>	xEVAL ' LAM xh STO
			    ;
			    ::
							   LAM Type	"criticaly Dumped"	EQUAL
			       ITE :: "'((x0-xp0)+((x0-xp0)*wn-xp1+v0)*t)*EXP(-wn*t)'" DOSTR> xEVAL  ' LAM xh STO ;
			           :: LAM Type	"super Dumped"	EQUAL
			              ITE ::
						                    "'-zta+wn*((zta^2)-1)^0.5'" DOSTR> xEVAL ' LAM c1 STO
						                    "'-zta-wn*((zta^2)-1)^0.5'" DOSTR> xEVAL ' LAM c2 STO
						                    "'(v0-x0*c1+xp0*c1-xp1)/(c2-c1)'" DOSTR> xEVAL  ' LAM C2 STO
						                    "'x0-C2-xp0'" DOSTR> xEVAL  ' LAM C1 STO
						                    "'C1*EXP(c1*t)+C2*EXP((c2*t)'" DOSTR> xEVAL ' LAM xh STO	
																	      ;
			                  ::
																					  	"'(x0-xp0)*COS(wn*t)+((v0-xp1)/wn)*SIN(wn*t)'"  DOSTR> xEVAL  ' LAM xh STO	
																					;
														;							
							;
			LAM xh LAM xp x+ ' LAM xt STO
;

NULLNAME Fourier ::
		%0 { LAM hold }	BIND						
	 % 6.2831 LAM T %/      ' LAM w0 STO
	 "'w0/wn'" DOSTR> xEVAL ' LAM r  STO
		
		LAM a0 LAM K % 2 %* %/ ' LAM xp STO

		LAM n 2 %MAX COERCE 1
		DO
					  INDEX@ UNCOERCE ' LAM n STO
					  "'K*((1-(n*r)^2)^2+ (2*zta*n*r)^2)^0.5'" DOSTR> xEVAL ' LAM hold STO
					
					  "'ATAN(2*(zta*n*r)/(1-(n*r)^2))'" DOSTR> xEVAL ' LAM fin STO
					  "'an'" DOSTR> xEVAL ' ID n LAM n REPLACE2BY1 xEVAL
					  LAM hold %/ ' LAM An STO
					  "'bn'" DOSTR> xEVAL ' ID n LAM n REPLACE2BY1 xEVAL
					  LAM hold %/ ' LAM Bn STO
					  
					  LAM xp
			    "'An*COS(n*w0*t-fin)+Bn*COS(n*w0*t-fin)'" DOSTR> xEVAL
			    x+	' LAM xp STO		
		LOOP
		
		
			
;

 NULLNAME MenuFcos
	::
							"F0:"     BINT0 BINT8
							"š0:"     BINT0 BINT14
							"psi:"    BINT0 BINT20
							
							( F0 )
						 'DROPFALSE
						 21 8 50 5    ( x y b h )
						 BINT1		{ OBTYPE_REAL OBTYPE_USERPRGM OBTYPE_SYMB }	BINT3
						 "Force Amplitude" OPTDATA_NULL OPTDATA_NULL	"--"	DUP
						
						 ( w0 )
						 'DROPFALSE
						 21 14 50 5    ( x y b h )
						 BINT1			{ OBTYPE_REAL OBTYPE_USERPRGM OBTYPE_SYMB }	BINT3
						 "Force frequence" OPTDATA_NULL OPTDATA_NULL	"--"	DUP
						
						 ( psi )
						 'DROPFALSE
						 21 20 50 5    ( x y b h )
						 BINT1			{ OBTYPE_REAL OBTYPE_USERPRGM OBTYPE_SYMB }	BINT3
						 "Force fase" OPTDATA_NULL OPTDATA_NULL	"--"	DUP
						
								BINT3 BINT3
								MenuBase
								"Armonic force"
								FLASHPTR IfMain
								
								DEPTH UNCOERCE %4 %MIN %4 EQUAL
								IT ::
													SWAP													
													xEVAL ' LAM psi STO
													SWAP
													xEVAL ' LAM w0 STO
													SWAP
													xEVAL ' LAM F0 STO
								  ;
	;
	
	 NULLNAME MenuConvolution
	::
							"F:"     BINT0 BINT20

							( F0 )
						 'DROPFALSE
						 21 20 50 5    ( x y b h )
						 BINT1		{ OBTYPE_REAL OBTYPE_USERPRGM OBTYPE_SYMB }	BINT3
						 "Total force" OPTDATA_NULL OPTDATA_NULL	"--"	DUP
						
								BINT1 BINT1
								MenuBase
								"Armonic force"
								FLASHPTR IfMain
								
								DEPTH UNCOERCE %2 %MIN %2 EQUAL
								IT ::
													SWAP
													xEVAL
													' LAM F0 STO
								  ;
	;
 NULLNAME MenuFourier ::
		     "T:"     0 8
	      "a0:"    0 14
							"an:"    0 20
							"bn:"    0 26
							"n :"    0 32
							
							( T )
						 'DROPFALSE
						 21 8 50 5    ( x y b h )
						 BINT1			{ OBTYPE_REAL OBTYPE_USERPRGM OBTYPE_SYMB }	BINT3
						 "" OPTDATA_NULL OPTDATA_NULL	LAM T	DUP
						 
						 ( a0 )
						 'DROPFALSE
						 21 14 50 5    ( x y b h )
						 BINT1			{ OBTYPE_REAL OBTYPE_USERPRGM OBTYPE_SYMB }	BINT3
						 "Constant a0" OPTDATA_NULL OPTDATA_NULL	LAM a0	DUP
						 
						 ( an )
						 'DROPFALSE
						 21 20 50 5    ( x y b h )
						 BINT1			{ OBTYPE_REAL OBTYPE_USERPRGM OBTYPE_SYMB }	BINT3
						 "Equation an" OPTDATA_NULL OPTDATA_NULL LAM an	DUP
						 
						 ( bn )
						 'DROPFALSE
						 21 26 50 5    ( x y b h )
						 BINT1			{ OBTYPE_REAL OBTYPE_USERPRGM OBTYPE_SYMB }	BINT3
						 "Equation bn" OPTDATA_NULL OPTDATA_NULL	LAM bn	DUP
						 
						 ( j )
						 'DROPFALSE
						 21 32 50 5    ( x y b h )
						 BINT1			{ OBTYPE_REAL }	BINT3
						 "How many calculate:" OPTDATA_NULL OPTDATA_NULL	%4	DUP
						 
								5 5
								MenuBase
								"  Menu Fourier  "
								FLASHPTR IfMain
								
								SWAP ' LAM n STO				
			
	;
 NULLNAME MenuExponential ::
	     "Not implemented"    0 8
	     1 0
						MenuBase
						"  Menu Fourier  "
						FLASHPTR IfMain
	;
 
 NULLNAME SDFResults
::

						 "Type:"  0 8
							"zta:"   0 14
							"x(t)="  0 20
							"šn:"    0 30
							"šd:"    0 36
							"C1:"    0 42
							"C2:"    0 48
							"fi0:"   0 54
							"x(t0)="   0 60

       SDFdraw
							
							( type )
						 'DROPFALSE
						 21 8 50 5    ( x y b h )
						 BINT1			{ OBTYPE_REAL }	BINT3
						 "Dumping type" OPTDATA_NULL OPTDATA_NULL	LAM Type	DUP
							
							( zeta )
							'DROPFALSE
								16 14 50 5    ( x y b h )
						  BINT1
							{ OBTYPE_REAL }	 BINT3
							 "zeta"	 OPTDATA_NULL OPTDATA_NULL		 LAM zta DUP
							
							 ( xt )
							'DROPFALSE
								25 20 69 5    ( x y b h )
						  BINT1			{ OBTYPE_REAL }
							 BINT3
							 "x(t)" OPTDATA_NULL OPTDATA_NULL LAM xt xEVAL DUP
							
							( wn )
							'DROPFALSE
								19 30 50 5    ( x y b h )
						  BINT1		{ OBTYPE_REAL OBTYPE_USERPRGM OBTYPE_SYMB }				 BINT3
							 "Natural frequence (rad/s)"	 OPTDATA_NULL OPTDATA_NULL LAM wn DUP
							
							( wd )
							'DROPFALSE
							19 36 50 5    ( x y b h )
							BINT1		{ OBTYPE_REAL }			BINT3
							"Dumped frequence (rad/s)"			OPTDATA_NULL OPTDATA_NULL		LAM wd DUP
							
							( C1 )
							'DROPFALSE
							20 42 50 5    ( x y b h )
						BINT1		{ OBTYPE_REAL }		BINT3	
							"Constant 1"				OPTDATA_NULL OPTDATA_NULL	LAM C1 DUP
										
							( C2 )
							'DROPFALSE
							23 48 50 5    ( x y b h )
							BINT1	{ OBTYPE_REAL }			BINT3
							"Constant 2"		OPTDATA_NULL OPTDATA_NULL			LAM C2 DUP
							
							( fi0 )
							'DROPFALSE
							23 54 50 5    ( x y b h )
							BINT1	{ OBTYPE_REAL }			BINT3
							"Fase angle (rad)"		OPTDATA_NULL OPTDATA_NULL		LAM fi0 DUP
							
							( t0 )
							'DROPFALSE
							26 60 50 5    ( x y b h )
							BINT1	{ OBTYPE_REAL }			BINT3
							"requested t"		OPTDATA_NULL OPTDATA_NULL		LAM A0 DUP
							
							
						 10 9
							MenuBase
							"  Homogeneus Solution  "
							FLASHPTR IfMain
;

NULLNAME ForcedResults
::
						 "xp(t)="          0 8
							"r:"              0 14
							"X:"              0 20
							"’st:"            0 30
							"fi:"             0 36
							"G. Solution:"    0 44
							"x(t0):"          0 56

       SDFdraw
							
							( xp 1)
						 'DROPFALSE
						 25 8 50 5    ( x y b h )
						 BINT1			{ OBTYPE_REAL }	BINT3
						 "Particular solution" OPTDATA_NULL OPTDATA_NULL	LAM xp	DUP
							
							( r 2)
							'DROPFALSE
								15 14 50 5    ( x y b h )
						  BINT1
							{ OBTYPE_REAL }	 BINT3
							 "Frequence ratio"	 OPTDATA_NULL OPTDATA_NULL		 LAM r DUP
							
							 ( X 3)
							'DROPFALSE
								15 20 69 5    ( x y b h )
						  BINT1			{ OBTYPE_REAL }
							 BINT3
							 "Amplitude" OPTDATA_NULL OPTDATA_NULL LAM X DUP
							
							( del 4)
							'DROPFALSE
								19 30 70 5    ( x y b h )
						  BINT1		{ OBTYPE_REAL OBTYPE_USERPRGM OBTYPE_SYMB }				 BINT3
							 "Deflection under static force"	 OPTDATA_NULL OPTDATA_NULL LAM del DUP
							
							( fic 5)
							'DROPFALSE
							19 36 70 6    ( x y b h )
							BINT1		{ OBTYPE_REAL }			BINT3
							"(rad)"			OPTDATA_NULL OPTDATA_NULL		LAM fic DUP
							
							( xg 6)
							'DROPFALSE
							0 50 100 6    ( x y b h )
							BINT1		{ OBTYPE_REAL }			BINT3
							"xh(t) + xp(t)"			OPTDATA_NULL OPTDATA_NULL		LAM xt DUP
							
							( t0 7)
							'DROPFALSE
							30 56 100 6    ( x y b h )
							BINT1		{ OBTYPE_REAL }			BINT3
							"requested t"			OPTDATA_NULL OPTDATA_NULL		LAM A0 DUP

						 8 7
							MenuBase
							"  Particular Result  "
							FLASHPTR IfMain
;


NULLNAME ForceMenu
::
						"Force type:"  0 8
						
      SDFdraw
      
					  ( std )
								'DROPFALSE 45 8 60 5    ( x y b h )
								BINT12
								MINUSONE BINT1
								"Exitation type"
								LAM fourierAvaliable %1 EQUAL
						  ITE :: { "None" "F0*COS(w0*t+psi)" "F0*SIN(w0*t+psi)" "Convolution" "Fourier serie" } ;
								    :: { "None" "F0*COS(w0*t+psi)" "F0*SIN(w0*t+psi)" "Convolution" } ;
								BINT2	"None"  DUP
	
  				2 1
						MenuBase
						"  Force type  "
						FLASHPTR IfMain
;

NULLNAME MenuBase
::
   			'
						::
			      ( Handle a new menu )
			      IfMsgGetMenu OVER#=case
			      ::
			        DROP
			        { { "Edit" FLASHPTR IfKeyEdit }
			          { "Pick" FLASHPTR IfKeyChoose }
			   							NullMenuKey
			          NullMenuKey
			          { "Back"  FLASHPTR IfONKeyPress }
			          { "GO!" FLASHPTR IfEnterKeyPress } }
			        TRUE
			      ;
			      ( Handle the GO! Just exit )
			      IfMsgOKKey OVER#=case
			      ::
			      				TRUE	TRUE
			      ;
			      IfMsgCancelKey OVER#=case
			      ::
			        DROP            ( Remove the message number )
			        ClrDAsOK        ( Refresh entire display )
			        TRUE            ( End the informbox )
			        TRUE            ( This message handled )
			      ;
			      DROPFALSE
			 ;
;
NULLNAME SDFdraw
::
							GROB 0015A A2000A10000942940084294200CFFFFF00080040000800400008004000180040009C004000540048303C305900502019009C30F930040040000C304000002040000830400008004000080040000FFFF30001000200010002000100020001880200018D0200018A02000188020001000200010002000100020001000200010002000FFFF30000000000000200000002000000020000008F00000007E00000022000000060000000200000002000
       105 16
;

















