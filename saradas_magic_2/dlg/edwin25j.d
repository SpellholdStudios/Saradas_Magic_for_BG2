

INTERJECT_COPY_TRANS2 AMELM01 16 Edwin_Elmin  // Elminster Goes
== EDWIN25J IF ~InParty("!sartob") InMyArea("!sartob")
 InParty("Edwin") InMyArea("Edwin") 
 Global("!SEdwinBanter","GLOBAL",1)~ THEN
~Yes, disappear again, caryatid! One day Edwin will teach you a lesson. We will see who is the best spellcaster.~
== ~!Sar25J~ ~You can't be serious, Edwin. Elminster is the most powerful wizard in the Realms...Don't waste your life like that.~
== EDWIN25J ~Shut up, old man! I didn't ask for your opinion.~
== ~!Sar25J~ ~I have to admit that it would be quite funny to see you lose your dignity against Elminster...~
= ~Who knows, maybe you will give me that satisfaction, one day.~ DO ~SetGlobal("!SWeMetElminster","GLOBAL",1)~
END