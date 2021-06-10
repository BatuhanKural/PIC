
_continueGame:

;TrexGame_Batuhan_Kural_180403027.c,63 :: 		void continueGame(){
;TrexGame_Batuhan_Kural_180403027.c,64 :: 		collusion = 1;
	MOVLW       1
	MOVWF       _collusion+0 
	MOVLW       0
	MOVWF       _collusion+1 
;TrexGame_Batuhan_Kural_180403027.c,65 :: 		INT2F_bit = 1;
	BSF         INT2F_bit+0, BitPos(INT2F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,66 :: 		health == health--;
	MOVLW       1
	SUBWF       _health+0, 1 
	MOVLW       0
	SUBWFB      _health+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,67 :: 		Delay_Ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_continueGame0:
	DECFSZ      R13, 1, 1
	BRA         L_continueGame0
	DECFSZ      R12, 1, 1
	BRA         L_continueGame0
	DECFSZ      R11, 1, 1
	BRA         L_continueGame0
	NOP
;TrexGame_Batuhan_Kural_180403027.c,68 :: 		IntToStr(health, healthScore);
	MOVF        _health+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _health+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _healthScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,69 :: 		LCD_Out(2,22,healthScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       22
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _healthScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,70 :: 		}
L_end_continueGame:
	RETURN      0
; end of _continueGame

_collideMelody:

;TrexGame_Batuhan_Kural_180403027.c,72 :: 		void collideMelody(){
;TrexGame_Batuhan_Kural_180403027.c,73 :: 		Sound_Play(65,200),Sound_Play(165,200),Sound_Play(196,200),Sound_Play(247,200);
	MOVLW       65
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       200
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       165
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       200
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       196
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       200
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       247
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       200
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;TrexGame_Batuhan_Kural_180403027.c,74 :: 		}
L_end_collideMelody:
	RETURN      0
; end of _collideMelody

_bDayMelody:

;TrexGame_Batuhan_Kural_180403027.c,75 :: 		void bDayMelody(){
;TrexGame_Batuhan_Kural_180403027.c,76 :: 		Sound_Play(262, 400),Sound_Play(262, 400),Sound_Play(294, 800)
	MOVLW       6
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       6
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       38
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       32
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       3
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;TrexGame_Batuhan_Kural_180403027.c,77 :: 		,Sound_Play(262, 800),Sound_Play(349, 800),Sound_Play(330, 1000);
	MOVLW       6
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       32
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       3
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       93
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       32
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       3
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       74
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       232
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       3
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;TrexGame_Batuhan_Kural_180403027.c,78 :: 		}
L_end_bDayMelody:
	RETURN      0
; end of _bDayMelody

_easyMelody:

;TrexGame_Batuhan_Kural_180403027.c,79 :: 		void easyMelody() {
;TrexGame_Batuhan_Kural_180403027.c,80 :: 		Sound_Play(1175, 200),Sound_Play(880, 200),Sound_Play(699, 200)
	MOVLW       151
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       4
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       200
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       112
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       3
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       200
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       187
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       2
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       200
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;TrexGame_Batuhan_Kural_180403027.c,81 :: 		,Sound_Play(880, 400),Sound_Play(699, 400),Sound_Play(588, 400);
	MOVLW       112
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       3
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       187
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       2
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       76
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       2
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;TrexGame_Batuhan_Kural_180403027.c,82 :: 		}
L_end_easyMelody:
	RETURN      0
; end of _easyMelody

_deathMelody:

;TrexGame_Batuhan_Kural_180403027.c,83 :: 		void deathMelody(){
;TrexGame_Batuhan_Kural_180403027.c,84 :: 		Sound_Play(247,200),Sound_Play(196,200),Sound_Play(165,200),Sound_Play(65,200);
	MOVLW       247
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       200
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       196
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       200
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       165
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       200
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       65
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       200
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;TrexGame_Batuhan_Kural_180403027.c,85 :: 		}
L_end_deathMelody:
	RETURN      0
; end of _deathMelody

_jumpMelody:

;TrexGame_Batuhan_Kural_180403027.c,86 :: 		void jumpMelody(){
;TrexGame_Batuhan_Kural_180403027.c,87 :: 		Sound_Play(784,10),Sound_Play(1047,10);
	MOVLW       16
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       3
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       10
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       23
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       4
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       10
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;TrexGame_Batuhan_Kural_180403027.c,88 :: 		}
L_end_jumpMelody:
	RETURN      0
; end of _jumpMelody

_loveMelody:

;TrexGame_Batuhan_Kural_180403027.c,89 :: 		void loveMelody(){
;TrexGame_Batuhan_Kural_180403027.c,90 :: 		Sound_Play(523,400),Sound_Play(330,400),Sound_Play(330,400),Sound_Play(523,400),Sound_Play(523,1600),
	MOVLW       11
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       2
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       74
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       74
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       11
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       2
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       11
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       2
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       64
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       6
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;TrexGame_Batuhan_Kural_180403027.c,91 :: 		Sound_Play(330,400),Sound_Play(330,200),Sound_Play(523,400),Sound_Play(523,200),Sound_Play(523,400),
	MOVLW       74
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       74
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       200
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       11
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       2
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       11
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       2
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       200
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       11
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       2
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;TrexGame_Batuhan_Kural_180403027.c,92 :: 		Sound_Play(349,400),Sound_Play(330,400),Sound_Play(293,400),Sound_Play(293,200),Sound_Play(293,400),
	MOVLW       93
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       74
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       37
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       37
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       200
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       37
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;TrexGame_Batuhan_Kural_180403027.c,93 :: 		Sound_Play(494,400),Sound_Play(494,1600),Sound_Play(293,400),Sound_Play(293,200),Sound_Play(494,400),
	MOVLW       238
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       238
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       64
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       6
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       37
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       37
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       200
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       238
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;TrexGame_Batuhan_Kural_180403027.c,94 :: 		Sound_Play(494,200),Sound_Play(293,400),Sound_Play(330,400),Sound_Play(262,400),Sound_Play(262,200),
	MOVLW       238
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       200
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       37
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       74
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       6
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       6
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       200
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;TrexGame_Batuhan_Kural_180403027.c,95 :: 		Sound_Play(262,200),Sound_Play(440,400),Sound_Play(440,1600);
	MOVLW       6
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       200
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       184
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       144
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
	MOVLW       184
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       64
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       6
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;TrexGame_Batuhan_Kural_180403027.c,96 :: 		}
L_end_loveMelody:
	RETURN      0
; end of _loveMelody

_interrupt:

;TrexGame_Batuhan_Kural_180403027.c,97 :: 		void interrupt(){
;TrexGame_Batuhan_Kural_180403027.c,98 :: 		Sound_Init(&PORTE, 2);
	MOVLW       PORTE+0
	MOVWF       FARG_Sound_Init_snd_port+0 
	MOVLW       hi_addr(PORTE+0)
	MOVWF       FARG_Sound_Init_snd_port+1 
	MOVLW       2
	MOVWF       FARG_Sound_Init_snd_pin+0 
	CALL        _Sound_Init+0, 0
;TrexGame_Batuhan_Kural_180403027.c,99 :: 		if(INT0F_bit == 1 && gameState == 1){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt3
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt755
	MOVLW       1
	XORWF       _gameState+0, 0 
L__interrupt755:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt3
L__interrupt634:
;TrexGame_Batuhan_Kural_180403027.c,100 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,101 :: 		gameState = 0;
	CLRF        _gameState+0 
	CLRF        _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,102 :: 		difficultyState = 1;
	MOVLW       1
	MOVWF       _difficultyState+0 
	MOVLW       0
	MOVWF       _difficultyState+1 
;TrexGame_Batuhan_Kural_180403027.c,103 :: 		MainMenuState = 1;
	MOVLW       1
	MOVWF       _MainMenuState+0 
	MOVLW       0
	MOVWF       _MainMenuState+1 
;TrexGame_Batuhan_Kural_180403027.c,104 :: 		alive = 1;
	MOVLW       1
	MOVWF       _alive+0 
	MOVLW       0
	MOVWF       _alive+1 
;TrexGame_Batuhan_Kural_180403027.c,105 :: 		autoPilot = 0;
	CLRF        _autoPilot+0 
	CLRF        _autoPilot+1 
;TrexGame_Batuhan_Kural_180403027.c,106 :: 		}
L_interrupt3:
;TrexGame_Batuhan_Kural_180403027.c,107 :: 		if(INT1F_bit == 1 && gameState == 1){
	BTFSS       INT1F_bit+0, BitPos(INT1F_bit+0) 
	GOTO        L_interrupt6
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt756
	MOVLW       1
	XORWF       _gameState+0, 0 
L__interrupt756:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt6
L__interrupt633:
;TrexGame_Batuhan_Kural_180403027.c,108 :: 		INT1F_bit = 0;
	BCF         INT1F_bit+0, BitPos(INT1F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,109 :: 		gameState = 0;
	CLRF        _gameState+0 
	CLRF        _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,110 :: 		difficultyState = 1;
	MOVLW       1
	MOVWF       _difficultyState+0 
	MOVLW       0
	MOVWF       _difficultyState+1 
;TrexGame_Batuhan_Kural_180403027.c,111 :: 		MainMenuState = 1;
	MOVLW       1
	MOVWF       _MainMenuState+0 
	MOVLW       0
	MOVWF       _MainMenuState+1 
;TrexGame_Batuhan_Kural_180403027.c,112 :: 		alive = 1;
	MOVLW       1
	MOVWF       _alive+0 
	MOVLW       0
	MOVWF       _alive+1 
;TrexGame_Batuhan_Kural_180403027.c,113 :: 		autoPilot = 0;
	CLRF        _autoPilot+0 
	CLRF        _autoPilot+1 
;TrexGame_Batuhan_Kural_180403027.c,114 :: 		}
L_interrupt6:
;TrexGame_Batuhan_Kural_180403027.c,115 :: 		if(INT2F_bit == 1 && gameState == 1){
	BTFSS       INT2F_bit+0, BitPos(INT2F_bit+0) 
	GOTO        L_interrupt9
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt757
	MOVLW       1
	XORWF       _gameState+0, 0 
L__interrupt757:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt9
L__interrupt632:
;TrexGame_Batuhan_Kural_180403027.c,116 :: 		INT2F_bit = 0;
	BCF         INT2F_bit+0, BitPos(INT2F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,117 :: 		gameState = 0;
	CLRF        _gameState+0 
	CLRF        _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,118 :: 		difficultyState = 1;
	MOVLW       1
	MOVWF       _difficultyState+0 
	MOVLW       0
	MOVWF       _difficultyState+1 
;TrexGame_Batuhan_Kural_180403027.c,119 :: 		MainMenuState = 1;
	MOVLW       1
	MOVWF       _MainMenuState+0 
	MOVLW       0
	MOVWF       _MainMenuState+1 
;TrexGame_Batuhan_Kural_180403027.c,120 :: 		alive = 1;
	MOVLW       1
	MOVWF       _alive+0 
	MOVLW       0
	MOVWF       _alive+1 
;TrexGame_Batuhan_Kural_180403027.c,121 :: 		autoPilot = 0;
	CLRF        _autoPilot+0 
	CLRF        _autoPilot+1 
;TrexGame_Batuhan_Kural_180403027.c,122 :: 		}
L_interrupt9:
;TrexGame_Batuhan_Kural_180403027.c,123 :: 		if(INT1F_bit == 1 && MainMenuState == 1 && gameState == 0){
	BTFSS       INT1F_bit+0, BitPos(INT1F_bit+0) 
	GOTO        L_interrupt12
	MOVLW       0
	XORWF       _MainMenuState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt758
	MOVLW       1
	XORWF       _MainMenuState+0, 0 
L__interrupt758:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt12
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt759
	MOVLW       0
	XORWF       _gameState+0, 0 
L__interrupt759:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt12
L__interrupt631:
;TrexGame_Batuhan_Kural_180403027.c,124 :: 		INT1F_bit = 0;
	BCF         INT1F_bit+0, BitPos(INT1F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,125 :: 		MainMenuState = 3;
	MOVLW       3
	MOVWF       _MainMenuState+0 
	MOVLW       0
	MOVWF       _MainMenuState+1 
;TrexGame_Batuhan_Kural_180403027.c,126 :: 		}
L_interrupt12:
;TrexGame_Batuhan_Kural_180403027.c,127 :: 		if(INT1F_bit == 1 && MainMenuState == 3 && gameState == 0){
	BTFSS       INT1F_bit+0, BitPos(INT1F_bit+0) 
	GOTO        L_interrupt15
	MOVLW       0
	XORWF       _MainMenuState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt760
	MOVLW       3
	XORWF       _MainMenuState+0, 0 
L__interrupt760:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt15
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt761
	MOVLW       0
	XORWF       _gameState+0, 0 
L__interrupt761:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt15
L__interrupt630:
;TrexGame_Batuhan_Kural_180403027.c,128 :: 		INT1F_bit = 0;
	BCF         INT1F_bit+0, BitPos(INT1F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,129 :: 		MainMenuState = 2;
	MOVLW       2
	MOVWF       _MainMenuState+0 
	MOVLW       0
	MOVWF       _MainMenuState+1 
;TrexGame_Batuhan_Kural_180403027.c,130 :: 		}
L_interrupt15:
;TrexGame_Batuhan_Kural_180403027.c,131 :: 		if(INT1F_bit == 1 && MainMenuState == 2 && gameState == 0){
	BTFSS       INT1F_bit+0, BitPos(INT1F_bit+0) 
	GOTO        L_interrupt18
	MOVLW       0
	XORWF       _MainMenuState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt762
	MOVLW       2
	XORWF       _MainMenuState+0, 0 
L__interrupt762:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt18
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt763
	MOVLW       0
	XORWF       _gameState+0, 0 
L__interrupt763:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt18
L__interrupt629:
;TrexGame_Batuhan_Kural_180403027.c,132 :: 		INT1F_bit = 0;
	BCF         INT1F_bit+0, BitPos(INT1F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,133 :: 		MainMenuState = 1;
	MOVLW       1
	MOVWF       _MainMenuState+0 
	MOVLW       0
	MOVWF       _MainMenuState+1 
;TrexGame_Batuhan_Kural_180403027.c,134 :: 		}
L_interrupt18:
;TrexGame_Batuhan_Kural_180403027.c,135 :: 		if(INT2F_bit == 1 && MainMenuState == 1 && gameState == 0){
	BTFSS       INT2F_bit+0, BitPos(INT2F_bit+0) 
	GOTO        L_interrupt21
	MOVLW       0
	XORWF       _MainMenuState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt764
	MOVLW       1
	XORWF       _MainMenuState+0, 0 
L__interrupt764:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt21
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt765
	MOVLW       0
	XORWF       _gameState+0, 0 
L__interrupt765:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt21
L__interrupt628:
;TrexGame_Batuhan_Kural_180403027.c,136 :: 		INT2F_bit = 0;
	BCF         INT2F_bit+0, BitPos(INT2F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,137 :: 		MainMenuState = 2;
	MOVLW       2
	MOVWF       _MainMenuState+0 
	MOVLW       0
	MOVWF       _MainMenuState+1 
;TrexGame_Batuhan_Kural_180403027.c,138 :: 		}
L_interrupt21:
;TrexGame_Batuhan_Kural_180403027.c,139 :: 		if(INT2F_bit == 1 && MainMenuState == 2 && gameState == 0){
	BTFSS       INT2F_bit+0, BitPos(INT2F_bit+0) 
	GOTO        L_interrupt24
	MOVLW       0
	XORWF       _MainMenuState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt766
	MOVLW       2
	XORWF       _MainMenuState+0, 0 
L__interrupt766:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt24
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt767
	MOVLW       0
	XORWF       _gameState+0, 0 
L__interrupt767:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt24
L__interrupt627:
;TrexGame_Batuhan_Kural_180403027.c,140 :: 		INT2F_bit = 0;
	BCF         INT2F_bit+0, BitPos(INT2F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,141 :: 		MainMenuState = 3;
	MOVLW       3
	MOVWF       _MainMenuState+0 
	MOVLW       0
	MOVWF       _MainMenuState+1 
;TrexGame_Batuhan_Kural_180403027.c,142 :: 		}
L_interrupt24:
;TrexGame_Batuhan_Kural_180403027.c,143 :: 		if(INT2F_bit == 1 && MainMenuState == 3 && gameState == 0){
	BTFSS       INT2F_bit+0, BitPos(INT2F_bit+0) 
	GOTO        L_interrupt27
	MOVLW       0
	XORWF       _MainMenuState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt768
	MOVLW       3
	XORWF       _MainMenuState+0, 0 
L__interrupt768:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt27
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt769
	MOVLW       0
	XORWF       _gameState+0, 0 
L__interrupt769:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt27
L__interrupt626:
;TrexGame_Batuhan_Kural_180403027.c,144 :: 		INT2F_bit = 0;
	BCF         INT2F_bit+0, BitPos(INT2F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,145 :: 		MainMenuState = 1;
	MOVLW       1
	MOVWF       _MainMenuState+0 
	MOVLW       0
	MOVWF       _MainMenuState+1 
;TrexGame_Batuhan_Kural_180403027.c,146 :: 		}
L_interrupt27:
;TrexGame_Batuhan_Kural_180403027.c,147 :: 		if(INT0F_bit == 1 && MainMenuState == 1 && gameState == 0){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt30
	MOVLW       0
	XORWF       _MainMenuState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt770
	MOVLW       1
	XORWF       _MainMenuState+0, 0 
L__interrupt770:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt30
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt771
	MOVLW       0
	XORWF       _gameState+0, 0 
L__interrupt771:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt30
L__interrupt625:
;TrexGame_Batuhan_Kural_180403027.c,148 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,149 :: 		gameState = 4;
	MOVLW       4
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,150 :: 		}
L_interrupt30:
;TrexGame_Batuhan_Kural_180403027.c,151 :: 		if(INT0F_bit == 1 && MainMenuState == 2 && gameState == 0){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt33
	MOVLW       0
	XORWF       _MainMenuState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt772
	MOVLW       2
	XORWF       _MainMenuState+0, 0 
L__interrupt772:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt33
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt773
	MOVLW       0
	XORWF       _gameState+0, 0 
L__interrupt773:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt33
L__interrupt624:
;TrexGame_Batuhan_Kural_180403027.c,152 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,153 :: 		gameState = 8;
	MOVLW       8
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,154 :: 		}
L_interrupt33:
;TrexGame_Batuhan_Kural_180403027.c,155 :: 		if(INT1F_bit == 1 && settingsState == 0 && gameState == 8){
	BTFSS       INT1F_bit+0, BitPos(INT1F_bit+0) 
	GOTO        L_interrupt36
	MOVLW       0
	XORWF       _settingsState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt774
	MOVLW       0
	XORWF       _settingsState+0, 0 
L__interrupt774:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt36
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt775
	MOVLW       8
	XORWF       _gameState+0, 0 
L__interrupt775:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt36
L__interrupt623:
;TrexGame_Batuhan_Kural_180403027.c,156 :: 		INT1F_bit = 0;
	BCF         INT1F_bit+0, BitPos(INT1F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,157 :: 		settingsState = 1;
	MOVLW       1
	MOVWF       _settingsState+0 
	MOVLW       0
	MOVWF       _settingsState+1 
;TrexGame_Batuhan_Kural_180403027.c,158 :: 		}
L_interrupt36:
;TrexGame_Batuhan_Kural_180403027.c,159 :: 		if(INT1F_bit == 1 && settingsState == 1 && gameState == 8){
	BTFSS       INT1F_bit+0, BitPos(INT1F_bit+0) 
	GOTO        L_interrupt39
	MOVLW       0
	XORWF       _settingsState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt776
	MOVLW       1
	XORWF       _settingsState+0, 0 
L__interrupt776:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt39
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt777
	MOVLW       8
	XORWF       _gameState+0, 0 
L__interrupt777:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt39
L__interrupt622:
;TrexGame_Batuhan_Kural_180403027.c,160 :: 		INT1F_bit = 0;
	BCF         INT1F_bit+0, BitPos(INT1F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,161 :: 		settingsState = 0;
	CLRF        _settingsState+0 
	CLRF        _settingsState+1 
;TrexGame_Batuhan_Kural_180403027.c,162 :: 		}
L_interrupt39:
;TrexGame_Batuhan_Kural_180403027.c,163 :: 		if(INT2F_bit == 1 && settingsState == 0 && gameState == 8){
	BTFSS       INT2F_bit+0, BitPos(INT2F_bit+0) 
	GOTO        L_interrupt42
	MOVLW       0
	XORWF       _settingsState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt778
	MOVLW       0
	XORWF       _settingsState+0, 0 
L__interrupt778:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt42
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt779
	MOVLW       8
	XORWF       _gameState+0, 0 
L__interrupt779:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt42
L__interrupt621:
;TrexGame_Batuhan_Kural_180403027.c,164 :: 		INT2F_bit = 0;
	BCF         INT2F_bit+0, BitPos(INT2F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,165 :: 		settingsState = 1;
	MOVLW       1
	MOVWF       _settingsState+0 
	MOVLW       0
	MOVWF       _settingsState+1 
;TrexGame_Batuhan_Kural_180403027.c,166 :: 		}
L_interrupt42:
;TrexGame_Batuhan_Kural_180403027.c,167 :: 		if(INT2F_bit == 1 && settingsState == 1 && gameState == 8){
	BTFSS       INT2F_bit+0, BitPos(INT2F_bit+0) 
	GOTO        L_interrupt45
	MOVLW       0
	XORWF       _settingsState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt780
	MOVLW       1
	XORWF       _settingsState+0, 0 
L__interrupt780:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt45
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt781
	MOVLW       8
	XORWF       _gameState+0, 0 
L__interrupt781:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt45
L__interrupt620:
;TrexGame_Batuhan_Kural_180403027.c,168 :: 		INT2F_bit = 0;
	BCF         INT2F_bit+0, BitPos(INT2F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,169 :: 		settingsState = 0;
	CLRF        _settingsState+0 
	CLRF        _settingsState+1 
;TrexGame_Batuhan_Kural_180403027.c,170 :: 		}
L_interrupt45:
;TrexGame_Batuhan_Kural_180403027.c,171 :: 		if(INT0F_bit == 1 && settingsState == 0 && gameState == 8 && mute == 0){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt48
	MOVLW       0
	XORWF       _settingsState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt782
	MOVLW       0
	XORWF       _settingsState+0, 0 
L__interrupt782:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt48
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt783
	MOVLW       8
	XORWF       _gameState+0, 0 
L__interrupt783:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt48
	MOVLW       0
	XORWF       _mute+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt784
	MOVLW       0
	XORWF       _mute+0, 0 
L__interrupt784:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt48
L__interrupt619:
;TrexGame_Batuhan_Kural_180403027.c,172 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,173 :: 		mute = 1 ;
	MOVLW       1
	MOVWF       _mute+0 
	MOVLW       0
	MOVWF       _mute+1 
;TrexGame_Batuhan_Kural_180403027.c,174 :: 		}
L_interrupt48:
;TrexGame_Batuhan_Kural_180403027.c,175 :: 		if(INT0F_bit == 1 && settingsState == 0 && gameState == 8 && mute == 1){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt51
	MOVLW       0
	XORWF       _settingsState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt785
	MOVLW       0
	XORWF       _settingsState+0, 0 
L__interrupt785:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt51
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt786
	MOVLW       8
	XORWF       _gameState+0, 0 
L__interrupt786:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt51
	MOVLW       0
	XORWF       _mute+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt787
	MOVLW       1
	XORWF       _mute+0, 0 
L__interrupt787:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt51
L__interrupt618:
;TrexGame_Batuhan_Kural_180403027.c,176 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,177 :: 		jumpMelody();
	CALL        _jumpMelody+0, 0
;TrexGame_Batuhan_Kural_180403027.c,178 :: 		mute = 0 ;
	CLRF        _mute+0 
	CLRF        _mute+1 
;TrexGame_Batuhan_Kural_180403027.c,179 :: 		}
L_interrupt51:
;TrexGame_Batuhan_Kural_180403027.c,180 :: 		if(INT0F_bit == 1 && settingsState == 1 && gameState == 8){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt54
	MOVLW       0
	XORWF       _settingsState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt788
	MOVLW       1
	XORWF       _settingsState+0, 0 
L__interrupt788:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt54
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt789
	MOVLW       8
	XORWF       _gameState+0, 0 
L__interrupt789:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt54
L__interrupt617:
;TrexGame_Batuhan_Kural_180403027.c,181 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,182 :: 		gameState = 10;
	MOVLW       10
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,183 :: 		}
L_interrupt54:
;TrexGame_Batuhan_Kural_180403027.c,184 :: 		if(INT1F_bit == 1 && languageState == 0 && gameState == 10){
	BTFSS       INT1F_bit+0, BitPos(INT1F_bit+0) 
	GOTO        L_interrupt57
	MOVLW       0
	XORWF       _languageState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt790
	MOVLW       0
	XORWF       _languageState+0, 0 
L__interrupt790:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt57
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt791
	MOVLW       10
	XORWF       _gameState+0, 0 
L__interrupt791:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt57
L__interrupt616:
;TrexGame_Batuhan_Kural_180403027.c,185 :: 		INT1F_bit = 0;
	BCF         INT1F_bit+0, BitPos(INT1F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,186 :: 		languageState = 1;
	MOVLW       1
	MOVWF       _languageState+0 
	MOVLW       0
	MOVWF       _languageState+1 
;TrexGame_Batuhan_Kural_180403027.c,187 :: 		}
L_interrupt57:
;TrexGame_Batuhan_Kural_180403027.c,188 :: 		if(INT1F_bit == 1 && languageState == 1 && gameState == 10){
	BTFSS       INT1F_bit+0, BitPos(INT1F_bit+0) 
	GOTO        L_interrupt60
	MOVLW       0
	XORWF       _languageState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt792
	MOVLW       1
	XORWF       _languageState+0, 0 
L__interrupt792:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt60
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt793
	MOVLW       10
	XORWF       _gameState+0, 0 
L__interrupt793:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt60
L__interrupt615:
;TrexGame_Batuhan_Kural_180403027.c,189 :: 		INT1F_bit = 0;
	BCF         INT1F_bit+0, BitPos(INT1F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,190 :: 		languageState = 0;
	CLRF        _languageState+0 
	CLRF        _languageState+1 
;TrexGame_Batuhan_Kural_180403027.c,191 :: 		}
L_interrupt60:
;TrexGame_Batuhan_Kural_180403027.c,192 :: 		if(INT2F_bit == 1 && languageState == 0 && gameState == 10){
	BTFSS       INT2F_bit+0, BitPos(INT2F_bit+0) 
	GOTO        L_interrupt63
	MOVLW       0
	XORWF       _languageState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt794
	MOVLW       0
	XORWF       _languageState+0, 0 
L__interrupt794:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt63
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt795
	MOVLW       10
	XORWF       _gameState+0, 0 
L__interrupt795:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt63
L__interrupt614:
;TrexGame_Batuhan_Kural_180403027.c,193 :: 		INT2F_bit = 0;
	BCF         INT2F_bit+0, BitPos(INT2F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,194 :: 		languageState = 1;
	MOVLW       1
	MOVWF       _languageState+0 
	MOVLW       0
	MOVWF       _languageState+1 
;TrexGame_Batuhan_Kural_180403027.c,195 :: 		}
L_interrupt63:
;TrexGame_Batuhan_Kural_180403027.c,196 :: 		if(INT2F_bit == 1 && languageState == 1 && gameState == 10){
	BTFSS       INT2F_bit+0, BitPos(INT2F_bit+0) 
	GOTO        L_interrupt66
	MOVLW       0
	XORWF       _languageState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt796
	MOVLW       1
	XORWF       _languageState+0, 0 
L__interrupt796:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt66
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt797
	MOVLW       10
	XORWF       _gameState+0, 0 
L__interrupt797:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt66
L__interrupt613:
;TrexGame_Batuhan_Kural_180403027.c,197 :: 		INT2F_bit = 0;
	BCF         INT2F_bit+0, BitPos(INT2F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,198 :: 		languageState = 0;
	CLRF        _languageState+0 
	CLRF        _languageState+1 
;TrexGame_Batuhan_Kural_180403027.c,199 :: 		}
L_interrupt66:
;TrexGame_Batuhan_Kural_180403027.c,200 :: 		if(INT0F_bit == 1 && languageState == 0 && gameState == 10){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt69
	MOVLW       0
	XORWF       _languageState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt798
	MOVLW       0
	XORWF       _languageState+0, 0 
L__interrupt798:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt69
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt799
	MOVLW       10
	XORWF       _gameState+0, 0 
L__interrupt799:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt69
L__interrupt612:
;TrexGame_Batuhan_Kural_180403027.c,201 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,202 :: 		language = 0;
	CLRF        _language+0 
	CLRF        _language+1 
;TrexGame_Batuhan_Kural_180403027.c,203 :: 		gameState = 0;
	CLRF        _gameState+0 
	CLRF        _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,204 :: 		}
L_interrupt69:
;TrexGame_Batuhan_Kural_180403027.c,205 :: 		if(INT0F_bit == 1 && languageState == 1 && gameState == 10){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt72
	MOVLW       0
	XORWF       _languageState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt800
	MOVLW       1
	XORWF       _languageState+0, 0 
L__interrupt800:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt72
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt801
	MOVLW       10
	XORWF       _gameState+0, 0 
L__interrupt801:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt72
L__interrupt611:
;TrexGame_Batuhan_Kural_180403027.c,206 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,207 :: 		language = 1;
	MOVLW       1
	MOVWF       _language+0 
	MOVLW       0
	MOVWF       _language+1 
;TrexGame_Batuhan_Kural_180403027.c,208 :: 		gameState = 0;
	CLRF        _gameState+0 
	CLRF        _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,209 :: 		}
L_interrupt72:
;TrexGame_Batuhan_Kural_180403027.c,210 :: 		if(INT0F_bit == 1 && MainMenuState == 3 && gameState == 0){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt75
	MOVLW       0
	XORWF       _MainMenuState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt802
	MOVLW       3
	XORWF       _MainMenuState+0, 0 
L__interrupt802:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt75
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt803
	MOVLW       0
	XORWF       _gameState+0, 0 
L__interrupt803:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt75
L__interrupt610:
;TrexGame_Batuhan_Kural_180403027.c,211 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,212 :: 		gameState = 9;
	MOVLW       9
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,213 :: 		}
L_interrupt75:
;TrexGame_Batuhan_Kural_180403027.c,214 :: 		if(INT1F_bit == 1 && gameState == 9){
	BTFSS       INT1F_bit+0, BitPos(INT1F_bit+0) 
	GOTO        L_interrupt78
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt804
	MOVLW       9
	XORWF       _gameState+0, 0 
L__interrupt804:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt78
L__interrupt609:
;TrexGame_Batuhan_Kural_180403027.c,215 :: 		INT1F_bit = 0;
	BCF         INT1F_bit+0, BitPos(INT1F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,216 :: 		gameState = 0;
	CLRF        _gameState+0 
	CLRF        _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,217 :: 		}
L_interrupt78:
;TrexGame_Batuhan_Kural_180403027.c,218 :: 		if(INT1F_bit == 1 && difficultyState == 1 && gameState == 4){
	BTFSS       INT1F_bit+0, BitPos(INT1F_bit+0) 
	GOTO        L_interrupt81
	MOVLW       0
	XORWF       _difficultyState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt805
	MOVLW       1
	XORWF       _difficultyState+0, 0 
L__interrupt805:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt81
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt806
	MOVLW       4
	XORWF       _gameState+0, 0 
L__interrupt806:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt81
L__interrupt608:
;TrexGame_Batuhan_Kural_180403027.c,219 :: 		INT1F_bit = 0;
	BCF         INT1F_bit+0, BitPos(INT1F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,220 :: 		difficultyState = 3;
	MOVLW       3
	MOVWF       _difficultyState+0 
	MOVLW       0
	MOVWF       _difficultyState+1 
;TrexGame_Batuhan_Kural_180403027.c,221 :: 		}
L_interrupt81:
;TrexGame_Batuhan_Kural_180403027.c,222 :: 		if(INT1F_bit == 1 && difficultyState == 3 && gameState == 4){
	BTFSS       INT1F_bit+0, BitPos(INT1F_bit+0) 
	GOTO        L_interrupt84
	MOVLW       0
	XORWF       _difficultyState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt807
	MOVLW       3
	XORWF       _difficultyState+0, 0 
L__interrupt807:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt84
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt808
	MOVLW       4
	XORWF       _gameState+0, 0 
L__interrupt808:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt84
L__interrupt607:
;TrexGame_Batuhan_Kural_180403027.c,223 :: 		INT1F_bit = 0;
	BCF         INT1F_bit+0, BitPos(INT1F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,224 :: 		difficultyState = 2;
	MOVLW       2
	MOVWF       _difficultyState+0 
	MOVLW       0
	MOVWF       _difficultyState+1 
;TrexGame_Batuhan_Kural_180403027.c,225 :: 		}
L_interrupt84:
;TrexGame_Batuhan_Kural_180403027.c,226 :: 		if(INT1F_bit == 1 && difficultyState == 2 && gameState == 4){
	BTFSS       INT1F_bit+0, BitPos(INT1F_bit+0) 
	GOTO        L_interrupt87
	MOVLW       0
	XORWF       _difficultyState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt809
	MOVLW       2
	XORWF       _difficultyState+0, 0 
L__interrupt809:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt87
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt810
	MOVLW       4
	XORWF       _gameState+0, 0 
L__interrupt810:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt87
L__interrupt606:
;TrexGame_Batuhan_Kural_180403027.c,227 :: 		INT1F_bit = 0;
	BCF         INT1F_bit+0, BitPos(INT1F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,228 :: 		difficultyState = 1;
	MOVLW       1
	MOVWF       _difficultyState+0 
	MOVLW       0
	MOVWF       _difficultyState+1 
;TrexGame_Batuhan_Kural_180403027.c,229 :: 		}
L_interrupt87:
;TrexGame_Batuhan_Kural_180403027.c,230 :: 		if(INT2F_bit == 1 && difficultyState == 1 && gameState == 4){
	BTFSS       INT2F_bit+0, BitPos(INT2F_bit+0) 
	GOTO        L_interrupt90
	MOVLW       0
	XORWF       _difficultyState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt811
	MOVLW       1
	XORWF       _difficultyState+0, 0 
L__interrupt811:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt90
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt812
	MOVLW       4
	XORWF       _gameState+0, 0 
L__interrupt812:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt90
L__interrupt605:
;TrexGame_Batuhan_Kural_180403027.c,231 :: 		INT2F_bit = 0;
	BCF         INT2F_bit+0, BitPos(INT2F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,232 :: 		difficultyState = 2;
	MOVLW       2
	MOVWF       _difficultyState+0 
	MOVLW       0
	MOVWF       _difficultyState+1 
;TrexGame_Batuhan_Kural_180403027.c,233 :: 		}
L_interrupt90:
;TrexGame_Batuhan_Kural_180403027.c,234 :: 		if(INT2F_bit == 1 && difficultyState == 2 && gameState == 4){
	BTFSS       INT2F_bit+0, BitPos(INT2F_bit+0) 
	GOTO        L_interrupt93
	MOVLW       0
	XORWF       _difficultyState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt813
	MOVLW       2
	XORWF       _difficultyState+0, 0 
L__interrupt813:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt93
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt814
	MOVLW       4
	XORWF       _gameState+0, 0 
L__interrupt814:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt93
L__interrupt604:
;TrexGame_Batuhan_Kural_180403027.c,235 :: 		INT2F_bit = 0;
	BCF         INT2F_bit+0, BitPos(INT2F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,236 :: 		difficultyState = 3;
	MOVLW       3
	MOVWF       _difficultyState+0 
	MOVLW       0
	MOVWF       _difficultyState+1 
;TrexGame_Batuhan_Kural_180403027.c,237 :: 		}
L_interrupt93:
;TrexGame_Batuhan_Kural_180403027.c,238 :: 		if(INT2F_bit == 1 && difficultyState == 3 && gameState == 4){
	BTFSS       INT2F_bit+0, BitPos(INT2F_bit+0) 
	GOTO        L_interrupt96
	MOVLW       0
	XORWF       _difficultyState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt815
	MOVLW       3
	XORWF       _difficultyState+0, 0 
L__interrupt815:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt96
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt816
	MOVLW       4
	XORWF       _gameState+0, 0 
L__interrupt816:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt96
L__interrupt603:
;TrexGame_Batuhan_Kural_180403027.c,239 :: 		INT2F_bit = 0;
	BCF         INT2F_bit+0, BitPos(INT2F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,240 :: 		difficultyState = 1;
	MOVLW       1
	MOVWF       _difficultyState+0 
	MOVLW       0
	MOVWF       _difficultyState+1 
;TrexGame_Batuhan_Kural_180403027.c,241 :: 		}
L_interrupt96:
;TrexGame_Batuhan_Kural_180403027.c,242 :: 		if(INT0F_bit == 1 && gameState == 4 && difficultyState == 1){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt99
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt817
	MOVLW       4
	XORWF       _gameState+0, 0 
L__interrupt817:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt99
	MOVLW       0
	XORWF       _difficultyState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt818
	MOVLW       1
	XORWF       _difficultyState+0, 0 
L__interrupt818:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt99
L__interrupt602:
;TrexGame_Batuhan_Kural_180403027.c,243 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,244 :: 		gameState = 2;
	MOVLW       2
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,245 :: 		MSDelay = 150;
	MOVLW       150
	MOVWF       _MSDelay+0 
	MOVLW       0
	MOVWF       _MSDelay+1 
;TrexGame_Batuhan_Kural_180403027.c,246 :: 		scoreMultiplier = 1;
	MOVLW       1
	MOVWF       _scoreMultiplier+0 
	MOVLW       0
	MOVWF       _scoreMultiplier+1 
;TrexGame_Batuhan_Kural_180403027.c,247 :: 		speedUp = 2;
	MOVLW       2
	MOVWF       _speedUp+0 
	MOVLW       0
	MOVWF       _speedUp+1 
;TrexGame_Batuhan_Kural_180403027.c,248 :: 		health = 3;
	MOVLW       3
	MOVWF       _health+0 
	MOVLW       0
	MOVWF       _health+1 
;TrexGame_Batuhan_Kural_180403027.c,249 :: 		anumber = 1;
	MOVLW       1
	MOVWF       _anumber+0 
	MOVLW       0
	MOVWF       _anumber+1 
;TrexGame_Batuhan_Kural_180403027.c,250 :: 		}
L_interrupt99:
;TrexGame_Batuhan_Kural_180403027.c,251 :: 		if(INT0F_bit == 1 && gameState == 4 && difficultyState == 2){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt102
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt819
	MOVLW       4
	XORWF       _gameState+0, 0 
L__interrupt819:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt102
	MOVLW       0
	XORWF       _difficultyState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt820
	MOVLW       2
	XORWF       _difficultyState+0, 0 
L__interrupt820:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt102
L__interrupt601:
;TrexGame_Batuhan_Kural_180403027.c,252 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,253 :: 		gameState = 2;
	MOVLW       2
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,254 :: 		MSDelay = 125;
	MOVLW       125
	MOVWF       _MSDelay+0 
	MOVLW       0
	MOVWF       _MSDelay+1 
;TrexGame_Batuhan_Kural_180403027.c,255 :: 		scoreMultiplier = 2;
	MOVLW       2
	MOVWF       _scoreMultiplier+0 
	MOVLW       0
	MOVWF       _scoreMultiplier+1 
;TrexGame_Batuhan_Kural_180403027.c,256 :: 		speedUp = 2;
	MOVLW       2
	MOVWF       _speedUp+0 
	MOVLW       0
	MOVWF       _speedUp+1 
;TrexGame_Batuhan_Kural_180403027.c,257 :: 		health = 3;
	MOVLW       3
	MOVWF       _health+0 
	MOVLW       0
	MOVWF       _health+1 
;TrexGame_Batuhan_Kural_180403027.c,258 :: 		anumber = 1;
	MOVLW       1
	MOVWF       _anumber+0 
	MOVLW       0
	MOVWF       _anumber+1 
;TrexGame_Batuhan_Kural_180403027.c,259 :: 		}
L_interrupt102:
;TrexGame_Batuhan_Kural_180403027.c,260 :: 		if(INT0F_bit == 1 && gameState == 4 && difficultyState == 3){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt105
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt821
	MOVLW       4
	XORWF       _gameState+0, 0 
L__interrupt821:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt105
	MOVLW       0
	XORWF       _difficultyState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt822
	MOVLW       3
	XORWF       _difficultyState+0, 0 
L__interrupt822:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt105
L__interrupt600:
;TrexGame_Batuhan_Kural_180403027.c,261 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,262 :: 		gameState = 2;
	MOVLW       2
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,263 :: 		MSDelay = 75;
	MOVLW       75
	MOVWF       _MSDelay+0 
	MOVLW       0
	MOVWF       _MSDelay+1 
;TrexGame_Batuhan_Kural_180403027.c,264 :: 		scoreMultiplier = 3;
	MOVLW       3
	MOVWF       _scoreMultiplier+0 
	MOVLW       0
	MOVWF       _scoreMultiplier+1 
;TrexGame_Batuhan_Kural_180403027.c,265 :: 		speedUp = 1;
	MOVLW       1
	MOVWF       _speedUp+0 
	MOVLW       0
	MOVWF       _speedUp+1 
;TrexGame_Batuhan_Kural_180403027.c,266 :: 		health = 3;
	MOVLW       3
	MOVWF       _health+0 
	MOVLW       0
	MOVWF       _health+1 
;TrexGame_Batuhan_Kural_180403027.c,267 :: 		anumber = 1;
	MOVLW       1
	MOVWF       _anumber+0 
	MOVLW       0
	MOVWF       _anumber+1 
;TrexGame_Batuhan_Kural_180403027.c,268 :: 		}
L_interrupt105:
;TrexGame_Batuhan_Kural_180403027.c,269 :: 		if(INT2F_bit == 1 && gameState == 2 && collusion == 1){
	BTFSS       INT2F_bit+0, BitPos(INT2F_bit+0) 
	GOTO        L_interrupt108
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt823
	MOVLW       2
	XORWF       _gameState+0, 0 
L__interrupt823:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt108
	MOVLW       0
	XORWF       _collusion+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt824
	MOVLW       1
	XORWF       _collusion+0, 0 
L__interrupt824:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt108
L__interrupt599:
;TrexGame_Batuhan_Kural_180403027.c,270 :: 		INT2F_bit = 0;
	BCF         INT2F_bit+0, BitPos(INT2F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,271 :: 		collusion = 0;
	CLRF        _collusion+0 
	CLRF        _collusion+1 
;TrexGame_Batuhan_Kural_180403027.c,272 :: 		if(mute == 0){
	MOVLW       0
	XORWF       _mute+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt825
	MOVLW       0
	XORWF       _mute+0, 0 
L__interrupt825:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt109
;TrexGame_Batuhan_Kural_180403027.c,273 :: 		collideMelody();
	CALL        _collideMelody+0, 0
;TrexGame_Batuhan_Kural_180403027.c,274 :: 		}
L_interrupt109:
;TrexGame_Batuhan_Kural_180403027.c,275 :: 		}
L_interrupt108:
;TrexGame_Batuhan_Kural_180403027.c,276 :: 		if(INT1F_bit == 1 && gameState == 2 && autoPilot == 0){
	BTFSS       INT1F_bit+0, BitPos(INT1F_bit+0) 
	GOTO        L_interrupt112
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt826
	MOVLW       2
	XORWF       _gameState+0, 0 
L__interrupt826:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt112
	MOVLW       0
	XORWF       _autoPilot+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt827
	MOVLW       0
	XORWF       _autoPilot+0, 0 
L__interrupt827:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt112
L__interrupt598:
;TrexGame_Batuhan_Kural_180403027.c,277 :: 		INT1F_bit = 0;
	BCF         INT1F_bit+0, BitPos(INT1F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,278 :: 		autoPilot = 1;
	MOVLW       1
	MOVWF       _autoPilot+0 
	MOVLW       0
	MOVWF       _autoPilot+1 
;TrexGame_Batuhan_Kural_180403027.c,279 :: 		}
L_interrupt112:
;TrexGame_Batuhan_Kural_180403027.c,280 :: 		if(INT1F_bit == 1 && gameState == 2 && autoPilot == 1){
	BTFSS       INT1F_bit+0, BitPos(INT1F_bit+0) 
	GOTO        L_interrupt115
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt828
	MOVLW       2
	XORWF       _gameState+0, 0 
L__interrupt828:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt115
	MOVLW       0
	XORWF       _autoPilot+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt829
	MOVLW       1
	XORWF       _autoPilot+0, 0 
L__interrupt829:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt115
L__interrupt597:
;TrexGame_Batuhan_Kural_180403027.c,281 :: 		INT1F_bit = 0;
	BCF         INT1F_bit+0, BitPos(INT1F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,282 :: 		autoPilot = 0;
	CLRF        _autoPilot+0 
	CLRF        _autoPilot+1 
;TrexGame_Batuhan_Kural_180403027.c,283 :: 		}
L_interrupt115:
;TrexGame_Batuhan_Kural_180403027.c,284 :: 		if(INT0F_bit == 1 && gameState == 2 && dinoState == 0){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt118
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt830
	MOVLW       2
	XORWF       _gameState+0, 0 
L__interrupt830:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt118
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt831
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__interrupt831:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt118
L__interrupt596:
;TrexGame_Batuhan_Kural_180403027.c,285 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,286 :: 		dinoState = 10;
	MOVLW       10
	MOVWF       _dinoState+0 
	MOVLW       0
	MOVWF       _dinoState+1 
;TrexGame_Batuhan_Kural_180403027.c,287 :: 		if(mute == 0){
	MOVLW       0
	XORWF       _mute+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt832
	MOVLW       0
	XORWF       _mute+0, 0 
L__interrupt832:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt119
;TrexGame_Batuhan_Kural_180403027.c,288 :: 		jumpMelody();
	CALL        _jumpMelody+0, 0
;TrexGame_Batuhan_Kural_180403027.c,289 :: 		}
L_interrupt119:
;TrexGame_Batuhan_Kural_180403027.c,290 :: 		}
L_interrupt118:
;TrexGame_Batuhan_Kural_180403027.c,291 :: 		if(INT0F_bit == 1 && gameState == 3 && alive == 1){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt122
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt833
	MOVLW       3
	XORWF       _gameState+0, 0 
L__interrupt833:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt122
	MOVLW       0
	XORWF       _alive+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt834
	MOVLW       1
	XORWF       _alive+0, 0 
L__interrupt834:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt122
L__interrupt595:
;TrexGame_Batuhan_Kural_180403027.c,292 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,293 :: 		if(mute == 0){
	MOVLW       0
	XORWF       _mute+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt835
	MOVLW       0
	XORWF       _mute+0, 0 
L__interrupt835:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt123
;TrexGame_Batuhan_Kural_180403027.c,294 :: 		deathMelody();
	CALL        _deathMelody+0, 0
;TrexGame_Batuhan_Kural_180403027.c,295 :: 		}
L_interrupt123:
;TrexGame_Batuhan_Kural_180403027.c,296 :: 		alive = 0;
	CLRF        _alive+0 
	CLRF        _alive+1 
;TrexGame_Batuhan_Kural_180403027.c,297 :: 		}
L_interrupt122:
;TrexGame_Batuhan_Kural_180403027.c,298 :: 		if(INT0F_bit == 1 && gameState == 3){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt126
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt836
	MOVLW       3
	XORWF       _gameState+0, 0 
L__interrupt836:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt126
L__interrupt594:
;TrexGame_Batuhan_Kural_180403027.c,299 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,300 :: 		gameState = 1;
	MOVLW       1
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,301 :: 		score = 0;
	CLRF        _score+0 
	CLRF        _score+1 
;TrexGame_Batuhan_Kural_180403027.c,302 :: 		}
L_interrupt126:
;TrexGame_Batuhan_Kural_180403027.c,303 :: 		if(INT0F_bit == 1 && gameState == 6 && alive == 1){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt129
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt837
	MOVLW       6
	XORWF       _gameState+0, 0 
L__interrupt837:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt129
	MOVLW       0
	XORWF       _alive+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt838
	MOVLW       1
	XORWF       _alive+0, 0 
L__interrupt838:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt129
L__interrupt593:
;TrexGame_Batuhan_Kural_180403027.c,304 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,305 :: 		if(mute == 0){
	MOVLW       0
	XORWF       _mute+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt839
	MOVLW       0
	XORWF       _mute+0, 0 
L__interrupt839:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt130
;TrexGame_Batuhan_Kural_180403027.c,306 :: 		bDayMelody();
	CALL        _bDayMelody+0, 0
;TrexGame_Batuhan_Kural_180403027.c,307 :: 		}
L_interrupt130:
;TrexGame_Batuhan_Kural_180403027.c,308 :: 		alive = 0;
	CLRF        _alive+0 
	CLRF        _alive+1 
;TrexGame_Batuhan_Kural_180403027.c,309 :: 		}
L_interrupt129:
;TrexGame_Batuhan_Kural_180403027.c,310 :: 		if(INT0F_bit == 1 && gameState == 6){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt133
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt840
	MOVLW       6
	XORWF       _gameState+0, 0 
L__interrupt840:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt133
L__interrupt592:
;TrexGame_Batuhan_Kural_180403027.c,311 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,312 :: 		gameState = 1;
	MOVLW       1
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,313 :: 		score = 0;
	CLRF        _score+0 
	CLRF        _score+1 
;TrexGame_Batuhan_Kural_180403027.c,314 :: 		}
L_interrupt133:
;TrexGame_Batuhan_Kural_180403027.c,315 :: 		if(INT0F_bit == 1 && gameState == 5 && alive == 1){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt136
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt841
	MOVLW       5
	XORWF       _gameState+0, 0 
L__interrupt841:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt136
	MOVLW       0
	XORWF       _alive+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt842
	MOVLW       1
	XORWF       _alive+0, 0 
L__interrupt842:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt136
L__interrupt591:
;TrexGame_Batuhan_Kural_180403027.c,316 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,317 :: 		if(mute == 0){
	MOVLW       0
	XORWF       _mute+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt843
	MOVLW       0
	XORWF       _mute+0, 0 
L__interrupt843:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt137
;TrexGame_Batuhan_Kural_180403027.c,318 :: 		easyMelody();
	CALL        _easyMelody+0, 0
;TrexGame_Batuhan_Kural_180403027.c,319 :: 		}
L_interrupt137:
;TrexGame_Batuhan_Kural_180403027.c,320 :: 		alive = 0;
	CLRF        _alive+0 
	CLRF        _alive+1 
;TrexGame_Batuhan_Kural_180403027.c,321 :: 		}
L_interrupt136:
;TrexGame_Batuhan_Kural_180403027.c,322 :: 		if(INT0F_bit == 1 && gameState == 5){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt140
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt844
	MOVLW       5
	XORWF       _gameState+0, 0 
L__interrupt844:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt140
L__interrupt590:
;TrexGame_Batuhan_Kural_180403027.c,323 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,324 :: 		gameState = 1;
	MOVLW       1
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,325 :: 		score = 0;
	CLRF        _score+0 
	CLRF        _score+1 
;TrexGame_Batuhan_Kural_180403027.c,326 :: 		}
L_interrupt140:
;TrexGame_Batuhan_Kural_180403027.c,327 :: 		if(INT0F_bit == 1 && gameState == 7 && alive == 1){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt143
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt845
	MOVLW       7
	XORWF       _gameState+0, 0 
L__interrupt845:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt143
	MOVLW       0
	XORWF       _alive+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt846
	MOVLW       1
	XORWF       _alive+0, 0 
L__interrupt846:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt143
L__interrupt589:
;TrexGame_Batuhan_Kural_180403027.c,328 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,329 :: 		if(mute == 0){
	MOVLW       0
	XORWF       _mute+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt847
	MOVLW       0
	XORWF       _mute+0, 0 
L__interrupt847:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt144
;TrexGame_Batuhan_Kural_180403027.c,330 :: 		loveMelody();
	CALL        _loveMelody+0, 0
;TrexGame_Batuhan_Kural_180403027.c,331 :: 		}
L_interrupt144:
;TrexGame_Batuhan_Kural_180403027.c,332 :: 		alive = 0;
	CLRF        _alive+0 
	CLRF        _alive+1 
;TrexGame_Batuhan_Kural_180403027.c,333 :: 		}
L_interrupt143:
;TrexGame_Batuhan_Kural_180403027.c,334 :: 		if(INT0F_bit == 1 && gameState == 7){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt147
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt848
	MOVLW       7
	XORWF       _gameState+0, 0 
L__interrupt848:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt147
L__interrupt588:
;TrexGame_Batuhan_Kural_180403027.c,335 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,336 :: 		gameState = 1;
	MOVLW       1
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,337 :: 		score = 0;
	CLRF        _score+0 
	CLRF        _score+1 
;TrexGame_Batuhan_Kural_180403027.c,338 :: 		}
L_interrupt147:
;TrexGame_Batuhan_Kural_180403027.c,340 :: 		if(INT0F_bit == 1){
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt148
;TrexGame_Batuhan_Kural_180403027.c,341 :: 		INT0F_bit = 0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,342 :: 		}
L_interrupt148:
;TrexGame_Batuhan_Kural_180403027.c,343 :: 		if(INT1F_bit == 1){
	BTFSS       INT1F_bit+0, BitPos(INT1F_bit+0) 
	GOTO        L_interrupt149
;TrexGame_Batuhan_Kural_180403027.c,344 :: 		INT1F_bit = 0;
	BCF         INT1F_bit+0, BitPos(INT1F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,345 :: 		}
L_interrupt149:
;TrexGame_Batuhan_Kural_180403027.c,346 :: 		if(INT2F_bit == 1){
	BTFSS       INT2F_bit+0, BitPos(INT2F_bit+0) 
	GOTO        L_interrupt150
;TrexGame_Batuhan_Kural_180403027.c,347 :: 		INT2F_bit = 0;
	BCF         INT2F_bit+0, BitPos(INT2F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,348 :: 		}
L_interrupt150:
;TrexGame_Batuhan_Kural_180403027.c,349 :: 		}
L_end_interrupt:
L__interrupt754:
	RETFIE      1
; end of _interrupt

_main:

;TrexGame_Batuhan_Kural_180403027.c,351 :: 		void main(void){
;TrexGame_Batuhan_Kural_180403027.c,354 :: 		ANCON0 = 0;
	CLRF        ANCON0+0 
;TrexGame_Batuhan_Kural_180403027.c,355 :: 		ANCON1= 0;
	CLRF        ANCON1+0 
;TrexGame_Batuhan_Kural_180403027.c,356 :: 		ANCON2 = 0;
	CLRF        ANCON2+0 
;TrexGame_Batuhan_Kural_180403027.c,357 :: 		TRISA = 0;
	CLRF        TRISA+0 
;TrexGame_Batuhan_Kural_180403027.c,358 :: 		TRISB = 0x07;
	MOVLW       7
	MOVWF       TRISB+0 
;TrexGame_Batuhan_Kural_180403027.c,359 :: 		TRISC = 0;
	CLRF        TRISC+0 
;TrexGame_Batuhan_Kural_180403027.c,360 :: 		TRISD = 0;
	CLRF        TRISD+0 
;TrexGame_Batuhan_Kural_180403027.c,361 :: 		TRISE = 0;
	CLRF        TRISE+0 
;TrexGame_Batuhan_Kural_180403027.c,362 :: 		TRISH = 0;
	CLRF        TRISH+0 
;TrexGame_Batuhan_Kural_180403027.c,365 :: 		INTEDG0_bit=0; //External Interrupt 0 Edge Select bit
	BCF         INTEDG0_bit+0, BitPos(INTEDG0_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,366 :: 		INT0IF_bit=0; //INT0 interrupt Flag Bit Clear
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,367 :: 		INT0IE_bit=1; //INT0 interrupt Enable Bit Set
	BSF         INT0IE_bit+0, BitPos(INT0IE_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,368 :: 		INTEDG1_bit=0;
	BCF         INTEDG1_bit+0, BitPos(INTEDG1_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,369 :: 		INT1IF_bit=0;
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,370 :: 		INT1IE_bit=1;
	BSF         INT1IE_bit+0, BitPos(INT1IE_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,371 :: 		INTEDG2_bit=0;
	BCF         INTEDG2_bit+0, BitPos(INTEDG2_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,372 :: 		INT2IF_bit=0;
	BCF         INT2IF_bit+0, BitPos(INT2IF_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,373 :: 		INT2IE_bit=1;
	BSF         INT2IE_bit+0, BitPos(INT2IE_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,374 :: 		GIE_bit=1; // Global Interrupt Register Set
	BSF         GIE_bit+0, BitPos(GIE_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,377 :: 		Glcd_Init();
	CALL        _Glcd_Init+0, 0
;TrexGame_Batuhan_Kural_180403027.c,378 :: 		Glcd_Fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;TrexGame_Batuhan_Kural_180403027.c,381 :: 		Lcd_Init();
	CALL        _Lcd_Init+0, 0
;TrexGame_Batuhan_Kural_180403027.c,382 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;TrexGame_Batuhan_Kural_180403027.c,383 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;TrexGame_Batuhan_Kural_180403027.c,385 :: 		Lcd_Out(1,10,"Trex Game 2K21");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_TrexGame_Batuhan_Kural_180403027+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_TrexGame_Batuhan_Kural_180403027+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,388 :: 		while(1){
L_main151:
;TrexGame_Batuhan_Kural_180403027.c,389 :: 		if(gameState == 1 && language == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main850
	MOVLW       1
	XORWF       _gameState+0, 0 
L__main850:
	BTFSS       STATUS+0, 2 
	GOTO        L_main155
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main851
	MOVLW       0
	XORWF       _language+0, 0 
L__main851:
	BTFSS       STATUS+0, 2 
	GOTO        L_main155
L__main745:
;TrexGame_Batuhan_Kural_180403027.c,390 :: 		Glcd_Image(dinoStart);
	MOVLW       _dinoStart+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoStart+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoStart+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,391 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main156:
	DECFSZ      R13, 1, 1
	BRA         L_main156
	DECFSZ      R12, 1, 1
	BRA         L_main156
	DECFSZ      R11, 1, 1
	BRA         L_main156
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,392 :: 		Glcd_Image(dinoStart2);
	MOVLW       _dinoStart2+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoStart2+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoStart2+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,393 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main157:
	DECFSZ      R13, 1, 1
	BRA         L_main157
	DECFSZ      R12, 1, 1
	BRA         L_main157
	DECFSZ      R11, 1, 1
	BRA         L_main157
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,394 :: 		}
L_main155:
;TrexGame_Batuhan_Kural_180403027.c,395 :: 		if(gameState == 1 && language == 1){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main852
	MOVLW       1
	XORWF       _gameState+0, 0 
L__main852:
	BTFSS       STATUS+0, 2 
	GOTO        L_main160
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main853
	MOVLW       1
	XORWF       _language+0, 0 
L__main853:
	BTFSS       STATUS+0, 2 
	GOTO        L_main160
L__main744:
;TrexGame_Batuhan_Kural_180403027.c,396 :: 		Glcd_Image(dinoStarten);
	MOVLW       _dinoStarten+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoStarten+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoStarten+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,397 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main161:
	DECFSZ      R13, 1, 1
	BRA         L_main161
	DECFSZ      R12, 1, 1
	BRA         L_main161
	DECFSZ      R11, 1, 1
	BRA         L_main161
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,398 :: 		Glcd_Image(dinoStart2en);
	MOVLW       _dinoStart2en+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoStart2en+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoStart2en+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,399 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main162:
	DECFSZ      R13, 1, 1
	BRA         L_main162
	DECFSZ      R12, 1, 1
	BRA         L_main162
	DECFSZ      R11, 1, 1
	BRA         L_main162
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,400 :: 		}
L_main160:
;TrexGame_Batuhan_Kural_180403027.c,401 :: 		if(gameState == 0 && MainMenuState == 1 && language == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main854
	MOVLW       0
	XORWF       _gameState+0, 0 
L__main854:
	BTFSS       STATUS+0, 2 
	GOTO        L_main165
	MOVLW       0
	XORWF       _MainMenuState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main855
	MOVLW       1
	XORWF       _MainMenuState+0, 0 
L__main855:
	BTFSS       STATUS+0, 2 
	GOTO        L_main165
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main856
	MOVLW       0
	XORWF       _language+0, 0 
L__main856:
	BTFSS       STATUS+0, 2 
	GOTO        L_main165
L__main743:
;TrexGame_Batuhan_Kural_180403027.c,402 :: 		Glcd_Image(dinoMainMenu);
	MOVLW       _dinoMainMenu+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMainMenu+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMainMenu+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,403 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main166:
	DECFSZ      R13, 1, 1
	BRA         L_main166
	DECFSZ      R12, 1, 1
	BRA         L_main166
	DECFSZ      R11, 1, 1
	BRA         L_main166
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,404 :: 		Glcd_Image(dinoMainMenu2);
	MOVLW       _dinoMainMenu2+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMainMenu2+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMainMenu2+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,405 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main167:
	DECFSZ      R13, 1, 1
	BRA         L_main167
	DECFSZ      R12, 1, 1
	BRA         L_main167
	DECFSZ      R11, 1, 1
	BRA         L_main167
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,406 :: 		}
L_main165:
;TrexGame_Batuhan_Kural_180403027.c,407 :: 		if(gameState == 0 && MainMenuState == 1 && language == 1){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main857
	MOVLW       0
	XORWF       _gameState+0, 0 
L__main857:
	BTFSS       STATUS+0, 2 
	GOTO        L_main170
	MOVLW       0
	XORWF       _MainMenuState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main858
	MOVLW       1
	XORWF       _MainMenuState+0, 0 
L__main858:
	BTFSS       STATUS+0, 2 
	GOTO        L_main170
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main859
	MOVLW       1
	XORWF       _language+0, 0 
L__main859:
	BTFSS       STATUS+0, 2 
	GOTO        L_main170
L__main742:
;TrexGame_Batuhan_Kural_180403027.c,408 :: 		Glcd_Image(dinoMainMenuen);
	MOVLW       _dinoMainMenuen+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMainMenuen+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMainMenuen+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,409 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main171:
	DECFSZ      R13, 1, 1
	BRA         L_main171
	DECFSZ      R12, 1, 1
	BRA         L_main171
	DECFSZ      R11, 1, 1
	BRA         L_main171
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,410 :: 		Glcd_Image(dinoMainMenu2en);
	MOVLW       _dinoMainMenu2en+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMainMenu2en+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMainMenu2en+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,411 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main172:
	DECFSZ      R13, 1, 1
	BRA         L_main172
	DECFSZ      R12, 1, 1
	BRA         L_main172
	DECFSZ      R11, 1, 1
	BRA         L_main172
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,412 :: 		}
L_main170:
;TrexGame_Batuhan_Kural_180403027.c,413 :: 		if(gameState == 0 && MainMenuState == 2 && language == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main860
	MOVLW       0
	XORWF       _gameState+0, 0 
L__main860:
	BTFSS       STATUS+0, 2 
	GOTO        L_main175
	MOVLW       0
	XORWF       _MainMenuState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main861
	MOVLW       2
	XORWF       _MainMenuState+0, 0 
L__main861:
	BTFSS       STATUS+0, 2 
	GOTO        L_main175
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main862
	MOVLW       0
	XORWF       _language+0, 0 
L__main862:
	BTFSS       STATUS+0, 2 
	GOTO        L_main175
L__main741:
;TrexGame_Batuhan_Kural_180403027.c,414 :: 		Glcd_Image(dinoMainMenu3);
	MOVLW       _dinoMainMenu3+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMainMenu3+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMainMenu3+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,415 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main176:
	DECFSZ      R13, 1, 1
	BRA         L_main176
	DECFSZ      R12, 1, 1
	BRA         L_main176
	DECFSZ      R11, 1, 1
	BRA         L_main176
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,416 :: 		Glcd_Image(dinoMainMenu);
	MOVLW       _dinoMainMenu+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMainMenu+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMainMenu+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,417 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main177:
	DECFSZ      R13, 1, 1
	BRA         L_main177
	DECFSZ      R12, 1, 1
	BRA         L_main177
	DECFSZ      R11, 1, 1
	BRA         L_main177
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,418 :: 		}
L_main175:
;TrexGame_Batuhan_Kural_180403027.c,419 :: 		if(gameState == 0 && MainMenuState == 2 && language == 1){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main863
	MOVLW       0
	XORWF       _gameState+0, 0 
L__main863:
	BTFSS       STATUS+0, 2 
	GOTO        L_main180
	MOVLW       0
	XORWF       _MainMenuState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main864
	MOVLW       2
	XORWF       _MainMenuState+0, 0 
L__main864:
	BTFSS       STATUS+0, 2 
	GOTO        L_main180
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main865
	MOVLW       1
	XORWF       _language+0, 0 
L__main865:
	BTFSS       STATUS+0, 2 
	GOTO        L_main180
L__main740:
;TrexGame_Batuhan_Kural_180403027.c,420 :: 		Glcd_Image(dinoMainMenu3en);
	MOVLW       _dinoMainMenu3en+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMainMenu3en+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMainMenu3en+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,421 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main181:
	DECFSZ      R13, 1, 1
	BRA         L_main181
	DECFSZ      R12, 1, 1
	BRA         L_main181
	DECFSZ      R11, 1, 1
	BRA         L_main181
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,422 :: 		Glcd_Image(dinoMainMenuen);
	MOVLW       _dinoMainMenuen+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMainMenuen+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMainMenuen+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,423 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main182:
	DECFSZ      R13, 1, 1
	BRA         L_main182
	DECFSZ      R12, 1, 1
	BRA         L_main182
	DECFSZ      R11, 1, 1
	BRA         L_main182
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,424 :: 		}
L_main180:
;TrexGame_Batuhan_Kural_180403027.c,425 :: 		if(gameState == 0 && MainMenuState == 3 && language == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main866
	MOVLW       0
	XORWF       _gameState+0, 0 
L__main866:
	BTFSS       STATUS+0, 2 
	GOTO        L_main185
	MOVLW       0
	XORWF       _MainMenuState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main867
	MOVLW       3
	XORWF       _MainMenuState+0, 0 
L__main867:
	BTFSS       STATUS+0, 2 
	GOTO        L_main185
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main868
	MOVLW       0
	XORWF       _language+0, 0 
L__main868:
	BTFSS       STATUS+0, 2 
	GOTO        L_main185
L__main739:
;TrexGame_Batuhan_Kural_180403027.c,426 :: 		Glcd_Image(dinoMainMenu4);
	MOVLW       _dinoMainMenu4+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMainMenu4+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMainMenu4+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,427 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main186:
	DECFSZ      R13, 1, 1
	BRA         L_main186
	DECFSZ      R12, 1, 1
	BRA         L_main186
	DECFSZ      R11, 1, 1
	BRA         L_main186
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,428 :: 		Glcd_Image(dinoMainMenu);
	MOVLW       _dinoMainMenu+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMainMenu+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMainMenu+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,429 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main187:
	DECFSZ      R13, 1, 1
	BRA         L_main187
	DECFSZ      R12, 1, 1
	BRA         L_main187
	DECFSZ      R11, 1, 1
	BRA         L_main187
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,430 :: 		}
L_main185:
;TrexGame_Batuhan_Kural_180403027.c,431 :: 		if(gameState == 0 && MainMenuState == 3 && language == 1){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main869
	MOVLW       0
	XORWF       _gameState+0, 0 
L__main869:
	BTFSS       STATUS+0, 2 
	GOTO        L_main190
	MOVLW       0
	XORWF       _MainMenuState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main870
	MOVLW       3
	XORWF       _MainMenuState+0, 0 
L__main870:
	BTFSS       STATUS+0, 2 
	GOTO        L_main190
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main871
	MOVLW       1
	XORWF       _language+0, 0 
L__main871:
	BTFSS       STATUS+0, 2 
	GOTO        L_main190
L__main738:
;TrexGame_Batuhan_Kural_180403027.c,432 :: 		Glcd_Image(dinoMainMenu4en);
	MOVLW       _dinoMainMenu4en+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMainMenu4en+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMainMenu4en+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,433 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main191:
	DECFSZ      R13, 1, 1
	BRA         L_main191
	DECFSZ      R12, 1, 1
	BRA         L_main191
	DECFSZ      R11, 1, 1
	BRA         L_main191
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,434 :: 		Glcd_Image(dinoMainMenuen);
	MOVLW       _dinoMainMenuen+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMainMenuen+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMainMenuen+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,435 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main192:
	DECFSZ      R13, 1, 1
	BRA         L_main192
	DECFSZ      R12, 1, 1
	BRA         L_main192
	DECFSZ      R11, 1, 1
	BRA         L_main192
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,436 :: 		}
L_main190:
;TrexGame_Batuhan_Kural_180403027.c,437 :: 		if(gameState == 8 && settingsState == 0 && mute == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main872
	MOVLW       8
	XORWF       _gameState+0, 0 
L__main872:
	BTFSS       STATUS+0, 2 
	GOTO        L_main195
	MOVLW       0
	XORWF       _settingsState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main873
	MOVLW       0
	XORWF       _settingsState+0, 0 
L__main873:
	BTFSS       STATUS+0, 2 
	GOTO        L_main195
	MOVLW       0
	XORWF       _mute+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main874
	MOVLW       0
	XORWF       _mute+0, 0 
L__main874:
	BTFSS       STATUS+0, 2 
	GOTO        L_main195
L__main737:
;TrexGame_Batuhan_Kural_180403027.c,438 :: 		Glcd_Image(dinoSettings1);
	MOVLW       _dinoSettings1+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoSettings1+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoSettings1+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,439 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main196:
	DECFSZ      R13, 1, 1
	BRA         L_main196
	DECFSZ      R12, 1, 1
	BRA         L_main196
	DECFSZ      R11, 1, 1
	BRA         L_main196
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,440 :: 		Glcd_Image(dinoSettings2);
	MOVLW       _dinoSettings2+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoSettings2+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoSettings2+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,441 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main197:
	DECFSZ      R13, 1, 1
	BRA         L_main197
	DECFSZ      R12, 1, 1
	BRA         L_main197
	DECFSZ      R11, 1, 1
	BRA         L_main197
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,442 :: 		}
L_main195:
;TrexGame_Batuhan_Kural_180403027.c,443 :: 		if(gameState == 8 && settingsState == 0 && mute == 1){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main875
	MOVLW       8
	XORWF       _gameState+0, 0 
L__main875:
	BTFSS       STATUS+0, 2 
	GOTO        L_main200
	MOVLW       0
	XORWF       _settingsState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main876
	MOVLW       0
	XORWF       _settingsState+0, 0 
L__main876:
	BTFSS       STATUS+0, 2 
	GOTO        L_main200
	MOVLW       0
	XORWF       _mute+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main877
	MOVLW       1
	XORWF       _mute+0, 0 
L__main877:
	BTFSS       STATUS+0, 2 
	GOTO        L_main200
L__main736:
;TrexGame_Batuhan_Kural_180403027.c,444 :: 		Glcd_Image(dinoSettings3);
	MOVLW       _dinoSettings3+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoSettings3+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoSettings3+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,445 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main201:
	DECFSZ      R13, 1, 1
	BRA         L_main201
	DECFSZ      R12, 1, 1
	BRA         L_main201
	DECFSZ      R11, 1, 1
	BRA         L_main201
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,446 :: 		Glcd_Image(dinoSettings12);
	MOVLW       _dinoSettings12+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoSettings12+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoSettings12+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,447 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main202:
	DECFSZ      R13, 1, 1
	BRA         L_main202
	DECFSZ      R12, 1, 1
	BRA         L_main202
	DECFSZ      R11, 1, 1
	BRA         L_main202
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,448 :: 		}
L_main200:
;TrexGame_Batuhan_Kural_180403027.c,449 :: 		if(gameState == 8 && settingsState == 1 && mute == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main878
	MOVLW       8
	XORWF       _gameState+0, 0 
L__main878:
	BTFSS       STATUS+0, 2 
	GOTO        L_main205
	MOVLW       0
	XORWF       _settingsState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main879
	MOVLW       1
	XORWF       _settingsState+0, 0 
L__main879:
	BTFSS       STATUS+0, 2 
	GOTO        L_main205
	MOVLW       0
	XORWF       _mute+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main880
	MOVLW       0
	XORWF       _mute+0, 0 
L__main880:
	BTFSS       STATUS+0, 2 
	GOTO        L_main205
L__main735:
;TrexGame_Batuhan_Kural_180403027.c,450 :: 		Glcd_Image(dinoSettings5);
	MOVLW       _dinoSettings5+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoSettings5+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoSettings5+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,451 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main206:
	DECFSZ      R13, 1, 1
	BRA         L_main206
	DECFSZ      R12, 1, 1
	BRA         L_main206
	DECFSZ      R11, 1, 1
	BRA         L_main206
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,452 :: 		Glcd_Image(dinoSettings1);
	MOVLW       _dinoSettings1+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoSettings1+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoSettings1+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,453 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main207:
	DECFSZ      R13, 1, 1
	BRA         L_main207
	DECFSZ      R12, 1, 1
	BRA         L_main207
	DECFSZ      R11, 1, 1
	BRA         L_main207
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,454 :: 		}
L_main205:
;TrexGame_Batuhan_Kural_180403027.c,455 :: 		if(gameState == 8 && settingsState == 1 && mute == 1){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main881
	MOVLW       8
	XORWF       _gameState+0, 0 
L__main881:
	BTFSS       STATUS+0, 2 
	GOTO        L_main210
	MOVLW       0
	XORWF       _settingsState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main882
	MOVLW       1
	XORWF       _settingsState+0, 0 
L__main882:
	BTFSS       STATUS+0, 2 
	GOTO        L_main210
	MOVLW       0
	XORWF       _mute+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main883
	MOVLW       1
	XORWF       _mute+0, 0 
L__main883:
	BTFSS       STATUS+0, 2 
	GOTO        L_main210
L__main734:
;TrexGame_Batuhan_Kural_180403027.c,456 :: 		Glcd_Image(dinoSettings4);
	MOVLW       _dinoSettings4+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoSettings4+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoSettings4+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,457 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main211:
	DECFSZ      R13, 1, 1
	BRA         L_main211
	DECFSZ      R12, 1, 1
	BRA         L_main211
	DECFSZ      R11, 1, 1
	BRA         L_main211
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,458 :: 		Glcd_Image(dinoSettings12);
	MOVLW       _dinoSettings12+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoSettings12+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoSettings12+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,459 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main212:
	DECFSZ      R13, 1, 1
	BRA         L_main212
	DECFSZ      R12, 1, 1
	BRA         L_main212
	DECFSZ      R11, 1, 1
	BRA         L_main212
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,460 :: 		}
L_main210:
;TrexGame_Batuhan_Kural_180403027.c,461 :: 		if(gameState == 10 && languageState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main884
	MOVLW       10
	XORWF       _gameState+0, 0 
L__main884:
	BTFSS       STATUS+0, 2 
	GOTO        L_main215
	MOVLW       0
	XORWF       _languageState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main885
	MOVLW       0
	XORWF       _languageState+0, 0 
L__main885:
	BTFSS       STATUS+0, 2 
	GOTO        L_main215
L__main733:
;TrexGame_Batuhan_Kural_180403027.c,462 :: 		Glcd_Image(languageSettings);
	MOVLW       _languageSettings+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_languageSettings+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_languageSettings+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,463 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main216:
	DECFSZ      R13, 1, 1
	BRA         L_main216
	DECFSZ      R12, 1, 1
	BRA         L_main216
	DECFSZ      R11, 1, 1
	BRA         L_main216
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,464 :: 		Glcd_Image(languageSettings1);
	MOVLW       _languageSettings1+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_languageSettings1+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_languageSettings1+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,465 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main217:
	DECFSZ      R13, 1, 1
	BRA         L_main217
	DECFSZ      R12, 1, 1
	BRA         L_main217
	DECFSZ      R11, 1, 1
	BRA         L_main217
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,466 :: 		}
L_main215:
;TrexGame_Batuhan_Kural_180403027.c,467 :: 		if(gameState == 10 && languageState == 1){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main886
	MOVLW       10
	XORWF       _gameState+0, 0 
L__main886:
	BTFSS       STATUS+0, 2 
	GOTO        L_main220
	MOVLW       0
	XORWF       _languageState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main887
	MOVLW       1
	XORWF       _languageState+0, 0 
L__main887:
	BTFSS       STATUS+0, 2 
	GOTO        L_main220
L__main732:
;TrexGame_Batuhan_Kural_180403027.c,468 :: 		Glcd_Image(languageSettings2);
	MOVLW       _languageSettings2+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_languageSettings2+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_languageSettings2+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,469 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main221:
	DECFSZ      R13, 1, 1
	BRA         L_main221
	DECFSZ      R12, 1, 1
	BRA         L_main221
	DECFSZ      R11, 1, 1
	BRA         L_main221
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,470 :: 		Glcd_Image(languageSettings);
	MOVLW       _languageSettings+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_languageSettings+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_languageSettings+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,471 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main222:
	DECFSZ      R13, 1, 1
	BRA         L_main222
	DECFSZ      R12, 1, 1
	BRA         L_main222
	DECFSZ      R11, 1, 1
	BRA         L_main222
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,472 :: 		}
L_main220:
;TrexGame_Batuhan_Kural_180403027.c,473 :: 		if(gameState ==9 && language ==0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main888
	MOVLW       9
	XORWF       _gameState+0, 0 
L__main888:
	BTFSS       STATUS+0, 2 
	GOTO        L_main225
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main889
	MOVLW       0
	XORWF       _language+0, 0 
L__main889:
	BTFSS       STATUS+0, 2 
	GOTO        L_main225
L__main731:
;TrexGame_Batuhan_Kural_180403027.c,474 :: 		Glcd_Image(dinoAboutme);
	MOVLW       _dinoAboutme+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoAboutme+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoAboutme+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,475 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main226:
	DECFSZ      R13, 1, 1
	BRA         L_main226
	DECFSZ      R12, 1, 1
	BRA         L_main226
	DECFSZ      R11, 1, 1
	BRA         L_main226
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,476 :: 		}
L_main225:
;TrexGame_Batuhan_Kural_180403027.c,477 :: 		if(gameState ==9 && language ==1){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main890
	MOVLW       9
	XORWF       _gameState+0, 0 
L__main890:
	BTFSS       STATUS+0, 2 
	GOTO        L_main229
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main891
	MOVLW       1
	XORWF       _language+0, 0 
L__main891:
	BTFSS       STATUS+0, 2 
	GOTO        L_main229
L__main730:
;TrexGame_Batuhan_Kural_180403027.c,478 :: 		Glcd_Image(dinoAboutmeen);
	MOVLW       _dinoAboutmeen+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoAboutmeen+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoAboutmeen+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,479 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main230:
	DECFSZ      R13, 1, 1
	BRA         L_main230
	DECFSZ      R12, 1, 1
	BRA         L_main230
	DECFSZ      R11, 1, 1
	BRA         L_main230
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,480 :: 		}
L_main229:
;TrexGame_Batuhan_Kural_180403027.c,481 :: 		if(gameState == 4 && difficultyState == 1 && language == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main892
	MOVLW       4
	XORWF       _gameState+0, 0 
L__main892:
	BTFSS       STATUS+0, 2 
	GOTO        L_main233
	MOVLW       0
	XORWF       _difficultyState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main893
	MOVLW       1
	XORWF       _difficultyState+0, 0 
L__main893:
	BTFSS       STATUS+0, 2 
	GOTO        L_main233
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main894
	MOVLW       0
	XORWF       _language+0, 0 
L__main894:
	BTFSS       STATUS+0, 2 
	GOTO        L_main233
L__main729:
;TrexGame_Batuhan_Kural_180403027.c,482 :: 		Glcd_Image(dinoMenu1);
	MOVLW       _dinoMenu1+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMenu1+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMenu1+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,483 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main234:
	DECFSZ      R13, 1, 1
	BRA         L_main234
	DECFSZ      R12, 1, 1
	BRA         L_main234
	DECFSZ      R11, 1, 1
	BRA         L_main234
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,484 :: 		Glcd_Image(dinoMenu2);
	MOVLW       _dinoMenu2+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMenu2+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMenu2+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,485 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main235:
	DECFSZ      R13, 1, 1
	BRA         L_main235
	DECFSZ      R12, 1, 1
	BRA         L_main235
	DECFSZ      R11, 1, 1
	BRA         L_main235
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,486 :: 		}
L_main233:
;TrexGame_Batuhan_Kural_180403027.c,487 :: 		if(gameState == 4 && difficultyState == 1 && language == 1){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main895
	MOVLW       4
	XORWF       _gameState+0, 0 
L__main895:
	BTFSS       STATUS+0, 2 
	GOTO        L_main238
	MOVLW       0
	XORWF       _difficultyState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main896
	MOVLW       1
	XORWF       _difficultyState+0, 0 
L__main896:
	BTFSS       STATUS+0, 2 
	GOTO        L_main238
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main897
	MOVLW       1
	XORWF       _language+0, 0 
L__main897:
	BTFSS       STATUS+0, 2 
	GOTO        L_main238
L__main728:
;TrexGame_Batuhan_Kural_180403027.c,488 :: 		Glcd_Image(dinoMenu1en);
	MOVLW       _dinoMenu1en+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMenu1en+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMenu1en+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,489 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main239:
	DECFSZ      R13, 1, 1
	BRA         L_main239
	DECFSZ      R12, 1, 1
	BRA         L_main239
	DECFSZ      R11, 1, 1
	BRA         L_main239
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,490 :: 		Glcd_Image(dinoMenu2en);
	MOVLW       _dinoMenu2en+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMenu2en+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMenu2en+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,491 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main240:
	DECFSZ      R13, 1, 1
	BRA         L_main240
	DECFSZ      R12, 1, 1
	BRA         L_main240
	DECFSZ      R11, 1, 1
	BRA         L_main240
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,492 :: 		}
L_main238:
;TrexGame_Batuhan_Kural_180403027.c,493 :: 		if(gameState == 4 && difficultyState == 2 && language == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main898
	MOVLW       4
	XORWF       _gameState+0, 0 
L__main898:
	BTFSS       STATUS+0, 2 
	GOTO        L_main243
	MOVLW       0
	XORWF       _difficultyState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main899
	MOVLW       2
	XORWF       _difficultyState+0, 0 
L__main899:
	BTFSS       STATUS+0, 2 
	GOTO        L_main243
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main900
	MOVLW       0
	XORWF       _language+0, 0 
L__main900:
	BTFSS       STATUS+0, 2 
	GOTO        L_main243
L__main727:
;TrexGame_Batuhan_Kural_180403027.c,494 :: 		Glcd_Image(dinoMenu3);
	MOVLW       _dinoMenu3+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMenu3+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMenu3+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,495 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main244:
	DECFSZ      R13, 1, 1
	BRA         L_main244
	DECFSZ      R12, 1, 1
	BRA         L_main244
	DECFSZ      R11, 1, 1
	BRA         L_main244
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,496 :: 		Glcd_Image(dinoMenu1);
	MOVLW       _dinoMenu1+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMenu1+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMenu1+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,497 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main245:
	DECFSZ      R13, 1, 1
	BRA         L_main245
	DECFSZ      R12, 1, 1
	BRA         L_main245
	DECFSZ      R11, 1, 1
	BRA         L_main245
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,498 :: 		}
L_main243:
;TrexGame_Batuhan_Kural_180403027.c,499 :: 		if(gameState == 4 && difficultyState == 2 && language == 1){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main901
	MOVLW       4
	XORWF       _gameState+0, 0 
L__main901:
	BTFSS       STATUS+0, 2 
	GOTO        L_main248
	MOVLW       0
	XORWF       _difficultyState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main902
	MOVLW       2
	XORWF       _difficultyState+0, 0 
L__main902:
	BTFSS       STATUS+0, 2 
	GOTO        L_main248
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main903
	MOVLW       1
	XORWF       _language+0, 0 
L__main903:
	BTFSS       STATUS+0, 2 
	GOTO        L_main248
L__main726:
;TrexGame_Batuhan_Kural_180403027.c,500 :: 		Glcd_Image(dinoMenu3en);
	MOVLW       _dinoMenu3en+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMenu3en+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMenu3en+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,501 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main249:
	DECFSZ      R13, 1, 1
	BRA         L_main249
	DECFSZ      R12, 1, 1
	BRA         L_main249
	DECFSZ      R11, 1, 1
	BRA         L_main249
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,502 :: 		Glcd_Image(dinoMenu1en);
	MOVLW       _dinoMenu1en+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMenu1en+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMenu1en+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,503 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main250:
	DECFSZ      R13, 1, 1
	BRA         L_main250
	DECFSZ      R12, 1, 1
	BRA         L_main250
	DECFSZ      R11, 1, 1
	BRA         L_main250
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,504 :: 		}
L_main248:
;TrexGame_Batuhan_Kural_180403027.c,505 :: 		if(gameState == 4 && difficultyState == 3 && language == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main904
	MOVLW       4
	XORWF       _gameState+0, 0 
L__main904:
	BTFSS       STATUS+0, 2 
	GOTO        L_main253
	MOVLW       0
	XORWF       _difficultyState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main905
	MOVLW       3
	XORWF       _difficultyState+0, 0 
L__main905:
	BTFSS       STATUS+0, 2 
	GOTO        L_main253
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main906
	MOVLW       0
	XORWF       _language+0, 0 
L__main906:
	BTFSS       STATUS+0, 2 
	GOTO        L_main253
L__main725:
;TrexGame_Batuhan_Kural_180403027.c,506 :: 		Glcd_Image(dinoMenu4);
	MOVLW       _dinoMenu4+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMenu4+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMenu4+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,507 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main254:
	DECFSZ      R13, 1, 1
	BRA         L_main254
	DECFSZ      R12, 1, 1
	BRA         L_main254
	DECFSZ      R11, 1, 1
	BRA         L_main254
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,508 :: 		Glcd_Image(dinoMenu1);
	MOVLW       _dinoMenu1+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMenu1+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMenu1+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,509 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main255:
	DECFSZ      R13, 1, 1
	BRA         L_main255
	DECFSZ      R12, 1, 1
	BRA         L_main255
	DECFSZ      R11, 1, 1
	BRA         L_main255
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,510 :: 		}
L_main253:
;TrexGame_Batuhan_Kural_180403027.c,511 :: 		if(gameState == 4 && difficultyState == 3 && language == 1){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main907
	MOVLW       4
	XORWF       _gameState+0, 0 
L__main907:
	BTFSS       STATUS+0, 2 
	GOTO        L_main258
	MOVLW       0
	XORWF       _difficultyState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main908
	MOVLW       3
	XORWF       _difficultyState+0, 0 
L__main908:
	BTFSS       STATUS+0, 2 
	GOTO        L_main258
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main909
	MOVLW       1
	XORWF       _language+0, 0 
L__main909:
	BTFSS       STATUS+0, 2 
	GOTO        L_main258
L__main724:
;TrexGame_Batuhan_Kural_180403027.c,512 :: 		Glcd_Image(dinoMenu4en);
	MOVLW       _dinoMenu4en+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMenu4en+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMenu4en+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,513 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main259:
	DECFSZ      R13, 1, 1
	BRA         L_main259
	DECFSZ      R12, 1, 1
	BRA         L_main259
	DECFSZ      R11, 1, 1
	BRA         L_main259
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,514 :: 		Glcd_Image(dinoMenu1en);
	MOVLW       _dinoMenu1en+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMenu1en+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMenu1en+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,515 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main260:
	DECFSZ      R13, 1, 1
	BRA         L_main260
	DECFSZ      R12, 1, 1
	BRA         L_main260
	DECFSZ      R11, 1, 1
	BRA         L_main260
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,516 :: 		}
L_main258:
;TrexGame_Batuhan_Kural_180403027.c,517 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main910
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main910:
	BTFSS       STATUS+0, 2 
	GOTO        L_main263
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main911
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main911:
	BTFSS       STATUS+0, 2 
	GOTO        L_main263
L__main723:
;TrexGame_Batuhan_Kural_180403027.c,518 :: 		Glcd_Image(dinoMov22);
	MOVLW       _dinoMov22+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov22+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov22+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,519 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,520 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,521 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,522 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,523 :: 		}
L_main263:
;TrexGame_Batuhan_Kural_180403027.c,524 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main912
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main912:
	BTFSS       STATUS+0, 2 
	GOTO        L_main266
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main913
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main913:
	BTFSC       STATUS+0, 0 
	GOTO        L_main266
L__main722:
;TrexGame_Batuhan_Kural_180403027.c,525 :: 		Glcd_Image(dinoJump22);
	MOVLW       _dinoJump22+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump22+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump22+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,526 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,527 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,528 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,529 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,530 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,531 :: 		}
L_main266:
;TrexGame_Batuhan_Kural_180403027.c,532 :: 		if (gameState == 2){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main914
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main914:
	BTFSS       STATUS+0, 2 
	GOTO        L_main267
;TrexGame_Batuhan_Kural_180403027.c,533 :: 		Lcd_Out(1, 1, "                                ");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_TrexGame_Batuhan_Kural_180403027+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_TrexGame_Batuhan_Kural_180403027+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,534 :: 		if(anumber == 1){
	MOVLW       0
	XORWF       _anumber+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main915
	MOVLW       1
	XORWF       _anumber+0, 0 
L__main915:
	BTFSS       STATUS+0, 2 
	GOTO        L_main268
;TrexGame_Batuhan_Kural_180403027.c,535 :: 		IntToStr(health, healthScore);
	MOVF        _health+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _health+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _healthScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,536 :: 		Lcd_Out(2,22,healthScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       22
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _healthScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,537 :: 		anumber = 0;
	CLRF        _anumber+0 
	CLRF        _anumber+1 
;TrexGame_Batuhan_Kural_180403027.c,538 :: 		}
L_main268:
;TrexGame_Batuhan_Kural_180403027.c,539 :: 		if(language == 0){
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main916
	MOVLW       0
	XORWF       _language+0, 0 
L__main916:
	BTFSS       STATUS+0, 2 
	GOTO        L_main269
;TrexGame_Batuhan_Kural_180403027.c,540 :: 		Lcd_Out(1,5,bestText);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _bestText+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_bestText+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,541 :: 		Lcd_Out(1,16,scoreText);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _scoreText+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_scoreText+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,542 :: 		Lcd_Out(1,26,healthText);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       26
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _healthText+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_healthText+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,543 :: 		}
L_main269:
;TrexGame_Batuhan_Kural_180403027.c,544 :: 		if(language == 1){
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main917
	MOVLW       1
	XORWF       _language+0, 0 
L__main917:
	BTFSS       STATUS+0, 2 
	GOTO        L_main270
;TrexGame_Batuhan_Kural_180403027.c,545 :: 		Lcd_Out(1,5,bestTexten);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _bestTexten+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_bestTexten+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,546 :: 		Lcd_Out(1,16,scoreTexten);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _scoreTexten+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_scoreTexten+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,547 :: 		Lcd_Out(1,26,healthTexten);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       26
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _healthTexten+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_healthTexten+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,548 :: 		}
L_main270:
;TrexGame_Batuhan_Kural_180403027.c,549 :: 		}
L_main267:
;TrexGame_Batuhan_Kural_180403027.c,550 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main918
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main918:
	BTFSS       STATUS+0, 2 
	GOTO        L_main273
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main919
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main919:
	BTFSS       STATUS+0, 2 
	GOTO        L_main273
L__main721:
;TrexGame_Batuhan_Kural_180403027.c,551 :: 		Glcd_Image(dinoMov12);
	MOVLW       _dinoMov12+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov12+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov12+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,552 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,553 :: 		}
L_main273:
;TrexGame_Batuhan_Kural_180403027.c,554 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main920
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main920:
	BTFSS       STATUS+0, 2 
	GOTO        L_main276
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main921
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main921:
	BTFSC       STATUS+0, 0 
	GOTO        L_main276
L__main720:
;TrexGame_Batuhan_Kural_180403027.c,555 :: 		Glcd_Image(dinoJump12);
	MOVLW       _dinoJump12+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump12+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump12+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,556 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,557 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,558 :: 		}
L_main276:
;TrexGame_Batuhan_Kural_180403027.c,559 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main922
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main922:
	BTFSS       STATUS+0, 2 
	GOTO        L_main279
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main923
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main923:
	BTFSS       STATUS+0, 2 
	GOTO        L_main279
L__main719:
;TrexGame_Batuhan_Kural_180403027.c,560 :: 		Glcd_Image(dinoMov23);
	MOVLW       _dinoMov23+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov23+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov23+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,561 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,562 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,563 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,564 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,565 :: 		}
L_main279:
;TrexGame_Batuhan_Kural_180403027.c,566 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main924
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main924:
	BTFSS       STATUS+0, 2 
	GOTO        L_main282
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main925
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main925:
	BTFSC       STATUS+0, 0 
	GOTO        L_main282
L__main718:
;TrexGame_Batuhan_Kural_180403027.c,567 :: 		Glcd_Image(dinoJump23);
	MOVLW       _dinoJump23+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump23+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump23+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,568 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,569 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,570 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,571 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,572 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,573 :: 		}
L_main282:
;TrexGame_Batuhan_Kural_180403027.c,574 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main926
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main926:
	BTFSS       STATUS+0, 2 
	GOTO        L_main285
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main927
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main927:
	BTFSS       STATUS+0, 2 
	GOTO        L_main285
L__main717:
;TrexGame_Batuhan_Kural_180403027.c,575 :: 		Glcd_Image(dinoMov13);
	MOVLW       _dinoMov13+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov13+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov13+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,576 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,577 :: 		}
L_main285:
;TrexGame_Batuhan_Kural_180403027.c,578 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main928
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main928:
	BTFSS       STATUS+0, 2 
	GOTO        L_main288
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main929
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main929:
	BTFSC       STATUS+0, 0 
	GOTO        L_main288
L__main716:
;TrexGame_Batuhan_Kural_180403027.c,579 :: 		Glcd_Image(dinoJump13);
	MOVLW       _dinoJump13+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump13+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump13+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,580 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,581 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,582 :: 		}
L_main288:
;TrexGame_Batuhan_Kural_180403027.c,583 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main930
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main930:
	BTFSS       STATUS+0, 2 
	GOTO        L_main291
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main931
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main931:
	BTFSS       STATUS+0, 2 
	GOTO        L_main291
L__main715:
;TrexGame_Batuhan_Kural_180403027.c,584 :: 		Glcd_Image(dinoMov24);
	MOVLW       _dinoMov24+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov24+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov24+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,585 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,586 :: 		MSDelay = MSDelay - speedUp;
	MOVF        _speedUp+0, 0 
	SUBWF       _MSDelay+0, 1 
	MOVF        _speedUp+1, 0 
	SUBWFB      _MSDelay+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,587 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,588 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,589 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,590 :: 		}
L_main291:
;TrexGame_Batuhan_Kural_180403027.c,591 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main932
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main932:
	BTFSS       STATUS+0, 2 
	GOTO        L_main294
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main933
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main933:
	BTFSC       STATUS+0, 0 
	GOTO        L_main294
L__main714:
;TrexGame_Batuhan_Kural_180403027.c,592 :: 		Glcd_Image(dinoJump24);
	MOVLW       _dinoJump24+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump24+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump24+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,593 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,594 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,595 :: 		MSDelay = MSDelay - speedUp;
	MOVF        _speedUp+0, 0 
	SUBWF       _MSDelay+0, 1 
	MOVF        _speedUp+1, 0 
	SUBWFB      _MSDelay+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,596 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,597 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,598 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,599 :: 		}
L_main294:
;TrexGame_Batuhan_Kural_180403027.c,600 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main934
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main934:
	BTFSS       STATUS+0, 2 
	GOTO        L_main297
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main935
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main935:
	BTFSS       STATUS+0, 2 
	GOTO        L_main297
L__main713:
;TrexGame_Batuhan_Kural_180403027.c,601 :: 		Glcd_Image(dinoMov14);
	MOVLW       _dinoMov14+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov14+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov14+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,602 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,603 :: 		}
L_main297:
;TrexGame_Batuhan_Kural_180403027.c,604 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main936
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main936:
	BTFSS       STATUS+0, 2 
	GOTO        L_main300
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main937
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main937:
	BTFSC       STATUS+0, 0 
	GOTO        L_main300
L__main712:
;TrexGame_Batuhan_Kural_180403027.c,605 :: 		Glcd_Image(dinoJump14);
	MOVLW       _dinoJump14+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump14+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump14+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,606 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,607 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,608 :: 		}
L_main300:
;TrexGame_Batuhan_Kural_180403027.c,609 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main938
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main938:
	BTFSS       STATUS+0, 2 
	GOTO        L_main303
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main939
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main939:
	BTFSS       STATUS+0, 2 
	GOTO        L_main303
L__main711:
;TrexGame_Batuhan_Kural_180403027.c,610 :: 		Glcd_Image(dinoMov25);
	MOVLW       _dinoMov25+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov25+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov25+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,611 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,612 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,613 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,614 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,615 :: 		}
L_main303:
;TrexGame_Batuhan_Kural_180403027.c,616 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main940
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main940:
	BTFSS       STATUS+0, 2 
	GOTO        L_main306
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main941
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main941:
	BTFSC       STATUS+0, 0 
	GOTO        L_main306
L__main710:
;TrexGame_Batuhan_Kural_180403027.c,617 :: 		Glcd_Image(dinoJump25);
	MOVLW       _dinoJump25+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump25+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump25+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,618 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,619 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,620 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,621 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,622 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,623 :: 		}
L_main306:
;TrexGame_Batuhan_Kural_180403027.c,624 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main942
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main942:
	BTFSS       STATUS+0, 2 
	GOTO        L_main309
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main943
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main943:
	BTFSS       STATUS+0, 2 
	GOTO        L_main309
L__main709:
;TrexGame_Batuhan_Kural_180403027.c,625 :: 		Glcd_Image(dinoMov15);
	MOVLW       _dinoMov15+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov15+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov15+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,626 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,627 :: 		if(autoPilot == 1){
	MOVLW       0
	XORWF       _autoPilot+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main944
	MOVLW       1
	XORWF       _autoPilot+0, 0 
L__main944:
	BTFSS       STATUS+0, 2 
	GOTO        L_main310
;TrexGame_Batuhan_Kural_180403027.c,628 :: 		INT0F_bit = 1;
	BSF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,629 :: 		}
L_main310:
;TrexGame_Batuhan_Kural_180403027.c,630 :: 		}
L_main309:
;TrexGame_Batuhan_Kural_180403027.c,631 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main945
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main945:
	BTFSS       STATUS+0, 2 
	GOTO        L_main313
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main946
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main946:
	BTFSC       STATUS+0, 0 
	GOTO        L_main313
L__main708:
;TrexGame_Batuhan_Kural_180403027.c,632 :: 		Glcd_Image(dinoJump15);
	MOVLW       _dinoJump15+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump15+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump15+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,633 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,634 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,635 :: 		}
L_main313:
;TrexGame_Batuhan_Kural_180403027.c,636 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main947
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main947:
	BTFSS       STATUS+0, 2 
	GOTO        L_main316
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main948
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main948:
	BTFSS       STATUS+0, 2 
	GOTO        L_main316
L__main707:
;TrexGame_Batuhan_Kural_180403027.c,637 :: 		Glcd_Image(dinoMov26);
	MOVLW       _dinoMov26+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov26+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov26+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,638 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,639 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,640 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,641 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,642 :: 		}
L_main316:
;TrexGame_Batuhan_Kural_180403027.c,643 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main949
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main949:
	BTFSS       STATUS+0, 2 
	GOTO        L_main319
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main950
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main950:
	BTFSC       STATUS+0, 0 
	GOTO        L_main319
L__main706:
;TrexGame_Batuhan_Kural_180403027.c,644 :: 		Glcd_Image(dinoJump26);
	MOVLW       _dinoJump26+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump26+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump26+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,645 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,646 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,647 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,648 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,649 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,650 :: 		}
L_main319:
;TrexGame_Batuhan_Kural_180403027.c,651 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main951
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main951:
	BTFSS       STATUS+0, 2 
	GOTO        L_main322
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main952
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main952:
	BTFSS       STATUS+0, 2 
	GOTO        L_main322
L__main705:
;TrexGame_Batuhan_Kural_180403027.c,652 :: 		if(health>1){
	MOVLW       0
	MOVWF       R0 
	MOVF        _health+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main953
	MOVF        _health+0, 0 
	SUBLW       1
L__main953:
	BTFSC       STATUS+0, 0 
	GOTO        L_main323
;TrexGame_Batuhan_Kural_180403027.c,653 :: 		continueGame();
	CALL        _continueGame+0, 0
;TrexGame_Batuhan_Kural_180403027.c,654 :: 		goto asd;
	GOTO        ___main_asd
;TrexGame_Batuhan_Kural_180403027.c,655 :: 		}
L_main323:
;TrexGame_Batuhan_Kural_180403027.c,656 :: 		if(health == 1){
	MOVLW       0
	XORWF       _health+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main954
	MOVLW       1
	XORWF       _health+0, 0 
L__main954:
	BTFSS       STATUS+0, 2 
	GOTO        L_main324
;TrexGame_Batuhan_Kural_180403027.c,657 :: 		health = health--;
	MOVLW       1
	SUBWF       _health+0, 1 
	MOVLW       0
	SUBWFB      _health+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,658 :: 		IntToStr(health, healthScore);
	MOVF        _health+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _health+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _healthScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,659 :: 		LCD_Out(2,22,healthScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       22
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _healthScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,660 :: 		gameState = 3;
	MOVLW       3
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,661 :: 		}
L_main324:
;TrexGame_Batuhan_Kural_180403027.c,662 :: 		}
L_main322:
;TrexGame_Batuhan_Kural_180403027.c,663 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main955
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main955:
	BTFSS       STATUS+0, 2 
	GOTO        L_main327
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main956
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main956:
	BTFSC       STATUS+0, 0 
	GOTO        L_main327
L__main704:
;TrexGame_Batuhan_Kural_180403027.c,664 :: 		Glcd_Image(dinoJump16);
	MOVLW       _dinoJump16+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump16+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump16+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,665 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,666 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,667 :: 		MSDelay = MSDelay - speedUp;
	MOVF        _speedUp+0, 0 
	SUBWF       _MSDelay+0, 1 
	MOVF        _speedUp+1, 0 
	SUBWFB      _MSDelay+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,668 :: 		}
L_main327:
;TrexGame_Batuhan_Kural_180403027.c,669 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main957
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main957:
	BTFSS       STATUS+0, 2 
	GOTO        L_main330
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main958
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main958:
	BTFSS       STATUS+0, 2 
	GOTO        L_main330
L__main703:
;TrexGame_Batuhan_Kural_180403027.c,670 :: 		if(health>1){
	MOVLW       0
	MOVWF       R0 
	MOVF        _health+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main959
	MOVF        _health+0, 0 
	SUBLW       1
L__main959:
	BTFSC       STATUS+0, 0 
	GOTO        L_main331
;TrexGame_Batuhan_Kural_180403027.c,671 :: 		continueGame();
	CALL        _continueGame+0, 0
;TrexGame_Batuhan_Kural_180403027.c,672 :: 		goto asd;
	GOTO        ___main_asd
;TrexGame_Batuhan_Kural_180403027.c,673 :: 		}
L_main331:
;TrexGame_Batuhan_Kural_180403027.c,674 :: 		if(health == 1){
	MOVLW       0
	XORWF       _health+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main960
	MOVLW       1
	XORWF       _health+0, 0 
L__main960:
	BTFSS       STATUS+0, 2 
	GOTO        L_main332
;TrexGame_Batuhan_Kural_180403027.c,675 :: 		health = health--;
	MOVLW       1
	SUBWF       _health+0, 1 
	MOVLW       0
	SUBWFB      _health+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,676 :: 		IntToStr(health, healthScore);
	MOVF        _health+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _health+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _healthScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,677 :: 		LCD_Out(2,22,healthScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       22
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _healthScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,678 :: 		gameState = 3;
	MOVLW       3
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,679 :: 		}
L_main332:
;TrexGame_Batuhan_Kural_180403027.c,680 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,681 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,682 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,683 :: 		}
L_main330:
;TrexGame_Batuhan_Kural_180403027.c,684 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main961
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main961:
	BTFSS       STATUS+0, 2 
	GOTO        L_main335
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main962
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main962:
	BTFSC       STATUS+0, 0 
	GOTO        L_main335
L__main702:
;TrexGame_Batuhan_Kural_180403027.c,685 :: 		Glcd_Image(dinoJump27);
	MOVLW       _dinoJump27+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump27+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump27+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,686 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,687 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,688 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,689 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,690 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,691 :: 		}
L_main335:
;TrexGame_Batuhan_Kural_180403027.c,692 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main963
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main963:
	BTFSS       STATUS+0, 2 
	GOTO        L_main338
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main964
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main964:
	BTFSS       STATUS+0, 2 
	GOTO        L_main338
L__main701:
;TrexGame_Batuhan_Kural_180403027.c,693 :: 		if(health>1){
	MOVLW       0
	MOVWF       R0 
	MOVF        _health+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main965
	MOVF        _health+0, 0 
	SUBLW       1
L__main965:
	BTFSC       STATUS+0, 0 
	GOTO        L_main339
;TrexGame_Batuhan_Kural_180403027.c,694 :: 		continueGame();
	CALL        _continueGame+0, 0
;TrexGame_Batuhan_Kural_180403027.c,695 :: 		goto asd;
	GOTO        ___main_asd
;TrexGame_Batuhan_Kural_180403027.c,696 :: 		}
L_main339:
;TrexGame_Batuhan_Kural_180403027.c,697 :: 		if(health == 1){
	MOVLW       0
	XORWF       _health+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main966
	MOVLW       1
	XORWF       _health+0, 0 
L__main966:
	BTFSS       STATUS+0, 2 
	GOTO        L_main340
;TrexGame_Batuhan_Kural_180403027.c,698 :: 		health = health--;
	MOVLW       1
	SUBWF       _health+0, 1 
	MOVLW       0
	SUBWFB      _health+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,699 :: 		IntToStr(health, healthScore);
	MOVF        _health+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _health+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _healthScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,700 :: 		LCD_Out(2,22,healthScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       22
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _healthScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,701 :: 		gameState = 3;
	MOVLW       3
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,702 :: 		}
L_main340:
;TrexGame_Batuhan_Kural_180403027.c,703 :: 		}
L_main338:
;TrexGame_Batuhan_Kural_180403027.c,704 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main967
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main967:
	BTFSS       STATUS+0, 2 
	GOTO        L_main343
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main968
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main968:
	BTFSC       STATUS+0, 0 
	GOTO        L_main343
L__main700:
;TrexGame_Batuhan_Kural_180403027.c,705 :: 		Glcd_Image(dinoJump17);
	MOVLW       _dinoJump17+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump17+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump17+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,706 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,707 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,708 :: 		}
L_main343:
;TrexGame_Batuhan_Kural_180403027.c,709 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main969
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main969:
	BTFSS       STATUS+0, 2 
	GOTO        L_main346
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main970
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main970:
	BTFSS       STATUS+0, 2 
	GOTO        L_main346
L__main699:
;TrexGame_Batuhan_Kural_180403027.c,710 :: 		if(health>1){
	MOVLW       0
	MOVWF       R0 
	MOVF        _health+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main971
	MOVF        _health+0, 0 
	SUBLW       1
L__main971:
	BTFSC       STATUS+0, 0 
	GOTO        L_main347
;TrexGame_Batuhan_Kural_180403027.c,711 :: 		continueGame();
	CALL        _continueGame+0, 0
;TrexGame_Batuhan_Kural_180403027.c,712 :: 		goto asd;
	GOTO        ___main_asd
;TrexGame_Batuhan_Kural_180403027.c,713 :: 		}
L_main347:
;TrexGame_Batuhan_Kural_180403027.c,714 :: 		if(health == 1){
	MOVLW       0
	XORWF       _health+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main972
	MOVLW       1
	XORWF       _health+0, 0 
L__main972:
	BTFSS       STATUS+0, 2 
	GOTO        L_main348
;TrexGame_Batuhan_Kural_180403027.c,715 :: 		health = health--;
	MOVLW       1
	SUBWF       _health+0, 1 
	MOVLW       0
	SUBWFB      _health+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,716 :: 		IntToStr(health, healthScore);
	MOVF        _health+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _health+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _healthScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,717 :: 		LCD_Out(2,22,healthScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       22
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _healthScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,718 :: 		gameState = 3;
	MOVLW       3
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,719 :: 		}
L_main348:
;TrexGame_Batuhan_Kural_180403027.c,720 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,721 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,722 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,723 :: 		}
L_main346:
;TrexGame_Batuhan_Kural_180403027.c,724 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main973
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main973:
	BTFSS       STATUS+0, 2 
	GOTO        L_main351
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main974
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main974:
	BTFSC       STATUS+0, 0 
	GOTO        L_main351
L__main698:
;TrexGame_Batuhan_Kural_180403027.c,725 :: 		Glcd_Image(dinoJump28);
	MOVLW       _dinoJump28+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump28+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump28+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,726 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,727 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,728 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,729 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,730 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,731 :: 		}
L_main351:
;TrexGame_Batuhan_Kural_180403027.c,732 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main975
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main975:
	BTFSS       STATUS+0, 2 
	GOTO        L_main354
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main976
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main976:
	BTFSS       STATUS+0, 2 
	GOTO        L_main354
L__main697:
;TrexGame_Batuhan_Kural_180403027.c,733 :: 		if(health>1){
	MOVLW       0
	MOVWF       R0 
	MOVF        _health+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main977
	MOVF        _health+0, 0 
	SUBLW       1
L__main977:
	BTFSC       STATUS+0, 0 
	GOTO        L_main355
;TrexGame_Batuhan_Kural_180403027.c,734 :: 		continueGame();
	CALL        _continueGame+0, 0
;TrexGame_Batuhan_Kural_180403027.c,735 :: 		goto asd;
	GOTO        ___main_asd
;TrexGame_Batuhan_Kural_180403027.c,736 :: 		}
L_main355:
;TrexGame_Batuhan_Kural_180403027.c,737 :: 		if(health == 1){
	MOVLW       0
	XORWF       _health+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main978
	MOVLW       1
	XORWF       _health+0, 0 
L__main978:
	BTFSS       STATUS+0, 2 
	GOTO        L_main356
;TrexGame_Batuhan_Kural_180403027.c,738 :: 		health = health--;
	MOVLW       1
	SUBWF       _health+0, 1 
	MOVLW       0
	SUBWFB      _health+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,739 :: 		IntToStr(health, healthScore);
	MOVF        _health+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _health+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _healthScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,740 :: 		LCD_Out(2,22,healthScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       22
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _healthScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,741 :: 		gameState = 3;
	MOVLW       3
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,742 :: 		}
L_main356:
;TrexGame_Batuhan_Kural_180403027.c,743 :: 		}
L_main354:
;TrexGame_Batuhan_Kural_180403027.c,744 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main979
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main979:
	BTFSS       STATUS+0, 2 
	GOTO        L_main359
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main980
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main980:
	BTFSC       STATUS+0, 0 
	GOTO        L_main359
L__main696:
;TrexGame_Batuhan_Kural_180403027.c,745 :: 		Glcd_Image(dinoJump18);
	MOVLW       _dinoJump18+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump18+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump18+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,746 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,747 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,748 :: 		}
L_main359:
;TrexGame_Batuhan_Kural_180403027.c,749 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main981
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main981:
	BTFSS       STATUS+0, 2 
	GOTO        L_main362
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main982
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main982:
	BTFSS       STATUS+0, 2 
	GOTO        L_main362
L__main695:
;TrexGame_Batuhan_Kural_180403027.c,750 :: 		if(health>1){
	MOVLW       0
	MOVWF       R0 
	MOVF        _health+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main983
	MOVF        _health+0, 0 
	SUBLW       1
L__main983:
	BTFSC       STATUS+0, 0 
	GOTO        L_main363
;TrexGame_Batuhan_Kural_180403027.c,751 :: 		continueGame();
	CALL        _continueGame+0, 0
;TrexGame_Batuhan_Kural_180403027.c,752 :: 		goto asd;
	GOTO        ___main_asd
;TrexGame_Batuhan_Kural_180403027.c,753 :: 		}
L_main363:
;TrexGame_Batuhan_Kural_180403027.c,754 :: 		if(health == 1){
	MOVLW       0
	XORWF       _health+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main984
	MOVLW       1
	XORWF       _health+0, 0 
L__main984:
	BTFSS       STATUS+0, 2 
	GOTO        L_main364
;TrexGame_Batuhan_Kural_180403027.c,755 :: 		health = health--;
	MOVLW       1
	SUBWF       _health+0, 1 
	MOVLW       0
	SUBWFB      _health+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,756 :: 		IntToStr(health, healthScore);
	MOVF        _health+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _health+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _healthScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,757 :: 		LCD_Out(2,22,healthScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       22
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _healthScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,758 :: 		gameState = 3;
	MOVLW       3
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,759 :: 		}
L_main364:
;TrexGame_Batuhan_Kural_180403027.c,760 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,761 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,762 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,763 :: 		}
L_main362:
;TrexGame_Batuhan_Kural_180403027.c,764 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main985
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main985:
	BTFSS       STATUS+0, 2 
	GOTO        L_main367
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main986
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main986:
	BTFSC       STATUS+0, 0 
	GOTO        L_main367
L__main694:
;TrexGame_Batuhan_Kural_180403027.c,765 :: 		Glcd_Image(dinoJump29);
	MOVLW       _dinoJump29+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump29+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump29+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,766 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,767 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,768 :: 		MSDelay = MSDelay - speedUp;
	MOVF        _speedUp+0, 0 
	SUBWF       _MSDelay+0, 1 
	MOVF        _speedUp+1, 0 
	SUBWFB      _MSDelay+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,769 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,770 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,771 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,772 :: 		}
L_main367:
;TrexGame_Batuhan_Kural_180403027.c,773 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main987
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main987:
	BTFSS       STATUS+0, 2 
	GOTO        L_main370
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main988
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main988:
	BTFSS       STATUS+0, 2 
	GOTO        L_main370
L__main693:
;TrexGame_Batuhan_Kural_180403027.c,774 :: 		if(health>1){
	MOVLW       0
	MOVWF       R0 
	MOVF        _health+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main989
	MOVF        _health+0, 0 
	SUBLW       1
L__main989:
	BTFSC       STATUS+0, 0 
	GOTO        L_main371
;TrexGame_Batuhan_Kural_180403027.c,775 :: 		continueGame();
	CALL        _continueGame+0, 0
;TrexGame_Batuhan_Kural_180403027.c,776 :: 		goto asd;
	GOTO        ___main_asd
;TrexGame_Batuhan_Kural_180403027.c,777 :: 		}
L_main371:
;TrexGame_Batuhan_Kural_180403027.c,778 :: 		if(health == 1){
	MOVLW       0
	XORWF       _health+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main990
	MOVLW       1
	XORWF       _health+0, 0 
L__main990:
	BTFSS       STATUS+0, 2 
	GOTO        L_main372
;TrexGame_Batuhan_Kural_180403027.c,779 :: 		health = health--;
	MOVLW       1
	SUBWF       _health+0, 1 
	MOVLW       0
	SUBWFB      _health+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,780 :: 		IntToStr(health, healthScore);
	MOVF        _health+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _health+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _healthScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,781 :: 		LCD_Out(2,22,healthScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       22
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _healthScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,782 :: 		gameState = 3;
	MOVLW       3
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,783 :: 		}
L_main372:
;TrexGame_Batuhan_Kural_180403027.c,784 :: 		}
L_main370:
;TrexGame_Batuhan_Kural_180403027.c,785 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main991
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main991:
	BTFSS       STATUS+0, 2 
	GOTO        L_main375
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main992
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main992:
	BTFSC       STATUS+0, 0 
	GOTO        L_main375
L__main692:
;TrexGame_Batuhan_Kural_180403027.c,786 :: 		Glcd_Image(dinoJump19);
	MOVLW       _dinoJump19+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump19+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump19+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,787 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,788 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,789 :: 		}
L_main375:
;TrexGame_Batuhan_Kural_180403027.c,790 :: 		asd:
___main_asd:
;TrexGame_Batuhan_Kural_180403027.c,791 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main993
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main993:
	BTFSS       STATUS+0, 2 
	GOTO        L_main378
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main994
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main994:
	BTFSS       STATUS+0, 2 
	GOTO        L_main378
L__main691:
;TrexGame_Batuhan_Kural_180403027.c,792 :: 		Glcd_Image(dinoMov210);
	MOVLW       _dinoMov210+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov210+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov210+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,793 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,794 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,795 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,796 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,797 :: 		}
L_main378:
;TrexGame_Batuhan_Kural_180403027.c,798 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main995
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main995:
	BTFSS       STATUS+0, 2 
	GOTO        L_main381
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main996
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main996:
	BTFSC       STATUS+0, 0 
	GOTO        L_main381
L__main690:
;TrexGame_Batuhan_Kural_180403027.c,799 :: 		Glcd_Image(dinoJump210);
	MOVLW       _dinoJump210+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump210+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump210+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,800 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,801 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,802 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,803 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,804 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,805 :: 		}
L_main381:
;TrexGame_Batuhan_Kural_180403027.c,806 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main997
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main997:
	BTFSS       STATUS+0, 2 
	GOTO        L_main384
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main998
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main998:
	BTFSS       STATUS+0, 2 
	GOTO        L_main384
L__main689:
;TrexGame_Batuhan_Kural_180403027.c,807 :: 		Glcd_Image(dinoMov110);
	MOVLW       _dinoMov110+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov110+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov110+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,808 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,809 :: 		}
L_main384:
;TrexGame_Batuhan_Kural_180403027.c,810 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main999
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main999:
	BTFSS       STATUS+0, 2 
	GOTO        L_main387
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1000
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1000:
	BTFSC       STATUS+0, 0 
	GOTO        L_main387
L__main688:
;TrexGame_Batuhan_Kural_180403027.c,811 :: 		Glcd_Image(dinoJump110);
	MOVLW       _dinoJump110+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump110+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump110+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,812 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,813 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,814 :: 		}
L_main387:
;TrexGame_Batuhan_Kural_180403027.c,815 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1001
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1001:
	BTFSS       STATUS+0, 2 
	GOTO        L_main390
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1002
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1002:
	BTFSS       STATUS+0, 2 
	GOTO        L_main390
L__main687:
;TrexGame_Batuhan_Kural_180403027.c,816 :: 		Glcd_Image(dinoMov211);
	MOVLW       _dinoMov211+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov211+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov211+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,817 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,818 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,819 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,820 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,821 :: 		}
L_main390:
;TrexGame_Batuhan_Kural_180403027.c,822 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1003
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1003:
	BTFSS       STATUS+0, 2 
	GOTO        L_main393
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1004
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1004:
	BTFSC       STATUS+0, 0 
	GOTO        L_main393
L__main686:
;TrexGame_Batuhan_Kural_180403027.c,823 :: 		Glcd_Image(dinoJump211);
	MOVLW       _dinoJump211+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump211+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump211+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,824 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,825 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,826 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,827 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,828 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,829 :: 		}
L_main393:
;TrexGame_Batuhan_Kural_180403027.c,830 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1005
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1005:
	BTFSS       STATUS+0, 2 
	GOTO        L_main396
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1006
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1006:
	BTFSS       STATUS+0, 2 
	GOTO        L_main396
L__main685:
;TrexGame_Batuhan_Kural_180403027.c,831 :: 		Glcd_Image(dinoMov111);
	MOVLW       _dinoMov111+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov111+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov111+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,832 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,833 :: 		MSDelay = MSDelay - speedUp;
	MOVF        _speedUp+0, 0 
	SUBWF       _MSDelay+0, 1 
	MOVF        _speedUp+1, 0 
	SUBWFB      _MSDelay+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,834 :: 		}
L_main396:
;TrexGame_Batuhan_Kural_180403027.c,835 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1007
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1007:
	BTFSS       STATUS+0, 2 
	GOTO        L_main399
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1008
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1008:
	BTFSC       STATUS+0, 0 
	GOTO        L_main399
L__main684:
;TrexGame_Batuhan_Kural_180403027.c,836 :: 		Glcd_Image(dinoJump111);
	MOVLW       _dinoJump111+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump111+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump111+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,837 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,838 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,839 :: 		MSDelay = MSDelay - speedUp;
	MOVF        _speedUp+0, 0 
	SUBWF       _MSDelay+0, 1 
	MOVF        _speedUp+1, 0 
	SUBWFB      _MSDelay+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,840 :: 		}
L_main399:
;TrexGame_Batuhan_Kural_180403027.c,841 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1009
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1009:
	BTFSS       STATUS+0, 2 
	GOTO        L_main402
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1010
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1010:
	BTFSS       STATUS+0, 2 
	GOTO        L_main402
L__main683:
;TrexGame_Batuhan_Kural_180403027.c,842 :: 		Glcd_Image(dinoMov32);
	MOVLW       _dinoMov32+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov32+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov32+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,843 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,844 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,845 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,846 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,847 :: 		}
L_main402:
;TrexGame_Batuhan_Kural_180403027.c,848 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1011
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1011:
	BTFSS       STATUS+0, 2 
	GOTO        L_main405
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1012
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1012:
	BTFSC       STATUS+0, 0 
	GOTO        L_main405
L__main682:
;TrexGame_Batuhan_Kural_180403027.c,849 :: 		Glcd_Image(dinoJump32);
	MOVLW       _dinoJump32+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump32+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump32+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,850 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,851 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,852 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,853 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,854 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,855 :: 		}
L_main405:
;TrexGame_Batuhan_Kural_180403027.c,856 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1013
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1013:
	BTFSS       STATUS+0, 2 
	GOTO        L_main408
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1014
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1014:
	BTFSS       STATUS+0, 2 
	GOTO        L_main408
L__main681:
;TrexGame_Batuhan_Kural_180403027.c,857 :: 		Glcd_Image(dinoMov42);
	MOVLW       _dinoMov42+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov42+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov42+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,858 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,859 :: 		}
L_main408:
;TrexGame_Batuhan_Kural_180403027.c,860 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1015
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1015:
	BTFSS       STATUS+0, 2 
	GOTO        L_main411
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1016
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1016:
	BTFSC       STATUS+0, 0 
	GOTO        L_main411
L__main680:
;TrexGame_Batuhan_Kural_180403027.c,861 :: 		Glcd_Image(dinoJump42);
	MOVLW       _dinoJump42+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump42+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump42+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,862 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,863 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,864 :: 		}
L_main411:
;TrexGame_Batuhan_Kural_180403027.c,865 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1017
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1017:
	BTFSS       STATUS+0, 2 
	GOTO        L_main414
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1018
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1018:
	BTFSS       STATUS+0, 2 
	GOTO        L_main414
L__main679:
;TrexGame_Batuhan_Kural_180403027.c,866 :: 		Glcd_Image(dinoMov33);
	MOVLW       _dinoMov33+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov33+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov33+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,867 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,868 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,869 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,870 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,871 :: 		}
L_main414:
;TrexGame_Batuhan_Kural_180403027.c,872 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1019
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1019:
	BTFSS       STATUS+0, 2 
	GOTO        L_main417
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1020
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1020:
	BTFSC       STATUS+0, 0 
	GOTO        L_main417
L__main678:
;TrexGame_Batuhan_Kural_180403027.c,873 :: 		Glcd_Image(dinoJump33);
	MOVLW       _dinoJump33+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump33+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump33+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,874 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,875 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,876 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,877 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,878 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,879 :: 		}
L_main417:
;TrexGame_Batuhan_Kural_180403027.c,880 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1021
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1021:
	BTFSS       STATUS+0, 2 
	GOTO        L_main420
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1022
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1022:
	BTFSS       STATUS+0, 2 
	GOTO        L_main420
L__main677:
;TrexGame_Batuhan_Kural_180403027.c,881 :: 		Glcd_Image(dinoMov43);
	MOVLW       _dinoMov43+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov43+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov43+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,882 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,883 :: 		}
L_main420:
;TrexGame_Batuhan_Kural_180403027.c,884 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1023
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1023:
	BTFSS       STATUS+0, 2 
	GOTO        L_main423
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1024
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1024:
	BTFSC       STATUS+0, 0 
	GOTO        L_main423
L__main676:
;TrexGame_Batuhan_Kural_180403027.c,885 :: 		Glcd_Image(dinoJump43);
	MOVLW       _dinoJump43+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump43+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump43+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,886 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,887 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,888 :: 		}
