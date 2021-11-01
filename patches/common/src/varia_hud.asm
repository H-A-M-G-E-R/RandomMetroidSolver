;;; VARIA HUD to display current area (in the area randomizer sense),
;;; the split type (M for major, or Z for chozo), and the remaining
;;; number of items of the chosen split in the current area (1 digit
;;; for M/Z, 2 digits in full - no split indicator, and more items)
;;;
;;; It also handles Scavenger mode HUD. If the rando writes a list
;;; of required locations (see address format specified at scav_order),
;;; it will :
;;; - display the next scav loc to get to in the HUD, and its index in the
;;;   scav list
;;; - cycle through remaining required scav locs (the route) during pause
;;; - prevent the player to go to out of order scav locs
;;; - prevent the player to go through G4 if all required scav locs have
;;;   not been collected. For this, it replaces g4_skip asm, so don't
;;;   apply g4_skip when this patch is applied.
;;; - alternatively, it can trigger the escape immediately after the last
;;;   item has been collected. If the option is enabled, rando_escape also
;;;   has to be applied
;;; When all required scav locs have been collected, the HUD displays 'HUNT OVER'

;;; Includes etank bar combine by lioran

;;; Compile with "asar" (https://github.com/RPGHacker/asar/releases)

!hudposition = #$0006
;;; RAM used to store previous values to see whether we must draw
;;; area/item counter or next scav display
!previous = $7fff3c		; hi: area/00, lo: remaining items/next scav loc
;;; RAM for remaining items in current area
!n_items = $7fff3e
;;; RAM for current index in scav list order in scavenger
!scav_idx = $7ed86a		; saved to SRAM automatically
!scav_tmp  = $7fff40		; temp RAM used for a lot of stuff in scavenger
;;; item split written by randomizer
!seed_type = $82fb6c
;;; vanilla bit array to keep track of collected items
!item_bit_array = $7ed870
;;; bit index to byte index/bitmask routine
!bit_index = $80818e
;;; RAM area to write to for split/locs in HUD
!split_locs_hud = $7ec618

;;; external routines
!mark_event = $8081FA
!song_routine = $808fc1
!fix_timer_gfx = $a1f2c0	; in new_game.asm (common routines section)
!escape_setup = $8ff500		; in rando_escape.asm

;;; scavenger stuff
!game_state = $0998		; used to check pause/unpause
!hunt_over_hud = #$0011		; HUD ID of the fake loc 'HUNT OVER'
!hunt_over_hud8 = #$11		; same as above, for 8-bits mode
!press_xy_hud = #$8000		; fake scav_idx value telling we shall write 'PRESS X-Y' in scavenger hunt pause
!ridley_id = #$00aa
!area_index = $079f
!norfair = #$0002
!ridley_timer = $0FB2
!scav_escape = #$eeee
!scav_next_found = #$aaaa

;;; custom music patch detection for escape music trigger
!custom_music_marker = $8fe86b
!custom_music_id = #$caca
!custom_music_escape = $8fe871

lorom

;;; hijack the start of health handling in the HUD to draw area or
;;; remaining items if necessary
org $809B8B
	JSR draw_info

;;; hijack load room state, to init remaining items counter
org $82def7
	jml load_state

;;; yet another item pickup hijack, different from the ones in endingtotals and bomb_torizo
;;; this one is used to count remaining items in current area, and handle scavenger hunt
org $848899
	jml item_pickup
org $84889D
item_resume_pickup:
org $8488AF
item_abort_pickup:

;;; a bunch of hijacks post item collection to count items or trigger the escape after last item
;;; in scavenger hunt if option is set (has to be done after item_pickup because of music management)
org $8488de			; Beams
	nop : nop : nop
	jsl item_post_collect

org $848905			; Equipment
	nop : nop : nop
	jsl item_post_collect

org $848930			; Grapple
	nop : nop : nop
	jsl item_post_collect

org $848957			; X-Ray
	nop : nop : nop
	jsl item_post_collect

org $848975			; ETank
	nop : nop : nop
	jsl item_post_collect

org $848998			; RTank
	nop : nop : nop
	jsl item_post_collect

org $8489c1			; Missile
	nop : nop : nop
	jsl item_post_collect

org $8489ea			; Super
	nop : nop : nop
	jsl item_post_collect

org $848a13			; Power Bomb
	nop : nop : nop
	jsl item_post_collect

org $A6A377
	jml scav_ridley_check
org $A6A37C
ridley_initial_wait_show:
org $A6A388
ridley_initial_wait_continue:

org $A6C58B
	jml scav_ridley_dead
org $A6C550
ridley_still_dying:
org $A6C590			; would have been simpler to just hijack here, but already done by minimizer bosses patch
ridley_dead:

org $A6C5ED
	jsl scav_ridley_drops

;;; skip top row of auto reserve to have more room (HUD draw main routine)
org $809B61
write_reserve_main:
	bra .write_mid_reserve_row
org $809B6F
.write_mid_reserve_row:

;;; skip top row of auto reserve to have more room (pause screen manual/auto switch)
org $82AF08
write_reserve_pause_enable:
	bra .write_mid_reserve_row
org $82AF16
.write_mid_reserve_row:

org $82AF36
write_reserve_pause_disable:
	bra .write_mid_reserve_row
org $82AF3E
.write_mid_reserve_row:


;;; the following code will overwrite the normal etank drawing code,
;;; no extra space required, just turn the 2 lines of 14 etank into
;;; 1 lines of combined 14 etanks
org $809B99
	STA $4204
	SEP #$20
	LDA #$64
	STA $4206 
	REP #$30
	LDA #$0000
	STA $14
	LDY #$0007
	TAX
	LDA $4216
	STA $12
	-
	LDA $14 : CLC : ADC #$0064 : STA $14
	ADC #$02BC : STA $16
	INX : INX 
	LDA $09C4
	CMP $14 : BCS +;check if empty
	LDA #$2C0F
	BRA ++
	+
	LDA $09C2
	CMP $16 : BCC +
	LDA #$2C31
	BRA ++
	+
	CMP $14 : BCC +
	LDA #$2831
	BRA ++
	+
	LDA #$3430
	++
	STA $7EC648,x
	DEY
	BNE -
	NOP 
;end of etank row combine

org $80d130
draw_info:
	phx
	phy
	php

	;; first, determine if we should show next scav loc or area/items
	lda !scav_idx
	bmi .special
	asl : tax
	lda.l scav_order,x
	cmp #$ffff : bne .draw_next_scav
	jmp .draw_area

.special:
	;; special values
	cmp !press_xy_hud : beq .draw_press_xy
	bra .draw_next_scav
.draw_press_xy:
	cmp !previous : beq .scav_setup_next
	sta !previous
	ldy #press_xy-scav_names
	bra .draw_scav_text

.draw_next_scav:
	and #$00ff
	cmp !previous : beq .scav_setup_next
	sta !previous
	asl : asl : asl : asl
	tay
.draw_scav_text:
	ldx !hudposition
.draw_scav_loop:
	lda scav_names,y
	beq .maj_index
	sta $7ec602,x
	iny : iny
	inx : inx
	bra .draw_scav_loop
.maj_index:
	;; don't show index if showing special stuff
	lda !previous
	cmp !hunt_over_hud : beq .scav_setup_next
	cmp !press_xy_hud : beq .scav_setup_next
	;; show current index in required scav list
	lda #$2C0F : sta !split_locs_hud-2 ; blank before numbers for cleanup
	lda !scav_idx : inc : jsr draw_two
.scav_setup_next:
	lda !previous : cmp !hunt_over_hud : bne .game_state_check
	jmp .end
.game_state_check:
	;; when pausing, we allow the user to press X/Y to
	;; cycle through the remaining items.
	;; during this phase, scav_tmp is used to store
	;; maj_index backup in its low byte, and current
	;; increment due to button pressed its high byte
	;; scav_tmp is set to ffff when not in pause
	lda !game_state
	cmp #$000f : beq .pause_start_check
	cmp #$0010 : beq .pause_end
	jmp .end
.pause_start_check:
	lda !scav_tmp
	cmp #$ffff : beq .pause_init
	bra .pause
.pause_init:
	sep #$20
	lda !scav_idx : sta !scav_tmp
	lda #$00 : sta !scav_tmp+1	; current increment=0
	rep #$20
	;; show "PRESS X-Y" next frame
	lda !press_xy_hud : sta !scav_idx
	jmp .end
.pause_end:
	lda !scav_tmp
	cmp #$ffff : bne .pause_deinit
	jmp .end
.pause_deinit:
	lda !scav_tmp : and #$00ff : sta !scav_idx
	lda #$ffff : sta !scav_tmp
	jmp .end
.pause:
	sep #$20
	xba
	bne .pause_next_scav
	;; no action registered, check if we must register one
	rep #$20
	lda $8f			; newly pressed input
	bit #$0040 : bne .pause_x_was_pressed
	bit #$4000 : bne .pause_y_was_pressed
	jmp .end
.pause_x_was_pressed:
	lda #$0001
	bra .pause_store_action
.pause_y_was_pressed:
	lda #$ffff
.pause_store_action:
	sep #$20 : sta !scav_tmp+1 : rep #$20
	jmp .end
.pause_next_scav:
	;; action required: user pressed X or Y last frame
	;; first, save our action increment and check if we're
	;; just displaying the first item (works with either button)
	pha
	rep #$20
	lda !scav_idx : cmp !press_xy_hud : beq .pause_first_scav
	sep #$20
	pla
	;; add action increment (1 or -1) to scav_idx
	clc : adc !scav_idx : sta !scav_idx
	cmp !scav_tmp : bmi .pause_first_scav_store
	asl : tax
	lda.l scav_order,x
	cmp !hunt_over_hud8 : beq .pause_end_list
	bra .pause_next_scav_end
.pause_end_list:
	lda !scav_idx : dec : sta !scav_idx
	bra .pause_next_scav_end
.pause_first_scav:
	sep #$20
	pla
.pause_first_scav_store:
	lda !scav_tmp : sta !scav_idx
	lda #$00 : sta !scav_idx+1
.pause_next_scav_end:
	;; reset action
	lda #$00 : sta !scav_tmp+1
	rep #$20
	jmp .end

.draw_area:
	;; determine current graph area
	ldx $07bb
	sep #$20
	lda $8f0010,x
	;; check if we must draw it
	cmp !previous
	beq .items
	sta !previous
	rep #$20
	;; get text address
	and #$00ff
	asl : asl : asl : asl
	tay
	;; draw text
	ldx !hudposition
.draw_area_loop:
	lda area_names,y
	beq .items
	sta $7ec602,x
	iny : iny
	inx : inx
	bra .draw_area_loop
.items:
	;; check if we must draw remaining items counter
	sep #$20
	lda !n_items : cmp !previous+1
	beq .end
	sta !previous+1
	lda !seed_type
	rep #$20
	and #$00ff
	cmp #$005a		; 'Z'
	beq .draw_chozo
	cmp #$004d		; 'M'
	beq .draw_major
	;; default to full split: draw remaining item count on 2 digits
	lda !n_items : jsr draw_two
	bra .end
.draw_chozo:
	lda #$0CF9 : sta !split_locs_hud ; blue 'Z'
	bra .draw_items
.draw_major:
	lda #$0CEC : sta !split_locs_hud ; blue 'M'
.draw_items:
	lda !n_items : jsr draw_one

.end:
	plp
	ply
	plx
	lda $09C2 ;original code that was hijacked
	rts

; A=remaining items (2 digits)
draw_two:
	sta $4204
	sep #$20
	lda #$0a
	sta $4206
	pha : pla : pha : pla : rep #$20
	lda $4214 : asl : tay
	lda NumberGFXTable, y
	sta !split_locs_hud
	lda $4216
draw_one:			; A=remaining items (1 digit)
	asl : tay
	lda NumberGFXTable, y
	sta !split_locs_hud+2
	rts

;; Normal numbers (like energy/ammo)
NumberGFXTable:
	DW #$0C09,#$0C00,#$0C01,#$0C02,#$0C03,#$0C04,#$0C05,#$0C06,#$0C07,#$0C08

;; ;; Inverse video numbers
;; NumberGFXTable:
;; 	DW #$0C45,#$0C3C,#$0C3D,#$0C3E,#$0C3F,#$0C40,#$0C41,#$0C42,#$0C43,#$0C44

table "tables/hud_chars.txt"

area_names:
	dw " CERES "
	dw $0000
	dw " CRATER"
	dw $0000
	dw "GR BRIN"
	dw $0000
	dw "RED BRI"
	dw $0000
	dw " W SHIP"
	dw $0000
	dw " KRAID "
	dw $0000
	dw "UP NORF"
	dw $0000
	dw " CROC  "
	dw $0000
	dw "LO NORF"
	dw $0000
	dw "W MARID"
	dw $0000
	dw "E MARID"
	dw $0000
	dw "TOURIAN"
	dw $0000

scav_names:
	dw " MORPH "
	dw $0000
	dw " BOMB  "
	dw $0000
	dw " CHARGE"
	dw $0000
	dw " SPAZER"
	dw $0000
	dw " VARIA "
	dw $0000
	dw "HI-JUMP"
	dw $0000
	dw "  ICE  "
	dw $0000
	dw " SPEED "
	dw $0000
	dw "  WAVE "
	dw $0000
	dw "GRAPPLE"
	dw $0000
	dw " X-RAY "
	dw $0000
	dw "GRAVITY"
	dw $0000
	dw " SPACE "
	dw $0000
	dw " SPRING"
	dw $0000
	dw " PLASMA"
	dw $0000
	dw " SCREW "
	dw $0000
	dw " RIDLEY"
	dw $0000
	dw "HUNT OVER "
	dw $0000

press_xy:
	dw "PRESS X-Y "
	dw $0000

cleartable

print "b80 end: ", pc

warnpc $80d5ff

org $a1f550

incsrc "locs_by_areas.asm"

;;; used only in scavenger hunt mode, written to by rando
;;; have a word for each location of required order in scavenger mode:
;;; hi byte: location ID as in item bit array (same IDs used in locs_by_areas)
;;; lo byte: item/location index in scav_names list for HUD display
;;; #$ffff=scav list terminator
scav_order:
	fillbyte $ff : fill 38	; (17 max scav locs+"HUNT OVER"+terminator)*2

print "option_end: ", pc
;;; set to non-zero to trigger escape on last item pickup
option_end:
	dw $0000

load_state:
	lda #$ffff
	sta !previous
	sta !scav_tmp
	jsr compute_n_items
	;; hijacked code
	LDX $07BB
	LDA $0003,x
	jml $82DEFD		; resume routine

;;; return
;;; - carry set if in scav mode, clear if not
;;; - X set to index in scav_order
;;; - A scav_order entry
scav_mode_check:
	lda !scav_idx : asl : tax
	lda.l scav_order,x
	cmp #$ffff : beq .not_scav ; not in scavenger mode
.scav:
	sec
	bra .end
.not_scav:
	clc
.end:
	rtl

;;; X : index in scav list
;;; !scav_tmp: next scav loc ID
;;; Y : loc ID of current pickup
;;;
;;; returns carry set if pickup allowed, clear if not.
;;; !scav_tmp contains !scav_next_found if the location
;;; found is the next scav loc, otherwise garbage
scav_list_check:
	tya : cmp !scav_tmp : beq .found_next_scav
	;; now checks if the item we found is in the remaining list
.scav_list_check_loop:
	inx : inx
	lda.l scav_order,x
	cmp #$ffff : beq .allow
	and #$ff00 : xba : sta !scav_tmp
	tya : cmp !scav_tmp : beq .deny
	bra .scav_list_check_loop
.found_next_scav:
	lda !scav_next_found : sta !scav_tmp
.allow:
	sec
	bra .end
.deny:
	clc
.end:
	rts

found_next_scav:
	lda !scav_idx : inc : sta !scav_idx
	asl : tax
	lda.l scav_order,x : and #$00ff
	cmp !hunt_over_hud : bne .pickup_end_noescape
	;; last item pickup : check if we shall trigger the escape
	lda.l option_end : beq .pickup_end_noescape
	lda !scav_escape : sta !scav_tmp ; place marker to trigger escape a bit later (needed because of music change)
	bra .end
.pickup_end_noescape:
	lda #$ffff : sta !scav_tmp
.end:
	rts

scav_ridley_check:
	phx : phy
	dec !ridley_timer
	bne .continue
	;; here, Ridley is supposed to show up
	lda !area_index : cmp !norfair : bne .show ; don't check Ceres Ridley
	jsl scav_mode_check
	bcc .show				   ; not in scav mode
	;; scav_tmp = loc ID to check against
	and #$ff00 : xba : sta !scav_tmp
	ldy !ridley_id
	jsr scav_list_check
	lda #$ffff : sta !scav_tmp
	bcs .show
	inc !ridley_timer
.continue:
	ply : plx
	jml ridley_initial_wait_continue
.show:
	ply : plx
	jml ridley_initial_wait_show

scav_ridley_dead:
	dec !ridley_timer
	bpl .not_dead
	;; dead: see if it was the scav location, and advance
	phx
	jsl scav_mode_check
	bcc .dead
	and #$ff00 : xba
	cmp !ridley_id : bne .dead
	;; Ridley was indeed the next scav location
	jsr found_next_scav
	lda !scav_tmp
	cmp !scav_escape : bne .dead
	jsr trigger_escape
	bra .dead
.not_dead:
	jml ridley_still_dying
.dead:
	plx
	jml ridley_dead

;;; checks whether Ridley was last on scav list with escape option enabled
scav_ridley_drops:
	lda #$000e : jsl $808233 ;if escape flag is off:
	bcs .end
	lda #$0003 : jsl $808FC1 ;  Queue elevator music track
.end:				 ;else do nothing
	rtl

item_pickup:
	phy
	phx
	;; check if loc ID is the next required scav
	jsl scav_mode_check
	bcc .pickup_end_return ; not in scavenger mode
	;; scav_tmp = loc ID to check against
	and #$ff00 : xba : sta !scav_tmp
	;; checks if picked up loc is the next scav loc
	;; Room PLM arg, which gives us our loc ID, has been pushed at the start
	;; of the hijacked routine. Get it back in Y, and save it back to the stack
	ply : phy
	lda $1dc7,y : tay
	jsr scav_list_check
	bcc .nopickup_end
.pickup_end:
	lda !scav_tmp : cmp !scav_next_found : beq .found_next_scav
	lda #$ffff : sta !scav_tmp
	bra .pickup_end_return
.found_next_scav:
	jsr found_next_scav
.pickup_end_return:
	plx
	ply
	phx			; stack balance, X will be pulled at the end of hijacked routine
	LDA $1DC7,x		; remaining part hijacked code
	jml item_resume_pickup
.nopickup_end:			; routine end when we prevent item pick up (forbidden item)
	lda #$ffff : sta !scav_tmp
	plx
	ply
	rep 6 : dey		; move back PLM instruction pointer to "goto draw"
	jml item_abort_pickup	; jump to hijacked routine exit

item_post_collect:
	jsr compute_n_items
	lda !scav_tmp
	cmp !scav_escape : bne .normal_pickup
	jsr trigger_escape
	bra .end
.normal_pickup:
	LDA #$0168 : JSL $82E118 ;} Play room music track after 6 seconds
.end:
	rtl

;;; copy-pasted from a PLM instruction
clear_music_queue:
	PHX
	LDX #$000E
	STZ $0619,x
	STZ $0629,x
	DEX
	DEX
	BPL $F6
	PLX
	LDA $0639
	STA $063B
	LDA #$0000
	STA $063F
	STA $063D
	rts

;;; copied from escape rooms setup asm
room_earthquake:
	LDA #$0018             ;\
	STA $183E              ;} Earthquake type = BG1, BG2 and enemies; 3 pixel displacement, horizontal
	LDA #$FFFF
	STA $1840
	rts

