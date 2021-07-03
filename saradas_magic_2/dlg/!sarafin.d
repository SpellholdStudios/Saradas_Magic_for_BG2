//!Sarafin.d

BEGIN ~!SARAFIN~

IF ~True()~ THEN BEGIN SarafinDLG1
  SAY @500 /* ~Ci siamo, battaglia finale~ */
  IF ~~ THEN REPLY @501 /* che ci fai qui? */ GOTO SarafinDLG2
END

IF ~~ THEN BEGIN SarafinDLG2
  SAY @502 /* ~Irenicus e' piu' avanti. Ti senti pronto?~ */
  IF ~~ THEN REPLY @503    /* Sono prontissimo */ GOTO SarafinDLG3
  IF ~~ THEN REPLY @504    /* Paura */            GOTO SarafinDLG4
END


IF ~~ THEN BEGIN SarafinDLG4
  SAY @509 /* non c'e' spazio per la paura. */
  IF ~~ THEN DO ~SetGlobal("!SarafinTalked","GLOBAL",1)~  EXIT
END

IF ~~ THEN BEGIN SarafinDLG3
  SAY @505 /* Bene, prendi questi e buona fortuna */
  IF ~~ THEN REPLY @506    /* Grazie di tutto Saradas, sei stato come un padre */ GOTO SarafinDLG5
  IF ~~ THEN REPLY @507    /* Ora fila via vecchietto */  GOTO SarafinDLG6
END


IF ~~ THEN BEGIN SarafinDLG5
  SAY @508 /* niente sentimentalismi */
  IF ~~ THEN DO ~SetGlobal("!SarafinTalked","GLOBAL",1)~ EXIT
END

 IF ~~ THEN BEGIN SarafinDLG6
  SAY @510 /* buona fortuna scemo */
  IF ~~ THEN DO ~SetGlobal("!SarafinTalked","GLOBAL",1)~ EXIT
END


