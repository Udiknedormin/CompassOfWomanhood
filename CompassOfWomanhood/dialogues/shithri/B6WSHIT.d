// SHITHRI - party banters
//
BEGIN B6WSHIT


//
// Edwin
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Edwin")
  See("Edwin")
  Gender("Edwin",MALE)
  CombatCounter(0)
  !AreaType(FOREST)
  !AreaCheck("AR1900") /* Druid Grove */
  Global("6W#banter_Shithri_Edwin","GLOBAL",0)
~ THEN B6WSHIT 6W#banter_shithri_edwin_0
  @1000000 /* Me matey. Ho, me matey! Ye ravin' t' yerself. */
  DO ~SetGlobal("6W#banter_Shithri_Edwin","GLOBAL",1)~
  == BEDWIN
  @1000001 /* (Just another mad monkey, ignore her) */
  == B6WSHIT
  @1000002 /* Ye be 'avin' too much brandy lately or wha'? */
  == BEDWIN
  @1000003 /* (That drunkard will lose interest soon enough) */
  == B6WSHIT
  @1000004 /* *smirk* I know what ye need, me matey. */
  == BEDWIN
  @1000005 /* (She will go away) */
  == B6WSHIT
  @1000006 /* "What will we do wit' a drunken wizard
  What will we do wit' a drunken wizard..." */
  == BEDWIN
  @1000007 /* (She will...) Go away... */
  == B6WSHIT
  @1000008 /* "What will we do wit' a drunken wizard
  When he is delirious?
  
  Way hay and up she raises..." */
  == BEDWIN
  @1000009 /* AAAAA! */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Edwin")
  See("Edwin")
  Gender("Edwin",MALE)
  CombatCounter(0)
  Global("6W#banter_Shithri_Edwin","GLOBAL",1)
~ THEN B6WSHIT 6W#banter_shithri_edwin_1
  @1000100 /* Ahoy, me drunken wizard! */
  DO ~SetGlobal("6W#banter_Shithri_Edwin","GLOBAL",2)~
  == BEDWIN
  @1000101 /* Just go awayyy... Go pray to your cave goddess or something... */
  == B6WSHIT
  @1000102 /* I jus' noticed. Ye be wearin' long clothes, like most lubbers I know. That - I understand. But as ye be keepin' yer hood up to yer sleep even, I wonder - ain't it troublesome fer the ladies? */
  == BEDWIN
  @1000103 /* Well, of course I... Silence, you idiot! */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Edwin")
  See("Edwin")
  Gender("Edwin", FEMALE)
  CombatCounter(0)
  Global("6W#banter_Shithri_Edwina","GLOBAL",0)
~ THEN B6WSHIT 6W#banter_shithri_edwina_0
  @1000200 /* Ahoy, me beauty! I see yer dress be a bit tight. Here, let this bold, darin' bucko help ye wit' that. */
  DO ~SetGlobal("6W#banter_Shithri_Edwina","GLOBAL",1)~
  == BEDWIN
  @1000201 /* What are you... hey, stop! */
  == B6WSHIT
  @1000202 /* Well, ain't that better now? Wha' a fine lass ye be! */
  == BEDWIN
  @1000203 /* Go away, you pervert! I mean, "idiot!" */
  == B6WSHIT
  @1000204 /* I be just helpin', me hearty. But helpin' ye be pleasure, yarrr. */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Edwin")
  See("Edwin")
  Gender("Edwin", FEMALE)
  OR(2)
    IfValidForPartyDialogue("Viconia")
    IfValidForPartyDialogue("Hexxat")
  OR(2)
    See("Viconia")
    See("Hexxat")
  CombatCounter(0)
  Global("6W#banter_Shithri_Edwina","GLOBAL",1)
~ THEN B6WSHIT 6W#banter_shithri_edwina_1
  @1000300 /* Me beauty, I nah be fooled that easily. */
  DO ~SetGlobal("6W#banter_Shithri_Edwina","GLOBAL",2)~
  == BEDWIN
  @1000301 /* (Why... why of all things...) What now, pirate? */
  == B6WSHIT
  @1000302 /* Shhh... Nah need t' shy away like that, me hearty. I can see ye givin' those lonely looks t' our blankets at night. Ones o' this darin' bucko 'n our dark matey. */
  =
  @1000303 /* All ye need t' do be ask. */
  == BEDWIN
  @1000304 /* What are you- (No no, that actually makes sense) Oh. Oooh. Really? */
  == B6WSHIT
  @1000305 /* Aye. Just try. */

  BRANCH ~IfValidForPartyDialog("Viconia")~
  BEGIN
    == BEDWIN 
    @1000306 /* Well... hello, Viconia. I was just wondering... about... */
    == BVICONI
    @1000307 /* What? What is it, rivvil? */
    == BEDWIN
    @1000308 /* B-Blankets! Yes, blankets! (What am I saying?) They are so thin. I thought if we stay close, we can... */
  END

  BRANCH ~!IfValidForPartyDialog("Viconia") IfValidForPartyDialog("Hexxat")~
  BEGIN
    == BEDWIN
    @1000309 /* Why, hello, Hexxat. */
    == BHEXXAT
    @1000310 /* Hello, Edwin. */
    == BEDWIN
    @1000311 /* So... how do you do? */
    == BHEXXAT
    @1000312 /* Quite well, thank you. */
    == BEDWIN
    @1000313 /* Sooo... err... */
  END

  == BEDWIN
  @1000314 /* Gah! You. You little pirate pig! What are you laughing at?! */
  == B6WSHIT
  @1000315 /* Ye doin' great, sis! */
  == BEDWIN
  @1000316 /* (Fireballs. Fireballs should work doubly well on that grog-burnt throat, oh yesss) */
EXIT


// 
// Imoen
// 

CHAIN IF ~
  IfValidForPartyDialogue("Imoen2")
  IfValidForPartyDialogue("6WSHITHRI")
  CombatCounter(0)
  See("6WSHITHRI")
  !AreaType(DUNGEON)
  Global("6W#banter_Shithri_Imoen","GLOBAL",0)
~ THEN BIMOEN2 6W#banter_shithri_imoen_0
  @1010000 /* Heya, Shithri. So you're a pirate, right? On a ship, I mean? */
  DO ~SetGlobal("6W#banter_Shithri_Imoen","GLOBAL",1)~
  == B6WSHIT
  @1010001 /* I prefer the term swash-buccaner. But do speak, lass. */
  == BIMOEN2
  @1010002 /* So when you land, you pillage the towns and stuff... */
  == B6WSHIT
  @1010003 /* Aye. */
  == BIMOEN2
  @1010004 /* But what do you do while on the ship? */
  == B6WSHIT
  @1010005 /* ... */
  == BIMOEN2
  @1010006 /* I mean, you don't just sing, drink and look at the sea. */
  == B6WSHIT
  @1010007 /* Why nah? */
  == BIMOEN2
  @1010008 /* Well, if you did, your ship would sink. I think? */
  == B6WSHIT
  @1010009 /* Ye can take a caulk, if ye want. */
  == BIMOEN2
  @1010010 /* What's that? */
  == B6WSHIT
  @1010011 /* Tarred ropes. Makes the ship water-tight. */
  == BIMOEN2
  @1010012 /* Oh, so that's how... */
  == B6WSHIT
  @1010013 /* ...ye get those black markings on yer back after nappin' on the deck, aye. */
  == BIMOEN2
  @1010014 /* So singing, drinking, looking at the see AND napping. Not so different from Candlekeep. */
  == B6WSHIT
  @1010015 /* And playin' cards. */
  == BIMOEN2
  @1010016 /* Still not that different. */
EXIT


//
// Jaheira
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Jaheira")
  CombatCounter(0)
  See("Jaheira")
  Global("6W#banter_Shithri_Jaheira","GLOBAL",0)
~ THEN B6WSHIT 6W#banter_shithri_jaheira_0
  @1020000 /* Sha'nru? Care fer... */
  DO ~SetGlobal("6W#banter_Shithri_Jaheira","GLOBAL",1)~
  == BJAHEIR
  @1020001 /* No. We have more important things to do than drinking. */
  =
  @1020002 /* Besides. I don't trust you yet. */
  == B6WSHIT
  @1020003 /* Yet? Let I guess then. Ye be Harper. I be Zentish. Mayhaps yer answer 'as word "Zhentarim"... */
  == BJAHEIR
  @1020004 /* Far from that. I doubt you're a Zhentish agent. You being a half-orc and a pirate, however, is what concerns me. */
  =
  @1020005 /* I have yet to determine your place in the balance. */
  == B6WSHIT
  @1020006 /* *gulp* May Luthic guide ye in that. */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Jaheira")
  CombatCounter(0)
  See("6WSHITHRI")
  Global("6W#Shithri_men","GLOBAL",1)
  Global("6W#banter_Shithri_Jaheira_men","GLOBAL",0)
