// Shithri - party banters for Throne of Bhaal
//
BEGIN B6WSHI25


// 
// Imoen
// 

CHAIN IF ~
  IfValidForPartyDialogue("Imoen2")
  IfValidForPartyDialogue("6WSHITHRI")
  CombatCounter(0)
  See("6WSHITHRI")
  !AreaType(DUNGEON)
  Global("6W#tob_banter_Shithri_Imoen","GLOBAL",0)
~ THEN BIMOEN25 6W#banter_shithri_imoen_0
  @1010000 /* Shithri, Shithri, I know what you need! */
  DO ~SetGlobal("6W#tob_banter_Shithri_Imoen","GLOBAL",1)~
  == B6WSHI25
  @1010001 /* Do ye, lass? */
  == BIMOEN25
  @1010002 /* A parrot! */
  == B6WSHI25
  @1010003 /* Ho! Why'd ye reckon that? */
  == BIMOEN25
  @1010004 /* I mean... every pirate needs a parrot, right? Just like every Rashemaar warrior needs a hamster. */
  == BMINSC25 IF ~IfValidForPartyDialogue("Minsc")~
  @1010005 /* Hear that, Boo? */
  == B6WSHI25
  @1010006 /* Blimey! Where ye get that from?! */
  == BIMOEN25
  @1010007 /* Well, one of the very few interesting books back in... */
  == B6WSHI25
  @1010008 /* There be books 'bout pirates?! */
  == BIMOEN25
  @1010009 /* Sure? */
  == B6WSHI25
  @1010010 /* Why noone told me afore?! */
  == BIMOEN25
  @1010011 /* ...anyway! One of the very few interesting books back in Candlekeep was a story about a great pirate. With long, black beard and madness in his eyes. Once, he was curious how Hell looks like, but being no mage, he figured he can check that by burning sulphur under the deck. */
  == B6WSHI25
  @1010012 /* Sounds like a decent, darin' bucko, yarrr! Wha' does it 'ave t' do wit' parrots though? */
  == BIMOEN25
  @1010013 /* I kind of always imagined him with one. */
  == B6WSHI25 IF ~GlobalLT("6W#Shithri_NotChult","GLOBAL",2)~
  @1010014 /* *gulp* Mayhaps I get one. When I get thar. To that far south o' Chult. */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("Imoen2")
  IfValidForPartyDialogue("6WSHITHRI")
  CombatCounter(0)
  See("Imoen2")
  !AreaType(DUNGEON)
  Global("6W#tob_banter_Shithri_Imoen","GLOBAL",1)
~ THEN B6WSHI25 6W#banter_shithri_imoen_0
  @1010100 /* Wha' be it, me lass? */
  DO ~SetGlobal("6W#tob_banter_Shithri_Imoen","GLOBAL",2)~
  == BIMOEN25
  @1010101 /* You don't seem like a pirate, you know? */
  == B6WSHI25
  @1010102 /* Ye tryin' to insult me, ye lil', sorry rapscallion!? */
  == BIMOEN25
  @1010103 /* Err. I mean: you don't SEEM like a pirate. */
  == B6WSHI25
  @1010104 /* *gulp* Ye mean... like a privateer? Corsair? */
  == BIMOEN25
  @1010105 /* I mean you're quite a nice person. For someone raised in Zhentil Keep, at least. */
  =
  @1010106 /* So... a cinnamon cookie? For friendship? */
  == B6WSHI25
  @1010107 /* Avast, me hearty! Don't ye waste cinnamon, it ain't cheap. Let's have a draught of Hal'an Bumbo, yarrr! */
EXIT


//
// Jaheira
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Jaheira")
  CombatCounter(0)
  See("6WSHITHRI")
  Global("6W#tob_banter_Shithri_Jaheira","GLOBAL",0)
~ THEN BJAHEI25 6W#tob_banter_shithri_jaheira_0
  @1020000 /* I must say, child, that you seem to serve your goddess well. */
  DO ~SetGlobal("6W#tob_banter_Shithri_Jaheira","GLOBAL",1)~
  == B6WSHI25
  @1020001 /* I try, sha'nru. That be what me mortal mother would want o' me, be she alive. */
  == BJAHEI25
  @1020002 /* What does it mean, this word you always address me with? */
  == B6WSHI25
  @1020003 /* It... it be used t' show respect. Aye. */
  == BDORN25  IF ~IfValidForPartyDialogue("Dorn")~
  @1020004 /* Mother's sister. It means mother's sister. */
  == B6WSHI25 IF ~IfValidForPartyDialogue("Dorn")~
  @1020005 /* Har har... 'tis... 'tis a dialect. A rare one! Ye surely nah know it! */
  == BDORN25  IF ~IfValidForPartyDialogue("Dorn")~
  @1020006 /* I surely do not. */
  == BJAHEI25
  @1020007 /* Ah, I see. Thank you, child. */
  == B6WSHI25
  @1020008 /* *smiles* Of course. Sha'nru. */
EXIT


//
// Viconia
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Viconia")
  CombatCounter(0)
  See("6WSHITHRI")
  Global("6W#tob_banter_Shithri_Viconia","GLOBAL",0)
