BEGIN ~!SARANGR~

IF ~!Global("!SaraSteal","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @300 /* ~Such a wretched idea... I'm afraid I will have to teach you the good manners.~ */
  IF ~~ THEN EXIT
END


IF ~Global("!SaraSteal","GLOBAL",1)~ THEN BEGIN 1 // from:
  SAY @301 /* ~Well well, I see you enjoy to steal other people's property... I know the right way to punish folks such as yourselves.~ */
  IF ~~ THEN DO ~SetGlobal("!SaraSteal","GLOBAL",2)~ EXIT
END
