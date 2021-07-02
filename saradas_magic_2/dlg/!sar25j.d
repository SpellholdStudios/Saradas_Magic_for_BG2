BEGIN ~!Sar25J~


/////////////////////////
//     Volo's Poem     //
/////////////////////////


EXTEND_TOP SARVOLO 9 #16
   +  ~InParty("!Sartob")~  +  ~Tell me about Saradas.~  +  Volo_1
END

APPEND ~SARVOLO~
  IF ~~ Volo_1
    SAY  ~Saradas, a devoted servant of the Morninglord and erudite magician of unmatched wisdom and power. The guidance he offered to <CHARNAME> during <PRO_HISHER> epic quest was of crucial importance for <PRO_HISHER> success.~
    IF ~~ EXTERN ~!Sar25J~ Volo_2
END
END

APPEND ~!Sar25J~
  IF ~~ Volo_2
    SAY ~Well, we are still far from being succesful in our quest but this old romantic man still enjoys epic stories...And if we are the protagonists, who am I to complain?~
    IF ~~ EXTERN SARVOLO 9
  END
END



//////////////////////////////
////      Elminster    ///////
//////////////////////////////

APPEND_EARLY ~AMELM01~
  IF ~InParty("!Sartob")~ Elmin01
    SAY ~Greetings, old friend. Ha! Fancy meeting you here. And I see a familiar face among your companions. Glad to see you again, wise Saradas.~  [25ELM06]
    IF ~~ EXTERN ~!Sar25J~ Elmin02
  END
END

APPEND ~!Sar25J~
  IF ~~ Elmin02
    SAY ~My pleasure, Elminster. I see time has been kind to you, I can't say the same about myself.~
    IF ~~ EXTERN AMELM01 Elmin03
  END
END

APPEND ~AMELM01~
IF ~~ Elmin03
    SAY ~Now, back to the purpose of my visit. <CHARNAME>...~
    IF ~~ THEN REPLY #71711 /* ~Elminster?~ */ DO ~EraseJournalEntry(73859)~ GOTO 1
  END
END




ADD_STATE_TRIGGER AMELM01 0
~!InParty("!sartob")~




///////////////////////////
//    Interjections      //
///////////////////////////



INTERJECT_COPY_TRANS GORDEMO 1 Demogorgon  //Ingresso Demogorgon
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
~Advance carefully now, nothing is as it seems to be, in this place. I sense a great peril ahead.~
END


INTERJECT_COPY_TRANS SARMEL01 45 Poteri_protagonista
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob") CheckStatGT(protagonist,16,INT)~ THEN
~You may not be as strong as Yaga Shura, <CHARNAME>, but a sharp mind is a far superior weapon.~
END

INTERJECT_COPY_TRANS2 GROMNIR 4 Gromnir_Melissan
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
~Despite Gromnir's madness, I sense a sparkle of good sense in his words.~
END


INTERJECT_COPY_TRANS HGNYA01 6 Nyalee //Incontro con Nyalee
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
~I'm sure that she knows more than she makes believe. Try to extort her as many information as you can, for demented people can prove very useful sometimes.~
END


INTERJECT_COPY_TRANS YAGA01 4 Yagahurt //Yaga Shura ferito
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
~I've seen many ancient and dreadful creatures fall only because of their self-reverence complex, I think this giant makes no exception.~
END



INTERJECT_COPY_TRANS ABAZIGAL 3 Abazigal_Morto_1
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
~It's a pity we had to slain such a magnificent creature, but then again, he wrote his destiny with his own deranged conduct.~
END




INTERJECT_COPY_TRANS SENDAI 15 Sendai_Morta_1
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
~Yet another powerful Bhaalspawn falls before your power, <CHARNAME>. She was evil and ambitious, a dangerous combination.~
END



INTERJECT_COPY_TRANS2 BALTH 29 Balth_libero_arbitrio
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
~This sounds like the proverbial excuse of the weak. Don't listen to him, <CHARNAME>. The highest gift the gods have granted us is free will, there's always an alternative choice.~
END



INTERJECT_COPY_TRANS SOLAR 23 Passato_Protagonista
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
~I think you should listen to the Solar, <CHARNAME>. Pondering about your origins will make you wiser.~
END


INTERJECT_COPY_TRANS SOLAR 47 Intenzioni_protagonista   //prima era 56
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
~This is what concerns me the most, <CHARNAME>...I'd like to know your intentions in this regard, before your destiny is fulfilled.~
END



INTERJECT_COPY_TRANS MELISS01 11 Gromnir_was_right
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
~So, it looks like the most underrated of the Bhaalspawns was Gromnir, in the end. He was the only one who had understood Melissan's plot.~
END