~ THEN BJAHEIR 6W#banter_shithri_jaheira_men
  @1020100 /* Drink this, child. */
  DO ~SetGlobal("6W#banter_Shithri_Jaheira_men","GLOBAL",1)~
  == B6WSHIT
  @1020101 /* A draught? Always! */
  =
  @1020102 /* Ptui! *spits* Wha' 'tis bitter, gross slop?! */
  == BJAHEIR
  @1020103 /* Something your goddess' husband wouldn't like her to use. Now drink it up. */
  == B6WSHIT
  @1020104 /* I ain't needin' it! I ne'er did 'n I be fine! */
  == BJAHEIR
  @1020105 /* Child. I believe you do know a suble difference between men and women in that matter. */
  == B6WSHIT
  @1020106 /* ... */
  == BJAHEIR
  @1020107 /* Drink it up. */
  == B6WSHIT
  @1020108 /* Aye aye, sha'nru... */
  =
  @1020109 /* Sha'nru? */
  == BJAHEIR
  @1020110 /* What is it? */
  == B6WSHIT
  @1020111 /* Th-thank ye. */
EXIT


//
// Minsc
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Minsc")
  CombatCounter(0)
  See("Minsc")
  Global("6W#banter_Shithri_Minsc","GLOBAL",0)
~ THEN B6WSHIT 6W#banter_shithri_minsc_0
  @1030000 /* So, me hearty, I see ye Rashemi? */
  DO ~SetGlobal("6W#banter_Shithri_Minsc","GLOBAL",1)~
  == BMINSC
  @1030001 /* I am. */
  == B6WSHIT
  @1030002 /* Ye no seaman nor trader. *gulp* Mayhaps on yer darjamma? */
  == BMINSC
  @1030003 /* You know of dajemma? So Boo was right about you! */
  == B6WSHIT
  @1030004 /* Boo? 'is rat o' yers? */
  == BMINSC
  @1030005 /* Rat? Are you trying to insult Boo?! */
  =
  @1030006 /* What, Boo? Is that true? Well then... */
  =
  @1030007 /* Boo is no rat. He's a miniature giant space hamster. */
  == B6WSHIT
  @1030008 /* Wait. He SPEAKS to ye? */
  == BMINSC
  @1030009 /* And how wise his words are! */
  == B6WSHIT
  @1030010 /* So wha' he say o' me? */
  == BMINSC
  @1030011 /* Boo says you know many things. And something about ropes. */
  == B6WSHIT
  @1030012 /* Jolly, squiffy tar I be, yarrr! Yer hamster runs no rig! */
  =
  @1030013 /* I be sorry, Boo. 'ere, have a tack. */
  == BMINSC
  @1030014 /* Boo appreciates. */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Minsc")
  See("6WSHITHRI")
  HPLT(Myself,20)
  Global("6W#banter_Shithri_Minsc","GLOBAL",1)
~ THEN BMINSC 6W#banter_shithri_minsc_1
  @1030100 /* What a sight you are in battle, Shithri! Even Boo is impressed! */
  DO ~SetGlobal("6W#banter_Shithri_Minsc","GLOBAL",2)~
  == B6WSHIT
  @1030101 /* Yarrr, I be a known swasher in me motherland by now. */
  == BMINSC
  @1030102 /* Do you have a lodge for your heroes there? Like Ice Dragon Berserker Lodge? */
  == B6WSHIT
  @1030103 /* Naught aside the army, I fear. But wha' an army 'tis! */
  =
  @1030104 /* Back when I be a wee lass, Zentish army o' a thousand orcs under general Vrakk went t' defend Thesk agains the Horde. Reckon that! A thousand orcs! */
  == BMINSC
  @1030105 /* Great heroes butt-kicking for goodness! Just like us! */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Minsc")
  See("Minsc")
  Global("6W#banter_Shithri_Minsc","GLOBAL",2)
~ THEN B6WSHIT 6W#banter_shithri_minsc_2
  @1030200 /* *gulp* A fine <DAY/NIGHT>. Me hearty, 'tis a fine <DAY/NIGHT> to hear some tales o' that lodge ye mention. */
  DO ~
    SetGlobal("6W#banter_Shithri_Minsc","GLOBAL",3)
    SetGlobal("6W#Shithri_NotChult","GLOBAL",3)
  ~
  == BMINSC
  @1030201 /* Ha, so you want to know of the highest honor there is for a ranger? All hail the heroes of Ice Dragon Berserker Lodge. No feast is ever complete without a song for their glory! */
  == B6WSHIT
  @1030202 /* Speakin' o' which... don't ye miss yer firewine? */
  == BMINSC
  @1030203 /* Oh, yes! Jhuild, the greatest drink there is. Dynaheir used to make one for Minsc... did you try it during your adventures? */
  == B6WSHIT
  @1030204 /* Nay, it be pretty pricey back on the Dragoncoast. Tried the other one though. The nightmare one. */
  == BMINSC
  @1030205 /* Oh? Minsc didn't know that. What a shame there is no Jhuild here for us two to celebrate our great adventures! */
  == B6WSHIT
  @1030206 /* We can splice the mainbrace o' Tanagyr's Stout Ale back in the Sword Coast. */
  == BMINSC
  @1030207 /* That we will, my friend! */
EXIT


//
// Viconia
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Viconia")
  See("6WSHITHRI")
  CombatCounter(0)
  Global("6W#banter_Shithri_Viconia","GLOBAL",0)
~ THEN BVICONI 6W#banter_shithri_viconia_0
  // tu'rilcretok - half-orc
  // tu'rilthiin - half-elf
  @1040000 /* Tell me, tu'rilcretok... or should I call you tu'rilthiin, as you claim of your father? Mongrels as they are, I still find it difficult to believe they would mate with those mountain boars. */
  DO ~SetGlobal("6W#banter_Shithri_Viconia","GLOBAL",1)~
  == B6WSHIT
  @1040001 /* Aye, ye can call I - pidhaggur, "lil tusks". 'Tis I be used to. */
  == BVICONI
  @1040002 /* Most amusing to see a dog squeaking. */
  == B6WSHIT
  @1040003 /* Call it as ye do, me bella. Dogs be loyal 'n boars be dilligent. Not the worst I be called. */
EXIT


//
// Aerie
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Aerie")
  See("Aerie")
  CombatCounter(0)
  Global("6W#banter_Shithri_Aerie","GLOBAL",0)
~ THEN B6WSHIT 6W#banter_shithri_aerie_0
  @1050000 /* Ahoy, lassie. Care fer a draught? */
  DO ~SetGlobal("6W#banter_Shithri_Aerie","GLOBAL",1)~
  == BAERIE
  @1050001 /* Me? I... No... No, thank you. */
  == B6WSHIT
  @1050002 /* I 'ave some wine too if ye prefer. */
  == BAERIE
  @1050003 /* It's not that, it's just... please. Just leave me. */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Aerie")
  See("6WSHITHRI")
  CombatCounter(0)
  Global("6W#banter_Shithri_Aerie","GLOBAL",1)
~ THEN BAERIE 6W#banter_shithri_aerie_1
  @1050100 /* I-I need to ask you something. Shithri. */
  DO ~SetGlobal("6W#banter_Shithri_Aerie","GLOBAL",2)~
  == B6WSHIT
  @1050101 /* Aye, lass? Wha'? */
  == BAERIE
  @1050102 /* Have you... -please, could you just... set that b-bottle aside? Just for a moment? */
  =
  @1050103 /* Thank you. So. M-my question. */
  =
  @1050104 /* Have you... during your travels... have you ever... */
  == B6WSHIT
  @1050105 /* Aye. */
  == BAERIE
  @1050106 /* But... */
  == B6WSHIT
  @1050107 /* Whatever 'tis, I prolly did it. */
  == BAERIE
  @1050108 /* I... I see. Thank you. */
  == B6WSHIT
  @1050109 /* Anytime ye needs. *gulp* */
EXIT


//
// Anomen
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Anomen")
  See("Anomen")
  CombatCounter(0)
  Global("6W#banter_Shithri_Anomen","GLOBAL",0)
