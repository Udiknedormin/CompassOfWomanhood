//
// Shithri SoA drink quest
//
// Shithri suggests you to ask for bottled liqies in taverns and inns.
// Later on, after you get enough bottles, an old seaman appears
// to challenge you to a competition.
//
// Prove not to be a mere land-lubber! Taste the adventure!
//
//

APPEND 6WSHITJ
  IF ~
    Global("6W#ShithriDrinksStart","GLOBAL",3)
  ~ THEN BEGIN 6W#shithri_drinks_start__0
    SAY @1000000 /* Oy, capt'n! I hope ye'll nah jus' go past these great liqies indifferently, like the last time? */

    IF ~~ THEN
      DO ~SetGlobal("6W#ShithriDrinksStart","GLOBAL",4)~
      REPLY @1000001 /* Why wouldn't I? */
      GOTO 6W#shithri_drinks_start__why

    IF ~~ THEN
      DO ~SetGlobal("6W#ShithriDrinksStart","GLOBAL",4)~
      REPLY @1000002 /* What do you mean? We're already drinking quality stuff, aren't we? */
      GOTO 6W#shithri_drinks_start__quality_stuff

    IF ~~ THEN
      DO ~SetGlobal("6W#ShithriDrinksStart","GLOBAL",4)~
      REPLY @1000003 /* Did you just imply that Elminster's Beer is not a fine liquor?! */
      GOTO 6W#shithri_drinks_start__elminster_beer
  END

  IF ~~ THEN BEGIN 6W#shithri_drinks_start__why
    SAY @1000010 /* Huh. There be more to life than jus' businness all the time, ye know. */

    IF ~~ THEN
      REPLY @1000011 /* But I do enjoy the stuff we drink... */
      GOTO 6W#shithri_drinks_start__quality_stuff

    IF ~~ THEN
      REPLY @1000012 /* You're right. There is time for work and time for pleasure. What do you suggest then? */
      GOTO 6W#shithri_drinks_start__what_do_you_suggest

    IF ~~ THEN
      REPLY @1000013 /* Normally - maybe. But we have stuff to do. */
      GOTO 6W#shithri_drinks_start__we_have_stuff_to_do
  END

  IF ~~ THEN BEGIN 6W#shithri_drinks_start__quality_stuff
    SAY @1000020 /* I nah mean the usual stuff, capt'n. Shadowdark Ale is fine too. But we in Amn! Such a great place, tradin' all the finest liqies o' the whole Faerûn. Ain't it a waste? */

    IF ~~ THEN REPLY
      @1000021 /* If you put it that way... what do you suggest then? */
      GOTO 6W#shithri_drinks_start__what_do_you_suggest

    IF ~~ THEN REPLY
      @1000022 /* Not really. Drinking is a simple pleasure for me. */
      GOTO 6W#shithri_drinks_start__simple_pleasure
  END

  IF ~~ THEN BEGIN 6W#shithri_drinks_start__elminster_beer
    SAY @1000023 /* I hope ye jus' jestin'. */

    IF ~~ THEN
      GOTO 6W#shithri_drinks_start__quality_stuff
  END

  //Note: you WILL still be able to take the quest again by talking to Shithri directly.
  IF ~~ THEN BEGIN 6W#shithri_drinks_start__we_have_stuff_to_do
    SAY @1000023 /* Pfff. Busy-busy <PRO_GIRLBOY>. Wha' a swab... */
    IF ~~ THEN
      EXIT
  END

  // as above
  IF ~~ THEN BEGIN 6W#shithri_drinks_start__simple_pleasure
    SAY @1000025 /* Ehh... mayhaps ye'll get it somewhen. If so, talk t' this bucko again. */
    IF ~~ THEN
      EXIT
  END

  IF ~~ THEN BEGIN 6W#shithri_drinks_start__what_do_you_suggest
    SAY @1000030 /* Simple, me capt'n. We go t' tavern. Ye get a bottle or two. We go t' next one. */

    IF ~~ THEN
      REPLY @1000031 /* Sounds like a plan. */
      GOTO 6W#shithri_drinks_start__accepted

    IF ~~ THEN
      REPLY @1000040 /* Why bottles? Can't we just drink in the tavern?  */
      GOTO 6W#shithri_drinks_start__collection

    IF ~~ THEN
      REPLY @1000032 /* Why can't we just buy all of them in a single place though? */
      GOTO 6W#shithri_drinks_start__why_nah_single_place
  END

  IF ~~ THEN BEGIN 6W#shithri_drinks_start__collection
    SAY @1000041 /* Only enjoyin' fine liqies in taverns? Nay, those taste best right after a tough battle, they do! */

    IF ~~ THEN
      REPLY @1000031 /* Sounds like a plan. */
      GOTO 6W#shithri_drinks_start__accepted

    IF ~~ THEN
      REPLY @1000042 /* Forget it. We can drink something fancy at a tavern, but we won't waste space in our backpacks for liquors supply. */
      GOTO 6W#shithri_drinks_start__simple_pleasure

    IF ~~ THEN
      REPLY @1000032 /* Why can't we just buy all of them in a single place though? */
      GOTO 6W#shithri_drinks_start__why_nah_single_place
  END

  IF ~~ THEN BEGIN 6W#shithri_drinks_start__accepted
    SAY @1000033 /* Aye! A good one at that, yarrr. Set sail fer liqies! */
    IF ~~ THEN
      DO ~SetGlobal("6W#ShithriDrinksActive","GLOBAL",1)~
      UNSOLVED_JOURNAL @9000000 /* Shithri-inspired liquor collection

Per Shithri's suggestion, I decided to give a try to fine liquor collecting. I need to ask for bottle liquors in the inns and taverns we visit. Shithri seems quite knowledgeable about various drinks, so she can probably offer me some advice. */
      EXIT
  END

  IF ~~ THEN BEGIN 6W#shithri_drinks_start__why_nah_single_place
     SAY @1000034 /* We in Amn, capt'n. So many places wit' so many fine liqies. Why only buy in one? */

     IF ~~ THEN
       REPLY @1000035 /* Good thinking. Let's get to wo... I mean - pleasure! */
       GOTO 6W#shithri_drinks_start__aye_aye

     IF ~~ THEN
       REPLY @1000036 /* Because it was supposed to be pleasure, not work? */
       GOTO 6W#shithri_drinks_start__worth_it
  END

  IF ~~ THEN BEGIN 6W#shithri_drinks_start__aye_aye
    SAY @1000037 /* Aye aye, capt'n! Set sail fer liqies! */
    IF ~~ THEN
      DO ~SetGlobal("6W#ShithriDrinksActive","GLOBAL",1)~
      EXIT
  END

  IF ~~ THEN BEGIN 6W#shithri_drinks_start__worth_it
    SAY @1000045 /* Believe this tar - it be worth the bustle. */

    IF ~~ THEN
      REPLY @1000046 /* Fine, let's do that. */
      GOTO 6W#shithri_drinks_start__aye_aye

    IF ~~ THEN
      REPLY @1000047 /* Meh. Too much work after all. */
      GOTO 6W#shithri_drinks_start__simple_pleasure
  END

  IF ~
    IsGabber(Player1)
    Global("6W#ShithriDrinksAskedAboutStart","GLOBAL",1)
  ~ THEN BEGIN 6W#shithri_drinks_start__1
    SAY @1000050 /* So, me capt'n. Ye ready t' answer the liqie call? */

    IF ~~ THEN
      REPLY @1000051 /* Of course! Let's go get some right now! */
      DO ~
        SetGlobal("6W#ShithriDrinksAskedAboutStart","GLOBAL",0)
      ~
      GOTO 6W#shithri_drinks_start__good

    IF ~~ THEN
      REPLY @1000052 /* Can you repeat what's the plan? */
      DO ~
        SetGlobal("6W#ShithriDrinksAskedAboutStart","GLOBAL",0)
      ~
      GOTO 6W#shithri_drinks_start__what_do_you_suggest

    IF ~~ THEN
      REPLY @1000053 /* No. No time. */
      DO ~
        SetGlobal("6W#ShithriDrinksAskedAboutStart","GLOBAL",0)
      ~
      GOTO 6W#shithri_drinks_start__we_have_stuff_to_do
  END

  IF ~~ THEN BEGIN 6W#shithri_drinks_start__good
    SAY @1000054 /* Good! Set sail fer liqies! */
    IF ~~ THEN
      DO ~SetGlobal("6W#ShithriDrinksActive","GLOBAL",1)~
      EXIT
  END
END


/*
 * Taverns & Inns
 */

// Which tavern/inn serves which drinks is based on the original game files.

// IMPLEMENTATION NOTE
//
// Each tavern, inn or other place you can buy bottle liquors in,
// has a dedicated piece of code here.
//
// The general structure is:
// * add a new state transition to the main dialogue with the inn keeper
// * add a new state for the inn keeper - where you can ask Shithri for advice;
//   this state sets the "return value" so that you can return to the store
// * add a new state for Shithri - where you can ask her for a specific drink,
//   transitioning to this drink state (independent of which store you got
//   there from store); going back is implemented using "return value" from
//   the inn keeper's state. Note that replying Shithri with drink's name uses
//   that drink's naming pool and not that store's.
//
// It's basically the equivalent of a simple function call in assembly, with Shithri's states being the function and the tavern/inn keeper - the caller.
//
// Thanks to that technique, you can add inns & taverns independently
// from drinks. It's not perfect, as you still need to add the ret values
// to a global mapping in a specific Shithri's state, but it's the best
// this scrip's author (Udiknedormin) came up with.
//
// As for the strings encoding:
// @1000000
//  ^ 1 for the plot talks (e.g. starting the quest)
//    2 for taverns & inns dialogues
//    3 for drinks dialogues
//    4 for drinks item data
//    9 journal entries
// @1000000
//   ^^
//   for plot talks: number of plot talk
//   for taverns & inns: number of tavern/inn
//   for drinks: number of the drink
// @1000000
//     ^^
//     unused
//
// Compatibility note: unluckily, this implementation isn't compatible with
// any mods changing the list of drinks available in an existing inn. While
// this script's author (Udiknedormin) isn't aware of any such mods, there
// might be some. It may lead to inconsistencies: the player being able
// to buy some new drink in the store menu but not seeing it in the dialogue
// or vice versa.
//
// While it's probably possible to automatically generate this dialogue from
// the store's actual offer in its file, it would still pose problems with
// mod installation ordering, so it seems a better option to simply add
// explicit compatibility layers to known mods rather than trying to create
// a generic mechanism. Doubly so, considering how vastly it would decrease
// readability to non-programmers.


//
//  0. Copper Coronet
//

// There are quite a few states that start this store: 22, 24, 31, 33, 36


EXTEND_BOTTOM BERNARD 22
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2000000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors
END
EXTEND_BOTTOM BERNARD 24
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2000000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors
END
EXTEND_BOTTOM BERNARD 31
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2000000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors
END
EXTEND_BOTTOM BERNARD 33
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2000000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors
END
EXTEND_BOTTOM BERNARD 36
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2000000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors
END

APPEND BERNARD
  IF ~~ THEN BEGIN bottled_liquors
    SAY @2000001 /* Sure thing. Anything but fer good ol' Amnian Ale. */
    /* Pewnie. Wszystko poza starym dobrym Amnijskim. */

    IF ~~ THEN
      REPLY @2000002 /* Shithri? Are these any good? */
      DO ~SetGlobal("6W#ShithriDrinksRet","GLOBAL",0)~
      EXTERN ~6WSHITJ~ copper_coronet
  END
END

APPEND 6WSHITJ
  IF ~~ BEGIN copper_coronet
    SAY @2000010 /* Aye. Which one catches yer eye? */

    IF ~
      !PartyHasItem("_6WDR00")
    ~ THEN
      REPLY @3000000 /* Bitter Black Ale. */
      GOTO bitter_black_ale
   
    IF ~
      !PartyHasItem("_6WDR01")
    ~ THEN
      REPLY @3010000 /* Shadowdark Ale. */
      GOTO shadowdark_ale

    IF ~
      !PartyHasItem("_6WDR02")
    ~ THEN
      REPLY @3020000 /* Suz-Ale. */
      GOTO suz_ale

    IF ~~ THEN // always present because the kind is unknown to the player
      REPLY @3030000 /* Golden Sands. */
      // There are multiple kinds, so which kinds
      // are available here needs to be set.
      GOTO golden_sands__basic_only

    IF ~~ THEN
      REPLY @2000011 /* None in particular. */
      EXIT
  END
END


//
//  1. Crooked Crane
//

EXTEND_BOTTOM CROBAR01 1
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2010000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors
END

APPEND CROBAR01
  IF ~~ THEN BEGIN bottled_liquors
    SAY @2010001 /* Oh, you're a fancy one after all? But since you asked: yes, anything but Mead. */

    IF ~~ THEN
      REPLY @2010002 /* Shithri? Are these any good? */
      DO ~SetGlobal("6W#ShithriDrinksRet","GLOBAL",1)~
      EXTERN ~6WSHITJ~ crooked_crane
  END
END

APPEND 6WSHITJ
  IF ~~ BEGIN crooked_crane
    SAY @2010010 /* Aye. Which one catches yer eye? */

    IF ~
      !PartyHasItem("_6WDR00")
    ~ THEN
      REPLY @3000000 /* Bitter Black Ale. */
      GOTO bitter_black_ale

    IF ~
      !PartyHasItem("_6WDR04")
    ~ THEN
      REPLY @3040000 /* Iriaeboran Ale. */
      GOTO iriaeboran_ale

    IF ~
      !PartyHasItem("_6WDR05")
    ~ THEN
      REPLY @3050000 /* Luiren's Best Ale. */
      GOTO luirens_best_ale

    IF ~
      !PartyHasItem("_6WDR06")
    ~ THEN
      REPLY @3060000 /* Tanagyr's Ale. */
      GOTO tanagyrs_ale

    IF ~~ THEN
      REPLY @2010011 /* None in particular. */
      EXIT
  END
END


//
//  2. Sea Bounty
//

// multiple states call store: 0, 1, 3, 6

EXTEND_BOTTOM THUMB 0
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2020000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors
END
EXTEND_BOTTOM THUMB 1
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2020000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors
END
EXTEND_BOTTOM THUMB 2
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2020000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors
END
EXTEND_BOTTOM THUMB 3
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2020000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors
END
EXTEND_BOTTOM THUMB 6
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2020000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors
END

APPEND THUMB
  IF ~~ THEN BEGIN bottled_liquors
    SAY @2020001 /* Ho, does he, the Thumb? It's yer lucky day, mate - all of them, I say! */

    IF ~~ THEN
      REPLY @2020002 /* Shithri? Are these any good? */
      DO ~SetGlobal("6W#ShithriDrinksRet","GLOBAL",2)~
      EXTERN ~6WSHITJ~ sea_bounty
  END
END

APPEND 6WSHITJ
  IF ~~ BEGIN sea_bounty
    SAY @2020010 /* Aye. Which one catches yer eye? */

    IF ~
      !PartyHasItem("_6WDR07")
    ~ THEN
      REPLY @3070000 /* Alurlyath Wine. */
      GOTO alurlyath_wine

    IF ~
      !PartyHasItem("_6WDR08")
    ~ THEN
      REPLY @3080000 /* Arabellan Wine. */
      GOTO arabellan_wine

    IF ~
      !PartyHasItem("_6WDR00")
    ~ THEN
      REPLY @3000000 /* Bitter Black Ale. */
      GOTO bitter_black_ale

    IF ~
      !PartyHasItem("_6WDR90")
    ~ THEN
      REPLY @3900000 /* Elminster's Beer. */
      GOTO elminsters_beer

    IF ~
      !PartyHasItem("_6WDR09")
    ~ THEN
      REPLY @3090000 /* Evermead. */
      GOTO evermead

    IF ~
      !PartyHasItem("_6WDR01")
    ~ THEN
      REPLY @3010000 /* Shadowdark Ale. */
      GOTO shadowdark_ale

    IF ~~ THEN
      REPLY @2020011 /* None in particular. */
      EXIT
  END
END


//
//  3. Five Flagons
//

// multiple states: 0, 8

EXTEND_BOTTOM FFBART 0
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2030000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors
END
EXTEND_BOTTOM FFBART 8
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2030000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors
END

APPEND FFBART
  IF ~~ THEN BEGIN bottled_liquors
    SAY @2030001 /* But of course, my good smilin' friend! Whatever suits your taste, I have everything from Calimshite lagers to Cormyrian wine. */

    IF ~~ THEN
      REPLY @2030002 /* Shithri? Are these any good? */
      DO ~SetGlobal("6W#ShithriDrinksRet","GLOBAL",3)~
      EXTERN ~6WSHITJ~ five_flagons
  END
END

APPEND 6WSHITJ
  IF ~~ BEGIN five_flagons
    SAY @2030010 /* Aye. Which one catches yer eye? */

    IF ~
      !PartyHasItem("_6WDR00")
    ~ THEN
      REPLY @3000000 /* Bitter Black Ale. */
      GOTO bitter_black_ale

    IF ~
      !PartyHasItem("_6WDR09")
    ~ THEN
      REPLY @3090000 /* Evermead. */
      GOTO evermead

    IF ~~ THEN // always present because the kind is unknown to the player
      REPLY @3030000 /* Golden Sands. */
      // There are multiple kinds, so which kinds
      // are available here needs to be set.
      GOTO golden_sands__basic_only

    IF ~
      !PartyHasItem("_6WDR10")
    ~ THEN
      REPLY @3100000 /* Westgate Wine. */
      GOTO westgate_wine

    IF ~
      !PartyHasItem("_6WDR11")
    ~ THEN
      REPLY @3110000 /* Saerloonian Wine. */
      GOTO saerloonian_wine

    IF ~~ THEN
      REPLY @2030011 /* None in particular. */
      EXIT
  END
END


//
//  4. Delosar's Inn
//

EXTEND_BOTTOM BINNKEEP 0
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2040000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors
END

APPEND BINNKEEP
  IF ~~ THEN BEGIN bottled_liquors
    SAY @2040001 /* Bottled? Good, take them and go, it's a busy place! Unless ye want mead, can't bottle ye that. */

    IF ~~ THEN
      REPLY @2040002 /* Shithri? Are these any good? */
      DO ~SetGlobal("6W#ShithriDrinksRet","GLOBAL",4)~
      EXTERN ~6WSHITJ~ delosars_inn
  END
END

APPEND 6WSHITJ
  IF ~~ BEGIN delosars_inn
    SAY @2040010 /* Aye. Which one catches yer eye? */

    IF ~
      !PartyHasItem("_6WDR00")
    ~ THEN
      REPLY @3000000 /* Bitter Black Ale. */
      GOTO bitter_black_ale

    IF ~
      !PartyHasItem("_6WDR09")
    ~ THEN
      REPLY @3090000 /* Evermead. */
      GOTO evermead

    IF ~~ THEN // always present because the kind is unknown to the player
      REPLY @3030000 /* Golden Sands. */
      // There are multiple kinds, so which kinds
      // are available here needs to be set.
      GOTO golden_sands__gold_only

    IF ~
      !PartyHasItem("_6WDR08")
    ~ THEN
      REPLY @3080000 /* Arabellan Wine. */
      GOTO arabellan_wine

    IF ~~ THEN
      REPLY @2040011 /* None in particular. */
      EXIT
  END
END


//
//  5. Mithrest Inn
//

EXTEND_BOTTOM WINNKEEP 0
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2050000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors
END
EXTEND_BOTTOM WINNKEEP 3
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2050000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors
END

APPEND WINNKEEP
  IF ~~ THEN BEGIN bottled_liquors
    SAY @2050001 /* Indeed, my <LADYLORD>. All of our assortment, in fact. Please have a look. */

    IF ~~ THEN
      REPLY @2050002 /* Shithri? Are these any good? */
      DO ~SetGlobal("6W#ShithriDrinksRet","GLOBAL",5)~
      EXTERN ~6WSHITJ~ mithrest_inn
  END
END

APPEND 6WSHITJ
  IF ~~ BEGIN mithrest_inn
    SAY @2050010 /* Aye. Which one catches yer eye? */

    IF ~
      !PartyHasItem("_6WDR12")
    ~ THEN
      REPLY @3120000 /* Berduskan Wine. */
      GOTO berduskan_wine

    IF ~
      !PartyHasItem("_6WDR13")
    ~ THEN
      REPLY @3130000 /* Winter Wine. */
      GOTO winter_wine

    IF ~~ THEN // always present because the kind is unknown to the player
      REPLY @3030000 /* Golden Sands. */
      // There are multiple kinds, so which kinds
      // are available here needs to be set.
      GOTO golden_sands__gold_or_orange

    IF ~
      !PartyHasItem("_6WDR14")
    ~ THEN
      REPLY @3140000 /* Dragon's Beer. */
      GOTO dragons_beer

    IF ~
      !PartyHasItem("_6WDR00")
    ~ THEN
      REPLY @3000000 /* Bitter Black Ale. */
      GOTO bitter_black_ale

    IF ~
      !PartyHasItem("_6WDR07")
    ~ THEN
      REPLY @3070000 /* Alurlyath Wine. */
      GOTO alurlyath_wine

    IF ~
      !PartyHasItem("_6WDR04")
    ~ THEN
      REPLY @3040000 /* Iriaeboran Ale. */
      GOTO iriaeboran_ale

    IF ~~ THEN
      REPLY @2050011 /* None in particular. */
      EXIT
  END
END


//
//  6. Den of the Seven Vales
//

// male - 0 3 5 7
// female - 1 11 12 15 17

EXTEND_BOTTOM SEVBAR01 0
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2060000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors__male
END
EXTEND_BOTTOM SEVBAR01 3
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2060000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors__male
END
EXTEND_BOTTOM SEVBAR01 5
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2060000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors__male
END
EXTEND_BOTTOM SEVBAR01 7
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2060000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors__male
END

EXTEND_BOTTOM SEVBAR01 1
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2060000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors__female
END
EXTEND_BOTTOM SEVBAR01 11
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2060000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors__female
END
EXTEND_BOTTOM SEVBAR01 12
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2060000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors__female
END
EXTEND_BOTTOM SEVBAR01 15
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2060000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors__female
END
EXTEND_BOTTOM SEVBAR01 17
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2060000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors__female
END

APPEND SEVBAR01
  IF ~~ THEN BEGIN bottled_liquors__male
    SAY @2060001 /* Good, good! Take a bottle or two and put your disgusting male self somewhere when I can't see ye! Any beer ye want, as long as ye pay. */

    IF ~~ THEN
      REPLY @2060005 /* Shithri? Are these any good? */
      DO ~SetGlobal("6W#ShithriDrinksRet","GLOBAL",5)~
      EXTERN ~6WSHITJ~ mithrest_inn
  END
  IF ~~ THEN BEGIN bottled_liquors__female
    SAY @2060002 /* Oh, so ye won't be stayin' fer a while, miss? Pity. Have any beer you want though. */

    IF ~~ THEN
      REPLY @2060005 /* Shithri? Are these any good? */
      DO ~SetGlobal("6W#ShithriDrinksRet","GLOBAL",6)~
      EXTERN ~6WSHITJ~ seven_vales
  END
END

APPEND 6WSHITJ
  IF ~~ BEGIN seven_vales
    SAY @2060010 /* Aye. Which one catches yer eye? */

    IF ~
      !PartyHasItem("_6WDR00")
    ~ THEN
      REPLY @3000000 /* Bitter Black Ale. */
      GOTO bitter_black_ale

    IF ~~ THEN // always present because the kind is unknown to the player
      REPLY @3030000 /* Golden Sands. */
      // There are multiple kinds, so which kinds
      // are available here needs to be set.
      GOTO golden_sands__basic_only

    IF ~
      !PartyHasItem("_6WDR14")
    ~ THEN
      REPLY @3140000 /* Dragon's Beer. */
      GOTO dragons_beer

    IF ~~ THEN
      REPLY @2060011 /* None in particular. */
      EXIT
  END
END


//
//  7. Umar Inn
//

// 2, 29, 31, 36
EXTEND_BOTTOM UHINN01 2
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2070000 /* Any bottled liquors in your offer? */
    EXTERN ~UHINN02~ bottled_liquors__ask
END
EXTEND_BOTTOM UHINN01 29
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2070000 /* Any bottled liquors in your offer? */
    EXTERN ~UHINN02~ bottled_liquors__ask
END
EXTEND_BOTTOM UHINN01 31
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2070000 /* Any bottled liquors in your offer? */
    EXTERN ~UHINN02~ bottled_liquors__ask
END
EXTEND_BOTTOM UHINN01 36
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2070000 /* Any bottled liquors in your offer? */
    EXTERN ~UHINN02~ bottled_liquors__ask
END

// variant:  41, 44, 45, 46, 47, 48, 52
EXTEND_BOTTOM UHINN01 41
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2070001 /* Just a bottle or two for us. */
    GOTO bottled_liquors__want
END
EXTEND_BOTTOM UHINN01 44
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2070001 /* Just a bottle or two for us. */
    GOTO bottled_liquors__want
END
EXTEND_BOTTOM UHINN01 45
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2070001 /* Just a bottle or two for us. */
    GOTO bottled_liquors__want
END
EXTEND_BOTTOM UHINN01 46
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2070001 /* Just a bottle or two for us. */
    GOTO bottled_liquors__want
END
EXTEND_BOTTOM UHINN01 47
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2070001 /* Just a bottle or two for us. */
    GOTO bottled_liquors__want
END
EXTEND_BOTTOM UHINN01 52
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2070001 /* Just a bottle or two for us. */
    GOTO bottled_liquors__want
END

CHAIN UHINN02 bottled_liquors__ask
  @2070010 /* "Liquors"! Pretty word for what you can get in here! */
  == UHINN01
  @2070011 /* Silence, boy! Please excuse him, my good <PRO_LADYLORD>. Of course we have a fine assortment of... */
  == UHINN02
  @2070012 /* "Assortment"! Where ye get all those fancy words from, Vince? */
EXTERN ~UHINN01~ bottled_liquors__ask_fin
APPEND UHINN01
  IF ~~ THEN bottled_liquors__ask_fin
    SAY @2070013 /* Shut yer yip, boy. Now, me <PRO_LADYLORD>. Arabellan wine, Calimshite beer and even the famous evermead - pick whatever you like. */

    IF ~~ THEN
      REPLY @2070030 /* Shithri? Are these any good? */
      DO ~SetGlobal("6W#ShithriDrinksRet","GLOBAL",7)~
      EXTERN ~6WSHITJ~ mithrest_inn
  END

  IF ~~ THEN bottled_liquors__want
    SAY @2070020 /* Of course, of course, me <PRO_LADYLORD> <CHARNAME>. As ye wish. */

    IF ~~ THEN
      REPLY @2070030 /* Shithri? Are these any good? */
      DO ~SetGlobal("6W#ShithriDrinksRet","GLOBAL",7)~
      EXTERN ~6WSHITJ~ mithrest_inn
  END
END

APPEND 6WSHITJ
  IF ~~ BEGIN umar_inn
    SAY @2070040 /* Aye. Which one catches yer eye? */

    IF ~
      !PartyHasItem("_6WDR09")
    ~ THEN
      REPLY @3090000 /* Evermead. */
      GOTO evermead

    IF ~
      !PartyHasItem("_6WDR03")
    ~ THEN
      REPLY @3030000 /* Golden Sands. */
      // There are multiple kinds, so which kinds
      // are available here needs to be set.
      GOTO golden_sands__basic_only

    IF ~
      !PartyHasItem("_6WDR08")
    ~ THEN
      REPLY @3080000 /* Arabellan Wine. */
      GOTO arabellan_wine

    IF ~~ THEN
      REPLY @2070041 /* None in particular. */
      EXIT
  END
END


//
//  8. The Vulgar Monkey Inn
//

EXTEND_BOTTOM PPINN01 0
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2080000 /* I just wanted to buy a bottle or two and leave. */
    DO ~SetGlobal("ppinntalk","AR1602",1)~
    GOTO bottled_liquors
END
EXTEND_BOTTOM PPINN01 3
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2080000 /* I just wanted to buy a bottle or two and leave. */
    GOTO bottled_liquors
END

APPEND PPINN01
  IF ~~ THEN BEGIN bottled_liquors
    SAY @2080001 /* Paying AND leaving? Huh, you the best <PRO_MANWOMAN> here then. You be missing the local mead and sout, but that's on you. */

    IF ~~ THEN
      REPLY @2080002 /* Shithri? Are these any good? */
      DO ~SetGlobal("6W#ShithriDrinksRet","GLOBAL",8)~
      EXTERN ~6WSHITJ~ vulgar_monkey
  END
END