INTERJECT_COPY_TRANS FINMEL01 13 Amelyssan_sconfitta
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
~The essence of Bhaal has consumed her weak mind, she stole a power she wasn't able to control, I don't pity her.~
END


INTERJECT_COPY_TRANS FINSOL01 27 Decisione_finale
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
~*Saradas puts his hand on your shoulder*~
= ~This is the final step of your journey, <CHARNAME>.~
= ~I've offered you my advice many times in the past, but this time you have to think wisely about your options, because I don't intend to interfere with your destiny.~
= ~The choice is yours only and I trust you will take the right decision, whatever it is.~
END



INTERJECT_COPY_TRANS FINSOL01 31 Protagonista_good_ascension
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
~You will be an inspiration for all of us, young one.~
= ~Not only you have overcome the Bhaal's taint in your soul, you have bent it to your will.~
= ~I'm more than impressed, <CHARNAME> and I'm sure you will administer this power wisely.~
END




INTERJECT_COPY_TRANS FINSOL01 32 Protagonista_Mortale
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
~Humbleness is the highest of virtues, <CHARNAME>.~
= ~I'm astounded by your valor. I swear to the Morninglord that I would kneel before you if only my bones weren't hurting so much. I'm proud of you, young one.~
= ~In a way, you have proved yourself wiser than a God.~
END







//  Saradas lascia il party



CHAIN
IF ~ReputationLT(Player1,5)
!ActuallyInCombat()
Global("!SaradasLowRepLeaves","GLOBAL",0)~
THEN ~!Sar25J~ Saradas_Lascia
~You proved yourself a true son of Bhaal, <CHARNAME>...In the worst possible way, of course. I will not follow you in your deranged path any longer, our cooperation ends here.~
DO ~SetGlobal("!SaradasLowRepLeaves","GLOBAL",1) SetGlobal("!SaradasJoined","GLOBAL",0)~
= ~May the gods forgive me for joining you in the first place. Farewell.~
DO ~DialogInterrupt(FALSE) LeaveParty() SetGlobal("!SaradasJoined","GLOBAL",0) wait(1) NoAction() smallwait(4) ForceSpell(Myself,POOF_GONE) DialogInterrupt(TRUE)~
EXIT









/////////////////////////////
///    Potere Crescente 1 ///
/////////////////////////////

CHAIN
IF ~RealGlobalTimerExpired("!Saradas3BSDTimer","GLOBAL")
Global("!Saradas3BSDTimerSet","GLOBAL",1)
DEAD("yaga01") 
DEAD("illasera") 
DEAD("gromnir")~
THEN ~!Sar25J~ Stronger
~You have already slained three powerful Bhaalspawns and I can see your power increasing as we speak, <CHARNAME>.~ DO ~SetGlobal("!Saradas3BSDTimerSet","GLOBAL",2)~
= ~What really concerns me is: what will you do with that power? Are you going to accept your father's terrible heritage, when the time comes?~
END

+~Alignment(protagonist,MASK_GOOD)~+ ~I will, but I will not let it taint my soul anymore. I will use that power for good deeds.~ + Good1-2
+~OR(4) Alignment(protagonist,MASK_GOOD) Alignment(protagonist,NEUTRAL) Alignment(protagonist,CHAOTIC_NEUTRAL) Alignment(protagonist,LAWFUL_NEUTRAL)~+ ~I just want to get over with this as soon as possible, and finally start a normal life.~ + Good1
++ ~I don't know, I'm still thinking about that...~ + Neutral1
++ ~Nobody can stop me from achieving my godhood! I've been through a lot of trouble and I will have what I deserve.~ + Evil1


CHAIN
IF ~~ THEN ~!Sar25J~ Good1
~I'm glad to hear this, <PRO_GIRLBOY>. Trust me when I say nobody would benefit from restoring such evil powers from the oblivion.~
= ~Unless you have the chance to bend that power to your will and administer it for a better purpose.~
END

++ ~A better purpose? We don't even know if such thing is possible, Saradas. It's already difficult to keep the Slayer inside me at bay.~ + Good1-1
++ ~Don't worry too much, my old friend, I don't intend to embrace the tainted heritage of my "Father".~ + Good1-2


CHAIN
IF ~~ THEN ~!Sar25J~ Good1-1
~It all depends on your will, I suppose. If your spirit is strong you'll probably be able to manipulate the essence of your father for your goals, <CHARNAME>.~
= ~Enough, for now. I don't want to overload your mind with grievous thoughts.~
END

+~Gender(Player1,FEMALE)~+ ~I appreciate your concern, Saradas, but don't worry, I don't intend to become the new Lady of Murder.~ + Good1-2
+~Gender(Player1,MALE)~+   ~I appreciate your concern, Saradas, but don't worry, I don't intend to become the new Lord of Murder.~ + Good1-2

