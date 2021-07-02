//////////////////////////////
//   Saradas ToB           ///
//////////////////////////////


BEGIN ~!Sartob~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN PrimoIncontro01
SAY ~For the holy Morninglord! Is it you, <CHARNAME>? Is it you that has brought me here? How is that even possible?~
IF ~~ THEN REPLY ~I know, it was my very same reaction. Scary, uh? You can relax now, Saradas, you are safe here.~ GOTO PrimoIncontro02
IF ~~ THEN REPLY ~So the "almighty" old wizard CAN indeed be scared, it seems.~ GOTO PrimoIncontro03
IF ~~ THEN REPLY ~You're not going to throw up on my wonderful marble floor, aren't you?~ GOTO PrimoIncontro03
END


IF ~~ THEN BEGIN PrimoIncontro02
SAY ~I've never seen anything like this in my entire life, and I saw MANY things, young one. Nevertheless it is a pleasure to meet you again, son of Bhaal. Would you mind explaining what is this place and why you summoned me here?~
IF ~Alignment(protagonist,MASK_EVIL)~ THEN REPLY ~Sure. This is a pocket plane I forged with my powers. Nobody can reach me or hurt me here, unless I desire so. I summoned you here because I require your assistance, old mage.~ GOTO PrimoIncontroEVIL01
IF ~Alignment(protagonist,MASK_GOOD)~ THEN REPLY ~Sure. This is a pocket plane I forged with my powers, a safe haven. I summoned you here because I require your assistance, wise Saradas.~ GOTO PrimoIncontroGOOD01
IF ~OR(3) Alignment(protagonist,NEUTRAL)
Alignment(protagonist,CHAOTIC_NEUTRAL)
Alignment(protagonist,LAWFUL_NEUTRAL)~ THEN REPLY ~Oh I don't know anything about this place actually, but I was told that I created it out of my subconscious. The answer to the second question is pretty easy: I need you in my party. Simple as that.~ GOTO PrimoIncontroGOOD01
END

IF ~~ THEN BEGIN PrimoIncontro03
SAY ~You play with forces that you barely understand and yet you survived until now. I'm impressed, <CHARNAME> and I'm pleased you have not lost your sense of humor. Now, would you mind explaining what is this place and why you summoned me here? ~
IF ~Alignment(protagonist,MASK_EVIL)~ THEN REPLY ~Sure. This is a pocket plane I forged with my powers. Nobody can reach me or hurt me here, unless I desire so. I summoned you here because I require your assistance, old mage.~ GOTO PrimoIncontroEVIL01
IF ~Alignment(protagonist,MASK_GOOD)~ THEN REPLY ~Sure. This is a pocket plane I forged with my powers, a safe haven. I summoned you here because I require your assistance, wise Saradas.~ GOTO PrimoIncontroGOOD01
END

IF ~~ THEN BEGIN PrimoIncontroEVIL01
SAY ~Uhm...The Alaundo's prophecy is coming true indeed. I wonder what's your role in all this. I fear that your intention is to eventually accept the Bhaal's essence. I shall follow you but I will not tolerate any evil deed, mark my words.~
IF ~~ THEN REPLY ~We will see, old man. Welcome aboard.~ DO ~SetGlobal("!SaradasJoined","GLOBAL",1) JoinParty()~ EXIT
IF ~~ THEN REPLY ~I can't promise anything. Maybe it's not a good idea to recruit you, after all.~ GOTO PrimoIncontroEVIL02
END


IF ~~ THEN BEGIN PrimoIncontroEVIL02
SAY ~Very well then, you will find me here if you change your mind, <CHARNAME>.~
IF ~~ THEN DO ~MoveToPointNoInterrupt([1468.1455])~ EXIT
END

IF ~~ THEN BEGIN PrimoIncontroGOOD01
SAY ~Uhm...The Alaundo's prophecy is coming true indeed. I wonder what's your role in all this. I sense a gentle heart in your chest and despite my old age, I accept to follow you in your grievous quest, young one.~
IF ~~ THEN REPLY ~I'm honored to have you in my group, Saradas. Let's move on.~ DO ~SetGlobal("!SaradasJoined","GLOBAL",1) JoinParty()~ EXIT
IF ~~ THEN REPLY ~There are some things that require my attention now, I will come back for you later.~ GOTO PrimoIncontroEVIL02
END