APPEND 6WSHITJ
  IF ~~ BEGIN vulgar_monkey
    SAY @2080010 /* Aye. Which one catches yer eye? */

    IF ~
      !PartyHasItem("_6WDR14")
    ~ THEN
      REPLY @3140000 /* Dragon's Beer. */
      GOTO dragons_beer

    IF ~
      !PartyHasItem("_6WDR90")
    ~ THEN
      REPLY @3900000 /* Elminster's Beer. */
      GOTO elminsters_beer

    IF ~
      !PartyHasItem("_6WDR13")
    ~ THEN
      REPLY @3130000 /* Winter Wine. */
      GOTO winter_wine

    IF ~
      !PartyHasItem("_6WDR10")
    ~ THEN
      REPLY @3100000 /* Westgate Wine. */
      GOTO westgate_wine

    IF ~
      !PartyHasItem("_6WDR09")
    ~ THEN
      REPLY @3090000 /* Evermead. */
      GOTO evermead

    IF ~~ THEN
      REPLY @2080011 /* None in particular. */
      EXIT
  END
END


//
//  9. Vyatri's Pub
//

EXTEND_BOTTOM TRINNK01 0
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2090000 /* Any bottled liquors in your offer? */
    DO ~SetGlobal("ppinntalk","AR1602",1)~
    GOTO bottled_liquors__poor
END
EXTEND_BOTTOM TRINNK01 1
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2090000 /* Any bottled liquors in your offer? */
    DO ~SetGlobal("ppinntalk","AR1602",1)~
    GOTO bottled_liquors__poor
END
EXTEND_BOTTOM TRINNK01 14
  IF ~
    IsGabber(Player1)
    IfValidForPartyDialogue("6WSHITHRI")
    InMyArea("6WSHITHRI")
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
  ~ THEN
    REPLY @2090000 /* Any bottled liquors in your offer? */
    GOTO bottled_liquors__hero
END

APPEND TRINNK01
  IF ~~ THEN BEGIN bottled_liquors__poor
    SAY @2090001 /* Well, there isn't much, but also few people to buy what little I have. These are all pretty good though. Woodland Ale is just on tap though, no bottles. */

    IF ~~ THEN
      REPLY @2090005 /* Shithri? Are these any good? */
      DO ~SetGlobal("6W#ShithriDrinksRet","GLOBAL",9)~
      EXTERN ~6WSHITJ~ vyatris_pub
  END
  IF ~~ THEN BEGIN bottled_liquors__hero
    SAY @2090002 /* Of course, <CHARNAME>! Anything for our hero! I have everything bottled but for our local Woodland Ale. */

    IF ~~ THEN
      REPLY @2090005 /* Shithri? Are these any good? */
      DO ~SetGlobal("6W#ShithriDrinksRet","GLOBAL",9)~
      EXTERN ~6WSHITJ~ vyatris_pub
  END
END

APPEND 6WSHITJ
  IF ~~ BEGIN vyatris_pub
    SAY @2090010 /* Aye. Which one catches yer eye? */

    IF ~
      !PartyHasItem("_6WDR10")
    ~ THEN
      REPLY @3100000 /* Westgate Wine. */
      GOTO westgate_wine

    IF ~
      !PartyHasItem("_6WDR11")
    ~ THEN
      REPLY @3110000 /* Saerloonian Wine. */
      GOTO saerloonian_wine

    IF ~
      !PartyHasItem("_6WDR09")
    ~ THEN
      REPLY @3090000 /* Evermead. */
      GOTO evermead

    IF ~
      !PartyHasItem("_6WDR12")
    ~ THEN
      REPLY @3120000 /* Berduskan Wine. */
      GOTO berduskan_wine

    IF ~
      !PartyHasItem("_6WDR08")
    ~ THEN
      REPLY @3080000 /* Arabellan Wine. */
      GOTO arabellan_wine


    IF ~~ THEN
      REPLY @2090011 /* None in particular. */
      EXIT
  END
END


//
// 20. Uncle Gerhardt
// Because gnomes make the best home-made nalewka!
//
// Nalewka (lit. "tincture") is a Polish alcoholic bewarage made by infusion.
// It's somewhat similar to German or Dutch schnapps, but there are also a few
// notable differences.
//
// While Jan Jansen or Jan Janssen is an existing Dutch name, Jan
// (pronounced "yan") is also typically Polish --- which is actually
// utilized in the Polish version of BG2 when Uncle Gerhardt calls him
// ,,Mały Jasio'' (lit. "Little Johnny", in the English version: "Wee Janny").
// Many DnD fans point out that many of the characteristics of gnomes
// (for better or worse) are also stereotypically attributed to Jews and Poland
// used to have a very large Jewish minority. The situation of gnomes
// and gnomish districts in Athkatla also may be reminescent of multiple
// descriptions of Polish Jews in XIX century. The way Jansen home
// is multi-generational also fits the traditional Polish family model,
// hich was the norm in XIX century.
//
// It seems Jan Jansen isn't as beloved among the English-speaking players,
// but for Polish fans, he's one of the more popular characters --- probably
// largely due to an amazing voice actor, Jan Kobuszewski (1934-2019), who gave
// the character new life.
//
// For me (Udiknedormin), it's THE most beloved character.
//
// Attributing him with not just any strong liquor, but Polish nalewka
// in particular, is a conscious reference here. Thanks for reading this note,
// for it's quite a long one.

// Implementation Note:
// Just as with asking about Jaella, if the gabber is mean,
// Uncle Gerhardt won't answer the question.
EXTEND_BOTTOM GERHAR 0
  IF ~
    IsGabber(Player1)
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
    // Shithri doesn't need to be present as long as the quest has been started
  ~ THEN
    REPLY @2200000 /* We're here for your hooch, old man. */
    GOTO 4 // he'll tell you nothing
END

// Implementation Note:
// If you're charismatic enough, you can pretend to be Jan in order
// to get some schnapps.
EXTEND_BOTTOM GERHAR 1
  IF ~
    CheckStatGT(LastTalkedToBy,17,CHR)
    IsGabber(Player1)
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
    Global("6W#ShithriDrinksGotTurnip","GLOBAL",0)
    // Shithri doesn't need to be present as long as the quest has been started
  ~ THEN
    REPLY @2200010 /* Oh, Uncle Gerhardt, you had some hoochie again, didn't you? */
    GOTO 6W#shithri_drinks_gerhardt__hooch_yes

  IF ~
    CheckStatLT(LastTalkedToBy,18,CHR)
    IsGabber(Player1)
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
    Global("6W#ShithriDrinksGotTurnip","GLOBAL",0)
    // Shithri doesn't need to be present as long as the quest has been started
  ~ THEN
    REPLY @2200020 /* Uncle. I'm in need of a turnip hooch and you can't say it's me? */
    GOTO 7
END

APPEND GERHAR
  IF ~~ THEN 6W#shithri_drinks_gerhardt__hooch_yes
    SAY @2200011 /* Oh, me good boy, and what a nice nalewka it was! Silly me. Come, laddie, take some! */

    IF ~~ THEN
      REPLY @2200012 /* Gladly! You're the best, Uncle! */
      DO ~
        // Will only get ONE bottle, even if you get rid of it!
        SetGlobal("6W#ShithriDrinksGotTurnip","GLOBAL",1)
        GiveItemCreate("_6WDR20", Player1, 0, 0, 0) // turnip schnapps
      ~
      GOTO 6W#shithri_drinks_gerhardt__hooch_chicken

    IF ~~ THEN
      REPLY @2200013 /* Maybe later. My question... */
      GOTO 11
  END
  IF ~~ THEN 6W#shithri_drinks_gerhardt__hooch_chicken
    // based on state 6
    SAY @2200015 /* Now run to the chicken and get me some sausages, laddie! */
    COPY_TRANS GERHAR 6
  END
END

// Implementation Note:
// Could get him to give you some schnapps even after you get to know
// the Jaella info you seek.
ADD_TRANS_TRIGGER GERHAR 19 ~
  OR(3)
    !IsGabber(Player1)
    !GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
    !Global("6W#ShithriDrinksGotTurnip","GLOBAL",0)
~ DO 0
ADD_TRANS_TRIGGER GERHAR 20 ~
  OR(4)
    !IsGabber(Player1)
    !GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
    !Global("6W#ShithriDrinksGotTurnip","GLOBAL",0)
    !Global("6W#JanJoined","GLOBAL",1)
~ DO 0

EXTEND_TOP GERHAR 19
  IF ~
    IsGabber(Player1)
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
    Global("6W#ShithriDrinksGotTurnip","GLOBAL",0)
    CheckStatGT(LastTalkedToBy,17,CHR)
    // Shithri doesn't need to be present as long as the quest has been started
  ~ THEN
    REPLY @2200110 /* Oh, Uncle Gerhardt, you had some hoochie again, didn't you? */
    GOTO 6W#shithri_drinks_gerhardt__hooch1_yes

  IF ~
    IsGabber(Player1)
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
    Global("6W#ShithriDrinksGotTurnip","GLOBAL",0)
    CheckStatLT(LastTalkedToBy,18,CHR)
    CheckStatGT(LastTalkedToBy,14,CHR)
    // Shithri doesn't need to be present as long as the quest has been started
  ~
    REPLY @2200120 /* So you've had all of the hoochie by yourself? Leaving nothing for your nephew Jan? */
    GOTO 6W#shithri_drinks_gerhardt__hooch1_no

  IF ~
    IsGabber(Player1)
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
    Global("6W#ShithriDrinksGotTurnip","GLOBAL",0)
    CheckStatLT(LastTalkedToBy,15,CHR)
    // Shithri doesn't need to be present as long as the quest has been started
  ~
    REPLY @2200130 /* It's me, your nephew Jan. I just wondered if I could get some of your turnip hooch. */
    GOTO 6W#shithri_drinks_gerhardt__hooch1_no

  IF ~
    IsGabber(Player1)
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
    Global("6W#ShithriDrinksGotTurnip","GLOBAL",0)
    // Shithri doesn't need to be present as long as the quest has been started
  ~
    REPLY @2200140 /* Right, off I go! */
    EXIT
END
EXTEND_TOP GERHAR 20
  IF ~
    IsGabber(Player1)
    Global("6W#JanJoined","GLOBAL",1)
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
    Global("6W#ShithriDrinksGotTurnip","GLOBAL",0)
    CheckStatGT(LastTalkedToBy,17,CHR)
    // Shithri doesn't need to be present as long as the quest has been started
  ~ THEN
    REPLY @2200110 /* Oh, Uncle Gerhardt, you had some hoochie again, didn't you? */
    GOTO 6W#shithri_drinks_gerhardt__hooch1_yes

  IF ~
    IsGabber(Player1)
    Global("6W#JanJoined","GLOBAL",1)
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
    Global("6W#ShithriDrinksGotTurnip","GLOBAL",0)
    CheckStatLT(LastTalkedToBy,18,CHR)
    CheckStatGT(LastTalkedToBy,14,CHR)
    // Shithri doesn't need to be present as long as the quest has been started
  ~
    REPLY @2200120 /* So you've had all of the hoochie by yourself? Leaving nothing for your nephew Jan? */
    GOTO 6W#shithri_drinks_gerhardt__hooch1_no

  IF ~
    IsGabber(Player1)
    Global("6W#JanJoined","GLOBAL",1)
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
    Global("6W#ShithriDrinksGotTurnip","GLOBAL",0)
    CheckStatLT(LastTalkedToBy,15,CHR)
    // Shithri doesn't need to be present as long as the quest has been started
  ~
    REPLY @2200130 /* It's me, your nephew Jan. I just wondered if I could get some of your turnip hooch. */
    GOTO 6W#shithri_drinks_gerhardt__hooch1_no

  IF ~
    IsGabber(Player1)
    Global("6W#JanJoined","GLOBAL",1)
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
    Global("6W#ShithriDrinksGotTurnip","GLOBAL",0)
    // Shithri doesn't need to be present as long as the quest has been started
  ~
    REPLY @2200140 /* Right, off I go! */
    EXIT
END

APPEND GERHAR
  IF ~~ THEN 6W#shithri_drinks_gerhardt__hooch1_yes
    SAY @2200111 /* Oh yes, me wee Janny. And what a nice nalewka it was! Silly me. Come, laddie, take some! */

    IF ~~ THEN
      REPLY @2200012 /* Oh my! You're the best, Uncle! */
      DO ~
        // Will only get ONE bottle, even if you get rid of it!
        SetGlobal("6W#ShithriDrinksGotTurnip","GLOBAL",1)
        GiveItemCreate("_6WDR20", Player1, 0, 0, 0) // turnip nalewka
      ~
      GOTO 6W#shithri_drinks_gerhardt__hooch1_chicken
  END
  IF ~~ THEN 6W#shithri_drinks_gerhardt__hooch1_chicken
    // based on state 6
    SAY @2200015 /* Now run to the chicken and get me some sausages, laddie! */

    // as in state 6, but without the Jaella answer
    // TODO: maybe some better way to do that?
    IF ~~ THEN
      REPLY #2011 /* ~Uh, the chicken?~ */
      GOTO 12
  END
  IF ~~ THEN 6W#shithri_drinks_gerhardt__hooch1_no
    SAY @2200121 /* Ye nary Janny but a truly naughty child. Now piss off before I paddle yer bottom! */
    IF ~~ THEN
      EXIT
  END
END

//
// 21. Mironda
//
// First things first - Shithri should praise Mironda's call for trying
// new liqies. They could be very good friends. Some additional interjections
// will be added here, not just getting the liqie.
//
// The liquor has already been described in the cask's description,
// so the item description is mostly the same (why overcomplicate things?).

// Mironda starts by asking: "Who're you? Aw, it don't matter. Want some rye?
// 'Course ya do!" --- this whole thing is a quote from "Return to Zork",
// a game from 1993.
//
// Implementation Note:
// It can't really be INTERJECT, as the target state differs
// if Shithri's in the party, but stays the same otherwise.
EXTEND_BOTTOM OHNMIRON 0
  IF ~
    IsValidForPartyDialog("6WSHITHRI")
  ~
    EXTERN ~6WSHITJ~ 6W#ShithriDrinks__Mironda_initial
END

CHAIN 6WSHITJ 6W#ShithriDrinks__Mironda_initial
  @2210000 /* Har har! 'Tis a fine dwarvish woman if I e'er saw one, capt'n! Wha' 'ave on ye? */
  == OHNMIRON
  @2210001 /* Just some plain old whiskey. Nah Luiren Rivengut, sadly. */
  // Note: I (Udiknedormin) tried to find if there is an existing canonical
  // Polish translation of the name "Luiren Rivengut".
  //
  // The following sources mention it:
  //  * "The Wyvern's Spur" (Polish translation is titled: ,,Ostroga Wywerna'')
  //    novel from 1990 - leaves "Rivengut" as-is
  //  * "Song of the Saurials" (Polish translation is titled:
  //    ,,Pieśń Sauriali''), novel from 1991 - leaves "Luiren Rivengut" as-is.
  //  * "Heroes' Lorebook", book from 1996 - I didn't find it to have
  //    an official translation.
  //  * "Sword Coast Legends", a game from 2015 - I didn't find it to have
  //    an official translation, only a fan project:
  //    https://steamcommunity.com/groups/SwordCoastPL/discussions/0/496881136902601542/
  //
  // Therefore it looks like no official Polish translation exists to-date.
  // I therefore created my own. If anyone's aware of an official version,
  // please open an issue.

  == 6WSHITJ
  @2210002 /* Ho! I see ye know yer liqies, me matey! */
  == OHNMIRON
  // slightly modified version of 12, as she talks to Shithri now,
  // so she doesn't give her any weird looks
  @2210003 /* I've had my share. MORE than my share, though not more than my fair share—any share is fair enough to me, be it more than a thimble. So—I'm yer average dwarf. Except for one thing, maybe... */
END OHNMIRON 13

// Implementation Note:
// State 13 leads to 8, which makes Mironda ask if you have
// any more questions. I (Udiknedormin) checked that another installation
// of BG2:EE had the very same string references even for EE-exclusive content,
// so it seems safe to assume that unless we're talking about EET (of which
// I have close to zero knowledge, at least regarding journal entry string
// numbers), it should be safe to simply add the same triggers to
// a new transition.
//
// Phew. Quite a long note to avoid an unwanted "Alice in the Wonderland"
// reference, wouldn't you say?
EXTEND_BOTTOM OHNMIRON 13
  IF ~
    IsValidForPartyDialog("6WSHITHRI")
  ~
    DO ~
      AddJournalEntry(94458,QUEST)
      SetGlobal("ohn_mironda_plot","global",1)
      RevealAreaOnMap("AR2000")
    ~
    GOTO 6W#ShithriDrinks__Mironda_initial_fin
END
APPEND OHNMIRON
  IF ~~ THEN 6W#ShithriDrinks__Mironda_initial_fin
    SAY @2210005 /* What about ye? Ca-something, was it? Want some rye? */
    COPY_TRANS OHNMIRON 0
  END
END

// After you give her the beer, you can ask to get one bottle of it.
// Doesn't matter if Shithri's available or not as long as you've started
// the drinks quest.
EXTEND_BOTTOM OHNMIRON 15
  IF ~
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
    !PartyHasItem("_6WDR21")
  ~
    REPLY @2210010 /* And I was hoping you could share a bottle with me? You see, I'm collecting fine liquors. */
    DO ~
      SetGlobal("ohn_mironda_plot","global",3)
      TakePartyItem("ohncask")
    ~
    GOTO 6W#ShithriDrinks__Mironda_liq_collector0
END
CHAIN OHNMIRON 6W#ShithriDrinks__Mironda_liq_collector0
  @2210011 /* But of course! Let me just... */
  DO ~
    GiveItemCreate("_6WDR21", Player1, 0, 0, 0) // halfling's help
  ~
  =
  @2210012 /* Here ye go! */
END OHNMIRON 16

EXTEND_BOTTOM OHNMIRON 19
  IF ~
    GlobalGT("6W#ShithriDrinksActive","GLOBAL",0)
    !PartyHasItem("_6WDR21")
  ~
    REPLY @2210020 /* I'll gladly have some, although I would prefer to get a bottle of it. You see, I'm collecting fine liquors. */
    GOTO 6W#ShithriDrinks__Mironda_liq_collector1
END
CHAIN OHNMIRON 6W#ShithriDrinks__Mironda_liq_collector1
  @2210011 /* But of course! Let me just... */
  DO ~
    GiveItemCreate("_6WDR21", Player1, 0, 0, 0) // halfling's help
  ~
  =
  @2210012 /* Here ye go! */
  =
  @2210013 /* Oh! Don't forget... */
COPY_TRANS OHNMIRON 19


/*
 * Drinks
 */

// Note: those are mostly based on canon material, but some details are added
// when no info was available.

// IMPLEMENTATION NOTE
//
// Most of the drinks follow the structure:
// description
//  0. (if you have enough money) we're buying it
//  1. sounds good but we can't afford it
//  2. no, I don't like it
//
// After each of those, Shithri asks if you're interested in anything else. That state uses strings from drink 99, so there are only 99 (from 0 to 98) drinks that can actually be handled. Drinks over 90 are the ones Shithri doesn't want to even talk about.
//
// Note that each drink (but for 99) already uses its zeroth string for its name, so the description is string no 1, not no 0.

//
// return to the store
// (coded as drink 99)
//

APPEND 6WSHITJ
  IF ~~ BEGIN liquors_more
    SAY @3990000 /* Any others ye be interested in? */

    IF ~
      Global("6W#ShithriDrinksRet","GLOBAL",0)
    ~ THEN
      REPLY @3990001 /* Are there any I could be interested in? */
      GOTO copper_coronet

    IF ~Global("6W#ShithriDrinksRet","GLOBAL",1)~ THEN
      REPLY @3990001 /* Are there any I could be interested in? */
      GOTO crooked_crane

    IF ~Global("6W#ShithriDrinksRet","GLOBAL",2)~ THEN
      REPLY @3990001 /* Are there any I could be interested in? */
      GOTO sea_bounty

    IF ~Global("6W#ShithriDrinksRet","GLOBAL",3)~ THEN
      REPLY @3990001 /* Are there any I could be interested in? */
      GOTO five_flagons

    IF ~Global("6W#ShithriDrinksRet","GLOBAL",4)~ THEN
      REPLY @3990001 /* Are there any I could be interested in? */
      GOTO delosars_inn

    IF ~Global("6W#ShithriDrinksRet","GLOBAL",5)~ THEN
      REPLY @3990001 /* Are there any I could be interested in? */
      GOTO mithrest_inn

    IF ~Global("6W#ShithriDrinksRet","GLOBAL",6)~ THEN
      REPLY @3990001 /* Are there any I could be interested in? */
      GOTO seven_vales

    IF ~Global("6W#ShithriDrinksRet","GLOBAL",7)~ THEN
      REPLY @3990001 /* Are there any I could be interested in? */
      GOTO umar_inn

    IF ~Global("6W#ShithriDrinksRet","GLOBAL",8)~ THEN
      REPLY @3990001 /* Are there any I could be interested in? */
      GOTO vulgar_monkey

    IF ~Global("6W#ShithriDrinksRet","GLOBAL",9)~ THEN
      REPLY @3990001 /* Are there any I could be interested in? */
      GOTO vyatris_pub

    // ...here go other inns & taverns, according to their codes

    IF ~~ THEN
      REPLY @3990099 /* I'm fine. Off we go! */
      EXIT
  END
END


//
//  0. Bitter Black Ale
//

APPEND 6WSHITJ
  IF ~~ BEGIN bitter_black_ale
    SAY @3000001 /* Ye from Sword Coast 'n nah know it? Quite heavy, but most like it that way. Best chilled. */

    IF ~!PartyGoldLT(8)~ THEN
      REPLY @3000002 /* Let's take it then. */
      DO ~
        TakePartyGold(8)
        DestroyGold(8)
        GiveItemCreate("_6WDR00", Player1, 0, 0, 0)
      ~
      GOTO bitter_black_ale__bought

    IF ~~ THEN
      REPLY @3000003 /* Too bad we can't afford it... */
      GOTO bitter_black_ale__no_money

    IF ~~ THEN
      REPLY @3000004 /* Sounds a bit too common. */
      GOTO bitter_black_ale__nah
  END

  IF ~~ BEGIN bitter_black_ale__bought
    SAY @3000020 /* Sure thingy. Swordies always love it. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN bitter_black_ale__no_money
    SAY @3000030 /* No worries, Swordie. We raise some coins 'n come back fer it. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN bitter_black_ale__nah
    SAY @3000040 /* Aye. I see yer taste be a bit more refined. */
    IF ~~ THEN GOTO liquors_more
  END
END


//
//  1. Shadowdark Ale
//

APPEND 6WSHITJ
  IF ~~ BEGIN shadowdark_ale
    SAY @3010001 /* Liked by the ladies, it be, aye. Creamy and sweety, got bit spicey aroma. */

    IF ~Gender(Player1,FEMALE)~ THEN
      REPLY @3010002 /* "Ladies"? Am I a "lady" to you then? */
      GOTO shadowdark_ale__is_pc_lady

    IF ~!PartyGoldLT(1)~ THEN
      REPLY @3010003 /* Well, if you say it's so liked. */
      DO ~
        TakePartyGold(1)
        DestroyGold(1)
        GiveItemCreate("_6WDR01", Player1, 0, 0, 0)
      ~
      GOTO shadowdark_ale__bought

    IF ~~ THEN
      REPLY @3010004 /* As sad as it sounds, I don't think we can afford it. */
      GOTO shadowdark_ale__no_money

    IF ~~ THEN
      REPLY @3010005 /* "Liked by ladies" doesn't quite cut it. */
      GOTO shadowdark_ale__nah
  END
  IF ~~ BEGIN shadowdark_ale__is_pc_lady
    SAY @3010020 /* Nah, ye nah common lass, capt'n. */

    IF ~!PartyGoldLT(1)~ THEN
      REPLY @3010003 /* Well, if you say it's so liked. */
      DO ~
        TakePartyGold(1)
        DestroyGold(1)
        GiveItemCreate("_6WDR01", Player1, 0, 0, 0)
      ~
      GOTO shadowdark_ale__bought

    IF ~~ THEN
      REPLY @3010004 /* As sad as it sounds, I don't think we can afford it. */
      GOTO shadowdark_ale__no_money

    IF ~~ THEN
      REPLY @3010005 /* "Liked by ladies" doesn't quite cut it. */
      GOTO shadowdark_ale__nah
  END

  IF ~~ BEGIN shadowdark_ale__bought
    SAY @3010030 /* It be, aye. Nah bad, really, nah bad. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN shadowdark_ale__no_money
    SAY @3010040 /* Har har har! 'tis true we be broke. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN shadowdark_ale__nah
    SAY @3010050 /* Ho? Now ye talk like a darin' bucko now, aye ye be! */
    IF ~~ THEN GOTO liquors_more
  END
END


//
//  2. Suz-Ale
//

APPEND 6WSHITJ
  IF ~~ BEGIN suz_ale
    SAY @3020001 /* Wha' fine ale, 'tis! Rich 'n nutty, best cold. One o' Cormyr's better ones, aye. */

    IF ~!PartyGoldLT(7)~ THEN
      REPLY @3020002 /* Rich and nutty? Count me in! */
      DO ~
        TakePartyGold(7)
        DestroyGold(7)
        GiveItemCreate("_6WDR02", Player1, 0, 0, 0)
      ~
      GOTO suz_ale__bought

    IF ~~ THEN
      REPLY @3020003 /* Sounds great, but I don't think we can afford it. */
      GOTO suz_ale__no_money
    IF ~~ THEN
      REPLY @3020004 /* Too sophisticated. Next! */
      GOTO suz_ale__nah
  END

  IF ~~ BEGIN suz_ale__bought
    SAY @3020020 /* 'tis me capt'n! */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN suz_ale__no_money
    SAY @3020030 /* Only swabs nah save coin fer Suz-Ale, aye they ain't. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN suz_ale__nah
    SAY @3020040 /* 'n here ye pretended so fancy... */
    IF ~~ THEN GOTO liquors_more
  END
END


//
//  3. Golden Sands
//

// IMPLEMENTATION NOTE
//
// Strangely enough, it looks like the following pattern doesn't work:
//  * state 0, set global "foo"
//  * state 1, state transitions check value of global "foo"
// ...but this one does:
//  * state 0, set global "foo"
//  * state 1
//  * state 2, state transitions check value of global "foo"
//
// That is why there isn't just a single state `golden_sands` with transitions
// depending on some global.
//
// In this case it's just a minor inconvenience, but it's good to have in mind
// that the engine doesn't handle this case as it could be expected.

