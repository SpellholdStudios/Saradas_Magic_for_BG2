BEGIN ~!Saftrcs~


IF ~global("!SAfterCutScene","GLOBAL",1)~ THEN BEGIN DlgAfterCutScene
  SAY @182 /* Ecco a te l'oggetto incantato */
IF ~~ THEN DO ~setglobal("!SAfterCutScene","GLOBAL",0)~ EXIT
END