CHAIN
IF ~~ THEN ~!Sar25J~ Good1-2
~That's reassuring. You gave some hope to this old man's heart.~
= ~Fine, we should really resume our journey now.~
EXIT


CHAIN
IF ~~ THEN ~!Sar25J~ Neutral1
~Do you even realize the impact that your final decision may have on the Realms?~
= ~Don't treat this situation superficially, <CHARNAME>. You have to start considering the possibilities.~
END

++ ~Oh please don't start again with this. I already have many thoughts and I will deal with this matter only when the time comes.~ + Neutral1-1
++ ~I could simply forget about all this and live my life in peace. Who cares about a dead god?~ + Neutral1-2


CHAIN
IF ~~ THEN ~!Sar25J~ Neutral1-1
~As you want, just don't forget what is at stake. Your final decision will not only affect you, remember this.~
= ~Let's move on.~
EXIT


CHAIN
IF ~~ THEN ~!Sar25J~ Neutral1-2
~No, you cannot. The other Bhaalspawns would certainly come after you and eventually get the better of you.~
= ~I can't even imagine the destruction they would bring with their fury. The Alaundo's prophecy would be fulfilled and a dark time would begin in Faerun. You can't let this happen.~
END

++ ~Uhm... Well, if you put it that way you really make it sound very scary...Alright, I'll figure out something, don't worry.~ + Good1-2
++ ~But my power is growing, I can dispatch them if they come after me!~ + Neutral1-3


CHAIN
IF ~~ THEN ~!Sar25J~ Neutral1-3
~Perhaps one at a time, but not if they cooperate. That would be your end, <CHARNAME>.~
= ~You must act, and you must do it now.~
END

++ ~Alright alright...I have received your message. You can be a very tedious old man sometimes, you know, Saradas? Let's move on.~
EXIT



CHAIN
IF ~~ THEN ~!Sar25J~ Evil1
~This is exactly what I feared. I hope you will change your mind, before the end, <CHARNAME>.~
= ~I will not be by your side if you are resolute in reclaiming your father's throne.~
END

++ ~Do what you must, old man. That power is mine by birthright and I shall not turn my back to it! Not when I'm so close to obtaining it!~ + Evil1-2
++ ~Like it or not, I will sit on that throne, Saradas. I will be a God as it was written.~ + Evil1-3

CHAIN
IF ~~ THEN ~!Sar25J~ Evil1-2
~Alright then, but mark my words: your longing for power will be your ruin.~
= ~Farewell, Bhaalspawn.~
END

++ ~Spit your curses if you must, but you can't stop me!~ DO ~DialogInterrupt(FALSE) LeaveParty() SetGlobal("!SaradasJoined","GLOBAL",0) SetGlobal("!SaradasLeavesEvilPlayer","GLOBAL",1) wait(1) NoAction() smallwait(4) ForceSpell(Myself,POOF_GONE) DialogInterrupt(TRUE)~ EXIT

CHAIN
IF ~~ THEN ~!Sar25J~ Evil1-3
~For the holy light of Lathander... You really enjoy playing with powers you don't understand. Why don't you stop for a moment and think what would happen if you accepted that power?~
= ~*snort* Very well, I will follow you for a while longer, but not until the end, if these are your intentions.~
EXIT





/////////////////////////////
///    Potere Crescente 2 ///
/////////////////////////////

CHAIN
IF ~RealGlobalTimerExpired("!Saradas5BSDTimer","GLOBAL")
Global("!Saradas5BSDTimerSet","GLOBAL",1)
DEAD("yaga01") 
DEAD("illasera") 
DEAD("gromnir")
DEAD("abazigal")
DEAD("sendai")
!DEAD("balth")~
THEN ~!Sar25J~ Stronger2
~Two more dreadful Bhaalspawns have fallen before your might. A drow priest with a great spellcasting ability and a blue dragon, nonetheless.~ DO ~SetGlobal("!Saradas5BSDTimerSet","GLOBAL",2)~
= ~How does that make you feel, <CHARNAME>, to have such unrestrained power at your disposal?~
END

+~Alignment(protagonist,MASK_GOOD)~+ ~I merely follow the path of righteousness, my old friend. If this power helps me getting rid of such evil creatures, I welcome it.~ + 2Good1
++ ~I must confess I like being so dangerous! I remember the old days when bandits and bounties used to ambush me...I laugh at them now.~ + 2Neutral1
++ ~It's... sometimes I'm scared of myself, Saradas. Enemies unnumbered have fallen before me and still I cannot completely control my powers.~ + AltNeutral1
++ ~Oh it is magnificent indeed. I can feel my father's taint growing inside me, as does my urge to destroy those who oppose me! I can barely wait to claim the throne of Bhaal.~ + 2Evil1