L_main423:
;TrexGame_Batuhan_Kural_180403027.c,889 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1025
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1025:
	BTFSS       STATUS+0, 2 
	GOTO        L_main426
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1026
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1026:
	BTFSS       STATUS+0, 2 
	GOTO        L_main426
L__main675:
;TrexGame_Batuhan_Kural_180403027.c,890 :: 		Glcd_Image(dinoMov34);
	MOVLW       _dinoMov34+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov34+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov34+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,891 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,892 :: 		MSDelay = MSDelay - speedUp;
	MOVF        _speedUp+0, 0 
	SUBWF       _MSDelay+0, 1 
	MOVF        _speedUp+1, 0 
	SUBWFB      _MSDelay+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,893 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,894 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,895 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,896 :: 		}
L_main426:
;TrexGame_Batuhan_Kural_180403027.c,897 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1027
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1027:
	BTFSS       STATUS+0, 2 
	GOTO        L_main429
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1028
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1028:
	BTFSC       STATUS+0, 0 
	GOTO        L_main429
L__main674:
;TrexGame_Batuhan_Kural_180403027.c,898 :: 		Glcd_Image(dinoJump34);
	MOVLW       _dinoJump34+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump34+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump34+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,899 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,900 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,901 :: 		MSDelay = MSDelay - speedUp;
	MOVF        _speedUp+0, 0 
	SUBWF       _MSDelay+0, 1 
	MOVF        _speedUp+1, 0 
	SUBWFB      _MSDelay+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,902 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,903 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,904 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,905 :: 		}
