// Shithri - player-initiated-dialogues
//

APPEND 6WSHITJ
  IF ~IsGabber(Player1)~ THEN 6WShithri_PlayerInit
    SAY @1000000 /* Aye, capt'n? Care fer a draught? */

    IF ~RandomNum(4,1)~ THEN
      REPLY @1000001 /* Of course I do! Whad do you have? */
      GOTO 6WShithri_PlayerDraught1
    IF ~RandomNum(4,2)~ THEN
      REPLY @1000001 /* Of course I do! Whad do you have? */
      GOTO 6WShithri_PlayerDraught2
    IF ~RandomNum(4,3)~ THEN
      REPLY @1000001 /* Of course I do! Whad do you have? */
      GOTO 6WShithri_PlayerDraught3
    IF ~RandomNum(4,4)~ THEN
      REPLY @1000001 /* Of course I do! Whad do you have? */
      GOTO 6WShithri_PlayerDraught4

    IF ~
      OR(2)
        AreaType(FOREST)
        AreaCheck("AR1900")
    ~ THEN
      REPLY @1000002 /* Actually, I'm in a mood for a sea song. */
      GOTO 6WShithri_PlayerSeaSong_forest
    IF ~
      !AreaType(FOREST)
      !AreaCheck("AR1900")
    ~ THEN
      REPLY @1000002 /* Actually, I'm in a mood for a sea song. */
      GOTO 6WShithri_PlayerSeaSong_ok

    // Implementation Note:
    // Couldn't just use the label, because WeiDU forgets the string labels
    // after compiling the file. State numbers cannot be used either, because
    // it's impossible to force the state number in APPEND statements.
    // The only possibility would be to either put it all into a single file
    // (srsly... with the same .tra namespace etc) or carefully craft
    // it with the file order and APPEND_EARLY... which is very fragile.
    //
    // Both of those seem quite bad, so it seems fair to do a tiny hack here:
    // the state isn't GOTO-ed to, it's calling Shithri to "call you back" with
    // a triggering variable set.
    IF ~
      Global("6W#ShithriDrinksStart","GLOBAL",4)
      Global("6W#ShithriDrinksActive","GLOBAL",0)
    ~ THEN
      REPLY @1000005 /* About those "liqies" you've mentioned... */
      DO ~
        SetGlobal("6W#ShithriCallMeBack","GLOBAL",1)
        SetGlobal("6W#ShithriDrinksAskedAboutStart","GLOBAL",1)
      ~
      EXIT

    IF ~~ THEN
      REPLY @1000009 /* Nothing really. Just checking. */
      GOTO 6WShithri_PlayerChecking
  END


  //
  // draught
  //

  IF ~~ THEN 6WShithri_PlayerDraught1
    SAY @1000110 /* That? That be but simple ol' grog, me capt'n! Har har! *gulp* */
    IF ~~ THEN EXIT
  END
  IF ~~ THEN 6WShithri_PlayerDraught2
    // referenceing a real-world tiki coctail, Zombie
    SAY @1000120 /* Name's "Ghoul". Rum, lime, some pomegranade syrup - that be pricey in 'ere, aye - ...an' jus' a splash o' absinthe. *grins* */
    IF ~~ THEN EXIT
  END
  IF ~~ THEN 6WShithri_PlayerDraught3
    SAY @1000130 /* Some nice bumbo, me capt'n! Wit' nutmeg! */
    IF ~~ THEN EXIT
  END
  IF ~~ THEN 6WShithri_PlayerDraught4
    // halflings are said to love ginger beer and call it "harsarm"
    // source: Ed Greenwood (@TheEdVerse), tweet on Jan 13th 2019.
    SAY @1000140 /* They call it "Bastard". Ye soon know why, har har! *gulp* Gin, brandy 'n halflin' harsarm, all mixed together! Oh. An' orange peel. But that nah so bastardey, I thinks. */
    IF ~~ THEN EXIT
  END


  //
  // sea songs
  //

  // in forest
  //
  IF ~~ THEN 6WShithri_PlayerSeaSong_forest
    SAY @1000200 /* Nah now, capt'n. Nah 'ere. */

    IF ~~ THEN
      REPLY @1000201 /* What do you mean? */
      GOTO 6WShithri_PlayerSeaSong_forest__what_do_you_mean

    IF ~
      OR(2)
        Race(Player1,HALFORC)
        CheckStatGT(Player1,14,WIS)
    ~ THEN
      REPLY @1000202 /* It's about your goddess, isn't it? */
      GOTO 6WShithri_PlayerSeaSong_forest__mother_goddess

    IF ~~ THEN
      REPLY @1000203 /* Fine. Maybe another time. */
      EXIT
  END
  IF ~~ THEN 6WShithri_PlayerSeaSong_forest__what_do_you_mean
    SAY @1000210 /* I be listenin' t' Mother's voice. */

    IF ~~ THEN
      REPLY @1000212 /* Your mother? Wasn't she left in your home city though? */
      GOTO 6WShithri_PlayerSeaSong_forest__mother_who
    IF ~
      OR(2)
        Class(Player1,DRUID_ALL)
        Class(Player1,RANGER_ALL)
    ~ THEN
      REPLY @1000213 /* Mother Nature? Indeed. She's here. */
      GOTO 6WShithri_PlayerSeaSong_forest__mother_nature
    IF ~
      Class(Player1,SHAMAN)
    ~ THEN
      REPLY @1000214 /* I know. I hear a lot of voices myself. */
      GOTO 6WShithri_PlayerSeaSong_forest__mother_spirit
    IF ~
      OR(4)
        Class(Player1,CLERIC_ALL)
        Class(Player1,PALADIN_ALL)
        Class(Player1,MONK)
        CheckStatGT(Player1,14,WIS)
    ~ THEN
      REPLY @1000215 /* Do you mean your goddess? */
      GOTO 6WShithri_PlayerSeaSong_forest__mother_goddess
    IF ~
      Class(Player1,MAGE_ALL)
      !Class(Player1,SORCERER) // makes no sense for sorcerers
    ~ THEN
      REPLY @1000216 /* Mother Mystra? Pardon, you don't really sound like a scholar. */
      GOTO 6WShithri_PlayerSeaSong_forest__mother_mystra
    IF ~
      Class(Player1,BARD_ALL)
    ~ THEN
      REPLY @1000217 /* And what is her story, I wonder? */
      GOTO 6WShithri_PlayerSeaSong_forest__mother_story
    IF ~~ THEN
      REPLY @1000218 /* I'm sorry for your loss. */
      GOTO 6WShithri_PlayerSeaSong_forest__sorry
    IF ~~ THEN
      REPLY @1000219 /* I see. Another time then, maybe. */
      EXIT
  END
  IF ~~ THEN 6WShithri_PlayerSeaSong_forest__mother_who
    SAY @1000220 /* Why would she? She e'erywhere, silly. But more so in 'ere. Sssh! Nah more talkin', jus' listenin'... */
    IF ~~ THEN EXIT
  END
  IF ~~ THEN 6WShithri_PlayerSeaSong_forest__mother_nature
    SAY @1000230 /* Could call 'er that. She mother t' all orcs. An' bears, an' boars, an' wolves. T' e'eryone. */
    =
    @1000231 /* I be thinkin'. Ye know 'er a lil bit. Though ye may nah know. */
    IF ~~ THEN EXIT
  END
  IF ~~ THEN 6WShithri_PlayerSeaSong_forest__mother_spirit
    SAY @1000240 /* Let us listen together then. */
    IF ~~ THEN EXIT
  END

  IF ~~ THEN 6WShithri_PlayerSeaSong_forest__mother_goddess
    SAY @1000250 /* Aye. Me Godly Ma. Mother t' all orcs. But also bears'. Boars'. Wolves'. E'eryone's. */
    IF ~
      !Class(Player1,CLERIC_ALL)
      !Race(Player1,HALFORC)
    ~ THEN
      REPLY @1000251 /* Not mine. I have no god of my own. */
      GOTO 6WShithri_PlayerSeaSong_forest__mother_goddess__nah
    IF ~
      !Class(Player1,CLERIC_ALL)
      Race(Player1,HALFORC)
    ~ THEN
      REPLY @1000251 /* Not mine. I have no god of my own. */
      GOTO 6WShithri_PlayerSeaSong_forest__mother_goddess__nah_but_halforc
    IF ~~ THEN
      REPLY @1000252 /* Your faith is strong. */
      GOTO 6WShithri_PlayerSeaSong_forest__mother_goddess__strong_faith
    IF ~~ THEN
      REPLY @1000253 /* I see. I won't disturb your contemplation then. */
      EXIT
  END
  IF ~~ THEN 6WShithri_PlayerSeaSong_forest__mother_goddess__nah
    SAY @1000255 /* Foolish. Or sad, mayhaps. */
    IF ~~ THEN EXIT
  END
  IF ~~ THEN 6WShithri_PlayerSeaSong_forest__mother_goddess__nah_but_halforc
    SAY @1000256 /* E'en if ye nah talk t' her. She still be yer Mother. */
    IF ~~ THEN EXIT
  END
  IF ~~ THEN 6WShithri_PlayerSeaSong_forest__mother_goddess__strong_faith
    SAY @1000257 /* I try, capt'n. I try. */
    IF ~~ THEN EXIT
  END

  IF ~~ THEN 6WShithri_PlayerSeaSong_forest__mother_mystra
    SAY @1000260 /* Nay. 'er name be Luthic, Mother o' Caves. Nah more talkin', jus' listenin'. */
    IF ~~ THEN EXIT
  END
  IF ~~ THEN 6WShithri_PlayerSeaSong_forest__mother_story
    SAY @1000270 /* Story? Nah much, I guess. She be mother t' all the orcs. An' bears, an' boars, an' wolves. Wife t' the One-Eye, He Who Ne'er Sleeps. She... jus' listen. */
    IF ~~ THEN EXIT
  END
  IF ~~ THEN 6WShithri_PlayerSeaSong_forest__sorry
    SAY @1000280 /* For wha'? This bucko be fine. Jus' listenin' t' Mother's voice. Ye a weird one. */
    IF ~~ THEN EXIT
  END
  IF ~~ THEN 6WShithri_PlayerSeaSong_forest__another_time
    SAY @1000280 /* For wha'? This bucko be fine. Jus' listenin' t' Mother's voice. */
    IF ~~ THEN EXIT
  END

  IF ~~ THEN 6WShithri_PlayerSeaSong_ok
    SAY @1000300 /* Aye aye, capt'n! Wha' be the song ye fancy? */

    //IF ~~ THEN
    //  REPLY @1000301 /* Any at all would be fine. */
    //  GOTO 6WShithri_PlayerSeaSong_any

    IF ~
      Global("6W#banter_Shithri_Jan","GLOBAL",1)
      Global("6W#tob_banter_Shithri_Jan","GLOBAL",0)
    ~ THEN
      REPLY @1000302 /* The one about Scratchy Jansen. */
      GOTO 6WShithri_PlayerSeaSong_scratchy1
    IF ~
      Global("6W#tob_banter_Shithri_Jan","GLOBAL",1)
    ~ THEN
      REPLY @1000302 /* The one about Scratchy Jansen. */
      GOTO 6WShithri_PlayerSeaSong_scratchy2

    IF ~
      GlobalGT("6W#banter_Shithri_Edwin","GLOBAL",0)
    ~ THEN
      REPLY @1000303 /* The one about a drunken wizard. */
      GOTO 6WShithri_PlayerSeaSong_wizard

    IF ~
      GlobalGT("6W#ShithriNeeraLoveTalk","GLOBAL",26)
      Global("6W#ShithriNeeraRomanceActive","GLOBAL",2)
      InParty("Neera")
    ~
      REPLY @1000304 /* The one about Cormyte ladies. */
      GOTO 6WShithri_PlayerSeaSong_cormyte_ok
    IF ~
      GlobalGT("6W#ShithriNeeraLoveTalk","GLOBAL",26)
      OR(2)
        Global("6W#ShithriNeeraRomanceActive","GLOBAL",3)
        !InParty("Neera")
    ~
      REPLY @1000304 /* The one about Cormyte ladies. */
      GOTO 6WShithri_PlayerSeaSong_cormyte_nah

    IF ~~ THEN
      REPLY @1000390 /* Nevermind. */
      GOTO 6WShithri_PlayerSeaSong_shame
  END

  IF ~~ THEN 6WShithri_PlayerSeaSong_scratchy1
    SAY @1020000 /* O' Scratchy, ye say? Eh. 'is niece ain't be so fond o' it, but 'ere ye 'ave it: */
    =
    @1020001 /* "There once be a gnome that put t' field
                 The name o' the gnome be Jansen Scratchy
                 The sun shined hot, the rain poured down
                 Oh come, me hungry boys, come (huh!)" */
    =
    @1020002 /* "Soon may the Jansen come
                 T' bring us onions 'n leek 'n yam
                 When turnip pickle be done
                 He offer his price 'n sell!" */
    IF ~~ THEN
      EXIT
  END

  IF ~~ THEN 6WShithri_PlayerSeaSong_scratchy2
    SAY @1020010 /* O' ol' Scratchy, ye say? Har har! 'ere it goes! */
    =
    @1020011 /* "Once Scratchy Jansen had some dirt
                 In all yer sight the field will get
                 And the day the soil was wet
                 With the rain o' our sweat" */
    =
    @1020012 /* "Soon may be Scratchy back
                 T' give each one an onion sack
                 Turn turnip t' white from black
                 Wit' gols his bag will clack" */
    =
    @1020013 /* "I know the onions really well
                 O' countryman I be one hell
                 The famine great on us once fell
                 O'er waste the tears I quell" */
    =
    @1020014 /* "Soon may be Scratchy back
                 T' give each one an onion sack
                 Turn turnip t' white from black
                 Wit' gols his bag will clack" */
    =
    @1020015 /* "'Wipe tears' Jan Jansen t' uncle say
                 'Nah worry, here me plan I lay:
                 I know an elf o'er the bay
                 He buy turnip doubly paid'" */
    =
    @1020016 /* "Soon may be Scratchy back
                 T' give each one an onion sack
                 Turn turnip t' white from black
                 Wit' gols his bag will clack" */
    =
    @1020017 /* "Soon more he got than ever lost
                 'N turnip-famous he be most
                 Now Scratchy's jacket be golden flossed
                 For us - as bad as it was" */
    =
    @1020018 /* "Soon may be Scratchy back
                 T' give each one an onion sack
                 Turn turnip t' white from black
                 Wit' gols his bag will clack" */
    IF ~~ THEN
      EXIT
  END

  IF ~~ THEN 6WShithri_PlayerSeaSong_wizard
    SAY @1020100 /* Oh, ye in good mood, I see! */
    =
    @1020101 /* "What will we do wit' a drunken wizard
                 What will we do wit' a drunken wizard
                 What will we do wit' a drunken wizard
                 When he is delirious?" */
    =
    @1020102 /* "Way hay and up she raises
                 Way hay and up she raises
                 Way hay and up she raises
                 Riding Weave all serious! */
    =
    @1020103 /* "Shave 'is noggin wit' a rusty razor
                 Shave 'is noggin wit' a rusty razor
                 Shave 'is noggin wit' a rusty razor
                 When he is delirious!" */
    =
    @1020104 /* "Way hay and up she raises
                 Way hay and up she raises
                 Way hay and up she raises
                 Riding Weave all serious! */
    IF ~~ THEN
      EXIT
  END