CHAIN
IF ~~ THEN ~!Sar25J~ 2Good1
~I don't blame you for this, in the contrary, I think there is a healthy amount of irony in this.~
= ~You are using a portion of the Lord of Murder's essence to eradicate evil from the Realms.~
END

++ ~Indeed, and when my work is over, the Realms will be a better place for everyone.~ + 2Good2

CHAIN
IF ~~ THEN ~!Sar25J~ 2Good2
~This may even cause an imbalance in the Pantheon. Trust me when I say that the Gods themselves are looking with interest as you progress in your journey.~
= ~It's been so long since I felt so involved in something, <CHARNAME>.~
END

++ ~And I thank you for your presence here, good Saradas. Let's go meet Balthazar now.~ EXIT


CHAIN
IF ~~ THEN ~!Sar25J~ 2Neutral1
~Yes, you have come a long way since then. The perils of the past pale in front of the heroic deeds you have accomplished.~
= ~But allow me to warn you: don't let your guard down, because it's right when you feel untouchable that you might fail.~
END

++ ~I will not!~ + 2Neutral2
+~Gender(Player1,MALE)~+ ~Come on, what's wrong in feeling boldly once in a while? Ladies love that kind of things.~ + 2Neutral3

CHAIN
IF ~~ THEN ~!Sar25J~ 2Neutral2
~It's good to see that my advices are not thrown to the winds.~
EXIT

CHAIN
IF ~~ THEN ~!Sar25J~ 2Neutral3
~I have nothing to argue about this.~
= ~Now compose yourself, Casanova. Balthazar is waiting for you.~
END

++ ~A man cannot enjoy a moment of glory without being brutally brought back to reality. Oh well...~ EXIT


CHAIN
IF ~~ THEN ~!Sar25J~ AltNeutral1
~The essence of Bhaal in you is something that can not be taken lightly, <CHARNAME>. By resisting the Slayer, you have already proven yourself an exceptionally strong-willed <PRO_RACE>.~
END

++ ~Maybe, but... For how long will I be able to keep it at bay?~ + AltNeutral2
++ ~Yes, I suppose you are right, Saradas...But sometimes I feel my will faltering and I fear that the tainted subconscious inside me could exploit this weakness and prevail on me.~ + AltNeutral2

CHAIN
IF ~~ THEN ~!Sar25J~ AltNeutral2
~For as long as you keep your final goal in mind, it shall not take control over you. Should that happen, your beloved friends would put an end to your existence.~
=~You can tighten your jaw now, <CHARNAME>, it was just a joke. Let's move on, Amkethran is still very far.~
EXIT

CHAIN
IF ~~ THEN ~!Sar25J~ 2Evil1
~And still you persist in your crazy path...You don't understand that the taint of Bhaal will eventually take control over you?~
=~You will become an avatar of destruction without free will. Is that really what you want, <CHARNAME>?~
END

++ ~So be it, then. I have always enjoyed to wreak havoc over the weak! I think that's a fitting destiny for me.~ + 2Evil2
++ ~You are just trying to dissuade me from achieving the power that I deserve. Your tricks don't work on me, old man.~ + 2Evil3


CHAIN
IF ~~ THEN ~!Sar25J~ 2Evil2
~I shall not follow you in a such bloody path. You are mad!~
END

++ ~You cannot understand my intentions, wizard. If this is a goodbye, so be it, I will not shed a tear.~ + 2Evil2-2

CHAIN
IF ~~ THEN ~!Sar25J~ 2Evil2-2
~I was a fool to believe that you could have come back to your senses.~
=~May the gods have compassion over you. Farewell.~ DO ~DialogInterrupt(FALSE)  LeaveParty() SetGlobal("!SaradasJoined","GLOBAL",0) SetGlobal("!SaradasLeavesEvilPlayer","GLOBAL",1) wait(1) NoAction() smallwait(4) ForceSpell(Myself,POOF_GONE) DialogInterrupt(TRUE)~
EXIT

CHAIN
IF ~~ THEN ~!Sar25J~ 2Evil3
~I'm just trying to warn you against the terrible consequences of your actions.~
=~You are still in time to think of other possible ways.~
END

++ ~I like the way I'm on.~ + 2Evil2
++ ~I understand your concern, but I still wish to obtain that power for myself.~ + 2Evil3-2

CHAIN
IF ~~ THEN ~!Sar25J~ 2Evil3-2
~Very well, I have interfered with your destiny enough.~
=~Just keep in mind that I will not follow you until the end, if your intentions don't change.~
EXIT






////////////////////////////////////
///    Potere Crescente 3 Good   ///
////////////////////////////////////