L_main429:
;TrexGame_Batuhan_Kural_180403027.c,906 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1029
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1029:
	BTFSS       STATUS+0, 2 
	GOTO        L_main432
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1030
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1030:
	BTFSS       STATUS+0, 2 
	GOTO        L_main432
L__main673:
;TrexGame_Batuhan_Kural_180403027.c,907 :: 		Glcd_Image(dinoMov44);
	MOVLW       _dinoMov44+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov44+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov44+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,908 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,909 :: 		}
L_main432:
;TrexGame_Batuhan_Kural_180403027.c,910 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1031
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1031:
	BTFSS       STATUS+0, 2 
	GOTO        L_main435
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1032
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1032:
	BTFSC       STATUS+0, 0 
	GOTO        L_main435
L__main672:
;TrexGame_Batuhan_Kural_180403027.c,911 :: 		Glcd_Image(dinoJump44);
	MOVLW       _dinoJump44+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump44+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump44+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,912 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,913 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,914 :: 		}
L_main435:
;TrexGame_Batuhan_Kural_180403027.c,915 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1033
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1033:
	BTFSS       STATUS+0, 2 
	GOTO        L_main438
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1034
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1034:
	BTFSS       STATUS+0, 2 
	GOTO        L_main438
L__main671:
;TrexGame_Batuhan_Kural_180403027.c,916 :: 		Glcd_Image(dinoMov35);
	MOVLW       _dinoMov35+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov35+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov35+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,917 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,918 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,919 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,920 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,921 :: 		}
