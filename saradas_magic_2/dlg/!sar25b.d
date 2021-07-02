
BEGIN ~!Sar25B~


///////////////////////////////////
//         NPC Banters           //
///////////////////////////////////



////////////
// MINSC  //
////////////

CHAIN
IF ~InParty("!Sartob")
InParty("Minsc")
!ActuallyInCombat()
IsValidForPartyDialog("Minsc")
IsValidForPartyDialog("!sartob")
AreaType(FOREST)
Global("!SMinscBanter","GLOBAL",0)~
THEN ~!Sar25B~ BMinsc1
~Minsc, your war cries are very useful in battle, but you should consider lowering your voice when we are in the wilderness...You are like a lighthouse in the cosmic darkness. We might be ambushed.~
DO ~SetGlobal("!SMinscBanter","GLOBAL",1)~
== BMINSC25 ~Ah! Let evil come, then! Minsc and Boo will deliver some cosmic justice in the old fashioned butt-kicking way!~
== ~!Sar25B~ ~*sigh* You know, my strong friend, there are many other ways of delivering justice...More subtle and...SILENT.~
== BMINSC25 ~Minsc still thinks the louder you fight the better, old mage. Boo agrees with me and you should do the same.~
=  ~EVIL SHALL MEET MY SWORD TODAY! RAAAA-~
== ~!Sar25B~ ~*casts Power Word Silence on Minsc*~
== BMINSC25 ~...!~
== ~!Sar25B~ ~Much better. Shall we move on now, <CHARNAME>?~
EXIT



//////////////
// Jaheira  //
//////////////


CHAIN
IF ~InParty("!Sartob")
InParty("jaheira")
!ActuallyInCombat()
IsValidForPartyDialog("jaheira")
IsValidForPartyDialog("!sartob")
Global("!SJaheiraBanter","GLOBAL",0)~
THEN ~!Sar25B~ BJaheira1
~You know, Jaheira, I think I've never met a woman like you in my entire life.~
DO ~SetGlobal("!SJaheiraBanter","GLOBAL",1)~
== BJAHEI25 ~Is that supposed to be a compliment?~
== ~!Sar25B~ ~Oh it certainly is, my good lady. You endured a lot of pain in your life, but you have always found the strength to carry on. It's admirable.~
== BJAHEI25 ~Thank you, Saradas. Being a servant of Nature has taught me that everything happens for a reason. I am what I am because of the vicissitudes of my life.~
== ~!Sar25B~ ~You are very wise indeed to ponder on you past and profit from it, but don't forget to live your present and value every moment of it.~
== BJAHEI25 ~I...I guess you are right. I suppose I will try to follow your advice, Saradas.~
== ~!Sar25B~ ~Alright alright, my dear, let us not linger on such thoughts too long, shall we?~
== BJAHEI25 ~*smiles*~
EXIT



CHAIN
IF ~InParty("!Sartob")
InParty("jaheira")
IsValidForPartyDialog("jaheira")
IsValidForPartyDialog("!sartob")
GlobalGT("!SImoenBanter","GLOBAL",0)
Global("!SJaheiraBanter","GLOBAL",1)~
THEN BJAHEI25 BJaheira2
~I'm sorry, Saradas, but I really have to ask this.~
DO ~SetGlobal("!SJaheiraBanter","GLOBAL",2)~
== ~!Sar25B~ ~Sure, my dear Jaheira.~
== BJAHEI25 ~I accidentally overheard your conversation with Imoen and I was wondering-~
== ~!Sar25B~ ~Oh you refer to my long gone days with the Harpers.~
== BJAHEI25 ~Exactly. Why didn't I know anything about it? Where's your Harper's Pin?~
== ~!Sar25B~ ~I jealously keep it always with me.~
== BJAHEI25 ~What happened? Why did you quit the Harpers?~
== ~!Sar25B~ ~I never said I quit, my days as a agent are simply over. Now I cooperate with them occasionally when they need my knowledge.~
== BJAHEI25 ~I see. Don't mind my questioning too much, will you? It just feels good to have a elder Harper in the group.~
== ~!Sar25B~ ~Thank you for the kind words, you can seek advice from me anytime you need.~
== BJAHEI25 ~I think I've bothered you enough for today, Saradas, let's move on.~
EXIT