~ THEN BVICON25 6W#tob_banter_shithri_viconia_0
  // jaluk - male
  @1040000 /* Are you sure you're not a jaluk, Shithri? It is still beyond exotic to me what still counts as feminine among the surfacers. */
  DO ~SetGlobal("6W#tob_banter_Shithri_Viconia","GLOBAL",1)~
  =
  @1040001 /* No doubt you are an exemplary female of your kind nevertheless. Inarguably, your goddess wouldn't approve otherwise. */
  == B6WSHI25
  @1040002 /* *gulp* Bella be very womanly, aye. Nah doubt she serves her godly-ma loyally. */
  =
  @1040003 /* I be told she ‘avin' many a men in her life. 'n yet fer some reason I ne'er hear o' her children... */
  == BVICON25
  @1040004 /* Silence, piglet. */
  == B6WSHI25
  @1040005 /* She be payin' much a thought to a certain woman, dreamin' o' her bein' a man instead... */
  == BVICON25
  @1040006 /* Enough now, you...! */
  == B6WSHI25
  @1040007 /* ...'n instead o' just askin' that woman fer a draught or a dozen, she be tryin' t' get 'er attention by... */
  == BVICON25
  @1040008 /* Not. Another. Word. Unless you want to get to know the drow ways of punishing offense more intimately. */
EXIT


//
// Aerie
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Aerie")
  CombatCounter(0)
  See("Aerie")
  // only makes sense if they talked already
  !Global("6W#banter_Shithri_Aerie","GLOBAL",0)
  Global("6W#tob_banter_Shithri_Aerie","GLOBAL",0)
~ THEN B6WSHI25 6W#tob_banter_shithri_aerie_0
  @1050000 /* Me hearty? */
  DO ~SetGlobal("6W#tob_banter_Shithri_Aerie","GLOBAL",1)~
  == BAERIE25
  @1050001 /* Yes, Shithri? Did something happen? You never call me that. */
  == B6WSHI25
  @1050002 /* Aye. I wanted t' say. I sorry. */
  == BAERIE25
  @1050003 /* For what? I can't remember you doing me any harm. Not intentionally, at least. */
  == B6WSHI25
  @1050004 /* I called ye "lass". But I must say, ye no sprog, nay. No child. Ye be shatrag now. A witch. */
  == BAERIE25
  @1050005 /* *giggle* Sorry, Shithri, it's just so rare to see you embarassed! */
  == B6WSHI25
  @1050006 /* *gulp* */
  == BAERIE25
  @1050007 /* Ha ha ha! You can be so silly sometimes, Shithri! */

  // if aerie is pregnant, she would probably better not drink grog
  // she mentions her pregnancy in her b-lovetalk ExpLoveTalk==12
  == BAERIE25 IF ~
    GlobalGT("ExpLoveTalk","LOCALS",11)
    Global("AerieHadBaby","GLOBAL",0)
  ~
  @1050008 /* I accept your apology. No grog for me this time though. */
  == BAERIE25 IF ~
    OR(2)
      GlobalLT("ExpLoveTalk","LOCALS",12)
      !Global("AerieHadBaby","GLOBAL",0)
  ~
  @1050009 /* I accept your apology. And I could also accept your invitation for some grog this time. */
  == B6WSHI25    
  @1050010 /* Yarrr. */
EXIT


//
// Anomen
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Anomen")
  See("Anomen")
  CombatCounter(0)
  Global("AnomenIsKnight","GLOBAL",1)
  Global("6W#tob_banter_Shithri_Anomen","GLOBAL",0)
~ THEN B6WSHI25 6W#tob_banter_shithri_anomen_0a
  @1060000 /* Care fer a draught, me matey? */
  DO ~
    SetGlobal("6W#banter_Shithri_Anomen","GLOBAL",3)
    SetGlobal("6W#tob_banter_Shithri_Anomen","GLOBAL",1)
  ~
  == BANOME25
  @1060001 /* How could you drink now? The lives of so many people depend on us! */
  == B6WSHI25
  @1060002 /* Aye. So wha'? */
  == BANOME25
  @1060003 /* We need to act, not drink! */
  == B6WSHI25
  @1060004 /* Can do both. */
  == BANOME25
  @1060005 /* Ehh... */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Anomen")
  See("6WSHITHRI")
  CombatCounter(0)
  Global("AnomenIsNotKnight","GLOBAL",1)
  Global("6W#tob_banter_Shithri_Anomen","GLOBAL",0)
~ THEN BANOME25 6W#tob_banter_shithri_anomen_0b
  @1060100 /* ...and so I took the vile beast down. */
  DO ~
    SetGlobal("6W#banter_Shithri_Anomen","GLOBAL",3)
    SetGlobal("6W#tob_banter_Shithri_Anomen","GLOBAL",1)
  ~
  == B6WSHI25
  @1060101 /* Har har! Fine tale, me matey. Ye nah the same dandy knave ye be afore. */
  == BANOME25
  @1060102 /* Oh, I most certainly am not! You can't even begin to imagine the freedom that... */
  =
  @1060103 /* Silly me. You don't need to imagine it. */
  == B6WSHI25
  @1060104 /* *smirks* */
  == BANOME25
  @1060105 /* Let's have another drink, my friend. */
  == B6WSHI25
  @1060106 /* Just one? */
  == BANOME25
  @1060107 /* Ha ha! Maybe more! */
EXIT


//
// Cernd
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Cernd")
  See("6WSHITHRI")
  CombatCounter(0)
  Global("6W#tob_banter_Shithri_Cernd","GLOBAL",0)