L_main438:
;TrexGame_Batuhan_Kural_180403027.c,922 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1035
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1035:
	BTFSS       STATUS+0, 2 
	GOTO        L_main441
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1036
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1036:
	BTFSC       STATUS+0, 0 
	GOTO        L_main441
L__main670:
;TrexGame_Batuhan_Kural_180403027.c,923 :: 		Glcd_Image(dinoJump35);
	MOVLW       _dinoJump35+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump35+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump35+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,924 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,925 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,926 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,927 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,928 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,929 :: 		}
L_main441:
;TrexGame_Batuhan_Kural_180403027.c,930 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1037
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1037:
	BTFSS       STATUS+0, 2 
	GOTO        L_main444
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1038
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1038:
	BTFSS       STATUS+0, 2 
	GOTO        L_main444
L__main669:
;TrexGame_Batuhan_Kural_180403027.c,931 :: 		Glcd_Image(dinoMov45);
	MOVLW       _dinoMov45+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov45+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov45+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,932 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,933 :: 		if(autoPilot == 1){
	MOVLW       0
	XORWF       _autoPilot+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1039
	MOVLW       1
	XORWF       _autoPilot+0, 0 
L__main1039:
	BTFSS       STATUS+0, 2 
	GOTO        L_main445
;TrexGame_Batuhan_Kural_180403027.c,934 :: 		INT0F_bit = 1;
	BSF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,935 :: 		}