/////////////
// Keldorn //
/////////////

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
~It is in such dreadful places that one truly trasures the company of a valiant knight such as yourself, Lord Keldorn.~
DO ~SetGlobal("!SKeldornDungeonBanter","GLOBAL",1)~
== BKELDO25 ~And I thank thee for your kind words, Saradas. Fear not, soon enough we will see the light again.~
== ~!Sar25B~ ~I do hope so, I'm too old for crawling inside dark dens inhabited by the vilest creatures.~
== BKELDO25 ~Aye, but the light of the gods is with us even in the foulest of dungeons, my old friend.~
== ~!Sar25B~ ~Absolutely. Let's gather our energies and get out of here.~
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
~It is in such dreadful places that one truly trasures the company of a valiant knight such as yourself, Keldorn.~
DO ~SetGlobal("!SKeldornDungeonBanter","GLOBAL",1)~
== BKELDO25 ~And I thank thee for your kind words, Saradas. Fear not, soon enough we will see the light again.~
== ~!Sar25B~ ~I do hope so, I'm too old for crawling inside dark dens inhabited by the vilest creatures.~
== BKELDO25 ~Aye, but the light of the gods is with us even in the foulest of dungeons, my old friend.~
== ~!Sar25B~ ~Absolutely. Let's gather our energies and get out of here. I wish to see my hometown once again, before I die.~
== BKELDO25 ~And you certainly will, Saradas, don't worry about that. I will not let you die in this place.~
== ~!Sar25B~ ~It's good to have a good friend like you, Keldorn.~
EXIT


CHAIN
IF ~InParty("!sartob")
InParty("Keldorn")
!ActuallyInCombat()
IsValidForPartyDialog("Keldorn")
IsValidForPartyDialog("!sartob")
Global("!SKeldornBanter","GLOBAL",0)~
THEN ~!Sar25B~ BKeldorn1
~Although I admire your dedication to <CHARNAME>'s cause, don't you miss your family, Lord Keldorn?~
DO ~SetGlobal("!SKeldornBanter","GLOBAL",1)~
== BKELDO25 ~I do, my friend, but when duty calls, a true paladin has to hold his sword and fight evil, no matter the circumstances.~
= ~Even though I miss my family, they know I am a faithful servant of Torm. What about you, Saradas, do you have someone waiting for you at home?~
== ~!Sar25B~ ~I spent my entire life traveling and studying every form of magic. I recovered many ancient artifacts during my adventures and I didn't have the time to settle down and make a family.~
== BKELDO25 ~Oh that's a pity, you could have been a good father to your children.~
== ~!Sar25B~ ~Perhaps, my friend...Perhaps.~
EXIT


CHAIN
IF ~InParty("!sartob")
InParty("Keldorn")
!ActuallyInCombat()
IsValidForPartyDialog("Keldorn")
IsValidForPartyDialog("!sartob")
Global("!SKeldornBanter","GLOBAL",1)~
THEN BKELDO25 BKeldorn2
~What will you do when our journey is over, Saradas?~
DO ~SetGlobal("!SKeldornBanter","GLOBAL",2)~
== ~!Sar25B~ ~I think I will finally come back to my house, in Sembia. My hometown is Yhaunn, a quiet coastal city. There I will finally rest after my long travels.~
== BKELDO25 ~Sounds like a good place to rest after retiring from adventure.~
== ~!Sar25B~ ~It really is, and you will always be welcome there, if you plan to visit me in Sembia, Lord Keldorn.~
== BKELDO25 ~I surely will. Oh and by the way there's no need of such titles between friends, Saradas. Just call me Keldorn.~
== ~!Sar25B~ ~Fair enough, Keldorn. You will find the best Cormyrian wines waiting for you, there.~
=  ~But now we must focus on our journey, it's not over yet and our minds should not indulge too much on such pleasant thoughts.~
== BKELDO25 ~You are wise as always. Let's continue our path.~
EXIT





/////////////////
//   Valygar   //
/////////////////


CHAIN
IF ~InParty("!sartob")
InParty("Valygar")
!ActuallyInCombat()
IsValidForPartyDialog("Valygar")
IsValidForPartyDialog("!sartob")
Global("!SValygarBanter","GLOBAL",0)~
THEN ~!Sar25B~ BValygar1
~You shouldn't be so suspicious about magic, Valygar. We owe gratitude to magic for the most magnificent things in Faerun.~
DO ~SetGlobal("!SValygarBanter","GLOBAL",1)~
== BVALYG25 ~Yes, and the most nefarious ones as well. Thank you for your concern, Saradas, but I'm still in two minds about magic, even after all I've witnessed during my journey with <CHARNAME>.~
== ~!Sar25B~ ~You know, magic per se, is nothing but a tool we can use to shape the surrounding world, exaclty as we use our own body to perform actions...It's our responsibility to make sure that they always tend toward good.~
== BVALYG25 ~There is truth in what you are saying, my good Saradas...Perhaps I just met more wicked mages than good ones on my way.~
=  ~I will ponder about this, I suppose.~
== ~!Sar25B~ ~It's a good start, in time you will understand what I mean.~
EXIT



