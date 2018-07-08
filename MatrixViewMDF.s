RPL 
( C:\Users\Neo\Desktop\HP\Vibrações 1\MatrixView.s, part of the Vibrations.hpp project, created by <> on 24/12/2017 )

INCLUDE VibrationsSDF.h
INCLUDE informbox.h
INCLUDE Header.h

NULLNAME MTV
::
( Labels )
			"X Vectors" 40 8
															 	ID X1s1 0 14
																	ID X1s2 0 20
																	ID X1s3 0 26
						
															 	ID X2s1 45 14
																	ID X2s2 45 20
																	ID X2s3 45 26
									
															 	ID X3s1 91 14
																	ID X3s2 91 20
																	ID X3s3 91 26
																	
			"Normalized X Vectors" 30 32
															 	ID nX1s1 0 38
																	ID nX1s2 0 44
																	ID nX1s3 0 50
						
															 	ID nX2s1 45 38
																	ID nX2s2 45 44
																	ID nX2s3 45 50
									
															 	ID nX3s1 91 38
																	ID nX3s2 91 44
																	ID nX3s3 91 50

			20 0
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