L_main445:
;TrexGame_Batuhan_Kural_180403027.c,936 :: 		}
L_main444:
;TrexGame_Batuhan_Kural_180403027.c,937 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1040
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1040:
	BTFSS       STATUS+0, 2 
	GOTO        L_main448
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1041
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1041:
	BTFSC       STATUS+0, 0 
	GOTO        L_main448
L__main668:
;TrexGame_Batuhan_Kural_180403027.c,938 :: 		Glcd_Image(dinoJump45);
	MOVLW       _dinoJump45+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump45+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump45+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,939 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,940 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,941 :: 		}
L_main448:
;TrexGame_Batuhan_Kural_180403027.c,942 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1042
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1042:
	BTFSS       STATUS+0, 2 
	GOTO        L_main451
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1043
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1043:
	BTFSS       STATUS+0, 2 
	GOTO        L_main451
L__main667:
;TrexGame_Batuhan_Kural_180403027.c,943 :: 		Glcd_Image(dinoMov36);
	MOVLW       _dinoMov36+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov36+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov36+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,944 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,945 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,946 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,947 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,948 :: 		}
L_main451:
;TrexGame_Batuhan_Kural_180403027.c,949 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1044
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1044:
	BTFSS       STATUS+0, 2 
	GOTO        L_main454
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1045
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1045:
	BTFSC       STATUS+0, 0 
	GOTO        L_main454