~ THEN BCERND25 6W#tob_banter_shithri_cernd_0
  @1070000 /* I must say, Shithri, I have never met a half-orc like you. */
  DO ~SetGlobal("6W#tob_banter_Shithri_Cernd","GLOBAL",1)~
  == B6WSHI25
  @1070001 /* Aye, I be a ten among these threes. Told that a lot. */
  == BCERND25
  @1070002 /* I meant your soul, my dear. Like a bird raised in a cage, you long for vast blue seas and green forests, singing joyfully by the morning of freedom. And like a bear, you lack any malice in your heart. */
  =
  @1070003 /* I wonder what it would be if there were orcs like you... or perhaps there are? */
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
// Shithri's version:
//   original, Polish version by Wilczogon
//   English version by combined efforts of Wilczogon and Udiknedormin
//
// Here is a good version of the original shanty:
// https://www.youtube.com/watch?v=qP-7GNoDJ5c
CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Jan")
  See("Jan")
  CombatCounter(0)
  !AreaType(FOREST)
  Global("6W#tob_banter_Shithri_Jan","GLOBAL",0)
~ THEN B6WSHI25 6W#tob_banter_shithri_jan_0
  @1090000 /* "Once Scratchy Jansen had some dirt
              In all yer sight the field will get
              And the day the soil was wet
              With the rain o' our sweat" */
  DO ~SetGlobal("6W#tob_banter_Shithri_Jan","GLOBAL",1)~
  =
  @1090001 /* "Soon may be Scratchy back
              T' give each one an onion sack
              Turn turnip t' white from black
              Wit' gols his bag will clack" */
  =
  @1090002 /* "I know the onions really well
              O' countryman I be one hell
              The famine great on us once fell
              O'er waste the tears I quell" */
  =
  // separate string just in case another language's version
  @1090003 /* "Soon may be Scratchy back
              T' give each one an onion sack
              Turn turnip t' white from black
              Wit' gols his bag will clack" */
  =
  @1090004 /* "'Wipe tears' Jan Jansen t' uncle say
              'Nah worry, here me plan I lay:
              I know an elf o'er the bay
              He buy turnip doubly paid'" */
  =
  @1090005 /* "Soon may be Scratchy back
              T' give each one an onion sack
              Turn turnip t' white from black
              Wit' gols his bag will clack" */
  =
  @1090006 /* "Soon more he got than ever lost
              'N turnip-famous he be most
              Now Scratchy's jacket be golden flossed
              For us - as bad as it was" */
  =
  @1090007 /* "Soon may be Scratchy back
              T' give each one an onion sack
              Turn turnip t' white from black
              Wit' gols his bag will clack" */
  == BJAN25 IF ~!Global("6W#banter_Shithri_Jan","GLOBAL",0)~
  @1090008 /* Much better, much better, my dear! */
  == BJAN25 IF ~Global("6W#banter_Shithri_Jan","GLOBAL",0)~
  @1090009 /* What a fine song, my dear! */
  == BJAN25
  @1090010 /* That decent elf knew the value meatless turnip, I always say that. */
  =
  @1090011 /* But who are those "us" in the last stanza? */
  == B6WSHI25
  @1090012 /* The halflings workin' on his field, o' course. */
  == BJAN25
  @1090013 /* Ah, of course, of course... */
  =
  @1090014 /* Wait a second... Uncle Scratchy was a fine man of business, they all loved him like their own father! */
  == B6WSHI25
  @1090015 /* Nah the one I heard the story from, nay. Met him in an inn drinkin' like a devil. */
  == BJAN25
  @1090016 /* Well, perhaps it was the one who drank a lot and lost his job because of it. I heard he spread many terrible, terrible lies about Uncle. */
  == B6WSHI25
  @1090017 /* Surely the one. */
EXIT


//
// Keldorn
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Keldorn")
  See("6WSHITHRI")
  CombatCounter(0)
  Global("6W#tob_banter_Shithri_Keldorn","GLOBAL",0)
~ THEN BKELDO25 6W#tob_banter_shithri_keldorn_0
  @1100000 /* I cannot remain silent any longer. Shithri, my child, it pains me to see you still following the way of sin. I urge you to reconsider! */
  DO ~SetGlobal("6W#tob_banter_Shithri_Keldorn","GLOBAL",1)~
  == B6WSHI25
  @1100001 /* This bucko nah be goin' off business anytime soon, me warrior. */
  == BKELDO25
  @1100002 /* That is not what I mean. It is not about piracy. Not this time, at least. */
  =
  @1100003 /* *sigh* You KNOW what I mean, don't make the old man say that out loud! */
  == B6WSHI25
  @1100004 /* I be 'avin' nah idea wha' ye talkin' about, me darin' warrior. Wha' "sin" could ye mean, I be wonderin'? */
  =
  @1100005 /* Me warrior, be it blossom on yer mighty cheeks? */
  == BKELDO25
  @1100006 /* Torm guide me... */
  =
  @1100007 /* Young lady. I believe you are well aware of the nature of your misconducts. Your over-amicable behaviours, especially towards... other young ladies who... may or may not happen to be over-amicable with others too. */
  == B6WSHI25
  @1100008 /* Aye, of course I be a friendly lass t' all me hearties! */
  == BKELDO25
  @1100009 /* Well, I wouldn't exactly call it a friendship, unless- */
  =
  @1100010 /* *sigh* Fine. I will try another time. */
EXIT


//
// Korgan
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Korgan")
  See("Korgan")
  CombatCounter(0)
  Global("6W#tob_banter_Shithri_Korgan","GLOBAL",0)
