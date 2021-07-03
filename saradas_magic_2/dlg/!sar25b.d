
BEGIN ~!Sar25B~


///////////////////////////////////
//         NPC Banters           //
///////////////////////////////////

/* ------- *
 *  Minsc  *
 * ------- */

CHAIN
IF ~InParty("!Sartob")
InParty("Minsc")
!ActuallyInCombat()
IsValidForPartyDialog("Minsc")
IsValidForPartyDialog("!sartob")
AreaType(FOREST)
Global("!SMinscBanter","GLOBAL",0)~
THEN ~!Sar25B~ BMinsc1
@0
DO ~SetGlobal("!SMinscBanter","GLOBAL",1)~
== BMINSC25 @1
== ~!Sar25B~ @2
== BMINSC25 @3
=  @4
== ~!Sar25B~ @5
== BMINSC25 @6
== ~!Sar25B~ @7
EXIT


/* --------- *
 *  Jaheira  *
 * --------- */

CHAIN
IF ~InParty("!Sartob")
InParty("jaheira")
!ActuallyInCombat()
IsValidForPartyDialog("jaheira")
IsValidForPartyDialog("!sartob")
Global("!SJaheiraBanter","GLOBAL",0)~
THEN ~!Sar25B~ BJaheira1
@8
DO ~SetGlobal("!SJaheiraBanter","GLOBAL",1)~
== BJAHEI25 @9
== ~!Sar25B~ @10
== BJAHEI25 @11
== ~!Sar25B~ @12
== BJAHEI25 @13
== ~!Sar25B~ @14
== BJAHEI25 @15
EXIT

CHAIN
IF ~InParty("!Sartob")
InParty("jaheira")
IsValidForPartyDialog("jaheira")
IsValidForPartyDialog("!sartob")
GlobalGT("!SImoenBanter","GLOBAL",0)
Global("!SJaheiraBanter","GLOBAL",1)~
THEN BJAHEI25 BJaheira2
@16
DO ~SetGlobal("!SJaheiraBanter","GLOBAL",2)~
== ~!Sar25B~ @17
== BJAHEI25 @18
== ~!Sar25B~ @19
== BJAHEI25 @20
== ~!Sar25B~ @21
== BJAHEI25 @22
== ~!Sar25B~ @23
== BJAHEI25 @24
== ~!Sar25B~ @25
== BJAHEI25 @26
EXIT


/* --------- *
 *  Keldorn  *
 * --------- */

CHAIN
IF ~InParty("!sartob")
InParty("Keldorn")
AreaType(DUNGEON)
!ActuallyInCombat()
IsValidForPartyDialog("Keldorn")
IsValidForPartyDialog("!sartob")
Global("!SKeldornDungeonBanter","GLOBAL",0)
GlobalLT("!SKeldornBanter","GLOBAL",2)~
THEN ~!Sar25B~ BDungeonKeldorn1
@27
DO ~SetGlobal("!SKeldornDungeonBanter","GLOBAL",1)~
== BKELDO25 @28
== ~!Sar25B~ @29
== BKELDO25 @30
== ~!Sar25B~ @31
EXIT

CHAIN
IF ~InParty("!sartob")
InParty("Keldorn")
AreaType(DUNGEON)
!ActuallyInCombat()
IsValidForPartyDialog("Keldorn")
IsValidForPartyDialog("!sartob")
Global("!SKeldornDungeonBanter","GLOBAL",0)
GlobalGT("!SKeldornBanter","GLOBAL",1)~
THEN ~!Sar25B~ BDungeonKeldorn2Friends
@32
DO ~SetGlobal("!SKeldornDungeonBanter","GLOBAL",1)~
== BKELDO25 @28
== ~!Sar25B~ @29
== BKELDO25 @30
== ~!Sar25B~ @33
== BKELDO25 @34
== ~!Sar25B~ @35
EXIT


CHAIN
IF ~InParty("!sartob")
InParty("Keldorn")
!ActuallyInCombat()
IsValidForPartyDialog("Keldorn")
IsValidForPartyDialog("!sartob")
Global("!SKeldornBanter","GLOBAL",0)~
THEN ~!Sar25B~ BKeldorn1
@36
DO ~SetGlobal("!SKeldornBanter","GLOBAL",1)~
== BKELDO25 @37
= @38
== ~!Sar25B~ @39
== BKELDO25 @40
== ~!Sar25B~ @41
EXIT


CHAIN
IF ~InParty("!sartob")
InParty("Keldorn")
!ActuallyInCombat()
IsValidForPartyDialog("Keldorn")
IsValidForPartyDialog("!sartob")
Global("!SKeldornBanter","GLOBAL",1)~
THEN BKELDO25 BKeldorn2
@42
DO ~SetGlobal("!SKeldornBanter","GLOBAL",2)~
== ~!Sar25B~ @43
== BKELDO25 @44
== ~!Sar25B~ @45
== BKELDO25 @46
== ~!Sar25B~ @47
=  @48
== BKELDO25 @49
EXIT


/* --------- *
 *  Valygar  *
 * --------- */

CHAIN
IF ~InParty("!sartob")
InParty("Valygar")
!ActuallyInCombat()
IsValidForPartyDialog("Valygar")
IsValidForPartyDialog("!sartob")
Global("!SValygarBanter","GLOBAL",0)~
THEN ~!Sar25B~ BValygar1
@50
DO ~SetGlobal("!SValygarBanter","GLOBAL",1)~
== BVALYG25 @51
== ~!Sar25B~ @52
== BVALYG25 @53
=  @54
== ~!Sar25B~ @55
EXIT


/* --------- *
 *  Sarevok  *
 * --------- */

CHAIN
IF ~InParty("!sartob")
InParty("Sarevok")
!ActuallyInCombat()
IsValidForPartyDialog("Sarevok")
IsValidForPartyDialog("!sartob")
Global("!SarevokBanter","GLOBAL",0)~
THEN ~!Sar25B~ BSarevok1
@56
DO ~SetGlobal("!SarevokBanter","GLOBAL",1)~
== BSAREV25 @57
== ~!Sar25B~ @58
== BSAREV25 @59
== ~!Sar25B~ @60
=  @61
EXIT


/* --------- *
 *  Viconia  *
 * --------- */

CHAIN
IF ~InParty("!sartob")
InParty("Viconia")
!ActuallyInCombat()
IsValidForPartyDialog("Viconia")
IsValidForPartyDialog("!sartob")
AreaType(CITY)
Global("!SViconiaBanter","GLOBAL",0)~
THEN BVICON25 BViconia1
@62
DO ~SetGlobal("!SViconiaBanter","GLOBAL",1)~
== ~!Sar25B~ @63
== BVICON25 @64
== ~!Sar25B~ @65
== BVICON25 @66
== ~!Sar25B~ @67
== BVICON25 @68
== ~!Sar25B~ @69
== BVICON25 @70
== ~!Sar25B~ @71
== BVICON25 @72
EXIT


/* ------- *
 *  Edwin  *
 * ------- */

CHAIN
IF ~InParty("!sartob")
InParty("Edwin")
!ActuallyInCombat()
IsValidForPartyDialog("Edwin")
IsValidForPartyDialog("!sartob")
Global("!SEdwinBanter","GLOBAL",0)~
THEN BEDWIN25 BEdwin1
@73
DO ~SetGlobal("!SEdwinBanter","GLOBAL",1)~
== ~!Sar25B~ @74
== BEDWIN25 @75
== ~!Sar25B~ @76
== BEDWIN25 @77
== ~!Sar25B~ @78
=  @79
== BEDWIN25 @80
== ~!Sar25B~ @81
EXIT
