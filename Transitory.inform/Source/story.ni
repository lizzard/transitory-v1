"Transitory" by lizzard

Include Transit System by Emily Short.
Include Basic Screen Effects by Emily Short.

Use MAX_STATIC_DATA of 500000.

[Include Exit Lister by Eric Eve.]

Use scoring.


Part 1 - Some beginning stuff

When play begins: 
	now the command prompt is "[time of day] >" ;

Rule for constructing the status line:
	fill status bar with Table of Fancy Status; 
	rule succeeds.
	
Table of Fancy Status
left 	central 	right 
" [location]"	"[number of visited rooms]/[number of rooms] locations"	"Score: [score]"

The maximum score is 200.

[some general rules, not sure where to put them yet]

An artwork is a kind of thing.

Divisibility relates a number (called N) to a number (called M) when the remainder after dividing M by N is 0. The verb to divide means the divisibility relation. The verb to be a factor of means the divisibility relation. 

A boy is a kind of man. A girl is a kind of woman.
A person is usually neuter.


After reading a command:
	if the player’s command matches “take all”:
		replace the player’s command with “abstain”.
	

Understand "abstain" as abstaining. 

Abstaining is an action applying to nothing. 
	
Carry out abstaining:
	say "Best to take only what you need.";
	stop the action.