~ THEN B6WSHI25 6W#tob_banter_shithri_korgan_0
  @1110000 /* ...and then I brain that rapscallion o' a bosun with 'is own marlinspike. */
  DO ~SetGlobal("6W#tob_banter_Shithri_Korgan","GLOBAL",1)~
  == BKORGA25
  @1110001 /* Serves him right, Sembian bastard! */
  =
  @1110002 /* But wait... I thought ye was the bosun? */
  == B6WSHI25
  @1110003 /* *gulp* That's jus' one merit o' brainin' one. Ye get ‘is job. */
EXIT


//
// Mazzy
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Mazzy")
  See("6WSHITHRI")
  CombatCounter(0)
  Global("6W#tob_banter_Shithri_Mazzy","GLOBAL",0)
~ THEN BMAZZY25 6W#tob_banter_shithri_mazzy_0
  @1120000 /* I have been watching you, Shithri. Very closely. */
  DO ~SetGlobal("6W#banter_Shithri_Mazzy","GLOBAL",1)~
  == B6WSHI25
  @1120001 /* Oh, did ye? */
  == BMAZZY25
  @1120002 /* Yes, I did. I while I do not approve of many your actions, I feel compelled to ask you something. Or perhaps "request" might be a better word. */
  == B6WSHI25
  @1120003 /* *gulp* Do speak, me matey. */
  == BMAZZY25
  @1120004 /* Shithri. I ask you of you to abandon your pirate ways. */
  == B6WSHI25
  @1120005 /* Wha'? Like... become Amnian privateer? */
  == BMAZZY25
  @1120006 /* No. To abandon it completely. */
  == B6WSHI25
  @1120007 /* Har har! Ye do 'ave some sense o' humor aft all, yarrr! */
  == BMAZZY25
  @1120008 /* Shithri. I'm serious. */
  == B6WSHI25
  @1120009 /* Me matey. I be goin' off account when ye abandon yer paladin thingy. */
  == BMAZZY25
  @1120010 /* But... */
  =
  @1120011 /* *sigh* "No" it is, then. */
EXIT


//
// Nalia
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Nalia")
  See("6WSHITHRI")
  CombatCounter(0)
  Global("6W#tob_banter_Shithri_Nalia","GLOBAL",0)
~ THEN BNALIA25 6W#tob_banter_shithri_nalia_0
  @1130000 /* I was wondering... */
  DO ~
    SetGlobal("6W#tob_banter_Shithri_Nalia","GLOBAL",1)
    SetGlobal("6W#Shithri_NotChult","GLOBAL",3)
  ~
  == B6WSHI25
  @1130001 /* Aye, oh great noblewomyn? */
  == BNALIA25
  @1130002 /* You mentioned your uncle who fought in the war in another country. But what we're doing now is also ending a war. Just as great as that one if not greater. */
  =
  @1130003 /* If you came back home, your people would welcome you as a hero. One worthy of greatest respect. */
  == B6WSHI25
  @1130004 /* They... may. Aye. */
  == BNALIA25
  @1130005 /* Will you come back then? */
  == B6WSHI25
  @1130006 /* Mayhaps. */
  == BNALIA25
  @1130007 /* Think about it. */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Nalia")
  See("Nalia")
  CombatCounter(0)
  Global("6W#tob_banter_Shithri_Nalia","GLOBAL",1)
~ THEN B6WSHI25 6W#tob_banter_shithri_nalia_1
  @1130100 /* *gulp* Ye different. */
  DO ~SetGlobal("6W#tob_banter_Shithri_Nalia","GLOBAL",2)~
  == BNALIA25
  @1130101 /* Of course. I've grown more powerful. I'm an archmage now. */
  == B6WSHI25
  @1130102 /* I nah mean yer wizard thingy. Ye nah sighin' o'er fate o' the poor. Ye just take what ye want. */
  =
  @1130103 /* *gulp* Like a pirate. */
  == BNALIA25
  @1130104 /* Are you saying we are not so different? */
  == B6WSHI25
  @1130105 /* Nay. I still be prettier. */
EXIT

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Nalia")
  See("6WSHITHRI")
  CombatCounter(0)
  Global("6W#tob_banter_Shithri_Nalia","GLOBAL",2)
~ THEN BNALIA25 6W#tob_banter_shithri_nalia_2
  @1130200 /* Shithri? I wanted to ask you something. */
  DO ~SetGlobal("6W#tob_banter_Shithri_Nalia","GLOBAL",3)~
  == B6WSHI25
  @1130201 /* Secret o' me peasant beauty? Mud o' the streets, I tell ye! */
  == BNALIA25
  @1130202 /* Almost. About the Zentilar. The army your uncle served in. */
  == B6WSHI25
  @1130203 /* Ho, what a great army 'tis! I remember the day he left. Wit' that long-sparred axe. His face covered in red paint fittin' a warrior. His hair pinned-up. */
  =
  @1130204 /* "I go", says he. "And no womyn shall cut me hair. Until I come back. Victorious" */
  == BNALIA25
  @1130205 /* And did he? */
  == B6WSHI25
  @1130206 /* He died the most glorious o' deaths: with his hair long. */
  == BNALIA25
  @1130207 /* Don't you regret you didn't go with him? Maybe then... */
  == B6WSHI25
  @1130208 /* Avast, lassie. It won't bring him back. */
  == BNALIA25
  @1130209 /* I know but if I... I mean, if you... */
  == B6WSHI25
  @1130210 /* Draught? */
  == BNALIA25
  @1130211 /* Yes. I could use that. */
