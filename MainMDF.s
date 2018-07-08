RPL
( C:\Users\Neo\Desktop\HP\Vibra\231\245es 1\main.s, part of the Vibrations.hpp project, created by <> on 23/12/2017 )

INCLUDE VibrationsSDF.h
INCLUDE informbox.h
INCLUDE Header.h

xNAME VibeM
::
*=========Header		
			CK0
			savefmt1
			2 DOSCI
			
   purgeAll
*============

   % 0 ID SDF CREATE
			Welcome
   KMmenu ( MENU )
   
			IT ::

   { LAM k1 LAM k2 LAM k3 LAM k4 LAM k5 LAM k6  LAM m1 LAM m2 LAM m3 } BIND
			
				 ( M matrix )
				 LAM m1 %0 %0
				 %0 LAM m2 %0
				 %0 %0 LAM m3
				 { % 3 % 3 } XEQ>ARRY
			
			  LAM k1 LAM k2 %+ LAM k3 %+
					LAM k2 % -1 %*
					LAM k3 % -1 %*
					LAM k2 % -1 %*
					LAM k2 LAM k4 %+ LAM k6 %+
					LAM k4 % -1 %*
					LAM k3 % -1 %*
 				LAM k4 % -1 %*
					LAM k4 LAM k5 %+ LAM k3 %+
					{ % 3 % 3 } XEQ>ARRY
					{ LAM M LAM K } BIND
					
					( Caclculate omega and X )
					LAM M
					MATINV
     LAM K			
					MAT*
     MATEGV
					{ LAM x LAM Lambda } BIND
					LAM Lambda
					XEQARRY> DROP
					{	LAM w1	LAM w2	LAM w3 } BIND

									( OMEGA )
									LAM w1 % 0.5 %^ a%>$ ID w1	CREATE
									LAM w2 % 0.5 %^ a%>$ ID w2 CREATE
									LAM w3 % 0.5 %^ a%>$ ID w3 CREATE
									

													( VECTOR TO STR)
									     LAM K
													 MATTRAN
														XEQARRY> DROP
														{ % 3 % 1 } XEQ>ARRY
														{ LAM K3 } BIND
														{ % 3 % 1 } XEQ>ARRY
														{ LAM K2 } BIND
														{ % 3 % 1 } XEQ>ARRY
														{ LAM K1 } BIND
									
														LAM K1 XEQARRY> DROP
														a%>$ UNROT a%>$ UNROT a%>$ UNROT
									     ID K1s3 CREATE ID K1s2 CREATE ID K1s1 CREATE
									
									     LAM K2 XEQARRY> DROP
														a%>$ UNROT a%>$ UNROT a%>$ UNROT
									     ID K2s3 CREATE ID K2s2 CREATE ID K2s1 CREATE
									
									     LAM K3 XEQARRY> DROP
														a%>$ UNROT a%>$ UNROT a%>$ UNROT
									     ID K3s3 CREATE ID K3s2 CREATE ID K3s1 CREATE
									
									MTV1 DROP ( Secund menu )
	
									
				 LAM x
				 MATTRAN
					XEQARRY> DROP
					{ % 3 % 1 } XEQ>ARRY
					{ LAM X3 } BIND
					{ % 3 % 1 } XEQ>ARRY
					{ LAM X2 } BIND
					{ % 3 % 1 } XEQ>ARRY
					{ LAM X1 } BIND
					
					LAM X1 LAM X1 MATTRAN LAM M MAT* LAM X1 MAT* XEQARRY> DROP % 0.5 %^ MAT/SCL					
					LAM X2 LAM X2 MATTRAN LAM M MAT* LAM X2 MAT* XEQARRY> DROP % 0.5 %^ MAT/SCL
					LAM X3 LAM X3 MATTRAN LAM M MAT* LAM X3 MAT* XEQARRY> DROP % 0.5 %^ MAT/SCL
					

					{	LAM nX1	LAM nX2	LAM nX3 } BIND
					
			

     ( VECTOR TO STR)
					LAM X1 VectorToSTR
     ID X1s3 CREATE ID X1s2 CREATE ID X1s1 CREATE

     LAM X2 VectorToSTR
     ID X2s3 CREATE ID X2s2 CREATE ID X2s1 CREATE

     LAM X3 VectorToSTR
     ID X3s3 CREATE ID X3s2 CREATE ID X3s1 CREATE

					LAM nX1 VectorToSTR
					ID nX1s3 CREATE ID nX1s2 CREATE ID nX1s1 CREATE
					
					LAM nX2 VectorToSTR
					ID nX2s3 CREATE ID nX2s2 CREATE ID nX2s1 CREATE
					
					LAM nX3 VectorToSTR
					ID nX3s3 CREATE ID nX3s2 CREATE ID nX3s1 CREATE
				
					MTV DROP ( third menu )
					
			DEPTH
			NDROP				
			
		 Forcemenu
		 IT ::
         analiseQ
		      
		    ;
			 
			;
			rstfmt1
			purgeAll	
			ABND
		 EXACTON
