RPL 
( C:\Users\Neo\Desktop\HP\Vibrações 1\KMmenu.s, part of the Vibrations.hpp project, created by <> on 24/12/2017 )


INCLUDE VibrationsSDF.h
INCLUDE informbox.h
INCLUDE Header.h

NULLNAME KMmenu
::

( Labels )
			"K1:" BINT1 BINT8
			"K2:" BINT1 BINT14
			"K3:" BINT1 BINT20
			"K4:" BINT1 BINT26
			"K5:" BINT1 BINT32
			"K6:" BINT1 BINT38
			"M1:" BINT1 BINT44
			"M2:" BINT1 BINT50
			"M3:" BINT1 BINT56

			GROB 002C2 A3000F2000000000000000000842940000000429420000000EFFF70000000002000000000002000000000001A20000000002620000000004A200000000030000000000020000000000EFF000000000208000000000A88000000000AD8F70000000AAA04000000020A040000000EFF040000000020040000000020040000000015740000000023440000000045340000000030740000000020040000000020040000000EFF340000000200240000000A80224D0008FBD624C010080AA8284D0008020626001008020E240C00080200240000080EFF340000080010040000080025540000080043740000CC0035440000401020040004DD0EFF34000C411200240004DD0A86240000080AD8E70000080AA6200000080208200000080206200000080200200000080EFF30000008002000000008001AE0000008002620000008004AC00000080030E0000008002000000008FFFF70000004429420000002294210000
			BINT70 BINT8
			( K1 )
			'DROPFALSE
			12 8 30 5    ( x y b h )
			BINT1
			{ BINT0 }
			BINT3
			"if don't exist just put 0"
			MINUSONE
			BINT2
			% 1000 DUP
			
			( K2 )
			'DROPFALSE
			12 14 30 5    ( x y b h )
			BINT1
			{ BINT0 }
			BINT3
			" "
			MINUSONE
			BINT2
			% 1000 DUP
			
			( K3 )
			'DROPFALSE
			12 20 30 5    ( x y b h )
			BINT1
			{ BINT0 }
			BINT3
			"if don't exist just put 0"
			MINUSONE
			BINT2
			% 1000 DUP
			
			( K4 )
			'DROPFALSE
			12 26 30 5    ( x y b h )
			BINT1
			{ BINT0 }
			BINT3
			"if don't exist just put 0"
			MINUSONE
			BINT2
			% 0 DUP
			
			( K5 )
			'DROPFALSE
			12 32 30 5    ( x y b h )
			BINT1
			{ BINT0 }
			BINT3
			"if don't exist just put 0"
			MINUSONE
			BINT2
			% 0 DUP
			
			( K6 )
			'DROPFALSE
			12 38 30 5    ( x y b h )
			BINT1
			{ BINT0 }
			BINT3
			"if don't exist just put 0"
			MINUSONE
			BINT2
			% 0 DUP
			
			( M1 )
			'DROPFALSE
			12 44 30 5    ( x y b h )
			BINT1
			{ BINT0 }
			BINT3
			"if don't exist just put 1"
			MINUSONE
			BINT2
			% 2 DUP
			
			( M2 )
			'DROPFALSE
			12 50 30 5    ( x y b h )
			BINT1
			{ BINT0 }
			BINT3
			"if don't exist just put 1"
			MINUSONE
			BINT2
			% 1 DUP
			
			( M3 )
			'DROPFALSE
			12 56 30 5    ( x y b h )
			BINT1
			{ BINT0 }
			BINT3
			"if don't exist just put 1"
			MINUSONE      ( Texto )
			BINT2
			% 1 DUP
			
			BINT10 BINT9
			'DROPFALSE
			"Vibration System"
			FLASHPTR IfMain
			
			
			;
			
			NULLNAME Forcemenu
			::
			     "F1:" BINT0 BINT8  "F0:" BINT15 BINT8 "w0:" BINT49 BINT8 "psi:" BINT83 BINT8
			     "Type:" BINT0 BINT14
			     
			     "F2:" BINT0 BINT26 "F0:" BINT15 BINT26 "w0:" BINT49 BINT26 "psi:" BINT83 BINT26
			     "Type:" BINT0 BINT32
			     
			     "F3:" BINT0 BINT44 "F0:" BINT15 BINT44 "w0:" BINT49 BINT44 "psi:" BINT83 BINT44
			     "Type:" BINT0 BINT50
									
									( F01 )
									'DROPFALSE
									27 8 20 5
									BINT1	{ OBTYPE_REAL }
									BINT3	"" MINUSONE 	BINT2	% 0 DUP
									
									( F02 )
									'DROPFALSE
									27 26 20 5
									BINT1	{ OBTYPE_REAL }
									BINT3	"" MINUSONE 	BINT2	% 0 DUP
									
									( F03 )
									'DROPFALSE
									27 44 20 5
									BINT1	{ OBTYPE_REAL }
									BINT3	"" MINUSONE 	BINT2	% 5 DUP
									
									( w01 )
									'DROPFALSE
									61 8 20 5
									BINT1	{ OBTYPE_REAL }
									BINT3	"" MINUSONE 	BINT2	% 10 DUP
									
									( w02 )
									'DROPFALSE
									61 26 20 5
									BINT1	{ OBTYPE_REAL }
									BINT3	"" MINUSONE 	BINT2	% 10 DUP
									
									( w03 )
									'DROPFALSE
									61 44 20 5
									BINT1	{ OBTYPE_REAL }
									BINT3	"" MINUSONE 	BINT2	% 10 DUP
									
									( psi1 )
									'DROPFALSE
									98 8 20 5
									BINT1	{ OBTYPE_REAL }
									BINT3	"" MINUSONE 	BINT2	% 0 DUP
									
									( psi2 )
									'DROPFALSE
									98 26 20 5
									BINT1	{ OBTYPE_REAL }
									BINT3	"" MINUSONE 	BINT2	% 0 DUP
									
									( psi3 )
									'DROPFALSE
									98 44 20 5
									BINT1	{ OBTYPE_REAL }
									BINT3	"" MINUSONE 	BINT2	% 0 DUP
			
								( type f1 )
								'DROPFALSE 25 14 60 5    ( x y b h )
								BINT12			MINUSONE BINT1
								"If constant just make w0=0"
						  { "F0*COS(w0*t+psi)" "F0*SIN(w0*t+psi)" }
								BINT2	"F0*SIN(w0*t+psi)"  DUP
								
								( type f2 )
								'DROPFALSE 25 32 60 5    ( x y b h )
								BINT12 MINUSONE BINT1
								"If constant just make w0=0"
						  { "F0*COS(w0*t+psi)" "F0*SIN(w0*t+psi)" }
								BINT2	"F0*SIN(w0*t+psi)"  DUP
								
								( type f3 )
								'DROPFALSE 25 50 60 5    ( x y b h )
								BINT12 MINUSONE BINT1
								"If constant just make w0=0"
								{ "F0*COS(w0*t+psi)" "F0*SIN(w0*t+psi)" }	BINT2	"F0*SIN(w0*t+psi)"  DUP