EXIT


//
// Valygar
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Valygar")
  See("6WSHITHRI")
  CombatCounter(0)
  Global("6W#tob_banter_Shithri_Valygar","GLOBAL",0)
~ THEN BVALYG25 6W#tob_banter_shithri_valyga_1
  @1140000 /* You're different from other half-orcs. */
  DO ~SetGlobal("6W#tob_banter_Shithri_Valygar","GLOBAL",1)~
  == B6WSHI25
  @1140001 /* Mus' be the ears. */
  == BVALYG25
  @1140002 /* Your kind isn't treated well here. But for Purskul maybe. Yet you seem unaffected. */
  == B6WSHI25
  @1140003 /* I be Zentish. It be different there. */
  == BVALYG25
  @1140004 /* Better? */
  == B6WSHI25
  @1140005 /* ...different. */
EXIT


//
// Sarevok
//

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Sarevok")
  See("6WSHITHRI")
  CombatCounter(0)
  Global("6W#tob_banter_Shithri_Sarevok","GLOBAL",0)
~ THEN BSAREV25 6W#tob_banter_shithri_sarevok_0
  @1160000 /* Won't you offer me a drink, girl? */
  DO ~SetGlobal("6W#tob_banter_Shithri_Sarevok","GLOBAL",1)~
  == B6WSHI25
  @1160001 /* Dead men tell no tales, yarrr. */
  == BSAREV25
  @1160002 /* And yet here I am, asking you for a draught. */
  == B6WSHI25
  @1160003 /* Like fish, dead should be seen, nah heard. Swab hears fish out - he prolly got mad. */
  =
  @1160004 /* I nah be mad. */
  == BSAREV25
  @1160005 /* Aren't you? I surely heard you used to talk to ships. */
  == B6WSHI25
  @1160006 /* Ships 'ave souls. */
  == BSAREV25
  @1160007 /* So do I. */
  == B6WSHI25
  @1160008 /* Listen ye natterin' black goner. I nah be wastin' me grog o'er some thirsty ghost who forgot he shall only be drinki' in hell wit' the devils. */
  == BSAREV25
  @1160009 /* Did my eyes fool me or did I just see you talking to a deadman? */
  == B6WSHI25
  @1160010 /* Aye. Talkin' t' him, nah hearin' him out. Ye nah as cunnin' as ye think. */
  == BSAREV25
  @1160011 /* Did you just answer a deadman's question? */
  == B6WSHI25
  @1160012 /* ... */
  =
  @1160013 /* *gulp* (Blimey! Wha' I be ravin' t' myself... 'tis delirium yet?) */
EXIT


//
// Dorn
//

/********************/
/*     fight 1      */
/********************/

// before the fight

APPEND BDORN25
  IF ~
    IfValidForPartyDialogue("6WSHITHRI")
    IfValidForPartyDialogue("Dorn")
    See("6WSHITHRI")
    CombatCounter(0)
    Global("6W#tob_banter_Shithri_Dorn","GLOBAL",0)
  ~ THEN BEGIN 6W#tob_banter_shithri_dorn_0
    SAY @1170000 /* Draw your weapon, woman! */

    IF ~~ THEN
      REPLY @1170001 /* Leave her be, Dorn. */
      DO ~SetGlobal("6W#tob_banter_Shithri_Dorn","GLOBAL",1)~
      EXTERN ~B6WSHI25~ 6W#tob_banter_shithri_dorn_0__leave_her_be

    IF ~~ THEN
      REPLY @1170002 /* Dorn? What is the meaning of this? */
      DO ~SetGlobal("6W#tob_banter_Shithri_Dorn","GLOBAL",1)~
      GOTO 6W#tob_banter_shithri_dorn_0__test

    IF ~
      OR(2)
        Global("DornRomanceActive","GLOBAL",2)
        CheckStatGT(Player1,12,CHR)
    ~ THEN
      REPLY @1170003 /* Treason then, is it? */
      DO ~SetGlobal("6W#tob_banter_Shithri_Dorn","GLOBAL",1)~
      GOTO 6W#tob_banter_shithri_dorn_0__treason_ok

    IF ~
      !Global("DornRomanceActive","GLOBAL",2)
      CheckStatLT(Player1,13,CHR)
    ~ THEN
      REPLY @1170003 /* Treason then, is it? */
      DO ~SetGlobal("6W#tob_banter_Shithri_Dorn","GLOBAL",1)~
      GOTO 6W#tob_banter_shithri_dorn_0__treason_nah
  END
END