;

NULLNAME analiseQ
::
   		   { LAM FT1  LAM FT2  LAM FT3  } BIND
		      { LAM psi1 LAM psi2 LAM psi3 } BIND
		      { LAM w01  LAM w02  LAM w03  } BIND
		      { LAM F01  LAM F02  LAM F03  } BIND
		
		      LAM FT1 "F0*COS(w0*t+psi)" EQUAL
		      ITE :: "'F01*COS(w01*t+psi1)'" DOSTR> xEVAL ;
		          :: "'F01*SIN(w01*t+psi1)'" DOSTR> xEVAL  ;
		      LAM FT2 "F0*COS(w0*t+psi)" EQUAL
		      ITE :: "'F02*COS(w02*t+psi2)'" DOSTR> xEVAL  ;
		          :: "'F02*SIN(w02*t+psi2)'" DOSTR> xEVAL  ;
		      LAM FT3 "F0*COS(w0*t+psi)" EQUAL
		      ITE :: "'F03*COS(w03*t+psi3)'" DOSTR> xEVAL  ;
		          :: "'F03*SIN(w03*t+psi3)'" DOSTR> xEVAL  ;
		     { % 3 % 1 } XEQ>ARRY { LAM F0 } BIND
		     
		     
		    LAM nX1	XEQARRY>  DROP
						LAM nX2	XEQARRY>  DROP
						LAM nX3 XEQARRY>  DROP
					 {  % 3 % 3  } XEQ>ARRY
					 MATTRAN   { LAM nX } BIND
					 
					 LAM nX MATTRAN
					 LAM F0
 				 MAT* 				
 				 XEQARRY> DROP
						{	LAM Q1 LAM Q2 LAM Q3 } BIND
						LAM Q1 xEVAL ' LAM Q1 STO
						LAM Q2 xEVAL ' LAM Q2 STO
						LAM Q3 xEVAL ' LAM Q3 STO
						
						InitCond
						ITE ::
											{ % 3 % 1 } XEQ>ARRY
											{	LAM v0  } BIND	      ( USER  )
											{ % 3 % 1 } XEQ>ARRY
								   {	LAM x0  } BIND	      ( USER  )

           DEPTH NDROP
           
           "q(0)="
											LAM nX MATTRAN LAM M MAT* LAM x0 MAT* XEQARRY> DROP
											{ LAM q01 LAM q02 LAM q03 } BIND
											  LAM q01 LAM q02 LAM q03  { % 3 % 1 } XEQ>ARRY
					
					      "dq(0)/dt ="
											LAM nX MATTRAN LAM M MAT* LAM v0 MAT* XEQARRY> DROP
											{ LAM qq01 LAM qq02 LAM qq03 } BIND
											LAM qq01 LAM qq02 LAM qq03  { % 3 % 1 } XEQ>ARRY

           LAM nX
											"'qqq +w1*q = Q1'" DOSTR> xEVAL
											"'qqq +w2*q = Q2'" DOSTR> xEVAL
										 "'qqq +w3*q = Q3'" DOSTR> xEVAL
										 { % 3 % 1 } XEQ>ARRY

					 ;
 				 ::
 				   DEPTH NDROP
 				 ;

;
			
			NULLNAME VectorToSTR
			::
			   XEQARRY> DROP
					 a%>$ UNROT a%>$ UNROT a%>$ UNROT
			;
			
NULLNAME purgeAll
::
   ' ID SDF PURGE
			' ID w3 PURGE ' ID w2 PURGE ' ID w1 PURGE
			' ID K1s3 PURGE ' ID K1s2 PURGE ' ID K1s1 PURGE
			' ID K2s3 PURGE ' ID K2s2 PURGE ' ID K2s1 PURGE
			' ID K3s3 PURGE ' ID K3s2 PURGE ' ID K3s1 PURGE
   ' ID nX1s3 PURGE ' ID nX1s2 PURGE ' ID nX1s1 PURGE
			' ID nX2s3 PURGE ' ID nX2s2 PURGE ' ID nX2s1 PURGE
			' ID nX3s3 PURGE ' ID nX3s2 PURGE ' ID nX3s1 PURGE
			
			' ID X1s3 PURGE ' ID X1s2 PURGE ' ID X1s1 PURGE
			' ID X2s3 PURGE ' ID X2s2 PURGE ' ID X2s1 PURGE
			' ID X3s3 PURGE ' ID X3s2 PURGE ' ID X3s1 PURGE
			' ID K1s3 PURGE ' ID K1s2 PURGE ' ID K1s1 PURGE
			' ID K2s3 PURGE ' ID K2s2 PURGE ' ID K2s1 PURGE
			' ID K3s3 PURGE ' ID K3s2 PURGE ' ID K3s1 PURGE
			
			' ID w3 PURGE ' ID w2 PURGE ' ID w1 PURGE
;
