function doOldCave():void{
	var chance:int = eventSelect("Old Cave");
	if (chance == 1){
		textL("Growing on the wall of the cave, you find a small, odd looking mushroom. It has a red cap speckled with a few large white dots. You pluck it.");
		itemAdd(212);
		hrs = 2;
		doEnd();
	}		
	else if (chance == 2){
		if (percent() <= 50){
			textL("Strangely, there's a small ornate coffee table sitting before the entrance to the cave. Looking around, you don't see a single soul, there seems to be no logical reason for it to be there. Moving closer, you notice a slice of cake sitting upon it. The label reads \"EAT ME\".\r\rWill you eat it?");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6) {
					tallness += 2;
					textL("You pick up the cake and lift it to your lips. Barely a nibble and it's already gone, hardly enough for even a full swallow. It was somewhat sweet, like a cross between chocolate and the number 3, which is rather ludicrous when you think about it. Wondering why it should have been eaten at all, you attempt to check the table for any sort of shenanigans. You begin to bend down to reach it, only to find yourself bending lower and lower with the table seemingly further and further away. It seems to be shrinking beside you, but then again so is everything else at an increasingly rapid rate...\r\rVery quickly, you realize that you're the one who's growing.");
					if (ment < 30) {
						textLP(" Your "+currentClothes()+" rapidly grows tighter and tighter, squeezing your body until you can hardly breathe. Tearing can be heard along the stitching, flesh from your "+boobDesc()+" chest squeezing through the newly torn holes and a painful wedgie of ripped cloth slips into your "+buttDesc()+" rump, your cheeks slapped by a light breeze. Your "+hipDesc()+" hips soon relieve your ass of the torment as they stretch the waist of your "+clothesBottom()+" to the point to where it barely hangs around your body by thin strands, the rest of the garment flapping in the wind and no longer concealing your genitals. Your "+boobDesc()+" chest follows suit, growing so tight until you can hardly breath until your "+clothesTop()+" bursts into shreds around you, your "+nipDesc()+"nipples perking freely in the cooler air through what's left of your outfit.");
						changeTop(-1);
						changeBot(-1);
					}
					else {
						textLP(" Your "+currentClothes()+" rapidly grows tighter and tighter, squeezing your body until you can hardly breath. With your quick wit, however, you think fast enough to remove your outfit to prevent yourself from being crushed. You're just in time to slip "+pullUD(1)+" your "+clothesTop()+" before your "+boobDesc()+" chest plows through it and step out of your "+clothesBottom()+" before your "+buttDesc()+" tush shone through the backside. Growing to fast to lay them neatly on the ground, however, you simply let them fall idly, leaving you with a naked bosom and your genitals being frisked by a slight breeze.");
					}
					if (tallness <= 18) {
						textLP(" By the time you finish growing, you're... just about the size of a particularly tall, but not terribly giant, person. You take a few minutes enjoying the feeling of being big, able to actually see over the grass and spot a few trees in the distance, but it doesn't take long before you find yourself dwindling back to your normal diminutive stature, though with an added couple of inches.");
						if (ment >= 30) { textLP(" You grab your clothes, finding them to be a little small for you, but they're otherwise fine.");	}
						textLP(" Then you head back to Firmshaft, slightly confused by the whole experience...");
						hrs = 2;
						doEnd();
					}
					else {
						textLP(" By the time you finish growing, you tower over the hill that the cave resides in. You can see far into the distance and you can feel a great draft in your loins.");
						if (gender == 1 || (gender == 3 && percent() <= 50)){
							var getCum:int = cumAmount();
							if (cockSize*cockSizeMod > 400)	{
								textLP(" The wind across your "+cockDesc()+" cock"+plural(1)+" feel"+plural(3)+" rather... nice, to say the least. And considering "+plural(5)+" rather large increase in size, that feeling escalates exponentially. A strange heat mixes with the extra-sensual experience, clouding your mind with the need for release. Quite soon you find yourself barely able to see the "+plural(5)+" tip"+plural(1)+" as "+plural(11)+" grow"+plural(3)+" off into the distance. Quickly, you find yourself falling over your relatively "+cockDesc()+" girth"+plural(1)+", the ground rumbling around you as you connect, while you feel "+plural(9)+" drag across the open fields, plowing through forests, and who knows what else you manage to destroy.");
								doNext();
								doListen = function():void{
									textL("The exhilirating sensation of your massive size compared to everything around you excites you even further. Your "+legDesc(10)+" dig into the ground, carving out holes, and thrust your erection"+plural(1)+" forward. You can hear the sounds of wood cracking beneath your massive stiffness in the distance and the air fills with birds flying away to avoid your cock-head"+plural(1)+". All the little bushes and trees provide a rather unique sensation, their leaves wrapping about your underside"+plural(1)+" en masse. Your voice echoes into the horizon as you let out a loud howl, rapidly coming to climax.");
									if (getCum > 10000)	{ textLP(" More crashing can be heard, along with a roar, as spunk erupts from the other end, flooding the far-off land and rushing into its own river!");	}
									else { textLP(" You cum gushes from the other end, raining down around the far-off terrain like some sort of lewd weather."); }
									textLP("\r\rYour heavy breathing blows about grass about beneath you as you come to your senses. You can feel your cock"+plural(1)+" begin to drag across the grass once more, though not by your own power. Looking up, you can see "+plural(11)+" shrinking back towards you. However, it is the devastation that lies beyond that truly catches your eye. Despite all the damage you did, you can see nature shifting around, like the planet itself were healing, sucking in your cum and returning the land to a more healthy state. Though, before you can get a good look, you find yourself finally shrink back to your normal size, plus a couple inches. Too far to travel into the wilderness, it seems you'll have to leave the mystery for later.");
									textLP("\r\rRather eager to get away, you run off to Firmshaft, getting a slight bit of vertigo along the way from the extra inches you'll have to get used to.");
									if (ment >= 30)	{ textLP(" Especially as you re-don your now too-small clothes, feeling the outfit hug your body tightly and definitely needing some readjusting when you get back to town..."); }
									doLust(-Math.floor(sen/2), 2, 1);
									hrs = 3;
									doEnd();
								}
							}
							else {
								textLP(" The wind across your "+cockDesc()+" cock"+plural(1)+" feel"+plural(3)+" rather... nice, to say the least. And considering "+plural(5)+" rather large increase in size, that feeling escalates exponentially. A strange heat mixes with the extra-sensual experience, clouding your mind with the need for release. You soon find yourself rather stiff, and as you look down at "+plural(11)+", your eyes spot the cave below. From this new perspective, you begin to think the hole in the ground is a bit... lewd?");
								doNext();
								doListen = function():void{
									textL("The thought doesn't make it a second time through your mind before you find yourself crashing to your "+legDesc(6)+", the ground rumbling as you touch down. You collapse over the hill, thrusting "+oneYour(1)+" cock"+plural(1)+" into the natural glory hole. And much to your surprise, the internal walls of the cave seem to be coated with a slick substance, lubricating you through its dark interior. With your giant size, the rocks feel like mere bumps, more pleasurable than you could have imagined, and the ground soon shakes again and again as you hump into the hill.\r\rRather quickly, you let out a loud shout that echoes across the fields.");
									if (getCum > 10000) { textLP(" You can feel your spunk churn and gush around you. Though some of it spits back out across your thighs, painting the mouth of the cave, most of it amazingly guzzles deeper into the ground. So much so that you could swear you hear a small \"EEK!\" cry out from within, though your brain is too foggy to be sure."); }
									else { textLP(" You can hear your spunk splatter about within and seems to run away from your cock-tip, somewhere deeper into the ground. With you brain fuzzy from orgasm, you're not sure if the tiny \"Eehehe!\" you hear is real or just your ears ringing from the slight breeze."); }
									textLP(" Either way, you find yourself slipping back down the hill, shrinking and falling back before the cave, almost returning to your original height. It's still far too dark to explore inside the cave to see where it all went, you can definitely smell the erotic odor that blows back out, some of your spunk still dripping in thick strands and webs from the mouth.");
									textLP("\r\rRather eager to get away, you run off to Firmshaft, getting a slight bit of vertigo along the way from the extra inches you'll have to get used to.");
									if (ment >= 30)	{ textLP(" Especially as you re-don your now too-small clothes, feeling the outfit hug your body tightly and definitely needing some readjusting when you get back to town..."); }
									doLust(-Math.floor(sen/2), 2, 1);
									hrs = 3;
									doEnd();
								}
							}							
						}
						else if (gender == 2 || gender == 3) {
							textLP(" The wind through your "+vulvaDesc()+" slit"+plural(2)+" feel"+plural(4)+" a bit... nice, to say the least. And considering "+plural(6)+" rather large increase in size, that feeling escalates exponentially. A strange heat mixes with the extra-sensual experience, clouding your mind with the need for release. Looking down at your swelling attributes your eyes focus on the cave below. From this new perspective, the hill looks rather like a rather... lewdly shaped saddle.");
							doNext();
							doListen = function():void{
								textL("The thought doesn't make it a second time through your mind before you find yourself turning around and crashing your "+buttDesc()+" rump down onto the hill with a rumble. Your "+legDesc(2)+" "+legVerb(5)+" it on either side, your "+clitDesc()+" clit"+plural(2)+" grinding against a protruding grassy mound that slides perfectly into your relatively "+vulvaDesc()+" lips. You can hear rocks crash to the floor of the cave within as your "+hipDesc()+" hips rock back and forth, making the ground quake beneath you. Your sensual fluids flood about the grass, making it perfectly slick for your needs.\r\rRather quickly, with all the extra sensitive area of your genitals humping an entire hill, you find yourself letting out a shout that echoes across the fields, your body trembling with orgasm.");
								if (cockTotal > 1) 	{
									textLP(" Your proportionately "+cockDesc()+" cock"+plural(1)+" bounce"+plural(3)+" up and down as spunk gushes from the tip, flinging about the landscape and forming large puddles.");
									cumAmount();
								}
								textLP(" Yet, you don't have much time to enjoy your quivering state before you find yourself beginning to shrink, sliding down one side of the hill as you're caught off balance. You become slick with your own lubrication as you roll through the messy grass and splash down in your own puddle. Picking yourself up, the slime sticking to your body in webs and strands, you take a moment to flick off some of the goop before heading back to the cave.");
								if (pregCheck(1) && percent() <= 60 && vagSize*vagSizeMod > 56) {
									textLP(" And you're quite surprised to find you're sporting a much larger belly. You have no idea how it could have possibly happened, but your mind was rather far-off while you were up there. Placing your hand on it, you can feel a body writhe about, squirming inside of you, and in no rush to come out it seems. It seems like you got pregnant quite rapidly?");
									i = 0;
									while (i < pregArray.length) {
										if (pregArray[i] == false) { 
											pregArray[i] = true; 
											if (percent() <= 50) { pregArray[i+1] = 1001; }
											else { pregArray[i+1] = 1002; }
											pregArray[i+3] = 220;
											i = pregArray.length;
										}
										i += 5;
									}
									doLust(-Math.floor(sen/2), 2, 1, 2);
								}
								else { doLust(-Math.floor(sen/2), 2, 1, 2); }
								textLP("\r\rRather eager to get away, you run off to Firmshaft, getting a slight bit of vertigo along the way from the extra inches you'll have to get used to.");
								if (ment >= 30)	{ textLP(" Especially as you re-don your now too-small clothes, feeling the outfit hug your body tightly and definitely needing some readjusting when you get back to town..."); }
								hrs = 3;
								doEnd();
							}
						}
						else { 
							textLP(" Though, with nothing in your loins to speak of, it simply makes you giggle a little as it tickles you. You stand there for a moment, in awe of the world around you, your mind running through all the possibilities of things you could do with such a massive size!");
							doNext();
							doListen = function():void{
								textL("However, you feel a sudden warmth flush through you and with a slight sparking sound and you find yourself shrinking instead. Soon you're nearly as tall as you were before and slightly more aroused as well. What the heck just happened?...");
								doLust(15, 0);
								textLP("\r\rRather eager to get away, you run off to Firmshaft, getting a slight bit of vertigo along the way from the extra inches you'll have to get used to.");
								if (ment >= 30)	{ textLP(" Especially as you re-don your now too-small clothes, feeling the outfit hug your body tightly and definitely needing some readjusting when you get back to town..."); }
								hrs = 3;
								doEnd();
							}
						}
					}
				}
				else {
					textL("Wary of free cake that desires to be eaten, you ignore it and quickly make your way back to Firmshaft.");
					hrs = 1;
					doEnd();
				}
			}
		}
		else {
			textL("Strangely, there's a small ornate coffee table sitting before the entrance to the cave. Looking around, you don't see a single soul, there seems to be no logical reason for it to be there. Moving closer, you notice a lone bottle sitting upon it. The label reads \"DRINK ME\".\r\rWill you drink it?");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6) {
					textL("You pick up the bottle and lift it to your lips. Only a few sips and it's already empty, barely enough for even a full gulp. It hardly had any taste to it, the closest flavor you can relate it to is 'purple', which hardly makes any sense at all when you think about it. Wondering why it should have been drunk at all, you place the empty bottle back on the table. Which proves to be more difficult than you would have imagined as the table seems start growing beside you. As well as everything else around you at an increasingly rapid rate...\r\rVery quickly, you realize that you're the one who's shrinking.");
					if (attireTop == attireBot)	{ textLP(" Your "+clothesTop()+" plummets down your "+boobDesc()+" chest. You catch it with your hands, but soon the material bundles over your arms that you can no longer maintain your hold. When you let go, the "+clothesTop()+" simply sits there, piled around you."); }
					else { textLP(" Your "+clothesTop()+" begins to plummet down your "+boobDesc()+" chest, while your "+clothesBottom()+" slips from your "+hipDesc()+" hips. One hand flails to catch your "+clothesTop()+" while the other heads for the "+clothesBottom()+", but neither is successful. For a moment your "+boobDesc()+" chest and your nether region are both exposed to the fresh air as your outfit falls around you, but you quickly find yourself falling back into the fabric, a pile around you."); }
					textLP("\r\rYou climb out from your overgrown clothes, completely nude. Though you doubt anybody could see you if they passed by, considering you're now a fraction of the height you were before, maybe a whole "+Math.floor(tallness/12)+" inches tall.");
					tallness -= 2;
					doNext();
					doListen = function():void{
						chance = percent();
						if (chance <= 40) {
							textL("Unsure what to do in your miniscule state, you don't venture far from your forgone attire. However, it doesn't seem like you need to go anywhere to run into trouble, as you hear something thump its way towards you.\r\rLong ears bob upon a humanoid head and white fur covers much of its body. Long feet bounce upon the ground as it hops towards you. With a poofy tail and a button nose that twitches, it seems to be a rabbit-like person that is as naked as you are. The fuzzy swinging testicles makes it quite obvious what gender he is...\r\rHe spots you quickly, as though he had known you were there. With a grin, his nose and long whiskers twitch, and a rather mishievous twinkle lights in his eyes. Probably two feet high ");
							if (tallness <= 216) { textLP(" he towers over you, pleased with the result.");	}
							if (tallness > 216) { textLP(" you seem to still be on par with him, though he seems pleased you're much more manageable than before.");	}
							doNext();
							doListen = function():void{
								enemyID = 304;
								currentState = 2;
								enemyBaseStats();
								eMaxHP = eHP;
								doBattle();
							}
						}
						if (chance > 40 && chance <= 80) {
							textL("Unsure what to do in your miniscule state, you don't venture far from your forgone attire. However, it doesn't seem like you need to go anywhere to run into trouble, as you hear something thump its way towards you.\r\rLong ears bob upon a humanoid head and white fur covers much of its body. Long feet bounce upon the ground as it hops towards you. With a poofy tail and a button nose that twitches, it seems to be a rabbit-like person that is as naked as you are. The wobbling tits and thick labia makes it quite obvious what gender she is...\r\rShe spots you quickly, as though she had known you were there. With a grin, her nose and long whiskers twitch, and a rather mishievous twinkle lights in her eyes. Probably two feet high ");
							if (tallness <= 216) { textLP(" she towers over you, pleased with the result.");	}
							if (tallness > 216) { textLP(" you seem to still be on par with her, though she seems pleased you're much more manageable than before.");	}
							doNext();
							doListen = function():void{
								enemyID = 305;
								currentState = 2;
								enemyBaseStats();
								eMaxHP = eHP;
								doBattle();
							}
						}
						if (chance > 80) {
							textL("With the extra-tall grass barring your path behind you, you decide to look around a bit. So small, you're not terribly worried about people spotting your indecency. However, you are careful of the ants and other 'large' creatures that skitter by.\r\rFortunately, none pay you any heed and you manage to make your way to the mouth of the cave. It's still as dark and dank as before, so you don't think to venture inside. Yet, from your shortened vantage point, you notice a small door in the wall at the mouth of the cave. You head towards it, curious as to its existence. How could you have not noticed it when it was bigger?\r\rThe thought doesn't seem to matter, though. When you attempt to open the door, it turns out to be locked. And judging by the keyhole beneath the knob, it would require a rather small key, which you don't have. Nor does this world, yet.\r\rWith a shrug, you turn back towards your pile of clothes. Along the way, your surroundings seem to grow smaller and smaller as you grow taller and taller. By the time you reach the pile, you seem to be back to your normal size, the bottle's effects having worn off.\r\rRedonning your clothing before heading back to Firmshaft, you notice they seem a bit baggier than before... It seems you're still missing a couple inches in height.");
							hrs = 2;
							doEnd();
						}
					}
				}
				else {
					textL("Wary of strange liquids that desire to be drunk, you ignore it and quickly make your way back to Firmshaft.");
					hrs = 1;
					doEnd();
				}
			}
		}
	}
	else if (chance == 3){
		if (checkItem(254)) {
			textL("Normally this cave is too dark to go inside. However, you have a lantern that can provide enough light to venture within. Would you like to go inside?");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6) {
					currentDungeon = 1001;
					inDungeon = true;
					doOldCaveDescent();					
				}
				else {
					textL("Deciding not to go inside, you merely wander around the entrance of the cave. However, an odd scent fills your nostrils and makes you feel a bit randy...");
					stats(0,-1,2,0);
					doLust(5, 0);
					hrs = 1;
					doEnd();
				}
			}
		}
		else {
			textL("Too dark to go inside, you merely wander around the entrance of the cave. However, an odd scent fills your nostrils and makes you feel a bit randy...");
			stats(0,-1,2,0);
			doLust(5, 0);
			hrs = 1;
			doEnd();
		}
	}
}