END

CHAIN 6WSHITJ 6WShithri_PlayerSeaSong_cormyte_ok
  @1020200 /* Ho! The song o' the Thargate's sailors. Any time, capt'n. */
  =
  @1020201 /* "Farewell and shikhem, to you Cormyte ladies...
               Farewell and shikhem, to ones of Suzail...
               For we received orders to sail for Old Thargate
               But we hope, very soon, we shall see you again!" */

  BRANCH ~IsValidForDialog("Neera")~
  BEGIN
    == 6WSHITJ
    @1020210 /* "The taste of your lips, of you, Cormyte ladies..." */
    == NEERA
    @1020211 /* "...In darkest of nights will bring us some smiles..." */
    == 6WSHITJ
    @1020212 /* "...Until we strike shallows in swamp river of Moon Sea
                 Ylraphon to Elmwood in one hundred miles!" */
    == NEERA
    @1020215 /* Must make you remember the one with braided beard, does't it? */
    == 6WSHITJ
    @1020216 /* Nay. More into hair now. Loose hair. */
    == NEERA
    @1020217 /* Loose? And surely you didn't mean to name some specific color? Like... a VERY specific color? */
    == 6WSHITJ
    @1020218 /* *smirk* */
  END

  BRANCH ~!IsValidForDialog("Neera")~
  BEGIN
    == 6WSHITJ
    @1020220 /* "The taste of your lips, of you, Cormyte ladies
    In darkest of nights will bring us some smiles
    Until we strike shallows in swamp river of Moon Sea
    Ylraphon to Elmwood in one hundred miles!" */
  END
EXIT

APPEND 6WSHITJ
  IF ~~ THEN 6WShithri_PlayerSeaSong_cormyte_nah
    SAY @1020250 /* *sigh* 'nother time, capt'n. 'nother time. */
    IF ~~ THEN
      EXIT
  END


  IF ~~ THEN 6WShithri_PlayerSeaSong_shame
    SAY @1000391 /* Shame. */
    IF ~~ THEN
      EXIT
  END


  //
  // just checking
  //

  IF ~~ THEN 6WShithri_PlayerChecking
    SAY @1000090 /* This bucko nah goin' anywhere, capt'n. *gulp* */
    IF ~~ THEN EXIT
  END

END
