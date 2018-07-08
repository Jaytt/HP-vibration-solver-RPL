RPL 
( C:\Users\Neo\Desktop\HP\Vibrações\single dregree of freedom\SDFmenu.s, part of the VibrationsSDF.hpp project, created by <> on 31/12/2017 )

INCLUDE VibrationsSDF.h
INCLUDE informbox.h
INCLUDE Header.h

NULLNAME SDFmenu
::

						 "Meq:"               0 8
							"Keq:"               0 14
							"Ceq:"               0 20
							
							"t:"                 0 36
							"x(0):"              0 42
							"x'(0):"             0 48
							
							SDFdraw
							
							( Meq )
						 'DROPFALSE
						 16 8 20 5    ( x y b h )
						 BINT1
							{ OBTYPE_REAL OBTYPE_USERPRGM OBTYPE_SYMB }
							BINT3
							"Eq. Mass"
							OPTDATA_NULL OPTDATA_NULL
							"--"  DUP
							
							( Keq )
							'DROPFALSE
								16 14 20 5    ( x y b h )
						  BINT1
							{ OBTYPE_REAL OBTYPE_USERPRGM OBTYPE_SYMB }
							 BINT3
							 "Eq. k"
							 OPTDATA_NULL OPTDATA_NULL
							 "--" DUP
							
							 ( Ceq )
							'DROPFALSE
								16 20 20 5    ( x y b h )
						  BINT1
							{ OBTYPE_REAL OBTYPE_USERPRGM OBTYPE_SYMB }
							 BINT3
							 "Eq. c"
							 OPTDATA_NULL OPTDATA_NULL
							 "--" DUP
							 
							( t )
							'DROPFALSE
							19 36 30 5    ( x y b h )
							BINT1
							{ OBTYPE_REAL OBTYPE_USERPRGM OBTYPE_SYMB }
							BINT3
							"time to be aproximated"
							OPTDATA_NULL OPTDATA_NULL
							"--" DUP
							
							( x0 )
							'DROPFALSE
							20 42 30 5    ( x y b h )
							BINT1
							{ OBTYPE_REAL OBTYPE_USERPRGM OBTYPE_SYMB }
							BINT3
							"Initial displacement"
							OPTDATA_NULL OPTDATA_NULL
							"--" DUP
										
							( x'0 )
							'DROPFALSE
							23 48 30 5    ( x y b h )
							BINT1
							{ OBTYPE_REAL OBTYPE_USERPRGM OBTYPE_SYMB }
							BINT3
							"Initial velocity"
							OPTDATA_NULL OPTDATA_NULL
							"--" DUP
			
						7 6					
			   MenuBase
						" System "
						FLASHPTR IfMain
;


