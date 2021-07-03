BEGIN ~!SARAGO~

IF ~!Global("!Sarago","LOCALS",1) !global("!SaraSteal","GLOBAL",3)~ THEN BEGIN 0
  SAY @200 /* ~I'm tired of wasting my time with you. My only hope is that you have learned the lesson and that you will not commit more evil deeds. Farewell.~ */
  IF ~~ THEN EXIT
END

IF ~Global("!SaraSteal","GLOBAL",3)~ THEN BEGIN 1
  SAY @201 /* ~There you go! I hope you feel comfortable in your new shape, it suits you very well, after all. Fear not, young ones, it's not permanent, it will last just enough to make you refrain from stealing again... And from eating chicken feed. Goodbye!~ */
  IF ~~ THEN DO ~ForceSpell(Myself,POOF_GONE)~ EXIT
END
