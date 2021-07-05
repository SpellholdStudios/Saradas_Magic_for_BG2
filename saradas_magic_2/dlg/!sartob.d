//////////////////////
//   Saradas ToB   ///
//////////////////////

BEGIN ~!Sartob~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN PrimoIncontro01
	SAY @0
	IF ~~ THEN REPLY @1 GOTO PrimoIncontro02
	IF ~~ THEN REPLY @2 GOTO PrimoIncontro03
	IF ~~ THEN REPLY @3 GOTO PrimoIncontro03
END

IF ~~ THEN BEGIN PrimoIncontro02
	SAY @4
	IF ~Alignment(protagonist,MASK_EVIL)~ THEN REPLY @5 GOTO PrimoIncontroEVIL01
	IF ~Alignment(protagonist,MASK_GOOD)~ THEN REPLY @6 GOTO PrimoIncontroGOOD01
	IF ~OR(3) Alignment(protagonist,NEUTRAL)
	Alignment(protagonist,CHAOTIC_NEUTRAL)
	Alignment(protagonist,LAWFUL_NEUTRAL)~ THEN REPLY @7 GOTO PrimoIncontroGOOD01
END

IF ~~ THEN BEGIN PrimoIncontro03
	SAY @8
	IF ~Alignment(protagonist,MASK_EVIL)~ THEN REPLY @5 GOTO PrimoIncontroEVIL01
	IF ~Alignment(protagonist,MASK_GOOD)~ THEN REPLY @6 GOTO PrimoIncontroGOOD01
END

IF ~~ THEN BEGIN PrimoIncontroEVIL01
	SAY @9
	IF ~~ THEN REPLY @10 DO ~SetGlobal("!SaradasJoined","GLOBAL",1) JoinParty()~ EXIT
	IF ~~ THEN REPLY @11 GOTO PrimoIncontroEVIL02
END


IF ~~ THEN BEGIN PrimoIncontroEVIL02
	SAY @12
	IF ~~ THEN DO ~MoveToPointNoInterrupt([1468.1455])~ EXIT
END

IF ~~ THEN BEGIN PrimoIncontroGOOD01
	SAY @13
	IF ~~ THEN REPLY @14 DO ~SetGlobal("!SaradasJoined","GLOBAL",1) JoinParty()~ EXIT
	IF ~~ THEN REPLY @15 GOTO PrimoIncontroEVIL02
END


// Secondo incontro
// ----------------
IF ~NumTimesTalkedToGT(0)~ THEN BEGIN SecondoIncontro01
	SAY @16
	IF ~~ THEN REPLY @17 DO ~SetGlobal("!SaradasJoined","GLOBAL",1) JoinParty()~ EXIT
	IF ~~ THEN REPLY @18 DO ~SetGlobal("!SaradasJoined","GLOBAL",1) JoinParty()~ EXIT
	IF ~~ THEN REPLY @19 EXIT
END


BEGIN ~!Sar25P~

// Dialogo kick out
// ----------------

IF ~Global("!SaradasJoined","GLOBAL",1) !AreaCheckObject("AR4500",Myself)~ THEN BEGIN SaradasKickedOutNoPP
	SAY @20
	IF ~Alignment(protagonist,MASK_EVIL)~ THEN REPLY @21 DO ~SetGlobal("!SaradasJoined","GLOBAL",0)~ GOTO EVILKicked
	IF ~~ THEN REPLY @22 DO ~SetGlobal("!SaradasJoined","GLOBAL",0)~ GOTO GOODKickedNoPP
	IF ~~ THEN REPLY @23 DO ~JoinParty()~ EXIT
END

IF ~Global("!SaradasJoined","GLOBAL",1) AreaCheckObject("AR4500",Myself)~ THEN BEGIN SaradasKickedOutPP
	SAY @20
	IF ~Alignment(protagonist,MASK_EVIL)~ THEN REPLY @21 DO ~SetGlobal("!SaradasJoined","GLOBAL",0)~ GOTO EVILKicked
	IF ~~ THEN REPLY @24 DO ~SetGlobal("!SaradasJoined","GLOBAL",0)~ GOTO GOODKickedPP
	IF ~~ THEN REPLY @23 DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN EVILKicked
	SAY @25
	IF ~~ THEN DO ~DialogInterrupt(FALSE) ForceSpell(Myself,POOF_GONE) wait(4) DialogInterrupt(TRUE)~ EXIT
END

IF ~~ THEN BEGIN GOODKickedNoPP
	SAY @26
	IF ~~ THEN DO ~DialogInterrupt(FALSE) ForceSpell(Myself,WIZARD_DIMENSION_DOOR) wait(4) LeaveAreaLUA("AR4500","",[1468.1455],0) DialogInterrupt(TRUE)~ EXIT
END

IF ~~ THEN BEGIN GOODKickedPP
	SAY @27
	IF ~~ THEN DO ~MoveToPointNoInterrupt([1468.1455])~ EXIT
END

IF ~Global("!SaradasJoined","GLOBAL",0) Global("!SaradasLowRepLeaves","GLOBAL",0) Global("!SaradasLeavesEvilPlayer","GLOBAL",0)~ THEN BEGIN SaradasRejoin
	SAY @28
	IF ~~ THEN REPLY @29 DO ~SetGlobal("!SaradasJoined","GLOBAL",1) JoinParty()~ EXIT
	IF ~~ THEN REPLY @30 EXIT
END

// File per appending SoA
// ----------------------
BEGIN ~!SarP~

BEGIN ~!SarJ~

BEGIN ~!SarD~

BEGIN ~!Sar25D~