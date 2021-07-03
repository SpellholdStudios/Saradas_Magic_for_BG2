

INTERJECT_COPY_TRANS2 AMELM01 16 Edwin_Elmin  // Elminster Goes
== EDWIN25J IF ~InParty("!sartob") InMyArea("!sartob")
 InParty("Edwin") InMyArea("Edwin") 
 Global("!SEdwinBanter","GLOBAL",1)~ THEN
@0
== ~!Sar25J~ @1
== EDWIN25J @2
== ~!Sar25J~ @3
= @4 DO ~SetGlobal("!SWeMetElminster","GLOBAL",1)~
END
