EXTEND_TOP FATESP 6 #18
IF ~!Dead("!Sartob")
!InMyArea("!Sartob")
Global("!saradie","GLOBAL",0)
Global("!SaradasSummoned","GLOBAL",0)~
THEN REPLY ~Bring Saradas the Mage to this plane, spirit.~ DO ~SmallWait(4) CreateVisualEffect("SPPORTAL",[1992.1096])
SmallWait(24)
CreateCreature("!Sartob",[1992.1096],1)
SetGlobal("!SaradasSummoned","GLOBAL",1)~
GOTO 8
END


EXTEND_TOP FATESP 6 #18
IF ~!Dead("!Sartob")
!InMyArea("!Sartob")
Global("!saradie","GLOBAL",1)
Global("!SaradasSummoned","GLOBAL",0)~
THEN REPLY ~Bring Saradas the Mage to this plane, spirit.~ GOTO 10
END