APPEND 6WSHITJ
  IF ~~ BEGIN golden_sands__basic_only
    SAY @3030001 /* Only Golden Sands Basic here, but there are others elsewhere. */

    IF ~
      PartyHasItem("_6WDR03a")
    ~ GOTO liquors_more

    IF ~
      !PartyHasItem("_6WDR03a")
    ~ THEN
      GOTO golden_sands_basic
  END
  IF ~~ BEGIN golden_sands__gold_only
    SAY @3030101 /* Only Golden Sands Gold here, but there are others elsewhere. */

    IF ~
      PartyHasItem("_6WDR03b")
    ~ GOTO liquors_more

    IF ~
      !PartyHasItem("_6WDR03b")
    ~ THEN
      GOTO golden_sands_gold
  END
  IF ~~ BEGIN golden_sands__gold_or_orange
    SAY @3030201 /* They 'ave Gold 'n Orange ones here. Nah Basic though. */

    IF ~
      PartyHasItem("_6WDR03b")
      PartyHasItem("_6WDR03c")
    ~ GOTO liquors_more

    IF ~
      !PartyHasItem("_6WDR03b")
    ~ THEN
      REPLY @3030202 /* How about the Gold one? */
      GOTO golden_sands_gold

    IF ~
      !PartyHasItem("_6WDR03c")
    ~ THEN
      REPLY @3030203 /* How about the Orange one? */
      GOTO golden_sands_orange
  END

  IF ~~ BEGIN golden_sands_basic
    SAY @3030010 /* Clear lager, 'tis, aye. Crisp 'n light. */

    IF ~!PartyGoldLT(4)~ THEN
      REPLY @3030020 /* Clear lager, that's exactly what I wanted! */
      DO ~
        TakePartyGold(4)
        DestroyGold(4)
        GiveItemCreate("_6WDR03a", Player1, 0, 0, 0)
      ~
      GOTO golden_sands_basic__bought

    IF ~~ THEN
      REPLY @3030030 /* Would really be refreshing... if we could only afford it... */
      GOTO golden_sands_basic__no_money

    IF ~~ THEN
      REPLY @3030040 /* A little too plain to my taste. */
      GOTO golden_sands_basic__nah
  END

  IF ~~ BEGIN golden_sands_basic__bought
    SAY @3030021 /* Ho, ye like mild stuff then, aye. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN golden_sands_basic__no_money
    SAY @3030031 /* Refreshment be worth a coin, aye it be. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN golden_sands_basic__nah
    SAY @3030041 /* 'tis simple, aye. But also effective. */
    IF ~~ THEN GOTO liquors_more
  END


  IF ~~ BEGIN golden_sands_gold
    SAY @3030110 /* Mmm, desert's cacti 'n Daggerfort's nettles... sharp 'n refreshin', aye.. */

    // Delosar's - 3, Mithrest - 6
    IF ~
      !AreaCheck("AR0704")
      !PartyGoldLT(3)
    ~ THEN
      REPLY @3030120 /* Cacti and nettles sound like a good match. */
      DO ~
        SetGlobal("6W#ShithriDrinksKnowDrink03b","GLOBAL",1) // heard description
        TakePartyGold(3)
        DestroyGold(3)
        GiveItemCreate("_6WDR03b", Player1, 0, 0, 0)
      ~
      GOTO golden_sands_gold__bought

    IF ~
      AreaCheck("AR0704")
      !PartyGoldLT(6)
    ~ THEN
      REPLY @3030120 /* Cacti and nettles sound like a good match. */
      DO ~
        SetGlobal("6W#ShithriDrinksKnowDrink03b","GLOBAL",1) // heard description
        TakePartyGold(6)
        DestroyGold(6)
        GiveItemCreate("_6WDR03b", Player1, 0, 0, 0)
      ~
      GOTO golden_sands_gold__bought

    IF ~~ THEN
      REPLY @3030130 /* Would be cheaper to just go to Wood of Sharp Teeth and gather some nettle there... */
      DO ~
        SetGlobal("6W#ShithriDrinksKnowDrink03b","GLOBAL",1) // heard description
      ~
      GOTO golden_sands_gold__no_money

    IF ~~ THEN
      REPLY @3030140 /* Mixing ingredients from the north and south is a big no-no. */
      DO ~
        SetGlobal("6W#ShithriDrinksKnowDrink03b","GLOBAL",1) // heard description
      ~
      GOTO golden_sands_gold__nah
  END

  IF ~~ BEGIN golden_sands_gold__bought
    SAY @3030121 /* They be, indeed. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN golden_sands_gold__no_money
    SAY @3030131 /* Cheaper still t' brew yer own beer, har har. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN golden_sands_gold__nah
    SAY @3030141 /* Huh. Wha' be that? That some weird Swordie biases... */
    IF ~~ THEN GOTO liquors_more
  END


  IF ~~ BEGIN golden_sands_orange
    SAY @3030210 /* Light as the mornin' mist! Bit acidic, orange 'n currant flavored. */
    IF ~
      !PartyGoldLT(3)
    ~ THEN
      REPLY @3030220 /* Calimshite drink with Calimshite fruits. Sounds really authentic. */
      DO ~
        TakePartyGold(3)
        DestroyGold(3)
        GiveItemCreate("_6WDR03c", Player1, 0, 0, 0)
      ~
      GOTO golden_sands_orange__bought

    IF ~~ THEN
      REPLY @3030230 /* Maybe it could be made cheaper if they used... ehhh... I don't know... */
      GOTO golden_sands_orange__no_money

    IF ~~ THEN
      REPLY @3030240 /* No twist at all? *sigh* */
      GOTO golden_sands_orange__nah
  END

  IF ~~ BEGIN golden_sands_orange__bought
    SAY @3030221 /* Nay, nah really. But it popular on north Sword Coast, aye it be. */
    IF ~~ THEN GOTO liquors_more
  END

  IF ~~ BEGIN golden_sands_orange__no_money
    SAY @3030231 /* What exactly, I wonder? */

    IF ~~ THEN
      REPLY @3030232 /* Err... fenberries, maybe? */
      GOTO golden_sands_orange__fenberries

    IF ~
      OR(2)
        Class(Player1,RANGER_ALL)
        Class(Player1,DRUID_ALL)
    ~ THEN
      REPLY @3030233 /* Gooseberries. They are also but slightly acidic and grow in Tethyr, so they should be pretty cheap. */
      GOTO golden_sands_orange__gooseberries

    IF ~~ THEN
      REPLY @3030234 /* I'm no specialist in fruits, you know. I just like my sack to be full. */
      GOTO golden_sands_orange__full_sack
  END

  IF ~~ BEGIN golden_sands_orange__fenberries
    SAY @3030235 /* Fenberries. The "crimson gold" o' Ne'erwinter, ye mean? Cheap, those fenberries? Har har! Silly capt'n... */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN golden_sands_orange__gooseberries
    SAY @3030236 /* Mmm. Nah bad. Ye e'er though o' startin' a liqie business? Ye'd be good at that. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN golden_sands_orange__full_sack
    SAY @3030237 /* So why naggin'? Jus' 'ave something else. */
    IF ~~ THEN GOTO liquors_more
  END

  IF ~~ BEGIN golden_sands_orange__nah
    SAY @3030241 /* Nah need fer any. 'Tis good as it is. */
    IF ~~ THEN GOTO liquors_more
  END
END


//
//  4. Iriaeboran Ale
//

APPEND 6WSHITJ
  IF ~~ BEGIN iriaeboran_ale
    SAY @3040001 /* Mmm. "Bite o' the north winds", they call it. It quite mild though, 'tis jus' the aftertaste... it cold. */

    // 1 in Crooked Crane, 15 in Mithrest, AreaCheck("AR0704")

    IF ~
      !AreaCheck("AR0704")
      !PartyGoldLT(1)
    ~ THEN
      REPLY @3040002 /* Mild, but with ice-cold aftertaste. Sounds intriguing. */
      DO ~
        TakePartyGold(1)
        DestroyGold(1)
        GiveItemCreate("_6WDR04", Player1, 0, 0, 0)
      ~
      GOTO iriaeboran_ale__bought

    IF ~
      AreaCheck("AR0704")
      !PartyGoldLT(15)
    ~ THEN
      REPLY @3040002 /* Mild, but with ice-cold aftertaste. Sounds intriguing. */
      DO ~
        TakePartyGold(15)
        DestroyGold(15)
        GiveItemCreate("_6WDR04", Player1, 0, 0, 0)
      ~
      GOTO iriaeboran_ale__bought

    IF ~~ THEN
      REPLY @3040003 /* As cool as it sounds, we can't afford it. */
      GOTO iriaeboran_ale__no_money

    IF ~~ THEN
      REPLY @3040004 /* If I wanted to feel like I'm in Icewind Dale, I would simply go there. */
      GOTO iriaeboran_ale__nah
  END

  IF ~~ BEGIN iriaeboran_ale__bought
    SAY @3040020 /* As much as the north itself, aye it be. Good choice. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN iriaeboran_ale__no_money
    SAY @3040030 /* As broke as orcs in Spine o' the World, we be, aye. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN iriaeboran_ale__nah
    SAY @3040040 /* If winter be yer thin'. Jus' a sip be enough fer me. */
    IF ~~ THEN GOTO liquors_more
  END
END


//
//  5. Luiren's Best Ale
//

APPEND 6WSHITJ
  IF ~~ BEGIN luirens_best_ale
    SAY @3050001 /* From halflings, fer halflings. Black 'n heavy like the darkest night, but the aftertaste be quite sweet. */

    IF ~
      !PartyGoldLT(3)
      Race(Player1,HALFLING)
    ~ THEN
      REPLY @3050002 /* "From halflings, for halflings", I like that. */
      DO ~
        TakePartyGold(3)
        DestroyGold(3)
        GiveItemCreate("_6WDR05", Player1, 0, 0, 0)
      ~
      GOTO luirens_best_ale__bought_halfling

    IF ~
      !PartyGoldLT(3)
      !Race(Player1,HALFLING)
    ~ THEN
      REPLY @3050003 /* Halflings must know the good stuff, I guess? */
      DO ~
        TakePartyGold(3)
        DestroyGold(3)
        GiveItemCreate("_6WDR05", Player1, 0, 0, 0)
      ~
      GOTO luirens_best_ale__bought

    IF ~~ THEN
      REPLY @3050004 /* Too bad the halflings won't give it away for free. */
      GOTO luirens_best_ale__no_money

    IF ~~ THEN
      REPLY @3050005 /* Black like a night? Doesn't sound convincing. */
      GOTO luirens_best_ale__nah
  END

  IF ~~ BEGIN luirens_best_ale__bought_halfling
    SAY @3050020 /* Aye, it nah disappoint, I tell ye. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN luirens_best_ale__bought
    SAY @3050030 /* Depends on the halflin'. If they from Turmish - probably nah. Otherwise they good. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN luirens_best_ale__no_money
    SAY @3050040 /* Ye think halflings nah needin' earnings or wha'? */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN luirens_best_ale__nah
    SAY @3050050 /* 'Tis nah fer everybody, I say. */
    IF ~~ THEN GOTO liquors_more
  END
END


//
//  6. Tanagyr's Ale
//

APPEND 6WSHITJ
  IF ~~ BEGIN tanagyrs_ale
    SAY @3060001 /* Oh, me black, black stout! Nothin' as reminds o' home like ye! So heavy, so malty... got it everywhere on the Moonsea 'n Dragon Coast, but nah so common here. */

    IF ~!PartyGoldLT(10)~ THEN
      REPLY @3060002 /* I always wondered what do Zentish drink. */
      DO ~
        TakePartyGold(10)
        DestroyGold(10)
        GiveItemCreate("_6WDR06", Player1, 0, 0, 0)
      ~
      GOTO tanagyrs_ale__bought

    IF ~~ THEN
      REPLY @3060003 /* As much as I'd like to know what do Zentish drink, I don't think we can afford it. */
      GOTO tanagyrs_ale__no_money

    IF ~~ THEN
      REPLY @3060004 /* Sorry, Shithri, but the "Zentish" label isn't really the best way to sell a drink. */
      GOTO tanagyrs_ale__nah
  END

  IF ~~ BEGIN tanagyrs_ale__bought
    SAY @3060020 /* Nah the best reason t' try, but good enough. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN tanagyrs_ale__no_money
    SAY @3060030 /* Aye, it be bit pricey here. Another time, mayhaps. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN tanagyrs_ale__nah
    SAY @3060040 /* Can't say I nah get ye. Shame though, it be really nice stout. */
    IF ~~ THEN GOTO liquors_more
  END
END


//
//  7. Alurlyath Wine
//

APPEND 6WSHITJ
  IF ~~ BEGIN alurlyath_wine
    SAY @3070001 /* Capt'n, please! 'Tis "Undermountain Alurlyath", famous green wine that be glowin' in the dark. Very romantic sweet one, they say. */

    IF ~~ THEN
      REPLY @3070002 /* Glows in the dark?  */
      GOTO alurlyath_wine__glows

    // 6 in Sea Bounty, 12 in Mithrest, AreaCheck("AR0704")

    IF ~
      !AreaCheck("AR0704")
      !PartyGoldLT(6)
    ~ THEN
      REPLY @3070003 /* Sounds unique, indeed. Let's take some. */
      DO ~
        TakePartyGold(6)
        DestroyGold(6)
        GiveItemCreate("_6WDR07", Player1, 0, 0, 0)
      ~
      GOTO alurlyath_wine__bought

    IF ~
      AreaCheck("AR0704")
      !PartyGoldLT(12)
    ~ THEN
      REPLY @3070003 /* Sounds unique, indeed. Let's take some. */
      DO ~
        TakePartyGold(12)
        DestroyGold(12)
        GiveItemCreate("_6WDR07", Player1, 0, 0, 0)
      ~
      GOTO alurlyath_wine__bought

    IF ~~ THEN
      REPLY @3070004 /* Its price is quite... unique too. */
      GOTO alurlyath_wine__no_money

    IF ~~ THEN
      REPLY @3070005 /* Green wine? As if that could taste good! */
      GOTO alurlyath_wine__nah
  END

  IF ~~ BEGIN alurlyath_wine__glows
    SAY @3070020 /* Aye! 'ave a look, capt'n. See that greenish-silver glimmer? */

    IF ~
      !AreaCheck("AR0704")
      !PartyGoldLT(6)
    ~ THEN
      REPLY @3070021 /* It really does glow! We must definitely take some. */
      DO ~
        TakePartyGold(6)
        DestroyGold(6)
        GiveItemCreate("_6WDR07", Player1, 0, 0, 0)
      ~
      GOTO alurlyath_wine__bought

    IF ~
      AreaCheck("AR0704")
      !PartyGoldLT(12)
    ~ THEN
      REPLY @3070021 /* It really does glow! We must definitely take some. */
      DO ~
        TakePartyGold(12)
        DestroyGold(12)
        GiveItemCreate("_6WDR07", Player1, 0, 0, 0)
      ~
      GOTO alurlyath_wine__bought

    IF ~~ THEN
      REPLY @3070022 /* It's very pretty... but also very pricey. */
      GOTO alurlyath_wine__no_money

    IF ~~ THEN
      REPLY @3070023 /* It glows GREEN. Who wants wine to glow GREEN? */
      GOTO alurlyath_wine__nah
  END

  IF ~~ BEGIN alurlyath_wine__bought
    SAY @3070030 /* *smirk* I knew ye be likin' that. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN alurlyath_wine__no_money
    SAY @3070040 /* Jus' the moon's glow fer us then, aye? */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN alurlyath_wine__nah
    SAY @3070050 /* Ye got anythin' against green, me capt'n? I hope nah. */
    IF ~~ THEN GOTO liquors_more
  END
END


//
//  8. Arabellan Wine
//

APPEND 6WSHITJ
  IF ~~ BEGIN arabellan_wine
    SAY @3080001 /* Oh, that dry one! Mmm, woodsy. Some berry in the background. Great fer braisin' boar. */

    // 7 in all but AreaCheck("AR0513"), where it's 13

    IF ~
      !AreaCheck("AR0513")
      !PartyGoldLT(7)
    ~ THEN
      REPLY @3080002 /* Taste of the forest then. Sounds good. */
      DO ~
        SetGlobal("6W#ShithriDrinksKnowDrink08","GLOBAL",1) // heard description
        TakePartyGold(7)
        DestroyGold(7)
        GiveItemCreate("_6WDR08", Player1, 0, 0, 0)
      ~
      GOTO arabellan_wine__bought

    IF ~
      AreaCheck("AR0513")
      !PartyGoldLT(13)
    ~ THEN
      REPLY @3080002 /* Taste of the forest then. Sounds good. */
      DO ~
        SetGlobal("6W#ShithriDrinksKnowDrink08","GLOBAL",1) // heard description
        TakePartyGold(13)
        DestroyGold(13)
        GiveItemCreate("_6WDR08", Player1, 0, 0, 0)
      ~
      GOTO arabellan_wine__bought

    IF ~~ THEN
      REPLY @3080003 /* I'd love some wine-braised boar. But you know, money. */
      DO ~
        SetGlobal("6W#ShithriDrinksKnowDrink08","GLOBAL",1) // heard description
      ~
      GOTO arabellan_wine__no_money

    IF ~~ THEN
      REPLY @3080004 /* Cooking wine? Huh! */
      DO ~
        SetGlobal("6W#ShithriDrinksKnowDrink08","GLOBAL",1) // heard description
      ~
      GOTO arabellan_wine__nah
  END

  IF ~~ BEGIN arabellan_wine__bought
    SAY @3080020 /* Nah exactly. But as close as Cormyrians get, aye. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN arabellan_wine__no_money
    SAY @3080030 /* Another time, capt'n. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN arabellan_wine__nah
    SAY @3080040 /* Cookin' and jus' drinkin'. Good both ways. But ye do ye. */
    IF ~~ THEN GOTO liquors_more
  END
END


//
//  9. Evermead
//

APPEND 6WSHITJ
  IF ~~ BEGIN evermead
    SAY @3090001 /* Pure gold 'n whatnah nobles say about it. Everythin' fancy: rose petals, cherries, orchid fruits - ye name it. */

    IF ~~ THEN
      REPLY @3090002 /* Orchid fruits? Do you mean vanilla? */
      GOTO evermead__vanila

    // 30 gp, but for AreaCheck("AR0513"), where it's 20 gp

    IF ~
      !AreaCheck("AR0513")
      !PartyGoldLT(30)
    ~ THEN
      REPLY @3090003 /* The noblest of liquors... how could I not try that at least once in my lifetime? */
      DO ~
        TakePartyGold(30)
        DestroyGold(30)
        GiveItemCreate("_6WDR09", Player1, 0, 0, 0)
      ~
      GOTO evermead__bought

    IF ~
      AreaCheck("AR0513")
      !PartyGoldLT(20)
    ~ THEN
      REPLY @3090003 /* The noblest of liquors... how could I not try that at least once in my lifetime? */
      DO ~
        TakePartyGold(20)
        DestroyGold(20)
        GiveItemCreate("_6WDR09", Player1, 0, 0, 0)
      ~
      GOTO evermead__bought

    IF ~~ THEN
      REPLY @3090004 /* I see its price is also... *grunt* ...noble. */
      GOTO evermead__no_money

    IF ~~ THEN
      REPLY @3090005 /* Sounds like just putting all the expensive stuff together. That can't be good. */
      GOTO evermead__nah
  END

  IF ~~ THEN BEGIN evermead__vanila
    SAY @3090020 /* Aye. "Vanilla". As I be sayin' - everythin' fancy. Prolly sun elf's idea, I say. */

    IF ~!PartyGoldLT(30)~ THEN
      REPLY @3090003 /* The noblest of liquors... how could I not try that at least once in my lifetime? */
      DO ~
        TakePartyGold(30)
        DestroyGold(30)
        GiveItemCreate("_6WDR09", Player1, 0, 0, 0)
      ~
      GOTO evermead__bought

    IF ~~ THEN
      REPLY @3090004 /* I see its price is also... *grunt* ...noble. */
      GOTO evermead__no_money

    IF ~~ THEN
      REPLY @3090005 /* Sounds like just putting all the expensive stuff together. That can't be good. */
      GOTO evermead__nah
  END

  IF ~~ BEGIN evermead__bought
    SAY @3090030 /* Huh, playin' noble<PRO_MANWOMAN> then? Ne'er thought o' ye like that, nay. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN evermead__no_money
    SAY @3090040 /* Aye. Costin' more than a good armor, aye it be! Har har! */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN evermead__nah
    SAY @3090050 /* They say 'tis fine stuff. But this bucko nah so sure ye're wrong on that one. */
    IF ~~ THEN GOTO liquors_more
  END
END


//
// 10. Westgate Wine
//

APPEND 6WSHITJ
  IF ~~ BEGIN westgate_wine
    SAY @3100001 /* Ho, ne'er gonna forget the Beef 'n Oysters Barnabas! But fits well wit' dwarvish stews too, that bold, crimson liqie, aye. */ 

    IF ~!PartyGoldLT(8)~ THEN
      REPLY @3100002 /* So basically one wine to rule all them beef dishes? Fantastic! */
      DO ~
        TakePartyGold(8)
        DestroyGold(8)
        GiveItemCreate("_6WDR10", Player1, 0, 0, 0)
      ~
      GOTO westgate_wine__bought

    IF ~~ THEN
      REPLY @3100003 /* I'm afraid it's either the wine or the beef for us... */
      GOTO westgate_wine__no_money

    IF ~~ THEN
      REPLY @3100004 /* Beef goes best with beer, not wine. We don't need it. */
      GOTO westgate_wine__nah
  END

  IF ~~ BEGIN westgate_wine__bought
    SAY @3100020 /* Now we only need a fine dwarvish cook t' prepare some stew, I say! */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN westgate_wine__no_money
    SAY @3100030 /* Let us get some coin then. Beef ain't in love wit' dry throats. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN westgate_wine__nah
    SAY @3100040 /* Says the land-lubber who ne'er had any specialty from the Sea o' the Fallen Stars. */
    IF ~~ THEN GOTO liquors_more
  END
END


//
// 11. Saerloonian Wine
//

APPEND 6WSHITJ
  IF ~~ BEGIN saerloonian_wine
    SAY @3110001 /* Precision, me capt'n. 'Tis Saerloonian Topaz, the amber one that combines nutty 'n fruity. Fine liqie, fits well wit' rabbit. But nah t' be confused wit' their red wine, Saerloonian Special Vat, or the famous glowin' white wine, Saerloonian Glowfire. */

    IF ~!PartyGoldLT(15)~ THEN
      REPLY @3110002 /* Nutty AND fruity? Consider me interested. */
      DO ~
        TakePartyGold(15)
        DestroyGold(15)
        GiveItemCreate("_6WDR11", Player1, 0, 0, 0)
        // the description says of Special Vat
        SetGlobal("6W#ShithriDrinksKnowDrinkSpecialVat","GLOBAL",1) // heard description
      ~
      GOTO saerloonian_wine__bought

    IF ~~ THEN
      REPLY @3110003 /* Either way, we can't afford any of them, I'm afraid. */
      GOTO saerloonian_wine__no_money

    IF ~
      OR(3)
        Class(Player1,RANGER_ALL)
        Class(Player1,DRUID_ALL)
        Kit(Player1,BARBARIAN)
    ~ THEN
      REPLY @3110004 /* Rabbit need no wine. Just fire. */
      GOTO saerloonian_wine__nah_just_fire

    IF ~
    ~ THEN
      REPLY @3110005 /* Yellow wine used for game... doesn't sound very appetizing. */
      GOTO saerloonian_wine__nah_sounds_bad
  END

  IF ~~ BEGIN saerloonian_wine__bought
    SAY @3110020 /* Good choice. One o' the best Sembian wines, 'tis. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN saerloonian_wine__no_money
    SAY @3110030 /* Prolly, aye. The others be e'en more pricey. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN saerloonian_wine__nah_just_fire
    SAY @3110040 /* Betta jus' try it. Then tell this bucko if ye still think that. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN saerloonian_wine__nah_sounds_bad
    SAY @3110050 /* Ye clearly nah know much about rabbits, do ye? */
    IF ~~ THEN GOTO liquors_more
  END
END


//
// 12. Berduskan Wine
//

APPEND 6WSHITJ
  IF ~~ BEGIN berduskan_wine
    SAY @3120001 /* Oh, that one be plenty strong! Dark, heavy. Seems sweet at first but then stabs ye wit' its burnin' aftertaste, aye! Goes well wit' prawns 'n quail eggs. */

    // 14 gp in Trademeet, 8 gp in Mithrest (AR0704)

    IF ~
      !AreaCheck("AR0704")
      !PartyGoldLT(14)
    ~ THEN
      REPLY @3120002 /* Sweet? Check. Burning? Check. Strong? Check. */
      DO ~
        TakePartyGold(14)
        DestroyGold(14)
        GiveItemCreate("_6WDR12", Player1, 0, 0, 0)
      ~
      GOTO berduskan_wine__bought

    IF ~
      AreaCheck("AR0704")
      !PartyGoldLT(8)
    ~ THEN
      REPLY @3120002 /* Sweet? Check. Burning? Check. Strong? Check. */
      DO ~
        TakePartyGold(8)
        DestroyGold(8)
        GiveItemCreate("_6WDR12", Player1, 0, 0, 0)
      ~
      GOTO berduskan_wine__bought

    IF ~~ THEN
      REPLY @3120003 /* Almost as pricey as quail eggs and prawns themselves... */
      GOTO berduskan_wine__no_money

    IF ~
    ~ THEN
      REPLY @3120004 /* I'd prefer some more... subtle taste. */
      GOTO berduskan_wine__nah
  END

  IF ~~ BEGIN berduskan_wine__bought
    SAY @3120020 /* Har har! Now ye talkin' like a darin bucko, yarrr! */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN berduskan_wine__no_money
    SAY @3120030 /* Huh? Prawns be pricey? They 'ave lots o' them jus' south o' here. Port Kir, Tethyr. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN berduskan_wine__nah
    SAY @3120040 /* Oh, ain't ye? So fancy, ye be. */
    IF ~~ THEN GOTO liquors_more
  END
END


//
// 13. Winter Wine
//

APPEND 6WSHITJ
  IF ~~ BEGIN winter_wine
    SAY @3130001 /* That purplish one be made from grapes freezed on the vine. Can't nah be plenty strong, I say. Good fer desserts. */

    // 15 gp in Brynnlaw's Inn, 11 gp in Mithrest (AR0704)

    IF ~
      !AreaCheck("AR0704")
      !PartyGoldLT(15)
    ~ THEN
      REPLY @3130002 /* North dessert wine, no need to tell me more! */
      DO ~
        TakePartyGold(15)
        DestroyGold(15)
        GiveItemCreate("_6WDR13", Player1, 0, 0, 0)
      ~
      GOTO winter_wine__bought

    IF ~
      AreaCheck("AR0704")
      !PartyGoldLT(11)
    ~ THEN
      REPLY @3130002 /* North dessert wine, no need to tell me more! */
      DO ~
        TakePartyGold(11)
        DestroyGold(11)
        GiveItemCreate("_6WDR13", Player1, 0, 0, 0)
      ~
      GOTO winter_wine__bought

    IF ~~ THEN
      REPLY @3130003 /* Are these grapes freezed with gold flakes or something along those lines? */
      GOTO winter_wine__no_money

    IF ~
    ~ THEN
      REPLY @3130004 /* I don't eat desserts. */
      GOTO winter_wine__nah_desserts

    IF ~
    ~ THEN
      REPLY @3130005 /* Grapes need sun, not cold. */
      GOTO winter_wine__nah_grapes_need_sun
  END

  IF ~~ BEGIN winter_wine__bought
    SAY @3130020 /* Ho, so ye 'ave a sweet tooth, ain't ye? Good t' know. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN winter_wine__no_money
    SAY @3130030 /* 'Tis not so easy t' make wine o' frozen grapes, ye know. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN winter_wine__nah_desserts
    SAY @3130040 /* Quite common custom, I say. Lots o' sea dogs ain't too. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN winter_wine__nah_grapes_need_sun
    SAY @3130050 /* That why it so pricey, this wine. Nah so easy t' make wine o' frozen grapes. */
    IF ~~ THEN GOTO liquors_more
  END
END


//
// 14. Dragon's Beer
//

APPEND 6WSHITJ
  IF ~~ BEGIN dragons_beer
    SAY @3140001 /* Ye know how Cormyr has dragon in its coats o' arms? Few know Sembia has a dragon also. They be that proud o' this liqie. Nice foams, harsh flavor. Best one fer rye bread 'n cheese. */

    // 1 gp elsewhere, 9 in Mithrest (AR0704)

    IF ~
      !AreaCheck("AR0704")
      !PartyGoldLT(1)
    ~ THEN
      REPLY @3140002 /* Rye bread, cheese and beer - what else would I need? */
      DO ~
        TakePartyGold(1)
        DestroyGold(1)
        GiveItemCreate("_6WDR14", Player1, 0, 0, 0)
      ~
      GOTO dragons_beer__bought

    IF ~
      AreaCheck("AR0704")
      !PartyGoldLT(9)
    ~ THEN
      REPLY @3140002 /* Rye bread, cheese and beer - what else would I need? */
      DO ~
        TakePartyGold(9)
        DestroyGold(9)
        GiveItemCreate("_6WDR14", Player1, 0, 0, 0)
      ~
      GOTO dragons_beer__bought

    IF ~~ THEN
      REPLY @3140003 /* Sounds very satisfying, but we can't really afford that kind of thing. Not unless we stay at countryside. */
      GOTO dragons_beer__no_money

    IF ~
    ~ THEN
      REPLY @3140004 /* Cheese goes with wine, not beer. */
      GOTO dragons_beer__nah
  END

  IF ~~ BEGIN dragons_beer__bought
    SAY @3140020 /* Har har, nothin' more at all, me capt'n. That be the comfy meal we all need. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN dragons_beer__no_money
    SAY @3140030 /* Why nah then? We could stay fer a few days. Some time. Some time. */
    IF ~~ THEN GOTO liquors_more
  END
  IF ~~ BEGIN dragons_beer__nah
    SAY @3140040 /* I guess ye ne'er had the Sembian cheese then. */
    IF ~~ THEN GOTO liquors_more
  END
END



//
// 90. Elminster's Beer
//