CHAIN
IF ~
DEAD("yaga01")
DEAD("illasera")
DEAD("gromnir")
DEAD("abazigal")
DEAD("sendai")
DEAD("balth")
DEAD("CHALRV01")
Global("!SaradasAllBSDTimerSet","GLOBAL",1)
OR(4)
Alignment(protagonist,MASK_GOOD) 
Alignment(protagonist,NEUTRAL) 
Alignment(protagonist,CHAOTIC_NEUTRAL) 
Alignment(protagonist,LAWFUL_NEUTRAL)~
THEN ~!Sar25J~ Stronger3_Good
~That's it...Your journey is almost over, <CHARNAME>. You have brightly overcome any challenge that your destiny put on your path.~ DO ~SetGlobal("!SaradasAllBSDTimerSet","GLOBAL",2)~
= ~Nobody knows what is going to happen when we cross the portal to the Throne of Bhaal. Are you ready for this?~
END

++ ~I am, my friend. I will fulfill my destiny as the prophecy has foretold and I shall prevent Bhaal from rising again.~ + 3Good1
++ ~I...I can't believe that my journey is almost over...~ + 3Neutral1
++ ~There's no turning back now...It will be me or Amelyssan. I will not fail.~ + AltGood1


CHAIN
IF ~~ THEN ~!Sar25J~ 3Good1
~I'm very glad to see you so resolute, <CHARNAME>. You stand as a model of courage.~
=~I'm ready to face whatever we find beyond the portal.~
END

++ ~Your guidance has been of great help during my journey, Saradas. I promise you I will not let your days end in that place.~ + 3Good1-2
++ ~Are you sure you want to take part in a battle that is not yours?~ + 3Good1-2

CHAIN
IF ~~ THEN ~!Sar25J~ 3Good1-2
~Although I don't feel particularly happy to die in an abyssal plane, I confess I have come too far to simply turn my back on you.~
=~I will take the risk in this last epic battle. It's my last adventure afterall.~
END

++ ~We will be victorious, Saradas, don't worry. The gods will smile at your devotion and for all you have accomplished in this quest.~ + 3Good1-3

CHAIN
IF ~~ THEN ~!Sar25J~ 3Good1-3
~Oh, now you're speaking like I'm already lying in my grave...~
=~Enough with the digressions, it's time you show that corrupted priestess what you're made of.~
EXIT


CHAIN
IF ~~ THEN ~!Sar25J~ 3Neutral1
~Believe it or not, you must focus on your last battle. Gather all the experience and powers you have gained through your journey and prepare your weapons.~
END

++ ~I guess I have no choice but to face Amelyssan and put an end to this...Should I fail I will become dust in the wind and she will rule over a realm that it was never hers in the first place. I cannot allow it.~ + 3Neutral1-2
++ ~I'm ready. I will show to that snake who I really am!~ + 3Neutral1-2

CHAIN
IF ~~ THEN ~!Sar25J~ 3Neutral1-2
~Well said, young one! This is the spirit. Fear not, you are not alone in this. I will prepare my spells and pray my Lord before the last battle begins...We will need it.~
EXIT 


CHAIN
IF ~~ THEN ~!Sar25J~ AltGood1
~Fear not, you are not alone in this. I will prepare my spells and pray my Lord before the last battle begins...We will need it.~
END

++ ~Thank you Saradas. I have to admit that I would have not come so far without the help of my group. I must thank each one of my friends. Let's get over with this once and for all!~ EXIT



////////////////////////////////////
///    Potere Crescente 3 Evil   ///
////////////////////////////////////


CHAIN
IF ~
DEAD("yaga01")
DEAD("illasera")
DEAD("gromnir")
DEAD("abazigal")
DEAD("sendai")
DEAD("balth")
DEAD("CHALRV01")
Global("!SaradasAllBSDTimerSet","GLOBAL",1)
Alignment(protagonist,MASK_EVIL)~
THEN ~!Sar25J~ Stronger3_Evil
~That's it...Your journey is almost over, <CHARNAME>. You have overcome all your enemies with the fury that your tainted blood granted you.~ DO ~SetGlobal("!SaradasAllBSDTimerSet","GLOBAL",2)~
= ~That comes with a cost...Many innocents lay dead in your trail, and all this only because you want to grab that unholy power for your purposes.~
END

++ ~That looks like a reasonable price to pay to become the new Lord of Murder. That's exactly what I was born for.~ + 3Evil1
++ ~Most of them were fools who dared crossing their swords with mine. They have what they deserved, if you ask me.~ + 3Evil1
++ ~Why would I care about them? I'm so close to my goal now, I earned every meter of my trail with my own blood. It's time for the reward now!~ + 3Evil3

CHAIN
IF ~~ THEN ~!Sar25J~ 3Evil1
~I pity you, <CHARNAME>. You had so much potential in you and it hurts to see it wasted this way.~
= ~I cannot follow you anymore, it's too late for redemption.~
END