L__main666:
;TrexGame_Batuhan_Kural_180403027.c,950 :: 		Glcd_Image(dinoJump36);
	MOVLW       _dinoJump36+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump36+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump36+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,951 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,952 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,953 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,954 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,955 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,956 :: 		}
L_main454:
;TrexGame_Batuhan_Kural_180403027.c,957 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1046
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1046:
	BTFSS       STATUS+0, 2 
	GOTO        L_main457
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1047
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1047:
	BTFSS       STATUS+0, 2 
	GOTO        L_main457
L__main665:
;TrexGame_Batuhan_Kural_180403027.c,958 :: 		if(health>1){
	MOVLW       0
	MOVWF       R0 
	MOVF        _health+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1048
	MOVF        _health+0, 0 
	SUBLW       1
L__main1048:
	BTFSC       STATUS+0, 0 
	GOTO        L_main458
;TrexGame_Batuhan_Kural_180403027.c,959 :: 		continueGame();
	CALL        _continueGame+0, 0
;TrexGame_Batuhan_Kural_180403027.c,960 :: 		goto asd1;
	GOTO        ___main_asd1
;TrexGame_Batuhan_Kural_180403027.c,961 :: 		}
L_main458:
;TrexGame_Batuhan_Kural_180403027.c,962 :: 		if(health == 1){
	MOVLW       0
	XORWF       _health+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1049
	MOVLW       1
	XORWF       _health+0, 0 
L__main1049:
	BTFSS       STATUS+0, 2 
	GOTO        L_main459
;TrexGame_Batuhan_Kural_180403027.c,963 :: 		health = health--;
	MOVLW       1
	SUBWF       _health+0, 1 
	MOVLW       0
	SUBWFB      _health+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,964 :: 		IntToStr(health, healthScore);
	MOVF        _health+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _health+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _healthScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,965 :: 		LCD_Out(2,22,healthScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       22
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _healthScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,966 :: 		gameState = 3;
	MOVLW       3
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,967 :: 		}
L_main459:
;TrexGame_Batuhan_Kural_180403027.c,968 :: 		}
L_main457:
;TrexGame_Batuhan_Kural_180403027.c,969 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1050
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1050:
	BTFSS       STATUS+0, 2 
	GOTO        L_main462
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1051
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1051:
	BTFSC       STATUS+0, 0 
	GOTO        L_main462