APPEND 6WSHITJ
  IF ~~ BEGIN elminsters_beer
    SAY @3900001 /* Avast, me capt'n! I hope ye jus' jestin' - or be ye really wantin' that dark, cloudy slop? */

    IF ~~ THEN
      REPLY @3900002 /* What's wrong with it? */
      GOTO elminsters_beer__whats_wrong

    IF ~~ THEN
      REPLY @3900003 /* I mean - Elminster can't be wrong on that one, can he? */
      GOTO elminsters_beer__elminster

    IF ~~ THEN
      REPLY @3900004 /* Relax, Shithri, it's a joke. Have some faith in your captain! */
      GOTO elminsters_beer__joke
  END

  IF ~~ THEN BEGIN elminsters_beer__whats_wrong
    SAY @3900020 /* Capt'n. Fer all the devils - if ye really want t' drink that, jus' mix water wit' tar 'n smoke that o'er rotten wood. That be how it tastes. */

    IF ~~ THEN
      REPLY @3900021 /* So dark, thick, cloudy and with smokey aftertaste? Doesn't sound that bad if you ask me. */
      GOTO elminsters_beer__not_so_bad

    IF ~~ THEN
      REPLY @3900003 /* I mean - Elminster can't be wrong on that one, can he? */
      GOTO elminsters_beer__elminster

    IF ~~ THEN
      REPLY @3900022 /* Well, if you say so... */
      GOTO liquors_more
  END

  IF ~~ THEN BEGIN elminsters_beer__not_so_bad
    SAY @3900023 /* Nay. No, nay, ne'er. No nay ne'er no more speak o' that trash o' a beer when this bucko be around! *spits* */
    // You know that Irish folk song?
    // https://www.youtube.com/watch?v=bYPuz0EYPSo

    IF ~~ THEN
      REPLY @3900090 /* Got it. */
      GOTO liquors_more

    IF ~~ THEN
      REPLY @3900091 /* Ok, I won't SPEAK of it. But we're still taking a bottle. */
      DO ~
        TakePartyGold(1)
        DestroyGold(1)
        GiveItemCreate("_6WDR90", Player1, 0, 0, 0)
      ~
      GOTO elminsters_beer__swab

    IF ~PartyGoldLT(1)~ THEN GOTO liquors_more
  END

  IF ~~ THEN BEGIN elminsters_beer__swab
    SAY @3900099 /* *gulp* Wha' a swab... */
    IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN elminsters_beer__elminster
    SAY @3900030 /* Capt'n. Oh me capt'n... ye e'er met Elminster? */

    IF ~~ THEN
      REPLY @3900031 /* Well, actually... */
      GOTO elminsters_beer__elminster_nah

    IF ~~ THEN
      REPLY @3900032 /* What if I did? */
      GOTO elminsters_beer__elminster_nah

    IF ~~ THEN
      REPLY @3900033 /* Your point being? */
      GOTO elminsters_beer__elminster_nah
  END

  IF ~~ THEN BEGIN elminsters_beer__elminster_nah
    SAY @3900034 /* They call it "Elminster's Choice" jus' t' sell it, capt'n. The guy ne'er drinks it. */

    IF ~~ THEN
      REPLY @3900035 /* That's just...! */
      GOTO elminsters_beer__infuriating

    IF ~~ THEN
      REPLY @3900036 /* Could've expected that, I suppose. */
      GOTO elminsters_beer__couldve_expected

    IF ~~ THEN
      REPLY @3900004 /* Relax, Shithri, it's a joke. Have some faith in your captain! */
      GOTO elminsters_beer__joke
  END

  IF ~~ THEN BEGIN elminsters_beer__infuriating
    SAY @3900037 /* Aye. It be. */

    IF ~~ THEN
      REPLY @3900092 /* You convinced me. */
      GOTO liquors_more

    IF ~~ THEN
      REPLY @3900093 /* Well, even if Elminster doesn't really drink it, we'll still take a bottle. */
      DO ~
        TakePartyGold(1)
        DestroyGold(1)
        GiveItemCreate("_6WDR90", Player1, 0, 0, 0)
      ~
      GOTO elminsters_beer__swab

    IF ~PartyGoldLT(1)~ THEN GOTO liquors_more
  END
  IF ~~ THEN BEGIN elminsters_beer__couldve_expected
    SAY @3900038 /* See? Works well fer them bastards. */

    IF ~~ THEN
      REPLY @3900092 /* You convinced me. */
      GOTO liquors_more

    IF ~~ THEN
      REPLY @3900093 /* Well, even if Elminster doesn't really drink it, we'll still take a bottle. */
      DO ~
        TakePartyGold(1)
        DestroyGold(1)
        GiveItemCreate("_6WDR90", Player1, 0, 0, 0)
      ~
      GOTO elminsters_beer__swab

    IF ~PartyGoldLT(1)~ THEN GOTO liquors_more
  END

  IF ~~ THEN BEGIN elminsters_beer__joke
    SAY @3900040 /* Har har, wha' savage joke it be, me capt'n! Ye got this bucko right here, aye ye did! */
    IF ~~ THEN GOTO liquors_more
  END
END


//
// Seaman-related dialogues
//

// ShithriDrinksActive:
//  * 1 - still gathering the liquors
//  * 2 - agreed to the duel
//  * 3 - denied the duel, no coming back!
//  * 4 - during duel
//  * 5 - after duel
//
// ShithriDrinksStakes:
//  * 0 - no info on stakes
//  * 1 - if you win, "you pick what you want"
//  * 2 - equal stakes, i.e. 5000 gp
//
// ShithriDrinksReward:
//  * 0 - no reward (didn't win)
//  * 1 - gold
//  * 2 - cutlass
//  * 3 - bandana

// If Shithri's not in the party, location or can't talk,
// the seaman has nothing interesting to say.
APPEND 6WPIRDR
  IF ~
    !Global("6W#ShithriDrinksActive","GLOBAL",2)
    !IsValidForPartyDialog("6WSHITHRI")
  ~ THEN 6W#ShithriDrinksSeaman__initial_nah
    SAY @5000000 /* Nah talkin' t' ye lubbers. Pff! *gulp* */
    IF ~~ THEN EXIT
  END
END

CHAIN IF ~
  Global("6W#ShithriDrinksActive","GLOBAL",1)
  IsValidForPartyDialog("6WSHITHRI")
  InMyArea(Player1)
  InMyArea("THUMB")
~ THEN 6WPIRDR 6W#ShithriDrinksSeaman__initial
  @5000010 /* Oy, look who's there! Ain't that lil Shithri? */
  == 6WSHITJ
  @5000011 /* Franky the Eye-Popper? Be that ye? How'd ye been, matey? */
  // If you couldn't tell: the person who inspired Popeye's author
  // was a Pole, Frank "Rocky" Fiegel.
  //
  // The Polish version is Ferdek instead, as the early translations
  // of Popeye comis strips translated him either as „żeglarz Kubuś”
  // (Jake the sailor) or Ferdek (Freddie).
  == 6WPIRDR
  @5000012 /* Nah bad, nah bad. Been sailin' between Amn 'n Calimshan quite lot these days... Betta than ye, it seems. Who's that lubber o'er there? */
  == 6WSHITJ
  @5000014 /* That? That be me capt'n. Capt'n, meet Franky. */
  == 6WPIRDR
  @5000015 /* "Capt'n"? Har har! That a good one! Shithri, me lil rapscallion. Why nah ye join me instead of playin' wit' that lubber? */
  == 6WSHITJ
  @5000017 /* Capt'n be alright, Franky. */

  // Implementation Note:
  // Unfortunately, it seems that it's not possible to provide two different texts
  // (and voiceovers) for a single state in case of the English language depending
  // on the PC's gender. Therefore, two separate states must be used.
  == 6WPIRDR IF ~Gender(Player1,MALE)~
  @5000018 /* Aye, sure thing! That lubber who had dwarvish grog once or twice 'n already thinks he's a sailor, har har! Shithri, ye lil jester, 'ave some mercy fer an old man's stomach! */
  == 6WPIRDR IF ~!Gender(Player1,MALE)~
  @5000019 /* Aye, sure thing! That lubber who had dwarvish grog once or twice 'n already thinks she's a sailor, har har! Shithri, ye lil jester, 'ave some mercy fer an old man's stomach! */
END
  IF ~~ THEN
    REPLY @5000020 /* Nice to meet you too, Franky. I'm <CHARNAME>. */
    GOTO 6W#ShithriDrinksSeaman__nice_to_meet_you
  IF ~~ THEN
    REPLY @5000021 /* Not to brag, but I'm actually quite an expert when it comes to liquors. */
    GOTO 6W#ShithriDrinksSeaman__im_expert
  IF ~~ THEN
    REPLY @5000022 /* Let's not waste our time on that man. We have stuff to do. */
    GOTO 6W#ShithriDrinksSeaman__wasting_time

APPEND 6WPIRDR
  // Note: the quest ends here!
  IF ~~ THEN 6W#ShithriDrinksSeaman__wasting_time
    SAY @5000030 /* I bet ye do, lubber! Pff. Shithri, mate, if ye reconsider - ye know where t' find me. */
    IF ~~ THEN
      UNSOLVED_JOURNAL @9000015 /* Shithri-inspired liquor collection

We met Shithri's old friend, Franky the Eye-Popper, in Sea's Bounty tavern. He insulted me, probably looking for a fight, but I won't waste my time on an old drunkard. */
      DO ~
        SetGlobal("6W#ShithriDrinksActive","GLOBAL",3)
      ~
      EXIT
  END

  IF ~~ THEN 6W#ShithriDrinksSeaman__im_expert
    SAY @5000035 /* Ho? 'n wha' makes ye think that? */

    IF ~~ THEN
      REPLY @5000036 /* Well, I mean: how difficult can it be to be better than someone like you? */
      GOTO 6W#ShithriDrinksSeaman__better_than_you

    IF ~~ THEN
      REPLY @5000041 /* That is no concern of yours. */
      GOTO 6W#ShithriDrinksSeaman__not_your_concern
  END

  IF ~~ THEN 6W#ShithriDrinksSeaman__nice_to_meet_you
    SAY @5000040 /* Oh, 'n who be ye, huh? */

    IF ~~ THEN
      REPLY @5000041 /* That is no concern of yours. */
      GOTO 6W#ShithriDrinksSeaman__not_your_concern

    IF ~~ THEN
      REPLY @5000042 /* You heard my trusty bosun. I'm her captain. */
      GOTO 6W#ShithriDrinksSeaman__her_captain

    IF ~~ THEN
      REPLY @5000043 /* I'm someone who knows <PRO_HISHER> liquors better than you do. */
      GOTO 6W#ShithriDrinksSeaman__better_than_you
  END

  IF ~~ THEN 6W#ShithriDrinksSeaman__not_your_concern
    SAY @5000050 /* Aye, it ain't. *gulp* Good luck wit' yer lubbin' then. Shithri, mate, if ye reconsider - ye know where t' find me. */
    IF ~~ THEN
      UNSOLVED_JOURNAL @9000015 /* Shithri-inspired liquor collection

We met Shithri's old friend, Franky the Eye-Popper, in Sea's Bounty tavern. He insulted me, probably looking for a fight, but I won't waste my time on an old drunkard. */
      DO ~
        SetGlobal("6W#ShithriDrinksActive","GLOBAL",3)
      ~
      EXIT
  END

  IF ~~ THEN 6W#ShithriDrinksSeaman__her_captain
    SAY @5000060 /* Ye sure be! I bet ye got lotta experience on the sea, har har. */

    IF ~~ THEN
      REPLY @5000041 /* That is no concern of yours. */
      GOTO 6W#ShithriDrinksSeaman__not_your_concern

    IF ~~ THEN
      REPLY @5000061 /* Well, I bet even a land-lubber like me knows my liquors better than you do. */
      GOTO 6W#ShithriDrinksSeaman__better_than_you
  END

  IF ~~ THEN 6W#ShithriDrinksSeaman__better_than_you
    SAY @5000070 /* Wha' ye said, ye swab?! */

    IF ~~ THEN
      REPLY @5000071 /* What you heard, dog. I bet I know my liquors better than you do. */
      GOTO 6W#ShithriDrinksSeaman__better_than_you_1

    IF ~~ THEN
      REPLY @5000072 /* I said what I said. */
      GOTO 6W#ShithriDrinksSeaman__better_than_you_1
  END

  IF ~~ THEN 6W#ShithriDrinksSeaman__better_than_you_1
    SAY @5000080 /* I warn ye, ye bildge rat. I nah be called Franky the Eye-Popper fer naught. */

    IF ~~ THEN
      REPLY @5000081 /* Oh? So you admit you can only beat me by fist and not by skill? */
      GOTO 6W#ShithriDrinksSeaman__better_than_you_2

    IF ~~ THEN
      REPLY @5000082 /* Bring it on, Franky the Popped-Eye! */
      UNSOLVED_JOURNAL @9000016 /* Shithri-inspired liquor collection

  We met Shithri's old friend, Franky the Eye-Popper, in Sea's Bounty tavern. He insulted me, so we got into a serious fight. And not just for words. */
      DO ~
        SetGlobal("6W#ShithriDrinksActive","GLOBAL",3)
        Enemy()
        Attack(Player1)
      ~
      EXIT
  END
END

CHAIN 6WPIRDR 6W#ShithriDrinksSeaman__better_than_you_2
  @5000085 /* Ho! I see ye got a big mouth. Fine, let's see if ye as good as ye say. The Thumb be judgin'. */
  == THUMB
  @5000086 /* Wha' the Thumb hears? A drinkin' duel, be it? */
  == 6WPIRDR
  @5000087 /* So wha' ye say, Shithri's "cap'tn"? */
END
  IF ~~ THEN
    REPLY @5000090 /* Fine by me. */
    GOTO 6W#ShithriDrinksSeaman__accept
  IF ~~ THEN
    REPLY @5000091 /* I won't waste my time on you. */
    GOTO 6W#ShithriDrinksSeaman__all_talk

APPEND 6WPIRDR
  IF ~~ THEN 6W#ShithriDrinksSeaman__all_talk
    SAY @5000095 /* Huh! Thought so - ye jus' all talk. *gulp* Good luck wit' yer lubbin' then. Shithri, matey, if ye reconsider - ye know where t' find me. */
    IF ~~ THEN
      UNSOLVED_JOURNAL @9000015 /* Shithri-inspired liquor collection

We met Shithri's old friend, Franky the Eye-Popper, in Sea's Bounty tavern. He insulted me, probably looking for a fight, but I won't waste my time on an old drunkard. */
      DO ~
        SetGlobal("6W#ShithriDrinksActive","GLOBAL",3)
      ~
      EXIT
  END

  IF ~~ THEN 6W#ShithriDrinksSeaman__accept
    SAY @5000100 /* Good! *gulp* Here be me rules: I try three o' yers, ye try three o' mine. I win - ye gimme some nice, round figure. Like 5000 gold pieces, says me. Fair enough? */

    IF ~~ THEN
      REPLY @5000101 /* Sure. I accept your rules. */
      DO ~
        SetGlobal("6W#ShithriDrinksActive","GLOBAL",2)
      ~
      GOTO 6W#ShithriDrinksSeaman__accept_rules

    IF ~~ THEN
      REPLY @5000102 /* And what if I win? */
      DO ~
        SetGlobal("6W#ShithriDrinksStakes","GLOBAL",1)
      ~
      GOTO 6W#ShithriDrinksSeaman__what_if_i_win

    IF ~~ THEN
      REPLY @5000103 /* After giving it a second thought, I won't waste my time on you. */
      GOTO 6W#ShithriDrinksSeaman__all_talk
  END

  IF ~~ THEN 6W#ShithriDrinksSeaman__what_if_i_win
    SAY @5000110 /* If ye win? Har har! If that e'er happens, ye pick wha' ye want. */

    IF ~~ THEN
      REPLY @5000111 /* Fine. I accept your rules. */
      UNSOLVED_JOURNAL @9000010 /* Shithri-inspired liquor collection

We met Shithri's old friend, Franky the Eye-Popper, in Sea's Bounty tavern. He dared to suggest I know nothing about fine liquors, so I got him to challenge me for a duel. If I lose, I'll need to pay 5000 gold pieces. */
      DO ~
        SetGlobal("6W#ShithriDrinksActive","GLOBAL",2)
      ~
      GOTO 6W#ShithriDrinksSeaman__accept_rules

    IF ~~ THEN
      REPLY @5000112 /* Make it 5000 gold too and we're fine. */
      DO ~
        SetGlobal("6W#ShithriDrinksStakes","GLOBAL",2)
      ~
      EXTERN ~6WSHITJ~ 6W#ShithriDrinksSeaman__shithri_stake_rethink

    IF ~~ THEN
      REPLY @5000103 /* After giving it a second thought, I won't waste my time on you. */
      GOTO 6W#ShithriDrinksSeaman__all_talk
  END
END

APPEND 6WSHITJ
  IF ~~ THEN 6W#ShithriDrinksSeaman__shithri_stake_rethink
    SAY @5000120 /* Capt'n? May I 'ave this bucko talk t' ye fer a moment? */
    =
    @5000121 /* Franky be plenty strong, though he nah look like it. Some say it cause o' how much spinach he eats, but I nah believe that. He prolly be 'avin' some item that makes 'im strong. */

    IF ~~ THEN
      REPLY @5000122 /* Like gloves or belt? */
      // ;)
      GOTO 6W#ShithriDrinksSeaman__shithri_like_gloves_or_belt

    IF ~~ THEN
      REPLY @5000123 /* Doesn't matter. 5000 gold pieces is a fair reward. */
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksSeaman__same_stake
  END

  IF ~~ THEN 6W#ShithriDrinksSeaman__shithri_like_gloves_or_belt
    SAY @5000125 /* Aye. Somethin' o' that kind. */

    IF ~~ THEN
      REPLY @5000126 /* Well, in that case... Hey, Franky! I will pick what I want then I win, after all. I accept your rules. */
      UNSOLVED_JOURNAL @9000011 /* Shithri-inspired liquor collection

We met Shithri's old friend, Franky the Eye-Popper, in Sea's Bounty tavern. He dared to suggest I know nothing about fine liquors, so I got him to challenge me for a duel. If I lose, I must pay him 5000 gold pieces. If I win, I'll pick my reward. */
      DO ~
        SetGlobal("6W#ShithriDrinksActive","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksStakes","GLOBAL",1)
      ~
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksSeaman__accept_rules

    IF ~~ THEN
      REPLY @5000123 /* Doesn't matter. 5000 gold pieces is a fair reward. */
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksSeaman__same_stake
  END
END

APPEND 6WPIRDR
  IF ~~ THEN 6W#ShithriDrinksSeaman__same_stake
    SAY @5000130 /* Could be, aye. 5000 gold pieces t' ye if ye e'er win. Deal? */

    IF ~~ THEN
      REPLY @5000111 /* Fine. I accept your rules. */
      UNSOLVED_JOURNAL @9000012 /* Shithri-inspired liquor collection

We met Shithri's old friend, Franky the Eye-Popper, in Sea's Bounty tavern. He dared to suggest I know nothing about fine liquors, so I got him to challenge me for a duel. The loser pays the winner 5000 gold pieces. */
      DO ~
        SetGlobal("6W#ShithriDrinksActive","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksStakes","GLOBAL",2)
      ~
      GOTO 6W#ShithriDrinksSeaman__accept_rules

    IF ~~ THEN
      REPLY @5000103 /* After giving it a second thought, I won't waste my time on you. */
      GOTO 6W#ShithriDrinksSeaman__all_talk
  END

  IF ~~ THEN 6W#ShithriDrinksSeaman__accept_rules
    SAY @5000140 /* Ready? */

    IF ~
      !GlobalLT("6W#ShithriDrinksHasUniqueDrinks","GLOBAL",3)
      !PartyGoldLT(5000)
    ~ THEN
      REPLY @5000141 /* When you are. */
      GOTO 6W#ShithriDrinksDuel__start

    IF ~PartyGoldLT(5000)~ THEN
      REPLY @5000142 /* Let me just gather my gold. */
      GOTO 6W#ShithriDrinksSeaman__take_your_time

    IF ~~ THEN
      REPLY @5000143 /* Let me just gather my collection. */
      GOTO 6W#ShithriDrinksSeaman__take_your_time
  END

  IF ~~ THEN 6W#ShithriDrinksSeaman__take_your_time
    SAY @5000150 /* Aye, take yer time. I ain't wanna hear ye complain ye got nah chance. */
    IF ~~ THEN EXIT
  END
END

APPEND 6WPIRDR
  // After agreeing to the duel.
  IF ~
    IsGabber(Player1)
    Global("6W#ShithriDrinksActive","GLOBAL",2)
    InMyArea("THUMB")
  ~ THEN 6W#ShithriDrinksSeaman__ready
    SAY @5000160 /* Oy, lubber. Ready fer the duel yet? */

    IF ~
      !GlobalLT("6W#ShithriDrinksHasUniqueDrinks","GLOBAL",3)
      !PartyGoldLT(5000)
    ~ THEN
      REPLY @5000161 /* When you are. */
      GOTO 6W#ShithriDrinksDuel__start

    IF ~~ THEN
      REPLY @5000162 /* No, not yet. */
      GOTO 6W#ShithriDrinksSeaman__take_your_time
  END
END

//
// The actual duel!
//

CHAIN 6WPIRDR 6W#ShithriDrinksDuel__start
  @5000200 /* Oy, The Thumb! Come o'er 'ere! */
  == THUMB
  @5000201 /* Hehe. Listen y'all! Ye don't be seein' that often - a drinkin' duel 'ere in Sea's Bounty! */
  DO ~
    SetGlobal("6W#ShithriDrinksActive","GLOBAL",4)
    SetGlobal("6W#ShithriDrinksStarting","GLOBAL",1)
  ~
EXIT

APPEND THUMB
  IF WEIGHT #-1 ~
    Global("6W#ShithriDrinksActive","GLOBAL",4)
  ~ THEN 6W#ShithriDrinksDuel__start_thumb
    SAY @5000210 /* Betta be listenin' good, folks! These two will now be... */

    // similar to how it's done in the original BG2, it's a priority queue:
    // only one character speaks, depending on which is available:
    // 1. Korgan
    // 2. Dorn
    // 3. Shithri
    // 4. Franky the Eye-Popper (always present)
    // Can't really use interjections here, as the state isn't there yet.
    //TODO: verify
    IF ~~ THEN
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__start_pirdr
    IF ~IsValidForPartyDialog("6WSHITHRI")~ THEN
      EXTERN ~6WSHITJ~ 6W#ShithriDrinksDuel__start_shithri
    IF ~IsValidForPartyDialog("Dorn")~ THEN
      EXTERN ~DORNJ~ 6W#ShithriDrinksDuel__start_dorn
    IF ~IsValidForPartyDialog("Korgan")~ THEN
      EXTERN ~KORGANJ~ 6W#ShithriDrinksDuel__start_korgan
  END
END

APPEND KORGANJ
  IF ~~ THEN 6W#ShithriDrinksDuel__start_korgan
    SAY @5000211 /* Be quick with it, ye hooker! We're waiting! */
    IF ~~ EXTERN ~THUMB~ 6W#ShithriDrinksDuel__start_thumb_1
  END
END
APPEND DORNJ
  IF ~~ THEN 6W#ShithriDrinksDuel__start_dorn
    SAY @5000212 /* Too much talking, not enough drinking! */
    IF ~~ EXTERN ~THUMB~ 6W#ShithriDrinksDuel__start_thumb_1
  END
END
APPEND 6WSHITJ
  IF ~~ THEN 6W#ShithriDrinksDuel__start_shithri
    SAY @5000213 /* Oy, ye gonna flappin' yer gums, leavin' 'em throats-dry? Or let 'em 'ave their duel already, yarrr? */
    IF ~~ EXTERN ~THUMB~ 6W#ShithriDrinksDuel__start_thumb_1
  END
END
APPEND 6WPIRDR
  IF ~~ THEN 6W#ShithriDrinksDuel__start_pirdr
    SAY @5000214 /* Oi, I ain't THAT patient, mate. My throat's dry. */
    IF ~~ EXTERN ~THUMB~ 6W#ShithriDrinksDuel__start_thumb_1
  END
END

CHAIN THUMB 6W#ShithriDrinksDuel__start_thumb_1
  @5000220 /* Me folks! Wit'out nah more yappin': hello an' welcome our contestants... */
  == SBSLUM01 IF ~InMyArea("SBSLUM01")~ // nobleman
  @5000221 /* We know them already! */
  == SBWENCH IF ~InMyArea("SBWENCH")~ // wench
  @5000222 /* Just begin already, let them taste the wine! */
  == THUMB
  @5000225 /* O' course, o' course. First goes our first-timer, <CHARNAME>! */
  DO ~
    SetGlobal("6W#ShithriDrinksRound","GLOBAL",1)
  ~
END ~THUMB~ 6W#ShithriDrinksDuel__pick_drink

APPEND THUMB
  IF ~~ THEN 6W#ShithriDrinksDuel__pick_drink
    SAY @5000226 /* Pick a drink fer Franky t' guess. */

    // an answer for each possible liquor
    IF ~
      PartyHasItem("_6WDR00")
      GlobalLT("6W#ShithriDrinksHasDrink00","GLOBAL",2)
    ~ THEN
      REPLY @6000000 /* Bitter Black Ale. */
      DO ~
        TakePartyItem("_6WDR00")
        DestroyItem("_6WDR00")
        SetGlobal("6W#ShithriDrinksHasDrink00","GLOBAL",2)
      ~
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__round_1a__00

    IF ~
      PartyHasItem("_6WDR01")
      GlobalLT("6W#ShithriDrinksHasDrink01","GLOBAL",2)
    ~ THEN
      REPLY @6000010 /* Shadowdark Ale. */
      DO ~
        TakePartyItem("_6WDR01")
        DestroyItem("_6WDR01")
        SetGlobal("6W#ShithriDrinksHasDrink01","GLOBAL",2)
      ~
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__round_1a__01

    IF ~
      PartyHasItem("_6WDR02")
      GlobalLT("6W#ShithriDrinksHasDrink02","GLOBAL",2)
    ~ THEN
      REPLY @6000020 /* Suz-Ale. */
      DO ~
        TakePartyItem("_6WDR02")
        DestroyItem("_6WDR02")
        SetGlobal("6W#ShithriDrinksHasDrink02","GLOBAL",2)
      ~
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__round_1a__02

    IF ~
      PartyHasItem("_6WDR03a")
      GlobalLT("6W#ShithriDrinksHasDrink03a","GLOBAL",2)
    ~ THEN
      REPLY @6000030 /* Golden Sands Basic. */
      DO ~
        TakePartyItem("_6WDR03a")
        DestroyItem("_6WDR03a")
        SetGlobal("6W#ShithriDrinksHasDrink03a","GLOBAL",2)
      ~
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__round_1a__03a

    IF ~
      PartyHasItem("_6WDR03b")
      GlobalLT("6W#ShithriDrinksHasDrink03b","GLOBAL",2)
    ~ THEN
      REPLY @6000031 /* Golden Sands Gold. */
      DO ~
        TakePartyItem("_6WDR03b")
        DestroyItem("_6WDR03b")
        SetGlobal("6W#ShithriDrinksHasDrink03b","GLOBAL",2)
      ~
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__round_1a__03b

    IF ~
      PartyHasItem("_6WDR03c")
      GlobalLT("6W#ShithriDrinksHasDrink03c","GLOBAL",2)
    ~ THEN
      REPLY @6000032 /* Golden Sands Orange. */
      DO ~
        TakePartyItem("_6WDR03c")
        DestroyItem("_6WDR03c")
        SetGlobal("6W#ShithriDrinksHasDrink03c","GLOBAL",2)
      ~
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__round_1a__03c

    IF ~
      PartyHasItem("_6WDR04")
      GlobalLT("6W#ShithriDrinksHasDrink04","GLOBAL",2)
    ~ THEN
      REPLY @6000040 /* Iriaeboran North Brew. */
      DO ~
        TakePartyItem("_6WDR04")
        DestroyItem("_6WDR04")
        SetGlobal("6W#ShithriDrinksHasDrink04","GLOBAL",2)
      ~
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__round_1a__04

    IF ~
      PartyHasItem("_6WDR05")
      GlobalLT("6W#ShithriDrinksHasDrink05","GLOBAL",2)
    ~ THEN
      REPLY @6000050 /* Luiren's Best Ale. */
      DO ~
        TakePartyItem("_6WDR05")
        DestroyItem("_6WDR05")
        SetGlobal("6W#ShithriDrinksHasDrink05","GLOBAL",2)
      ~
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__round_1a__05

    IF ~
      PartyHasItem("_6WDR06")
      GlobalLT("6W#ShithriDrinksHasDrink06","GLOBAL",2)
    ~ THEN
      REPLY @6000060 /* Tanagyr's Ale. */
      DO ~
        TakePartyItem("_6WDR06")
        DestroyItem("_6WDR06")
        SetGlobal("6W#ShithriDrinksHasDrink06","GLOBAL",2)
      ~
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__round_1a__06

    IF ~
      PartyHasItem("_6WDR07")
      GlobalLT("6W#ShithriDrinksHasDrink07","GLOBAL",2)
    ~ THEN
      REPLY @6000070 /* Undermountain Alurlyath. */
      DO ~
        TakePartyItem("_6WDR07")
        DestroyItem("_6WDR07")
        SetGlobal("6W#ShithriDrinksHasDrink07","GLOBAL",2)
      ~
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__round_1a__07

    IF ~
      PartyHasItem("_6WDR08")
      GlobalLT("6W#ShithriDrinksHasDrink08","GLOBAL",2)
    ~ THEN
      REPLY @6000080 /* Arabellan Dry. */
      DO ~
        TakePartyItem("_6WDR08")
        DestroyItem("_6WDR08")
        SetGlobal("6W#ShithriDrinksHasDrink08","GLOBAL",2)
      ~
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__round_1a__08

    IF ~
      PartyHasItem("_6WDR09")
      GlobalLT("6W#ShithriDrinksHasDrink09","GLOBAL",2)
    ~ THEN
      REPLY @6000090 /* Evermead. */
      DO ~
        TakePartyItem("_6WDR09")
        DestroyItem("_6WDR09")
        SetGlobal("6W#ShithriDrinksHasDrink09","GLOBAL",2)
      ~
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__round_1a__09

    IF ~
      PartyHasItem("_6WDR10")
      GlobalLT("6W#ShithriDrinksHasDrink10","GLOBAL",2)
    ~ THEN
      REPLY @6000100 /* Westgate Ruby. */
      DO ~
        TakePartyItem("_6WDR10")
        DestroyItem("_6WDR10")
        SetGlobal("6W#ShithriDrinksHasDrink10","GLOBAL",2)
      ~
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__round_1a__10

    IF ~
      PartyHasItem("_6WDR11")
      GlobalLT("6W#ShithriDrinksHasDrink11","GLOBAL",2)
    ~ THEN
      REPLY @6000110 /* Saerloonian Topaz. */
      DO ~
        TakePartyItem("_6WDR11")
        DestroyItem("_6WDR11")
        SetGlobal("6W#ShithriDrinksHasDrink11","GLOBAL",2)
      ~
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__round_1a__11

    IF ~
      PartyHasItem("_6WDR12")
      GlobalLT("6W#ShithriDrinksHasDrink12","GLOBAL",2)
    ~ THEN
      REPLY @6000120 /* Berduskan Dark. */
      DO ~
        TakePartyItem("_6WDR12")
        DestroyItem("_6WDR12")
        SetGlobal("6W#ShithriDrinksHasDrink12","GLOBAL",2)
      ~
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__round_1a__12

    IF ~
      PartyHasItem("_6WDR13")
      GlobalLT("6W#ShithriDrinksHasDrink13","GLOBAL",2)
    ~ THEN
      REPLY @6000130 /* Winter Wine. */
      DO ~
        TakePartyItem("_6WDR13")
        DestroyItem("_6WDR13")
        SetGlobal("6W#ShithriDrinksHasDrink13","GLOBAL",2)
      ~
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__round_1a__13

    IF ~
      PartyHasItem("_6WDR14")
      GlobalLT("6W#ShithriDrinksHasDrink14","GLOBAL",2)
    ~ THEN
      REPLY @6000140 /* Dragon's Beer. */
      DO ~
        TakePartyItem("_6WDR14")
        DestroyItem("_6WDR14")
        SetGlobal("6W#ShithriDrinksHasDrink14","GLOBAL",2)
      ~
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__round_1a__14

    IF ~
      PartyHasItem("_6WDR20")
      GlobalLT("6W#ShithriDrinksHasDrink20","GLOBAL",2)
    ~ THEN
      REPLY @6000200 /* Turnip Nalewka. */
      DO ~
        TakePartyItem("_6WDR20")
        DestroyItem("_6WDR20")
        SetGlobal("6W#ShithriDrinksHasDrink20","GLOBAL",2)
      ~
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__round_1a__20

    IF ~
      PartyHasItem("_6WDR21")
      GlobalLT("6W#ShithriDrinksHasDrink21","GLOBAL",2)
    ~ THEN
      REPLY @6000210 /* Halfling's Help. */
      DO ~
        TakePartyItem("_6WDR21")
        DestroyItem("_6WDR21")
        SetGlobal("6W#ShithriDrinksHasDrink21","GLOBAL",2)
      ~
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__round_1a__21

    IF ~
      PartyHasItem("_6WDR90")
      GlobalLT("6W#ShithriDrinksHasDrink90","GLOBAL",2)
    ~ THEN
      REPLY @6000900 /* Elminster's Choice. */
      DO ~
        TakePartyItem("_6WDR90")
        DestroyItem("_6WDR90")
        SetGlobal("6W#ShithriDrinksHasDrink90","GLOBAL",2)
      ~
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__round_1a__90
  END