++ ~You served your purpose, old mage. I don't need you anymore.~ + 3Evil1-2

CHAIN
IF ~~ THEN ~!Sar25J~ 3Evil1-2
~All people are nothing but a tool to you...So be it, I will be on my way right now. Farewell.~ DO ~DialogInterrupt(FALSE)  LeaveParty() SetGlobal("!SaradasJoined","GLOBAL",0) SetGlobal("!SaradasLeavesEvilPlayer","GLOBAL",1) wait(1) NoAction() smallwait(4) ForceSpell(Myself,POOF_GONE) DialogInterrupt(TRUE)~
EXIT

CHAIN
IF ~~ THEN ~!Sar25J~ 3Evil3
~I know that your life was not easy, but you should capitalize from your experience and do something better of your life.~
END

++ ~Oh but I will, I will make sure that those who died by my hand will make me even stronger and I'll be a worthy successor to Bhaal!~ + 3Evil1











//////////////////////////
// Discorsi con Imoen  //
////////////////////////


CHAIN
IF ~InParty("!Sartob")
InParty("Imoen2")
!ActuallyInCombat()
IsValidForPartyDialog("Imoen2")
IsValidForPartyDialog("!sartob")
OR(4)
Alignment(protagonist,MASK_GOOD)
Alignment(protagonist,NEUTRAL)
Alignment(protagonist,CHAOTIC_NEUTRAL)
Alignment(protagonist,LAWFUL_NEUTRAL)
Global("!SImoenBanter","GLOBAL",0)
RealGlobalTimerExpired("!SImoen1stBTimer","GLOBAL")~
THEN ~!Sar25J~ BImoenGOOD1
~I noticed your gaze lingering on me more than once, young one, is there something you wish to ask me?~ DO ~SetGlobal("!SImoenBanter","GLOBAL",1)~
== IMOEN25J ~Well..You know, Saradas, you really remind me of Gorion. You are wise and tireless, despite your age. He never stopped in front of anything, no matter the peril.~
== ~!Sar25J~ ~<CHARNAME> doesn't love to talk much about Gorion, but I do know that he was an understanding mentor and an incomparable stepfather to <PRO_HIMHER>, despite the fact he knew of <PRO_HISHER> tainted blood.~
== IMOEN25J ~Oh, he truly was. I see a nostalgic look in <CHARNAME>'s eyes when <PRO_HESHE> looks at you. I think <PRO_HESHE> has never really forgotten Gorion, afterall.~
== ~!Sar25J~ ~I never had the pleasure of his company but I'm sure he was a great man. We shared a common acquaintance who spoke very respectfully about Gorion.~
== IMOEN25J ~Really? And who might that be?~
== ~!Sar25J~ ~Elminster of Shadowdale.~
== IMOEN25J ~...Seriously? And how did the two of you meet?~
== ~!Sar25J~  ~It was long time ago, before you were even born, young one. I was an Harper agent.~
=    ~Enough of this, we should keep up with the rest of the group.~
== IMOEN25J ~Mmmm yes, you're just like Gorion. At the climax of a story he would digress and say something like "time to keep moving, young one"...~
=   ~Alright then! But this does not end here, you hear me?~ DO ~RealSetGlobalTimer("!SImoenFirstBanter","GLOBAL",4500)~
EXIT


CHAIN
IF ~InParty("!Sartob")
InParty("Imoen2")
!ActuallyInCombat()
IsValidForPartyDialog("Imoen2")
IsValidForPartyDialog("!sartob")
Alignment(protagonist,MASK_EVIL)
Global("!SImoenBanter","GLOBAL",0)
RealGlobalTimerExpired("!SImoen1stBTimer","GLOBAL")~
THEN ~!Sar25J~ BImoenEVIL1
~I noticed your gaze lingering on me more than once, young one, is there something you wish to ask me?~ DO ~SetGlobal("!SImoenBanter","GLOBAL",1)~
== IMOEN25J ~Well..You know, Saradas, you really remind me of Gorion. You are wise and tireless, despite your age. He never stopped in front of anything, no matter the peril.~
== ~!Sar25J~ ~<CHARNAME> doesn't love to talk much about Gorion, but I do know that he was an understanding mentor and an incomparable stepfather to <PRO_HIMHER>, despite the fact he knew of <PRO_HISHER> tainted blood.~
== IMOEN25J ~Oh, he truly was... But I fear <CHARNAME> has already forgotten Gorion, busy as <PRO_HESHE> is chasing the Bhaal's heritage.~
== ~!Sar25J~ ~I never had the pleasure of his company but I'm sure he was a great man. We shared a common acquaintance who spoke very respectfully about Gorion.~
== IMOEN25J ~Really? And who might that be?~
== ~!Sar25J~ ~Elminster of Shadowdale.~
== IMOEN25J ~...Seriously? And how did the two of you meet?~
== ~!Sar25J~  ~It was long time ago, before you were even born, young one. I was an Harper agent.~
=    ~Enough of this, we should keep up with the rest of the group.~
== IMOEN25J ~Mmmm yes, you're just like Gorion. At the climax of a story he would digress and say something like "time to keep moving, young one"...~
=   ~Alright then! But this does not end here, you hear me?~ DO ~RealSetGlobalTimer("!SImoenFirstBanter","GLOBAL",4500)~
EXIT