APPEND B6WSHI25
  IF ~~ THEN BEGIN 6W#tob_banter_shithri_dorn_0__leave_her_be
    SAY @1170010 /* 'tis not yer thing, capt'n. It be over handsomely. */

    IF ~
      OR(2)
        Global("DornRomanceActive","GLOBAL",2)
        CheckStatGT(Player1,12,CHR)
    ~ THEN
      REPLY @1170011 /* It is very much my thing. I will not allow it. */
      EXTERN ~BDORN25~ 6W#tob_banter_shithri_dorn_0__dorn_ok

    IF ~
      !Global("DornRomanceActive","GLOBAL",2)
      CheckStatLT(Player1,13,CHR)
    ~ THEN
      REPLY @1170011 /* It is very much my thing. I will not allow it. */
      EXTERN ~BDORN25~ 6W#tob_banter_shithri_dorn_0__dorn_nah

    IF ~~ THEN
      REPLY @1170012 /* Do as you will then. */
      DO ~SetGlobal("6W#Shithri_Dorn__fight","GLOBAL",1)~
      EXIT

    IF ~~ THEN
      REPLY @1170013 /* Don't take too long. We have work to do. */
      GOTO 6W#tob_banter_shithri_dorn_0__nah_too_long
  END
  IF ~~ THEN BEGIN 6W#tob_banter_shithri_dorn_0__nah_too_long
    SAY @1170019 /* Aye aye, capt'n. */
    IF ~~ THEN
      DO ~SetGlobal("6W#Shithri_Dorn__fight","GLOBAL",1)~
      EXIT
  END
END

CHAIN BDORN25 6W#tob_banter_shithri_dorn_0__dorn_ok
  @1170014 /* Very well then. I will listen. For now. */
  == B6WSHI25
  @1170015 /* A capt'n order is a capt'n order, aye, me matey? */
  == BDORN25
  @1170016 /* Let's at least have a drink, shall we? */
  == B6WSHI25
  @1170017 /* Ho! Now ye talkin'. */
EXIT

APPEND BDORN25
  IF ~~ THEN BEGIN 6W#tob_banter_shithri_dorn_0__dorn_nah
    SAY @1170018 /* You think you can order me around, <CHARNAME>?! */
    IF ~~ THEN
      DO ~SetGlobal("6W#Shithri_Dorn__fight","GLOBAL",1)~
      EXIT
  END
END

APPEND BDORN25
  IF ~~ THEN BEGIN 6W#tob_banter_shithri_dorn_0__test
    SAY @1170030 /* It's a test. You shall see. */

    IF ~
      OR(2)
        Global("DornRomanceActive","GLOBAL",2)
        CheckStatGT(Player1,12,CHR)
    ~ THEN
      REPLY @1170031 /* I will not allow it. */
      GOTO 6W#tob_banter_shithri_dorn_0__dorn_ok

    IF ~
      !Global("DornRomanceActive","GLOBAL",2)
      CheckStatLT(Player1,13,CHR)
    ~ THEN
      REPLY @1170031 /* I will not allow it. */
      GOTO 6W#tob_banter_shithri_dorn_0__dorn_nah

    IF ~~ THEN
      REPLY @1170012 /* Do as you will then. */
      DO ~SetGlobal("6W#Shithri_Dorn__fight","GLOBAL",1)~
      EXIT

    IF ~~ THEN
      REPLY @1170013 /* Don't take too long. We have work to do. */
      EXTERN ~B6WSHI25~ 6W#tob_banter_shithri_dorn_0__nah_too_long
  END
END

APPEND BDORN25
  IF ~~ THEN BEGIN 6W#tob_banter_shithri_dorn_0__treason_ok
    SAY @1170040 /* Me, treason? Don't be ridiculous, <CHARNAME>. */
    IF ~~ THEN
      GOTO 6W#tob_banter_shithri_dorn_0__test
  END

  IF ~~ THEN BEGIN 6W#tob_banter_shithri_dorn_0__treason_nah
    SAY @1170041 /* Watch your tone, <CHARNAME>. You may regret those words. */

    IF ~~ THEN
      REPLY @1170042 /* It is what it is. */
      GOTO 6W#tob_banter_shithri_dorn_0__dorn_furious

    IF ~~ THEN
      REPLY @1170043 /* What is it then? */
      GOTO 6W#tob_banter_shithri_dorn_0__test
  END

  IF ~~ THEN BEGIN 6W#tob_banter_shithri_dorn_0__dorn_furious
    SAY @1170044 /* I have warned you. */

    IF ~~ THEN
      DO ~
        LeaveParty()
        SetLeavePartyDialogueFile()
        ChangeAIScript("",DEFAULT)
        Enemy()
      ~
      EXIT
  END
END


// after the fight

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Dorn")
  See("6WSHITHRI")
  Global("6W#Shithri_Dorn__fight","GLOBAL",2)
~ THEN BDORN25 6W#tob_banter_shithri_dorn_0__after
  @1170020 /* As I thought. You didn't hesitate to use an opening. And you've never came to my aid in battle. You know I have no need for that. */
  DO ~SetGlobal("6W#Shithri_Dorn__fight","GLOBAL",3)~
  =
  @1170021 /* You have my respect, pirate. */
  == B6WSHI25
  @1170022 /* Let's seal 'tis wit' a draught or two. */
  == BDORN25
  @1170023 /* Gladly. */
EXIT


/********************/
/*     fight 2      */
/********************/

// before the fight

APPEND B6WSHI25
  IF ~
    IfValidForPartyDialogue("6WSHITHRI")
    IfValidForPartyDialogue("Dorn")
    See("Dorn")
    CombatCounter(0)
    Global("6W#tob_banter_Shithri_Dorn","GLOBAL",1)
    Global("6W#Shithri_strengthen","GLOBAL",1)
  ~ THEN BEGIN 6W#tob_banter_shithri_dorn_1
    SAY @1170100 /* Ahoy, me matey! Care fer a lil sparrin'? */
    IF ~~ THEN
      DO ~SetGlobal("6W#tob_banter_Shithri_Dorn","GLOBAL",2)~
      EXTERN ~BDORN25~  6W#tob_banter_shithri_dorn_1__dorn
  END