END


CHAIN 6WPIRDR 6W#ShithriDrinksDuel__round_1a__00
  @5010000 /* *sniffs* *sips* */
  =
  @5010001 /* Heavy. Black, wit' deep brown foam. Huh! Easy. It's Arabellan Bitter Black. */
  == THUMB
  @5010010 /* ...which y'all can get 'ere, in Sea's Bounty! 'Tis one's a point fer Franky! */
  DO ~
    IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",1)
  ~
END THUMB 6W#ShithriDrinksDuel__franky_pick_drink

CHAIN 6WPIRDR 6W#ShithriDrinksDuel__round_1a__01
  @5010100 /* *sniffs* *sips* */
  =
  @5010101 /* Smells o' cloves. Cloudy an' bubblin'. Cremy. It's, obviously, Shadowdark Ale! */
  == THUMB
  @5010110 /* Ladies love 'im, I can tell ye! 'Tis a point! */
  DO ~
    IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",1)
  ~
END THUMB 6W#ShithriDrinksDuel__franky_pick_drink

CHAIN 6WPIRDR 6W#ShithriDrinksDuel__round_1a__02
  @5010200 /* *sniffs* *sips* */
  =
  @5010201 /* Hmmm... */
  =
  @5010202 /* This one's nah easy. Was I nah a common guest at Calimport, I'd 'ave nah idea... but I had it once or twice. What its name though... Pretty sure it comes from Cormyr's capital... */
  == SBSLUM02 IF ~InMyArea("SBSLUM02")~
  @5010203 /* Suzail. */
  == THUMB
  @5010204 /* 'Tis correct. Suz-Ale. Nah point fer Franky though! */
END THUMB 6W#ShithriDrinksDuel__franky_pick_drink

CHAIN 6WPIRDR 6W#ShithriDrinksDuel__round_1a__03a
  @5010300 /* *stares* Be it a trick? *sips* */
  =
  @5010301 /* Nay. Nah trick. It's really jus' Golden Sands Basic. How disappointin'. */
  == THUMB
  @5010305 /* Nah Calimshite tricks this time! Point fer Franky! */
  DO ~
    IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",1)
  ~
  == RASAAD IF ~IsValidForPartyDialog("Rasaad")~
  // He probably hears that joke a lot. :/
  @5010306 /* *sigh* */
END THUMB 6W#ShithriDrinksDuel__franky_pick_drink

CHAIN 6WPIRDR 6W#ShithriDrinksDuel__round_1a__03b
  @5010310 /* *sniffs* *sips* */
  =
  @5010311 /* Har har! Givin' cacti brew t' me? Forgot I'm tradin' wit' Calimshan already, <PRO_BOYGIRL>? O' course it's Golden Sands Gold! */
  == THUMB
  @5010315 /* Truly golden answer, point fer Franky! */
  DO ~
    IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",1)
  ~
END THUMB 6W#ShithriDrinksDuel__franky_pick_drink

CHAIN 6WPIRDR 6W#ShithriDrinksDuel__round_1a__03c
  @5010320 /* *sniffs* *sips* */
  =
  @5010321 /* Hmm. Pretty sure it's Golden Sands Brew... but wha' kinda? */
  =
  @5010322 /* Smells o' oranges. Sweet. Very light. But a bit acidic, nah jus' from orange. Currant, be it? */
  =
  @5010323 /* Me guess: Golden Sands Orange. */
  == THUMB
  @5010325 /* Aye it be! Quite a rarity, ain't it? One point fer ye! */
  DO ~
    IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",1)
  ~
END THUMB 6W#ShithriDrinksDuel__franky_pick_drink

CHAIN 6WPIRDR 6W#ShithriDrinksDuel__round_1a__04
  @5010400 /* *sniffs* *sips* */
  =
  @5010401 /* Brrr! Cold! Something from the North? Nah gonna lie though - I ain't knowin' that one. */
  == THUMB
  @5010410 /* From the North 'tis, aye! The Iriaebor's best! */
  == SBCUST02 IF ~InMyArea("SBCUST02")~
  @5010411 /* Hey, come t' think o' it. Why ye nah got it 'ere, mate? */
  == THUMB
  @5010412 /* ... */
  =
  @5010413 /* Me says: let's continue. */
END THUMB 6W#ShithriDrinksDuel__franky_pick_drink

CHAIN 6WPIRDR 6W#ShithriDrinksDuel__round_1a__05
  @5010500 /* *sniffs* *sips* */
  =
  @5010501 /* Smells like... smells. Black. Weird. Huh... Bet it's some halflin' or gnome one. No clue about theirs though. */
  == THUMB
  @5010510 /* Huh. E'ery halflin' worth 'is sling knows this one! 'Tis Luiren's Best itself! Nah point fer ya! */
END THUMB 6W#ShithriDrinksDuel__franky_pick_drink

CHAIN 6WPIRDR 6W#ShithriDrinksDuel__round_1a__06
  @5010600 /* *sniffs* */
  =
  @5010601 /* Ye 'ave good taste, lubber, I mus' admit. This be good old Black Tanagyr's. *sips* *smiles* */
  == THUMB
  @5010610 /* An' that's a good answer! Point fer Franky! */
  DO ~
    IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",1)
  ~

  BRANCH ~
    InMyArea("SBCUST01")
    InMyArea("SBCUST02")
  ~
  BEGIN
    == SBCUST01 
    @5010611 /* Oi. Oi, mate. Ain't tha' *hic* the one from... */
    == SBCUST02
    @5010612 /* Aye, 'tis the one. Heard they 'ave it somewhere in the city. */
  END

END THUMB 6W#ShithriDrinksDuel__franky_pick_drink

CHAIN 6WPIRDR 6W#ShithriDrinksDuel__round_1a__07
  @5010700 /* *stares* *sips* */
  =
  @5010701 /* Green. Glowing. Is it rich though? Hmm... mayhaps? Could it be... */
  =
  @5010702 /* Drow Green. Nah Ulaver, nay. But some kind of Drow Green. */
  == 6WSHITJ IF ~IfValidForPartyDialogue("6WSHITHRI")~
  @5010710 /* Oy, matey, ye jestin' or wha'? E'ery bucko knows this one! */

  BRANCH ~
    InMyArea("SBSLUM01")
    InMyArea("SBSLUM02")
    InMyArea("SBWENCH")
  ~
  BEGIN
    == SBSLUM02 
    @5010711 /* It's Alurlyath. They have it here. */
    == SBSLUM01
    @5010712 /* I didn't realise you have such a good taste for wine, my dear! */
    == SBWENCH
    @5010713 /* She doesn't. Just a keen eye, boy. A pair, even. Not looking into them often enough, are you? */
    == SBSLUM01
    @5010714 /* I... huh! As if you could know! */
  END

  == THUMB
  @5010720 /* No point! */
END THUMB 6W#ShithriDrinksDuel__franky_pick_drink

CHAIN 6WPIRDR 6W#ShithriDrinksDuel__round_1a__08
  @5010800 /* *smells* *sips* */
  =
  @5010801 /* Har har. Taste o' the forest, aye. Drunk it back on Inner Sea, drinkin' it 'ere. One o' me favs, Arabellan Dry. */
  == THUMB
  @5010810 /* Straight from Cormyr, aye! One point fer ye! */
  DO ~
    IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",1)
  ~
END THUMB 6W#ShithriDrinksDuel__franky_pick_drink

CHAIN 6WPIRDR 6W#ShithriDrinksDuel__round_1a__09
  @5010900 /* *sniffs* *sips* */
  =
  @5010901 /* Be it really... *sips* */
  =
  @5010902 /* Ne'er had it afore. But it obviously be it - the famous Evermead. I see ye nah poor <PRO_MANWOMAN> if ye can afford it, lubber. */
  == THUMB
  @5010910 /* An' if any one o' ye ne'er tried it either - now's the chance! Only 'til the end o' this duel - pay two gold pieces less! */

  BRANCH ~
    InMyArea("SBSLUM01")
    InMyArea("SBSLUM02")
  ~
  BEGIN
    == SBSLUM01 
    @5010911 /* Would you care for some, my dear? */
    == SBSLUM02
    @5010912 /* Glad you've finally asked. */
  END

  == THUMB
  @5010920 /* One point fer Franky! */
  DO ~
    IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",1)
  ~
END THUMB 6W#ShithriDrinksDuel__franky_pick_drink

CHAIN 6WPIRDR 6W#ShithriDrinksDuel__round_1a__10
  @5011000 /* *sniffs* *sips* */
  =
  @5011001 /* Deep, deep red an' quite bold... Had something like that in Cormyr. It's Blood Wine. */
END
  // only one should comment
  IF ~~
    EXTERN ~THUMB~ 6W#ShithriDrinksDuel__round_1a__10__thumb
  IF ~IfValidForPartyDialog("Shithri")~
    EXTERN ~6WSHITJ~ 6W#ShithriDrinksDuel__round_1a__10__shithri
  IF ~IfValidForPartyDialog("Hexxat")~
    // Hexxat has less of a reason to comment on that, but still.
    // Plus Shithri speaks MUCH more often than Hexxat.
    EXTERN ~HEXXATJ~ 6W#ShithriDrinksDuel__round_1a__10__hexxat
  IF ~IfValidForPartyDialog("Viconia")~
    EXTERN ~VICONIJ~ 6W#ShithriDrinksDuel__round_1a__10__viconia

APPEND VICONIJ
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__round_1a__10__viconia
    SAY @5011011 /* How typical, rivvil... I can say he's wrong without tasting as much as a drop of it. */ 
    IF ~~ THEN
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__round_1a__10__thumb
  END
END
APPEND HEXXATJ
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__round_1a__10__hexxat
    SAY @5011012 /* Have you ever seen blood? */
    IF ~~ THEN
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__round_1a__10__thumb
  END
END
APPEND 6WSHITJ
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__round_1a__10__shithri
    SAY @5011013 /* Ayayay... I guess 'tis true Franky ne'er liked Beef 'n Oysters Barnabas... */
    IF ~~ THEN
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__round_1a__10__thumb
  END
END
CHAIN THUMB 6W#ShithriDrinksDuel__round_1a__10__thumb
  @5011020 /* Nah point fer ye this time, Franky! 'Tis Westgate Ruby, nah Bloood Wine. */
  == 6WPIRDR
  @5011021 /* Blimey... */
END THUMB 6W#ShithriDrinksDuel__franky_pick_drink

CHAIN 6WPIRDR 6W#ShithriDrinksDuel__round_1a__11
  @5011100 /* *stares* *sips* */
  =
  @5011101 /* Hmm. Nah glow, but the color fits an' it does tast o' pears. Nah too sweet either. I says: Saerloonian Glowfire, although badly stored. */
  == THUMB
  @5011010 /* Saerloonian - aye. But 'tis Topaz, nah Glowfire. Nah point! */
  == 6WSHITJ IF ~IfValidForPartyDialogue("6WSHITHRI")~
  @5011011 /* Toldja. People keep confusin' 'em. */
END THUMB 6W#ShithriDrinksDuel__franky_pick_drink

CHAIN 6WPIRDR 6W#ShithriDrinksDuel__round_1a__12
  @5011200 /* *stares* *sips* */
  =
  @5011201 /* Very dark. Dense. Dry, but in a sweet way. An' that burnin' aftertaste... like fort'fied? They make that kind o' stuff in the North, ain't they? Winter Dry, then? */
  == THUMB
  @5011210 /* Nay. Nah really North, e'en. This one's from Berdusk. Nah point! */
END THUMB 6W#ShithriDrinksDuel__franky_pick_drink

CHAIN 6WPIRDR 6W#ShithriDrinksDuel__round_1a__13
  @5011300 /* *stares* *sips* */
  =
  @5011301 /* Very dark, purplish even. Sweet, but plenty strong. An' that burnin' aftertaste... like fort'fied? They make that kind o' stuff in the North, ain't they? Winter Wine, then? */
  == THUMB
  @5011310 /* Aye. Winter Wine. Hope ye're nah jus' guessin' the name. One point fer Franky! */
  DO ~
    IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",1)
  ~
END THUMB 6W#ShithriDrinksDuel__franky_pick_drink

CHAIN 6WPIRDR 6W#ShithriDrinksDuel__round_1a__14
  @5011400 /* *smells* *sips* */
  =
  @5011401 /* Nah from Cormyr. Nay, definitely - too strong. Sembia, perhaps? Hmmm... I be knowin' but one strong Sembian beer. That's Old Black Goblin. */
  == THUMB
  @5011410 /* Nah, that's Dragon's Breath. */

  BRANCH ~
    IsValidForPartyDialog("6WSHITHRI")
    InMyArea("SBCUST02")
  ~
  BEGIN
    == 6WSHITJ
    @5011411 /* Old Black Goblin be plenty pricey e'en in Sembia, matey. */
    == SBCUST02
    @5011412 /* All fancy an' "noble", ain't he? */
    == 6WSHITJ
    @5011413 /* Calimshan itch, mayhaps? */
    == SBCUST02
    @5011414 /* Har har! Could be, aye! */
    == JAN IF ~IsValidForPartyDialog("Jan")~
    @5011415 /* Calimshan Itch. Terrible disease and yet you laugh at it! See, my cousin Barnal... */
  END

  == THUMB
  @5011420 /* Nah point! */
END THUMB 6W#ShithriDrinksDuel__franky_pick_drink

CHAIN 6WPIRDR 6W#ShithriDrinksDuel__round_1a__20
  @5012000 /* *stares* *sniffs* Huh? Wha' be that? */
  =
  @5012001 /* *sips* Mmm. Tastes pretty nice... */
  =
  @5012002 /* I 'ave nah idea. Wha' be that? */
  == THUMB
  @5012005 /* That's Turnip Nalewka by... arrr... Uncle Gerhardt, was it? */
  == 6WPIRDR
  @5012006 /* Oy, mate! Nahbody knows that "Uncle Gerhardt" o' yers! How was I supposed t' guess that? It nah even labelled! */
END
  // rule-lawyer to the rescue!
  IF ~
    CheckStatGT(Player1,13,INT)
  ~ THEN
    REPLY @5012010 /* And who said the liquors need to be well-known, labelled and patented? I can't remember that being in the rules. Judge? */
    EXTERN ~THUMB~ 6W#ShithriDrinksDuel__round_1a__20__int

  // connoisseur of the craft liqies
  IF ~
    // monks can appreciate those even with low wis, cause you know... monks
    OR(2)
      CheckStatGT(Player1,13,WIS)
      Class(Player1,MONK)
  ~
    REPLY @5012011 /* Are you suggesting that traditional home-made liquors are worse than the mass-produced ones? */
    EXTERN ~THUMB~ 6W#ShithriDrinksDuel__round_1a__20__wis

  // appeal to race
  IF ~
    OR(2)
      CheckStatGT(Player1,13,CHR)
      Class(Player1,BARD_ALL)
    InMyArea("SBSLUM01")
  ~
    REPLY @5012012 /* Did you hear that, good folks? This man, who sails to the foreign countries, spurned a local product. Hard work of amnian of hum... I mean: gnomish hands! */
    EXTERN ~SBSLUM01~ 6W#ShithriDrinksDuel__round_1a__20__cha

  // ...or be pacifist?
  IF ~~
    REPLY @5012013 /* Fine, I'll just pick another one then? */
    EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pick_another_drink

CHAIN THUMB 6W#ShithriDrinksDuel__round_1a__20__int
  @5012020 /* The Thumb has nah rule like that. 'ere in Sea's Bounty, we supportin' local products, aye. */
  == SBWENCH IF ~InMyArea("SBWENCH")~
  @5012021 /* Good to know. */
  == SBCUST01 IF ~InMyArea("SBCUST01")~
  @5012022 /* Vry good! Locaaal... local prduce... local producks... */
  == SBCUST02 IF ~InMyArea("SBCUST02")~
  @5012023 /* Aye, we all be lovin' it. For real, Franky. Thought better o' ye. */
END ~THUMB~ 6W#ShithriDrinksDuel__round_1a__20__franky_lost

CHAIN THUMB 6W#ShithriDrinksDuel__round_1a__20__wis
  @5012030 /* ...which nah be wha' we sayin' 'here in Sea's Bounty... */
  == SBCUST01 IF ~InMyArea("SBCUST01")~
  @5012031 /* Oi! Oiii! Yeee, ye somth bad 'bout gramps? Huh? Huh? */
  == SBCUST02 IF ~InMyArea("SBCUST02")~
  @5012032 /* Come t' think o' it, yer gramps did make some nice whisky. Was a good man. */
  == SBWENCH IF ~InMyArea("SBWENCH")~
  @5012033 /* The Thumb. Ek-hem. */
END ~THUMB~ 6W#ShithriDrinksDuel__round_1a__20__franky_lost

CHAIN SBSLUM01 6W#ShithriDrinksDuel__round_1a__20__cha
  @5012040 /* Hey, I have a gnomish friend! Remember Glim, my dear? */
  == SBSLUM02 IF ~InMyArea("SBSLUM02")~
  @5012041 /* Yes, yes. Your "roam gnome". Fascinating. */
  == SBCUST02 IF ~InMyArea("SBCUST02")~
  @5012042 /* Gnomes be fine. We 'ave 'em comin' 'ere sometimes. */
  == THUMB
  @5012043 /* 'ere in Sea's Bounty, we welcome every guest with the same hospitality. */
END ~THUMB~ 6W#ShithriDrinksDuel__round_1a__20__franky_lost

CHAIN THUMB 6W#ShithriDrinksDuel__round_1a__20__franky_lost
  @5012050 /* Franky, mate. Ye lose this round. */
  == 6WPIRDR
  @5012051 /* Ehhh... turnip nalewka... */
  == JANJ IF ~IsValidForPartyDialog("Jan")~
  @5012052 /* Never underestimate the power of turnip! */
END THUMB 6W#ShithriDrinksDuel__franky_pick_drink


CHAIN 6WPIRDR 6W#ShithriDrinksDuel__round_1a__21
  @5012100 /* *sniffs* *sips* */
  =
  @5012101 /* Hmm. Bubbly. Sweet an' fruity. An'... Ho! Strong, that thing be! */
  =
  @5012102 /* If it was wine, I say Saerloonian Special Vat. But 'tis beer. Wha' be that... */
  =
  @5012103 /* I be 'avin' nah idea. */
  == THUMB
  @5012105 /* Not e'en close! That one's Halfling's Help, from Luiren! Nah point! */
END THUMB 6W#ShithriDrinksDuel__franky_pick_drink


CHAIN 6WPIRDR 6W#ShithriDrinksDuel__round_1a__90
  @5019000 /* *stares* *sniffs* */
  =
  @5019001 /* Ye tryin' t' poison me? I ain't be drinkin' tis... tis... tis slop! */
  == THUMB
  @5019002 /* Yer guess then? */
  == 6WPIRDR
  @5019003 /* Oh come on, mate! 'Twas suppposed t' be FINE liquor duel! */
END
  // rule-lawyer to the rescue!
  IF ~
    CheckStatGT(Player1,13,INT)
  ~ THEN
    REPLY @5019010 /* "Fine"? Huh. Can't remember the "fine" part, I'm afraid. Maybe the judge remembers? */
    EXTERN ~THUMB~ 6W#ShithriDrinksDuel__round_1a__90__int

  // could get philosophical too
  IF ~
    CheckStatGT(Player1,13,WIS)
  ~
    REPLY @5019011 /* Well, it's a bit subjective whether or not some drink is "fine", wouldn't you agree? */
    EXTERN ~THUMB~ 6W#ShithriDrinksDuel__round_1a__90__wis

  // crowd-control
  IF ~
    OR(2)
      CheckStatGT(Player1,13,CHR)
      Class(Player1,BARD_ALL)
    InMyArea("SBWENCH")
  ~
    REPLY @5019012 /* Huh. So he says he won't be guessing. You heard that, good folks? */
    EXTERN ~SBWENCH~ 6W#ShithriDrinksDuel__round_1a__90__cha

  // ...or be pacifist?
  IF ~~
    REPLY @5019013 /* Fine, I'll just pick another one then? */
    EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pick_another_drink


CHAIN THUMB 6W#ShithriDrinksDuel__round_1a__90__int
  @5019020 /* Hmmm... nay. The Tumb be pretty sure he says: "drinking duel". Nah "fine" t' be found. */
END ~THUMB~ 6W#ShithriDrinksDuel__round_1a__90__forfeit_or_what

CHAIN THUMB 6W#ShithriDrinksDuel__round_1a__90__wis
  @5019030 /* May The Thumb say: he be servin' it 'here in Sea's Bounty. */
  == SBCUST01 IF ~InMyArea("SBCUST01")~
  @5019031 /* Ex'cly! Who ye thnk ye're, mate? Sayin' all 'ose bad things 'bout... */
  == SBCUST02 IF ~InMyArea("SBCUST02")~
  @5019032 /* Expected more o' ye, Franky. All fancy an' bein' too "noble" t' drink wit' us. */
  == SBSLUM01 IF ~InMyArea("SBSLUM01")~ // nobleman
  @5019033 /* Oh really, good sailor, you're ruining the charm of this place! */
  == THUMB
  @5019035 /* I be countin' this drink as good as any. */
END ~THUMB~ 6W#ShithriDrinksDuel__round_1a__90__forfeit_or_what

CHAIN SBWENCH 6W#ShithriDrinksDuel__round_1a__90__cha
  @5019040 /* Hey, sweety, can't you just accept defeat? */
  == SBCUST02 IF ~InMyArea("SBCUST02")~
  @5019041 /* Nah fair, Franky! Rules be rules! */

  BRANCH ~
    InMyArea("SBCUST02")
    InMyArea("SBCUST01")
  ~
  BEGIN
    == SBCUST01
    @5019042 /* Oi, mate, who ye thnk ye're?, huh? Who're ye anways? */
    == SBCUST02
    @5019043 /* Franky. He's a regular. */
    == SBCUST01
    @5019044 /* Well, *I* nay be knowin' 'him! */
  END

  == THUMB
  @5019045 /* I says continue. */
END ~THUMB~ 6W#ShithriDrinksDuel__round_1a__90__forfeit_or_what

CHAIN THUMB 6W#ShithriDrinksDuel__round_1a__90__forfeit_or_what
  @5019050 /* Franky, mate, ye be drinkin' or forfeitin' round? */
  == 6WPIRDR
  @5019051 /* *sigh* Jus'... jus' let's say I lost that one. */
END THUMB 6W#ShithriDrinksDuel__franky_pick_drink

CHAIN THUMB 6W#ShithriDrinksDuel__pick_another_drink
  @5019060 /* I says fine. */
END ~THUMB~ 6W#ShithriDrinksDuel__pick_drink


// rounds 2, 4, 6 - you guess
//
// Design Note:
// Not all of the drinks have to be aquirable for the PC, but there should
// be some way to pass it:
// ~ Saerloonian Special Vat - Shithri's comment about Saerloonian Topaz.
// ~ Blood Wine - common among drows, could learn about it from Viconia or try
//   it in the Underdark. It's said to be produced from grapes from vines posessed
//   by spirits of criminals - could be sensed by paladins and shamans, maybe.
// ~ Wheelon Spruce Beer - it's easy to recognize for druids. Perhaps you could
//   get that info from Jaheira if talking with her earlier?
// ~ Thayan Red - common among mages from Thay. Could learn about it from Edwin.
// ~ Mint Wine - INT check should be enough
APPEND THUMB
  IF ~~ THEN 6W#ShithriDrinksDuel__franky_pick_drink
    SAY @5000500 /* 'ere comes a drink from Franky! */

    // -- Round One --
    // Franky picks "easy" drinks: either Golden Sands Gold
    // or Arabellan Dry, depending on which the PC picked (if any)
    IF ~
      Global("6W#ShithriDrinksRound","GLOBAL",1)
      GlobalLT("6W#ShithriDrinksHasDrink03b","GLOBAL",2)
      OR(2)
        !GlobalLT("6W#ShithriDrinksHasDrink08","GLOBAL",2)
        RandomNum(2,1)
    ~ THEN
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksPcOption","GLOBAL",0)
        MoveViewObject(Myself,INSTANT)
      ~
      EXIT

    IF ~
      Global("6W#ShithriDrinksRound","GLOBAL",1)
      GlobalLT("6W#ShithriDrinksHasDrink08","GLOBAL",2)
      OR(2)
        !GlobalLT("6W#ShithriDrinksHasDrink03b","GLOBAL",2)
        RandomNum(2,2)
    ~
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksPcOption","GLOBAL",1)
        MoveViewObject(Myself,INSTANT)
      ~
      EXIT

    // -- Round Two --
    // Franky picks something you don't know, but at least
    // Shithri mentioned it before.
    IF ~
      Global("6W#ShithriDrinksRound","GLOBAL",2)
    ~ THEN
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksPcOption","GLOBAL",0)
        MoveViewObject(Myself,INSTANT)
      ~
      EXIT

    // -- Round Three --
    // Franky picks something he's convinced is very rare and difficult
    // to guess. Shithri didn't mention them to you.
    IF ~
      Global("6W#ShithriDrinksRound","GLOBAL",3)
    ~ THEN
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksPcOption","GLOBAL",1)
        MoveViewObject(Myself,INSTANT)
      ~
      EXIT

    // Note:
    // Original idea was to made Saerloonian Special Vat and Blood Wine
    // random alternatives for round two, and round three consisting of:
    // ~ Wheelon Spruce Beer
    // ~ Thayan Red
    // ~ Mint Wine
    //
    // Those could be introduced later on.
  END
END