~ THEN B6WSHIT 6W#banter_shithri_anomen_0
  @1060000 /* Ho, me matey, care fer a draught? */
  DO ~SetGlobal("6W#banter_Shithri_Anomen","GLOBAL",1)~
  == BANOMEN
  @1060001 /* Mercy, woman, have some mercy! Travelling with a mere pirate is enough of a disgrace, I have no need to drink with one! */
  == B6WSHIT
  @1060002 /* Could jus' say "no". */
EXIT


/*************************************************************************/
/*************************************************************************/

// anomen-shithri fight

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Anomen")
  See("6WSHITHRI")
  // could be before trial or after failure
  Global("AnomenIsKnight","GLOBAL",0)
  Global("6W#banter_Shithri_Anomen","GLOBAL",1)
~ THEN BANOMEN 6W#banter_shithri_anomen_fight_0
  @1060100 /* You fight well for a woman. */
  DO ~SetGlobal("6W#banter_Shithri_Anomen","GLOBAL",2)~
  == B6WSHIT
  @1060101 /* Oh do I, pretty lad? */
  == BANOMEN
  @1060102 /* Well, I do admit it looks like your training wasn't exactly in the art of battle. I could only guess it's some dance for primitive orcish gods or another Zhentarim ritual for luck. Or perhaps a pirate thing? */
  == B6WSHIT
  @1060103 /* Speak another word 'n yer head will feed the Luthic's bears, ye wretched, mangy knave. */
  == BANOMEN
  @1060104 /* "Knave"? You calling me a servant, half-orc? Learn your place! <CHARNAME> only keeps you around for the laughs. */
END B6WSHIT 6W#banter_shithri_anomen_fight_1

APPEND B6WSHIT
  IF ~~ THEN BEGIN 6W#banter_shithri_anomen_fight__leave
    SAY @1060199 /* Gladly. */
    // PERMANENT leave (until ToB, at least)
    IF ~~ THEN
      DO ~
        LeaveParty()
        EscapeArea()
      ~
      EXIT
  END

  IF ~~ THEN BEGIN 6W#banter_shithri_anomen_fight_1
    // garau - mother (orcish)
    SAY @1060105 /* Careful, dandy. 'tis not yer cozy lil castle where yer garau be t' pat yer head afterwards. */

    IF ~~ THEN
      REPLY @1060106 /* Stop that at once, both of you! */
      GOTO 6W#banter_shithri_anomen_fight__stop_both
    IF ~~ THEN
      REPLY @1060107 /* Anomen, I will not tolerate that kind of behaviour. */
      EXTERN ~BANOMEN~ 6W#banter_shithri_anomen_fight__anomen_too_far
    IF ~~ THEN
      REPLY @1060108 /* Shithri, you're taking it too far. */
      GOTO 6W#banter_shithri_anomen_fight__ye_know_nothin
    IF ~~ THEN
      REPLY @1060109 /* Squire and pirate. This will be interesting. */
      EXTERN ~BANOMEN~ 6W#banter_shithri_anomen_fight__interesting
  END
END

CHAIN BANOMEN 6W#banter_shithri_anomen_fight__interesting
  @1060150 /* It surely will! */
  == B6WSHIT
  @1060151 /* Interesting? More like quick. */
  DO ~
    Enemy()
    Attack("Anomen")
  ~
EXIT

APPEND BANOMEN
  IF ~~ THEN BEGIN 6W#banter_shithri_anomen_fight__anomen_too_far
    SAY @1060140 /* You're siding with that pirate, <CHARNAME>? */

    IF ~~ THEN
      REPLY @1060141 /* Yes. She's a friend. */
      GOTO 6W#banter_shithri_anomen_fight__shithri_friend

    IF ~~ THEN
      REPLY @1060142 /* I don't take sides. We're a team. We work together. */
      GOTO 6W#banter_shithri_anomen_fight__we_team_anomen
  END
  IF ~~ THEN 6W#banter_shithri_anomen_fight__we_team_anomen
    SAY @1060143 /* As you will have it. For now. */
    IF ~~ THEN EXIT
  END
END

CHAIN BANOMEN 6W#banter_shithri_anomen_fight__anomen_attack
  @1060144 /* Don't make me laugh! It's vermin! */
  == B6WSHIT
  @1060145 /* Say wha', knighty? Ah, right! Ye nah knighty at all, yarrr! Ye just a failure! Failure to yer god, failure to yer order. Mayhaps it be just mercy that capt'n keeps ye with <PRO_HIMHER>? */
  == BANOMEN
  @1060146 /* Enough! */
  DO ~
    Enemy()
    Attack("6WSHITHRI")
  ~
EXIT

APPEND BANOMEN
  IF ~~ THEN BEGIN 6W#banter_shithri_anomen_fight__shithri_friend
    SAY @1060143 /* Really? A Zhentarim half-orc pirate. Worshipping blood-thirsty orcish gods. You call THAT a friend? */

    IF ~
      !Global("AnomenIsNotKnight","GLOBAL",0)
    ~ THEN GOTO 6W#banter_shithri_anomen_fight__anomen_attack

    IF ~
      Global("AnomenIsNotKnight","GLOBAL",0)
    ~ THEN GOTO 6W#banter_shithri_anomen_fight__anomen_ok
  END
  IF ~~ THEN BEGIN 6W#banter_shithri_anomen_fight__anomen_ok
    SAY @1060147 /* ...fine. Just because of you. I will let it slide. */
    IF ~~ THEN EXIT
  END
END

APPEND B6WSHIT
  IF ~~ THEN BEGIN 6W#banter_shithri_anomen_fight__stop_both
    SAY @1060110 /* Wha'? Ye tell that t' knighty. */

    IF ~~ THEN
      REPLY @1060111 /* You took it too far too. */
      GOTO 6W#banter_shithri_anomen_fight__ye_know_nothin

    IF ~
      OR(2)
        Class(Player1,CLERIC_ALL)
        CheckStatGT(Player1,14,WIS)
    ~ THEN
      REPLY @1060112 /* I know he started, but think if Luthic would approve your behaviour. */
      GOTO 6W#banter_shithri_anomen_fight__luthic

    IF ~~ THEN
      REPLY @1060113 /* I know he started, but please be the wiser one. */
      GOTO 6W#banter_shithri_anomen_fight__wiser
  END
END

CHAIN B6WSHIT 6W#banter_shithri_anomen_fight__he_companion_ok
  @1060130 /* ...aye. 'tis true. */
  =
  @1060131 /* But 'tis the last time, ye hear? Next time I beat yer lil knighty arse down. */
  == BANOMEN
  @1060132 /* I will see you try, pirate. */
EXIT

APPEND B6WSHIT
  IF ~~ THEN BEGIN 6W#banter_shithri_anomen_fight__ye_know_nothin
    SAY @1060120 /* Ye know nothin', swab. O' pirates. O' Zhentarim. O' orcish gods. */

    IF ~~ THEN
      REPLY @1060121 /* You're right, I don't. But we're all friends here. */
      GOTO 6W#banter_shithri_anomen_fight__we_all_friends

    IF ~~ THEN
      REPLY @1060122 /* Like it or not, we're a team. Companions. */
      GOTO 6W#banter_shithri_anomen_fight__he_companion_ok

    IF ~~ THEN
      REPLY @1060123 /* I don't need to. If you don't like it, leave. */
      GOTO 6W#banter_shithri_anomen_fight__leave
  END
END

APPEND B6WSHIT
  IF ~~ THEN BEGIN 6W#banter_shithri_anomen_fight__we_all_friends
    SAY @1060124 /* That sorry, dandy rapscallion is no hearty o' I. */

    IF ~~ THEN
      REPLY @1060125 /* He is to me though. */
      GOTO 6W#banter_shithri_anomen_fight__nah_captn

    IF ~
      OR(2)
        CheckStatGT(Player1,16,STR)
        CheckStatGT(Player1,14,CHR)
    ~ THEN
      REPLY @1060126 /* Even if he's not your friend, he's still your companion. */
      GOTO 6W#banter_shithri_anomen_fight__he_companion_ok

    IF ~
      CheckStatLT(Player1,17,STR)
      CheckStatLT(Player1,15,CHR)
    ~ THEN
      REPLY @1060126 /* Even if he's not your friend, he's still your companion. */
      GOTO 6W#banter_shithri_anomen_fight__nah_hearty_nah_captn

    IF ~~ THEN
      REPLY @1060127 /* My team, my rules. If you don't like it, leave. */
      GOTO 6W#banter_shithri_anomen_fight__leave
  END
  IF ~~ THEN BEGIN 6W#banter_shithri_anomen_fight__nah_captn
    SAY @1060128 /* Then ye nah me capt'n. */
    // PERMANENT leave (until ToB, at least)
    IF ~~ THEN
      DO ~
        LeaveParty()
        EscapeArea()
      ~
      EXIT
  END
  IF ~~ THEN BEGIN 6W#banter_shithri_anomen_fight__nah_hearty_nah_captn
    SAY @1060129 /* He nah me matey. And ye nah me capt'n. */
    // PERMANENT leave (until ToB, at least)
    IF ~~ THEN
      DO ~
        LeaveParty()
        EscapeArea()
      ~
      EXIT
  END

  IF ~~ THEN BEGIN 6W#banter_shithri_anomen_fight__luthic
    SAY @1060160 /* ...nah. She wouldna. 'tis wha' Gruumsh would approve. */
    =
    @1060161 /* *gulp* Thank ye, capt'n. */
    IF ~~ THEN EXIT
  END