CHAIN
IF ~InParty("!Sartob")
InParty("Imoen2")
!ActuallyInCombat()
IsValidForPartyDialog("!Sartob")
IsValidForPartyDialog("Imoen2")
OR(4)
Alignment(protagonist,MASK_GOOD)
Alignment(protagonist,NEUTRAL)
Alignment(protagonist,CHAOTIC_NEUTRAL)
Alignment(protagonist,LAWFUL_NEUTRAL)
Global("!SImoenBanter","GLOBAL",1)
RealGlobalTimerExpired("!SImoenFirstBanter","GLOBAL")~
THEN ~!Sar25J~ BImoenGOOD2
~You look quite absorbed in your thoughts. Something bothering you?~ DO ~SetGlobal("!SImoenBanter","GLOBAL",2)~
== IMOEN25J ~It's nothing...I just really wished you could shed some light on Gorion's past, Saradas. He was the silent kind, you know, and after his tragic death many things have changed for <CHARNAME> and I.~
== ~!Sar25J~ ~I'm very sorry to disappoint you, Imoen, but there's nothing else to be said about this.~
== IMOEN25J ~Please! Not even a small detail?~
== ~!Sar25J~ ~Mmm actually, there's something I know about Gorion.~
== IMOEN25J ~What is it? Would you mind elaborating?~
== ~!Sar25J~ ~The only thing I know is that he was involved in the rescue of <CHARNAME> when <PRO_HESHE> was just an infant.~
== IMOEN25J ~Go on with the story please.~
== ~!Sar25J~  ~This is not the right time for such revelations, young Imoen. Everything will be revealed, but not now.~
== IMOEN25J ~Ooooh I knew it! You old wizards are all the same. There's absolutely no way one can hear the ending of a tale from the likes of you. Mph!~
EXIT


CHAIN
IF ~InParty("!Sartob")
InParty("Imoen2")
!ActuallyInCombat()
IsValidForPartyDialog("Imoen2")
IsValidForPartyDialog("!sartob")
Alignment(protagonist,MASK_EVIL)
Global("!SImoenBanter","GLOBAL",1)
RealGlobalTimerExpired("!SImoenFirstBanter","GLOBAL")~
THEN ~!Sar25J~ BImoenEVIL2
~You look quite absorbed in your thoughts. Something bothering you?~ DO ~SetGlobal("!SImoenBanter","GLOBAL",2)~
== IMOEN25J ~It's nothing...I just really wished you could shed some light on Gorion's past, Saradas. He was the silent kind, you know, and after his tragic death many things have changed for <CHARNAME> and I.~
== ~!Sar25J~ ~I'm very sorry to disappoint you, Imoen, but there's nothing else to be said about this.~
== IMOEN25J ~Please! Not even a small detail?~
== ~!Sar25J~ ~Mmm actually, there's something else I know about Gorion.~
== IMOEN25J ~What is it? Would you mind elaborating?~
== ~!Sar25J~ ~The only thing I know is that he was involved in the rescue of <CHARNAME> when <PRO_HESHE> was just an infant.~
== IMOEN25J ~Go on with the story please.~
== ~!Sar25J~  ~This is not the right time for such revelations, young Imoen. Everything will be revealed, but not now.~
== IMOEN25J ~Ooooh I knew it! You old wizards are all the same. There's absolutely no way one can hear the ending of a tale from the likes of you. Mph!~
EXIT





