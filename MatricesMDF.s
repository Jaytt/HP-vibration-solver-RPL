RPL
( C:\Users\Neo\Desktop\HP\Vibrações 1\MatrixView.s, part of the Vibrations.hpp project, created by <> on 24/12/2017 )

INCLUDE VibrationsSDF.h
INCLUDE informbox.h
INCLUDE Header.h

NULLNAME MTV1
::
( Labels )
			"Omega Vector" 40 8
															 	ID w1 0 14
															 	ID w2 45 14
															 	ID w3 91 14
															 	
   "K Matriz" 30 32
															 	ID K1s1 0 38
																	ID K1s2 0 44
																	ID K1s3 0 50
						
															 	ID K2s1 45 38
																	ID K2s2 45 44
																	ID K2s3 45 50
									
															 	ID K3s1 91 38
																	ID K3s2 91 44
																	ID K3s3 91 50												 	
			14 0
			
			'
			::
      ( Handle a new menu )
      IfMsgGetMenu OVER#=case
      ::
        DROP
        { { "EDIT" FLASHPTR IfKeyEdit }
          NullMenuKey
   							NullMenuKey
          NullMenuKey
          { "Back"  FLASHPTR IfONKeyPress }
          { "NEXT" FLASHPTR IfEnterKeyPress } }
        TRUE
      ;
      ( Handle the GO! Just exit )
      IfMsgOKKey OVER#=case
      ::
      						TRUE
      						TRUE
      ;

      IfMsgCancelKey OVER#=case
      ::
            TRUE
      		    TRUE
      ;
      DROPFALSE
    ;
    
			"X Vector"
			FLASHPTR IfMain
			DROP
			DROP
	
;