END

CHAIN BJAHEIR 6W#banter_shithri_anomen_fight__jaheira
  @1060171 /* <PRO_HESHE>'s right, child! You're both wasting time on pointless fights! */
  == B6WSHIT
  @1060172 /* Sha'nru... */
  == BANOMEN
  @1060173 /* Lady Jaheira... */
  == B6WSHIT
  @1060174 /* *gulp* Ye right, sha'nru. He nah worth it. */
EXIT
APPEND B6WSHIT
  IF ~~ THEN BEGIN 6W#banter_shithri_anomen_fight__wiser
    SAY @1060170 /* Wiser one? Blimey! Another knighty! */

    IF ~IfValidForPartyDialog("Jaheira")~
      EXTERN ~BJAHEIR~ 6W#banter_shithri_anomen_fight__jaheira

    IF ~!IfValidForPartyDialog("Jaheira")~
      GOTO 6W#banter_shithri_anomen_fight__ye_know_nothin
  END
END

// END of anomen-shithri fight
/*************************************************************************/
/*************************************************************************/

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Anomen")
  See("Anomen")
  CombatCounter(0)
  Global("AnomenIsNotKnight","GLOBAL",0)
  Global("6W#banter_Shithri_Anomen","GLOBAL",2)
~ THEN B6WSHIT 6W#banter_shithri_anomen_2
  @1060200 /* Need a draught, matey? */
  DO ~SetGlobal("6W#banter_Shithri_Anomen","GLOBAL",3)~
  == BANOMEN
  @1060201 /* I sure am. */
  =
  @1060202 /* *gulp* Let me guess: you have some comments, like everyone else. */
  == B6WSHIT
  @1060203 /* Nay. *gulp* */
  == BANOMEN
  @1060204 /* Really? Nothing about me failing my tests and all? */
  == B6WSHIT
  @1060205 /* Why would I care? */
  == BANOMEN
  @1060206 /* I see. */
  =
  @1060207 /* Shithri? */
  == B6WSHIT
  @1060208 /* Aye? */
  == BANOMEN
  @1060209 /* Sorry for what I said about you earlier. You're a fine woman. */
  == B6WSHIT
  @1060210 /* *smirks* */
EXIT


//
// Cernd
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Cernd")
  See("Cernd")
  CombatCounter(0)
  AreaType(CITY)
  Global("6W#banter_Shithri_Cernd","GLOBAL",0)
  // either before house talks, or after they're resolved
  OR(2)
    Global("6W#Shithri_Cernd_House","GLOBAL",0)
    Global("6W#Shithri_Cernd_House","GLOBAL",6)
~ THEN B6WSHIT 6W#banter_shithri_cernd_0
  @1070000 /* Har har, wha' a lively city 'tis! Like Westgate, like Baldur's Gate but even bigger! */
  DO ~SetGlobal("6W#banter_Shithri_Cernd","GLOBAL",1)~
  == BCERND
  @1070001 /* Does a mother bear raise her cubs among the bricks? Does mortar grow on the walls of her cave? Can she love them enough when surrounded by concrete? */
  == B6WSHIT
  @1070002 /* Nay. She can't. */
  == BCERND
  @1070003 /* Tell me then, oh child of mountains and hills and rivers forgotten. */
  == B6WSHIT
  @1070004 /* "Only in caves o' stone, only under clear skies. Only where the river flows. Can a bear raise her cubs." */
  =
  @1070005 /* I nah expected ye t' know prayer t' the godly-ma, me hearty. */
  == BCERND
  @1070006 /* That, I do not. But I do know Mother. */
  == B6WSHIT
  // pulgor - druid, "priest of the forest"
  @1070007 /* Ye do. And ye serve her well, pulgor. */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Cernd")
  See("6WSHITHRI")
  CombatCounter(0)
  OR(2)
    AreaType(FOREST)
    AreaCheck("AR1900") /* Druid Grove */
  Global("6W#banter_Shithri_Cernd","GLOBAL",1)
  // either before house talks, or after they're resolved
  OR(2)
    Global("6W#Shithri_Cernd_House","GLOBAL",0)
    Global("6W#Shithri_Cernd_House","GLOBAL",6)
~ THEN BCERND 6W#banter_shithri_cernd_1
  @1070100 /* I noticed that you love singing, Shithri, but never sing in a forest. */
  DO ~SetGlobal("6W#banter_Shithri_Cernd","GLOBAL",2)~
  == B6WSHIT
  @1070101 /* I be listenin', pulgor. T' Mother. */
  == BCERND
  @1070102 /* As do I. You would make a fine druid, and yet you chose a life of... adventuring. */
  == B6WSHIT
  @1070103 /* Aye. Ye think Mother be angry wit' me? */
  == BCERND
  @1070104 /* I believe she still loves you. As she does with all of her children. But whether she is angry or not would depend on what your reason was. */
  == B6WSHIT
  @1070105 /* Love. */
  == BCERND
  @1070106 /* That - a mother will always condone. */
EXIT


//
// Haer'Dalis
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Haerdalis")
  See("Haerdalis")
  Global("6W#banter_Shithri_Haerdalis","GLOBAL",0)
~ THEN B6WSHIT 6W#banter_shithri_heardalis_0
  @1080000 /* Ho, how smartly yer blade dance be, my hearty! */
  DO ~SetGlobal("6W#banter_Shithri_Haerdalis","GLOBAL",1)~
  == BHAERDA
  @1080001 /* A great actor must know his footsteps, my seahawk. Yours are far from ordinary as well, if slightly unpolished. Evasive like a fish of shining scales, you are. */
  == B6WSHIT
  @1080002 /* 'tis called "sea legs". Naught fancy. */
EXIT

// Haer'Dalis's sea song is based on Polish sea song "Mewy" ("Seagulls")
// and inspired by BG's "sister" game, Planescape: Torment.
//
// Original lyrics by Tomasz Opoka
// Haer'Dalis's version by Udiknedormin
//
// You can check out the original version on YouTube:
// https://www.youtube.com/watch?v=lO8m2sQ3uh8
CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Haerdalis")
  See("Haerdalis")
  CombatCounter(0)
  !AreaType(FOREST)
  !AreaCheck("AR1900") /* Druid Grove */
  Global("6W#banter_Shithri_Haerdalis","GLOBAL",1)
~ THEN B6WSHIT 6W#banter_shithri_haerdalis_1
  @1080100 /* Walkin' in silence be tiresome. Ahoy, me hearty! Ye know any shanties? */
  DO ~
    SetGlobal("6W#banter_Shithri_Haerdalis","GLOBAL",2)
    SetGlobal("6W#Shithri_Haerdalis_friend","GLOBAL",1)
  ~
  == BHAERDA
  @1080101 /* Shanties, you say. Sea songs... yes. I do know one you may enjoy. */
  =
  @1080102 /* "Seagulls, oh black seagulls, wind-sculptured icy dust,
              Wing-bladed, blade-winged muses of ships fading into mist.
              Who made you gliding skyless beyond the memory
              Through cold hurricane's anger of cubic battlefields" */
  =
  @1080103 /* "Planehoppers coming back from Baator -
              Remind them for whom the bell tolls.
              To soldiers may your dark wings carry
              Hope for the speedy final loss" */
  =
  @1080104 /* "Birds that I remember from journey's very start,
              Predacious gales falling from rocks to gray Wreychtmirk.
              Wind drifting to Ocanthus, bouncing on the surface of Styx.
              How very reminiscent, dark birds of icy nix." */
  =
  // separate string just in case another language's version
  // would need to adjust it in any way
  @1080105 /* "Planehoppers coming back from Baator -
              Remind them for whom the bell tolls.
              To soldiers may your dark wings carry
              Hope for the speedy final loss" */
  == B6WSHIT
  @1080106 /* I... ne'er heard that one. */
  == BHAERDA
  @1080107 /* But of course, my seahawk. That one comes, after all, from the river of oblivion, flowing through the fields of Archeron. The plane of vast blocks of steel flowing through the sharpest of airs, clashing against one another as the armies of once-fallen clash on them. */
  == B6WSHIT
  @1080108 /* *gulp* Fine tale, me bard. Fine tale. I hope ye tell me more o' it someday. */
  == BHAERDA
  @1080109 /* I gladly will, my seahawk. */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Haerdalis")
  See("6WSHITHRI")
  TimeOfDay(NIGHT)
  CombatCounter(0)
  Global("6W#banter_Shithri_Haerdalis","GLOBAL",2)