trigger_escape:
	lda #$ffff : sta !scav_tmp
	phx : phy
	jsl !escape_setup
	jsr room_earthquake	; could not be called by setup asm since not in escape yet
	; load timer graphics
	lda #$000f : jsl $90f084
	jsl !fix_timer_gfx
	lda #$0002 : sta $0943	 ; set timer state to 2 (MB timer start)
	jsr clear_music_queue
	jsr trigger_escape_music
	lda #$000e : jsl !mark_event ; timebomb set event
	ply : plx
	rts

trigger_escape_music:
	lda !custom_music_marker
	cmp !custom_music_id : beq .custom_music
	lda #$ff24 : jsl !song_routine ; load boss 1 music data
	lda #$0007 : jsl !song_routine ; load music track 2
	bra .end
.custom_music:
	lda !custom_music_escape : ora #$ff00 : jsl !song_routine
	lda !custom_music_escape+1 : and #$00ff : jsl !song_routine
.end:
	rts

compute_n_items:
	phx
	phy
	lda #$0000 : sta !n_items ; temporarily used to count collected items in current area
	ldy #$0000		; Y will be used to store number of items in current area
	;; go through loc id list for current area, counting collected items
	;; determine current graph area
	ldx $07bb : lda $8f0010,x
	;; get loc id list index in bank A1 in X
	asl : tax : lda.l locs_by_areas,x : tax