L__main664:
;TrexGame_Batuhan_Kural_180403027.c,970 :: 		Glcd_Image(dinoJump36);
	MOVLW       _dinoJump36+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump36+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump36+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,971 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,972 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,973 :: 		MSDelay = MSDelay - speedUp;
	MOVF        _speedUp+0, 0 
	SUBWF       _MSDelay+0, 1 
	MOVF        _speedUp+1, 0 
	SUBWFB      _MSDelay+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,974 :: 		}
L_main462:
;TrexGame_Batuhan_Kural_180403027.c,975 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1052
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1052:
	BTFSS       STATUS+0, 2 
	GOTO        L_main465
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1053
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1053:
	BTFSS       STATUS+0, 2 
	GOTO        L_main465
L__main663:
;TrexGame_Batuhan_Kural_180403027.c,976 :: 		if(health>1){
	MOVLW       0
	MOVWF       R0 
	MOVF        _health+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1054
	MOVF        _health+0, 0 
	SUBLW       1
L__main1054:
	BTFSC       STATUS+0, 0 
	GOTO        L_main466
;TrexGame_Batuhan_Kural_180403027.c,977 :: 		continueGame();
	CALL        _continueGame+0, 0
;TrexGame_Batuhan_Kural_180403027.c,978 :: 		goto asd1;
	GOTO        ___main_asd1
;TrexGame_Batuhan_Kural_180403027.c,979 :: 		}
L_main466:
;TrexGame_Batuhan_Kural_180403027.c,980 :: 		if(health == 1){
	MOVLW       0
	XORWF       _health+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1055
	MOVLW       1
	XORWF       _health+0, 0 
L__main1055:
	BTFSS       STATUS+0, 2 
	GOTO        L_main467
;TrexGame_Batuhan_Kural_180403027.c,981 :: 		health = health--;
	MOVLW       1
	SUBWF       _health+0, 1 
	MOVLW       0
	SUBWFB      _health+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,982 :: 		IntToStr(health, healthScore);
	MOVF        _health+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _health+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _healthScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,983 :: 		LCD_Out(2,22,healthScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       22
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _healthScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,984 :: 		gameState = 3;
	MOVLW       3
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,985 :: 		}
L_main467:
;TrexGame_Batuhan_Kural_180403027.c,986 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,987 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,988 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,989 :: 		}
L_main465:
;TrexGame_Batuhan_Kural_180403027.c,990 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1056
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1056:
	BTFSS       STATUS+0, 2 
	GOTO        L_main470
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1057
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1057:
	BTFSC       STATUS+0, 0 
	GOTO        L_main470
L__main662:
;TrexGame_Batuhan_Kural_180403027.c,991 :: 		Glcd_Image(dinoJump37);
	MOVLW       _dinoJump37+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump37+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump37+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,992 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,993 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,994 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,995 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,996 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,997 :: 		}
L_main470:
;TrexGame_Batuhan_Kural_180403027.c,998 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1058
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1058:
	BTFSS       STATUS+0, 2 
	GOTO        L_main473
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1059
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1059:
	BTFSS       STATUS+0, 2 
	GOTO        L_main473
L__main661:
;TrexGame_Batuhan_Kural_180403027.c,999 :: 		if(health>1){
	MOVLW       0
	MOVWF       R0 
	MOVF        _health+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1060
	MOVF        _health+0, 0 
	SUBLW       1
L__main1060:
	BTFSC       STATUS+0, 0 
	GOTO        L_main474
;TrexGame_Batuhan_Kural_180403027.c,1000 :: 		continueGame();
	CALL        _continueGame+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1001 :: 		goto asd1;
	GOTO        ___main_asd1
;TrexGame_Batuhan_Kural_180403027.c,1002 :: 		}
L_main474:
;TrexGame_Batuhan_Kural_180403027.c,1003 :: 		if(health == 1){
	MOVLW       0
	XORWF       _health+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1061
	MOVLW       1
	XORWF       _health+0, 0 
L__main1061:
	BTFSS       STATUS+0, 2 
	GOTO        L_main475
;TrexGame_Batuhan_Kural_180403027.c,1004 :: 		health = health--;
	MOVLW       1
	SUBWF       _health+0, 1 
	MOVLW       0
	SUBWFB      _health+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,1005 :: 		IntToStr(health, healthScore);
	MOVF        _health+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _health+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _healthScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1006 :: 		LCD_Out(2,22,healthScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       22
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _healthScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1007 :: 		gameState = 3;
	MOVLW       3
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,1008 :: 		}
L_main475:
;TrexGame_Batuhan_Kural_180403027.c,1009 :: 		}
L_main473:
;TrexGame_Batuhan_Kural_180403027.c,1010 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1062
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1062:
	BTFSS       STATUS+0, 2 
	GOTO        L_main478
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1063
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1063:
	BTFSC       STATUS+0, 0 
	GOTO        L_main478
L__main660:
;TrexGame_Batuhan_Kural_180403027.c,1011 :: 		Glcd_Image(dinoJump37);
	MOVLW       _dinoJump37+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump37+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump37+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1012 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1013 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,1014 :: 		}
L_main478:
;TrexGame_Batuhan_Kural_180403027.c,1015 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1064
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1064:
	BTFSS       STATUS+0, 2 
	GOTO        L_main481
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1065
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1065:
	BTFSS       STATUS+0, 2 
	GOTO        L_main481
L__main659:
;TrexGame_Batuhan_Kural_180403027.c,1016 :: 		if(health>1){
	MOVLW       0
	MOVWF       R0 
	MOVF        _health+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1066
	MOVF        _health+0, 0 
	SUBLW       1
L__main1066:
	BTFSC       STATUS+0, 0 
	GOTO        L_main482
;TrexGame_Batuhan_Kural_180403027.c,1017 :: 		continueGame();
	CALL        _continueGame+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1018 :: 		goto asd1;
	GOTO        ___main_asd1
;TrexGame_Batuhan_Kural_180403027.c,1019 :: 		}
L_main482:
;TrexGame_Batuhan_Kural_180403027.c,1020 :: 		if(health == 1){
	MOVLW       0
	XORWF       _health+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1067
	MOVLW       1
	XORWF       _health+0, 0 
L__main1067:
	BTFSS       STATUS+0, 2 
	GOTO        L_main483
;TrexGame_Batuhan_Kural_180403027.c,1021 :: 		health = health--;
	MOVLW       1
	SUBWF       _health+0, 1 
	MOVLW       0
	SUBWFB      _health+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,1022 :: 		IntToStr(health, healthScore);
	MOVF        _health+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _health+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _healthScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1023 :: 		LCD_Out(2,22,healthScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       22
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _healthScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1024 :: 		gameState = 3;
	MOVLW       3
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,1025 :: 		}
L_main483:
;TrexGame_Batuhan_Kural_180403027.c,1026 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,1027 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1028 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1029 :: 		}
L_main481:
;TrexGame_Batuhan_Kural_180403027.c,1030 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1068
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1068:
	BTFSS       STATUS+0, 2 
	GOTO        L_main486
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1069
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1069:
	BTFSC       STATUS+0, 0 
	GOTO        L_main486
L__main658:
;TrexGame_Batuhan_Kural_180403027.c,1031 :: 		Glcd_Image(dinoJump38);
	MOVLW       _dinoJump38+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump38+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump38+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1032 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1033 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,1034 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,1035 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1036 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1037 :: 		}
L_main486:
;TrexGame_Batuhan_Kural_180403027.c,1038 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1070
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1070:
	BTFSS       STATUS+0, 2 
	GOTO        L_main489
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1071
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1071:
	BTFSS       STATUS+0, 2 
	GOTO        L_main489
L__main657:
;TrexGame_Batuhan_Kural_180403027.c,1039 :: 		if(health>1){
	MOVLW       0
	MOVWF       R0 
	MOVF        _health+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1072
	MOVF        _health+0, 0 
	SUBLW       1
L__main1072:
	BTFSC       STATUS+0, 0 
	GOTO        L_main490
;TrexGame_Batuhan_Kural_180403027.c,1040 :: 		continueGame();
	CALL        _continueGame+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1041 :: 		goto asd1;
	GOTO        ___main_asd1
;TrexGame_Batuhan_Kural_180403027.c,1042 :: 		}
L_main490:
;TrexGame_Batuhan_Kural_180403027.c,1043 :: 		if(health == 1){
	MOVLW       0
	XORWF       _health+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1073
	MOVLW       1
	XORWF       _health+0, 0 
L__main1073:
	BTFSS       STATUS+0, 2 
	GOTO        L_main491
;TrexGame_Batuhan_Kural_180403027.c,1044 :: 		health = health--;
	MOVLW       1
	SUBWF       _health+0, 1 
	MOVLW       0
	SUBWFB      _health+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,1045 :: 		IntToStr(health, healthScore);
	MOVF        _health+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _health+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _healthScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1046 :: 		LCD_Out(2,22,healthScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       22
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _healthScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1047 :: 		gameState = 3;
	MOVLW       3
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,1048 :: 		}
L_main491:
;TrexGame_Batuhan_Kural_180403027.c,1049 :: 		}
L_main489:
;TrexGame_Batuhan_Kural_180403027.c,1050 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1074
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1074:
	BTFSS       STATUS+0, 2 
	GOTO        L_main494
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1075
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1075:
	BTFSC       STATUS+0, 0 
	GOTO        L_main494
L__main656:
;TrexGame_Batuhan_Kural_180403027.c,1051 :: 		Glcd_Image(dinoJump38);
	MOVLW       _dinoJump38+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump38+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump38+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1052 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1053 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,1054 :: 		}
L_main494:
;TrexGame_Batuhan_Kural_180403027.c,1055 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1076
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1076:
	BTFSS       STATUS+0, 2 
	GOTO        L_main497
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1077
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1077:
	BTFSS       STATUS+0, 2 
	GOTO        L_main497
L__main655:
;TrexGame_Batuhan_Kural_180403027.c,1056 :: 		if(health>1){
	MOVLW       0
	MOVWF       R0 
	MOVF        _health+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1078
	MOVF        _health+0, 0 
	SUBLW       1
L__main1078:
	BTFSC       STATUS+0, 0 
	GOTO        L_main498
;TrexGame_Batuhan_Kural_180403027.c,1057 :: 		continueGame();
	CALL        _continueGame+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1058 :: 		goto asd1;
	GOTO        ___main_asd1
;TrexGame_Batuhan_Kural_180403027.c,1059 :: 		}
L_main498:
;TrexGame_Batuhan_Kural_180403027.c,1060 :: 		if(health == 1){
	MOVLW       0
	XORWF       _health+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1079
	MOVLW       1
	XORWF       _health+0, 0 
L__main1079:
	BTFSS       STATUS+0, 2 
	GOTO        L_main499
;TrexGame_Batuhan_Kural_180403027.c,1061 :: 		health = health--;
	MOVLW       1
	SUBWF       _health+0, 1 
	MOVLW       0
	SUBWFB      _health+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,1062 :: 		IntToStr(health, healthScore);
	MOVF        _health+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _health+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _healthScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1063 :: 		LCD_Out(2,22,healthScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       22
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _healthScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1064 :: 		gameState = 3;
	MOVLW       3
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,1065 :: 		}
L_main499:
;TrexGame_Batuhan_Kural_180403027.c,1066 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,1067 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1068 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1069 :: 		}
L_main497:
;TrexGame_Batuhan_Kural_180403027.c,1070 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1080
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1080:
	BTFSS       STATUS+0, 2 
	GOTO        L_main502
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1081
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1081:
	BTFSC       STATUS+0, 0 
	GOTO        L_main502
L__main654:
;TrexGame_Batuhan_Kural_180403027.c,1071 :: 		Glcd_Image(dinoJump39);
	MOVLW       _dinoJump39+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump39+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump39+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1072 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1073 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,1074 :: 		MSDelay = MSDelay - speedUp;
	MOVF        _speedUp+0, 0 
	SUBWF       _MSDelay+0, 1 
	MOVF        _speedUp+1, 0 
	SUBWFB      _MSDelay+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,1075 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,1076 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1077 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1078 :: 		}
L_main502:
;TrexGame_Batuhan_Kural_180403027.c,1079 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1082
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1082:
	BTFSS       STATUS+0, 2 
	GOTO        L_main505
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1083
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1083:
	BTFSS       STATUS+0, 2 
	GOTO        L_main505
L__main653:
;TrexGame_Batuhan_Kural_180403027.c,1080 :: 		if(health>1){
	MOVLW       0
	MOVWF       R0 
	MOVF        _health+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1084
	MOVF        _health+0, 0 
	SUBLW       1
L__main1084:
	BTFSC       STATUS+0, 0 
	GOTO        L_main506
;TrexGame_Batuhan_Kural_180403027.c,1081 :: 		continueGame();
	CALL        _continueGame+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1082 :: 		goto asd1;
	GOTO        ___main_asd1
;TrexGame_Batuhan_Kural_180403027.c,1083 :: 		}
L_main506:
;TrexGame_Batuhan_Kural_180403027.c,1084 :: 		if(health == 1){
	MOVLW       0
	XORWF       _health+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1085
	MOVLW       1
	XORWF       _health+0, 0 
L__main1085:
	BTFSS       STATUS+0, 2 
	GOTO        L_main507
;TrexGame_Batuhan_Kural_180403027.c,1085 :: 		health = health--;
	MOVLW       1
	SUBWF       _health+0, 1 
	MOVLW       0
	SUBWFB      _health+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,1086 :: 		IntToStr(health, healthScore);
	MOVF        _health+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _health+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _healthScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1087 :: 		LCD_Out(2,22,healthScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       22
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _healthScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_healthScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1088 :: 		gameState = 3;
	MOVLW       3
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,1089 :: 		}
L_main507:
;TrexGame_Batuhan_Kural_180403027.c,1090 :: 		}
L_main505:
;TrexGame_Batuhan_Kural_180403027.c,1091 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1086
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1086:
	BTFSS       STATUS+0, 2 
	GOTO        L_main510
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1087
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1087:
	BTFSC       STATUS+0, 0 
	GOTO        L_main510
L__main652:
;TrexGame_Batuhan_Kural_180403027.c,1092 :: 		Glcd_Image(dinoJump39);
	MOVLW       _dinoJump39+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump39+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump39+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1093 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1094 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,1095 :: 		}
L_main510:
;TrexGame_Batuhan_Kural_180403027.c,1096 :: 		asd1:
___main_asd1:
;TrexGame_Batuhan_Kural_180403027.c,1097 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1088
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1088:
	BTFSS       STATUS+0, 2 
	GOTO        L_main513
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1089
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1089:
	BTFSS       STATUS+0, 2 
	GOTO        L_main513
L__main651:
;TrexGame_Batuhan_Kural_180403027.c,1098 :: 		Glcd_Image(dinoMov410);
	MOVLW       _dinoMov410+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov410+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov410+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1099 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1100 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,1101 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1102 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1103 :: 		}
L_main513:
;TrexGame_Batuhan_Kural_180403027.c,1104 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1090
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1090:
	BTFSS       STATUS+0, 2 
	GOTO        L_main516
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1091
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1091:
	BTFSC       STATUS+0, 0 
	GOTO        L_main516
L__main650:
;TrexGame_Batuhan_Kural_180403027.c,1105 :: 		Glcd_Image(dinoJump410);
	MOVLW       _dinoJump410+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump410+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump410+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1106 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1107 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,1108 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,1109 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1110 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1111 :: 		}
L_main516:
;TrexGame_Batuhan_Kural_180403027.c,1112 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1092
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1092:
	BTFSS       STATUS+0, 2 
	GOTO        L_main519
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1093
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1093:
	BTFSS       STATUS+0, 2 
	GOTO        L_main519
L__main649:
;TrexGame_Batuhan_Kural_180403027.c,1113 :: 		Glcd_Image(dinoMov310);
	MOVLW       _dinoMov310+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov310+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov310+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1114 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1115 :: 		}
L_main519:
;TrexGame_Batuhan_Kural_180403027.c,1116 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1094
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1094:
	BTFSS       STATUS+0, 2 
	GOTO        L_main522
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1095
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1095:
	BTFSC       STATUS+0, 0 
	GOTO        L_main522
L__main648:
;TrexGame_Batuhan_Kural_180403027.c,1117 :: 		Glcd_Image(dinoJump310);
	MOVLW       _dinoJump310+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump310+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump310+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1118 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1119 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,1120 :: 		}
L_main522:
;TrexGame_Batuhan_Kural_180403027.c,1121 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1096
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1096:
	BTFSS       STATUS+0, 2 
	GOTO        L_main525
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1097
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1097:
	BTFSS       STATUS+0, 2 
	GOTO        L_main525