//////////////////////////
/// Secondo incontro

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN SecondoIncontro01
SAY ~You are back, <CHARNAME>. Are you ready to recruit me now?~
IF ~~ THEN REPLY ~Yes I am, welcome in the group, Saradas.~ DO ~SetGlobal("!SaradasJoined","GLOBAL",1) JoinParty()~ EXIT
IF ~~ THEN REPLY ~Prepare your things and let's go.~ DO ~SetGlobal("!SaradasJoined","GLOBAL",1) JoinParty()~ EXIT
IF ~~ THEN REPLY ~Not yet, I'll come back.~ EXIT
END






BEGIN ~!Sar25P~


////////////////////
// Dialogo kick out


IF ~Global("!SaradasJoined","GLOBAL",1) !AreaCheckObject("AR4500",Myself)~ THEN BEGIN SaradasKickedOutNoPP
SAY ~You don't need my guidance and wisdom anymore, young one?~
IF ~Alignment(protagonist,MASK_EVIL)~ THEN REPLY ~Yes, I don't need you anymore, old man. I've grown tired of your company.~ DO ~SetGlobal("!SaradasJoined","GLOBAL",0)~ GOTO EVILKicked
IF ~~ THEN REPLY ~It is just temporary, my friend. I shall meet you again soon in my pocket plane.~ DO ~SetGlobal("!SaradasJoined","GLOBAL",0)~ GOTO GOODKickedNoPP
IF ~~ THEN REPLY ~It was just a misunderstanding, your company is always welcome.~ DO ~JoinParty()~ EXIT
END

IF ~Global("!SaradasJoined","GLOBAL",1) AreaCheckObject("AR4500",Myself)~ THEN BEGIN SaradasKickedOutPP
SAY ~You don't need my guidance and wisdom anymore, young one?~
IF ~Alignment(protagonist,MASK_EVIL)~ THEN REPLY ~Yes, I don't need you anymore, old man. I've grown tired of your company.~ DO ~SetGlobal("!SaradasJoined","GLOBAL",0)~ GOTO EVILKicked
IF ~~ THEN REPLY ~It is just temporary, my friend. I shall meet you again here soon enough.~ DO ~SetGlobal("!SaradasJoined","GLOBAL",0)~ GOTO GOODKickedPP
IF ~~ THEN REPLY ~It was just a misunderstanding, your company is always welcome.~ DO ~JoinParty()~ EXIT
END


IF ~~ THEN BEGIN EVILKicked
SAY ~As you wish. I foresee dark days ahead of you and I hope you will be wise anough to take the right decisions, when the time comes. I'll go back to my studies. Farewell, <CHARNAME>.~
IF ~~ THEN DO ~DialogInterrupt(FALSE) ForceSpell(Myself,POOF_GONE) wait(4) DialogInterrupt(TRUE)~ EXIT
END

IF ~~ THEN BEGIN GOODKickedNoPP
SAY ~I understand, I'm getting too old for adventure and I'm slowing you down. I will go back to your pocket plane.~
IF ~~ THEN DO ~DialogInterrupt(FALSE) ForceSpell(Myself,WIZARD_DIMENSION_DOOR) wait(4) LeaveAreaLUA("AR4500","",[1468.1455],S) DialogInterrupt(TRUE)~ EXIT
END


IF ~~ THEN BEGIN GOODKickedPP
SAY ~I understand, I'm getting too old for adventure and I'm slowing you down. You know where to find me.~
IF ~~ THEN DO ~MoveToPointNoInterrupt([1468.1455])~ EXIT
END




IF ~Global("!SaradasJoined","GLOBAL",0) Global("!SaradasLowRepLeaves","GLOBAL",0) Global("!SaradasLeavesEvilPlayer","GLOBAL",0)~ THEN BEGIN SaradasRejoin
SAY ~Oh, you are back <CHARNAME>. Do you want me to pack my things and come with you or you were just concerned about me?~
IF ~~ THEN REPLY ~Yes Saradas, I need your assistance.~ DO ~SetGlobal("!SaradasJoined","GLOBAL",1) JoinParty()~ EXIT
IF ~~ THEN REPLY ~Not this time, my old friend, take care.~ EXIT
END








//////////////////////
/// File per appending SoA

BEGIN ~!SarP~

BEGIN ~!SarJ~

BEGIN ~!SarD~

BEGIN ~!Sar25D~