.count_loop:
	lda $a10000,x : and #$00ff
	cmp #$00ff : beq .end
	phx
	jsl !bit_index
	lda !item_bit_array,x : and $05e7
	beq .next
	lda !n_items : inc : sta !n_items
.next:
	plx
	iny
	inx
	bra .count_loop
.end:
	;; here, n_items contain collected items, and Y number of items
	;; make it so, n_items contains remaining items:
	;; n_items = Y - n_items
	tya : sec : sbc !n_items : sta !n_items
	ply
	plx
	rts

print "a1 end: ", pc
warnpc $a1f8ff

;;; make golden statues instructions check for scavenger collection
;;; in scavenger mode :
org $878400			; Phantoon
	dw alt_set_event

org $878468			; Ridley
	dw alt_set_event

org $8784d0			; Kraid
	dw alt_set_event

org $878538			; Draygon
	dw alt_set_event

org $87d000
;;; alternate instruction for statues objects:
;;; set event in argument only if not in scavenger mode, or all scav locs collected
alt_set_event:
	phx
	;; skip check if not in scavenger mode:
	jsl scav_mode_check
	bcc .set_event
	;; in scavenger mode, check if the hunt is over
	and #$00ff : cmp !hunt_over_hud : bne .end
.set_event:
	lda $0000,y : jsl !mark_event
.end:
	iny : iny
	plx
	rts

org $838c5c
	dw alt_g4_skip

;;; same place as g4_skip patch door asm
org $8ffe00
alt_g4_skip:
    ;; skip check if not in scavenger mode:
    jsl scav_mode_check
    bcc .g4_skip
    ;; in scavenger mode, check if the hunt is over
    and #$00ff : cmp !hunt_over_hud : bne +
.g4_skip:
    ;; original g4_skip code:
    lda $7ed828
    bit.w #$0100
    beq +
    lda $7ed82c
    bit.w #$0001
    beq +
    lda $7ed82a
    and.w #$0101
    cmp.w #$0101
    bne +
    lda $7ed820
    ora.w #$0400
    sta $7ed820
+
    rts
