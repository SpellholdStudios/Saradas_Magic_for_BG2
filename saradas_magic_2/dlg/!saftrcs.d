BEGIN ~!Saftrcs~

IF ~Global("!SAfterCutScene","GLOBAL",1)~ THEN BEGIN DlgAfterCutScene
  SAY @1 /* And it's done, I have just created a masterpiece. Use it wisely, <CHARNAME>. */
	IF ~~ THEN DO ~SetGlobal("!SAfterCutScene","GLOBAL",0)~ EXIT
END