APPEND 6WDRINK
  IF ~
    Global("6W#ShithriDrinksPcRound","GLOBAL",1)
    Global("6W#ShithriDrinksPcOption","GLOBAL",0)
  ~ THEN BEGIN 6W#ShithriDrinksDuel__franky__golden_sands_gold
    SAY @5020000 /* You're served a mug of clear, golden beer. */

    IF ~~ THEN
      REPLY @5020001 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__golden_sands_gold__look

    // a non-druid will smell less
    IF ~
      !Class(Player1,DRUID_ALL)
    ~ THEN
      REPLY @5020002 /* Smell it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__golden_sands_gold__smell__nondruid
    // a druid will smell more
    IF ~
      Class(Player1,DRUID_ALL)
    ~ THEN
      REPLY @5020002 /* Smell it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__golden_sands_gold__smell__druid

    // a non-druid will taste less
    IF ~
      !Class(Player1,DRUID_ALL)
    ~ THEN
      REPLY @5020003 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__golden_sands_gold__taste__nondruid
    // a druid will taste more
    IF ~
      Class(Player1,DRUID_ALL)
    ~ THEN
      REPLY @5020003 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__golden_sands_gold__taste__druid

    IF ~~ THEN
      REPLY @5020004 /* Forfeit the round. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__golden_sands_gold__forfeit
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__golden_sands_gold__look
    SAY @5020010 /* The beer is clear and of deep-golden color. On top of it, there is a thin layer of white foam. You don't see many bubbles. */

    // a non-druid will smell less
    IF ~
      !Class(Player1,DRUID_ALL)
    ~ THEN
      REPLY @5020002 /* Smell it. */
      GOTO 6W#ShithriDrinksDuel__franky__golden_sands_gold__smell__nondruid
    // a druid will smell more
    IF ~
      Class(Player1,DRUID_ALL)
    ~ THEN
      REPLY @5020002 /* Smell it. */
      GOTO 6W#ShithriDrinksDuel__franky__golden_sands_gold__smell__druid

    // a non-druid will taste less
    IF ~
      !Class(Player1,DRUID_ALL)
    ~ THEN
      REPLY @5020003 /* Taste it. */
      GOTO 6W#ShithriDrinksDuel__franky__golden_sands_gold__taste__nondruid
    // a druid will taste more
    IF ~
      Class(Player1,DRUID_ALL)
    ~ THEN
      REPLY @5020003 /* Taste it. */
      GOTO 6W#ShithriDrinksDuel__franky__golden_sands_gold__taste__druid

    IF ~~ THEN
      REPLY @5020004 /* Forfeit the round. */
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__golden_sands_gold__forfeit
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__golden_sands_gold__smell__nondruid
    SAY @5020020 /* Aside from a feint aroma typical to lagers, you also notice another strong component to the beer's smell. It's faint, but definitely there, herbaceous and slightly bitter. */

    IF ~~ THEN
      REPLY @5020001 /* Take a better look. */
      GOTO 6W#ShithriDrinksDuel__franky__golden_sands_gold__look
    IF ~~ THEN
      REPLY @5020003 /* Taste it. */
      GOTO 6W#ShithriDrinksDuel__franky__golden_sands_gold__taste__nondruid
    IF ~~ THEN
      REPLY @5020004 /* Forfeit the round. */
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__golden_sands_gold__forfeit
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__golden_sands_gold__smell__druid
    SAY @5020025 /* Aside from a feint aroma typical to lagers, you also notice another strong component. You know that slightly bitter smell very well - it's that of good-quality nettles. */

    // for a druid - general appearance + smell + description is enough
    IF ~
      Global("6W#ShithriDrinksKnowDrink03b","GLOBAL",1) // heard description
    ~ THEN
      REPLY @5020026 /* Clear, golden lager which smells of nettles. It's Golden Sands Gold. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
        SetGlobal("6W#ShithriDrinksHasDrink03b","GLOBAL",2)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    IF ~~ THEN
      REPLY @5020001 /* Take a better look. */
      GOTO 6W#ShithriDrinksDuel__franky__golden_sands_gold__look
    IF ~~ THEN
      REPLY @5020003 /* Taste it. */
      GOTO 6W#ShithriDrinksDuel__franky__golden_sands_gold__taste__druid
    IF ~~ THEN
      REPLY @5020004 /* Forfeit the round. */
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__golden_sands_gold__forfeit
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__golden_sands_gold__taste__nondruid
    SAY @5020030 /* When you sip the beer, it seems just slightly acidic. The taste is sharp and leaves a refreshing feeling in your mouth. It's somewhat reminescent of watermelon, although less sweet. You almost miss a very suble, iron-like after-taste. */

    // if you know the drink, you'll recognize it now
    IF ~
      Global("6W#ShithriDrinksHasDrink03b","GLOBAL",1)
    ~ THEN
      REPLY @5020031 /* Tastes familiar. It's Golden Sands Gold. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
        SetGlobal("6W#ShithriDrinksHasDrink03b","GLOBAL",2)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    // a non-druid may mistake its sharp and refreshing taste for Golden Sands Basic
    IF ~
      OR(2)
        Global("6W#ShithriDrinksHasDrink03a","GLOBAL",1)
        Global("6W#ShithriDrinksHasDrink03a","GLOBAL",2) // Franky doesn't use it, so 2 implies it was already used
    ~ THEN
      REPLY @5020032 /* Tastes familiar. It's Golden Sands Basic. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
        SetGlobal("6W#ShithriDrinksHasDrink03b","GLOBAL",2)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__golden_sands_gold__forfeit

    IF ~~ THEN
      REPLY @5020001 /* Take a better look. */
      GOTO 6W#ShithriDrinksDuel__franky__golden_sands_gold__look
    IF ~~ THEN
      REPLY @5020002 /* Smell it. */
      GOTO 6W#ShithriDrinksDuel__franky__golden_sands_gold__smell__nondruid
    IF ~~ THEN
      REPLY @5020004 /* Forfeit the round. */
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__golden_sands_gold__forfeit
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__golden_sands_gold__taste__druid
    SAY @5020035 /* When you sip the beer, it seems just slightly acidic. The taste is sharp and leaves a refreshing feeling in your mouth. It's somewhat reminescent of watermelon, although less sweet. You're quite certain it's some kind of a fruit, but it's foreign to you - perhaps coming from a different part of the world. Suddenly, you notice a suble, iron-like herbal after-taste. Nettles. Good ones, at that. */

    // for a druid - general appearance + taste + description is enough
    IF ~
      Global("6W#ShithriDrinksKnowDrink03b","GLOBAL",1) // heard description
    ~ THEN
      REPLY @5020036 /* Clear, golden lager with nettles and some kind of foreign fruit - probably cacti. It's Golden Sands Gold. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
        SetGlobal("6W#ShithriDrinksHasDrink03b","GLOBAL",2)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    // if you know the drink, you'll recognize it now
    IF ~
      Global("6W#ShithriDrinksHasDrink03b","GLOBAL",1)
    ~ THEN
      REPLY @5020031 /* Tastes familiar. It's Golden Sands Gold. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
        SetGlobal("6W#ShithriDrinksHasDrink03b","GLOBAL",2)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    IF ~~ THEN
      REPLY @5020001 /* Take a better look. */
      GOTO 6W#ShithriDrinksDuel__franky__golden_sands_gold__look
    IF ~~ THEN
      REPLY @5020002 /* Smell it. */
      GOTO 6W#ShithriDrinksDuel__franky__golden_sands_gold__smell__druid
    IF ~~ THEN
      REPLY @5020004 /* Forfeit the round. */
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__golden_sands_gold__forfeit
  END
END
APPEND THUMB
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__golden_sands_gold__forfeit
    SAY @5020040 /* It's Calimshan's pride's northern version. Golden Sands Gold. */
    IF ~~ THEN
      DO ~
        SetGlobal("6W#ShithriDrinksHasDrink03b","GLOBAL",2)
      ~
      GOTO 6W#ShithriDrinksDuel__pc_no_point
  END
END

APPEND 6WDRINK
  IF ~
    Global("6W#ShithriDrinksPcRound","GLOBAL",1)
    Global("6W#ShithriDrinksPcOption","GLOBAL",1)
  ~ THEN BEGIN 6W#ShithriDrinksDuel__franky__arabellan_dry
    SAY @5020100 /* You're served a glass of dark wine. */

    // default
    IF ~
      !CheckStatGT(Player1,13,INT)
      !Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020101 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__look__default
    // intelligent characters, as well as bards, know the wine
    // can be swirled to check viscousity
    IF ~
      OR(2)
        CheckStatGT(Player1,13,INT)
        Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020101 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__look__swirl

    // default
    IF ~
      !Race(Player1,HALFORC)
    ~ THEN
      REPLY @5020102 /* Smell it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__smell__default
    // half-orcs have keen sense of smell, due to their orcish heritage
    // ("borrowed" from gray orcs, who canonically have the Scent 
    // ability in DnD 3.5e)
    IF ~
      Race(Player1,HALFORC)
    ~ THEN
      REPLY @5020102 /* Smell it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__smell__halforc

    // unless you're of specific race or class, you don't know berries well
    IF ~
      !Class(Player1,BARD_ALL)
      !Class(Player1,DRUID_ALL)
      !Class(Player1,RANGER_ALL)
      !Kit(Player1,BARBARIAN)
    ~ THEN
      REPLY @5020103 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__taste__default

    // multiple options to know berries well
    IF ~
      !Class(Player1,BARD_ALL)
      OR(3)
        Class(Player1,DRUID_ALL)
        Class(Player1,RANGER_ALL)
        Kit(Player1,BARBARIAN)
    ~ THEN
      REPLY @5020103 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__taste__nature

    // bards probably drunk it
    IF ~
      Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020103 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__taste__bard

    IF ~~ THEN
      REPLY @5020104 /* Forfeit the round. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__arabellan_dry__forfeit
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__arabellan_dry__look__default
    SAY @5020110 /* This wine is of very deep red hue. You can see no other characteristics worth mentioning. */

    // default
    IF ~
      !Race(Player1,HALFORC)
    ~ THEN
      REPLY @5020102 /* Smell it. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__smell__default
    // half-orcs have keen sense of smell, due to their orcish heritage
    // ("borrowed" from gray orcs, who canonically have the Scent 
    // ability in DnD 3.5e)
    IF ~
      Race(Player1,HALFORC)
    ~ THEN
      REPLY @5020102 /* Smell it. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__smell__halforc

    // unless you're of specific race or class, you don't know berries well
    IF ~
      !Class(Player1,BARD_ALL)
      !Class(Player1,DRUID_ALL)
      !Class(Player1,RANGER_ALL)
      !Kit(Player1,BARBARIAN)
    ~ THEN
      REPLY @5020103 /* Taste it. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__taste__default

    // multiple options to know berries well
    IF ~
      !Class(Player1,BARD_ALL)
      OR(3)
        Class(Player1,DRUID_ALL)
        Class(Player1,RANGER_ALL)
        Kit(Player1,BARBARIAN)
    ~ THEN
      REPLY @5020103 /* Taste it. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__taste__nature

    // bards probably drunk it
    IF ~
      Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020103 /* Taste it. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__taste__bard

    IF ~~ THEN
      REPLY @5020104 /* Forfeit the round. */
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__arabellan_dry__forfeit
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__arabellan_dry__look__swirl
    SAY @5020115 /* Taking the glass in your hand, you make a gentle swirling motion. You observe how the wine drops don't stick to the glass at all. Low viscosity. It's a dry wine from abroad, probably from the west. */

    // if you know it's from the west and it's from a forest region,
    // Cormyr is an easy guess, and Cormyr's Arabel is quite famous
    IF ~
      Global("6W#ShithriDrinksThisTaste","GLOBAL",1)
    ~ THEN
      REPLY @5020116 /* A dry wine from a western forest. Most famously, Cormyr fits that. And which Cormyrean city is the most known for dry red wines? Arabel. That would be Arabellan Dry then. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
        SetGlobal("6W#ShithriDrinksHasDrink08","GLOBAL",2)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    // default
    IF ~
      !Race(Player1,HALFORC)
    ~ THEN
      REPLY @5020102 /* Smell it. */
      DO ~
        SetGlobal("6W#ShithriDrinksThisLook","GLOBAL",1)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__smell__default
    // half-orcs have keen sense of smell, due to their orcish heritage
    // ("borrowed" from gray orcs, who canonically have the Scent 
    // ability in DnD 3.5e)
    IF ~
      Race(Player1,HALFORC)
    ~ THEN
      REPLY @5020102 /* Smell it. */
      DO ~
        SetGlobal("6W#ShithriDrinksThisLook","GLOBAL",1)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__smell__halforc

    // unless you're of specific race or class, you don't know berries well
    IF ~
      !Class(Player1,BARD_ALL)
      !Class(Player1,DRUID_ALL)
      !Class(Player1,RANGER_ALL)
      !Kit(Player1,BARBARIAN)
    ~ THEN
      REPLY @5020103 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksThisLook","GLOBAL",1)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__taste__default

    // multiple options to know berries well
    IF ~
      !Class(Player1,BARD_ALL)
      OR(3)
        Class(Player1,DRUID_ALL)
        Class(Player1,RANGER_ALL)
        Kit(Player1,BARBARIAN)
    ~ THEN
      REPLY @5020103 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksThisLook","GLOBAL",1)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__taste__nature

    // bards probably drunk it
    IF ~
      Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020103 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksThisLook","GLOBAL",1)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__taste__bard

    IF ~~ THEN
      REPLY @5020104 /* Forfeit the round. */
      DO ~
        SetGlobal("6W#ShithriDrinksThisLook","GLOBAL",1)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__arabellan_dry__forfeit
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__arabellan_dry__smell__default
    SAY @5020120 /* The wine's aroma is too subtle for you to identify. */

    // default
    IF ~
      !CheckStatGT(Player1,13,INT)
      !Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020101 /* Take a better look. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__look__default
    // intelligent characters, as well as bards, know the wine
    // can be swirled to check viscousity
    IF ~
      OR(2)
        CheckStatGT(Player1,13,INT)
        Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020101 /* Take a better look. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__look__swirl

    // unless you're of specific race or class, you don't know berries well
    IF ~
      !Class(Player1,BARD_ALL)
      !Class(Player1,DRUID_ALL)
      !Class(Player1,RANGER_ALL)
      !Kit(Player1,BARBARIAN)
    ~ THEN
      REPLY @5020103 /* Taste it. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__taste__default

    // multiple options to know berries well
    IF ~
      !Class(Player1,BARD_ALL)
      OR(3)
        Class(Player1,DRUID_ALL)
        Class(Player1,RANGER_ALL)
        Kit(Player1,BARBARIAN)
    ~ THEN
      REPLY @5020103 /* Taste it. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__taste__nature

    // bards probably drunk it
    IF ~
      Class(Player1,BARD_ALL)
      !Class(Player1,DRUID_ALL)
      !Class(Player1,RANGER_ALL)
      !Kit(Player1,BARBARIAN)
    ~ THEN
      REPLY @5020103 /* Taste it. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__taste__bard

    IF ~~ THEN
      REPLY @5020104 /* Forfeit the round. */
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__arabellan_dry__forfeit
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__arabellan_dry__smell__halforc
    SAY @5020125 /* Your keen sense of smell just barely detects a familiar hint: berries. */

    // if you heard of it, you'll recognize it
    IF ~
      Global("6W#ShithriDrinksKnowDrink08","GLOBAL",1)
    ~ THEN
      REPLY @5020126 /* A dark red wine with a hint of berries. It's Arabellan Dry. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
        SetGlobal("6W#ShithriDrinksHasDrink08","GLOBAL",2)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    // default
    IF ~
      !CheckStatGT(Player1,13,INT)
      !Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020101 /* Take a better look. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__look__default
    // intelligent characters, as well as bards, know the wine
    // can be swirled to check viscousity
    IF ~
      OR(2)
        CheckStatGT(Player1,13,INT)
        Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020101 /* Take a better look. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__look__swirl

    // unless you're of specific race or class, you don't know berries well
    IF ~
      !Class(Player1,BARD_ALL)
      !Class(Player1,DRUID_ALL)
      !Class(Player1,RANGER_ALL)
      !Kit(Player1,BARBARIAN)
    ~ THEN
      REPLY @5020103 /* Taste it. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__taste__default

    // multiple options to know berries well
    IF ~
      !Class(Player1,BARD_ALL)
      OR(3)
        Class(Player1,DRUID_ALL)
        Class(Player1,RANGER_ALL)
        Kit(Player1,BARBARIAN)
    ~ THEN
      REPLY @5020103 /* Taste it. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__taste__nature

    // bards probably drunk it
    IF ~
      Class(Player1,BARD_ALL)
      !Class(Player1,DRUID_ALL)
      !Class(Player1,RANGER_ALL)
      !Kit(Player1,BARBARIAN)
    ~ THEN
      REPLY @5020103 /* Taste it. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__taste__bard

    IF ~~ THEN
      REPLY @5020104 /* Forfeit the round. */
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__arabellan_dry__forfeit
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__arabellan_dry__taste__default
    SAY @5020130 /* The wine is very dry with a woodsy feel to it. */

    // if you know the drink, you'll recognize it now
    IF ~
      PartyHasItem("_6WDR08")
    ~ THEN
      REPLY @5020131 /* Tastes familiar. It's Arabellan Dry. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
        SetGlobal("6W#ShithriDrinksHasDrink08","GLOBAL",2)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    // default
    IF ~
      !CheckStatGT(Player1,13,INT)
      !Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020101 /* Take a better look. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__look__default
    // intelligent characters, as well as bards, know the wine
    // can be swirled to check viscousity
    IF ~
      OR(2)
        CheckStatGT(Player1,13,INT)
        Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020101 /* Take a better look. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__look__swirl

    // default
    IF ~
      !Race(Player1,HALFORC)
    ~ THEN
      REPLY @5020102 /* Smell it. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__smell__default
    // half-orcs have keen sense of smell, due to their orcish heritage
    // ("borrowed" from gray orcs, who canonically have the Scent 
    // ability in DnD 3.5e)
    IF ~
      Race(Player1,HALFORC)
    ~ THEN
      REPLY @5020102 /* Smell it. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__smell__halforc
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__arabellan_dry__taste__bard
    SAY @5020133 /* The wine is deep in its dryness, its richness singing you the stories of forests afar. And yet, it brings back memories of the Sword Coast... */

    // it's available in Candlekeep
    IF ~~ THEN
      REPLY @5020134 /* I know it well, it's one of the first liquors I've had, back in good Candlekeep. It's Arabellan Dry. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
        SetGlobal("6W#ShithriDrinksHasDrink08","GLOBAL",2)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    // ...but also in Friendly Arm Inn
    IF ~~ THEN
      REPLY @5020135 /* How could I ever forget the very taste of adventure? It's the wine I had in Friendly Arm Inn, the first one I stayed at after leaving Candlekeep. Arabellan Dry. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
        SetGlobal("6W#ShithriDrinksHasDrink08","GLOBAL",2)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    // if you know the drink, you'll recognize it now
    IF ~
      PartyHasItem("_6WDR08")
    ~ THEN
      REPLY @5020131 /* Tastes familiar. It's Arabellan Dry. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
        SetGlobal("6W#ShithriDrinksHasDrink08","GLOBAL",2)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    // default
    IF ~
      !CheckStatGT(Player1,13,INT)
      !Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020101 /* Take a better look. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__look__default
    // intelligent characters, as well as bards, know the wine
    // can be swirled to check viscousity
    IF ~
      OR(2)
        CheckStatGT(Player1,13,INT)
        Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020101 /* Take a better look. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__look__swirl

    // default
    IF ~
      !Race(Player1,HALFORC)
    ~ THEN
      REPLY @5020102 /* Smell it. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__smell__default
    // half-orcs have keen sense of smell, due to their orcish heritage
    // ("borrowed" from gray orcs, who canonically have the Scent 
    // ability in DnD 3.5e)
    IF ~
      Race(Player1,HALFORC)
    ~ THEN
      REPLY @5020102 /* Smell it. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__smell__halforc
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__arabellan_dry__taste__nature
    SAY @5020136 /* This wine reminds you of forests during a rainy day. It has a hint of berries, although they seem a bit different from the local ones. It's very dry, but leaves a pleasant taste in your mouth. */

    // if you know it's from the west and it's from a forest region,
    // Cormyr is an easy guess, and Cormyr's Arabel is quite famous
    IF ~
      Global("6W#ShithriDrinksThisLook","GLOBAL",1)
    ~ THEN
      REPLY @5020116 /* A dry wine from a western forest. Most famously, Cormyr fits that. And which Cormyrean city is the most known for dry red wines? Anabel. That would be Arabellan Dry then. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
        SetGlobal("6W#ShithriDrinksHasDrink08","GLOBAL",2)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    // if you heard of it, you'll recognize it
    IF ~
      Global("6W#ShithriDrinksKnowDrink08","GLOBAL",1)
    ~ THEN
      REPLY @5020126 /* A dark red wine with a hint of berries. It's Arabellan Dry. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
        SetGlobal("6W#ShithriDrinksHasDrink08","GLOBAL",2)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    // if you know the drink, you'll recognize it now
    IF ~
      PartyHasItem("_6WDR08")
    ~ THEN
      REPLY @5020131 /* Tastes familiar. It's Arabellan Dry. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
        SetGlobal("6W#ShithriDrinksHasDrink08","GLOBAL",2)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    // default
    IF ~
      !CheckStatGT(Player1,13,INT)
      !Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020101 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksThisTaste","GLOBAL",1)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__look__default
    // intelligent characters, as well as bards, know the wine
    // can be swirled to check viscousity
    IF ~
      OR(2)
        CheckStatGT(Player1,13,INT)
        Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020101 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksThisTaste","GLOBAL",1)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__look__swirl

    // default
    IF ~
      !Race(Player1,HALFORC)
    ~ THEN
      REPLY @5020102 /* Smell it. */
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__smell__default
    // half-orcs have keen sense of smell, due to their orcish heritage
    // ("borrowed" from gray orcs, who canonically have the Scent 
    // ability in DnD 3.5e)
    IF ~
      Race(Player1,HALFORC)
    ~ THEN
      REPLY @5020102 /* Smell it. */
      DO ~
        SetGlobal("6W#ShithriDrinksThisTaste","GLOBAL",1)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__arabellan_dry__smell__halforc
  END
END
APPEND THUMB
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__arabellan_dry__forfeit
    SAY @5020140 /* It's Cormyr's pride, Arabellan Dry. */
    IF ~~ THEN
      DO ~
        SetGlobal("6W#ShithriDrinksHasDrink08","GLOBAL",2)
      ~
      GOTO 6W#ShithriDrinksDuel__pc_no_point
  END
END


APPEND 6WDRINK
  IF ~
    Global("6W#ShithriDrinksPcRound","GLOBAL",2)
    Global("6W#ShithriDrinksPcOption","GLOBAL",0)
  ~ THEN BEGIN 6W#ShithriDrinksDuel__franky__saerloonian_special_vat
    SAY @5020200 /* You're served a glass of pale red wine. */

    // default
    IF ~~ THEN
      REPLY @5020201 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__look

    // default
    IF ~
      !Race(Player1,HALFLING)
      !Class(Player1,DRUID_ALL)
      !Class(Player1,RANGER_ALL)
    ~ THEN
      REPLY @5020202 /* Smell it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__smell__default
    // druids and rangers recognize it easily
    IF ~
      !Race(Player1,HALFLING)
      OR(2)
        Class(Player1,DRUID_ALL)
        Class(Player1,RANGER_ALL)
    ~ THEN
      REPLY @5020202 /* Smell it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__smell__nature
    // halflings have a sweet tooth for strawberries and raspberries
    IF ~
      Race(Player1,HALFLING)
    ~ THEN
      REPLY @5020202 /* Smell it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__smell__halfling

    // unless you're of specific race or class, you don't know berries well
    IF ~
      !Race(Player1,HALFLING)
      !Class(Player1,DRUID_ALL)
      !Class(Player1,RANGER_ALL)
    ~ THEN
      REPLY @5020203 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__taste__default
    // druids and rangers recognize it easily
    IF ~
      !Race(Player1,HALFLING)
      OR(2)
        Class(Player1,DRUID_ALL)
        Class(Player1,RANGER_ALL)
    ~ THEN
      REPLY @5020203 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__taste__nature
    // halflings have a sweet tooth for strawberries and raspberries
    IF ~
      Race(Player1,HALFLING)
    ~ THEN
      REPLY @5020203 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__taste__halfling

    IF ~~ THEN
      REPLY @5020204 /* Forfeit the round. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__forfeit
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__look
    SAY @5020210 /* This pink-red wine is transculent and clear. It seems quite watery. */

    // default
    IF ~
      !Race(Player1,HALFLING)
      !Class(Player1,DRUID_ALL)
      !Class(Player1,RANGER_ALL)
    ~ THEN
      REPLY @5020202 /* Smell it. */
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__smell__default
    // druids and rangers recognize it easily
    IF ~
      !Race(Player1,HALFLING)
      OR(2)
        Class(Player1,DRUID_ALL)
        Class(Player1,RANGER_ALL)
    ~ THEN
      REPLY @5020202 /* Smell it. */
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__smell__nature
    // halflings have a sweet tooth for strawberries and raspberries
    IF ~
      Race(Player1,HALFLING)
    ~ THEN
      REPLY @5020202 /* Smell it. */
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__smell__halfling

    // unless you're of specific race or class, you don't know berries well
    IF ~
      !Race(Player1,HALFLING)
      !Class(Player1,DRUID_ALL)
      !Class(Player1,RANGER_ALL)
    ~ THEN
      REPLY @5020203 /* Taste it. */
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__taste__default
    // druids and rangers recognize it easily
    IF ~
      !Race(Player1,HALFLING)
      OR(2)
        Class(Player1,DRUID_ALL)
        Class(Player1,RANGER_ALL)
    ~ THEN
      REPLY @5020203 /* Taste it. */
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__taste__nature
    // halflings have a sweet tooth for strawberries and raspberries
    IF ~
      Race(Player1,HALFLING)
    ~ THEN
      REPLY @5020203 /* Taste it. */
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__taste__halfling

    IF ~~ THEN
      REPLY @5020204 /* Forfeit the round. */
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__forfeit
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__smell__default
    SAY @5020220 /* The aroma is very sweet and fruity. It seems quite complex, but you don't recognize its components. */

    // default
    IF ~~ THEN
      REPLY @5020201 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__look

    // unless you're of specific race or class, you don't know berries well
    IF ~~ THEN
      REPLY @5020203 /* Taste it. */
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__taste__default

    IF ~~ THEN
      REPLY @5020204 /* Forfeit the round. */
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__forfeit
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__smell__nature
    SAY @5020223 /* You quickly recognize the lush smell of raspberries, a fruit very common in the Sword Coast. There is a different fruity scent too. A simpler one. These two aren't the whole thing either, though. You're quite certain you're missing some third component. */

    // if you heard of it, you'll recognize it
    IF ~
      PartyHasItem("_6WDR08") // if you have it, Shithri told you about Special Vat
    ~ THEN
      REPLY @5020224 /* A wine made with two fruits, one of which is raspberry. Perhaps strawberry is the other one? That would be Saerloonian Special Vat then. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    // default
    IF ~~ THEN
      REPLY @5020201 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__look

    // druids and rangers recognize it easily
    IF ~~ THEN
      REPLY @5020203 /* Taste it. */
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__taste__nature

    IF ~~ THEN
      REPLY @5020204 /* Forfeit the round. */
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__forfeit
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__smell__halfling
    SAY @5020226 /* As you smell the wine, it brings back your memories of summer back in Candlekeep. One of the monks, passionate about halfling culture, always made sure to get you a proper treat - a crusty pie filled with local raspberries or Tethyr-imported strawberries.
                  
    This wine smells exactly like that. Raspberries, strawberries and grains. */

    // if you heard of it, you'll recognize it
    IF ~
      Global("6W#ShithriDrinksKnowDrinkSpecialVat","GLOBAL",1) // heard description of Special Vat
    ~ THEN
      REPLY @5020227 /* A wine that smells of a halfling pie. Beautiful. It's Saerloonian Special Vat. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    // default
    IF ~~ THEN
      REPLY @5020201 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__look

    // halflings have a sweet tooth for strawberries and raspberries
    IF ~~ THEN
      REPLY @5020203 /* Taste it. */
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__taste__halfling

    IF ~~ THEN
      REPLY @5020204 /* Forfeit the round. */
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__forfeit
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__taste__default
    SAY @5020230 /* It's really sweet, but not overwhelmingly so. It also leaves a tingle on your tongue, somehow. */

    // Note: even with Shithri's description, it's too complex for just any person to recognize it.

    // default
    IF ~~ THEN
      REPLY @5020201 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__look

    // default
    IF ~~ THEN
      REPLY @5020202 /* Smell it. */
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__smell__default

    IF ~~ THEN
      REPLY @5020204 /* Forfeit the round. */
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__forfeit
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__taste__nature
    SAY @5020233 /* As you sip the wine, you instantly recognize a familiar taste: ripe raspberries. There is also one more fruit in there. Less subtle in its sweetness, but just slightly acidic. The texture is also not as watery as it would if the wine was made just with sweet fruits, there is something more added in there. Something that leaves a tingle on your tongue. Your first thought is nettle, but then this wine doesn't taste of any green leaves. */

    // if you heard of it, you'll recognize it
    IF ~
      Global("6W#ShithriDrinksKnowDrinkSpecialVat","GLOBAL",1) // heard description of Special Vat
    ~ THEN
      REPLY @5020234 /* A wine made with two fruits, one of which is raspberry. And something that changes the texture, but isn't nettle or any other green leaves. Could it be grains? And could the fruit be strawberry? That would be Saerloonian Special Vat then. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    // default
    IF ~~ THEN
      REPLY @5020201 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__look

    // druids and rangers recognize it easily
    IF ~~ THEN
      REPLY @5020202 /* Smell it. */
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__smell__nature

    IF ~~ THEN
      REPLY @5020204 /* Forfeit the round. */
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__forfeit
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__taste__halfling
    SAY @5020236 /* The first thing you notice about the wine is that it's unbelievably delicious. A perfect balance of fruity sweetness with just a hint of acidity, pleasurable texture without any stickiness. It feels like drinking liquid summer, having some excellent raspberry pie and raw strawberries at the same time. It brings back memories of one of the monks at Candlekeep, passionate about halfling culture, who always made sure to get you a proper treat, going as far as to buy Tethyr-imported strawberries.

You wake up from this little daydream. The duel. You should make a guess. Raspberries, strawberries and a pleasant, pie-like feel to it. Grains? */

    // if you heard of it, you'll recognize it
    IF ~
      Global("6W#ShithriDrinksKnowDrinkSpecialVat","GLOBAL",1) // heard description of Special Vat
    ~ THEN
      REPLY @5020237 /* The taste and feel of summer pie. It is, indeed, very special. It's Saerloonian Special Vat. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    // default
    IF ~~ THEN
      REPLY @5020201 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__look

    // halflings have a sweet tooth for strawberries and raspberries
    IF ~~ THEN
      REPLY @5020202 /* Smell it. */
      GOTO 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__smell__halfling

    IF ~~ THEN
      REPLY @5020204 /* Forfeit the round. */
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__forfeit
  END