~ THEN BHAERDA 6W#banter_shithri_haerdalis_2
  @1080200 /* What happened, my seahawk? Though I cannot deny that melancholy suits you well, 'tis a rare view. */
  DO ~SetGlobal("6W#banter_Shithri_Haerdalis","GLOBAL",3)~
  == B6WSHIT
  @1080201 /* 'tis just... ye sing o' love so often. Lost love. */
  =
  @1080202 /* I be rememberin' me own. Me first love. */
  == BHAERDA
  @1080203 /* I can see it in your eyes, my seahawk. Free yourself of soul's burdens and tell this sparrow your tale! Tragic as it may be. */
  == B6WSHIT
  @1080204 /* Har har, ye readin' me like a script. *smiles* */
  =
  @1080205 /* 'tis a tragic tale, aye. */
  =
  @1080206 /* Her name be Semeia. She be most beautiful thing I ever seen. Covered in those white dresses o' hers. Swayin' me gently to me sleep. */
  == BVICONI IF ~IfValidForPartyDialogue("Viconia")~
  @1080207 /* Don't tell me you mean... */
  == B6WSHIT
  @1080208 /* Her keel be too damaged, I be told. But I still took her to our last adventure. */
  =
  @1080209 /* I come back. She - nah. */
  == BHAERDA
  @1080210 /* I am sure you had many great journeys together before the Entropy took her from you. */
  == B6WSHIT
  @1080211 /* We did. */
  == BHAERDA
  @1080212 /* It was supposed to happen. And it's a good thing. Everything ends, and it's always sad. Even though 'tis a good thing. */
  =
  @1080213 /* Perhaps Semeia is now sailing among the endless seas of Limbo? */
  == B6WSHIT
  @1080214 /* Ye think so? */
  == BHAERDA
  @1080215 /* I do. I truly do, my seahawk. */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Haerdalis")
  See("Haerdalis")
  TimeOfDay(NIGHT)
  CombatCounter(0)
  Global("6W#banter_Shithri_Haerdalis","GLOBAL",3)
~ THEN B6WSHIT 6W#banter_shithri_haerdalis_3
  @1080300 /* Me sparrow? I be wonderin'. How ye became planehopper? */
  DO ~
    SetGlobal("6W#banter_Shithri_Haerdalis","GLOBAL",4)
    SetGlobal("6W#Shithri_Haerdalis_friend","GLOBAL",2)
  ~
  == BHAERDA
  @1080301 /* Well, 'tis quite natural for my kind. But if you ask for the first time I felt I am one... that must have been Ocanthus. */
  == B6WSHIT
  @1080302 /* Ye mentioned that name afore. In the song. */
  =
  @1080303 /* Ye... ne'er said who wrote it. */
  == BHAERDA
  @1080304 /* Indeed, my seahawk. I have not. *smirk* */
  =
  @1080305 /* Already being a Doomguard, I wished to see the beginning and end of the great river of oblivion. */
  == B6WSHIT
  @1080306 /* 'n then ye saw them. The birds o' black ice. */
  == BHAERDA
  @1080307 /* Indeed, I have. They are said to hold memories took by the waters of Styx. So I watched as the memories themselves fly across the cloudless sky. */
  =
  @1080308 /* Only then did I feel it for the very first time. The awe for Entropy. The call to see what few eyes saw. */
  == B6WSHIT
  @1080309 /* Awe can change the nature o' a man. */
  // ...if ye couldn't tell, Udiknedormin is a HUGE fan o Planescape: Torment. ;)
  == BHAERDA
  @1080310 /* It can, my seahawk. It certainly can. */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Haerdalis")
  See("6WSHITHRI")
  CombatCounter(0)
  Global("6W#banter_Shithri_Haerdalis","GLOBAL",4)
~ THEN BHAERDA 6W#banter_shithri_haerdalis_4
  @1080400 /* Could you ease this sparrow's endless curiosity for tales of love? I'm longing for the story of how you met your dear Semeia. */
  DO ~SetGlobal("6W#banter_Shithri_Haerdalis","GLOBAL",5)~
  == B6WSHIT
  @1080401 /* *gulp* I... be same age as me mother when she had me. */
  =
  @1080402 /* Wanderin' in the dockyard. I always liked watchin' new ships, ever since I be a wee lass. */
  =
  @1080403 /* Then I see her. She be standin' there. All ready fer her first voyage. */
  =
  @1080404 /* How could I nah come closer? */
  =
  @1080405 /* So I come. 'n I touch her helm. Hear how her riggin' whispers to me. */
  =
  @1080406 /* 'Tis how she stole me. That how I became a bucko o' today. */
  // ...and a Doctor Who fan too, yes. :D
  == BHAERDA
  @1080407 /* A story as old as water and forest. Forbidden love, two runaways trying to change their fate, only to be separated in death... */
  =
  @1080408 /* With just one exception. */
  == B6WSHIT
  @1080409 /* Wha' be it? */

  == BHAERDA
  @1080410 /* You live. */
  == B6WSHIT
  @1080411 /* 'n she be taken by Enthropy. */
  == BHAERDA
  @1080412 /* Like we all will. Someday. */
EXIT


//
// Jan Jansen
//

// Shithri's shanty is based on "Wellerman", a highly popular historical shanty
// about whalers. It has been translated to Polish at least a few times too. Note
// that the Polish were crazy about sea songs much longer than English-speaking
// internet (and, arguably, much more so), so it's hardly the most popular one.
//
// Original lyrics' author is unknown
// Shithri's version by Udiknedormin
//
// Here is a good version of the original shanty:
// https://www.youtube.com/watch?v=qP-7GNoDJ5c
CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Jan")
  See("Jan")
  CombatCounter(0)
  !AreaType(FOREST)
  !AreaCheck("AR1900") /* Druid Grove */
  Global("6W#banter_Shithri_Jan","GLOBAL",0)
~ THEN B6WSHIT 6W#banter_shithri_jan_0
  @1090000 /* "There once be a gnome that put t' field
              The name o' the gnome be Jansen Scratchy
              The sun shined hot, the rain poured down
              Oh come, me hungry boys, come (huh!)" */
  DO ~SetGlobal("6W#banter_Shithri_Jan","GLOBAL",1)~
  =
  @1090001 /* "Soon may the Jansen come
              T' bring us onions 'n leek 'n yam
              When turnip pickle be done
              He offer his price 'n sell!" */
  == BJAN
  @1090002 /* I must say, my dear, that you created most striking image of Uncle Scratchy... aside from the yam part, of course - he was always a man for potatoes. You see, Uncle Scratchy had a knack for dealings with Cormyrean vegetable merchants. He once convinced them for the most excellent idea of including leek in fruit salad. */
  == B6WSHIT
  @1090003 /* Be it why he hates yams? */
  == BJAN
  @1090004 /* You speak as you knew him! Why, that and his great passion for home-made liquors. What was I... oh, yes, leeks. Scratchy tried to convince Cormyretes to his new vegetable cheese when the Onion Famine stroke for good. Was it not for me, Uncle would surely go bankrupt. */
  == B6WSHIT
  @1090005 /* Aye, I reckon. Turnip price mus' be hundred times normal. */
  == BJAN
  @1090006 /* Exactly my point, dear! */
  == B6WSHIT
  @1090007 /* Blimey, this shanty o' mine be na good after all... */
  == BJAN
  @1090008 /* Don't worry. Uncle Scratchy was never good at singing to begin with. Besides - 'tis not even the way he spoke his own name. He claimed it to be pronounced Sss-cratt-chee. But as you may guess, it was just to make the Sembian competition angry. */
EXIT


