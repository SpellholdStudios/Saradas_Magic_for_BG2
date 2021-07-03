
![Latest Release](https://img.shields.io/github/v/release/SpellholdStudios/Saradas_Magic_for_BG2?include_prereleases&color=darkred)<a name="top" id="top"> </a>
![GitHub (Pre-)Release Date](https://img.shields.io/github/release-date-pre/SpellholdStudios/Saradas_Magic_for_BG2?color=gold)
![Platform](https://img.shields.io/static/v1?label=platform&message=windows%20%7C%20macOS%20%7C%20linux%20%7C%20Project%20Infinity&color=informational)
![Language](https://img.shields.io/static/v1?label=language&message=English&color=limegreen)

![Supported games](https://img.shields.io/static/v1?label=supported%20games&message=BGII%20%7C%20BGT%20%7C%20BG2%3AEE%20%7C%20EET&color=dodgerblue)


<div align="center"><h1></a>Saradas Magic for BG2 (WIP)</h1>


## 

<div align="center">


<hr>


## <a name="intro" id="intro"></a>Overview

<img style="float: left;" src="saradas_magic_2/readme/images/sartobm.jpg"> 
<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="installation" id="installation"></a>Installation

<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="compat" id="compat"></a>Compatibility

<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="components" id="components"></a>Components

The installer includes the following components. All optional components require the main component to be installed.

<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="credits" id="credits"></a>Credits and Acknowledgements

<div align="right"><a href="#top">Back to top</a></div>

<hr>


## <a name="versions" id="versions"></a>Version History

- TODO Tenser's supremacy: Create weapon (111) durations.
- TODO Impenetrable Defense: missing effects.
- Summon Devil of Baator thunder4 thunder2 wav.
- Legion of shadows spell: Type: Modify proficiencies (233).
- Deathly Hallows Remove Immunity to effect (101),Target: Self (1),Power: 0,Unused: 0,Effect: Dispel effects (58) + spcnec3 25817 Disable display string (267) String: MY MOTHER SAYS THAT ELVES SHOULD GO CLIMB A TREE SOMEWHERE!.

##### Version 2.0 &nbsp;(July, 2021)

- Added *saradas_magic_2.ini* metadata file (including dynamic install order syntax and global `LABELS`) to support AL|EN's "Project Infinity".
- Replaced `AUTHOR` keyword with `SUPPORT`.
- Added `VERSION` keyword.
- Added `README` keyword.
- Added `REQUIRE_PREDICATE` condition to avoid installing the mod in inaccurate games.
- Externalized tp2 code into *main_component.tpa* library for more comfortable readability and maintenance.
- Commented code as much as possible.
- Added native EE and EET compatibility:
    - Added WeiDU's built-in `HANDLE_CHARSETS` function to convert string entries for EE games.
    - Added `ADD_JOURNAL` entries.
    - Provided NPC portraits for EE games.
    - `ADD_KIT` process: fixed lower kit strref, and added WeiDU `fl#add_kit_ee` function for EE games.
- *starhl.2da*: Removed one extra column entry.
- *d#silver.baf*: fixed wrong hard-coded strref entries and merged *difix#1.baf* into it instead of extending it after compilation.
- Decompiled bcs files and compiled scripts with their appropriated tra file when relevant. Removed useless duplicated script files.
- Included all BWP Fixpack fixes:
    - Patched "*shape.cre*" instead of overwriting it to solve the <a href="http://www.shsforums.net/topic/47635-notes-oddities-and-possible-bugs-in-my-bwp-game-spoilers/page-14#entry566376">micbaldur Silverstar NPC - Frennedan NPC compatibility issue</a>.
    - Completed dialogues traification, and added the <a href="http://www.shsforums.net/topic/13501-updated-silverstar-released/page-2?p=533395#entry533395">Escaped clone Silver Star dialog bug fix by Lollorian</a>.
    - Added a more robust workaround than <a href="https://www.gibberlings3.net/forums/topic/21964-add_kit-and-tobex/?do=findComment&comment=183270">BWP Fixpack cmorgan's ToBEx compatible ADD_KIT fix</a> to fix Sebastian creature file installation issue with classic games if TobEx is not installed and more than 256 kits are installed. I know, pretty rare case, but who knows... :wink:
- Proofread strrefs (Gwendolyne).
- Proofread Russian translation (Austin).
- Fully TRAified the mod (some lines were not traified in tp2 file).
- Re-formated, updated, renamed readme file to *star-readme-english.html*, then moved it into new :file_folder: "*readme*" folder.
- Lower cased files.
- Reorganized mod architecture tree: created folders to sort files according to their types.
- Included Linux and Mac OS versions in the same package (thanks AL|EN's Infinity Auto Packager tool!).
- Added archive libiconv-1.9.2-1-src.7z with iconv licence info.
- Updated WeiDU installer to v247.
- Uploaded mod to official Spellhold Studios GitHub mirror account.

## 

    !stun.eff (added)

## 

 CHANGELOG: v_1.8

- Fully TRAified the mod.
- Added EET-compatibility:
 added adaptation of «chapter» variables in TP2 in case of installation on EET
 added the EET_TRANSITION function
- Added iconv-transcoder for installation on different versions of the game with different languages (in case of future translation), the LAF HANDLE_CHARSETS function was added to TP2 to launch it
- The «COPY ~saradas_magic_2\eff\!Stun.eff~ ~override~» command has been added to the TP2 file, which allows you to add the !Stun.eff file to the game, which was added in version 1.7
- Added an option to set an alternate appearance for Saradas (as a mage, not a monk). Added due to the fact that the monk does not have a paperdoll on the inventory screen and some players asked to add this option
- Added full compatibility with "vanilla" (non-EE) version of the game: 
    - Added adaptation of WILDMAGE and DRAGON_DISCIPLE kits, as well as WIZARD_IMPROVED_ALACRITY spell for the vanilla version of the game. Corresponding changes have been made to the TP2-file and the !SARADAS.d and !Scut01.baf files
    - Added a command to TP2 that adds the dir.ids file to the game when a vanilla version of the game is found (since it is absent in it, and the mod will not be installed without it)
    - Added different size options for portraits (for the EE version of the game and for the classic version of the game) 

##### Version Beta 1.7 &nbsp;(January 24, 2016)

- Fixed *Spectacular combustion* spell: replaced SPCOMEX visual effet with FLMSTRK, and 10 additional points of fire damage instead of 5.
- Nerved *Drain spell* spell to 8 the highest spell level the mage can restore.
- Balanced *Lashing Wind* spell's effects. TODO effect #206 icons.
- .
- .
- .
- .

## 

##### Version 1.6 &nbsp;(Unknown4)

- Minor fixes.
- New banters between Saradas and Edwin (in ToB) leading to a funny cutscene.

## 

##### Version 1.5 &nbsp;(Unknown4)

- The final encounter with Saradas can no longer occur if he was previously killed in Athkatla.
- The final encounter with Saradas in Suldanesselar has been revisited.
- Saradas now gives a Wish scroll in the final encounter, rather than a Limited Wish scroll.
- Fixed some dialogues.
- Fixed some dialogues.

## 

##### Version 1.4 &nbsp;(Unknown4)

- Fixed a bug that prevented dual-classed or multiclassed generalist mage to obtain their epic spell.
- Fixed an exploit that allowed the player to obtain multiple rewards from Saradas in Suldanesselar.

## 

##### Version 1.3 &nbsp;(Unknown4)

- Some balance improvements to the artifacts.
- Minor fixes.
- Added a new artifact, the *Enchanted Mantle of Waukeen*.

## 

##### Version 1.2 &nbsp;(Unknown4)

- Minor balance fixes and artifact color restyling.

## 

##### Version 1.1 &nbsp;(Unknown4)

- Helm artifacts can now only be equipped by proper classes.
- Fixed some erroneous strref showing up in custom spells.

## 

##### Version 1 &nbsp;(Unknown)

- Initial release.
<div align="right"><a href="#top">Back to top</a></div>