[start of game locations - the traveller's house - move this to Mission 24th later]

Home Base is north of Osage Alley. "A bare yet familiar room, with minimal furniture for sitting. There's a hallway to the north, to the rest of your home. A small sign is on the wall, in print and in braille. [paragraph break]The world outside seems to call to you from a door to the south."

A welcome sign is scenery in Home Base. "Welcome, traveller! Thank you for playtesting. [paragraph break]The most built-out areas are near 24th St and 16th St. [paragraph break]For initial playtesting, don't worry about taking the train. (You can walk between 24th and 16th.) [paragraph break]Type 'help' for some basic commands and beginning hints. You should also look at your inventory ('i' to see it)." 

The Bedroom is north of Home Base. The description is "A room meant for sleeping, next to a small bathroom. To the west, there's another, more spacious room. A pocket door opens south to a bare living room."

A battered table is a supporter in The Bedroom. It is fixed in place. 

A holo cube is an object. It is on a battered table. The description of a holo cube is "[if player is not blind]A cube with shifting images on its surfaces.[end if][if player is blind and player is not deaf]A smooth-faced cube whose surfaces move slightly under your hand, murmuring with voices.[end if]"

Instead of taking the holo cube:
	say "You turn the cold, smooth cube in your hands.";
	if the player is not blind:
		say "Faces of smiling people, a family – [line break]";
		say "You can't quite remember, but the knowledge runs deeper than memory.";
	if the player is blind:
		say "Voices murmur and laugh from the holocube.";
		say "Familiar voices - family? The memories surface, then slip away.";
	say "You settle the cube back in its place.";

Room of the Traveller is west of The Bedroom. "You feel at home here, in this room with a long shelf, desk, and sturdy workbenches. It's arranged just how you like it." 

A desk, the shelf, and the workbenches are scenery in Room of the Traveller. 

A storage box is an object in Room of the Traveller. It is a closed openable container. It is fixed in place. 

A slip of paper is in a storage box. The description of a slip of paper is "The things in the closet in the Traveller's Room are mostly for testing sightedness, hearing, and mobility. They aren't necessary for solving any puzzles, but the puzzles should be solvable while using them. If you want to test them, open the closet and take what you need. For example, wear the mirrorshades, then check your inventory and examine yourself.  [paragraph break]Note, hard of hearing and low vision modes aren't yet implemented. Also, for now, assume the Deaf player-character can lipread."

In Room of the Traveller is an opaque, closed, openable container called a closet. The closet is scenery. 
The wraparound mirrorshades, headphones, a thick woolly hat, the cruel shoes, a SMARTmap, a long cane, and earplugs are in the closet.

A book is a kind of thing.  A SMARTmap is a book. A SMARTmap has a table name called the contents. The description of a SMARTmap is "An accessible map of the BART system with Braille entries. Use it like this: 'consult smartmap about red line' ";

A powerchair is in Room of the Traveller.

[some special rules for the beginning objects and actions]

Instead of dropping the magic marker:
	say "Wouldn't want to lose it. You put it into your pocket, instead.";
	stop the action.
	
Instead of dropping a card:
	say "You think about dropping [the noun], but can't bring yourself to do it.";
	stop the action.
	
Figure of BART map is the file "BART_map.png". 

Instead of consulting a book about a topic listed in the contents of the noun: 
    say "[reply entry][paragraph break]".

Report consulting a book about: 
    say "You flip through [the noun], but find no reference to [the topic understood]." instead.

The contents of the SMARTmap is the Table of BART lines.

Table of BART lines
topic	reply
"red line" or "red"	"The Red Line runs through Millbrae, San Bruno, South San Francisco, Colma, Daly City, Balboa Park, Glen Park, Mission 24th St, Mission 16th St, Civic Center, Powell, Montgomery, Embarcadero, West Oakland, Oakland 12th St, Oakland 19th St, MacArthur, Ashby, Downtown Berkeley, North Berkeley, El Cerrito Plaza, El Cerrito del Norte, Richmond."
"yellow" or "yellow line"	"The Yellow Line runs through Millbrae, San Bruno, South San Francisco, Colma, Daly City, Balboa Park, Glen Park, Mission 24th St, Mission 16th St, Civic Center, Powell, Montgomery, Embarcadero, West Oakland, Oakland 12th St, Oakland 19th St, MacArthur, Rockridge, Orinda, Lafayette,  Walnut Creek, Pleasant Hill, Concord, North Concord/Martinez, Pittsburg/Bay Point, Pittsburg Center, and Antioch."
"blue" or "blue line"	"The Blue Line runs through Daly City, Balboa Park, Glen Park, Mission 24th St, Mission 16th St, Civic Center, Powell, Montgomery, Embarcadero, West Oakland, Lake Merritt, Fruitvale, Coliseum, San Leandro, Bay Fair, Castro Valley, West Dublin/Pleasanton, and Dublin/Pleasanton."
"green" or "green line"	"The Green Line runs through Daly City, Balboa Park, Glen Park, Mission 24th St, Mission 16th St, Civic Center, Powell, Montgomery, Embarcadero, West Oakland, Lake Merritt, Fruitvale, Coliseum, San Leandro, Bay Fair, Hayward, South Hayward, Union City, Fremont, Warm Springs/South Fremont, Milpitas, and Berryessa/North San José."
"orange" or "orange line"	"The Orange Line runs through Richmond, El Cerrito del Norte, El Cerrito Plaza, North Berkeley, Downtown Berkeley, Ashby, MacArthur, Oakland 19th St, Oakland 12th St, Lake Merritt, Fruitvale, Coliseum, San Leandro, Bay Fair, Hayward, South Hayward, Union City, Fremont, Warm Springs/South Fremont, Milpitas, and Berryessa/North San José.."
"solar" or "solar line"	"The Solar Line runs through Embarcadero, L1, L2, L4, L5, Moon Base Copernicus, Venus Orbital, Freyja Montes, Mercury Orbital, Mercury Rachmaninoff, Phobos, Utopia Planitia, Ceres, Europa, Saturn Orbital, Titan, Oberon, Triton, Kuiper Belt, Pluto, Eris, and Planet Nine."


Part 2 - Multisensory

[Written to include and extend Touchy Feely]
[Touchy Feely by Quantum Games begins here. Extended by Liz Henry 2019]

["Allows the player to use the other senses on things much more fully. Works well with, but does not require, Fully Spatial by Quantum Games. Fixed some report rules, Liz, 2019."] [Use authorial modesty.]
[Putting this in main game code for ease of updating for playtesting]
[2019-01-15 Fixed some report rules that didn't work right]
[2019-02-02 Putting more possible default sensory descriptions]

Section 1 - Feels

Understand "touch" as touching the room. Touching the room is an action applying to nothing.

A thing has some text called the feel. The feel of a thing is usually "".

A room has some text called the feel. The feel of a room is usually "".

The report touching yourself rule is not listed in the report touching rulebook.

The report touching other people rule is not listed in the report touching rulebook.

The report touching things rule is not listed in the report touching rulebook.

Report touching (this is the Touchy Feely report touching rule):
	if the feel of the noun is not "":
		say "[the feel of the noun][line break]";
	otherwise:
		say "[thing without feel value][line break]";

Report touching the room (this is the Touchy Feely report touching the room rule):
	if the feel of the location of the player is not "":
		say "[the feel of the location of the player][line break]";
	otherwise:
		say "[thing without feel value][line break]";

The thing without feel value is a text variable. The thing without feel value is "[one of]Feels okay.[or]Feels like [a noun].[or]You feel nothing unexpected.[or]Yeah, that's [a noun] alright.[or]Feels pretty much like you'd think it would.[at random]"

Section 2 - Scents

A thing has some text called the scent. The scent of a thing is usually "".

A room has some text called the scent. The scent of a room is usually "".

The scent of a person is usually "Smells okay. Recently bathed, even."

The report smelling rule is not listed in the report smelling rulebook.

Report smelling (this is the Touchy Feely report smelling rule):
	if the noun is nothing:
		if the feel of the location of the player is not "":
			say "[the scent of the location of the player][line break]";
		otherwise:
			say "[thing without scent value][line break]";
	otherwise:
		if the scent of the noun is not "":
			say "[the scent of the noun][line break]";
		otherwise:
			say "[thing without scent value][line break]";

The thing without scent value is a text variable. The thing without scent value is "[one of]It doesn't have much of a scent.[or]Smells okay.[or]Not much to report about how it smells.[or]Your nose doesn't detect much in this case.[or]Someday you may regret going around sniffing random objects. But not today.[then at random]"

Section 3 - Tastes

Understand "taste" as tasting the room. Tasting the room is an action applying to nothing.

A thing has some text called the taste. The taste of a thing is usually "".

A room has some text called the taste. The taste of a room is usually "".

The taste of a person is "Tastes faintly salty. Should you be doing this?"

The report tasting rule is not listed in the report tasting rulebook.
	
Report tasting (this is the Touchy Feely report tasting rule):
	if the taste of the noun is not "":
		say "[the taste of the noun][line break]";
	otherwise:
		say "[thing without taste value][line break]";	

Report tasting the room (this is the Touchy Feely report tasting the room rule):
	if the taste of the location of the player is not "":
		say "[the taste of the location of the player][line break]";
	otherwise:
		say "[thing without taste value][line break]";

The thing without taste value is a text variable. The thing without taste value is "[one of]You give the [noun] a quick experimental lick. Hmm.[or]You go to taste the [noun], then decide not to.[or]Tastes like you'd expect any [noun] to taste.[at random]"

Section 4 - Sounds

Understand "hear" as listening.

A thing has some text called the sound. The sound of a thing is usually "".

A room has some text called the sound. The sound of a room is usually "".

The sound of a person is usually "You hear quiet breathing."

The report listening rule is not listed in the report listening to rulebook.

Report listening to (this is the Touchy Feely report listening rule):
	if the noun is nothing:
		if the sound of the location of the player is not "":
			say "[the sound of the location of the player][line break]";
		otherwise:
			say "[thing without sound value][line break]";
	otherwise:
		if the sound of the noun is not "":
			say "[the sound of the noun][line break]";
		otherwise:
			say "[thing without sound value][line break]";

The thing without sound value is a text variable. The thing without sound value is "[one of]It's silent.[or]You hear nothing unexpected.[or]The [noun] doesn't make any noise.[or]The sound of silence.[or]It's quiet. Too quiet.[as decreasingly likely outcomes]"

Section 5 - Descriptions

Understand "see" as looking.

Understand "see [something]" as examining.


Section 6 - Special testing commands - Not for release

Understand "testfeel" as testing the feel of things. Testing the feel of things is an action out of world, applying to nothing.

Report testing the feel of things (this is the Touchy Feely feel testing rule):
	repeat with R running through things:
		if the feel of R is not "":
			say "[R]: [feel of R][line break]";
		otherwise:
			say "[R]: [thing without feel value][line break]";
	repeat with R running through rooms:
		if the feel of R is not "":
			say "[R]: [feel of R][line break]";
		otherwise:
			say "[R]: [thing without feel value][line break]";

Understand "testscent" as testing the scent of things. Testing the scent of things is an action out of world, applying to nothing.

Report testing the scent of things (this is the Touchy Feely scent testing rule):
	repeat with R running through things:
		if the scent of R is not "":
			say "[R]: [scent of R][line break]";
		otherwise:
			say "[R]: [thing without scent value][line break]";
	repeat with R running through rooms:
		if the scent of R is not "":
			say "[R]: [scent of R][line break]";
		otherwise:
			say "[R]: [thing without scent value][line break]";

Understand "testtaste" as testing the taste of things. Testing the taste of things is an action out of world, applying to nothing.

Report testing the taste of things (this is the Touchy Feely taste testing rule):
	repeat with R running through things:
		if the taste of R is not "":
			say "[R]: [taste of R][line break]";
		otherwise:
			say "[R]: [thing without taste value][line break]";
	repeat with R running through rooms:
		if the taste of R is not "":
			say "[R]: [taste of R][line break]";
		otherwise:
			say "[R]: [thing without taste value][line break]";

Understand "testsound" as testing the sound of things. Testing the sound of things is an action out of world, applying to nothing.

Report testing the sound of things (this is the Touchy Feely sound testing rule):
	repeat with R running through things:
		if the sound of R is not "":
			say "[R]: [sound of R][line break]";
		otherwise:
			say "[R]: [thing without sound value][line break]";
	repeat with R running through rooms:
		if the sound of R is not "":
			say "[R]: [sound of R][line break]";
		otherwise:
			say "[R]: [thing without sound value][line break]";

[Touchy Feely Extended ends here.]


Part 3 - Disabilities

Section 1 - Sightedness

Sightedness is a kind of value. The sightednesses are blind, sighted, low-vision, and unknown. Understand “blind” as blind. Understand “sighted” as sighted. Understand "low vision" as low-vision.
 
A person has a sightedness. The sightedness of a person is usually sighted. The sightedness of the player is sighted.

wraparound mirrorshades are a wearable object. "Shiny reflecting glasses." 
The description of wraparound mirrorshades is "Astonishingly dorky metallic glasses."
Understand "glasses" or "shades" as wraparound mirrorshades.
  

blue goggles are a wearable object. "Thick blue goggles." 
The description of blue goggles is "Large, thick-lensed, coke-bottle tinted goggles."
Understand "goggles" as blue goggles.


A long cane is an object. "A long probing cane."
The description of the white cane is "A long, thin, cane, used for navigation by people who don't see well or who are blind."

Before wearing the mirrorshades:
	say "You might want to pick up a long cane for navigation, too.";
	say "You can use by tapping, sweeping, or exploring.";
	now the player is blind;
	
After taking off the mirrorshades:
	now the player is sighted; 
	
Before wearing the goggles:
	now the player is low-vision; [this doesn't have an effect yet, until i have text munging]
	
After taking off the goggles:
	now the player is sighted;
	
The you-can-also-sense rule substitutes for the you-can-also-see rule when the player is blind.

For printing the locale description (this is the you-can-also-sense rule):
	let the domain be the parameter-object;
	let the mentionable count be 0;
	repeat with item running through things:
		now the item is not marked for listing;
	repeat through the Table of Locale Priorities:
		if the locale description priority entry is greater than 0,
			now the notable-object entry is marked for listing;
		increase the mentionable count by 1;
	if the mentionable count is greater than 0:
		repeat with item running through things:
			if the item is mentioned:
				now the item is not marked for listing;
		begin the listing nondescript items activity with the domain;
		if the number of marked for listing things is 0:
			abandon the listing nondescript items activity with the domain;
		otherwise:
			if handling the listing nondescript items activity with the domain:
				if the domain is the location:
					say "[We] " (A);
				otherwise if the domain is a supporter or the domain is an animal:
					say "On [the domain] [we] " (B);
				otherwise:
					say "In [the domain] [we] " (C);
				if the locale paragraph count is greater than 0:
					say "[regarding the player][one of]pay attention and explore for a bit. There's [or]figure out there is also [at random]" (D);
				otherwise:
					say "[regarding the player][one of]poke around. There's [or]can sense [or]pay attention and explore for a bit. There's [or]figure out there is [at random]" (E);
				let the common holder be nothing;
				let contents form of list be true;
				repeat with list item running through marked for listing things:
					if the holder of the list item is not the common holder:
						if the common holder is nothing,
							now the common holder is the holder of the list item;
						otherwise now contents form of list is false;
					if the list item is mentioned, now the list item is not marked for listing;
				filter list recursion to unmentioned things;
				if contents form of list is true and the common holder is not nothing,
					list the contents of the common holder, as a sentence, including contents,
						giving brief inventory information, tersely, not listing
						concealed items, listing marked items only;
				otherwise say "[a list of marked for listing things including contents]";
				if the domain is the location, say " here" (F);
				say ".[paragraph break]";
				unfilter list recursion;
			end the listing nondescript items activity with the domain;
	continue the activity.

[Instead of looking when the player is blind: 
	say "It might be more useful to tap with your cane, since you're blind. You can also explore, or use other sensory actions like listening, feeling, smelling, or tasting."]

[this doesn't work yet but I want to replace room description mechanism for looking or going, with a sensory room description built from all available senses, for ease of writing the descriptions.]
[A room has a list of text called the aggregate description. .

A room has a text called visual.

Every turn when the player is sighted:
	add the description of the location of the player to the aggregate description of the location;
	add "visual"  to the aggregate description of the location; 
	say "[the aggregate description of the location]";]
	
[right now, this depends on rooms and other things having carefully written descriptions with sections for sound, visual, and other senses]

Section 2 - Deafness

Deafness is a kind of value. The deafnesses are Deaf, hard-of-hearing, hearing, and not known. Understand “Deaf” as Deaf. Understand "hard of hearing" as hard-of-hearing. 

A person has a deafness. The deafness of the player is hearing.

sticker-covered headphones are a wearable object. "Headphones covered with stickers." 
The description is "These big, fashionable headphones are slathered in Deaf culture and Deaf Pride stickers." 
The sound is "These are headphones that block out sound. So it would be weird if you could hear them."
The feel is "Slick headphones with cushiony, soft, breathable earpieces."

Before wearing the headphones:
	now the player is Deaf;
	
After taking off the headphones:
	now the player is hearing;
	
A thick woolly hat is a wearable object. "A thick woolly knit hat." 
The description is "An attractive woollen hat knitted from thick yarn. It comes down well over your ears."
The sound is "It makes a scrunchy sort of yarn noise if you get up real close and squeeze it."
The feel is "Cozy, warm, soft and comfortable. It's a knit hat. It loves you."

Before wearing the thick woolly hat:
	now the player is hard-of-hearing;
	
After taking off the thick woolly hat:
	now the player is hearing;
	
earplugs are a wearable object. "Little orange foam earplugs." 
The description is "Foam earplugs, useful for when you don't want to be bothered by noise." 
The sound is "They don't have a sound. That's the whole point."
The feel is "Squashy little bits of foam."

Before wearing the earplugs:
	now the player is hard-of-hearing;  [this is meant to be little-d deaf but i havent figured out how to differentiate based on lower or upper case and it may not be possible.]
	
After taking off the earplugs:
	now the player is hearing;

Instead of listening when the player is Deaf: 
	say "You listen hard, but don't hear much that's useful."
	
Section 3 - Mobility

Ambulation is a kind of value. The ambulations are wheeling, walking, limping, flying, hopping, and mobile. Understand “wheeled” as wheeling. Understand “walking” as walking. Understand "limping" as limping. Understand "hopping" as hopping.
 
A person has an ambulation. The ambulation of a person is usually walking. 
The ambulation of the player is walking.

The cruel shoes are a wearable object. 
Before wearing the cruel shoes:
	now the player is wheeling;
	
After taking off the cruel shoes:
	now the player is walking;

[experiment with wearing a wheelchair rather than using Rideable Vehicles]

A wheelchair is a kind of wearable thing. A powerchair is a wheelchair. A manual chair is a wheelchair. A scooter is a wheelchair. 

The description of a powerchair is "It's shiny black, it's powerful, and it's from the future."
Understand "chair" as a wheelchair.

Before going to any room:
	if the ambulation of the player is flying:
		say "You flap your wings vigorously.";
	if the ambulation of the player is wheeling:
		if the player is not wearing a wheelchair:
			say "You have some trouble getting around.";
			stop the action;
		otherwise:
			if the surface of the location is bumpy:
				say "[one of]Bumpy ground, but still navigable.[or]Something on your chair is rattling as you go over this jolting surface.[or]Your joints ache with every bump you roll over.[or]The bumps jar your spine.[at random]";
			if the surface of the location is uneven:
				say "[one of]You bump and careen across the uneven ground.[or]You carefully pick your way across the uneven ground.[at random]";
			if the surface of the location is brick:
				say "[one of]Your wheels judder across the bumpy floor.[or]Every brick and tile jostles you a little.[or]You can feel the bricks bumping under your tires.[at random]";
			if the surface of the location is grassy:
				say "The ground is a little soft. Luckily, your wheels can handle it.";
			if the surface of the location is mud:
				say "You stick in the mud briefly, then wrench free.";
			if the surface of the location is sand:
				say "Your wheels sink into the sand. It's difficult to get across it.";
			if the surface of the location is gravel:
				say "[one of]Your wheels skid around in the gravel in the deep spots. Embarassing. [or]Ugh, gravel.[at random]";
			if the surface of the location is smooth:
				say "[one of] [or]You zoom on over.[or]You wheel across pleasantly flat ground.[or]Silently, with minimal effort, you traverse the smooth floor.[or]This is such a nice, zippy chair.[or]Swanlike, you sail across the smooth ground.[or]You glide over gracefully, feeling suave.[or]Pirouetting smoothly in place, you wheel on over.[then at random]";
	if the ambulation of the player is walking:
		if the player is carrying a wheelchair:
			say "You have some trouble going anywhere while carrying something that big. Maybe if you put it down and sit in it, things will be easier.";
			stop the action;
		
After wearing a wheelchair:
	say "You sit in [the noun]. It's comfy.";
	now the ambulation of the player is wheeling;
	stop the action.
	
After taking off a wheelchair:
	say "You get out of [the noun].";
	now the ambulation of the player is mobile;
	stop the action.
	
Understand the command "sit" and "stand" as something new. 
Understand "sit on [something]" as sitting in.
Understand "sit in [something]" as sitting in.
Understand "stand up" or "stand" as standing up.
Sitting in is an action applying to one thing. 
Standing up is an action applying to nothing.

Carry out an actor sitting in a wheelchair:
	if the noun is not worn by the actor:
		silently try the actor taking the noun;
		silently try the actor wearing the noun;
	otherwise:
		say "You're already in it.";

Before standing up:
	if the player is wearing a wheelchair (called the chair): 
		silently try taking off the chair;		
		silently try dropping the chair;
		continue the action;
	otherwise:
		say "You're already up.";
		continue the action.
		
The print standard inventory rule is not listed in any rulebook. 		

Carry out taking inventory (this is the new print inventory rule):
	say "You are carrying: [line break]";
	list the contents of the player, with newlines, indented, including contents, with extra indentation. 

After printing the name of something (called target) while taking inventory:
    follow the property-aggregation rules for the target. 

The property-aggregation rules are an object-based rulebook.
The property-aggregation rulebook has a list of text called the tagline. 

A first property-aggregation rule for an openable open thing (this is the mention open openables rule):
        add "open" to the tagline. 

A first property-aggregation rule for an openable closed thing (this is the mention closed openables rule):
        add "closed" to the tagline. 

A property-aggregation rule for a closed transparent container which contains nothing (this is the mention empty transparent containers rule):
        add "empty" to the tagline. 

A property-aggregation rule for an open container which contains nothing (this is the mention empty open containers rule):
        add "empty" to the tagline. 

A property-aggregation rule for a lit thing (this is the mention lit objects rule):
        add "providing light" to the tagline. 

A property-aggregation rule for a switched on device (this is the mention devices rule):
        add "switched on" to the tagline. 

A property-aggregation rule for a wheelchair worn by the player (this is the mention worn wheelchairs rule):
	add "sitting in it" to the tagline;

A property-aggregation rule for an object that is not a wheelchair worn by the player (this is the mention other worn objects rule):
	add "being worn" to the tagline.
	
A property-aggregation rule for a long cane:
	add "wielded" to the tagline.

The last property-aggregation rule (this is the print aggregated properties rule):
	if the number of entries in the tagline is greater than 0:
		say " ([tagline])";
		rule succeeds;
	rule fails. 


Section 4 - Some varied defaults for examining

[replace the look description for examining objects, without assuming sightedness]

The description of yourself is "As fantabulous as ever. [line break] You are [sightedness], [deafness], and [ambulation].";

The examine undescribed things rule is not listed in any rulebook.

Carry out examining (this is the multisensory examine undescribed things rule):
	if examine text printed is false:
		say "[one of]Nothing special about [the noun].[or]Ordinary enough.[or]Yeah, it's [a noun].[or]You note the presence of [a noun].[at random][run paragraph on]";
	

	
	
[todo: fix the paragraph breaks after objects with descriptions]	
Studying the vicinity is an action applying to nothing. 

Report studying the vicinity:
	if the player is blind or the player is low-vision:
		say "You explore with your cane tip and free hand, navigating the area. [paragraph break]";
		if the location does not contain something which is scenery:
			say "There's little of interest in [the location]." instead;	
		repeat with point of interest running through scenery in the location:
			say "[point of interest]: [run paragraph on]";
			try examining the point of interest;			
	otherwise:
		say "You should try examining specific things with all available senses."

Understand "tap", "sweep" or "explore" as studying the vicinity. 


Waiting more is an action applying to one number.

Understand "wait [a time period]" or "wait for [a time period]" or "wait for a/an [a time period]" or "wait a/an [a time period]" as waiting more.

A person can be alert or distracted. A person is usually alert.

Carry out waiting more: 
	now the player is distracted;
	if the minutes part of the time understood is odd:
		decrease the time understood by one minute; [make it even to avoid train limbo]
	say "[line break]You think of a million things, and nothing.";
	let the target time be the time of day plus the time understood; 
	decrease the target time by one minute; 
	while the time of day is not the target time: 
		follow the turn sequence rules;
	now the player is alert;
	
Report waiting more: 
	say "You snap out of your reverie."

Check waiting more: 
    if the time understood is greater than 10 minutes, say "That seems very boring. Maybe looking around or exploring while you wait would be a better idea." instead.	
	

Part 4 - Money stuff

Price is a kind of value. $1.99 specifies a price. A thing has a price. The price of a thing is usually $0.00. After examining something for sale, say "It can be yours for [the price of the noun]." 

Definition: a thing is free if the price of it is $0.00.
Definition: a thing is for sale if it is not free. 

Instead of taking something for sale:
	say "You'll have to pay for that." 

Before buying something for sale when the money is not in the wallet:
	say "You're broke." instead. 

Before buying something for sale when the money is free:
	say "You're broke." instead. 

Before buying something for sale when the price of the money is less than the price of the noun:
	say "Your funds do not run to the price of [the noun]." instead. 

Instead of buying something:
	decrease the price of the money by the price of the noun;
	say "You fork over [the price of the noun] for [the noun], leaving yourself with [the price of the money].";
	if the money is free:
		now the money is nowhere;
	now the price of the noun is $0.00;
	now the player is carrying the noun. 

The player carries a wallet. The wallet contains money. The price of the money is $20.00. The printed name of the money is "[price of the money] in cash". Understand "cash" as the money. The description of a wallet is "A nice, compact leather wallet." The description of cash is "Cold hard cash."

Instead of taking the money:
	say "Best to leave it alone until you need to buy something." 

Instead of buying something free:
	say "[The noun] can't be bought." 

Instead of buying the money:
	say "The money belongs to you; you buy things with it." 
	


Part 5 - Interactions

Asking someone about something is speech. Telling someone about something is speech. Answering someone that something is speech. Asking someone for something is speech. 

To say (named character - a man) as pronoun: 
	say "He"; 

To say (named character - a woman) as pronoun: 
	say "She"; 
	
To say (named character - neuter) as pronoun:
	say "Zie";   [TODO fix this so that They sounds correct (don't instead of doesn't)]


[Understand the commands "ask" and "tell" and "say" and "answer" as something new. ]

[Understand "ask [text]" or "tell [text]" or "answer [text]" as a mistake ("[talk to instead]"). 

Instead of asking someone to try doing something:
	say "[talk to instead][paragraph break]". 

Instead of answering someone that something:
	say "[talk to instead][paragraph break]". 

To say talk to instead:
	say "(To communicate, TALK TO a character.) " ]

Understand "talk to [someone]" as talking to. Understand "talk to [something]" as talking to. Talking to is an action applying to one visible thing. 

After talking to someone:
	say "[one of]There is no reply[or][the noun as pronoun] doesn't respond[or][the noun as pronoun] seems busy[or][the noun as pronoun] is too busy to talk[or][the noun as pronoun] doesn't seem interested in conversation[at random]."


Part 6 - Hint system

A thing can be examined or unexamined. A thing is usually unexamined. Carry out examining something: now the noun is examined. 

Taking inventory is acting confused. Looking is acting confused. Examining an examined thing is acting confused. 

After acting confused for six turns:
        say "(If you are feeling lost, try typing 'help' for suggestions.)" 

Understand "help [text]" or "help about [text]" as getting help about. Understand the commands "instructions" or "menu" or "info" or "about" as "help". 

Getting help about is an action applying to one topic. 

Carry out getting help about:
	if the topic understood is a topic listed in the Table of Standard Help:
		say "[explanation entry][paragraph break]";
	otherwise:
		say "You're out of ideas." 

Understand "help" as summoning help. Summoning help is an action applying to nothing. 

Carry out summoning help:
	say "Help is available about the following topics. Typing HELP followed by the name of a topic will give further information.[paragraph break]";
	repeat through the Table of Standard Help:
		say " [title entry]: [summary entry][line break]". 

Table of Standard Help
topic	title	summary	explanation
"self"	"self"	"The point of view character"	"Keep in mind you can type 'examine self' or 'x self'. This might be useful or informative, sometimes."
"commands"	"commands"	"A list of basic commands in the game"	"Type 'i' to look at your inventory (what you are carrying).  [line break]
'Look' will show you a room description (again). [line break]
'Exits' will show you a list of possible exits from a room.[line break]
You can 'go' in all 8 directions (north, northeast, etc) as well as up and down. [line break]
'n' is a convenient shorthand for 'go north' [line break]
You can also take things, open things, sit on things, and stand up. [line break]
'examine' ('x') or 'look at' will let you examine an object. Or, sometimes, details in a room description.[line break]
'tap' if your character is blind, will efficiently examine an entire area and its significant objects.[line break]
'Wait X minutes' may be handy when waiting for trains. [line break]
'Friends' will list the people you know in the game.[line break]
'Works' will list the artworks you've experienced.[line break]
'Hints' will get you a small menu of extra hints, a little spoilery. [line break]
There are many more commands to try![line break]"
"map"	"map"	"Where to find a map"	"BART map images are on every train station platform. You can also pick up the SMARTmap in the closet in Home Base for a portable, text only option (useful if you, the player, use a screen reader). For exploring the world, you may want to take notes, or draw your own maps on paper as a guide to various areas."
"marker"	"marker"	"Hints about the magic marker"	"Try writing on things that seem a little bit magical."
"exits"	"exits"	"Using the EXITS command"	"Type 'exits' if you want a list of possible exits. It's a little cheaty, but so much less frustrating."
"explore"	"explore"	"The explore command"	"If your character is blind or low vision, you can use the command 'explore', 'tap', or 'sweep' to explore a space with your long cane. The long cane and mirrorshades are in the closet in Home Base."
"murals"	"murals"	"The art and murals"	"It's worth examining the local art. It may not have anything immediately useful but it provides context for the local puzzles and mysteries. There may be (obvious once you encounter them) times when you can interact more with the art."
"score"	"score"	"Things that make your score go up"	"One point for each new room visited. 5 for each Artifact you pick up. 5 more points when you place the 20 Artifacts where they need to go (You'll know it when you see it.)"
"card"	"card"	"Big hints about the (B)ART card"	"Take it to the concourse levels of the stations and swipe. Depending on the current state of your card, there may be different and perhaps unusual effects."
"bugs"	"bugs"	"How to report bugs"	"Please report anything you think is wrong, or could use improvement, at https://github.com/lizzard/transitory/issues. You can also email lizhenry@gmail.com with 'TRANSITORY BUG' in the subject line."

	

Understand "hints" or "hint" as summoning hints. Summoning hints is an action applying to nothing. 

Carry out summoning hints:
	say "Hints are available about the following topics. Typing HINT followed by the name of a topic will give further information.[paragraph break]";
	repeat through the Table of Hints:
		say " [title entry]: [summary entry][line break]". 

Table of Hints
topic	title	summary	explanation
"start"	"start"	"Hints for the start of the game"	"Explore all of the Mission and 24th and 	16th area, including your home. Examine the artworks. Examine and talk to people. You have to do that before you can ride the train."
"marker"	"marker"	"How to use the marker"	"After you've examined an artwork at 24th, your marker will initialize. You can use it to write on your BART card to modify it. The main use will be for ART; Once it's changed into an ART card, try swiping it and exploring the local area."
"money"	"money"	"How do I use money? Can I get more?"	"You can buy a few things in the game so far. There will be ways to get more money, but they aren't written yet."
"circle plaza"	"circle plaza"	"What is the secret of Circle Plaza? (SPOILER)"	"Swipe the ART card and go up. Circle Plaza has transformed into a giant Aztec calendar. Find the artifacts and put them into the calendar glyph slots."
"noisebridge"	"noisebridge"	"How do I get to Noisebridge? (SPOILER)"	"Swipe the ART card and then climb the sculptures in the 16th St station."
"printer (SPOILER)" 	"printer"	"How do I get the printer to work?"	"Try writing on the printer."
"artifacts"	"artifacts"	"Where do I find the artifacts?"	"Most (but not quite all) stations on the Red Line will have a puzzle to solve, which will lead to one of the glyph artifacts."
"Manastabal"	"Manastabal"	"Who is Manastabal?"	"Manastabal is based on the guide from Monique Wittig's Across the Acheron (Virgil, non) which is a lesbian retelling of Dante's Inferno and Paradisio."
"train lines"	"train lines"	"What about the other train lines?"	"They should work (more or less) but I haven't written most of those stations, or their puzzles, yet. Each line will eventually have a larger meta-puzzle.  "
"traveller"	"traveller"	"Who am I, anyway?"	"That's a very good question!"

Understand "hint [text]" or "hint about [text]" as getting hints about. 

Getting hints about is an action applying to one topic. 

Carry out getting hints about:
	if the topic understood is a topic listed in the Table of Hints:
		say "[explanation entry][paragraph break]";
	otherwise:
		say "You're out of ideas." 




Listing exits is an action applying to nothing.
Understand "exits" as listing exits.

Carry out listing exits: say "You can go [exit list] from here.".

To say exit list:
	let place be location;
	let count be 0;
	repeat with way running through directions:
		let place be the room way from the location;
		if place is a room:
			increment count;
			say "[if count is greater than 1] or [end if][bold type][way][roman type] ([place])". 

Teleporting to is an action applying to one thing.
Understand "go to [any room]" or "goto [any room]" as teleporting to. 

	
Carry out teleporting to: 
	say "You blink out of existence and zap yourself to [the noun]. [line break]";
	move the player to the noun;


Part 7 - All the places

Section 1 - Regions
[Regions]



A surface is a kind of value. A room has a surface. 
The surfaces are smooth, bumpy, sidewalk, brick, cracked, uneven, gravel, sand, grassy, and mud. A room is usually smooth.

A room can be a platform. 
A room can be a concourse. 
A room can be a street level station. 

A room can be near MUNI or independent. A room is usually independent. 

A room can be a north endpoint.
A room can be a south endpoint. 
A room can be an east endpoint.
A room can be a west endpoint.
	

Richmond is a north endpoint.
Millbrae is a south endpoint.

Liftlandia is a region.  [everywhere an elevator might appear]
Mission 24th Concourse is in Liftlandia.  Mission 24th Concourse is a street level station.

Street Level is a region in Liftlandia. 
Calle 24 Plaza is in Street Level. Calle 24 Plaza is a street level station.

Platforms is a region in Liftlandia.  [everywhere that is a train stop]

Westside is a region in Platforms. Daly City, Balboa Park, Glen Park, Mission 24th St, Mission 16th St, Civic Center, Powell, Montgomery, Embarcadero, and West Oakland are in Westside. 

SFO Extension is a region in Platforms.  Millbrae, San Bruno, South San Francisco, Colma are in SFO Extension.

Oakland Central is a region in Platforms. Oakland 12th St, Oakland 19th St, MacArthur are in Oakland Central.

Yellow Line is a region in Platforms. Rockridge, Orinda, Lafayette,  Walnut Creek, Pleasant Hill, Concord, North Concord/Martinez, Pittsburg/Bay Point, Pittsburg Center, and Antioch are in Yellow Line. 

North Bay is a region in Platforms. Ashby, Downtown Berkeley, North Berkeley, El Cerrito Plaza, El Cerrito del Norte, and Richmond are in North Bay. 

Oakland South is a region in Platforms. Lake Merritt, Fruitvale, Coliseum, San Leandro, and Bay Fair are in Oakland South.

South Bay is a region in Platforms. Hayward, South Hayward, Union City, Fremont, Warm Springs/South Fremont, Milpitas, and Berryessa/North San José are in South Bay. 

Blue Line is a region in Platforms. Castro Valley, West Dublin/Pleasanton, and Dublin/Pleasanton are in Blue Line. 

Solar Line is a region in Platforms. L1, L2, L4, L5, Moon Base Copernicus, Venus Orbital, Freyja Montes, Mercury Orbital, Mercury Rachmaninoff, Phobos, Utopia Planitia, Ceres, Europa, Saturn Orbital, Titan, Oberon, Triton, Kuiper Belt, Pluto, Eris, and Planet Nine are in Platforms.

The BART map is a backdrop. It is in Platforms. 

Instead of examining the BART map:
	display the Figure of BART map; 

Thirteenth Century is a region. 

Eighteenth Century is a region.

 


Section 2 - Locations, organized by train stops

[train stops, alphabetically with descriptions]

Chapter 1 - Antioch 

The description of Antioch is "You are on a BART platform. You hear the noise of cars on a nearby highway."

Chapter 2 - Ashby

The description of Ashby is "You are on a BART platform underground.  Brick tiles on the floor, concrete sides to the platform tunnel  It isn't pretty."  Ashby is a platform.

Ashby Concourse is up from Ashby. It is a concourse.

The quartzite rabbit is in Ashby Concourse.
		
West Berkeley Shellmound is a room.		

Chapter 3 - Balboa Park

The description of Balboa Park is "You are on a BART platform with smooth marble floors. It has the feel of being in a long, narrow canyon, shaded, but open to the sky above. People are going up and down stairways to the concourse above, another wide open space."  The surface of Balboa Park is smooth.
		
Balboa Park Concourse is up from Balboa Park. It is a concourse. "Half underground, half open to the railyard outside, this unusually shaped station has the feeling of a massive pile of boulders or a brutalist fortress with a greenhouse roof on top. Under a hulking concrete buttress, you can go into a tiny shop."

A tiny shop is inside from Balboa Park Concourse. The description of a tiny shop is "Inside this friendly little shop you can buy flowers, soda, candy, magazines, coffee, and homemade lumpia." 



Ocean Avenue is north of Balboa Park Concourse. "A lot of buses and MUNI trains go by here. The J and K trains turn around in Green Yard next to the station, sometimes going into long, low barns for maintenance. To the west there are pedestrian bridges over the highway. Everything feels wrong for humans. it is a landscape made for trains and cars, hulking, hurtling, unseeing. "
	
The Industrial School is a room.

The House of Refuge is a room.

A moonstone house is an object. It is in the House of Refuge. "A blocky little stone house, made of shimmering moonstone." The description of the moonstone house is "You feel the breath of the night-house, the darkness, realm of the nocturnal jaguar-sun."

The House of Correction is a room.

Chapter 4 - Bay Fair

The description of Bay Fair is "You are on a BART platform."

Chapter 5 - Downtown Berkeley

The description of Downtown Berkeley is "You are on a BART platform underground.  The sides of the medians are bricks and the floor is large smooth square slabs of mottled marble."  Downtown Berkeley is a platform.

Downtown Berkeley Concourse is up from Downtown Berkeley. It is a concourse.

Berkeley Plaza is up from Downtown Berkeley Concourse. It is a street level station.

The amethyst rain cloud is in Downtown Berkeley Concourse.




Chapter 6 - Castro Valley

The description of Castro Valley is "You are on a BART platform."
		
Jalquin is a room.

Chapter 7 - Civic Center

The description of Civic Center is "You are on a BART platform underground. It's busy, in fact, busy to the point of chaos, here. It's cold and somehow, even the air feels grimy.[if player is not deaf] Suitcases and wheeled carts trundle loudly as people rush around the station.[end if][if player is not blind] Wide black pillars fronted with square marble tiles dot the platform in between stairs to the concourse.[end if]"

Civic Center Concourse is up from Civic Center. It is a concourse. Civic Center Concourse is near MUNI.  The description of Civic Center Concourse is "A bustling underground concourse above the train platforms. [if player is not blind] As you pause to get your bearings, you notice a man in ill-fitting sweat pants kneeling on the ground over an open backpack. He's fumbling around with a little glass pipe.[end if]"

A kneeling man is in Civic Center Concourse. "A man is kneeling in a corner next to some duffel bags, crouched over a glass pipe."

A ticket agent is in Civic Center Concourse. "The ticket agent is barely visible in his high plexiglass kiosk. He doesn't seem very responsive."

United Nations Plaza is up from Civic Center Concourse. It is a street level station. It is near MUNI. It is southwest of Turnaround Plaza. 

A statue of Ashurbanipal is in United Nations Plaza. It is fixed in place. The description of the statue of Ashurbanipal is "An enormous bronze statue of a Mesopotamian-looking king holding a writhing lion in one arm and a cuneiform tablet in the other. It's on a tall base with quite a lot of information on it." 

The tall base is scenery in United Nations Plaza. The description of the tall base is "A concrete base topped by a granite lotus blossom plinth. It has a long inscription carved into it, which you can just barely read if you get up close."

The inscription is scenery in United Nations Plaza. The description of the inscription is "The Assyrians formed one of the earliest great empires in the world. Their civilization dates from 2700 B.C. with the important cultural centers at Ashur and Nineveh north of modern Baghdad. Beginning as a river civilization in Mesopotamia between the Tigris and Euphrates, the empire spread east and west to touch the lives of all Near Eastern people. 

 A noted patron of the arts, he helped to build a culture that inspired nations from Persia to the Mediterranean Sea. The bas-reliefs in his palace are among the finest examples of ancient sculpture. Ashurbanipal ruled during the 7th century B.C. At a time when both Egypt and Babylon were under the Assyrian banner. Ashurbanipal had a personal love of learning which prompted him to collect existing knowledge of the known world in cuneiform tablets. His capital, Nineveh is distinguished for its vast collection, recorded as the world’s first great library. 

The language of the Assyrians, Aramaic was spoken by Christ and widely used throughout the Near East by Israelites, Arabs, Persians and others for centuries. It remained the spoken and written language of the Assyrians down to the present time. Their empire lasted 1000 years until the fall of Nineveh in 612 B.C. 

During the ensuing centuries of chaotic political struggle, first between the Persians and Romans, and later between Christians and Muslims, the Assyrians sought refuge in the difficult mountainous terrain of their ancient empire where succeeding governments and warring armies passed them by. 

Among the first converts to Christianity, they preserved and transmitted the culture of classical Greece to the Moors who advanced it during the Dark Ages in Europe. Assyrians authored exquisite religious literature and spread Christianity to the Asiatic east as far as India and to China where their alphabet remained in use by the ruling houses until the early 20th century. 

In the First World War two-thirds of the Assyrians perished in the fighting. Displacement cost them their homes, wealth and any hope for a secure homeland. Many survivors left to begin life again in other countries. Today there are Assyrians in Europe, Australia, South America, India and the United States. 

Assyrians have kept their identity and language without political organization or any of the institutions of national security, passing their heritage on to new generations through the strength of family ties and a spirit of community which is deeply felt. Their rich cultural heritage binds Assyrians worldwide to each other. Their contribution to civilization will continue to enrich world culture. 

This is the statue presented to the City of San Francisco by the Assyrian people in the 210th year of America’s sovereignty. "


A statue of Simón Bolívar is in United Nations Plaza. It is fixed in place. 

An obsidian knife is in United Nations Plaza. 


An obelisk is in United Nations Plaza.  An obelisk is fixed in place.  The description of an obelisk is "A huge black obelisk with the Preamble to the Universal Declaration of Human Rights carved in marble. [paragraph break]WHEREAS recognition of the inherent dignity and of the equal and inalienable rights of all members of the human family is the foundation of freedom, justice and peace in the world,
[paragraph break]
WHEREAS disregard and contempt for human rights have resulted in barbarous acts which have outraged the conscience of mankind, and the advent of a world in which human beings shall enjoy freedom of speech and belief and freedom from fear and want has been proclaimed as the highest aspiration of the common people,
[paragraph break]
WHEREAS it is essential, if man is not to be compelled to have recourse, as a last resort, to rebellion against tyranny and oppression, that human rights should be protected by the rule of law,
[paragraph break]
WHEREAS it is essential to promote the development of friendly relations between nations,
[paragraph break]
WHEREAS the peoples of the United Nations have in the Charter reaffirmed their faith in fundamental human rights, in the dignity and worth of the human person and in the equal rights of men and women and have determined to promote social progress and better standards of life in larger freedom,
[paragraph break]
WHEREAS Member States have pledged themselves to achieve, in co-operation with the United Nations, the promotion of universal respect for and observance of human rights and fundamental freedoms,
[paragraph break]
WHEREAS a common understanding of these rights and freedoms is of the greatest importance for the full realization of this pledge,
[paragraph break]
Now, Therefore THE GENERAL ASSEMBLY proclaims THIS UNIVERSAL DECLARATION OF HUMAN RIGHTS as a common standard of achievement for all peoples and all nations, to the end that every individual and every organ of society, keeping this Declaration constantly in mind, shall strive by teaching and education to promote respect for these rights and freedoms and by progressive measures, national and international, to secure their universal and effective recognition and observance, both among the peoples of Member States themselves and among the peoples of territories under their jurisdiction."

A toothless man is in United Nations Plaza. The description of a toothless man is "A toothless man walks slowly in circles, screaming at the sky."

A scruffy dude is in United Nations Plaza. The description of a scruffy dude is "A disheveled man with a duffel bag, a shopping cart, and a pit bull with a rope tied around its neck at his feet."

A snarling pit bull is in United Nations Plaza.  The description of a snarling pit bull is "A rope is loosely tied around this pit bull's neck. It growls and barks at everyone who passes."

A drunk woman is in United Nations Plaza. The description of a drunk woman is "She's rambling on about something, swigging booze out of a bottle in a brown paper bag, occasionally yelling at the pit bull nearby."

A brisk librarian is in United Nations Plaza.

A bureaucrat is in United Nations Plaza. 

Lighthouse for the Blind is southeast of United Nations Plaza. 

SF Public Library is southwest of United Nations Plaza.

The Asian Art Museum is northwest of United Nations Plaza. 


Waterfall Overlook is a room.


Kotóla is a woman. The description of Kotóla is "Frog Woman, Coyote's wife. She lives in the river. Her bones someday will live here deep under the earth."   [to do: fix this to be not in the descrip but in conversation]

Chapter 8 - Coliseum

The description of Coliseum is "You are on a BART platform."

Chapter 9 - Colma

The description of Colma is "You are on a BART platform."
			
Colma Creek is a room. 

Siplichiquin is a room.
			
A woven basket is a container. It is in Siplichiquin.
			
Black seed tamales are an object. They are edible. They are in a woven basket.
			
The Land of the Dead is a room. 

A quartz skull is in The Land of the Dead.

Kaknu is a person. Kaknu is in The Land of the Dead. The description of Kaknu is "A person who is also a falcon. He has a bow and arrows."

Wiwe is a person. Wiwe is in The Land of the Dead. The description of Wiwe is "Lord of the Dead, Wiwe, his body made of stone."
			
			
Chapter 10 - Concord

The description of Concord is "You are on a BART platform."

Chapter 11 - Daly City

The description of Daly City is "You are on a BART platform. Fog drifts in from the nearby ocean."
			
Mitline is a room.
			
A tule reed canoe is a vehicle. It is in Mitline.

A jasper reed is in Mitline. 
			

Opurome is a room.

A tule reed raft is a vehicle. It is in Oprurome. 


Chapter 12 - Dublin/Pleasanton

The description of Dublin/Pleasanton is "You are on a BART platform. The mysterious suburban world of Dublin/Pleasanton surrounds you."

Pelnen is a room.



Chapter 13 - El Cerrito del Norte

The description of El Cerrito del Norte is "You are on a BART platform."

The fire opal jaguar is in El Cerrito del Norte.


Chapter 14 - El Cerrito Plaza

The description of El Cerrito Plaza is "You are on a BART platform."

The sardonyx volcano is in El Cerrito Plaza. 

Chapter 15 - Embarcadero

The description of Embarcadero is "You are on a BART platform underground. The narrow platform is very crowded. The floors are a smooth, swirly white and grey marble."  Embarcadero is a platform. Embarcadero is near MUNI. 

Embarcadero Concourse is up from Embarcadero. Embarcadero Concourse is a concourse. It is near MUNI. The description of Embarcadero Concourse is "A big underground space, stretching for over a city block. The south wall is almost entirely taken up with bike storage behind a decorative metal grille. There is an inscription in granite on the north wall."

An inscription in granite is scenery in Embarcadero Concourse. "-------------------------------------------------------------------------------- [line break]San Francisco gratefully honors the memory of Adrien J Falk, native son, president of the San Francisco Area Rapid Transit District for eight years during the initial planning and development period. His sincerity and unselfish personal commitment to the people of this district engendered an unprecedented spirit of regional unity. A rare achievement by a rare man. [line break]--------------------------------------------------------------------------------"

Market's End is up from Embarcadero Concourse. It is northeast of Mechanics Plaza.  It is a street level station. It is near MUNI.  "Market Street ends here into a complex of interconnected plazas. There is a marketplace here with booths and tents."

The souvenir dealer is a man in Market's End. The description of the souvenir dealer is "He's watching carefully to make sure nothing gets stolen."
The souvenirs booth is scenery in Market's End. "A rack to the side of this tiny booth is festooned with Mexican flags, belt buckles with the eagle and serpent, 49-ers hats and tshirts, and pink woven plastic shopping bags printed with Frida Kahlo's face."


A cheerful shopper is a woman in Market's End. The description of a cheerful shopper is "A cheerful seeming woman laden with shopping bags. She has groceries, flowers, and all kinds of other stuff in re-usable bags. Somehow, she's also holding onto her daughter." 

A wide-eyed child is a girl in Market's End. The description of a wide-eyed child is "A little girl clutching a bottle of Mexican Coca-Cola is staring at everything, holding her mom's hand."


An ice-cream eating lady is in Harry Bridges Plaza. 

A gawking tourist is in Harry Bridges Plaza.


Embarcadero Plaza is west of Market's End. "This sunken plaza is centered around a giant stone sculpture that may once have been a fountain. There are some pleasant grassy areas. Parrots flit among the sturdy palm trees and seagulls wheel overhead."

Vallaincourt Fountain is an object in Embarcadero Plaza. It is fixed in place. It is a supporter.

An azurite wave is in Embarcadero Plaza. 

Harry Bridges Plaza is north of Market's End. "A concrete plaza betwen Market Street and the Ferry Building. "

A scruffy skater is in Harry Bridges Plaza.

A flannel-shirted skater is in Harry Bridges Plaza. 

A smoking guy  is in Harry Bridges Plaza. 

A dancing drag queen is in Harry Bridges Plaza.

A foolish photographer is in Harry Bridges Plaza. 

An astonished little boy is in Harry Bridges Plaza. 




Chapter 16 - Fremont

The description of Fremont is "You are on a BART platform."

Sierra de Gabilin is a room.

Chapter 17 - Fruitvale

The description of Fruitvale is "You are on a BART platform."

Chapter 18 - Glen Park

[The concourse is level with the street, here]

Glen Park is a platform. It is smooth. The description of Glen Park is "You are on a BART platform. Massy slabs of concrete seem to rise solidy out of the earth, like the strong shoulders of an enormous animal. The floors are smooth marble. " 

Glen Park Concourse is up from Glen Park. It is a concourse. It is brick. The description is "What a weird and glorious building. It feels light and airy. [if player is not blind]Soaring glass ceilings criss crossed by deep concrete beams.[end if] There is an amazing marble mosaic across one wall. Other walls are made entirely of thick bottle-like glass."

A marble mosaic is scenery in Glen Park Concourse. The description is "One entire wall is surfaced with different kinds of marble and other smooth, complexly veined stone."

After examining the marble mosaic:
	say "None of the panels of marble and stone are laid at right angles to each other.";
	say "[if player is not blind]Their red and brown glossiness seems to warm you.[end if][if player is blind]The smooth surface seems to glow with warmth.[end if]";
	

	

	

A harried shopper is a woman in Glen Park Concourse. The description of a harried shopper is "This worried looking lady is clutching several grocery bags on one arm and muttering to herself. Her ankles are swollen."

Cross Town Traffic is north of Glen Park Concourse. The description of Cross Town Traffic is "This corner right outside Glen Park station is super busy. It's right next to San Jose Avenue as it comes off Highway 280 and several roads intersect here going into the tiny, cute little downtown for this neighborhood. A brick circle is set into the street, mid-intersection."

Glen Park Library is northwest of Cross Town Traffic. 


[for time travel minus 100]

Glen Canyon is a room.
		
A dairy cow is an animal. It is in Glen Canyon.

Islais Creek is a room.
	
The Giant Powder Company is a room. 
		
The dynamite is in The Giant Powder Company.
	
A hollyleaf cherry tree is in Glen Canyon. A bunch of islay cherries are on the tree.

An obsidian vulture is in Glen Canyon.
	
The Mission Zoo is a room. 

A hot-air balloon is a vehicle. It is in Mission Zoo.
		
Daniel Maloney is a person. He is in Mission Zoo.

A parachute is in a hot-air balloon. It is wearable.

Madame Schell is a person. She is in Mission Zoo.
A trained lion is an animal. It is in Mission Zoo.
A trained lioness is an animal. it is in Mission Zoo.

Professor J Williams is a person. He is in Mission Zoo. The description of Professor J Williams is "The Intrepid Cliff House Bird-Man stands before you."

A high wire is an object. It is a supporter. It is in Mission Zoo.

Elsie St Leon is a person. She is in Mission Zoo.
A white pony is an animal. It is in Mission Zoo.

The monkey house is a closed, transparent, openable container. It is in Mission Zoo.

An educated cockatoo is an animal. It is in Mission Zoo.
Skyrocket the homing pigeon is an animal. It is in Mission Zoo.
	
Morro Castle is a room.


Chapter 19 - Hayward

The description of Hayward is "You are on a BART platform."

Tuibun is a room.

Chapter 20 - Lafayette

The description of Lafayette is "You are on a BART platform."

Chapter 21 - Lake Merritt

The description of Lake Merritt is "You are on a BART platform underground, but parts of the ceiling are open to the concourse above. The medians are tiled in irregular hexagons. The elevator is beautiful, made of glass and gleaming chrome. The floor is smooth slabs of red and black flecked granite."
		
Lake Merritt Concourse is up from Lake Merritt. It is a concourse. It is smooth.

The Oakland Museum is west of Lake Merritt.

The Lake Shore is north of the Oakland Museum. 

Under the Lake is down from the Lake Shore.


Chapter 22 - MacArthur

The description of MacArthur is "You are on a BART platform high in the open air next to a busy freeway. on either side of the station running parallel to the train tracks.  Elegant cement shapes and curves  soar above the main freeway level.  Dirty beige tile faces the platform medians and the floor is polished concrete lined with bumpy brick tiles. "

[concourse below platform]

The tourmaline dog is in MacArthur.

Chapter 23 - Millbrae

The description of Millbrae is "You are on a big, busy, BART platform in the open air. Many people and trains are all around. There are cement statues of commuters in awkward positions on the platform."  Millbrae is smooth.

A powermom statue is an object. It is fixed in place. It is in Millbrae. It is scenery. The description of the powermom is "A cement statue of a woman in an 80s business suit, awkwardly contorted, carrying a briefcase and a diaper bag."

A malachite hurricane is in Millbrae.


Millbrae Concourse is up from Millbrae. It is a concourse.  It is smooth. The description of Millbrae Concourse is "A large platform high up in the air above the train platform and tracks. You can feel the floor vibrate slightly under your feet with the rush of passing BART and Caltrain cars."

Millbrae Control Booth is a room. It is south of Millbrae Concourse. It is smooth. "This enormous funky shaped glass booth is full of mysterious control panels and blinking lights. "


Chapter 24 - Mission 16th St

The description of Mission 16th St is "You are underground, on a BART platform. [if player is not deaf]The haunting sound of train wheels on the rails echoes all around[end if]. [if player is not blind]The platform floor is covered with long brick-red tiles, while the median walls are tiled in light and dark blue, green, gold, and brown tiles like the colors of a tropical beach on a sunny day.[end if]"  
		
The surface of Mission 16th St is brick.

A college student is a man in Mission 16th St. The description of a college student is "A young man wearing a SFSU hoodie and a backpack, headphones in. He is slumped on a bench, scrolling on his phone."

A paint-covered workman is a man in Mission 16th St. The description of a workman is "A middle aged man in paint-spattered work pants and a 49-ers windbreaker. He is talking in Spanish to the guy next to him."

A tired lady is a woman in Mission 16th St. The description of a tired lady is "A woman in a puffy vest sits on a bench. She looks up at the train schedule, sighs, and looks back at her feet."

Mission 16th Concourse is up from Mission 16th St. Mission 16th is a concourse. The surface of Mission 16th Concourse is brick. "[if player is not blind]Low but nicely curved arches made of smooth concrete form the ceiling of this long, busy station. Concrete sculptures molded in relief march up the sides of the enormous stairwell, open to the sky. [end if] [if player is not deaf]Music echoes from the stairwells. The acoustics are great![end if] Crowds of people swirl around the concourse." 


A saxophone player is a man in Mission 16th Concourse. The description of a saxophone player is "A man sitting on a stool by the stairwell plays jazz on a saxophone. The instrument case is open in front of him, containing a scattering of change, dollar bills, and flyers for music shows."

A security guard is a woman in Mission 16th Concourse.  The description of a security guard is "The security guard looks bored."

A station agent is a woman in Mission 16th Concourse. The description of the station agent is "She's in a little plexiglass kiosk next to the ticket readers."

The concrete shapes are scenery in Mission 16th Concourse.  They are artworks. "Big blocky shapes, rectangles, circles, half circles, are scuplted in relief along the rough sides of the enormous open stairwell to the plaza.  You feel more aware of the secret life of buildings. Their bones, their roots. The way they take up space against the sky.[if the player is carrying an ART card]The secretive shapes beckon like doors. You itch to climb them. [end if]"

After examining the concrete shapes:
	display Figure of abstract reliefs;
	say "Their blockiness is playful, reminding you of the shapes of children's toy blocks.";
	say "Yet somehow their heaviness, as it ascends to the ground above, brings to mind the staunchness of determined builders.";
	say "The magic marker seems to tingle for a moment in your pocket.";
	now the magic marker is magical;
	record the noun as experienced;
	

Understand "shapes", "abstract", "cement", "relief", "concrete", "sculptures", and "stairwell" as the concrete shapes.
  
Instead of climbing when the player is in Mission 16th Concourse and the ART card is switched on:
	say "You grip the cement, rough and cool under your hands. It seems to pull you forward.";
	say "Solid, yet somehow fluid. Building-ness infuses your very soul.";
	say "Creation. Making things. Artifice AS NATURE.";
	say "You snap out of your weird obsession with concrete and look around. Wild!";
	now Noisebridge is mapped south of Mission 16th Concourse;
	now the player is in Noisebridge;
	stop the action.
	
Instead of climbing when the player is in Mission 16th Concourse and the ART card is not switched on:
	say "You plot your route mentally, but decide not to climb. Maybe if you were in more of an artistic mood.";
	stop the action.
	

Check switching on the ART card:
	now Hummingbird Station is mapped up of Mission 16th Concourse;
	
Check switching off the ART card:
	now Papel Picado Plaza is mapped up of Mission 16th Concourse;
		
Papel Picado Plaza is a street level station. Papel Picado Plaza is up from Mission 16th Concourse. The surface of Papel Picado Plaza is brick. "A lively streetcorner plaza. Lots of people are hanging around just watching the world go by. [if the player is not blind]The little kiosk holding the elevator is topped with a mosaic and panes of colored glass.  Colorful ironwork railings, blue, green, orange, and pink, line the stairwell down to the station. They're worked to look like Mexican paper cutout art.[end if][if the player is blind]Fancy ironwork railings line the stairwell down to the station.[end if]"

The ironwork railings are a backdrop. They are in Papel Picado Plaza and Plaza del Colibrí. The description is "Elaborately wrought railings in lacy metal line the stairwell down to the station. Each panel is worked in the shape of Mexican paper cutout art; stylized hummingbirds and flowers."

A grizzled veteran is a man in Papel Picado Plaza. The description of a veteran is "A grizzled veteran in a [if the player is not blind]red Jazzy[end if] powerchair. [if the player is not blind]He has some cardboard with writing on it tucked between his back and the seat.[end if]"

A stencil artist is a woman in Papel Picado Plaza. The description of a stencil artist is "A young woman with a big messenger bag over her shoulder, full of cans of spray paint and cardboard stencils. [if the player is not blind]She has metallic lipstick on and at her feet is a designer purse with a chihuhua in it. The chihuahua is wearing a red glittery beret.[end if][if the player is blind]A young woman talking quickly, full of energy. After a bit you realize she is carrying a tiny dog in her purse.[end if]" 

After talking to a stencil artist for the first time:
	say "Her eyes dart around nervously.";
	say "'You've seen my work? E. Claire Bandersnatch. It's all over town.'[line break]";
	say "'Got a cigarette?' she asks you.[line break]";
	say "'Don't be a stranger! Let's talk again soon!'";
	now the printed name of the stencil artist is "E. Claire Bandersnatch";
	now the stencil artist is proper-named;
	record the stencil artist as connected;
	
Instead of giving a cigarette to the stencil artist:	
	now the stencil artist is carrying the noun;
	say "She thanks you.";
	say "'Look, I'll tell you the way in.'";
	say "'The weird blocks in that stairwell will take you in the back way.'";
	say "'Artists share the inward eye.'";
	say "'Plus, it's magical!'";
	record the stencil artist as connected;
	stop the action.

Understand "Claire" or "E Claire" or "Bandersnatch" as the stencil artist when the stencil artist is proper-named.

After talking to the stencil artist:
	say "[one of]Did you like my Chelsea Manning stencils?[or]The sidewalk is the biggest art gallery in the world![or]You can climb into Noisebridge, if you know the way. Helps to be in an altered state![or]Whether you think you can or you can’t, you’re right![then at random]";
	say "She fidgets a bit.";
	say "'Art is the key.'";
	say "'Chaos is a ladder. And a ramp.'";


The gadget seller is a man in Papel Picado Plaza. The description of the gadget seller is "[if the player is not blind]A weatherbeaten man in a 49-ers cap.[end if]"

The gadget table is scenery in Papel Picado Plaza. "Phone cases, cables, chargers, and headphones are laid out on this cheap folding table. The vendor doesn't seem quite ready for business though. He's still unpacking."
		
Old Bank Corner is south of Papel Picado Plaza. The surface of Old Bank Corner is sidewalk. "A crowded street corner in front of an old bank building. People are intent on getting across the street. "
	
A rough sleeper is a man in Old Bank Corner. The description of a rough sleeper is "A scruffy man is passed out on the sidewalk next to a trash bag full of scavenged cans."

Plaza del Colibrí is west of Old Bank Corner. The surface of Plaza del Colibrí is brick. "Around the stairwell down to the station, there are metal railings [if the player is not blind]that look like Mexican cut paper art, orange, pink, green, and blue hummingbirds and flowers[end if]. There are low benches around the edges of the stairwell for people to sit on. A low building in the corner has a hummingbird mural." 

A hummingbird mural is scenery in Plaza del Colibrí. "These mosaic and metal murals show perky hummingbirds amid swirling flowers and branches. There is a bronze plaque under the murals."


A bronze plaque is scenery in Plaza del Colibrí. "Dedicated to Victor Miller (1948-2002) Founder and publisher of the New Mission News, the voice of the Inner Mission for over 20 years. Victor was a tireless advocate and watchdog for the community whose vision and journalistic skills provided the most perceptive and trustworthy observations of the Mission Neighborhood. 'Comforting the Afflicted and Affecting the Comfortable since 1980'".

A concrete pillar is an object in Plaza del Colibrí. It is fixed in place. It is a supporter. The description of a concrete pillar is "A waist-high square pillar, just big enough to sit on."

An old guy in a brokendown manual wheelchair is a man in Plaza del Colibrí. The description of an old guy is "A guy slumped over in a rickety wheelchair with no footrests. He's moving slowly backwards, propelling the chair with his feet. The chair has 'SFGH' printed across the back." 

After talking to an old guy for the first time:
	say "'You're one of them, aren't you? It doesn't make any sense. What do you think you're looking at!'";
	say "He seems angry.";
	
A cheerful ocarina player is a man in Plaza del Colibrí. The description of a cheerful man is "A lively, smiling man sitting on a bench, playing cheerful melodies on a little ocarina. He has long black hair and glasses and is wearing a broad brimmed hat."

After talking to a cheerful ocarina player for the first time:
	say "'Hey there music lover.'[line break]";
	say "Name's Victor. Victor Zaballa.";
	say "You shake hands with Victor.";
	now the printed name of the cheerful ocarina player is "Victor the ocarina player";
	now the cheerful ocarina player is proper-named;
	record the ocarina player as connected;
	
Understand "Victor" or "ocarina player" as the cheerful ocarina player when the cheerful ocarina player is proper-named.
	
After talking to a cheerful ocarina player:
	say "'So, you've noticed my art. I work mainly in metal and tile.'[line break]";
	say "You chat about the neighborhood, casually.";
	say "'You seem like a well-travelled person, able to appreciate art.'";
	say "'It's been nice talking with you.'";
	say "'Did you know? The hummingbird is sacred to Huitzilpochtli.'[line break]";
	record the ocarina player as connected;

Understand "Victor" as the cheerful man when the cheerful man is proper-named.


[secret room accessible from ART card]
Hummingbird Station is a room. The surface of Hummingbird Station is smooth. The description is "It's like the ironwork railing has come to life. A plaza like an enormous greenhouse and aviary, partially roofed over by glass but still open at the sides. Birds are flitting and calling. Flowering vines climb the buildings, railings, lightpoles and the trunks of the tall palms. There are wide benches among bubbling fountains and pools around the stairwell."

A carnelian flower is an object. It is in Plaza del Colibrí. "This stylized flower is sculpted in carnelian, smooth and polished." The description of the carnelian flower is "It shimmers, slipping in time. You think of sacrifice and the blood of captive warriors." The scent of the carnelian flower is "Cold stone; ambergris; thyme."

	


	[this location can be cut entirely	
California Savings Corner is north of Plaza del Colibrí. It is west of Mission 16th Street Plaza. The surface of California Savings Corner is sidewalk. "This neighborhood bank building is still impressive, but grimy and faded with the years. The real life of this street corner is in the plazas across the street."]

		
Noisebridge is a room. The surface of Noisebridge is smooth. The description of Noisebridge is "You are in a large hackerspace. People are messing around with laptops in the Hackitorium, poking at electronic gadgets, reading in the library area, and playing video games over by the windows. There are piles of junk up against one wall."

The workbench is a supporter in Noisebridge. It is fixed in place.

The 3-D printer is a device in Noisebridge. It is fixed in place. "A weird, boxy gadget on a workbench. It has a big label that says '3-D Printer' [if the player is not blind]in smudgy black letters[end if]. When you put your hand on it, you feel a strange, tingling energy."

The 4-D printer is a device. "A weird, boxy gadget on a workbench. It has a big label that says '4-D Printer' [if the player is not blind]in smudgy black letters[end if]. It has a tangible aura of weirdness surrounding it for a few feet in every direction."

The beer opener shaped like a Dalek is an object. The description is "A little gizmo, roughly printed, shaped like a Dalek from Doctor Who. When you put a penny in its slot, it works as a bottle opener.";

The 4-D Timelock is a wearable object. The description is "A bizarre gadget made of something tingling and electric. You can't figure out where it begins and ends. It might make a nice bracelet.";

 
Instead of switching on the 3-D printer:
	say "The 3-D printer clatters and shakes.";
	say "Plastic from a reel above feeds into the machine.";
	say "A little nozzle slowly zigzags its way up and down, across and back.";
	say "An object appears very slowly and then is ejected onto the workbench.";
	now the beer opener is on the workbench.
	
Instead of switching on the 4-D printer for the first time:
	say "The 4-D printer clatters and shakes.";
	say "Little nozzles zip around in multiple directions all at once, going so fast you can barely tell what's happening.";
	say "Spools of ethereal metals and strands of light feed into the machine.";
	say "An object appears gradually and then is ejected onto the workbench.";
	now the 4-D timelock is on the workbench.
	
West of Noisebridge is the Hackitorium. The description of the Hackitorium is "A long open part of Noisebridge, where people are working on their projects at a big long central table. There's a huge structure with flashing lights to one side, and a pastel colored mural on the wall."

A huge structure is scenery in the Hackitorium. The description of a huge structure is "Beer bottles filled with LEDs and electronics are packed into plastic milk crates, stacked ten feet high. [if the player is not blind]Colorful flashing lights ripple across the structure hypnotically.[end if] A sign to the side of it says 'FLASCHENTASCHEN.'"

A pastel colored mural is scenery in the Hackitorium. The description of a pastel colored mural is "Swirling pastel paint fills one wall with scenes of Nikola Tesla and Margaret Hamilton."

A robot is a kind of person. Consenso is a robot in the Hackitorium.



Rainglass Plaza is a room.	The surface of Rainglass Plaza is smooth.
		



Laguna de Manantial is a room.  The surface of Laguna de Manantial is sand.

Ojo de Agua is a room. The surface of Ojo de Agua is gravel.

Mission Dolores is a room.  The surface of Mission Dolores is bumpy.
Padre Palóu is a man. He is in Mission Dolores.
Francisca is a girl. She is in Mission Dolores. [daughter of Alvarez, one of the soldiers]

Supitaxe is a man. He is in Mission Dolores. 
Guilicse is a man. He is in Mission Dolores.
Mutacxe is a man. He is in Mission Dolores.
	 [these are some of the Huchiun men who first visited the vessel San Carlos in 1775]

Chutchui is a room. The surface of Chutchui is grassy. 
	
A large roundhouse is an open enterable container in Chutchui. 
A pine house is an open enterable container in Chutchui.
A redwood house is an open enterable container in Chutchui.

Chamis is a man. He is in Chutchui.
Paszém is a girl. She is in Chutchui.  [they married]

A tall red-colored staff is an object. Chamis carries the staff.

Sitlintac is a room.  [manzanita, wild violets]

Pilmo is a boy. He is in Sitlintac.
Taulvo is a boy. He is in Sitlintac.


					

Chapter 25 - Mission 24th St

The description of Mission 24th St is "You are underground, on a BART platform. [if the player is not deaf]The hollow sound of vibrating train rails echoes through the station. Boxy concrete arches run overhead and then frame the sides of the train tunnel. [end if][if the player is not blind]On the platform itself, the floor is covered with long brick-red tiles, while the median walls are tiled in muted orange, gold, and brown, like a desert sunset.[end if]" 

Mission 24th Concourse is up from Mission 24th St. Mission 24th Concourse is a concourse. "[if the player is not blind]Enormous concrete buttresses soar overhead, like a futuristic 70s airplane hangar.[end if] [if the player is not deaf]Music echoes hauntingly from a monumental stairwell rising up to the plaza, combining with the wild harmonics of trains below.[end if] [if the player is not blind]Abstract cement reliefs are sculpted all up and down the oddly corrugated sides of the stairwell, open to the sky.[end if][if the player is blind and the player is deaf]A big open space, full of people walking around, mostly underground but you feel the air and light from an enormous, deep, open stairwell to the plaza above. Another flight of stairs leads down to the train platform.[end if]" 

The abstract reliefs are scenery. They are an artwork. They are in Mission 24th Concourse.  "[if the player is blind]In the stairwell, you feel along the wall. [end if]Big blocky shapes, rectangles, circles, half circles, are scuplted in relief along the rough sides of the enormous open stairwell to the plaza. They're reminiscent of brutalist skyscrapers and stoplights, a pleasing jumble of forms decorating the space."

Understand "abstract", "cement", and "reliefs" as the abstract reliefs.  

Figure of abstract reliefs is the file "abstract_reliefs_24.jpg". 

After examining the abstract reliefs:
	display Figure of abstract reliefs;
	say "Their huge shapes are playful, reminding you of children's toy blocks.";
	say "Yet somehow their heaviness, as it ascends to the ground above, brings to mind the staunchness of determined builders.";
	say "The magic marker seems to tingle for a moment in your pocket.";
	now the magic marker is magical;
	record the noun as experienced;
	

Calle 24 Plaza is up from Mission 24th Concourse. The surface of Calle 24 Plaza is bumpy.  "All around you are little shops and restaurants, people talking, buses pulling up to the stops on Mission and on 24th Street, music booming from cars going by. [if the player is not blind]A large open stairwell goes down to the station concourse.  To the east there's a mural that says SOCK. Another huge mural of a train runs across the wall of the taqueria bordering the plaza.[end if]"

The train mural is scenery in Calle 24 Plaza. It is an artwork. "A mural of a gleaming BART train carried on the backs of determined workers amid a geometric cityscape. Their faces, barely sketched in, are brown, with broad high cheekbones."  

Figure of train mural is the file "train_mural.jpg". 

After examining the train mural:
	display Figure of train mural;	
	say "You think of the struggles of the neighborhood over time.";
	say "When the train came, it changed things, forever.";
	say "Tunnels through the earth, upheavals felt by the planet and its residents.";
	say "People could move more freely through the city.";
	say "Inevitably, something was lost.";
	say "Your understanding of art deepens.";
	say "The magic marker seems to tingle for a moment in your pocket.";
	now the magic marker is magical;

The sock mural is scenery in Calle 24 Plaza. It is an artwork. "A dynamic mural covers the east wall of the plaza, showing a cable car, the Bay and a view of Alcatraz; portraits of two men, and the words DUER, SOCK, and DEMON. Some of the Def Crown Villains, originally from Los Angeles, have collaborated here with Sock, a well known artist from France." 


A woman called a tamale lady is in Calle 24 Plaza. The description of a tamale lady is "A short, smiling woman in jeans and an army jacket stands next to a cooler on wheels." 


After talking to the tamale lady for the first time:
	say "She says, 'It's been a while since I've seen you, friend!'";
	say "'Don't forget your pal Virginia now that you're back in town.'";
	say "She radiates warmth and kindness.";
	now the tamale lady is proper-named;
	record the noun as connected;
	
Understand "Virginia" as the tamale lady.
	
After talking to the tamale lady:
	say "[one of]She hugs you. 'Hey baby. Everything good?[or]What’s new?'[or]When you’re a baby, you have your mama to take care of you, but now that you’re grown up you have to take care of yourself.[or]I love to feed people, you know? Everybody's gotta eat.[then at random]";

Every turn when the player can see a tamale lady and five is a factor of the turn count and the player is not deaf:
	say "The tamale lady says [one of]'Tamales de pollo!'[or]'Tamales!'[or]'Tamales de carne!'[or]'I don’t know you but i love you so don’t do the chemicals honey![then at random]";

A cooler on wheels is an openable container. it is scenery. It is in Calle 24 Plaza.  The description is "A [if player is not blind]red and white[end if] cooler with a hinged lid." The sound of the cooler is "As the tamale seller handles the cooler, opening and closing the lid, you can hear that it's made of hollow plastic." 

A tamal is an edible thing. Understand "tamale" as a tamal. 20 tamals are in the cooler on wheels. The price of a tamal is $2.00. The description is "A delicious-smelling tamal wrapped in banana leaves, paper, and foil."  

Does the player mean buying a tamal: it is very likely.

Instead of taking the cooler on wheels:
	say "But that belongs to the nice tamale lady!";

A hipster dude on a motorized unicycle is a man in Calle 24 Plaza. The description of a hipster dude is "A guy [if player is not blind]in jeans, a hoodie, and a black helmet[end if] is standing on an electric unicycle, tootling along."


A yelling preacher is a person. In Calle 24 Plaza is a yelling preacher. The description of the preacher is "A short man yells fervently in Spanish into a microphone. You recognize some things from the Bible[if player is not deaf], though it's hard to understand him from the low quality amp at his feet[end if]."

The orquestra is a person. The description of the orquestra is "A little group of musicians, some sitting on milk crates or buckets with their instruments, some standing and swaying gently as they play." Understand "musicians" as the orquestra.


Baile is a scene. Baile begins when the player is in Calle 24 Plaza for three turns.

When Baile begins: 
	now the orquestra is in Calle 24 Plaza;
	say "A group of musicians has settled under a portable shade pavilion in the plaza. They start grooving out, playing Cuban oldies."

Every turn during Baile:	
	repeat through Table of Baile Events:
		if player is in Calle 24 Plaza:
			say "[event entry][paragraph break]";
		blank out the whole row;
		rule succeeds. 

Instead of talking to anyone during Baile:
	say "You smile and bob your head a bit, grooving to the music with the people around you.";
	
Baile ends when the number of filled rows in the Table of Baile Events is 0.

When Baile ends:
	now the orquestra is nowhere;

Table of Baile events
event
"[if player is not blind]A middle-aged Chicana lady in sweat pants and sneakers gets up to dance. She's in the groove![end if][if player is blind]Dancers are getting up and starting to jam.[end if]"
"A guy [if player is not blind]wearing flip-flops[end if] puts down his shopping bag to dance. Fancy footwork!"
"The lead singer of Orquestra La 24 croons fervently into his microphone. [if player is not blind]You can't stop noticing his hair.[end if]"
"A little group of older ladies is laughing and clapping from the benches[if player is not blind], some of them with walkers[end if]."
"The flute player steps forward and plays[if player is not blind] with his eyes closed[end if]. [if player is not deaf]The sweet piping of the charanga soars over the syncopated rhythms.[end if]"
"Sun, a gentle breeze, the smell of delicious food from the nearby taqueria, everyone enjoying the music; you feel happiness sink into your bones."
"The guys playing the timbales and maracas are getting super into it. Their rhythms intensify and get more complex!"
"The city worker sweeping the plaza starts dancing a little with his broom and dustpan."
"A tourist happily films the scene, turning to take in the crowd, the passers-by, and the musicians. "
"The musicians stop, chatting companionably as they pack up."
"The crowds are leaving now that Orquestra La 24 is done for the day."


Along Mission is northeast of Calle 24 Plaza. It is bumpy.  Along Mission is south of Old Bank Corner. The description is "Cruising along Mission between 16th and 24th stations, you pass a jumble of shops, restaurants, bars, and people all going about their business."	

A woman called a stroller-pushing lady is in Along Mission. The description of the stroller-pushing lady is "A lady in bright lipstick and a wig slightly askew, pushing a stroller. Wait . . . it's not a baby in there. It's a chihuahua in a sweater and the sweater matches its owner's sweater."
													
A accordion player is a man in Along Mission. The description of an accordion player is "A man [if player is not blind]in full mariachi uniform covered in bright buttons [end if], carrying an accordion."

A guitar player is a man in Along Mission. The description of a guitar player is "A mariachi carring a big full bodied guitar and pulling a hand truck loaded with a little amp."

A perfectly good cigarette is in Along Mission. 

Donuts Corner is west of Calle 24 Plaza. The surface of Donuts Corner is sidewalk. "Just outside the Chinese Food and Donuts shop, this lively streetcorner has buses pulling up along 24th Street, many cars going by, people crossing the street or standing around[if player is not deaf], music blaring from passing cars and from the shops[end if]. [if player is not blind]Along Mission, high overhead, washingtonia palms stretch into the sky.[end if] To the east, there's another plaza."


West of Donuts Corner is a room called Chinese Food and Donuts. 

The description of Chinese Food is "The donut shop is warm and bright. It smells like tasty food and baked goods.[if the player is not blind] One display case holds rows of donuts. Another has steam trays full of hot food.[end if]" 

A pink-jacketed girl is in Chinese Food. The description is "A little girl[if player is not blind] with long braids and a pink jacket. She has a bedazzled Dora the Explorer backpack.[end if][if player is blind] trying to decide what kind of donut to get.[end if]"

An impatient lady is in Chinese Food. "Behind the counter, a lady is waiting impatiently for you to make up your mind what you want." The description of an impatient lady is "She says, 'Next! You want a donut? Coconut donut? Plain? You want eggrolls?'"  

The display case is scenery in Chinese Food. It is a container. The description is "A glass-fronted food display running along the length of the counter, with donuts on one side and steam trays of egg rolls and other hot food on the other." 

An eggroll is an edible thing in the display case. The price of the eggroll is $1.00. The description is "A greasy eggroll in a waxed paper jacket."  Understand "eggrolls" as an eggroll.

A plain donut is an edible thing in the display case. The price of the plain donut is $1.00. The description is "A donut, simultanously dry and greasy, in a waxed paper jacket."

A coconut donut is an edible thing in the display case. The price of the coconut donut is $1.00. The description is "A donut, simultanously dry and greasy, in a waxed paper jacket. Little bits of coconut are falling off it onto your hands."


Osage Alley is southwest of Circle Plaza. It is bumpy. The description of Osage Alley is "This narrow alley leads to a streetcorner plaza opening out to the northeast. [if the player is not blind]Walls and garage doors are covered in colorful paintings, murals, swirls and wildstyle letters. You notice a large mural that says something about coffee. Tattered posters, stickers, and hastily scribbled tagging, in layers built up over time, are on the walls and light poles.[end if][if the player is blind]It smells of fresh spray paint and car exhaust.[end if]"

[The paintings are scenery in Osage Alley. The description is "[if the player is not blind]Vivid scrawls, mostly letters, hard for you to read as they're so intertwined and wildly shaped. In one exuberant splash of color to the north, there's the door to your home.[end if][if the player is blind]Trash and old spray paint cans litter the alley. The door to your home is in a stone wall to the north.[end if]"]

The coffee mural is scenery in Osage Alley. It is an artwork. Understand "paintings", "mural", "wall" and "coffee" as the coffee mural. The description is "[if the player is not blind]A huge mural in bright colors splashes across the building to the west of the plaza. Two wide eyed cartoon characters in Aztec regalia look out from the mural. Above them is a cartoon street sign that reads COFFEE and across it, MISSION. Below the mural is a sloping area and a few steps that make a sort of stage. [end if][if the player is blind]A young guy next to you suddenly speaks up. 'Oh, you're curious about the mural? I know some guys who worked on that with Mel Waters, he's got stuff all over the Mission. The cafe people, Coffee and Mission, they like it, and the characters, they're like, I dunno, chibi Aztec king and queen or something. You ever see Danza Azteca? They come to the pow-wows. Big feathers, these sort of shell things on their ankles. [line break]He goes back to shaking his can of spray paint.[end if]" 

After examining the coffee mural:
	say "You think about the roots of the neighborhood.";
	say "The people who came from the south, with the padres from Spain.";
	say "Vaqueros, cooks, grinding the corn, drawing the water.";
	say "Feathers, stone, and shell, ornaments of their ancestors, met again in the Ohlone people.";
	say "Your understanding of art deepens.";
	say "The magic marker seems to tingle for a moment in your pocket.";
	now the magic marker is magical;


Circle Plaza is south of Donuts Corner. It is bumpy.
The description of Circle Plaza is "[if player is not blind]You head into the crowds of this busy space built around an unusual circular wall, like a giant well made of bricks. People are selling stuff from tables and little booths. Across 24th street to the north, there's a donut shop. [end if][if player is not deaf]Many kinds of music are playing at once. [end if][if player is not hearing or player is not sighted]This is a typical, busy, open space on Mission Street. It's super familiar; the alley to your home is just to the southwest of this lively plaza.[end if]".

Down from Circle Plaza is Mission 24th Concourse. 

The sound of Circle Plaza is "Norteño blasts its cheerful accordions from a booth, saxophone notes float up from the huge, round stairwell which goes down to the station, songs blare from passing cars."

The stairwell is scenery in Circle Plaza. Understand "wall" and "well" and "bricks" as the stairwell. "Burnt red bricks smoothly curve up around the edges of the wall around the big stairwell. There are a few people sitting with their backs against the curve. As you study the unusual structure, you notice metal gratings set into the plaza, one long strip near the edge where the plaza turns to sidewalk, and gratings around small, spindly saplings. The metal gratings have a circular pattern."

[   A couple of medium-sized trees grow out of a planter in a space at the top of the wall.  ]

The metal gratings are scenery in Circle Plaza. "Overlapping concentric circles make an unusual and beautiful pattern in the dark metal of these iron gratings. You think of raindrops in water, clocks, gears interlocking."

Trees, the steps, and the stage are scenery in Circle Plaza. 





A sidewalk artist is a man in Circle Plaza. The description of a sidewalk artist is "[if proper-named]Buddy [otherwise] A scruffy man[end if] is lying on the sidewalk, drawing in a carefree way on a sketchpad with sharpie markers scattered all around him."

A sidewalk artist carries a sketchpad. The description of the sketchpad is "[if the player is blind]The artist says 'I love to draw, are you interested? I'm drawing Happy Tuesday!'[end if][if the player is not blind]A cheap sketch pad with a drawing of the words 'Happy Tuesday' in rainbow marker.[end if]"

After talking to a sidewalk artist for the first time:
	say "The artist looks up at you. 'Oh hey.' He says. 'Happy Tuesday!'";
	say "'Name's Buddy. I like to draw the days.'[line break]";
	say "'You seem pretty nice, I don't mind asking you, got any food?'";
	now the printed name of the sidewalk artist is "Buddy the sidewalk artist";
	now the sidewalk artist is proper-named;


	
Understand "Buddy" as the sidewalk artist.

Instead of giving an edible thing to the artist for the first time:
	say "'Hey! Thanks for [the noun]!'";
	say "'You like my drawing? It's Tuesday.'";
	say "'That's because it's Tuesday today. It can be Tuesday other times too.'";
	say "'Especially right here in the plaza.'";
	say "Buddy thinks for a minute, considering you.";
	say "'Time is what you make of it. What with that magic marker and all.'";
	say "Buddy laughs and goes back to his sketchpad.";
	say "His teeth are disturbingly bad.";
	now the artist is carrying the noun;
	record the artist as connected;
	stop the action;

Instead of giving an edible thing to the artist:
	now the artist is carrying the noun;
	say "Hey! Thanks for [the noun]!"; 
	
	
A flower seller is a woman. In Donuts Corner is a flower seller. The description of a flower seller is "[if the player is not blind]A short, smiling woman in a baseball hat and a red checked scarf pushes her wheely cart full of roses and carnations. Her jacket has a ladybug pin. [end if][if player is blind]There's a short woman just next to you, fussing over a metal cart.[end if]" 

Understand "Mariquita" as the flower seller when the flower seller is proper-named.

[Does the player mean buying a little bunch of carnations when the location of the player is Donuts Corner: it is likely.]

Instead of talking to the flower seller for the first time:
	say "You stop and chat with her. She's very friendly. [line break]Her name is Mariquita.[line break]Oh my. Did she just say what you think she said?![line break]Outrageous. You burst out laughing.";
	Now the printed name of the flower seller is "Mariquita the flower seller";
	now the flower seller is proper-named;
	record the flower seller as connected;

Every turn when five is a factor of the turn count and the flower seller is proper-named and the player can see a flower seller and the player is not blind: 
    say "Mariquita [one of] [or]beams at you with a big happy grin.[or]calls out, 'Flores!'[or]offers you a little bunch of carnations tied with string.[or]shares a coffee with a friend.[or]fusses over her bunches of flowers, arranging them nicely.[or]watches the people passing by.[or]smiles as she stops to talk with a friend.[as decreasingly likely outcomes]"

A shopping cart is an open transparent container. It is scenery. It is in Donuts Corner. The description of the shopping cart is "A metal folding shopping cart on wheels. "

The little bunch of carnations is a thing in the shopping cart. The price of the carnations is $1.00. The description is "A bunch of red carnations, stems wrapped in paper and tied with green twine."  Understand "flowers" and "flower" as the little bunch of carnations.

Instead of taking the cart:
	say "But that belongs to Mariquita! And she's so nice.";


Calle 24 Corner is east of Circle Plaza. The surface of Calle 24 Corner is sidewalk. "This busy street corner by the McDonalds is grimy. It's basically a crowded spot where people wait to cross the street. Across Mission to the west, there's a nice plaza with a busy market. Across 24th Street to the north, another lovely plaza with musicians, preachers, and some places to sit. [if player is not Deaf]Classical music is blasting from hidden speakers at an obnoxious level, meant to drive loiterers away.[end if]" 

Calle 24 Corner is south of Calle 24 Plaza. The surface of Calle 24 Corner is sidewalk.

A raccoon is a kind of animal.  In Calle 24 Corner is a raccoon. The description of the raccoon is "A greasy looking plump raccoon. It's battered, but unbowed."  
Every turn when the player can see a raccoon and the turn count is even: 
    say "A raccoon [one of]hauls itsef out of a concrete trash bin[or]skulks into a nearby alleyway[or]hides in a little nook, eating some discarded fries[or]has a little nap in a pile of trash[then at random]."



A guy in a yellow vest is a man in Calle 24 Corner. The description of the guy is "A guy in a high visibility vest, sweeping up trash. He's carrying a dustpan on a long handle. He seems a bit careworn."


[Once you swipe the art card in Mission 24th]

Brutalist Plaza is a room.  It is uneven. "You pick your way through paths around enormous, rough-hewn blocks of concrete and stone. They tower overhead like the tufa mounds of Mono Lake or a cityscape in a dream. A little to the southwest, the path broadens."

Times Circle is southwest of Brutalist Plaza. It is bumpy. "A plaza opens up before you, a dream echo of the circular plaza of the world you know best. Underfoot, an enormous circle split into sections is set into the stones." 

Manastabal is a woman. 

After examining the first ring:
	say "A woman emerges from behind the massive granite steles.";
	now Manastabal is in Times Circle;
	say "'Welcome, traveller,' she says. 'I am Manastabal, your guide.'";
	say "'You will be drawn to the sites of power, on the line of blood, of sacrifice.";
	say "'On this red line, find the day-glyphs to complete the calendar.";
	say "'The creations of this world lie before you.";
	say "'Deepen your connections to the land and its people.";
	say "'Apologies. I'm out of time.";
	say "She thinks a moment, then adds, 'Compassion is the key to paradise.'";
	say "Manastabal swirls her cloak and melts back into the shadows.";
	now Manastabal is nowhere;

An artifact is a kind of thing.
The greenstone caiman, the malachite hurricane, the moonstone house, the serpentinite lizard, the turquoise serpent, the quartz skull, the aventurine deer, the quartzite rabbit, the azurite wave, the tourmaline dog, the bloodstone monkey, the stone tuft of grass, the jasper reed, the fire opal jaguar, the granite eagle, the obsidian vulture, the sardonyx volcano, the obsidian knife, the amethyst cloud, and the carnelian flower are artifacts.

The calendar is a fixed in place container in Times Circle. The calendar is scenery. The description of the calendar is "An enormous Central American calendar circle. You've heard of them before -- the most famous is the Aztec sun stone of Mexico City. Around the edges of the innermost or first ring are 20 divisions, each containing a different hollowed out space in elaborate shapes. The first ring is oddly compelling. [if the calendar does not contain an artifact]You wish you could read the glyphs. [end if][if the calendar contains an artifact][paragraph break]The calendar glyphs are glowing with strange energy! [end if][if the calendar contains 20 artifacts]The sun circle begins to shake. It floats up into the air![end if]" 

Understand "calendar", "circle", "stones", "ground" and "sun stone" as the calendar.
Understand "ring" or "divisions"  or "glyphs" as the first ring.  

The first ring is scenery in Times Circle. "The hollow glyphs in the first circle draw your attention from the top, around the ring counterclockwise. Dreamlike, you understand what they represent. [paragraph break]
Cipactli, the Caiman[if the greenstone caiman is in the calendar] (filled with the greenstone caiman) (glowing)[end if].[line break]
Ehēcatl, Wind[if the malachite hurricane is in the calendar] (filled with the malachite hurricane)(glowing)[end if].[line break]
Calli, House[if the moonstone house is in the calendar] (filled with the moonstone house) (glowing)[end if].[line break]
Cuetzpalin, the Lizard[if the serpentinite lizard is in the calendar] (filled with the serpentinite lizard) (glowing)[end if].[line break]
Cõātl, the Serpent[if the turquoise serpent is in the calendar] (filled with the turquoise serpent) (glowing)[end if].[line break]
Miquiztli, Death[if the quartz skull is in the calendar] (filled with the quartz skull) (glowing)[end if].[line break]
Mazātl, the Deer[if the aventurine deer is in the calendar] (filled with the aventurine deer) (glowing)[end if].[line break]
Tōchtli, the Rabbit[if the quartzite rabbit is in the calendar] (filled with the quartzite rabbit) (glowing)[end if].[line break]
Ātl, Water[if the azurite wave is in the calendar] (filled with the azurite wave) (glowing)[end if].[line break]
Izcuīntli, the Dog[if the tourmaline dog is in the calendar] (filled with the tourmaline dog) (glowing)[end if].[line break]
Ozomahtli, the Monkey[if the bloodstone monkey is in the calendar] (filled with the bloodstone monkey) (glowing)[end if].[line break]
Malīnalli, Grass[if the stone tuft of grass is in the calendar] (filled with the stone tuft of grass) (glowing)[end if].[line break]
Ācatl, Reed[if the jasper reed is in the calendar] (filled with the jasper reed) (glowing) [end if].[line break]
Ocēlōtl, Jaguar[if the fire opal jaguar is in the calendar] (filled with the fire opal jaguar) (glowing)[end if]. [line break]
Cuāuhtli, Eagle[if the granite eagle is in the calendar] (filled with the granite eagle) (glowing)[end if]. [line break]
Cōzcacuāuhtli, Vulture[if the obsidian vulture is in the calendar] (filled with the obsidian vulture)  (glowing)[end if]. [line break]
Ōlīn, Earthquake[if the sardonyx volcano is in the calendar] (filled with the sardonyx volcano) (glowing)[end if].[line break]
Tecpatl, Obsidian Knife[if the obsidian knife is in the calendar] (filled with the obsidian knife) (glowing)[end if].[line break]
Quiyahuitl, Rain[if the amethyst cloud is in the calendar] (filled with the amethyst cloud) (glowing)[end if].[line break]
Xōchitl, Flower[if the carnelian flower is in the calendar]  (filled with the carnelian flower) (glowing)[end if]."


Before taking an artifact, record the noun as found.

Before inserting an artifact into:
	if the second noun is the calendar:
		record the noun as placed;
	continue the action.

To record (T - artifact) as found: 
	choose row with a citation of T in Table of Artifacts Achieved; 
	if there is no found entry: 
		now found entry is the time of day; 
		increase the score by the points entry.

To record (T - artifact) as placed: 
	choose row with a citation of T in Table of Artifacts Achieved; 
	if there is no placed entry:
		now placed entry is the time of day;
		increase the score by the points entry.

Table of Artifacts Achieved
Points	Citation	Found (a time)	Placed (a time)
5	greenstone caiman	
5	malachite hurricane
5	moonstone house
5	serpentinite lizard
5	turquoise serpent
5	quartz skull
5	aventurine deer
5	quartzite rabbit
5	azurite wave
5	tourmaline dog
5	bloodstone monkey
5	stone tuft of grass
5	jasper reed
5	fire opal jaguar
5	granite eagle
5	obsidian vulture
5	sardonyx volcano
5	obsidian knife
5	amethyst cloud
5	carnelian flower


After switching on the ART card:
	now Brutalist Plaza is mapped up of Mission 24th Concourse;
	now Mission 24th Concourse is mapped down of Brutalist Plaza;
	
After switching off the ART card:
	now Calle 24 Plaza is mapped up of Mission 24th Concourse;
	now Mission 24th Concourse is mapped down of Calle 24 Plaza;
	
After writing on the ART card:
	now Calle 24 Plaza is mapped up of Mission 24th Concourse.  
	

[
After you've examined each artwork in mission 24th, an artist appears and talks with you
and the magic marker activates.  check in the table? or...?
	
]




Before examining an artwork, record the noun as experienced.

To record (E - artwork) as experienced: 
	choose row with a reference of E in Table of Works; 
	say "Your understanding of art deepens.";
	if there is no experienced entry: 
		now experienced entry is the time of day; 
		
Table of Works 
reference	station	artist	year (a number)	experienced (a time)
coffee mural	"Mission 24th"	"Mark Bode, Mel Waters, Nite Owl, Dagon, Dino and Free"	2016
train mural	"Mission 24th"	"Michael Rios with Anthony Machado and Richard Montez"	1975
abstract reliefs	"Mission 24th"	"William George Mitchell"	1965
ironwork railings	"Mission 16th"	"Victor Zaballa"	2003
concrete shapes	"Mission 16th"	"William George Mitchell"	1965
huge structure	"Mission 16th"	"Jarrod, Miloh, Rubin, Hzeller et al"	2016
sock mural	"Mission 16th"	"Duer, Sock, and Demon"	2010
marble mosaic	"Glen Park"	"Ernest Born"	1973	

Listing works is an action applying to nothing.

Understand "works" or "artworks" as listing works.

Report listing works:
	say "Artworks you've considered recently: [line break]";
	repeat with N running from 1 to the number of rows in the Table of Works:
		choose row N in the Table of Works;
		if there is an experienced entry : 
			say "[reference entry], by [artist entry], at [station entry]." 	
			


To record (P - person) as connected:
	choose row with a name of P in Table of Friendships;
	now the connected entry is the connected entry plus one;
	say "You feel connected to the people of this place and time.";

	
Table of Friendships
name	station	connected (number)
flower seller	"Mission 24th"	0
sidewalk artist	"Mission 24th"	0	
tamale lady	"Mission 24th"	0
stencil artist	"Mission 16th"	0
ocarina player	"Mission 16th"	0



Listing friends is an action applying to nothing.

Understand "friends" as listing friends.

Report listing friends:
	say "Friends you've made recently: [line break]";
	repeat with N running from 1 to the number of rows in the Table of Friendships:
		choose row N in the Table of Friendships;
		if the connected entry is greater than 0: 
			say "[name entry], at [station entry]." 


Chapter 26 - Montgomery

The description of Montgomery is "You are on a BART platform underground. It's crowded! The walls are tiled with bumpy white hexagons, like a weird bubble wrap beehive. The floor is old looking bricks laid down in a zig-zag pattern."  Montgomery is a platform. Montgomery is near MUNI. 

Montgomery Concourse is up from Montgomery. Montgomery Concourse is a concourse. It is near MUNI.

Montgomery Plaza is up from Montgomery Concourse.  It is a street level station. It is near MUNI.  


The jewelry table is scenery in Montgomery Plaza. "You are overwhelmed by the array of cheap rings with big semi-precious stones, earrings made of tiny feathers, and chunky silver bracelets in neat rows."

An erhu player is a man in Montgomery Plaza.

A slender erhu is carried by an erhu player.

The bloodstone monkey is in Montgomery Plaza. 

The Transamerica Pyramid is northwest of Montgomery Plaza. 

The Admission Day Monument is a fixed in place object in Montgomery Plaza. 

Fountain Plaza is southwest of Montgomery Plaza.

Lotta's Fountain is a fixed in place object in Fountain Plaza. 

Mechanics Plaza is northeast of Montgomery Plaza. 

The Mechanics Monument is a fixed in place object in Mechanics Plaza. It is a supporter. 




Chapter 27 - North Berkeley

The description of North Berkeley is "You are on a BART platform, open to the concourse above. The floor is a varigated red brick. The station feels very empty."  North Berkeley is a platform. 

North Berkeley Concourse is up from North Berkeley.  It is a concourse.





Chapter 28 - North Concord/Martinez

The description of North Concord/Martinez is "You are on a BART platform."

Karkin is a room.

Chapter 29 - Oakland 12th St

The description of Oakland 12th St is "You are on a BART platform underground. Narrow, glazed red bricks line the platform median, giving it an old timey feeling. The floor is mottled marble or granite rectangles." Oakland 12th St is a platform.

Oakland 12th St Concourse is up from Oakland 12th St. It is a concourse. 

A gothy teenager is a girl in Oakland 12th St Concourse. The description of a gothy teenager is "A girl in blue lipstick, dressed all in black, is hanging out with her friends."

A grungy skater is a girl in Oakland 12th St Concourse. The description of a skater is " A skater girl in cargo pants, eating a burrito while talking with friends. Her skateboard is covered with graffiti and stickers."

The aventurine deer is in Oakland 12th St Concourse. 

AIM Freedom and Survival School is a room.


Chapter 30 - Oakland 19th St

The description of Oakland 19th St is "You are on a BART platform. underground but open to the concourse level above. Narrow blue bricks line the platform median. The floor is the same dirty looking marble as 12th street."  Oakland 19th St is a platform. 

Oakland 19th St Concourse is up from Oakland 19th St. It is a concourse.

The serpentinite lizard is in Oakland 19th St Concourse. 

Saclan is a room.

Chapter 31 - Oakland International Airport

The description of Oakland International Airport is "You are on a BART platform."

Chapter 32 - Orinda

The description of Orinda is "You are on a BART platform."

Chapter 33 - Pittsburg/Bay Point

The description of Pittsburg/Bay Point is "You are on a BART platform."

Huchiun-Aguasto is a room.

Chapter 34 - Pittsburg Center

The description of Pittsburg Center is "You are on a BART platform."

Chapter 35 - Pleasant Hill

The description of Pleasant Hill is "You are on a BART platform."

Chapter 36 - Powell


Powell is a platform. It is near MUNI. The description of Powell is "You are on a BART platform underground. Lots of people are around. The walls on the platform median have a weird white bumpy surface. The floor is made of bricks laid in a zig-zag pattern. There are round pillars brightly painted with ads for tech companies."  

Powell Concourse is up from Powell. Powell Concourse is a concourse. It is near MUNI. The description of Powell Concourse is "An underground station concourse, long and echoing. Entrances to a mall are to the east. A sunken plaza is just to the west."

Hallidie Plaza is west of Powell Concourse. "A deeply sunken plaza with tall concrete walls. A few spindly trees, and scattered chairs and tables, attempt to make this cavernous station entrance friendly."

Turnaround Plaza is up from Powell Concourse.  It is a street level station. It is near MUNI. "There's a big plaza here with a cable car turnaround. Tourists stand in a long line to board the cable cars, many of them clutching their rolling suitcases and children tightly as they gawk at the crowds and skyscrapers. Market Street runs northeast to southwest along the plaza."

A huge signpole is in Turnaround Plaza. The description is "A tall signpole bristling with labels pointing to the Sister Cities of San Francisco. The signs point to Abidjan, Amman Assisi, Bangalore, Barcelona, Cork, Haifa, Ho Chi Minh City, Kiel, Krakow, Manila, Osaka, Paris, Seoul, Shanghai, Sydney, Taipei, Thessaloniki, and Zürich. "

The textiles booth is scenery in Turnaround Plaza. "Hanging from the racks set up around the booth are embroidered huipil blouses, woolen ponchos from Peru, Guatemalan woven pants, striped wool shoulder bags, and colorful scarves."

The textile vendor is a person in Turnaround Plaza. The description of the textile vendor is "A very short, very old Chicana lady with a million wrinkles and a kind smile."

The Flood Building is northeast of Turnaround Plaza.  It is southwest of Fountain Plaza. The description of the Flood Building is "Elegant marble and gilt trimmings line the walls of this historic building. "

A glass display case is a fixed in place transparent closed openable object. It is in the Flood Building.
The Maltese Falcon, a photo of the city on fire, and a bronze bust of James Flood are in the glass display case. 

The granite eagle is in the Flood Building. 


Chapter 37 - Richmond

The description of Richmond is "You are on a BART platform."

The greenstone caiman is in Richmond.

Garrity Creek is a room. [Huchiun]
[tanbark, valley, coast and live oak trees,]
[tule elk, pronghorn antelope and black tail deer]

A dome-shaped willow house is an enterable container. It is in Garrity Creek.
A tumpline basket is a container. It is in Garrity Creek.
A seed beater is an object. It is in Garrity Creek.
A heap of redmaid seeds is an edible object. It is in a tumpline basket.
		
A willowbark granary is an openable container. It is in Garrity Creek.
A seed pestle is an object. It is in Garrity Creek.

Wildcat Canyon Creek is a room.
[steelhead, salmon and sturgeon]

Chapter 38 - Rockridge

The description of Rockridge is "You are on a BART platform."

Chapter 39 - San Bruno

The description of San Bruno is "You are on a BART platform."
	
San Bruno Concourse is up from San Bruno. The description of San Bruno Concourse is "An airy, light space like an airplane hangar. There is a huge glass mural across one wall of the concourse."
	
The glass mural is scenery. The description of the glass mural is "Red and blue squares in backlit glass have the words 'GO' and 'CONNECT' across the mural."

Buri-Buri Center is a room. "A big old strip mall and big box shopping center is here."

Urebure is a room.

A stone tuft of grass is in Urebure. 

Tanforan Racetrack is a room.
	
Tanforan Assembly Center is a room. The description of Tanforan Assembly Center is "A barbed wire fence surrounds the old racetrack. Thousands of Japanese-Americans are incarcerated inside, living in barracks and even in old horse stalls."
	
San Bruno Mountain is a room.

A tsektsel is a supporter. it is in San Bruno Mountain. The description of a tsektsel is "A small circle of stones, inviting you to come and sit within."

[if you sit there you get some nice text about looking out over the bay]
	
Chioischin is a room.

Ramona is a woman. Alessandro is a man. Ramona and Alessandro are in Chioischin.
Eyes of the Sky is a girl. She is in Chioischin.   [from the helen hunt jackson novel]

Chagunte is a room.

Chapter 40 - San Francisco International Airport

The description of San Francisco International Airport is "You are on a BART platform."

Chapter 41 - San Leandro

The description of San Leandro is "You are on a BART platform."

Sogorea Te Land Trust is a room.


Chapter 42 - South Hayward

The description of South Hayward is "You are on a BART platform."

Chapter 43 - South San Francisco

The description of South San Francisco is "You are on a BART platform."

Chapter 44 - Union City

The description of Union City is "You are on a BART platform."

Chapter 45 - Walnut Creek

The description of Walnut Creek is "You are on a BART platform."

Chapter 46 - Warm Springs/South Fremont

The description of Warm Springs/South Fremont is "You are on a BART platform."
	
Ritocsi is a room.

Peli is a person. Peli is in Ritocsi.

Chapter 47 - West Dublin/Pleasanton

The description of West Dublin/Pleasanton is "You are on a BART platform."

Alisal is a room. 

Chapter 48 - West Oakland

The description of West Oakland is "You are on a BART platform high in the open air. Raucous crowds seem to be making the most of their time as they wait for the right train to stop. There is a convivial atmosphere.  A tangle of freeways splits and gathers just to the east, before you get to downtown Oakland and the gentle, rolling hills beyond." West Oakland is a platform. 

[ Industrial buildings are all around. Huge fields of boxcars and shipping containers brightly painted.  The Port and its weird metal skeleton ice walkers is just across the way   Put this in the description for arrival] 


West Oakland Concourse is down from West Oakland.  West Oakland Concourse is a concourse.
[this station has the concourse below the platform and no extra street level]

A funky dude is a man in West Oakland Concourse. The description of a funky dude is "A guy with long dreads, an army jacket, striped sweatpants, and huge sneakers is playing music from a boombox in his backpack. He seems very much at home on this corner."

The turquoise serpent is in West Oakland Concourse. 



Part 8 - Elevator 

[a simple 3-level elevator appears in any train station location where it might be, if the player goes there]

The former location is a room that varies. 
 First carry out going rule:
    now the former location is the location. 

The top of shaft is a room that varies. 
The middle of shaft is a room that varies.
The bottom of shaft is a room that varies.

The Elevator is a room. The description of the Elevator is "A grimy elevator that smells like pee. You take a deep sniff and regret it as the stale urine smell mixes horribly with mildew, dusty heating ducts, and old machine oil which the vestiges of industrial strength floor cleaner do nothing to erase. There is a panel in the wall studded with buttons." Understand "elevator" as The Elevator.


[this is a hack because putting the elevator inside another room doesn't work correctly with exiting]
Every turn when the player is in Liftlandia or the player is in a concourse or the player is in a street level station:
	now the elevator is mapped north of the location of the player;
	[unless the player is distracted:]
	
Instead of examining the elevator when the player is in Liftlandia or the player is in a concourse or the player is in a street level station:
	say "A battered, grimy elevator.";
	
After looking:
	if the player is in Liftlandia or the player is in a concourse or the player is in a street level station:
		say "There is an elevator in the north wall.";
	if the player is in a concourse:
		now a ticket reader is in the location of the player;
		say "There is a ticket reader here.";
		continue the action.


A panel in the wall is in the elevator. It is scenery. Understand "buttons"  as A panel in the wall. The description is "[if the former location is near MUNI]There are four buttons on the wall: S, C, M, and P.[otherwise]There are three buttons on the wall: S, C, and P." 
The S button, the C button, and the P button are parts of the panel in the wall. 
The description of the S button is "A round button printed with a raised S."
The description of the C button is "A round button printed with a raised C."
The description of the P button is "A round button printed with a raised P."
The description of the M button is "A round button printed with a raised M."


[figure out what level you're entering the elevator from relative to other levels]
After going to the elevator:
	if the player is wearing the powerchair:
		say "You roll your chair into the elevator. The door closes.";
	if the player is not wearing the powerchair:
		say "You step into the elevator. The door closes.";
	now the former location is mapped south of the elevator;
	if the former location is near MUNI:
		now the M button is a part of the panel in the wall;
	if the former location is independent:
		now the M button is nowhere;
	if anywhere is mapped down of the former location and nowhere is mapped up of the former location:   [if you're at the top]
		now the top of shaft is the former location; 
		now the middle of shaft is the room down of the former location;
		now the bottom of shaft is the room down of middle of shaft;
	if anywhere is mapped down of the former location and anywhere is mapped up of the former location:   [if you're in the middle]
		now the middle of shaft is the former location; 
		now the top of shaft is the room up of middle of shaft;
		now the bottom of shaft is the room down of middle of shaft;
	if nowhere is mapped down of the former location and anywhere is mapped up of the former location:
		now the bottom of shaft is the former location; 
		now the middle of shaft is the room up of bottom of shaft;
		now the top of shaft is the room up of middle of shaft;


Instead of pushing the S button:
	if the former location is top of shaft:
		say "You're already at street level.";
	otherwise:
		say "You push the S button. [if player is not blind]It lights up.[end if]";
		say "The elevator creaks and slowly goes up.";
		say "Time passes. You smell a lot of things, wishing you couldn't.";
		now the top of shaft is mapped south of the elevator;	
		say "The doors open out onto [top of shaft] to the south.";
	
Instead of pushing the P button:
	if the former location is bottom of shaft:
		say "You're already at the platform level.";
	otherwise:
		say "You push the P button. [if player is not blind]It lights up.[end if]";
		say "The elevator creaks and slowly goes down.";
		say "Time passes. You smell a lot of things, wishing you couldn't.";
		now the bottom of shaft is mapped south of the elevator;	
		say "There is a horrible jolt. The doors open out onto [bottom of shaft] to the south.";
		
Instead of pushing the C button:
	if the former location is middle of shaft:
		say "You're already at the concourse level.";
	if the former location is top of shaft:
		say "You push the C button. [if player is not blind]It lights up.[end if]" ;
		say "The elevator creaks and slowly goes down.";
		now the middle of shaft is mapped south of the elevator;	
		say "The doors open onto [middle of shaft] to the south.";
		stop the action;
	if the former location is bottom of shaft:
		say "You push the C button. It lights up. The elevator creaks and slowly goes up.";
		say "The elevator almost imperceptibly moves up. Time passes. ";
		now the middle of shaft is mapped south of the elevator;	
		say "The doors open out to [middle of shaft] to the south.";
		
Instead of pushing the M button:
	say "Nothing happens.";
	say "Oh yeah. MUNI's down for system-wide repairs.";


Instead of going up when the player is not in the elevator and the player is wearing a wheelchair and anywhere is mapped up of the location:
	say "That's fairly challenging since your wheels won't make it up the stairs." 
Instead of going down when the player is not in the elevator and the player is wearing a wheelchair and anywhere is mapped down of the location:
	say "It would be a short and brutal trip for you and your wheelchair. Best not." 

Check going to Street Level:
	if the player is in a concourse:
		if the player is carrying a BART card:
			if the BART card is switched on:
				say "You should tag off from the ticket reader in the concourse first! Otherwise you have to pay the maximum fare." instead;
				stop the action;
		otherwise:
			say "You'll need to find your BART card so you can tag off." instead;
			stop the action.
		


Part 9 - Ticket reader

[the reader itself]

A ticket reader is a thing.  "A ticket reader machine is here in a little kiosk[if player is hearing], softly humming[end if]."
A ticket reader is fixed in place.
Understand "machine" as a ticket reader.  
The description of the ticket reader is "Its labels, both printed and Braille, are somewhat worn by time. A sign on the machine says 'Swipe *ART card for entry and exit."  The feel of the ticket reader is "Smooth metal, a little bit warm. The letters on its front panel are raised, as well as the Braille instructions. The ticket reader makes your fingers tingle as if powerful magnetic forces were swirling within the machine."  

After going to a concourse:
	now a ticket reader is in the location of the player;
	continue the action.
	
[something is wack, here, because i also had to declare the ticket reader abover in the after looking statement]

Instead of switching on a card when the location of the player is not a concourse:
	say "You need to do that by swiping it on a ticket reader.";
Instead of switching off a card when the location of the player is not a concourse:
	say "You need to do that by swiping it on a ticket reader.";		
	
Understand "swipe [something switched off]" as switching on.
Understand "swipe [something switched on]" as switching off. 

Check switching on a card:
	if the player is carrying a BART card:
		say "Your BART card isn't charged up yet.";
		stop the action;
		
Carry out switching on a card:
	say "The card hums with energy.";
	if the player is carrying an ART card:
		say "[The noun] makes you feel fizzy all over.";
		say "You feel creative, perceptive, and more analytical than usual.";
		say "The whole world feels different.";
		say "Maybe you should explore it with this new level of awareness.";
	if the player is carrying a BAT card:
		now the description of the player is "You are a huge bat, clutching your possessions in your claws as you flap around in the air.";
		if the player is wearing a wheelchair:
			silently try standing up;
		now the player is flying;	
		say "Everything seems further away, and dimmer.";
		say "You know what would hit the spot right now? A nice, juicy mosquito.";
		repeat with the item running through carried things: 
			silently try dropping the item;
		
			
	
Carry out switching off a card:
	say "The card shuts off with a little thump.";
	if the player is carrying an ART card:
		say "The world looks ordinary again. It's kind of a relief.";
	if the player is carrying a BAT card:
		now the player is mobile;
		say "You feel like yourself again.";
	if the player is not carrying a BAT card:
		now the description of yourself is "As fantabulous as ever. [line break] You are [sightedness], [deafness], and [ambulation].";
		

		
A writing utensil is a kind of thing. A magic marker is a writing utensil. 
A writing utensil can be magical or mundane. A writing utensil is usually mundane.



A card is a kind of device.  
A BART card, an ART card, a BAT card, a BAR card, a CART card, and a WART card are cards.
 

The description of a BART card is "A [if player is not blind]blue and white [end if]card with a magnetic stripe. It says 'BART' in raised [if player is not blind] black[end if] letters that seem oddly like scribbly handwriting. It buzzes very faintly in your hand."

The description of an ART card is "A [if player is not blind]blue and white card[end if] with a magnetic stripe. It says 'ART' in big [if player is not blind] black[end if] letters that seem oddly like scribbly handwriting. The letters blur and seem to move." 

The description of a BAT card is "A [if player is not blind]blue and white card[end if] with a magnetic stripe. It says 'BAT' in big [if player is not blind] black[end if] letters that seem oddly like scribbly handwriting. The letters blur and seem to move."

The player is carrying a magic marker and a BART card.

The magic marker is an object. The description of the magic marker is "A magic marker. [if the marker is magical]It fizzes and tingles with energy as if it were eager to make its mark.[end if]"

Writing on is an action applying to two visible things. Understand "write on [something] with [something]" as writing on. Understand "tag [something] " or "scribble on [something] with [something]" as writing on. 

[Figure out how to make it assume that you're writing with the marker]
[Does the player mean writing on the noun with the magic marker: 
	it is very likely.]

Check writing on:
	unless the magic marker is magical:
		say "You can't think of anything to write, just yet.";
		stop the action;
	unless the noun is a card or the noun is a printer, say "Weird. It doesn't work. Try something else to write on." instead.

Carry out writing on:
	if the noun is a card:
		now the noun is nowhere;
		if a random chance of 1 in 2 succeeds:
			now the player is carrying a BART card;
			say "The world shifts a little, then settles into its ordinary groove.";
		otherwise:
			if a random chance of 1 in 2 succeeds:
				say "You scribble on the card. It fizzes and tingles.";
				now the player is carrying an ART card;
			otherwise:
				say "You feel very strange.";
				now the player is carrying a BAT card;			
	if the noun is a 3-D printer:
		say "Everything contracts to a tiny point, then expands.";
		now the noun is nowhere;
		now a 4-D printer is in the location of the player;
	if the noun is a 4-D printer:
		say "Time seems to stop, then start again.";
		now the noun is nowhere;
		now the 3-D printer is in the location of the player;

Squeaking is an action applying to nothing. Understand "squeak" as squeaking. 

Carry out squeaking:
	unless the player is carrying a switched on BAT card: 
		say "You make a funny little noise.";
	otherwise:
		say "You echolocate.";
		say "OooOOOooo! Bugs!";
		say "You catch a delicious gnat and crunch it up, savoring the juices.";
		


Table of Card Modifications
Modification	Effect
"ART"	"Everything looks much more interesting."	
"BAR"	"A juice bar cart appears in the station."
"BARD"	"A strangely dressed person with a lute wanders by, singing aggressively."
"BARE"	"You are bare-naked! Shocking!"
"BAT"	"You turn into a huge, flying bat."
"BARF"	"There is a nasty puddle on the floor. Careful not to step in it."
"BARK"	"All the little dogs in strollers and pit bulls on rope leashes start barking at once."
"BARM"	"Smells very strongly of fermenting beer in this station, all of a sudden."
"BARN"	"You are standing in a giant pile of hay. Several people in the station start to sneeze."
"BART"
"BERT"
"CART"
"DART"
"FART"
"HART"
"MART"
"PART"
"TART"
"WART"

Part 10 - Train rules

[train-display]

The container interior rule is listed after the room description body text rule in the carry out looking rules. 

This is the container interior rule:
	if the actor is the player and the player is in an enterable thing (called current cage), carry out the describing the interior activity with the current cage. 

Describing the interior of something is an activity. 

Rule for describing the interior of a train-car:
	say "Inside the train, there are some open seats. [if player is not blind] There is a BART map on one wall.[end if][if the player is not deaf][one of]Someone coughs nearby.[or]The train rattles and clacks loudly.[or]You hear the rustle of other people's jackets as they move around the car.[or]Someone near you has their headphones up so loud you can hear the hip hop beat.[or]'We're going into a tunnel, I might get cut off' says a businessman importantly into his phone.[or]A toddler a couple of rows away from you is watching Baby Shark, over and over, without headphones.[then at random][end if] [if the train-car contains more than one thing]Nearby, you can see [a list of other things in a train-car].[end if]" 

[
Rule for describing the interior of a train-car when a train-car contains more than one thing:
	say "The train-car is transparent, but tints everything outside very faintly lavender. Beside you you can see [a list of other things in a train-car]." ]

Definition: a thing is other if it is not the player. 

Rule for listing nondescript items of a train-car when the player is in a train-car: do nothing. 



Time-till-yellow is a number that varies.
Yellow-relative-position is a number that varies.
player-relative-position is a number that varies. 
yellow-endpoint-relpos is a number that varies. 
yellow-lookup is a room that varies.
yellow-next-endpoint is a room that varies.


Every turn: 
	if the location of the Yellow Line Train is Antioch:
		now the Yellow Line Train is southbound;	
		now yellow-endpoint-relpos is 0;
	if the location of the Yellow Line Train is Millbrae:
		now the Yellow Line Train is northbound;
		now yellow-endpoint-relpos is 26;
	if the location of the player is in SFO Extension or the location of the player is in Westside or the location of the player is in Oakland Central or the location of the player is in Yellow Line:	
		let player-relative-position be the relative position corresponding to the destination of location in the Table of yellow Line Schedule;
		if the location of the Yellow Line Train is Transitional Location:
			now yellow-lookup is next stop of Yellow Line Train;
		otherwise:
			now yellow-lookup is the location of the Yellow Line Train;
		let yellow-relative-position be the relative position corresponding to the destination of yellow-lookup in the Table of yellow Line Schedule;
		if the Yellow Line Train is southbound:
			if yellow-relative-position is less than player-relative-position:
				now time-till-yellow is yellow-relative-position - yellow-endpoint-relpos + player-relative-position - yellow-endpoint-relpos;
				now yellow-next-endpoint is Antioch;
			otherwise:
				now time-till-yellow is yellow-relative-position - player-relative-position;
				now the yellow-next-endpoint is Millbrae;
		if the Yellow Line Train is northbound:
			If yellow-relative-position is greater than player-relative-position:
				now time-till-yellow is yellow-endpoint-relpos - yellow-relative-position  + yellow-endpoint-relpos - player-relative-position ;
				now yellow-next-endpoint is Millbrae;			
			otherwise:
				now time-till-yellow is 2 * (player-relative-position - yellow-relative-position);
				now yellow-next-endpoint is Antioch;
		Unless time-till-yellow is 0 or the player is distracted:
			say "Next Yellow Line Train to [yellow-next-endpoint] in [time-till-yellow] minutes. [run paragraph on][line break]"	;	
		[If time-till-yellow is 0:
			say "Yellow Line train to [yellow-next-endpoint] now arriving. [run paragraph on][line break]";	]

Time-till-red is a number that varies.
red-relative-position is a number that varies.
red-endpoint-relpos is a number that varies. 
red-lookup is a room that varies.
red-next-endpoint is a room that varies.

Every turn: 
	if the location of the Red Line Train is Richmond:
		now the Red Line Train is southbound;	
		now red-endpoint-relpos is 20;
	if the location of the Red Line Train is Millbrae:
		now the Red Line Train is northbound;
		now red-endpoint-relpos is 0;
	if the location of the player is in SFO Extension or the location of the player is in Westside or the location of the player is in Oakland Central or the location of the player is in North Bay:	
		let player-relative-position be the relative position corresponding to the destination of location in the Table of Red Line Schedule;
		if the location of the Red Line Train is Transitional Location:
			now red-lookup is next stop of Red Line Train;
		otherwise:
			now red-lookup is the location of the Red Line Train;
		let red-relative-position be the relative position corresponding to the destination of red-lookup in the Table of Red Line Schedule;
		if the Red Line Train is southbound:
			if red-relative-position is greater than player-relative-position:
				now time-till-red is red-endpoint-relpos - red-relative-position + red-endpoint-relpos - player-relative-position;
				now red-next-endpoint is Richmond;
			otherwise:
				now time-till-red is player-relative-position - red-relative-position;
				now the red-next-endpoint is Millbrae;
		if the Red Line Train is northbound:
			If red-relative-position is less than player-relative-position:
				now time-till-red is red-relative-position - red-endpoint-relpos  + player-relative-position - red-endpoint-relpos ;
				now red-next-endpoint is Millbrae;			
			otherwise:
				now time-till-red is 2 * (red-relative-position - player-relative-position);
				now red-next-endpoint is Richmond;
		Unless time-till-red is 0 or the player is distracted:
			say "Next Red Line train to [red-next-endpoint] in [time-till-red] minutes. [run paragraph on][line break]"

	
Time-till-green is a number that varies.
green-relative-position is a number that varies.
green-endpoint-relpos is a number that varies. 
green-lookup is a room that varies.
green-next-endpoint is a room that varies.


Every turn: 
	if the location of the Green Line Train is Berryessa/North San José:
		now the Green Line Train is southbound;	
		now green-endpoint-relpos is 0;
	if the location of the Green Line Train is Daly City:
		now the Green Line Train is northbound;
		now green-endpoint-relpos is 20;
	if the location of the player is in Westside or the location of the player is in Oakland South or the location of the player is in South Bay:	
		let player-relative-position be the relative position corresponding to the destination of location in the Table of Green Line Schedule;
		if the location of the Green Line Train is Transitional Location:
			now green-lookup is next stop of Green Line Train;
		otherwise:
			now green-lookup is the location of the Green Line Train;
		let green-relative-position be the relative position corresponding to the destination of green-lookup in the Table of Green Line Schedule;
		if the Green Line Train is southbound:
			if green-relative-position is less than player-relative-position:
				now time-till-green is green-relative-position - green-endpoint-relpos + player-relative-position - green-endpoint-relpos;
				now green-next-endpoint is Berryessa/North San José;
			otherwise:
				now time-till-green is green-relative-position - player-relative-position;
				now the green-next-endpoint is Daly City;
		if the Green Line Train is northbound:
			If green-relative-position is greater than player-relative-position:
				now time-till-green is green-endpoint-relpos - green-relative-position + green-endpoint-relpos - player-relative-position;
				now green-next-endpoint is Daly City;			
			otherwise:
				now time-till-green is 2 * (player-relative-position - green-relative-position);
				now green-next-endpoint is Berryessa/North San José;
		Unless time-till-green is 0 or the player is distracted:
			say "Next Green Line Train to [green-next-endpoint] in [time-till-green] minutes. [run paragraph on][line break]"


Time-till-blue is a number that varies.
blue-relative-position is a number that varies.
blue-endpoint-relpos is a number that varies. 
blue-lookup is a room that varies.
blue-next-endpoint is a room that varies.




Every turn: 
	if the location of the Blue Line Train is Dublin/Pleasanton:
		now the Blue Line Train is southbound;	
		now blue-endpoint-relpos is 0;
	if the location of the Blue Line Train is Daly City:
		now the Blue Line Train is northbound;
		now blue-endpoint-relpos is 17;
	if the location of the player is in SFO Extension or the location of the player is in Westside or the location of the player is in Oakland South or the location of the player is in Blue Line:	
		let player-relative-position be the relative position corresponding to the destination of location in the Table of Blue Line Schedule;
		if the location of the Blue Line Train is Transitional Location:
			now blue-lookup is next stop of Blue Line Train;
		otherwise:
			now blue-lookup is the location of the Blue Line Train;
		let blue-relative-position be the relative position corresponding to the destination of blue-lookup in the Table of Blue Line Schedule;
		if the Blue Line Train is southbound:
			if blue-relative-position is less than player-relative-position:
				now time-till-blue is blue-relative-position - blue-endpoint-relpos + player-relative-position - blue-endpoint-relpos;
				now blue-next-endpoint is Dublin/Pleasanton;
			otherwise:
				now time-till-blue is blue-relative-position - player-relative-position;
				now the blue-next-endpoint is Daly City;
		if the Blue Line Train is northbound:
			If blue-relative-position is greater than player-relative-position:
				now time-till-blue is blue-endpoint-relpos - blue-relative-position + blue-endpoint-relpos - player-relative-position;
				now blue-next-endpoint is Daly City;			
			otherwise:
				now time-till-blue is 2 * (player-relative-position - blue-relative-position);
				now blue-next-endpoint is Dublin/Pleasanton;
		Unless time-till-blue is 0 or the player is distracted:
			say "Next Blue Line Train to [blue-next-endpoint] in [time-till-blue] minutes. [run paragraph on][line break][line break]"
			

			
Time-till-orange is a number that varies.
orange-relative-position is a number that varies.
orange-endpoint-relpos is a number that varies. 
orange-lookup is a room that varies.
orange-next-endpoint is a room that varies.

Every turn: 
	if the location of the Orange Line Train is Richmond:
		now the Orange Line Train is southbound;	
		now orange-endpoint-relpos is 20;
	if the location of the Orange Line Train is Berryessa/North San José:
		now the Orange Line Train is northbound;
		now orange-endpoint-relpos is 0;
	if the location of the player is in North Bay or the location of the player is in Oakland Central or the location of the player is in Oakland South or the location of the player is in South Bay:	
		let player-relative-position be the relative position corresponding to the destination of location in the Table of Orange Line Schedule;
		if the location of the Orange Line Train is Transitional Location:
			now orange-lookup is next stop of Orange Line Train;
		otherwise:
			now orange-lookup is the location of the Orange Line Train;
		let orange-relative-position be the relative position corresponding to the destination of orange-lookup in the Table of Orange Line Schedule;
		if the Orange Line Train is southbound:
			if orange-relative-position is greater than player-relative-position:
				now time-till-orange is orange-endpoint-relpos - orange-relative-position + orange-endpoint-relpos - player-relative-position;
				now orange-next-endpoint is Richmond;
			otherwise:
				now time-till-orange is player-relative-position - orange-relative-position;
				now the orange-next-endpoint is Berryessa/North San José;
		if the Orange Line Train is northbound:
			If orange-relative-position is less than player-relative-position:
				now time-till-orange is orange-relative-position - orange-endpoint-relpos  + player-relative-position - orange-endpoint-relpos ;
				now orange-next-endpoint is Berryessa/North San José;			
			otherwise:
				now time-till-orange is 2 * (orange-relative-position - player-relative-position);
				now orange-next-endpoint is Richmond;
		Unless time-till-orange is 0 or the player is distracted:
			say "Next Orange Line train to [orange-next-endpoint] in [time-till-orange] minutes. [run paragraph on][line break]"
	
[train rules]

A train-car can be northbound or southbound. 

The Red Line train is a relatively-scheduled train-car. The Red Line Train is in Millbrae. The t-schedule of the Red Line train is the Table of Red Line Schedule.  The waiting duration of the Red Line train is 0 minutes. The description is "A 9 car train." 

The Yellow Line train is a relatively-scheduled train-car. The Yellow Line Train is in Colma.  The t-schedule of the Yellow Line train is the Table of Yellow Line Schedule. The waiting duration of the Yellow Line train is 0 minutes. The description is "A 5 car train."

The Blue Line train is a relatively-scheduled train-car. The Blue Line Train is in Daly City. The waiting duration of the Blue Line train is 0 minutes. The t-schedule of the Blue Line train is the Table of Blue Line Schedule. The description of the Blue Line train is "Some train cars, you aren't sure how many." 

A chocolate bar wrapper is in the Blue Line train.

The Green Line train is a relatively-scheduled train-car. The Green Line Train is in Fremont. The waiting duration of the Green Line train is 0 minutes. The t-schedule of the Green Line train is the Table of Green Line Schedule. The description is "A 5 car train."

The Orange Line train is a relatively-scheduled train-car. The Orange Line Train is in Richmond. The waiting duration of the Orange Line train is 0 minutes. The t-schedule of the Orange Line train is the Table of Orange Line Schedule. The description is "A 10-car train."

Check entering the train-car:
	if the player is carrying a BART card:
		if the BART card is switched off:
			say "You'll have to tag on from the ticket reader in the concourse first." instead;
			stop the action;
	otherwise:
		say "You'll need a BART card to ride the train." instead;
		stop the action.
		
Rule for describing departure when the player is distracted:
	do nothing;

Rule for describing arrival when the player is distracted:
	do nothing;
	
Rule for describing opening when the player is distracted:
	do nothing;
	
Rule for describing closure when the player is distracted:
	do nothing;
	
Rule for mentioning final stop when the player is distracted:
	do nothing;
	
	
[train schedules]

Table of Red Line Schedule
transit time	destination	relative position
1 minute 	Richmond	0
1 minute	El Cerrito del Norte	1
1 minute	El Cerrito Plaza	2
1 minute	North Berkeley	3
1 minute	Downtown Berkeley	4
1 minute	Ashby	5
1 minute	MacArthur	6
1 minute	Oakland 19th St	7
1 minute	Oakland 12th St	8
1 minute	West Oakland	9
1 minute	Embarcadero	10
1 minute	Montgomery	11
1 minute	Powell	12
1 minute	Civic Center	13
1 minute	Mission 16th St	14
1 minute	Mission 24th St	15
1 minute	Glen Park	16
1 minute	Balboa Park	17
1 minute	Daly City	18
1 minute	Colma	19
1 minute	Millbrae	20
1 minute	Colma	19
1 minute	Daly City	18
1 minute	Balboa Park	17
1 minute	Glen Park	16
1 minute	Mission 24th St	15
1 minute	Mission 16th St	14
1 minute	Civic Center	13
1 minute	Powell	12
1 minute	Montgomery	11
1 minute	Embarcadero	10
1 minute	West Oakland	9
1 minute	Oakland 12th St 	8
1 minute	Oakland 19th St 	7
1 minute	MacArthur	6
1 minute	Ashby	5
1 minute	Downtown Berkeley	4
1 minute	North Berkeley	3
1 minute	El Cerrito Plaza	2
1 minute	El Cerrito del Norte	1

Table of Yellow Line Schedule
transit time	destination	relative position
1 minute	Millbrae	0
1 minute	San Bruno	1
1 minute	South San Francisco	2
1 minute	Colma	3
1 minute	Daly City	4
1 minute	Balboa Park	5
1 minute	Glen Park	6
1 minute	Mission 24th St	7
1 minute	Mission 16th St	8
1 minute	Civic Center	9
1 minute	Powell	10
1 minute	Montgomery	11
1 minute	Embarcadero	12
1 minute	West Oakland	13
1 minute	Oakland 12th St	14
1 minute	Oakland 19th St	15
1 minute	MacArthur	16
1 minute	Rockridge	17
1 minute	Orinda	18
1 minute	Lafayette	19
1 minute	Walnut Creek	20
1 minute	Pleasant Hill	21
1 minute	Concord	22
1 minute	North Concord/Martinez	23
1 minute	Pittsburg/Bay Point	24
1 minute	Pittsburg Center	25
1 minute	Antioch	26
1 minute	Pittsburg Center	25
1 minute	Pittsburg/Bay Point	24
1 minute	North Concord/Martinez	23
1 minute	Concord	22
1 minute	Pleasant Hill	21	
1 minute	Walnut Creek	20
1 minute	Lafayette	19
1 minute	Orinda	18
1 minute	Rockridge	17
1 minute	MacArthur	16
1 minute	Oakland 19th St	15
1 minute	Oakland 12th St	14
1 minute	West Oakland	13
1 minute	Embarcadero	12
1 minute	Montgomery	11
1 minute	Powell	10
1 minute	Civic Center	9
1 minute	Mission 16th St	8
1 minute	Mission 24th St	7
1 minute	Glen Park	6
1 minute	Balboa Park	5
1 minute	Daly City	4
1 minute	Colma	3
1 minute	South San Francisco	2
1 minute	San Bruno	1

	

Table of Blue Line Schedule
transit time	destination	relative position
1 minute	Daly City	0
1 minute	Balboa Park	1
1 minute	Glen Park	2
1 minute	Mission 24th St	3
1 minute	Mission 16th St	4
1 minute	Civic Center	5
1 minute	Powell	6
1 minute	Montgomery	7
1 minute	Embarcadero	8
1 minute	West Oakland	9
1 minute	Lake Merritt	10
1 minute	Fruitvale	11
1 minute	Coliseum	12
1 minute	San Leandro	13
1 minute	Bay Fair	14
1 minute	Castro Valley	15
1 minute	West Dublin/Pleasanton	16
1 minute	Dublin/Pleasanton	17
1 minute	West Dublin/Pleasanton	16
1 minute	Castro Valley	15
1 minute	Bay Fair	14
1 minute	San Leandro	13
1 minute	Coliseum	12
1 minute	Fruitvale	11
1 minute	Lake Merritt	10
1 minute	West Oakland	9
1 minute	Embarcadero	8
1 minute	Montgomery	7
1 minute	Powell	6
1 minute	Civic Center	5
1 minute	Mission 16th St	4
1 minute	Mission 24th St	3
1 minute	Glen Park	2
1 minute	Balboa Park	1


Table of Green Line Schedule
transit time	destination	relative position
1 minute	Daly City	0
1 minute	Balboa Park	1
1 minute	Glen Park	2
1 minute	Mission 24th St	3
1 minute	Mission 16th St	4
1 minute	Civic Center	5
1 minute	Powell	6
1 minute	Montgomery	7
1 minute	Embarcadero	8
1 minute	West Oakland	9
1 minute	Lake Merritt	10
1 minute	Fruitvale	11
1 minute	Coliseum	12
1 minute	San Leandro	13
1 minute	Bay Fair	14
1 minute	Hayward	15
1 minute	South Hayward	16
1 minute	Union City	17
1 minute	Fremont	18
1 minute	Warm Springs/South Fremont	19
1 minute	Milpitas	20
1 minute	Berryessa/North San José	19
1 minute	Milpitas	20
1 minute	Warm Springs/South Fremont	19
1 minute	Fremont	18
1 minute	Union City	17
1 minute	South Hayward	16
1 minute	Hayward	15
1 minute	Bay Fair	14
1 minute	San Leandro	13
1 minute	Coliseum	12
1 minute	Fruitvale	11
1 minute	Lake Merritt	10
1 minute	West Oakland	9
1 minute	Embarcadero	8
1 minute	Montgomery	7
1 minute	Powell	6
1 minute	Civic Center	5
1 minute	Mission 16th St	4
1 minute	Mission 24th St	3
1 minute	Glen Park	2
1 minute	Balboa Park	1


Table of Orange Line Schedule
transit time	destination	relative position
1 minute 	Richmond	0
1 minute	El Cerrito del Norte	1
1 minute	El Cerrito Plaza	2
1 minute	North Berkeley	3
1 minute	Downtown Berkeley	4
1 minute	Ashby	5
1 minute	MacArthur	6
1 minute	Oakland 19th St	7
1 minute	Oakland 12th St	8
1 minute	Lake Merritt	9
1 minute	Fruitvale	10
1 minute	Coliseum	11
1 minute	San Leandro	12
1 minute	Bay Fair	13
1 minute	Hayward	14
1 minute	South Hayward	15
1 minute	Union City	16
1 minute	Fremont	17
1 minute	Warm Springs/South Fremont	18
1 minute	Milpitas	19
1 minute	Berryessa/North San José	20
1 minute	Milpitas	19
1 minute	Warm Springs/South Fremont	18
1 minute	Fremont	17
1 minute	Union City	16
1 minute	South Hayward	15
1 minute	Hayward	14
1 minute	Bay Fair	13
1 minute	San Leandro	12
1 minute	Coliseum	11
1 minute	Fruitvale	10
1 minute	Lake Merritt	9
1 minute	Oakland 12th St 	8
1 minute	Oakland 19th St 	7
1 minute	MacArthur	6
1 minute	Ashby	5
1 minute	Downtown Berkeley	4
1 minute	North Berkeley	3
1 minute	El Cerrito Plaza	2
1 minute	El Cerrito del Norte	1

Part 11 - Acknowledgements and References

[Miliken book]
[Thanks to Danny O'Brien, Milo Kim, Laura Henry, Ada Norton, Seth Schoen for playtesting.]
[Thanks to Debbie Notkin for local history tips.]