END

APPEND BDORN25
  IF ~~ THEN BEGIN 6W#tob_banter_shithri_dorn_1__dorn
    SAY @1170101 /* I thought you'll ne'er ask. Prepare yourself! */

    IF ~~ THEN
      REPLY @1170102 /* Hey, we don't have time for this! */
      EXTERN ~B6WSHI25~ 6W#tob_banter_shithri_dorn_1__smartly

    IF ~~ THEN
      REPLY @1170103 /* Just to make sure: you'll be done real quick? */
      EXTERN ~B6WSHI25~ 6W#tob_banter_shithri_dorn_1__smartly

    IF ~~ THEN
      REPLY @1170104 /* Two half-orcs sparring? I will gladly watch that! */
      EXTERN ~B6WSHI25~ 6W#tob_banter_shithri_dorn_1__good
  END
END

APPEND B6WSHI25
  IF ~~ THEN BEGIN 6W#tob_banter_shithri_dorn_1__smartly
    SAY @1170110 /* It be real smartly, promise ye. */

    IF ~~ THEN
      REPLY @1170111 /* Good. We can't waste time. */
      GOTO 6W#tob_banter_shithri_dorn_1__good

    IF ~~ THEN
      REPLY @1170112 /* No. We have stuff to do. */
      GOTO 6W#tob_banter_shithri_dorn_1__swab
  END

  IF ~~ THEN BEGIN 6W#tob_banter_shithri_dorn_1__swab
    SAY @1170140 /* (what a swab...) */
    IF ~~ THEN
      EXIT
  END
END

CHAIN B6WSHI25 6W#tob_banter_shithri_dorn_1__good
  @1170120 /* Nah armor, nah magic... nah weapons. */
  == BDORN25
  @1170121 /* Ha! I like the sound of that! */
  DO ~
    SetGlobal("6W#Shithri_Dorn_sparring","GLOBAL",1)
    ClearAllActions()
    StartCutSceneMode()
    FadeToColor([20.0],0)
    Wait(3)
    FadeFromColor([20.0],0)
    Wait(2)
    SmallWait(1)
    EndCutSceneMode()
    StartDialogNoSet("6WSHITHRI")
  ~
EXIT


// after the fight

CHAIN IF ~
  IfValidForPartyDialogue("6WSHITHRI")
  IfValidForPartyDialogue("Dorn")
  See("6WSHITHRI")
  Global("6W#Shithri_Dorn_sparring","GLOBAL",1)
~ THEN BDORN25 6W#tob_banter_shithri_dorn_1__after
  @1170130 /* Now THAT is the power befitting a half-orc! */
  == B6WSHI25
  @1170131 /* Yar har har! That be what ye say after takin' a beatin', me matey? */
  == BDORN25
  @1170132 /* Hardly a beating, but I admit you didn't make it easy for me. */
  == B6WSHI25
  @1170133 /* *smirks* */
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

APPEND B6WSHI25
  IF WEIGHT #0 ~
    IfValidForPartyDialog("6WSHITHRI")
    IfValidForPartyDialog("Hexxat")
    Global("6W#tob_banter_Shithri_Hexxat","GLOBAL",0)
    Global("6W#Shithri_Hexxat_starving","GLOBAL",3)
  ~ THEN BEGIN 6W#banter_shithri_hexxat_0
    SAY @1190000 /* Mmmmm... */

    IF ~NumInPartyGT(3)~ THEN
      DO ~
        SetGlobal("6W#tob_banter_Shithri_Hexxat","GLOBAL",1)
        SetGlobal("6W#Shithri_Hexxat_starving","GLOBAL",4)
      ~
      EXTERN ~BHEXXA25~ 6W#banter_shithri_hexxat_0__still_asleep_plural

    IF ~NumInPartyLT(4)~ THEN
      DO ~
        SetGlobal("6W#tob_banter_Shithri_Hexxat","GLOBAL",1)
        SetGlobal("6W#Shithri_Hexxat_starving","GLOBAL",4)
      ~
      EXTERN ~BHEXXA25~ 6W#banter_shithri_hexxat_0__still_asleep_singular
  END
END