//
// Keldorn
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Keldorn")
  See("6WSHITHRI")
  CombatCounter(0)
  Global("6W#banter_Shithri_Keldorn","GLOBAL",0)
~ THEN BKELDOR 6W#banter_shithri_keldorn_0
  @1100000 /* What is it, pirate girl? I cannot accept your morals, but I won't deny you confession, if your repentance is honest. */
  DO ~SetGlobal("6W#banter_Shithri_Keldorn","GLOBAL",1)~
  == B6WSHIT
  @1100001 /* Wha'? Confession? I be lookin' at yer many o' scars. Ye be a great warrior, I can tell, yarrr. */
  == BKELDOR
  @1100002 /* I am not a fighter for glory, Shithri. Only for the greater good. For justice. */
  == B6WSHIT
  @1100003 /* Aye, I respect that. */
  == BKELDOR
  @1100004 /* I beg your pardon? */
  == B6WSHIT
  @1100005 /* I said I be respectin' that. Ye follow yer code o' conduct. That be good. That be wha' warriors do. Like me uncle. */
  == BKELDOR
  @1100006 /* Well, mother's brother is surely an important man in the life of a young woman. */
  == B6WSHIT
  @1100007 /* 'n a daughter be an important woman in the life o' an old man. */
  == BKELDOR
  @1100008 /* Indeed. Even if she has lost the way. */
  == B6WSHIT
  @1100009 /* Mayhaps she goes her own one, knighty man. */
EXIT


//
// Korgan
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Korgan")
  See("6WSHITHRI")
  Global("6W#banter_Shithri_Korgan","GLOBAL",0)
~ THEN BKORGAN 6W#banter_shithri_korgan_0
  @1110000 /* Wha' a sight. Half-orc, yet so hairless. Face so disgustin' ye could take 'er for an elf. And that o'erlame excuse of tusks... */
  DO ~SetGlobal("6W#banter_Shithri_Korgan","GLOBAL",1)~
  == B6WSHIT
  @1110001 /* Ye got a problem wit' me, ye lil' stinkin' bildge rat? */
  == BKORGAN
  @1110002 /* Me, a rat?! How dare ye, ye mold-covered wench! Or mayhaps if I split ye open, I'd see all those rotten rodents that painted ye that?! */
  == B6WSHIT
  @1110003 /* Well, why don't ye try, ye cowardly, lubber scallywag? Afore I met ye, I'd believe only swabs could get scurvy, but ye prove I wrong, yarrr! */
  == BKORGAN
  @1110004 /* Wha' ye bark about me teeth, ye she-dog?! Maybe when I bury me keen axe in yer face, ye'll finally look like a proper orc?! */
  == B6WSHIT
  @1110005 /* 'is axe? Be it not fer yer teeth, I'd guess ye from Moonshea Isles. Cause that axe o' yers be only good for worm-huntin'. */
  == BKORGAN
  @1110006 /* Ye compare me to those green-bearded wildlings? Har har! Ye're not as soft as I thought! */
  == B6WSHIT
  @1110007 /* Aye, ye'd break yer axe on I, yarrr. *gulp* */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Korgan")
  See("6WSHITHRI")
  CombatCounter(0)
  Global("6W#banter_Shithri_Korgan","GLOBAL",1)
~ THEN BKORGAN 6W#banter_shithri_korgan_1
  @1110100 /* Hey, half-orc! Me mouth's dry! */
  DO ~SetGlobal("6W#banter_Shithri_Korgan","GLOBAL",2)~
  == B6WSHIT
  @1110101 /* *gulp* It be nay beer, matey. Would make ye loaded to the gunwales. If we on a ship, 'tis yarrr. */
  == BKORGAN
  @1110101 /* Oh, come on, lass! Just a cup! */
  == B6WSHIT
  @1110102 /* A nipperkin fer ye. 'tis nah grog. */
  == BKORGAN
  @1110103 /* Seven Hells, 'tis plenty strong! What is it called? */
  == B6WSHIT
  @1110104 /* Clap o' thunder. */
  == BKORGAN
  @1110105 /* Har har! Fittin' name. Pour me some more! */
EXIT


//
// Mazzy
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Mazzy")
  See("Mazzy")
  CombatCounter(0)
  Global("6W#banter_Shithri_Mazzy","GLOBAL",0)
~ THEN B6WSHIT 6W#banter_shithri_mazzy_0
  @1120000 /* A nipperkin, me matey? */
  DO ~SetGlobal("6W#banter_Shithri_Mazzy","GLOBAL",1)~
  == BMAZZY
  @1120001 /* Gladly, after so much walking... but why not a "draught"? */
  == B6WSHIT
  @1120002 /* Wha' ye mean? */
  == BMAZZY
  @1120003 /* You always ask for a "draught", not a "nipperkin". Is it perhaps related to my size? */
  == B6WSHIT
  @1120004 /* Nay, it jus' be strong. Have a try. */
  == BMAZZY
  @1120005 /* Thank you, I think I've lost my thirst. */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Mazzy")
  See("6WSHITHRI")
  CombatCounter(0)
  Global("6W#banter_Shithri_Mazzy","GLOBAL",1)
~ THEN BMAZZY 6W#banter_shithri_mazzy_1
  @1120100 /* What is it? */
  DO ~SetGlobal("6W#banter_Shithri_Mazzy","GLOBAL",2)~
  == B6WSHIT
  @1120101 /* Aye? */
  == BMAZZY
  @1120102 /* You have been looking at me for quite some time now. */
  == B6WSHIT
  @1120103 /* I be thinkin'. */
  == BVICONI IF ~IfValidForPartyDialogue("Viconia")~
  @1120104 /* That's unforeseen. */
  == B6WSHIT
  @1120105 /* Ye said ye can nah be paladin. */
  == BMAZZY
  @1120106 /* Indeed. I cannot. */
  == B6WSHIT
  @1120107 /* Why so? */
  == BMAZZY
  @1120108 /* Well, the gods... */
  == B6WSHIT
  @1120109 /* Ah, 'em. Then tell, me matey. Can halflings be druids? */
  == BMAZZY
  @1120110 /* No. I don't think they can. */
  == B6WSHIT
  @1120111 /* Yet there be one, back in the Dragoncoast. Whole party o' halflings, 'tis. Called "heroes o' Westgate". */
  == BMAZZY
  @1120112 /* It must be just a legend. */
  == B6WSHIT
  @1120113 /* Mayhaps. Mayhaps. */
EXIT


//
// Nalia
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Nalia")
  See("Nalia")
  CombatCounter(0)
  Global("6W#banter_Shithri_Nalia","GLOBAL",0)
~ THEN B6WSHIT 6W#banter_shithri_nalia_0
  @1130000 /* Ahoy, lass. Care fer a draught? */
  DO ~SetGlobal("6W#banter_Shithri_Nalia","GLOBAL",1)~
  == BNALIA
  @1130001 /* No, but thank you for your offer. I know it's important to you. */
  == B6WSHIT
  @1130002 /* Wha'? */
  == BNALIA
  @1130003 /* I mean... you drink a lot and not just common liquors. I don't think you're a noble-born. You drink like... a person who knows how it is not to have anything to drink. */
  == B6WSHIT
  @1130004 /* *gulp* */
  == BNALIA
  @1130005 /* And even you becoming a pirate... */
  == B6WSHIT
  @1130006 /* Avast, lass. Avast. */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Nalia")
  See("6WSHITHRI")
  CombatCounter(0)
  Global("6W#banter_Shithri_Nalia","GLOBAL",1)
~ THEN BNALIA 6W#banter_shithri_nalia_1
  @1130100 /* Shithri? */
  DO ~SetGlobal("6W#banter_Shithri_Nalia","GLOBAL",2)~
  == B6WSHIT
  @1130101 /* *gulp* */
  == BNALIA
  @1130102 /* Shithri. Please, talk to me. You haven't spoken a word since... since then. */
  =
  @1130103 /* I was just trying to say that the class system... */
  == B6WSHIT
  @1130104 /* Ye betta nah look down yer nose on I. Yarrr. */
  == BNALIA
  @1130105 /* I don't! Shithri, I... */
  == B6WSHIT
  @1130106 /* Listen, ye fake, spoiled wench. Listen well 'cause I nah repeat meself. */
  =
  @1130107 /* Me mother be proud orc o' Zentil Keep. Me uncle be soldier under general Vrakk. */
  =
  @1130108 /* I be pirate. Aye, I be! I be pillagin'. I be killin' dozens. I be starvin' on the sea. */
  =
  @1130109 /* Don't ye dare lie that it be all 'cause o' me birth. I CHOSE this life. */
  =
  @1130110 /* Now begone. I need a drink. */