/////////////////
//   Sarevok   //
/////////////////

CHAIN
IF ~InParty("!sartob")
InParty("Sarevok")
!ActuallyInCombat()
IsValidForPartyDialog("Sarevok")
IsValidForPartyDialog("!sartob")
Global("!SarevokBanter","GLOBAL",0)~
THEN ~!Sar25B~ BSarevok1
~Sometimes I wonder if <CHARNAME> has recruited you in <PRO_HISHER> group just to make sure you will not start plotting something that will lead to bloodshed...again.~
DO ~SetGlobal("!SarevokBanter","GLOBAL",1)~
== BSAREV25 ~<CHARNAME> needs a true warrior and I need a new purpose, this is the only thing you need to know, old man.~
== ~!Sar25B~ ~Perhaps you will even be able to redeem after all the destruction you brought in the Sword Coast during your insane crusade to ascend the throne of Bhaal.~
== BSAREV25 ~No apology is due, I just followed my instinct as a son of Bhaal, that's something you cannot ascape from. By the way this is none of your business, leave me alone before I forget the promise I made to <CHARNAME>...and the good manners.~
== ~!Sar25B~ ~As you wish...~
=  ~Some people never change, I suppose.~
EXIT





/////////////
// Viconia //
/////////////


CHAIN
IF ~InParty("!sartob")
InParty("Viconia")
!ActuallyInCombat()
IsValidForPartyDialog("Viconia")
IsValidForPartyDialog("!sartob")
AreaType(CITY)
Global("!SViconiaBanter","GLOBAL",0)~
THEN BVICON25 BViconia1
~Human society is so bizarre.~
DO ~SetGlobal("!SViconiaBanter","GLOBAL",1)~
== ~!Sar25B~ ~What do you mean by that, Viconia?~
== BVICON25 ~I have been in many cities of your people, rivvil, and I've seen far too many old people in there.~
== ~!Sar25B~ ~Why, in the drow society old people are not considered useful anymore?~
== BVICON25 ~Oh no, on the contrary, the very few lucky drows that reach advanced age prove themselves very useful.~
== ~!Sar25B~ ~I'm not sure I want to know how this ends.~
== BVICON25 ~They are eventually betrayed and deposed by their sons, and thrown in the spider pit to become an excellent source of nourishment.~
== ~!Sar25B~ ~A delightful tale indeed, Viconia. This says a lot about who you are too.~
== BVICON25 ~You rivvin cannot understand the ways of the drows.~
== ~!Sar25B~ ~Not when they all ends up in a spider pit, a torture room and the such.~
== BVICON25 ~Bha, spineless.~
EXIT



//////////////
//  Edwin   //
//////////////



CHAIN
IF ~InParty("!sartob")
InParty("Edwin")
!ActuallyInCombat()
IsValidForPartyDialog("Edwin")
IsValidForPartyDialog("!sartob")
Global("!SEdwinBanter","GLOBAL",0)~
THEN BEDWIN25 BEdwin1
~That white beard of yours doesn't make you better than me as a spellcaster, old man, I hope you realize that.~
DO ~SetGlobal("!SEdwinBanter","GLOBAL",1)~
== ~!Sar25B~ ~I have no interest in spellcasting challenges, Edwin. You can have the first prize, if that makes you feel better.~
== BEDWIN25 ~So you acknowledge your defeat...You are smarter than I thought.~
== ~!Sar25B~ ~Defeat? Saving my time is hardly a defeat, Edwin.~
== BEDWIN25 ~What is it? There's still some boldness left in you, despite your old age?~
== ~!Sar25B~ ~Boldness is not the right word, I'd rather say wisdom, something that you will never have.~
=  ~One day you'll anger the wrong wizard and it will not end well for you, Edwin. Mark my words.~
== BEDWIN25 ~Puah, the man who can challenge the great Red Wizard Edwin Odesseiron has yet to be born.~
== ~!Sar25B~ ~Yes, whatever you say, your majesty...~
EXIT