L__main647:
;TrexGame_Batuhan_Kural_180403027.c,1122 :: 		Glcd_Image(dinoMov411);
	MOVLW       _dinoMov411+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov411+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov411+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1123 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1124 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,1125 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1126 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1127 :: 		}
L_main525:
;TrexGame_Batuhan_Kural_180403027.c,1128 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1098
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1098:
	BTFSS       STATUS+0, 2 
	GOTO        L_main528
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1099
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1099:
	BTFSC       STATUS+0, 0 
	GOTO        L_main528
L__main646:
;TrexGame_Batuhan_Kural_180403027.c,1129 :: 		Glcd_Image(dinoJump411);
	MOVLW       _dinoJump411+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump411+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump411+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1130 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1131 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,1132 :: 		score = score + (scoreIncrease * scoreMultiplier);
	MOVF        _scoreIncrease+0, 0 
	MOVWF       R0 
	MOVF        _scoreIncrease+1, 0 
	MOVWF       R1 
	MOVF        _scoreMultiplier+0, 0 
	MOVWF       R4 
	MOVF        _scoreMultiplier+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,1133 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1134 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1135 :: 		}
L_main528:
;TrexGame_Batuhan_Kural_180403027.c,1136 :: 		if(gameState == 2 && dinoState == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1100
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1100:
	BTFSS       STATUS+0, 2 
	GOTO        L_main531
	MOVLW       0
	XORWF       _dinoState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1101
	MOVLW       0
	XORWF       _dinoState+0, 0 
L__main1101:
	BTFSS       STATUS+0, 2 
	GOTO        L_main531
L__main645:
;TrexGame_Batuhan_Kural_180403027.c,1137 :: 		Glcd_Image(dinoMov311);
	MOVLW       _dinoMov311+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoMov311+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoMov311+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1138 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1139 :: 		MSDelay = MSDelay - speedUp;
	MOVF        _speedUp+0, 0 
	SUBWF       _MSDelay+0, 1 
	MOVF        _speedUp+1, 0 
	SUBWFB      _MSDelay+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,1140 :: 		}
L_main531:
;TrexGame_Batuhan_Kural_180403027.c,1141 :: 		if(gameState == 2 && dinoState > 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1102
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1102:
	BTFSS       STATUS+0, 2 
	GOTO        L_main534
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dinoState+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1103
	MOVF        _dinoState+0, 0 
	SUBLW       0
L__main1103:
	BTFSC       STATUS+0, 0 
	GOTO        L_main534
L__main644:
;TrexGame_Batuhan_Kural_180403027.c,1142 :: 		Glcd_Image(dinoJump311);
	MOVLW       _dinoJump311+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoJump311+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoJump311+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1143 :: 		Vdelay_ms(MSDelay);
	MOVF        _MSDelay+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _MSDelay+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1144 :: 		dinoState = dinoState--;
	MOVLW       1
	SUBWF       _dinoState+0, 1 
	MOVLW       0
	SUBWFB      _dinoState+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,1145 :: 		MSDelay = MSDelay - speedUp;
	MOVF        _speedUp+0, 0 
	SUBWF       _MSDelay+0, 1 
	MOVF        _speedUp+1, 0 
	SUBWFB      _MSDelay+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,1146 :: 		}
L_main534:
;TrexGame_Batuhan_Kural_180403027.c,1148 :: 		if(gameState == 2){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1104
	MOVLW       2
	XORWF       _gameState+0, 0 
L__main1104:
	BTFSS       STATUS+0, 2 
	GOTO        L_main535
;TrexGame_Batuhan_Kural_180403027.c,1149 :: 		lapCount++;
	INFSNZ      _lapCount+0, 1 
	INCF        _lapCount+1, 1 
;TrexGame_Batuhan_Kural_180403027.c,1150 :: 		}
L_main535:
;TrexGame_Batuhan_Kural_180403027.c,1151 :: 		if(lapCount > 2){
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _lapCount+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1105
	MOVF        _lapCount+0, 0 
	SUBLW       2
L__main1105:
	BTFSC       STATUS+0, 0 
	GOTO        L_main536
;TrexGame_Batuhan_Kural_180403027.c,1152 :: 		lapCount = 0;
	CLRF        _lapCount+0 
	CLRF        _lapCount+1 
;TrexGame_Batuhan_Kural_180403027.c,1153 :: 		score = score + (1000*(health)); // When the game is finished, add 1000 to the score for the each remaining life
	MOVLW       232
	MOVWF       R0 
	MOVLW       3
	MOVWF       R1 
	MOVF        _health+0, 0 
	MOVWF       R4 
	MOVF        _health+1, 0 
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        _score+0, 0 
	ADDWF       R0, 1 
	MOVF        _score+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _score+0 
	MOVF        R1, 0 
	MOVWF       _score+1 
;TrexGame_Batuhan_Kural_180403027.c,1154 :: 		IntToStr(score, gameScore);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _gameScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1155 :: 		Lcd_Out(2,14,gameScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _gameScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_gameScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1156 :: 		if(difficultyState == 1){
	MOVLW       0
	XORWF       _difficultyState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1106
	MOVLW       1
	XORWF       _difficultyState+0, 0 
L__main1106:
	BTFSS       STATUS+0, 2 
	GOTO        L_main537
;TrexGame_Batuhan_Kural_180403027.c,1157 :: 		gameState = 5; //Change this for endings
	MOVLW       5
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,1158 :: 		INT0F_bit = 1;
	BSF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,1159 :: 		}
L_main537:
;TrexGame_Batuhan_Kural_180403027.c,1160 :: 		if(difficultyState == 2){
	MOVLW       0
	XORWF       _difficultyState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1107
	MOVLW       2
	XORWF       _difficultyState+0, 0 
L__main1107:
	BTFSS       STATUS+0, 2 
	GOTO        L_main538
;TrexGame_Batuhan_Kural_180403027.c,1161 :: 		gameState = 6; //Change this for endings
	MOVLW       6
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,1162 :: 		if(language == 0){
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1108
	MOVLW       0
	XORWF       _language+0, 0 
L__main1108:
	BTFSS       STATUS+0, 2 
	GOTO        L_main539
;TrexGame_Batuhan_Kural_180403027.c,1163 :: 		Glcd_Image(dinoEnd21);
	MOVLW       _dinoEnd21+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoEnd21+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoEnd21+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1164 :: 		}
	GOTO        L_main540
L_main539:
;TrexGame_Batuhan_Kural_180403027.c,1166 :: 		Glcd_Image(dinoEnd21en);
	MOVLW       _dinoEnd21en+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoEnd21en+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoEnd21en+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1167 :: 		}
L_main540:
;TrexGame_Batuhan_Kural_180403027.c,1168 :: 		INT0F_bit = 1;
	BSF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,1169 :: 		}
L_main538:
;TrexGame_Batuhan_Kural_180403027.c,1170 :: 		if(difficultyState == 3){
	MOVLW       0
	XORWF       _difficultyState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1109
	MOVLW       3
	XORWF       _difficultyState+0, 0 
L__main1109:
	BTFSS       STATUS+0, 2 
	GOTO        L_main541
;TrexGame_Batuhan_Kural_180403027.c,1171 :: 		gameState = 7; //Change this for endings
	MOVLW       7
	MOVWF       _gameState+0 
	MOVLW       0
	MOVWF       _gameState+1 
;TrexGame_Batuhan_Kural_180403027.c,1172 :: 		if(language == 0){
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1110
	MOVLW       0
	XORWF       _language+0, 0 
L__main1110:
	BTFSS       STATUS+0, 2 
	GOTO        L_main542
;TrexGame_Batuhan_Kural_180403027.c,1173 :: 		Glcd_Image(dinoEnd31);
	MOVLW       _dinoEnd31+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoEnd31+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoEnd31+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1174 :: 		}
	GOTO        L_main543
L_main542:
;TrexGame_Batuhan_Kural_180403027.c,1176 :: 		Glcd_Image(dinoEnd31en);
	MOVLW       _dinoEnd31en+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoEnd31en+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoEnd31en+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1177 :: 		}
L_main543:
;TrexGame_Batuhan_Kural_180403027.c,1178 :: 		INT0F_bit = 1;
	BSF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,1179 :: 		}
L_main541:
;TrexGame_Batuhan_Kural_180403027.c,1180 :: 		}
L_main536:
;TrexGame_Batuhan_Kural_180403027.c,1181 :: 		if(best < score){
	MOVLW       128
	XORWF       _best+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _score+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1111
	MOVF        _score+0, 0 
	SUBWF       _best+0, 0 
L__main1111:
	BTFSC       STATUS+0, 0 
	GOTO        L_main544
;TrexGame_Batuhan_Kural_180403027.c,1182 :: 		best = score;
	MOVF        _score+0, 0 
	MOVWF       _best+0 
	MOVF        _score+1, 0 
	MOVWF       _best+1 
;TrexGame_Batuhan_Kural_180403027.c,1183 :: 		IntToStr(best, bestScore);
	MOVF        _score+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _score+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _bestScore+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_bestScore+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1184 :: 		Lcd_Out(2,4,bestScore);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _bestScore+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_bestScore+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1185 :: 		}
L_main544:
;TrexGame_Batuhan_Kural_180403027.c,1186 :: 		if(gameState == 3 && alive == 1){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1112
	MOVLW       3
	XORWF       _gameState+0, 0 
L__main1112:
	BTFSS       STATUS+0, 2 
	GOTO        L_main547
	MOVLW       0
	XORWF       _alive+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1113
	MOVLW       1
	XORWF       _alive+0, 0 
L__main1113:
	BTFSS       STATUS+0, 2 
	GOTO        L_main547
L__main643:
;TrexGame_Batuhan_Kural_180403027.c,1187 :: 		INT0F_bit = 1;
	BSF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;TrexGame_Batuhan_Kural_180403027.c,1188 :: 		}
L_main547:
;TrexGame_Batuhan_Kural_180403027.c,1189 :: 		if(gameState == 3 && language == 0 && health == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1114
	MOVLW       3
	XORWF       _gameState+0, 0 
L__main1114:
	BTFSS       STATUS+0, 2 
	GOTO        L_main550
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1115
	MOVLW       0
	XORWF       _language+0, 0 
L__main1115:
	BTFSS       STATUS+0, 2 
	GOTO        L_main550
	MOVLW       0
	XORWF       _health+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1116
	MOVLW       0
	XORWF       _health+0, 0 
L__main1116:
	BTFSS       STATUS+0, 2 
	GOTO        L_main550
L__main642:
;TrexGame_Batuhan_Kural_180403027.c,1190 :: 		Glcd_Image(gameOver1);
	MOVLW       _gameOver1+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_gameOver1+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_gameOver1+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1191 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main551:
	DECFSZ      R13, 1, 1
	BRA         L_main551
	DECFSZ      R12, 1, 1
	BRA         L_main551
	DECFSZ      R11, 1, 1
	BRA         L_main551
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,1192 :: 		Glcd_Image(gameOver2);
	MOVLW       _gameOver2+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_gameOver2+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_gameOver2+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1193 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main552:
	DECFSZ      R13, 1, 1
	BRA         L_main552
	DECFSZ      R12, 1, 1
	BRA         L_main552
	DECFSZ      R11, 1, 1
	BRA         L_main552
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,1194 :: 		lapCount = 0;
	CLRF        _lapCount+0 
	CLRF        _lapCount+1 
;TrexGame_Batuhan_Kural_180403027.c,1195 :: 		}
L_main550:
;TrexGame_Batuhan_Kural_180403027.c,1196 :: 		if(gameState == 3 && language == 1 && health == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1117
	MOVLW       3
	XORWF       _gameState+0, 0 
L__main1117:
	BTFSS       STATUS+0, 2 
	GOTO        L_main555
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1118
	MOVLW       1
	XORWF       _language+0, 0 
L__main1118:
	BTFSS       STATUS+0, 2 
	GOTO        L_main555
	MOVLW       0
	XORWF       _health+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1119
	MOVLW       0
	XORWF       _health+0, 0 
L__main1119:
	BTFSS       STATUS+0, 2 
	GOTO        L_main555
L__main641:
;TrexGame_Batuhan_Kural_180403027.c,1197 :: 		Glcd_Image(gameOver1en);
	MOVLW       _gameOver1en+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_gameOver1en+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_gameOver1en+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1198 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main556:
	DECFSZ      R13, 1, 1
	BRA         L_main556
	DECFSZ      R12, 1, 1
	BRA         L_main556
	DECFSZ      R11, 1, 1
	BRA         L_main556
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,1199 :: 		Glcd_Image(gameOver2en);
	MOVLW       _gameOver2en+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_gameOver2en+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_gameOver2en+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1200 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main557:
	DECFSZ      R13, 1, 1
	BRA         L_main557
	DECFSZ      R12, 1, 1
	BRA         L_main557
	DECFSZ      R11, 1, 1
	BRA         L_main557
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,1201 :: 		}
L_main555:
;TrexGame_Batuhan_Kural_180403027.c,1202 :: 		if(gameState == 5 && language == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1120
	MOVLW       5
	XORWF       _gameState+0, 0 
L__main1120:
	BTFSS       STATUS+0, 2 
	GOTO        L_main560
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1121
	MOVLW       0
	XORWF       _language+0, 0 
L__main1121:
	BTFSS       STATUS+0, 2 
	GOTO        L_main560
L__main640:
;TrexGame_Batuhan_Kural_180403027.c,1203 :: 		Glcd_Image(dinoEnd11);
	MOVLW       _dinoEnd11+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoEnd11+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoEnd11+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1204 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main561:
	DECFSZ      R13, 1, 1
	BRA         L_main561
	DECFSZ      R12, 1, 1
	BRA         L_main561
	DECFSZ      R11, 1, 1
	BRA         L_main561
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,1205 :: 		Glcd_Image(dinoEnd12);
	MOVLW       _dinoEnd12+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoEnd12+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoEnd12+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1206 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main562:
	DECFSZ      R13, 1, 1
	BRA         L_main562
	DECFSZ      R12, 1, 1
	BRA         L_main562
	DECFSZ      R11, 1, 1
	BRA         L_main562
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,1207 :: 		}
L_main560:
;TrexGame_Batuhan_Kural_180403027.c,1208 :: 		if(gameState == 5 && language == 1){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1122
	MOVLW       5
	XORWF       _gameState+0, 0 
L__main1122:
	BTFSS       STATUS+0, 2 
	GOTO        L_main565
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1123
	MOVLW       1
	XORWF       _language+0, 0 
L__main1123:
	BTFSS       STATUS+0, 2 
	GOTO        L_main565
L__main639:
;TrexGame_Batuhan_Kural_180403027.c,1209 :: 		Glcd_Image(dinoEnd11en);
	MOVLW       _dinoEnd11en+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoEnd11en+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoEnd11en+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1210 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main566:
	DECFSZ      R13, 1, 1
	BRA         L_main566
	DECFSZ      R12, 1, 1
	BRA         L_main566
	DECFSZ      R11, 1, 1
	BRA         L_main566
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,1211 :: 		Glcd_Image(dinoEnd12en);
	MOVLW       _dinoEnd12en+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoEnd12en+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoEnd12en+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1212 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main567:
	DECFSZ      R13, 1, 1
	BRA         L_main567
	DECFSZ      R12, 1, 1
	BRA         L_main567
	DECFSZ      R11, 1, 1
	BRA         L_main567
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,1213 :: 		}
L_main565:
;TrexGame_Batuhan_Kural_180403027.c,1214 :: 		if(gameState == 6 && language == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1124
	MOVLW       6
	XORWF       _gameState+0, 0 
L__main1124:
	BTFSS       STATUS+0, 2 
	GOTO        L_main570
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1125
	MOVLW       0
	XORWF       _language+0, 0 
L__main1125:
	BTFSS       STATUS+0, 2 
	GOTO        L_main570
L__main638:
;TrexGame_Batuhan_Kural_180403027.c,1215 :: 		Glcd_Image(dinoEnd22);
	MOVLW       _dinoEnd22+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoEnd22+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoEnd22+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1216 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main571:
	DECFSZ      R13, 1, 1
	BRA         L_main571
	DECFSZ      R12, 1, 1
	BRA         L_main571
	DECFSZ      R11, 1, 1
	BRA         L_main571
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,1217 :: 		Glcd_Image(dinoEnd21);
	MOVLW       _dinoEnd21+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoEnd21+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoEnd21+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1218 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main572:
	DECFSZ      R13, 1, 1
	BRA         L_main572
	DECFSZ      R12, 1, 1
	BRA         L_main572
	DECFSZ      R11, 1, 1
	BRA         L_main572
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,1219 :: 		}
L_main570:
;TrexGame_Batuhan_Kural_180403027.c,1220 :: 		if(gameState == 6 && language == 1){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1126
	MOVLW       6
	XORWF       _gameState+0, 0 
L__main1126:
	BTFSS       STATUS+0, 2 
	GOTO        L_main575
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1127
	MOVLW       1
	XORWF       _language+0, 0 
L__main1127:
	BTFSS       STATUS+0, 2 
	GOTO        L_main575
L__main637:
;TrexGame_Batuhan_Kural_180403027.c,1221 :: 		Glcd_Image(dinoEnd22en);
	MOVLW       _dinoEnd22en+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoEnd22en+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoEnd22en+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1222 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main576:
	DECFSZ      R13, 1, 1
	BRA         L_main576
	DECFSZ      R12, 1, 1
	BRA         L_main576
	DECFSZ      R11, 1, 1
	BRA         L_main576
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,1223 :: 		Glcd_Image(dinoEnd21en);
	MOVLW       _dinoEnd21en+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoEnd21en+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoEnd21en+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1224 :: 		Delay_Ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main577:
	DECFSZ      R13, 1, 1
	BRA         L_main577
	DECFSZ      R12, 1, 1
	BRA         L_main577
	DECFSZ      R11, 1, 1
	BRA         L_main577
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,1225 :: 		}
L_main575:
;TrexGame_Batuhan_Kural_180403027.c,1226 :: 		if(gameState == 7 && language == 0){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1128
	MOVLW       7
	XORWF       _gameState+0, 0 
L__main1128:
	BTFSS       STATUS+0, 2 
	GOTO        L_main580
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1129
	MOVLW       0
	XORWF       _language+0, 0 
L__main1129:
	BTFSS       STATUS+0, 2 
	GOTO        L_main580
L__main636:
;TrexGame_Batuhan_Kural_180403027.c,1227 :: 		Glcd_Image(dinoEnd32);
	MOVLW       _dinoEnd32+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoEnd32+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoEnd32+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1228 :: 		Delay_Ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main581:
	DECFSZ      R13, 1, 1
	BRA         L_main581
	DECFSZ      R12, 1, 1
	BRA         L_main581
	DECFSZ      R11, 1, 1
	BRA         L_main581
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,1229 :: 		Glcd_Image(dinoEnd31);
	MOVLW       _dinoEnd31+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoEnd31+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoEnd31+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1230 :: 		Delay_Ms(1000);
	MOVLW       21
	MOVWF       R11, 0
	MOVLW       75
	MOVWF       R12, 0
	MOVLW       190
	MOVWF       R13, 0
L_main582:
	DECFSZ      R13, 1, 1
	BRA         L_main582
	DECFSZ      R12, 1, 1
	BRA         L_main582
	DECFSZ      R11, 1, 1
	BRA         L_main582
	NOP
;TrexGame_Batuhan_Kural_180403027.c,1231 :: 		}
L_main580:
;TrexGame_Batuhan_Kural_180403027.c,1232 :: 		if(gameState == 7 && language == 1){
	MOVLW       0
	XORWF       _gameState+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1130
	MOVLW       7
	XORWF       _gameState+0, 0 
L__main1130:
	BTFSS       STATUS+0, 2 
	GOTO        L_main585
	MOVLW       0
	XORWF       _language+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1131
	MOVLW       1
	XORWF       _language+0, 0 
L__main1131:
	BTFSS       STATUS+0, 2 
	GOTO        L_main585
L__main635:
;TrexGame_Batuhan_Kural_180403027.c,1233 :: 		Glcd_Image(dinoEnd32en);
	MOVLW       _dinoEnd32en+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoEnd32en+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoEnd32en+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1234 :: 		Delay_Ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main586:
	DECFSZ      R13, 1, 1
	BRA         L_main586
	DECFSZ      R12, 1, 1
	BRA         L_main586
	DECFSZ      R11, 1, 1
	BRA         L_main586
	NOP
	NOP
;TrexGame_Batuhan_Kural_180403027.c,1235 :: 		Glcd_Image(dinoEnd31en);
	MOVLW       _dinoEnd31en+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_dinoEnd31en+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_dinoEnd31en+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;TrexGame_Batuhan_Kural_180403027.c,1236 :: 		Delay_Ms(1000);
	MOVLW       21
	MOVWF       R11, 0
	MOVLW       75
	MOVWF       R12, 0
	MOVLW       190
	MOVWF       R13, 0
L_main587:
	DECFSZ      R13, 1, 1
	BRA         L_main587
	DECFSZ      R12, 1, 1
	BRA         L_main587
	DECFSZ      R11, 1, 1
	BRA         L_main587
	NOP
;TrexGame_Batuhan_Kural_180403027.c,1237 :: 		}
L_main585:
;TrexGame_Batuhan_Kural_180403027.c,1238 :: 		}
	GOTO        L_main151
;TrexGame_Batuhan_Kural_180403027.c,1239 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