CHAIN
IF ~InParty("!Sartob")
InParty("Imoen2")
!ActuallyInCombat()
IsValidForPartyDialog("Imoen2")
IsValidForPartyDialog("!sartob")
RealGlobalTimerExpired("!SGorionsPastTimer","GLOBAL")
Global("TalkedToSolar","GLOBAL",3)
Global("!SImoenBanter","GLOBAL",2)~
THEN ~!Sar25J~ BImoenGorionsPast
~Now you have witnessed the events of <CHARNAME>'s past, young mage. What are your feelings about it?~ DO ~SetGlobal("!SImoenBanter","GLOBAL",3)~
== IMOEN25J ~I'm glad that I finally know something more about <PRO_HISHER> past...Gorion's saved <CHARNAME> from a terrible fate and accepted <PRO_HIMHER> as his foster child...~
== ~!Sar25J~ ~Now you understand why I didn't reveal these events before.~
== IMOEN25J ~Indeed...it's a dramatic story. How can a mother sacrifice her own child to an evil deity? It's...disturbing!~
== ~!Sar25J~ ~It truly is but <CHARNAME> needed to know about <PRO_HISHER> past, eventually. The only way one can improve himself, is pondering about his past.~
== IMOEN25J ~Perhaps but...I wonder if it wasn't better to keep this story buried.~
== ~!Sar25J~ ~You are not listening to me, young one. Fleeing from your past will not make you stronger, it will only postpone the final confrontation against it.~
== IMOEN25J ~I... I know what you refer to, Saradas. You are not speaking only about <CHARNAME>, ain't you?~
== ~!Sar25J~ ~You are a child of Bhaal too, afterall, Imoen...~
== IMOEN25J ~I know but...I'm not like <CHARNAME>, we share the same father but that's it. My role in the prophecy is marginal at best.~
== ~!Sar25J~ ~The fact you are still here at <CHARNAME>'s side proves you wrong. You have had a good influece on <PRO_HIMHER>, so far.~
= ~<PRO_HESHE> wouldn't be the same person without your presence.~
== IMOEN25J ~Yes, I guess I'm not that useless afterall, mh?~
= ~"Imoen the wayward that earned a place near <CHARNAME>'s throne!" Sounds good to me.~
== ~!Sar25J~ ~Oh good Lord...I prefered when you didn't think about this at all...~
EXIT





//////////////////////////////////
/////    Edwin o Edwina?     /////
//////////////////////////////////


CHAIN
IF ~InParty("!Sartob")
InParty("Edwin")
!ActuallyInCombat()
IsValidForPartyDialog("Edwin")
IsValidForPartyDialog("!sartob")
GlobalTimerExpired("!SWeMetElminsterTimerTaunt","GLOBAL")
Global("!SWeMetElminster","GLOBAL",6)~
THEN ~!Sar25J~ TauntingEdwin
~Ahem...~ DO ~SetGlobal("!SWeMetElminster","GLOBAL",7)~
== EDWIN25J ~WHAT? Stop looking at me, there's nothing to see!~
== ~!Sar25J~ ~Really? What about your...breasts, for example?~
== EDWIN25J ~Don't you dare speak about it, old monkey, I warn you!!~
== ~!Sar25J~ ~*laughs* or what, you will chase me with a rolling pin?~
== EDWIN25J ~AH-HA, very funny! Elminster might have won the first round...but the next time I will make him pay for this ignominy!~
== ~!Sar25J~ ~I can't believe my ears...The result of your first encounter is not enough for you?~
= ~You are lucky Elminster is a generous man...I did warn you about your mad intentions.~
== EDWIN25J ~Mph! He just caught me off guard...One day I will defeat him and restore my good name!~
== ~!Sar25J~ ~Oh, undoubtedly...~
= ~Speaking about your name...I think we should change it, now that you...Ahem...You know...?~
= ~Edwina sounds appropriate. What do you think, <CHARNAME>?~
END

++ ~Absolutely! Edwina will be alright.~ + EdwinCambiaNome
++ ~No no no I will not interfere in this!~ + EdwinNonCambiaNome
+~InParty("Viconia")~+ ~Come on Saradas, spare him. Edwin has already had a terrible day...~ + EdwinNonCambiaNomeVicky
+~!InParty("Viconia")~+ ~Come on Saradas, spare him. Edwin has already had a terrible day...~ + EdwinNonCambiaNomeNoVicky


CHAIN
IF ~~ THEN ~!Sar25J~ EdwinCambiaNome
~It's decided, then!~
== EDWIN25J ~(Yes, laugh at me...the Great Edwina wi- .. EDWIN will get rid of you!)~ DO ~SetGlobal("!SEdwinChangeName","GLOBAL",1)~
EXIT

CHAIN
IF ~~ THEN ~!Sar25J~ EdwinNonCambiaNome
~Alright alright the jokes are over, let's go.~
EXIT

CHAIN
IF ~~ THEN ~!Sar25J~ EdwinNonCambiaNomeNoVicky
~Alright alright, I guess he already received a nice lesson today.~
== EDWIN25J ~I'm perfectly fine, thanks! Let's move on! (Gosh...I hate my voice.)~
EXIT


CHAIN
IF ~~ THEN ~!Sar25J~ EdwinNonCambiaNomeVicky
~Alright alright, I guess he already received a nice lesson today.~
== EDWIN25J ~I'm perfectly fine, thanks! Let's move on! (Damn it! I hope Viconia will not disdain my attentions, now that I'm a lady!)~
== VICON25J ~Your gender is the last of your problems, rivvil...At least your voice is less unbearable in this new form.~
EXIT