END
APPEND THUMB
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__saerloonian_special_vat__forfeit
    SAY @5020240 /* It's Sembia's rare sweet treat, Saerloonian Special Vat! */
    IF ~~ THEN
      GOTO 6W#ShithriDrinksDuel__pc_no_point
  END
END

APPEND 6WDRINK
  IF ~
    Global("6W#ShithriDrinksPcRound","GLOBAL",2)
    Global("6W#ShithriDrinksPcOption","GLOBAL",1)

    // if the PC knows it's evil, a different dialogue is run
    Global("6W#ShithriDrinksThisEvil","GLOBAL",0)
  ~ THEN BEGIN 6W#ShithriDrinksDuel__franky__blood_wine
    SAY @5020300 /* You're served a glass of deep-red wine. */

    // default
    IF ~~ THEN
      REPLY @5020301 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__look

    // default
    IF ~~ THEN
      REPLY @5020302 /* Smell it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__smell__default

    // default
    IF ~
      !Class(Player1,PALADIN_ALL)
      !Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__default
    // paladins feel bad about it
    IF ~
      Class(Player1,PALADIN_ALL)
      !Kit(Player1,BLACKGUARD)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__paladin
    // blackguard will feel like when contacting their patron
    IF ~
      Class(Player1,PALADIN_ALL)
      Kit(Player1,BLACKGUARD)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__blackguard
    // bards will remember it
    IF ~
      !Class(Player1,PALADIN_ALL) // some mods may allow paladin-bard dual
      Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__bard

    IF ~~ THEN
      REPLY @5020304 /* Forfeit the round. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__forfeit

    // Dorn will react to it, being a Blackguard, but it requires
    // high intelligence, wisdom or charisma to know why
    // (and only then it's worth mentioning)
    IF ~
      IsValidForPartyDialog("Dorn")
      Global("6W#ShithriDrinksBloodWineDorn","GLOBAL",0) // guarding variable
      Global("OHD_urgothoz_patron","GLOBAL",1)
      OR(3)
        CheckStatGT(Player1,13,INT)
        CheckStatGT(Player1,13,WIS)
        CheckStatGT(Player1,13,CHR)
    ~
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
        SetGlobal("6W#ShithriDrinksThisMaybeEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksBloodWineDorn","GLOBAL",1)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__dorn__urgothoz
    IF ~
      IsValidForPartyDialog("Dorn")
      Global("6W#ShithriDrinksBloodWineDorn","GLOBAL",0) // guarding variable
      Global("OHD_azothet_patron","GLOBAL",1)
      OR(3)
        CheckStatGT(Player1,13,INT)
        CheckStatGT(Player1,13,WIS)
        CheckStatGT(Player1,13,CHR)
    ~
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
        SetGlobal("6W#ShithriDrinksThisMaybeEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksBloodWineDorn","GLOBAL",1)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__dorn__azothet

    // Keldorn will react to it, due to his Detect Evil ability
    IF ~
      IsValidForPartyDialog("Keldron")
      Global("6W#ShithriDrinksBloodWineKeldorn","GLOBAL",0) // guarding variable
    ~
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
        SetGlobal("6W#ShithriDrinksThisMaybeEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksBloodWineKeldorn","GLOBAL",1)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__keldorn

    // Implementation Note:
    // If any mod adds a companion with the ability to detect evil,
    // that character should be included here. Beware of the order.
    //
    // Only one companion should get a reaction here.

    // If the PC is a paladin or blackguard, they will react too:
    IF ~
      Class(Player1,PALADIN_ALL)
      !Kit(Player1,BLACKGUARD)
      !Class(Player1,SHAMAN)
    ~
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
        SetGlobal("6W#ShithriDrinksThisMaybeEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksBloodWineSelf","GLOBAL",1)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__paladin

    IF ~
      Kit(Player1,BLACKGUARD)
      !Class(Player1,SHAMAN)
    ~
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
        SetGlobal("6W#ShithriDrinksThisMaybeEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksBloodWineSelf","GLOBAL",1)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__blackguard

    // Shamans have it even better, as they will know the answer straight away.
    IF ~
      Class(Player1,SHAMAN)
    ~
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
        SetGlobal("6W#ShithriDrinksThisMaybeEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksBloodWineSelf","GLOBAL",1)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__shaman
  END
  IF ~~ THEN 6W#ShithriDrinksDuel__franky__blood_wine__shaman
    SAY @5020380 /* The air suddenly seems cooler, but noone else seems to notice it. As you lean towards the glass, your vision gets blurry and you feel your very self being pushed back. */
    =
    @5020381 /* You know this feeling well. You let the spirits guide your consciousness. */
    =
    @5020382 /* You are shown a series of violent scenes as if you were the one experiencing them. Warm blood dripping from your hand as you murder innocents. But then the scenes vanish and you're filled with regret. The pain of a sinful soul unable to truly cross the border to the ethereal world. */
    =
    @5020383 /* You see a blurry silhouette of a powerful wizard... or at least someone you see as a wizard. Some strange power sucks you in and binds you to a piece of mater. You have no eyes. No ears. You just grow.

You are now a plant. */
    =
    @5020384 /* Your grapes are dry and lifeless, mere shells of fruits. And yet you know people gather them, because with each one of them being picked, you lose a bit of yourself. */
    =
    @5020385 /* Finally, you sense being served in a glass. And a friendly soul leaning towards you. The first being willing to hear your story. */
    =
    @5020386 /* You wake up. Only then you realise your lips have already moved to say... */

    IF ~~ THEN
      REPLY @5020387 /* BLOOD WINE */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point
  END
  IF ~~ THEN 6W#ShithriDrinksDuel__franky__blood_wine__blackguard
    SAY @5020310 /* For some reason, you suddenly feel very pleased. It reminds you of when you complete a task from your dark patron. */

    IF ~~ THEN
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__decide
  END
  IF ~~ THEN 6W#ShithriDrinksDuel__franky__blood_wine__paladin
    SAY @5020311 /* For a split of a second, you get an eerie feeling. Even afterwards, you're a little uneasy looking at the glass before you. */

    IF ~~ THEN
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__decide
  END
  IF ~~ THEN 6W#ShithriDrinksDuel__franky__blood_wine__keldorn
    SAY @5020312 /* You notice that Keldorn got pale. He looks at you with concern and slowly shakes his head. */

    IF ~~ THEN
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__decide
  END
  IF ~~ THEN 6W#ShithriDrinksDuel__franky__blood_wine__dorn__urgothoz
    SAY @5020313 /* You notice Dorn is smiling. And it's not just any smile - it's the very same facial expression he makes after completing a mission given to him by his patron, Ur-Gothoz. */

    IF ~~ THEN
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__decide
  END
  IF ~~ THEN 6W#ShithriDrinksDuel__franky__blood_wine__dorn__azothet
    SAY @5020314 /* You notice Dorn is smiling. And it's not just any smile - it's the very same facial expression he makes after completing a mission given to him by his patron, Azothet. */

    IF ~~ THEN
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__decide
  END

  IF ~
    Global("6W#ShithriDrinksPcRound","GLOBAL",2)
    Global("6W#ShithriDrinksPcOption","GLOBAL",1)
    // can get to this state from other states,
    // so this condition isn't always met:
    Global("6W#ShithriDrinksThisEvil","GLOBAL",1)
  ~ THEN BEGIN 6W#ShithriDrinksDuel__franky__blood_wine__decide
    SAY @5020305 /* You look again at the glass of wine. */

    // If one can cast Bless or Chant, their WIS is probably high
    // BUT 13 is the minimum for paladins, so requiring at least 14
    // seems fair.
    IF ~
      Global("6W#ShithriDrinksThisEvil","GLOBAL",2)
      CheckStatGT(Player1,13,WIS)
      !Class(Player1,BARD_ALL)
    ~
      REPLY @5020317 /* Only one wine can have such a strong presence of evil in it. One posessed by sinful spirits. It's Blood Wine. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point
    IF ~
      Global("6W#ShithriDrinksThisEvil","GLOBAL",2)
      Class(Player1,BARD_ALL)
    ~
      REPLY @5020318 /* I heard too many stories not to recognize it. Made from grapes shriveled by sinful spirits. It's Blood Wine. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    // you can simply cast Detect-Evil without asking anyone's permission
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      HaveSpellRES("SPCL212") // Paladin's innate DetectEvil
    ~ THEN
      REPLY @5020315 /* Cast Detect Evil. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",1)
      ~
      EXIT
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      !HaveSpellRES("SPCL212") // Paladin's innate DetectEvil
      HaveSpellRES("SPPR104") // Cleric spellbook's spell
    ~ THEN
      REPLY @5020315 /* Cast Detect Evil. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",2)
      ~
      EXIT
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      !HaveSpellRES("SPCL212") // Paladin's innate DetectEvil
      !HaveSpellRES("SPPR104") // Cleric spellbook's spell
      HaveSpellRES("SPWI202")  // Wizard spellbook's spell
    ~ THEN
      REPLY @5020315 /* Cast Detect Evil. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",3)
      ~
      EXIT

    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      HaveSpellRES("SPPR101") // Bless
    ~ THEN
      REPLY @5020316 /* "I hope you don't mind if I pray before making my guess?" */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",4)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__pray_ok
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      !HaveSpellRES("SPPR101") // Bless
      HaveSpellRES("SPPR203")  // Chant
    ~ THEN
      REPLY @5020316 /* "I hope you don't mind if I pray before making my guess?" */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",5)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__pray_ok

    // default
    IF ~
      !Global("6W#ShithriDrinksThisEvil","GLOBAL",3)
    ~ THEN
      REPLY @5020301 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__look
    // purified
    IF ~
      Global("6W#ShithriDrinksThisEvil","GLOBAL",3)
    ~ THEN
      REPLY @5020301 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__look_purified

    // default
    IF ~~ THEN
      REPLY @5020302 /* Smell it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__smell__default

    // default
    IF ~
      !Class(Player1,PALADIN_ALL)
      !Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__default
    // paladins will lose consciousness
    IF ~
      Class(Player1,PALADIN_ALL)
      !Kit(Player1,BLACKGUARD)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__paladin
    // blackguard will feel like when contacting their patron
    IF ~
      Class(Player1,PALADIN_ALL)
      Kit(Player1,BLACKGUARD)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__blackguard
    // bards will remember it
    IF ~
      !Class(Player1,PALADIN_ALL) // some mods may allow paladin-bard dual
      Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__bard

    IF ~~ THEN
      REPLY @5020304 /* Forfeit the round. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__forfeit
  END
  IF ~
    Global("6W#ShithriDrinksPcRound","GLOBAL",2)
    Global("6W#ShithriDrinksPcOption","GLOBAL",1)
    Global("6W#ShithriDrinksThisEvil","GLOBAL",3)
  ~ THEN 6W#ShithriDrinksDuel__franky__blood_wine__evil_scream
    SAY @5020330 /* As you bless the glass among the hellish groaning, the wine suddenly changes its color. Now it's of a vivid red hue. */

    // If one can cast Bless or Chant, their WIS is probably high
    // BUT 13 is the minimum for paladins, so requiring at least 14
    // seems fair.
    IF ~
      CheckStatGT(Player1,13,WIS)
    ~ THEN
      REPLY @5020331 /* A wine once of the color of clotted blood, but screams and resembles a fresh wound when blessed. It can't be anything but Blood Wine. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    // default
    IF ~~ THEN
      REPLY @5020301 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__look_purified

    // default
    IF ~~ THEN
      REPLY @5020302 /* Smell it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__smell__default

    // default
    IF ~
      !Class(Player1,PALADIN_ALL)
      !Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__default
    // paladins will lose consciousness
    IF ~
      Class(Player1,PALADIN_ALL)
      !Kit(Player1,BLACKGUARD)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__paladin
    // blackguard will feel like when contacting their patron
    IF ~
      Class(Player1,PALADIN_ALL)
      Kit(Player1,BLACKGUARD)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__blackguard
    // bards will remember it
    IF ~
      !Class(Player1,PALADIN_ALL) // some mods may allow paladin-bard dual
      Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__bard

    IF ~~ THEN
      REPLY @5020304 /* Forfeit the round. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__forfeit
  END

  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__blood_wine__look
    SAY @5020340 /* This wine is of deep red hue. You can see no other characteristics worth mentioning. */

    // you can simply cast Detect-Evil without asking anyone's permission
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      HaveSpellRES("SPCL212") // Paladin's innate DetectEvil
    ~ THEN
      REPLY @5020315 /* Cast Detect Evil. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",1)
      ~
      EXIT
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      !HaveSpellRES("SPCL212") // Paladin's innate DetectEvil
      HaveSpellRES("SPPR104") // Cleric spellbook's spell
    ~ THEN
      REPLY @5020315 /* Cast Detect Evil. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",2)
      ~
      EXIT
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      !HaveSpellRES("SPCL212") // Paladin's innate DetectEvil
      !HaveSpellRES("SPPR104") // Cleric spellbook's spell
      HaveSpellRES("SPWI202")  // Wizard spellbook's spell
    ~ THEN
      REPLY @5020315 /* Cast Detect Evil. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",3)
      ~
      EXIT

    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      HaveSpellRES("SPPR101") // Bless
    ~ THEN
      REPLY @5020316 /* "I hope you don't mind if I pray before making my guess?" */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",4)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__pray_ok
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      !HaveSpellRES("SPPR101") // Bless
      HaveSpellRES("SPPR203")  // Chant
    ~ THEN
      REPLY @5020316 /* "I hope you don't mind if I pray before making my guess?" */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",5)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__pray_ok

    // default
    IF ~~ THEN
      REPLY @5020302 /* Smell it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__smell__default

    // default
    IF ~
      !Class(Player1,PALADIN_ALL)
      !Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__default
    // paladins will lose consciousness
    IF ~
      Class(Player1,PALADIN_ALL)
      !Kit(Player1,BLACKGUARD)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__paladin
    // blackguard will feel like when contacting their patron
    IF ~
      Class(Player1,PALADIN_ALL)
      Kit(Player1,BLACKGUARD)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__blackguard
    // bards will remember it
    IF ~
      !Class(Player1,PALADIN_ALL) // some mods may allow paladin-bard dual
      Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__bard

    IF ~~ THEN
      REPLY @5020304 /* Forfeit the round. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__forfeit
  END
  IF ~~ THEN 6W#ShithriDrinksDuel__franky__blood_wine__look_purified
    SAY @5020341 /* The wine isn't deep red anymore, now its color is very vivid. As you take a better look, you notice it actually seems to slowly flow around the glass. */

    // An inteligent character can deduce from its movement.
    IF ~
      CheckStatGT(Player1,13,INT)
    ~ THEN
      REPLY @5020342 /* A wine that looked like clotted blood while still, but started flowing on its own when vivid red, like a fresh wound. It can'y be anything other than Blood Wine. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    // If one can cast Bless or Chant, their WIS is probably high
    // BUT 13 is the minimum for paladins, so requiring at least 14
    // seems fair.
    IF ~
      CheckStatGT(Player1,13,WIS)
    ~ THEN
      REPLY @5020331 /* A wine once of the color of clotted blood, but screams and resembles a fresh wound when blessed. It can't be anything other than Blood Wine. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    // default
    IF ~~ THEN
      REPLY @5020301 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__look_purified

    // default
    IF ~~ THEN
      REPLY @5020302 /* Smell it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__smell__default

    // default
    IF ~
      !Class(Player1,PALADIN_ALL)
      !Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__default
    // paladins will lose consciousness
    IF ~
      Class(Player1,PALADIN_ALL)
      !Kit(Player1,BLACKGUARD)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__paladin
    // blackguard will feel like when contacting their patron
    IF ~
      Class(Player1,PALADIN_ALL)
      Kit(Player1,BLACKGUARD)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__blackguard
    // bards will remember it
    IF ~
      !Class(Player1,PALADIN_ALL) // some mods may allow paladin-bard dual
      Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__bard

    IF ~~ THEN
      REPLY @5020304 /* Forfeit the round. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__forfeit
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__blood_wine__smell__default
    SAY @5020350 /* The aroma is quite strong, but you find it difficult to describe it. Plums? Cherries? Something different altogether? You're not sure. */

    // you can simply cast Detect-Evil without asking anyone's permission
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      HaveSpellRES("SPCL212") // Paladin's innate DetectEvil
    ~ THEN
      REPLY @5020315 /* Cast Detect Evil. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",1)
      ~
      EXIT
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      !HaveSpellRES("SPCL212") // Paladin's innate DetectEvil
      HaveSpellRES("SPPR104") // Cleric spellbook's spell
    ~ THEN
      REPLY @5020315 /* Cast Detect Evil. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",2)
      ~
      EXIT
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      !HaveSpellRES("SPCL212") // Paladin's innate DetectEvil
      !HaveSpellRES("SPPR104") // Cleric spellbook's spell
      HaveSpellRES("SPWI202")  // Wizard spellbook's spell
    ~ THEN
      REPLY @5020315 /* Cast Detect Evil. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",3)
      ~
      EXIT

    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      HaveSpellRES("SPPR101") // Bless
    ~ THEN
      REPLY @5020316 /* "I hope you don't mind if I pray before making my guess?" */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",4)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__pray_ok
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      !HaveSpellRES("SPPR101") // Bless
      HaveSpellRES("SPPR203")  // Chant
    ~ THEN
      REPLY @5020316 /* "I hope you don't mind if I pray before making my guess?" */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",5)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__pray_ok

    // default
    IF ~
      !Global("6W#ShithriDrinksThisEvil","GLOBAL",3)
    ~ THEN
      REPLY @5020301 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__look
    // purified
    IF ~
      Global("6W#ShithriDrinksThisEvil","GLOBAL",3)
    ~ THEN
      REPLY @5020301 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__look_purified

    // default
    IF ~
      !Class(Player1,PALADIN_ALL)
      !Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__default
    // paladins will lose consciousness
    IF ~
      Class(Player1,PALADIN_ALL)
      !Kit(Player1,BLACKGUARD)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__paladin
    // blackguard will feel like when contacting their patron
    IF ~
      Class(Player1,PALADIN_ALL)
      Kit(Player1,BLACKGUARD)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__blackguard
    // bards will remember it
    IF ~
      !Class(Player1,PALADIN_ALL) // some mods may allow paladin-bard dual
      Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @5020303 /* Taste it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__taste__bard

    IF ~~ THEN
      REPLY @5020304 /* Forfeit the round. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__forfeit
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__blood_wine__taste__default
    SAY @5020360 /* It's heavy-bodied. Deep red tones are complimented by a slight afterbite. It's... pleasant, but in an unusual way. */

    // you can simply cast Detect-Evil without asking anyone's permission
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      HaveSpellRES("SPCL212") // Paladin's innate DetectEvil
    ~ THEN
      REPLY @5020315 /* Cast Detect Evil. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",1)
      ~
      EXIT
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      !HaveSpellRES("SPCL212") // Paladin's innate DetectEvil
      HaveSpellRES("SPPR104") // Cleric spellbook's spell
    ~ THEN
      REPLY @5020315 /* Cast Detect Evil. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",2)
      ~
      EXIT
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      !HaveSpellRES("SPCL212") // Paladin's innate DetectEvil
      !HaveSpellRES("SPPR104") // Cleric spellbook's spell
      HaveSpellRES("SPWI202")  // Wizard spellbook's spell
    ~ THEN
      REPLY @5020315 /* Cast Detect Evil. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",3)
      ~
      EXIT

    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      HaveSpellRES("SPPR101") // Bless
    ~ THEN
      REPLY @5020316 /* "I hope you don't mind if I pray before making my guess?" */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",4)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__pray_ok
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      !HaveSpellRES("SPPR101") // Bless
      HaveSpellRES("SPPR203")  // Chant
    ~ THEN
      REPLY @5020316 /* "I hope you don't mind if I pray before making my guess?" */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",5)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__pray_ok

    // default
    IF ~
      !Global("6W#ShithriDrinksThisEvil","GLOBAL",3)
    ~ THEN
      REPLY @5020301 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__look
    // purified
    IF ~
      Global("6W#ShithriDrinksThisEvil","GLOBAL",3)
    ~ THEN
      REPLY @5020301 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__look_purified

    // default
    IF ~~ THEN
      REPLY @5020302 /* Smell it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__smell__default

    IF ~~ THEN
      REPLY @5020304 /* Forfeit the round. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__forfeit
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__blood_wine__taste__paladin
    SAY @5020361 /* You take a small sip and start choking. Your throat is burning and your heart is filled with pain. For some reason, a vivid picture of a gallow can't get out of your mind. You almost hear the crows caw. */

    IF ~
      CheckStatGT(Player1,13,WIS)
    ~ THEN
      REPLY @5020362 /* So much pain. Such sinful spirits, dwelling in this glass. I did hear rumors of it, but didn't want to believe it. And yet here it is - Blood Wine. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    IF ~~ THEN
      REPLY @5020363 /* Gallows, crows, spirits of dead men hanging! Take it away from me! */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__forfeit

    // no other options, as you can't think for the time being
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__blood_wine__taste__blackguard
    SAY @5020364 /* As you take a sip, you feel your heart is filling with power and your head - with vivid images. Gallow. Hanging men. Crows cawing above them. */

    IF ~
      CheckStatGT(Player1,13,WIS)
    ~ THEN
      REPLY @5020365 /* Whoever made this wine, they weren't afraid of powerful spirits. I heard about it. It's Blood Wine. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    // you can simply cast Detect-Evil without asking anyone's permission
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      HaveSpellRES("SPCL212") // Paladin's innate DetectEvil
    ~ THEN
      REPLY @5020315 /* Cast Detect Evil. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",1)
      ~
      EXIT
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      !HaveSpellRES("SPCL212") // Paladin's innate DetectEvil
      HaveSpellRES("SPPR104") // Cleric spellbook's spell
    ~ THEN
      REPLY @5020315 /* Cast Detect Evil. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",2)
      ~
      EXIT
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      !HaveSpellRES("SPCL212") // Paladin's innate DetectEvil
      !HaveSpellRES("SPPR104") // Cleric spellbook's spell
      HaveSpellRES("SPWI202")  // Wizard spellbook's spell
    ~ THEN
      REPLY @5020315 /* Cast Detect Evil. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",3)
      ~
      EXIT

    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      HaveSpellRES("SPPR101") // Bless
    ~ THEN
      REPLY @5020316 /* "I hope you don't mind if I pray before making my guess?" */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",4)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__pray_ok
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      !HaveSpellRES("SPPR101") // Bless
      HaveSpellRES("SPPR203")  // Chant
    ~ THEN
      REPLY @5020316 /* "I hope you don't mind if I pray before making my guess?" */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",5)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__pray_ok

    // default
    IF ~
      !Global("6W#ShithriDrinksThisEvil","GLOBAL",3)
    ~ THEN
      REPLY @5020301 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__look
    // purified
    IF ~
      Global("6W#ShithriDrinksThisEvil","GLOBAL",3)
    ~ THEN
      REPLY @5020301 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__look_purified

    // default
    IF ~~ THEN
      REPLY @5020302 /* Smell it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__smell__default

    IF ~~ THEN
      REPLY @5020304 /* Forfeit the round. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__forfeit
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__blood_wine__taste__bard
    SAY @5020366 /* The taste of this wine bring you back a memory back from the Sword Coast... */

    IF ~~ THEN
      REPLY @5020367 /* I know this wine. The monks at Candlekeep said it was the only truly "evil" one. I didn't understand what they meant until I've tried it... Blood Wine. Fitting name. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    IF ~~ THEN
      REPLY @5020368 /* It's just a story but a monk in Candlekeep once mentioned me, but it's too specific to be anything else. Heavy wine with deep tones and slight afterbite. Very dark red, looks almost like blood. And made from grapes posessed by spirits of sinful mortals. Blood Wine. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    IF ~~ THEN
      REPLY @5020369 /* I tried it back in Nashkel. One of the people there told me a legend about the curse around it. Cursed or not, it's definitely Blood Wine. */
      DO ~
        IncrementGlobal("6#ShithriDrinksPirPoints","GLOBAL",-1)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__pc_point

    // you can simply cast Detect-Evil without asking anyone's permission
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      HaveSpellRES("SPCL212") // Paladin's innate DetectEvil
    ~ THEN
      REPLY @5020315 /* Cast Detect Evil. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",1)
      ~
      EXIT
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      !HaveSpellRES("SPCL212") // Paladin's innate DetectEvil
      HaveSpellRES("SPPR104") // Cleric spellbook's spell
    ~ THEN
      REPLY @5020315 /* Cast Detect Evil. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",2)
      ~
      EXIT
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      !HaveSpellRES("SPCL212") // Paladin's innate DetectEvil
      !HaveSpellRES("SPPR104") // Cleric spellbook's spell
      HaveSpellRES("SPWI202")  // Wizard spellbook's spell
    ~ THEN
      REPLY @5020315 /* Cast Detect Evil. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",3)
      ~
      EXIT

    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      HaveSpellRES("SPPR101") // Bless
    ~ THEN
      REPLY @5020316 /* "I hope you don't mind if I pray before making my guess?" */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",4)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__pray_ok
    IF ~
      GlobalGT("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
      Global("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
      !HaveSpellRES("SPPR101") // Bless
      HaveSpellRES("SPPR203")  // Chant
    ~ THEN
      REPLY @5020316 /* "I hope you don't mind if I pray before making my guess?" */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",2)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",5)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__pray_ok

    // default
    IF ~
      !Global("6W#ShithriDrinksThisEvil","GLOBAL",3)
    ~ THEN
      REPLY @5020301 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__look
    // purified
    IF ~
      Global("6W#ShithriDrinksThisEvil","GLOBAL",3)
    ~ THEN
      REPLY @5020301 /* Take a better look. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__look_purified

    // default
    IF ~~ THEN
      REPLY @5020302 /* Smell it. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      GOTO 6W#ShithriDrinksDuel__franky__blood_wine__smell__default

    IF ~~ THEN
      REPLY @5020304 /* Forfeit the round. */
      DO ~
        SetGlobal("6W#ShithriDrinksPcRound","GLOBAL",0)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__forfeit
  END
END

CHAIN IF ~
  Global("6W#ShithriDrinksPcRound","GLOBAL",2)
  Global("6W#ShithriDrinksPcOption","GLOBAL",1)
  Global("6W#ShithriDrinksThisEvil","GLOBAL",2)
~ THEN 6WDRINK 6W#ShithriDrinksDuel__franky__blood_wine__evil
  @5020320 /* You feel a powerful aura emanating from the glass right in front of you. The wine howls with evil like wind on a hill. */
  == 6WPIRDR
  @5020321 /* Oy, wha' ye doin' wit' that magics? */
END
  IF ~~ THEN
    REPLY @5020322 /* It was just checking if it wasn't cursed... well, it is. */
    EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__spell_allowed
  IF ~~ THEN
    REPLY @5020323 /* Judge? I thought it was supposed to be a drink, not a cursed potion. */
    EXTERN ~THUMB~ 6W#ShithriDrinksDuel__franky__blood_wine__spell_allowed

APPEND THUMB
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__blood_wine__spell_allowed
    SAY @5020325 /* Hmm... the Thumb be allowin' that spell. But ye still need t' guess. */
    IF ~~ THEN
      EXTERN ~6WDRINK~ 6W#ShithriDrinksDuel__franky__blood_wine__decide
  END

  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__blood_wine__pray_ok
    SAY @5020326 /* Aye. The Thumb ain't be 'avin' nah problem wit' prayer. */
    IF ~~ THEN
      EXIT
  END

  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__franky__blood_wine__forfeit
    SAY @5020090 /* The legendary "cursed wine" from Aglarond. Blood Wine. */
    IF ~~ THEN
      GOTO 6W#ShithriDrinksDuel__pc_no_point
  END
END


APPEND THUMB
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__pc_point
    SAY @5029900 /* Point fer <CHARNAME>! */

    IF ~
      GlobalLT("6W#ShithriDrinksRound","GLOBAL",3)
    ~ THEN
      DO ~
        // reset hints
        SetGlobal("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",0)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
        SetGlobal("6W#ShithriDrinksThisLook","GLOBAL",0)
        SetGlobal("6W#ShithriDrinksThisSmell","GLOBAL",0)
        SetGlobal("6W#ShithriDrinksThisTaste","GLOBAL",0)
        // next round
        IncrementGlobal("6W#ShithriDrinksRound","GLOBAL",1)
      ~
      GOTO 6W#ShithriDrinksDuel__pick_drink

    IF ~
      Global("6W#ShithriDrinksRound","GLOBAL",3) // end of the duel!
    ~ THEN
      GOTO 6W#ShithriDrinksDuel__results
  END

  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__pc_no_point
    SAY @5029910 /* No point fer ye. */

    IF ~
      GlobalLT("6W#ShithriDrinksRound","GLOBAL",3)
    ~ THEN
      DO ~
        // reset hints
        SetGlobal("6W#ShithriDrinksThisMaybeEvil","GLOBAL",0)
        SetGlobal("6W#ShithriDrinksThisEvil","GLOBAL",0)
        SetGlobal("6W#ShithriDrinksThisEvilSpell","GLOBAL",0)
        SetGlobal("6W#ShithriDrinksThisLook","GLOBAL",0)
        SetGlobal("6W#ShithriDrinksThisSmell","GLOBAL",0)
        SetGlobal("6W#ShithriDrinksThisTaste","GLOBAL",0)
        // next round
        IncrementGlobal("6W#ShithriDrinksRound","GLOBAL",1)
      ~
      GOTO 6W#ShithriDrinksDuel__pick_drink

    IF ~
      Global("6W#ShithriDrinksRound","GLOBAL",3) // end of the duel!
    ~ THEN
      GOTO 6W#ShithriDrinksDuel__results
  END
END

APPEND THUMB
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__results
    SAY @5030000 /* That was the last round, folks! An' the winner is... */

    IF ~Global("6#ShithriDrinksPirPoints","GLOBAL",0)~ THEN
      GOTO 6W#ShithriDrinksDuel__results__draw

    IF ~GlobalGT("6#ShithriDrinksPirPoints","GLOBAL",0)~ THEN
      GOTO 6W#ShithriDrinksDuel__results__pir

    IF ~GlobalLT("6#ShithriDrinksPirPoints","GLOBAL",0)~ THEN
      GOTO 6W#ShithriDrinksDuel__results__pc
  END
END

CHAIN THUMB 6W#ShithriDrinksDuel__results__draw
  @5030100 /* Neither o' the two! They proved to both be jus' as good! */
  == SBCUST02 IF ~InMyArea("SBCUST02")~
  @5030101 /* Huh. That comes a surprise. That new <PRO_MANWOMAN>'s nah so bad. */

  BRANCH ~IfValidForPartyDialogue("6WSHITHRI")~
  BEGIN
    == 6WSHITJ 
    @5030102 /* Har har, 'tis me capt'n fer ye! */
    == 6WPIRDR
    @5030103 /* I mus' say, Shithri, I misjudged that capt'n o' yers. */
    // Implementation Note:
    // Unfortunately, it seems that it's not possible to provide two different texts
    // (and voiceovers) for a single state in case of the English language depending
    // on the PC's gender. Therefore, two separate states must be used.
    == 6WSHITJ IF ~Gender(Player1,MALE)~
    @5030104 /* Ye know, he got a name. 'n ears. */
    == 6WSHITJ IF ~!Gender(Player1,MALE)~
    @5030105 /* Ye know, she got a name. 'n ears. */
  END

  == 6WPIRDR
  @5030106 /* <CHARNAME>. As much as I hate t' admit that - ye nah a common lubber I thought ye be. Good match. */
END
  IF ~~ THEN
    REPLY @5030110 /* Thank you. You're not half-bad either, Franky. */
    EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__results__draw__ok
  IF ~~ THEN
    REPLY @5030120 /* To be frank, I can't say I really expected to hear "sorry". I guess that's as good as it gets. */
    EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__results__draw__ok
  IF ~~ THEN
    REPLY @5030130 /* You just got lucky. */
    EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__results__draw__lucky

APPEND 6WPIRDR
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__results__draw__lucky
    SAY @5030131 /* Lucky? Har har! Prove me worse then, next time we meet. Until then! */
    IF ~~ THEN
      SOLVED_JOURNAL @9000020 /* Shithri-inspired liquor collection

My duel with Franky the Eye-Popper ended in a draw. I think he just got lucky. */
      DO ~
        AddExperienceParty(33000)
        SetGlobal("6W#ShithriDrinksEnding","GLOBAL",1)
      ~
      EXIT
  END
  IF ~~ THEN BEGIN 6W#ShithriDrinksDuel__results__draw__ok
    SAY @5030111 /* Maybe we'll get a rematch next time we meet. Until then! */
    IF ~~ THEN
      SOLVED_JOURNAL @9000020 /* Shithri-inspired liquor collection

My duel with Franky the Eye-Popper ended in a draw. I think he just got lucky. */
      DO ~
        AddExperienceParty(33000)
        SetGlobal("6W#ShithriDrinksEnding","GLOBAL",1)
      ~
      EXIT
  END
END


CHAIN THUMB 6W#ShithriDrinksDuel__results__pir
  @5030200 /* Our one an' only, Franky the Eye-Popper! */
  == SBCUST02 IF ~InMyArea("SBCUST02")~
  @5030201 /* Knew that. */

  BRANCH ~IfValidForPartyDialogue("6WSHITHRI")~
  BEGIN
    == 6WPIRDR
    @5030202 /* See, Shithri? Won fair an' square so I guess ye joinin' me now? */
    == 6WSHITJ
    @5030203 /* Wha'? This bucko be ne'er part o' the stakes, swab. */
    == 6WPIRDR
    @5030204 /* Oh come on... */
    == 6WSHITJ
    @5030205 /* I say wha' I say. */
  END

  == 6WPIRDR
  @5030206 /* Oi, lubber. I hope ye nah forgot. Me gold. */
END
  IF ~~ THEN
    REPLY @5030210 /* Good match. Here is your reward. */
    SOLVED_JOURNAL @9000030 /* Shithri-inspired liquor collection

I lost my duel with Franky the Eye-Popper. I had to give him 5000 gold pieces, as promised. */
    DO ~
      AddExperienceParty(25000)
      TakePartyGold(5000)
    ~
    EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__results__pir__nice
  IF ~~ THEN
    REPLY @5030220 /* You just got lucky. */
    EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__results__pir__lucky
  IF ~IfValidForPartyDialogue("6WSHITHRI")~ THEN
    REPLY @5030230 /* Can't you just take that pirate girl? */
    EXTERN ~6WSHITJ~ 6W#ShithriDrinksDuel__results__pir__take_her
  IF ~~ THEN
    REPLY @5030240 /* Gold? */
    EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__results__pir__gold

APPEND 6WPIRDR
  IF ~~ THEN 6W#ShithriDrinksDuel__results__pir__nice
    SAY @5030211 /* Harrr... Aye, 5000 'tis. */
    =
    @5030212 /* Maybe one day, aft' ye see some more o' the world, we'll get a rematch. Until then, lubber! */
    IF ~~ THEN
      DO ~
        SetGlobal("6W#ShithriDrinksEnding","GLOBAL",1)
      ~
      EXIT
  END

  IF ~~ THEN 6W#ShithriDrinksDuel__results__pir__lucky
    SAY @5030221 /* Har har! Ye a sore loser, lubber! Now. Laughs aside - me gold. */
    IF ~~ THEN
      REPLY @5030222 /* Here it is. */
      SOLVED_JOURNAL @9000030 /* Shithri-inspired liquor collection

I lost my duel with Franky the Eye-Popper. I had to give him 5000 gold pieces, as promised. */
      DO ~
        AddExperienceParty(25000)
        TakePartyGold(5000)
      ~
      GOTO 6W#ShithriDrinksDuel__results__pir__nice
    IF ~~ THEN
      REPLY @5030240 /* Gold? */
      GOTO 6W#ShithriDrinksDuel__results__pir__gold
  END

  IF ~~ THEN 6W#ShithriDrinksDuel__results__pir__gold
    SAY @5030241 /* Ye deaf or wha'? Ownin' me 5000 gold pieces, remember? */
    IF ~~ THEN
      REPLY @5030242 /* Sure, take it. */
      SOLVED_JOURNAL @9000030 /* Shithri-inspired liquor collection

I lost my duel with Franky the Eye-Popper. I had to give him 5000 gold pieces, as promised. */
      DO ~
        AddExperienceParty(25000)
        TakePartyGold(5000)
      ~
      GOTO 6W#ShithriDrinksDuel__results__pir__nice
    IF ~~ THEN
      REPLY @5030243 /* Ah. That gold. I don't feel like giving it to you. */
      GOTO 6W#ShithriDrinksDuel__results__pir__not_paying
  END

  IF ~~ THEN 6W#ShithriDrinksDuel__results__pir__not_paying
    SAY @5030250 /* Huh. Lemme tell ye somethin', matey. Jus' a friendly advice, cause I'm in a good mood. */
    =
    @5030251 /* I don't need yer gold. But I doubt the Thumb be happy if ye turn out nah t' pay yer debts. */

    IF ~~ THEN
      REPLY @5030252 /* Ok, ok. Take my gold then. */
      SOLVED_JOURNAL @9000030 /* Shithri-inspired liquor collection

I lost my duel with Franky the Eye-Popper. I had to give him 5000 gold pieces, as promised. */
      DO ~
        AddExperienceParty(25000)
        TakePartyGold(5000)
      ~
      GOTO 6W#ShithriDrinksDuel__results__pir__nice
    IF ~~ THEN
      REPLY @5030253 /* I don't care what you tell about me. I'm not parting with my gold. */
      SOLVED_JOURNAL @9000031 /* Shithri-inspired liquor collection

I lost my duel with Franky the Eye-Popper, but I refused to pay him. He warned me that the Thumb won't like it, but why should I care? */
      DO ~
        AddExperienceParty(17000)
        SetGlobal("6W#SeaBountyCheater","GLOBAL",1)
        ReputationInc(-1)
      ~
      EXTERN ~THUMB~ 6W#ShithriDrinksDuel__results__thumb_not_paying
  END
END

APPEND 6WSHITJ
  IF ~~ THEN 6W#ShithriDrinksDuel__results__pir__take_her
    SAY @5030260 /* Capt'n. A debt be a debt. */
    IF ~~ THEN
      EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__results__pir__not_paying
  END
END

//
// The Thumb shouldn't offer a drink to a cheater.
//
// TODO: other NPCs reacting in some way, maybe?
APPEND THUMB
  IF ~~ THEN 6W#ShithriDrinksDuel__results__thumb_not_paying
    SAY @5030255 /* 'Tis how ye greet hospitality? Get out! The Thumb had his share o' slippery rats, nah need fer more! */
    IF ~~ THEN
      DO ~
        SetGlobal("6W#ShithriDrinksEnding","GLOBAL",1)
      ~
      EXIT
  END

  IF WEIGHT #-1 ~
    Global("6W#SeaBountyCheater","GLOBAL",1)
  ~ THEN BEGIN 6W#ThumbNotLikeCheaters
    SAY @5030500 /* Ah, ye again. Wha' ye lookin' fer, ye cheatin' bastard? Ye ain't welcome here! */

    IF ~~ THEN
      REPLY @5030501 /* Thumb, what happened to the hospitality? I thought Sea Bounty welcomes all. */
      GOTO 6W#ThumbNotLikeCheaters__hospitality_where

    IF ~~ THEN
      REPLY @5030502 /* Well, I'd like a drink. */
      GOTO 6W#ThumbNotLikeCheaters__id_like_a_drink

    IF ~
      Global("HiddenJob","GLOBAL",1)
      Global("ThumbSeeker","GLOBAL",0)
    ~ THEN
      REPLY #34724 /* ~I am a Seeker.~ */
      DO ~
        SetGlobal("ThumbSeeker","GLOBAL",1)
      ~
      GOTO 7

    IF ~~ THEN
      REPLY @5030503 /* Nothing, really. Have a good day. */
      EXIT
  END

  IF ~~ THEN 6W#ThumbNotLikeCheaters__hospitality_where
    SAY @5030510 /* All guests are welcome at Sea Bounty. But ye nah guest. Begone. */
    IF ~~ THEN EXIT
  END

  IF ~~ THEN 6W#ThumbNotLikeCheaters__id_like_a_drink
    SAY @5030520 /* An' the Thumb be glad t' 'ave his hand back, but life's harsh. Now get out. */
    IF ~~ THEN EXIT
  END
END


CHAIN THUMB 6W#ShithriDrinksDuel__results__pc
  @5030300 /* The newcomer, <CHARNAME>! */
  == SBCUST02 IF ~InMyArea("SBCUST02")~
  @5030301 /* Bein' fair: I doubted that. */
  == 6WSHITJ IF ~IfValidForPartyDialogue("6WSHITHRI")~
  @5030302 /* Har har, 'tis me capt'n fer ye! */
  == SBCUST01 IF ~InMyArea("SBCUST01")~
  @5030303 /* *hic* Very nice! Newcmr, ye a fine <PRO_MANWOMAN>. Let's 'ave a drink! */
  == 6WPIRDR
  @5030304 /* ... */
END
  IF ~~ THEN
    REPLY @5030310 /* Good match, Frank. May I call you Frank? */
    // ...yes, it's "Can I call you Frank?" from "Eddie Baby" by Monty Python.
    //
    // In Polish version, however, that joke wouldn't really work, so there
    // is a different one instead: addressing the man by ,,Panie Ferdku''
    // (Mr Freddie) --- referencing a popular Polish sitcom
    // ,,Świat według Kiepskich'' ("The World According to the Kiepskis",
    // Kiepski being a surname here, but as a common noun it means
    // of-poor-quality). The main character, Ferdynand Kiepski, known to drink
    // a lot of no-name beer, is referred to as "Mr Freddie" by his neighbours.
    EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__results__pc_frank
  IF ~~ THEN
    REPLY @5030320 /* To be frank, I expected no other result. */
    EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__results__pc_stop_tormenting
  IF ~
    Global("6W#ShithriDrinksStakes","GLOBAL",0) // no info on the stakes
  ~ THEN
    REPLY @5030330 /* So, what's my reward? */
    EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__results__pc_reward_pick
  IF ~
    Global("6W#ShithriDrinksStakes","GLOBAL",1) // "you pick what you want"
  ~ THEN
    REPLY @5030340 /* If I remember correctly, I was to "pick what I want" in case I win. */
    EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__results__pc_reward_pick
  IF ~
    Global("6W#ShithriDrinksStakes","GLOBAL",2) // equal stakes, 5000 gp
  ~ THEN
    REPLY @5030350 /* Where is my 5000 gold pieces? */
    EXTERN ~6WPIRDR~ 6W#ShithriDrinksDuel__results__pc_reward_gold

APPEND 6WPIRDR
  IF ~~ THEN 6W#ShithriDrinksDuel__results__pc_frank
    SAY @5030311 /* Ye may nah. */

    IF ~~ THEN
      REPLY @5030312 /* Why so grim, Frank? */
      GOTO 6W#ShithriDrinksDuel__results__pc_stop_tormenting
    IF ~
      Global("6W#ShithriDrinksStakes","GLOBAL",0) // no info on the stakes
    ~ THEN
      REPLY @5030313 /* Jokes aside - what's my reward? */
      GOTO 6W#ShithriDrinksDuel__results__pc_reward_pick
    IF ~
      Global("6W#ShithriDrinksStakes","GLOBAL",1) // "you pick what you want"
    ~ THEN
      REPLY @5030314 /* If I remember correctly, I was to "pick what I want" in case I win. */
      GOTO 6W#ShithriDrinksDuel__results__pc_reward_pick
    IF ~
      Global("6W#ShithriDrinksStakes","GLOBAL",2) // equal stakes, 5000 gp
    ~ THEN
      REPLY @5030315 /* So where is my 5000 gold pieces? */
      GOTO 6W#ShithriDrinksDuel__results__pc_reward_gold
  END

  IF ~~ THEN 6W#ShithriDrinksDuel__results__pc_stop_tormenting
    SAY @5030321 /* Why tormentin' this old sailor? Take yer reward an' jus'... */

    IF ~
      Global("6W#ShithriDrinksStakes","GLOBAL",0) // no info on the stakes
    ~ THEN
      REPLY @5030322 /* Yes, my reward. What was it, again? */
      GOTO 6W#ShithriDrinksDuel__results__pc_reward_pick
    IF ~
      Global("6W#ShithriDrinksStakes","GLOBAL",1) // "you pick what you want"
    ~ THEN
      REPLY @5030323 /* If I remember correctly, I was to "pick what I want" in case I win. */
      GOTO 6W#ShithriDrinksDuel__results__pc_reward_pick
    IF ~
      Global("6W#ShithriDrinksStakes","GLOBAL",2) // equal stakes, 5000 gp
    ~ THEN
      REPLY @5030324 /* My 5000 gold pieces, you mean. */
      GOTO 6W#ShithriDrinksDuel__results__pc_reward_gold
  END

  IF ~~ THEN 6W#ShithriDrinksDuel__results__pc_reward_pick
    SAY @5030331 /* Pick wha' ye want. Franky the Eye-Popper always pays his debts. */

    IF ~~ THEN
      REPLY @5030332 /* Well, if I'd lost, I'd give you 5000 gold pieces. So it's only fair for you to give me the same. */
      GOTO 6W#ShithriDrinksDuel__results__pc_reward_gold
    IF ~
      Global("6W#ShithriDrinksPirMagicalItems","GLOBAL",0)
    ~ THEN
      REPLY @5030333 /* Don't you have some magical items I could be interested in? */
      DO ~
        SetGlobal("6W#ShithriDrinksPirMagicalItems","GLOBAL",1)
      ~
      GOTO 6W#ShithriDrinksDuel__results__pc_reward_magical_item
    IF ~~ THEN
      REPLY @5030334 /* I want your cutlass. */
      GOTO 6W#ShithriDrinksDuel__results__pc_reward_cutlass
    // requires some insight
    IF ~
      OR(2)
        CheckStatGT(Player1,13,INT)
        CheckStatGT(Player1,13,WIS)
    ~ THEN
      REPLY @5030335 /* I want a symbol of my victory over you. Something of little value, but what you care for. Give me your bandana. */
      GOTO 6W#ShithriDrinksDuel__results__pc_reward_bandana
    IF ~
      Global("6W#ShithriDrinksPirYerLife","GLOBAL",0)
    ~ THEN
      REPLY @5030336 /* I want your life. */
      DO ~
        SetGlobal("6W#ShithriDrinksPirYerLife","GLOBAL",1)
      ~
      GOTO 6W#ShithriDrinksDuel__results__pc_reward_life
  END

  IF ~~ THEN 6W#ShithriDrinksDuel__results__pc_reward_gold
    SAY @5030351 /* ...fine. Capt'n will kill me, but debt be debt. Here be yer 5000 gold pieces. Now good day t' ye. */
    IF ~~ THEN
      SOLVED_JOURNAL @9000040 /* Shithri-inspired liquor collection

I won my duel with Franky the Eye-Popper. He wasn't too happy about paying me my reward, but he kept his word. */
      DO ~
        AddExperienceParty(50000)
        GiveGoldForce(5000)
        SetGlobal("6W#ShithriDrinksEnding","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksReward","GLOBAL",1) // gold
      ~
      EXIT
  END

  IF ~~ THEN 6W#ShithriDrinksDuel__results__pc_reward_magical_item
    SAY @5030360 /* Magical? Nay, I ain't be havin' that kinda things. */

    IF ~~ THEN
      REPLY @5030332 /* Well, if I'd lost, I'd give you 5000 gold pieces. So it's only fair for you to give me the same. */
      GOTO 6W#ShithriDrinksDuel__results__pc_reward_gold
    IF ~~ THEN
      REPLY @5030334 /* I want your cutlass. */
      GOTO 6W#ShithriDrinksDuel__results__pc_reward_cutlass
    // requires some insight
    IF ~
      OR(2)
        CheckStatGT(Player1,13,INT)
        CheckStatGT(Player1,13,WIS)
    ~ THEN
      REPLY @5030335 /* I want a symbol of my victory over you. Something of little value, but what you care for. Give me your bandana. */
      GOTO 6W#ShithriDrinksDuel__results__pc_reward_bandana
    IF ~
      Global("6W#ShithriDrinksPirYerLife","GLOBAL",0)
    ~ THEN
      REPLY @5030336 /* I want your life. */
      DO ~
        SetGlobal("6W#ShithriDrinksPirYerLife","GLOBAL",1)
      ~
      GOTO 6W#ShithriDrinksDuel__results__pc_reward_life
  END

  IF ~~ THEN 6W#ShithriDrinksDuel__results__pc_reward_cutlass
    SAY @5030370 /* Me cutlass? Sure, take it. Got plenty more on the ship. Now good day t' ye. */
    IF ~~ THEN
      SOLVED_JOURNAL @9000041 /* Shithri-inspired liquor collection

I won my duel with Franky the Eye-Popper. I picked his cutlass for my reward. Looks like a good weapon to me. */
      DO ~
        AddExperienceParty(50000)
        GiveItemCreate("_6WSAB01", Player1, 0, 0, 0)
        SetGlobal("6W#ShithriDrinksEnding","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksReward","GLOBAL",2) // cutlass
      ~
      EXIT
  END

  IF ~~ THEN 6W#ShithriDrinksDuel__results__pc_reward_bandana
    SAY @5030380 /* Me... me bandana? 'Tis... 'tis me very pride! Me soul! 'Tis... */

    // Implementation Note:
    // Unfortunately, it seems that it's not possible to provide two different texts
    // (and voiceovers) for a single state in case of the English language depending
    // on the PC's gender. Therefore, two separate states must be used.
    IF ~Gender(Player1,MALE)~
      GOTO 6W#ShithriDrinksDuel__results__pc_reward_bandana__male
    IF ~!Gender(Player1,MALE)~
      GOTO 6W#ShithriDrinksDuel__results__pc_reward_bandana__female
  END
  IF ~~ THEN 6W#ShithriDrinksDuel__results__pc_reward_bandana__male
    SAY @5030381 /* Oh. I see. Ye cruel, cruel man. Fine, debt be debt. Take it. */
    IF ~~ THEN
      SOLVED_JOURNAL @9000042 /* Shithri-inspired liquor collection

I won my duel with Franky the Eye-Popper. Remembering how he insulted me, I demanded the thing he values the most: his bandana. He did call me cruel, so I guess it worked as I wanted. */
      DO ~
        AddExperienceParty(50000)
        GiveItemCreate("_6WBAN01", Player1, 1, 0, 0)
        SetGlobal("6W#ShithriDrinksEnding","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksReward","GLOBAL",3) // bandana
      ~
      EXIT
  END
  IF ~~ THEN 6W#ShithriDrinksDuel__results__pc_reward_bandana__female
    SAY @5030382 /* Oh. I see. Ye cruel, cruel woman. Fine, debt be debt. Take it. */
    IF ~~ THEN
      SOLVED_JOURNAL @9000043 /* Shithri-inspired liquor collection

I won my duel with Franky the Eye-Popper. Remembering how he insulted me, I demanded the thing he values the most: his bandana. He did call me cruel, so I guess it worked as I wanted. */
      DO ~
        AddExperienceParty(50000)
        GiveItemCreate("_6WBAN01", Player1, 1, 0, 0)
        SetGlobal("6W#ShithriDrinksEnding","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksReward","GLOBAL",3) // bandana
      ~
      EXIT
  END

  IF ~~ THEN 6W#ShithriDrinksDuel__results__pc_reward_life
    SAY @5030390 /* Har har! Me life be nah mine t' give. It's me capt'n's. */

    IF ~~ THEN
      REPLY @5030332 /* Well, if I'd lost, I'd give you 5000 gold pieces. So it's only fair for you to give me the same. */
      GOTO 6W#ShithriDrinksDuel__results__pc_reward_gold
    IF ~
      Global("6W#ShithriDrinksPirMagicalItems","GLOBAL",0)
    ~ THEN
      REPLY @5030333 /* Don't you have some magical items I could be interested in? */
      DO ~
        SetGlobal("6W#ShithriDrinksPirMagicalItems","GLOBAL",1)
      ~
      GOTO 6W#ShithriDrinksDuel__results__pc_reward_magical_item
    IF ~~ THEN
      REPLY @5030334 /* I want your cutlass. */
      GOTO 6W#ShithriDrinksDuel__results__pc_reward_cutlass
    // requires some insight
    IF ~
      OR(2)
        CheckStatGT(Player1,13,INT)
        CheckStatGT(Player1,13,WIS)
    ~ THEN
      REPLY @5030335 /* I want a symbol of my victory over you. Something of little value, but what you care for. Give me your bandana. */
      GOTO 6W#ShithriDrinksDuel__results__pc_reward_bandana
  END
END

APPEND 6WSHITJ
  IF ~
    Global("6W#ShithriDrinksEnding","GLOBAL",2)
    Global("6#ShithriDrinksPirPoints","GLOBAL",0) // draw
  ~ THEN BEGIN 6W#shithri_drinks__result_comment__draw
    SAY @5040000 /* See, capt'n? Told ye it be worth the hussle! Ye got toe-to-toe! */

    IF ~~ THEN
      REPLY @5040010 /* It was. He's a tough opponent. */
      GOTO 6W#shithri_drinks__result_comment__franky_strong

    IF ~~ THEN
      REPLY @5040020 /* I think I've had my share of drinks for the day... */
      GOTO 6W#shithri_drinks__result_comment__too_many_drinks

    IF ~~ THEN
      REPLY @5040030 /* Glad at least one of us liked it. */
      GOTO 6W#shithri_drinks__result_comment__nah_like_it
  END
  IF ~~ THEN 6W#shithri_drinks__result_comment__franky_strong
    SAY @5040011 /* But o' course! He Franky the Eye-Popper, a throat o' gold 'n an arm o' wood! */
    // Yes, Frank Drebin, "detective with a heart of gold and a brain of wood".
    //
    // In Polish version, another reference to Ferdek Kiepski instead (you can't have too much
    // of that joke :D).
    IF ~~ THEN
      EXIT
  END
  IF ~~ THEN 6W#shithri_drinks__result_comment__too_many_drinks
    SAY @5040021 /* Huh? So nah Clap o' Thunder t' make it e'en more memorable? Shame. */
    IF ~~ THEN
      EXIT
  END
  IF ~~ THEN 6W#shithri_drinks__result_comment__nah_like_it
    SAY @5040031 /* Weird. Everyone be abstinent around this bucko. */
    // "Everyone's an abstinent around you [all]" - the mayor in Polish comedy show, ,,Ranczo'' ("Ranch").
    // He says that to the Bench team - a group of four friends who drink together while sitting on a bench
    // just in front of the local shop. Considered common drunkards by many, Bench boys are actually quite
    // important characters in the series.
    //
    // Notably in the Polish version, because of the way Shithri speaks in general, she says ,,abstynenty'' (abstinents)
    // instead of the standard ,,abstynenci''. That's the same word that is used by another character from the same series,
    // Lucy Wilska, who's an American of Polish heritage and often makes small mistakes while speaking Polish.
    // When on hangover, she said to her dog: "You and Kusy are right to be abstinents" (Kusy being her husband).
    IF ~~ THEN
      EXIT
  END

  IF ~
    Global("6W#ShithriDrinksEnding","GLOBAL",2)
    GlobalGT("6#ShithriDrinksPirPoints","GLOBAL",0) // lost
  ~ THEN BEGIN 6W#shithri_drinks__result_comment__lost
    SAY @5040100 /* See, capt'n? Told ye it be worth the hussle! Ye gave a good fight! */

    IF ~~ THEN
      REPLY @5040110 /* Well, he's a tough opponent. */
      GOTO 6W#shithri_drinks__result_comment__franky_strong

    IF ~~ THEN
      REPLY @5040020 /* I think I've had my share of drinks for the day... */
      GOTO 6W#shithri_drinks__result_comment__too_many_drinks

    IF ~~ THEN
      REPLY @5040030 /* Glad at least one of us liked it. */
      GOTO 6W#shithri_drinks__result_comment__nah_like_it
  END

  IF ~
    Global("6W#ShithriDrinksEnding","GLOBAL",2)
    GlobalLT("6#ShithriDrinksPirPoints","GLOBAL",0) // win
  ~ THEN BEGIN 6W#shithri_drinks__result_comment__win
    SAY @5040200 /* See, capt'n? Told ye it be worth the hussle! Wha' a win! */

    IF ~~ THEN
      REPLY @5040210 /* I did. But he was a tough opponent. */
      GOTO 6W#shithri_drinks__result_comment__franky_strong

    IF ~~ THEN
      REPLY @5040020 /* I think I've had my share of drinks for the day... */
      GOTO 6W#shithri_drinks__result_comment__too_many_drinks

    IF ~~ THEN
      REPLY @5040030 /* Glad at least one of us liked it. */
      GOTO 6W#shithri_drinks__result_comment__nah_like_it
  END
END