EXIT


//
// Valygar
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Valygar")
  See("6WSHITHRI")
  CombatCounter(0)
  Global("6W#banter_Shithri_Valygar","GLOBAL",0)
~ THEN BVALYGA 6W#banter_shithri_valyga_0
  @1140000 /* I prefer you this way. */
  DO ~SetGlobal("6W#banter_Shithri_Valygar","GLOBAL",1)~
  == B6WSHIT
  @1140001 /* Wha' way? */
  == BVALYGA
  @1140002 /* Not singing shanties when you're near me. */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Valygar")
  See("Valygar")
  CombatCounter(0)
  Global("6W#banter_Shithri_Valygar","GLOBAL",1)
~ THEN B6WSHIT 6W#banter_shithri_valyga_1
  @1140100 /* I hear ye once be in the army, me hearty. */
  DO ~SetGlobal("6W#banter_Shithri_Valygar","GLOBAL",2)~
  == BVALYGA
  @1140101 /* Indeed, I was. */
  == B6WSHIT
  @1140102 /* Ye surely did many an honor t' yer country, yarrr. */
  == BVALYGA
  @1140103 /* I doubt that. I wasn't a front-fighter, but a scout. */
  == B6WSHIT
  @1140104 /* Did ye emerge victorious? */
  == BVALYGA
  @1140105 /* Well, I'm alive. */
  == B6WSHIT
  @1140106 /* Then ye did many an honor to yer country, yarrr. */
  == BVALYGA
  @1140107 /* *sight* I suppose I did. */
EXIT


//
// Yoshimo
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Yoshimo")
  See("6WSHITHRI")
  CombatCounter(0)
  Global("6W#banter_Shithri_Yoshimo","GLOBAL",0)
~ THEN BYOSHIM 6W#banter_shithri_yoshimo_0
  @1150000 /* Cheer up, pirate princess! Why are you drinking alone this beautiful <DAYNIGHT>? */
  DO ~SetGlobal("6W#banter_Shithri_Yoshimo","GLOBAL",1)~
  == B6WSHIT
  @1150001 /* Aye, well-spoken. I 'ave nah letter o' marque. */
  == BYOSHIM
  @1150002 /* Would it bring more smiles on your fair face, my beauty? */
  == B6WSHIT
  @1150003 /* Nay. But it may make ye lose interest. */
  =
  @1150004 /* That glimmer in yer eyes. 'n that fake smile o' yers. I know 'em all too very well. Don't ye run any rigs on I, yarrr. */
EXIT


//
// Dorn
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Dorn")
  See("6WSHITHRI")
  CombatCounter(0)
  Global("6W#banter_Shithri_Dorn","GLOBAL",0)
~ THEN BDORN 6W#banter_shithri_dorn_0
  @1170000 /* A pirate. One who should be taking whatever she desires, while the world around screams and burns. And yet she doesn't. */
  DO ~SetGlobal("6W#banter_Shithri_Dorn","GLOBAL",1)~
  == B6WSHIT
  @1170001 /* Nay. She jus' ain't doin' it now. */
  == BDORN
  @1170002 /* Why? There is so much more you could do. And be. */
  == B6WSHIT
  @1170003 /* She be doin' what she wants. Bein' what she wants. */
  == BDORN
  @1170004 /* You know it is not the truth. */
  == B6WSHIT
  @1170005 /* Ye better nah learn 'tisn't. */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Dorn")
  See("Dorn")
  CombatCounter(0)
  Global("6W#banter_Shithri_Dorn","GLOBAL",1)
~ THEN B6WSHIT 6W#banter_shithri_dorn_1
  @1170100 /* Says I, me matey, that ye be nah jus' carouser, but also quite a slasher. */
  DO ~SetGlobal("6W#banter_Shithri_Dorn","GLOBAL",2)~
  == BDORN
  @1170101 /* It's true that I'm strong. But it's also true that you are weak. */
  == B6WSHIT
  @1170102 /* Natterin' all fancy again, ain't ye? */
  == BDORN
  @1170103 /* You really are. Doubly so for a half-orc, much to my surprise. */
  == B6WSHIT
  @1170104 /* Ye worship the Leg-Breaker or wha'? Hope ye know he pays his mother more respect than t' his father. */
  == BDORN IF ~Global("OHD_urgothoz_patron","GLOBAL",1)~
  @1170105 /* Don't try to educate me on orcish gods, lass. I serve not them, but my patron. */
  == BDORN IF ~Global("OHD_azothet_patron","GLOBAL",1)~
  // separate, in case some language needs a different version depending on gender
  @1170106 /* Don't try to educate me on orcish gods, lass. I serve not them, but my patron. */
  == BDORN IF ~
    Global("OHD_urgothoz_patron","GLOBAL",0)
    Global("OHD_azothet_patron","GLOBAL",0)
  ~
  @1170107 /* Don't try to educate me on orcish gods, lass. I serve not them. Them nor anyone. */
  == B6WSHIT
  @1170108 /* Foolish. */
  == BDORN
  @1170109 /* We will see. */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Dorn")
  See("6WSHITHRI")
  CombatCounter(0)
  Global("6W#banter_Shithri_Dorn","GLOBAL",2)
~ THEN BDORN 6W#banter_shithri_dorn_2
  @1170200 /* I must admit I see some... potential in you. */
  DO ~SetGlobal("6W#banter_Shithri_Dorn","GLOBAL",3)~
  == B6WSHIT IF ~Global("OHD_urgothoz_patron","GLOBAL",1)~
  @1170201 /* Oh do ye? Or be it jus' yer patron who does? */
  == B6WSHIT IF ~Global("OHD_azothet_patron","GLOBAL",1)~
  // separate, in case some language needs a different version depending on gender
  @1170202 /* Oh do ye? Or be it jus' yer patron who does? */
  == B6WSHIT
  @1170203 /* Oh do ye? */
  == BDORN IF ~Global("OHD_urgothoz_patron","GLOBAL",1)~
  @1170204 /* It is of no concern to him. */
  == BDORN IF ~Global("OHD_azothet_patron","GLOBAL",1)~
  @1170205 /* It is of no concern to her. */
  == BDORN
  @1170206 /* You were betrayed too. */
  == B6WSHIT
  @1170207 /* ... */
  == BDORN
  @1170208 /* Shall I continue? */
  == B6WSHIT
  @1170209 /* Why ye suddenly care? */
  == BDORN
  @1170210 /* I... I do not. I do not. */
  == B6WSHIT
  @1170211 /* *gulp* Now ye say "I find ye useful". Or somethin' o' the kind. */
  == BDORN
  @1170212 /* Begone! */
  == B6WSHIT
  @1170213 /* As ye wish, me matey. As ye wish. */
EXIT


//
// Neera
//

// Lovetalks are in a separate file, bshithri_neera_romance.d
// @118... prefix is reserved for Neera in case some non-lovetalk
// (matey-ship?) banters are to be added later on.


//
// Hexxat
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Hexxat")
  See("Hexxat")
  CombatCounter(0)
  Global("6W#banter_Shithri_Hexxat","GLOBAL",0)
~ THEN B6WSHIT 6W#banter_shithri_hexxat_0
  @1180000 /* Ahoy, me beauty! */
  DO ~SetGlobal("6W#banter_Shithri_Hexxat","GLOBAL",1)~
  == BHEXXAT
  @1180001 /* How do you do, Shithri. */
  == B6WSHIT
  @1180002 /* Would ye care fer a glass o' wine, m'lady? */
  == BHEXXAT
  @1180003 /* I'm a vampire. I can't drink wine. */
  == B6WSHIT
  @1180004 /* Even the blood wine?! */
  == BHEXXAT
  @1180005 /* Sadly, no. */
  == B6WSHIT
  @1180006 /* Wha' be t' life if ye can't drink? */
  == BHEXXAT
  @1180007 /* "Life"... */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Hexxat")
  See("Hexxat")
  CombatCounter(0)
  Global("6W#banter_Shithri_Hexxat","GLOBAL",1)
  !Global("6W#Shithri_NotChult","GLOBAL",3)
~ THEN B6WSHIT 6W#banter_shithri_hexxat_1
  @1180100 /* Ahoy, me beauty! */
  DO ~SetGlobal("6W#banter_Shithri_Hexxat","GLOBAL",2)~
  == BHEXXAT
  @1180101 /* What is it, buccaneer? */
  == B6WSHIT
  @1180102 /* I be curious: are ye from Chult? */
  == BHEXXAT
  @1180103 /* I am. Why? */
  == B6WSHIT
  @1180104 /* I be dyin' fer tales o' it! */
  == BHEXXAT
  @1180105 /* Better don't. Death is not as romantic as you may imagine it. */