*			
							15 12
							MenuBase
							"  Forces  "
							FLASHPTR IfMain
			;
			
NULLNAME InitCond
::
       	"x(0):" BINT0 BINT8
								"x1:" BINT0 BINT14 "x2:" BINT39 BINT14 "x3:" BINT75 BINT14
			
			
			     "v(0):" BINT0 BINT26
								"v1:" BINT0 BINT32 "v2:" BINT39 BINT32 "v3:" BINT75 BINT32
								
								( x0 )
									'DROPFALSE
									15 14 20 5
									BINT1	{ OBTYPE_REAL }
									BINT3	"" MINUSONE 	BINT2	% 0 DUP
									
									( x0 )
									'DROPFALSE
									51 14 20 5
									BINT1	{ OBTYPE_REAL }
									BINT3	"" MINUSONE 	BINT2	% 0 DUP
									
									( x0 )
									'DROPFALSE
									90 14 20 5
									BINT1	{ OBTYPE_REAL }
									BINT3	"" MINUSONE 	BINT2	% 0 DUP
									
							  ( v0 )
									'DROPFALSE
									15 32 20 5
									BINT1	{ OBTYPE_REAL }
									BINT3	"" MINUSONE 	BINT2	% 0 DUP
									
									( v0 )
									'DROPFALSE
									51 32 20 5
									BINT1	{ OBTYPE_REAL }
									BINT3	"" MINUSONE 	BINT2	% 0 DUP
									
									( v0 )
									'DROPFALSE
									90 32 20 5
									BINT1	{ OBTYPE_REAL }
									BINT3	"" MINUSONE 	BINT2	% 0 DUP
			
	
  					8 6
							MenuBase
							"  X(0) and V(0) "
							FLASHPTR IfMain
						
;
			