APPEND BHEXXA25
  IF ~~ THEN BEGIN 6W#banter_shithri_hexxat_0__still_asleep_plural
    SAY @1190001 /* Try to be more quiet. They are still asleep. */

    IF ~~ THEN
      REPLY @1190003 /* Why, good morning to both of you! */
      GOTO 6W#banter_shithri_hexxat_0__good_morning

    IF ~~ THEN
      REPLY @1190004 /* Hexxat? What happened? And why... why is her neck... */
      GOTO 6W#banter_shithri_hexxat_0__neck

    IF ~~ THEN
      REPLY @1190005 /* I see you enjoyed some early breakfast already. */
      GOTO 6W#banter_shithri_hexxat_0__neck

    IF ~~ THEN
      REPLY @1190006 /* *pretend to still be asleep* */
      EXTERN ~B6WSHI25~ 6W#banter_shithri_hexxat_0__achy
  END

  IF ~~ THEN BEGIN 6W#banter_shithri_hexxat_0__still_asleep_singular
    SAY @1190002 /* Try to be more quiet. <CHARNAME> is still sleeping. */

    IF ~~ THEN
      REPLY @1190003 /* Why, good morning to both of you! */
      GOTO 6W#banter_shithri_hexxat_0__good_morning

    IF ~~ THEN
      REPLY @1190004 /* Hexxat? What happened? And why... why is her neck... */
      GOTO 6W#banter_shithri_hexxat_0__neck

    IF ~~ THEN
      REPLY @1190005 /* I see you enjoyed some early breakfast already. */
      GOTO 6W#banter_shithri_hexxat_0__neck

    IF ~~ THEN
      REPLY @1190006 /* *pretend to still be asleep* */
      EXTERN ~B6WSHI25~ 6W#banter_shithri_hexxat_0__achy
  END

  IF ~~ THEN BEGIN 6W#banter_shithri_hexxat_0__good_morning
    SAY @1190007 /* And to you, <CHARNAME>. */

    IF ~~ THEN
      REPLY @1190008 /* So... about Shithri's neck...? */
      GOTO 6W#banter_shithri_hexxat_0__neck

    IF ~~ THEN
      REPLY @1190009 /* Let's get going! */
      GOTO 6W#banter_shithri_hexxat_0__are_ye_alright
  END

  IF ~~ THEN BEGIN 6W#banter_shithri_hexxat_0__neck
    SAY @1190010 /* Look, <CHARNAME>, I can explain. */

    IF ~~ THEN
      EXTERN ~B6WSHI25~ 6W#banter_shithri_hexxat_0__nothin_to_explain
  END
END

APPEND B6WSHI25
  IF ~~ THEN BEGIN 6W#banter_shithri_hexxat_0__nothin_to_explain
    SAY @1190011 /* Thar be naught t' natter about! I be fine. 'n I offered. */

    IF ~~ THEN
      REPLY @1190012 /* It's still wrong. */
      GOTO 6W#banter_shithri_hexxat_0__matey

    IF ~~ THEN
      REPLY @1190013 /* Hmm. Good for her then, I guess? */
      EXTERN ~BHEXXA25~ 6W#banter_shithri_hexxat_0__very_much_so

    IF ~~ THEN
      REPLY @1190014 /* Nothing interesting then. Let's get going! */
      EXTERN ~BHEXXA25~ 6W#banter_shithri_hexxat_0__are_ye_alright
  END

  IF ~~ THEN BEGIN 6W#banter_shithri_hexxat_0__matey
    SAY @1190015 /* She may be vampire. But she be me matey. */

    IF ~~ THEN
      REPLY @1190016 /* You're right. She is a friend after all. */
      EXTERN ~BHEXXA25~ 6W#banter_shithri_hexxat_0__thank_you_pc

    IF ~~ THEN
      REPLY @1190017 /* She can restrain. */
      GOTO 6W#banter_shithri_hexxat_0__starving

    IF ~~ THEN
      REPLY @1190018 /* Did you lose your senses? You've let a VAMPIRE drink BLOOD?! */
      GOTO 6W#banter_shithri_hexxat_0__my_blood
  END

  IF ~~ THEN BEGIN 6W#banter_shithri_hexxat_0__starving
    SAY @1190030 /* Oh, can she? What do YE know o' hunger, huh? Ye ever be a castaway, huh?! Ever starved on a lone island, wondering if any ship come fer yer rescue, huh?! */

    IF ~~ THEN
      GOTO 6W#banter_shithri_hexxat_0__maroon
  END

  IF ~~ THEN BEGIN 6W#banter_shithri_hexxat_0__my_blood
    SAY @1190031 /* Me blood. Me choice. */

    IF ~~ THEN
      GOTO 6W#banter_shithri_hexxat_0__maroon
  END

  IF ~~ THEN BEGIN 6W#banter_shithri_hexxat_0__maroon
    SAY @1190032 /* Ye know wha'? If ye nah like it, jus' leave I be. Better yet: maroon I somewhere nasty. I dare ye. */

    //TODO: Shithri relationship penalty or sth?
    IF ~~ THEN
      EXIT
  END
END

APPEND BHEXXA25
  IF ~~ THEN BEGIN 6W#banter_shithri_hexxat_0__thank_you_pc
    SAY @1190020 /* Thank you, <CHARNAME>. */

    IF ~~ THEN
      GOTO 6W#banter_shithri_hexxat_0__are_ye_alright
  END

  IF ~~ THEN BEGIN 6W#banter_shithri_hexxat_0__very_much_so
    SAY @1190021 /* Very much so. */

    IF ~~ THEN
      GOTO 6W#banter_shithri_hexxat_0__are_ye_alright
  END

  IF ~~ THEN BEGIN 6W#banter_shithri_hexxat_0__are_ye_alright
    SAY @1190022 /* Shithri, are you alright? You look... pale. */

    IF ~~ THEN
      EXTERN ~B6WSHI25~ 6W#banter_shithri_hexxat_0__jestin
  END
END

CHAIN B6WSHI25 6W#banter_shithri_hexxat_0__achy
  @1190040 /* ...I thought it be achy. */
  == BHEXXA25
  @1190041 /* I was trying my best. Are you alright? You look... pale. */
END B6WSHI25 6W#banter_shithri_hexxat_0__jestin

CHAIN B6WSHI25 6W#banter_shithri_hexxat_0__jestin
  @1190023 /* Ye jestin'? Such strong, swashin' swabs like I be always alright. Let us goin'. */
  == BHEXXA25
  @1190024 /* Shithri? */
  == B6WSHI25
  @1190025 /* Aye? */
  == BHEXXA25
  @1190026 /* Thank you. */
EXIT