EXIT


//
// Wilson
//
// Note: in vanilla BG2:EE, Wilson has no banter file (no bwilson.dlg),
// so the banters need to be initiated by the other characters
// and Wilson's answers - added in wilsonj.dlg.
//
// While it is possible to add bwilson.dlg instead, it's simpler to do it
// this way. Especially considering how adding a bwilson.dlg file may be
// incompatible with WilsonChronicles mod.

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Wilson")
  See("6WSHITHRI")
  CombatCounter(0)
  Global("6W#banter_Shithri_Wilson","GLOBAL",0)
~ THEN B6WSHIT 6W#banter_shithri_wilson_0
  @1190000 /* Take this. */
  DO ~SetGlobal("6W#banter_Shithri_Wilson","GLOBAL",1)~
  == WILSONJ
  @1190001 /* Growl. */
  == B6WSHIT
  @1190002 /* 'n that one too. Careful nah t' stir it too much. */
  == WILSONJ
  @1190003 /* Snuffle growl. */
END B6WSHIT 6W#banter_shithri_wilson_0__no_prey_no_pay

APPEND B6WSHIT
  IF ~~ THEN BEGIN 6W#banter_shithri_wilson_0__no_prey_no_pay
    SAY @1190004 /* No prey, no pay, me matey. Ye doin' great. */

    IF ~~ THEN
      REPLY @1190005 /* Stop this at once! Wilson is no mule! */
      EXTERN ~WILSONJ~ 6W#banter_shithri_wilson_0__she_payin_me

    IF ~~ THEN
      REPLY @1190006 /* He seems to do surprisingly well, for a bear of such gentle nature... */
      GOTO 6W#banter_shithri_wilson_0__may_go_on_account

    IF ~~ THEN
      REPLY @1190007 /* Wilson? Mind taking my stuff too? */
      EXTERN ~WILSONJ~ 6W#banter_shithri_wilson_0__not_for_free
  END
END

APPEND WILSONJ
  IF ~~ THEN BEGIN 6W#banter_shithri_wilson_0__she_payin_me
    SAY @1190010 /* Growl, growl! */

    IF ~~ THEN
      REPLY @1190011 /* Oh does she? How does one pay a bear though? */
      GOTO 6W#banter_shithri_wilson_0__pays_in_ale

    IF ~~ THEN
      REPLY @1190012 /* I'm sure I can pay you more than she does. */
      GOTO 6W#banter_shithri_wilson_0__she_best

    IF ~~ THEN
      REPLY @1190013 /* Fine then. Do as you wish, Wilson. */
      EXIT
  END

  IF ~~ THEN BEGIN 6W#banter_shithri_wilson_0__pays_in_ale
    SAY @1190014 /* Roar growl! */

    IF ~~ THEN
      REPLY @1190015 /* Ale, is it? Hmm. Who would have thought. */
      EXTERN ~B6WSHIT~ 6W#banter_shithri_wilson_0__he_has_taste

    IF ~~ THEN
      REPLY @1190012 /* I'm sure I can pay you more than she does. */
      GOTO 6W#banter_shithri_wilson_0__she_best

    IF ~~ THEN
      REPLY @1190016 /* Very well then. */
      EXIT
  END

  IF ~~ THEN BEGIN 6W#banter_shithri_wilson_0__she_best
    SAY @1190022 /* Growl, roar! */

    IF ~~ THEN
      REPLY @1190023 /* I see you must have a very high opinion of her. Very well then. */
      EXIT
  END

  IF ~~ THEN BEGIN 6W#banter_shithri_wilson_0__dreamt_of_piracy
    SAY @1190030 /* Snuffle. Roar. ROAR! */

    IF ~~ THEN
      REPLY @1190031 /* I'm sorry, Wilson. I didn't know that's how you feel. */
      GOTO 6W#banter_shithri_wilson_0__still_sad_but_thx

    IF ~~ THEN
      REPLY @1190032 /* Well, I'll see you try. Maybe you will surprise me one day. */
      EXIT

    IF ~~ THEN
      REPLY @1190033 /* I think that's just not for bears. I mean: a bear at full sea? No sir. That's just how things are. */
      GOTO 6W#banter_shithri_wilson_0__wha_a_swab
  END

  IF ~~ THEN BEGIN 6W#banter_shithri_wilson_0__still_sad_but_thx
    SAY @1190034 /* Snort. Snort. Snuffle. */

    IF ~~ THEN
      EXIT
  END
  IF ~~ THEN BEGIN 6W#banter_shithri_wilson_0__wha_a_swab
    SAY @1190035 /* Roar, growl growl. */

    IF ~~ THEN
      EXIT
  END
  IF ~~ THEN BEGIN 6W#banter_shithri_wilson_0__thank_you
    SAY @1190036 /* Snuffle. Roar. */

    IF ~~ THEN
      EXIT
  END
  IF ~~ THEN BEGIN 6W#banter_shithri_wilson_0__aye
    SAY @1190037 /* Roar. */

    IF ~~ THEN
      EXIT
  END

  IF ~~ THEN BEGIN 6W#banter_shithri_wilson_0__not_for_free
    SAY @1190040 /* Snort roar. */

    IF ~~ THEN
      REPLY @1190011 /* Oh does she? How does one pay a bear though? */
      GOTO 6W#banter_shithri_wilson_0__pays_in_ale

    IF ~~ THEN
      REPLY @1190012 /* I'm sure I can pay you more than she does. */
      GOTO 6W#banter_shithri_wilson_0__she_best

    IF ~~ THEN
      REPLY @1190013 /* Fine then. Do as you wish, Wilson. */
      EXIT
  END
END

APPEND B6WSHIT
  IF ~~ THEN BEGIN 6W#banter_shithri_wilson_0__he_has_taste
    SAY @1190020 /* He has good taste fer it too. */
    =
    @1190021 /* Me matey. Less growlin' more carryin'. */

    IF ~~ THEN
      EXIT
  END

  IF ~~ THEN BEGIN 6W#banter_shithri_wilson_0__may_go_on_account
    SAY @1190024 /* May even go on account, he may. */

    IF ~~ THEN
      REPLY @1190025 /* Wilson? A pirate? You're joking, right? */
      EXTERN ~WILSONJ~ 6W#banter_shithri_wilson_0__dreamt_of_piracy

    IF ~~ THEN
      REPLY @1190026 /* I never really thought about it, but... I think you may be right. */
      EXTERN ~WILSONJ~ 6W#banter_shithri_wilson_0__thank_you

    IF ~~ THEN
      REPLY @1190027 /* Surely he could. He's a bear of many talents. */
      EXTERN ~WILSONJ~ 6W#banter_shithri_wilson_0__aye
  END
END




//
// Minsc and Korgan
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Minsc")
  IfValidForPartyDialogue("Korgan")
  See("Korgan")
  See("6WSHITHRI")
  CombatCounter(0)
  Global("6W#banter_Shithri_Minsc_Korgan","GLOBAL",0)
  GlobalGT("6W#banter_Shithri_Minsc","GLOBAL",0)
  GlobalGT("6W#banter_Shithri_Korgan","GLOBAL",0)
~ THEN BMINSC 6W#banter_shithri_minsc_korgan_0
  @1900000 /* Boo says he's quite fond of this company. And so is Minsc! */
  DO ~
    SetGlobal("6W#banter_Shithri_Minsc_Korgan","GLOBAL",1)
    // Korgan and Minsc are now on good terms
    SetGlobal("ExpBMinsc1","LOCALS",1)
  ~
  == BKORGAN
  @1900001 /* Har har! Ne'er thought I'd agree with that rodent o' yers, an' here we are! */
  =
  @1900002 /* Uh. Fine, fine, Shithri. Don't give me that look... Hamster. With that hamster of yers. */
  == BMINSC
  @1900003 /* Boo says... */
  == B6WSHIT
  @1900004 /* Aye, Boo! Wise words! */
  == BKORGAN
  @1900005 /* *gulp* Looks quite good with that mug o' ale, I gotta admit. */
  == BMINSC
  @1900006 /* Oh, I always knew even you must realise his greatness! He may be small, but his body is packed with goodness! */
  == BKORGAN
  @1900007 /* Yeah, sure... Pour me some more, half-orc. I be needin' it. */
EXIT

// TODO: Rasaad? From the doc
