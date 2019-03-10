"Transitory" by lizzard

Include Transit System by Emily Short.
Include Basic Screen Effects by Emily Short.

Use MAX_STATIC_DATA of 250000.

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

[some general rules, not sure where to put them yet]

A boy is a kind of man. A girl is a kind of woman.

[temporary start of game location for testing]

Home Base is west of Circle Plaza. "Here you are in your home base.  It's a bare room with a sign on the wall. It's in print and in braille. 'Look at sign' or 'read sign' to read it. [paragraph break]The world outside seems to call to you from the door to the east. Why not explore?"

A welcome sign is scenery in Home Base. "Welcome, traveler! [paragraph break] Thank you for playtesting. The most built-out areas are near 24th St and 16th St. [paragraph break] Further away, the trains should work correctly, but the world beyond the train platforms is only a skeleton. [paragraph break] The things in the closet, in this room, are mostly for testing sightedness, hearing, and mobility. They aren't necessary for solving any puzzles. If you want to test them, open the closet and take what you need.[paragraph break] For some beginning commands, read the cheat sheet you're holding." 

A cheat sheet is an object. The description of the cheat sheet is "Some other commands: [line break]
Type 'i' to look at your inventory (what you are carrying).  [line break]
'Look' will show you a room description (again). [line break]
'Exits' will show you a list of possible exits from a room.[line break]
You can 'go' in all 8 directions (north, northeast, etc) as well as up and down. [line break]
'n' is a convenient shorthand for 'go north' [line break]
You can also take things, open things, sit on things, and stand up. [line break]
'examine' or 'look at' will let you examine an object. Or, sometimes, details in a room description.[line break]
'Help' will get you a small menu of hints. [line break]
There are many more commands to try![line break]"

The player is carrying a cheat sheet.

A storage box is an object in Home Base. It is a closed openable container. It is fixed in place.

A book is a kind of thing.  A SMARTmap is a book. A SMARTmap has a table name called the contents. The description of a SMARTmap is "An accessible map of the BART system with Braille entries. Use it like this: 'consult smartmap about red line' ";

A carnelian flower is an object. It is in the storage box. "This stylized flower is sculpted in carnelian, smooth and polished." The description of the carnelian flower is "It shimmers, slipping in time. You think of sacrifice and the blood of captive warriors." The scent of the carnelian flower is "Cold stone; ambergris; thyme."

In Home Base is an opaque, closed, openable container called a closet. The closet is scenery. 
The wraparound mirrorshades, headphones, a thick woolly hat, the cruel shoes, a SMARTmap, a long cane, and earplugs are in the closet.

A powerchair is in Home Base.

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

The thing without feel value is a text variable. The thing without feel value is "[one of]Feels okay.[or]Feels like [a noun].[or]You feel nothing unexpected.[or]Yeah, that's [a noun] alright.[or]Feels pretty much like you'd think it would.[purely at random]"

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

The thing without scent value is a text variable. The thing without scent value is "[one of]It doesn't have much of a scent.[or]Smells okay.[or]Not much to report about how it smells.[or]Your nose doesn't detect much in this case.[or]Someday you may regret going around sniffing random objects. But not today.[as decreasingly likely outcomes]"

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

The thing without taste value is a text variable. The thing without taste value is "[one of]You give the [noun] a quick experimental lick. Hmm.[or]You go to taste the [noun], then decide not to.[or]Tastes like you'd expect any [noun] to taste.[purely at random]"

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
					say "[regarding the player]pay attention and explore for a bit. You figure out there is also " (D);
				otherwise:
					say "[one of][regarding the player]poke around. You [can] sense [or][regarding the player]pay attention and explore for a bit. You figure out there is [at random]" (E);
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
				say "[one of]Bumpy ground, but still navigable.[or]Your joints ache with every bump you roll over.[or]The bumps jar your spine.[at random]";
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
				say "[one of] [or]You zoom on over.[or]You wheel across pleasantly flat ground.[or]Silently, with minimal effort, you traverse the smooth floor.[or]This is such a nice, zippy chair.[or]You glide over gracefully, feeling suave.[or]Pirouetting smoothly in place, you wheel on over.[as decreasingly likely outcomes]";
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

The examine undescribed things rule is not listed in any rulebook.

Carry out examining (this is the multisensory examine undescribed things rule):
	if examine text printed is false:
		say "[one of]Nothing special about [the noun].[or]Ordinary enough.[or]Yeah, it's [a noun].[or]You note the presence of [a noun].[purely at random][run paragraph on]";
	
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

A person can be greeted or ungreeted. A person is usually ungreeted. The player is greeted.

Smiling is an action applying to one thing.

Understand the command "greet" as something new. Understand "greet [someone]" as greeting.  

Greeting is an action applying to one thing. 

Carry out greeting:
	say "You greet [the noun].";
	now the noun is greeted;
	continue the action.
	
[Understand "talk to [someone]" as a mistake ("To start a conversation, try to GREET [the noun], ASK [the noun] ABOUT something or TELL [the noun] ABOUT something."). ]

Understand the commands "ask" and "tell" and "say" and "answer" as something new. 

Understand "ask [text]" or "tell [text]" or "answer [text]" as a mistake ("[talk to instead]"). 

Instead of asking someone to try doing something:
	say "[talk to instead][paragraph break]". 

Instead of answering someone that something:
	say "[talk to instead][paragraph break]". 

To say talk to instead:
	say "(To communicate, TALK TO a character or GREET them.) " 

Understand "talk to [someone]" as talking to. Understand "talk to [something]" as talking to. Talking to is an action applying to one visible thing. 


Part 6 - Hint system

A thing can be examined or unexamined. A thing is usually unexamined. Carry out examining something: now the noun is examined. 

Taking inventory is acting confused. Looking is acting confused. Examining an examined thing is acting confused. 

After acting confused for six turns:
        say "(If you are feeling lost, try typing 'help' for suggestions.)" 

Understand "help [text]" or "help about [text]" as getting help about. Understand the commands "instructions" or "hint" or "hints" or "menu" or "info" or "about" as "help". 

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
"self"	"self"	"The point of view character"	"Keep in mind you can type 'examine self'. This might be useful or informative, sometimes."
"map"	"map"	"Where to find a map"	"BART map images are on every train station platform. You can also pick up the SMARTmap in the closet in Home Base for a portable, text only option. For exploring the world, you may want to draw your own maps on paper as a guide to various areas."
"marker"	"marker"	"Hints about the magic marker"	"Try writing on things that seem a little bit magical."
"exits"	"exits"	"Using the EXITS command"	"Type 'exits' if you want a list of possible exits. It's a little cheaty, but so much less frustrating."
"explore"	"explore"	"The explore command"	"If your character is blind or low vision, you can use the command 'explore' or 'tap' to explore a space with your long cane. The long cane and mirrorshades are in the closet in Home Base."
"murals"	"murals"	"The art and murals"	"It's worth examining the local art. It may not have anything immediately useful but it provides context for the local puzzles and mysteries. There may be (obvious once you encounter them) times when you can interact more with the art."
"score"	"score"	"Things that make your score go up"	"One point for each new room visited. 5 for each Artifact you pick up. 5 more points when you place the 20 Artifacts where they need to go (You'll know it when you see it.)"
"card"	"card"	"Big hints about the (B)ART card"	"Take it to the concourse levels of the stations and swipe. Depending on the current state of your card, there may be different and perhaps unusual effects."
"bugs"	"bugs"	"How to report bugs"	"Please report anything you think is wrong, or could use improvement, at https://github.com/lizzard/transitory/issues. You can also email lizhenry@gmail.com with 'TRANSITORY BUG' in the subject line."

	

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
			say "[if count is greater than 1] or [end if][bold type][way][roman type]". 



Part 7 - All the places

Section 1 - Regions
[Regions]



A surface is a kind of value. A room has a surface. 
The surfaces are smooth, bumpy, sidewalk, brick, cracked, uneven, gravel, sand, grassy, and mud. A room is usually smooth.

A room can be a platform. 
A room can be a concourse. 
A room can be a street level station. 

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




Section 2 - Locations, organized by train stops

[train stops, alphabetically with descriptions]

Chapter 1 - Antioch 

The description of Antioch is "You are on a BART platform. You hear the noise of cars on a nearby highway."

Chapter 2 - Ashby

The description of Ashby is "You are on a BART platform."
		
West Berkeley Shellmound is a room.		

Chapter 3 - Balboa Park

The description of Balboa Park is "You are on a BART platform with smooth marble floors. It has the feel of being in a long, narrow canyon, shaded, but open to the sky above. People are going up and down stairways to the concourse above, another wide open space."  The surface of Balboa Park is smooth.
		
Balboa Park Concourse is up from Balboa Park. It is a concourse.

Ocean Avenue is a room.
	
The Industrial School is a room.

The House of Refuge is a room.

The House of Correction is a room.

Chapter 4 - Bay Fair

The description of Bay Fair is "You are on a BART platform."

Chapter 5 - Downtown Berkeley

The description of Downtown Berkeley is "You are on a BART platform."

Chapter 6 - Castro Valley

The description of Castro Valley is "You are on a BART platform."
		
Jalquin is a room.

Chapter 7 - Civic Center

The description of Civic Center is "You are on a BART platform."

Kotóla is a woman. The description of Kotóla is "Frog Woman, Coyote's wife. She lived in the river. Her bones someday will live here deep under the earth."

Chapter 8 - Coliseum

The description of Coliseum is "You are on a BART platform."

Chapter 9 - Colma

The description of Colma is "You are on a BART platform."
			
Siplichiquin is a room.
			
Colma Creek is a room. 
			
A woven basket is a container. It is in Siplichiquin.
			
Black seed tamales are an object. They are edible. They are in a woven basket.
			
The Land of the Dead is a room. 

Kaknu is a person. Kaknu is in The Land of the Dead. The description of Kaknu is "A person who is also a falcon. He has a bow and arrows."

Wiwe is a person. Wiwe is in The Land of the Dead. The description of Wiwe is "Lord of the Dead, Wiwe, his body made of stone."
			
			
Chapter 10 - Concord

The description of Concord is "You are on a BART platform."

Chapter 11 - Daly City

The description of Daly City is "You are on a BART platform. Fog drifts in from the nearby ocean."
			
Mitline is a room.
			
A tule reed canoe is a vehicle. It is in Mitline.
			

Opurome is a room.

A tule reed raft is a vehicle. It is in Oprurome. 


Chapter 12 - Dublin/Pleasanton

The description of Dublin/Pleasanton is "You are on a BART platform. The mysterious suburban world of Dublin/Pleasanton surrounds you."

Pelnen is a room.

Chapter 13 - El Cerrito del Norte

The description of El Cerrito del Norte is "You are on a BART platform."

Chapter 14 - El Cerrito Plaza

The description of El Cerrito Plaza is "You are on a BART platform."

Chapter 15 - Embarcadero

The description of Embarcadero is "You are on a BART platform underground. Lots of people are around and there are muffled announcements over an intercom."

Chapter 16 - Fremont

The description of Fremont is "You are on a BART platform."

Sierra de Gabilin is a room.

Chapter 17 - Fruitvale

The description of Fruitvale is "You are on a BART platform."

Chapter 18 - Glen Park

The description of Glen Park is "You are on a BART platform."
	
Glen Park Concourse is up from Glen Park.
	
Glen Canyon is a room.
		
A dairy cow is an animal. It is in Glen Canyon.

Islais Creek is a room.
	
The Giant Powder Company is a room. 
		
The dynamite is in The Giant Powder Company.
	
A hollyleaf cherry tree is in Glen Canyon. A bunch of islay cherries are on the tree.
	
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

The description of Lake Merritt is "You are on a BART platform."
		
Lake Merritt Concourse is up from Lake Merritt. It is a concourse. It is smooth.

Chapter 22 - MacArthur

The description of MacArthur is "You are on a BART platform."

Chapter 23 - Millbrae

The description of Millbrae is "You are on a big, busy, BART platform in the open air. Many people and trains are all around. There are cement statues of commuters in awkward positions on the platform."  Millbrae is smooth.

A powermom statue is an object. It is fixed in place. It is in Millbrae. It is scenery. The description of the powermom is "A cement statue of a woman in an 80s business suit, awkwardly contorted, carrying a briefcase and a diaper bag."



Millbrae Concourse is up from Millbrae. It is a concourse.  It is smooth. The description of Millbrae Concourse is "A large platform high up in the air above the train platform and tracks. You can feel the floor vibrate slightly under your feet with the rush of passing BART and Caltrain cars."

Millbrae Control Booth is a room. It is south of Millbrae Concourse. It is smooth. "This enormous funky shaped glass booth is full of mysterious control panels and blinking lights. "


Chapter 24 - Mission 16th St

The description of Mission 16th St is "You are underground, on a BART platform. [if player is not deaf]The haunting sound of train wheels on the rails echoes all around[end if]. [if player is not blind]The platform floor is covered with long brick-red tiles, while the median walls are tiled in light and dark blue, green, gold, and brown tiles like the colors of a tropical beach on a sunny day.[end if]"  
		
The surface of Mission 16th St is brick.

A college student is a man in Mission 16th St. The description of a college student is "A young man wearing a SFSU hoodie and a backpack, headphones in. He is slumped on a bench, scrolling on his phone."

A paint-covered workman is a man in Mission 16th St. The description of a workman is "A middle aged man in paint-spattered work pants and a 49-ers windbreaker. He is talking in Spanish to the guy next to him."

A tired lady is a woman in Mission 16th St. The description of a tired lady is "A woman in a puffy vest sits on a bench. She looks up at the train schedule, sighs, and looks back at her feet."

Mission 16th Concourse is up from Mission 16th St. Mission 16th is a concourse. The surface of Mission 16th Concourse is brick. "[if player is not blind]Low but nicely curved arches made of smooth concrete form the ceiling of this long, busy station. Abstract cement sculptures molded in relief march up the sides of the enormous stairwell, open to the sky. [end if] [if player is not deaf]Music echoes from the stairwells. The acoustics are great![end if] Crowds of people swirl around the concourse." 

A saxophone player is a man in Mission 16th Concourse. The description of a saxophone player is "A man sitting on a stool by the stairwell plays jazz on a saxophone. The instrument case is open in front of him, containing a scattering of change, dollar bills, and flyers for music shows."

A security guard is a woman in Mission 16th Concourse.  The description of a security guard is "The security guard looks bored."

A station agent is a woman in Mission 16th Concourse. The description of the station agent is "She's in a little plexiglass kiosk next to the ticket readers."

The concrete shapes are scenery in Mission 16th Concourse. "Big blocky shapes, rectangles, circles, half circles, are scuplted in relief along the rough sides of the enormous open stairwell to the plaza. They're reminiscent of brutalist skyscrapers and stoplights, a pleasing jumble of forms decorating the space. You feel more aware of the secret life of buildings. Their bones, their roots. The way they take up space against the sky.[if the player is carrying an ART card]The secretive shapes beckon like doors. You itch to climb them. [end if]"

Understand "shapes", "abstract", "cement", "relief", "concrete", "sculptures", and "stairwell" as the concrete shapes.
  
Instead of climbing when the player is in Mission 16th Concourse and the ART card is switched on:
	say "You grip the cement, rough and cool under your hands. It seems to pull you forward.";
	say "Solid, yet somehow fluid. Building-ness infuses your very soul.";
	say "Creation. Making things. Artifice AS NATURE.";
	say "You snap out of your weird obsession with concrete and look around. Wild!";
	now Noisebridge is mapped up of Mission 16th Concourse;
	now the player is in Noisebridge;
	stop the action.
	
Instead of climbing when the player is in Mission 16th Concourse and the ART card is not switched on:
	say "You plot your route mentally, but decide not to climb. Maybe if you were in more of an artistic mood.";
	stop the action.
		
Mission 16th Plaza is a street level station. Mission 16th Plaza is up from Mission 16th Concourse. The surface of Mission 16th Plaza is brick.

A harried shopper is a woman in Mission 16th Plaza. The description of a harried shopper is "This worried looking lady is clutching several grocery bags on one arm and muttering to herself. Her ankles are swollen."


A grizzled veteran is a man in Mission 16th Plaza. The description of a veteran is "A grizzled veteran in a red Jazzy powerchair. He has some cardboard with writing on it tucked between his back and the seat."
		
Old Bank Corner is south of Mission 16th Plaza. The surface of Old Bank Corner is sidewalk.
	
A rough sleeper is a man in Old Bank Corner. The description of a rough sleeper is "A scruffy man is passed out on the sidewalk next to a trash bag full of scavenged cans."


Papel Picado Plaza is west of Old Bank Corner. The surface of Papel Picado Plaza is brick.

An old guy in a brokendown manual wheelchair is a man in Papel Picado Plaza. The description of an old guy is "A guy slumped over in a rickety wheelchair with no footrests. He's moving slowly backwards, propelling the chair with his feet. The chair has 'SFGH' printed across the back." 

A gothy teenager is a girl in Papel Picado Plaza. The description of a gothy teenager is "A girl in blue lipstick, dressed all in black, is hanging out with her friends."

A skater is a girl in Papel Picado Plaza. The description of a skater is " A skater girl in cargo pants, eating a burrito while talking with friends. Her skateboard is covered with graffiti and stickers."


Rainglass Plaza is a room.	The surface of Rainglass Plaza is smooth.
		
Colibrí Plaza is a room. The surface of Colibrí Plaza is smooth.	
Hummingbird Station is a room. The surface of Hummingbird Station is smooth.
		[write secret room accessible from ART card]

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
		
California Savings Corner is north of Papel Picado Plaza. It is west of Mission 16th Street Plaza. The surface of California Savings Corner is sidewalk.
		

Noisebridge is a room. The surface of Noisebridge is smooth. "You are in a large hackerspace. People are messing around with laptops in the Hackitorium, poking at electronic gadgets, reading in the library area, and playing video games over by the windows. There are piles of junk up against one wall."

The workbench is a supporter in Noisebridge. It is fixed in place.

The 3-D printer is a device in Noisebridge. It is fixed in place. "A weird, boxy gadget on a workbench. It has a big label that says '3-D Printer' [if the player is not blind]in smudgy black letters[end if]. When you put your hand on it, you feel a strange, tingling energy."

The 4-D printer is a device. "A weird, boxy gadget on a workbench. It has a big label that says '4-D Printer' [if the player is not blind]in smudgy black letters[end if]. It has a tangible aura of weirdness surrounding it for a few feet in every direction."

The beer opener shaped like a Dalek is an object.

The 4-D Timelock is a device.

Instead of switching on the 3-D printer:
	say "The 3-D printer clatters and shakes.";
	say "Plastic from a reel above feeds into the machine.";
	say "A little nozzle slowly zigzags its way up and down, across and back.";
	say "An object appears very slowly and then is ejected onto the workbench.";
	now the beer opener is on the workbench.
	
Instead of switching on the 4-D printer:
	say "The 4-D printer clatters and shakes.";
	say "Little nozzles zip around in multiple directions all at once, going so fast you can barely tell what's happening.";
	say "Spools of ethereal metals and strands of light feed into the machine.";
	say "An object appears gradually and then is ejected onto the workbench.";
	now the 4-D timelock is on the workbench.

	
																							

Chapter 25 - Mission 24th St

The description of Mission 24th St is "You are underground, on a BART platform. [if the player is not deaf]The hollow sound of vibrating train rails echoes through the station. Boxy concrete arches run overhead and then frame the sides of the train tunnel. [end if][if the player is not blind]On the platform itself, the floor is covered with long brick-red tiles, while the median walls are tiled in muted orange, gold, and brown, like a desert sunset.[end if]" 

Mission 24th Concourse is up from Mission 24th St. Mission 24th Concourse is a concourse. "[if the player is not blind]Enormous concrete buttresses soar overhead, like a futuristic 70s airplane hangar.[end if] [if the player is not deaf]Music echoes hauntingly from a monumental stairwell rising up to the plaza, combining with the wild harmonics of trains below.[end if] [if the player is not blind]Abstract cement shapes are sculpted in relief along the oddly corrugated sides of the stairwell, open to the sky.[end if][if the player is blind and the player is deaf]A big open space, full of people walking around, mostly underground but you feel the air and light from an enormous, deep, open stairwell to the plaza above. Another flight of stairs leads down to the train platform.[end if]" 

The abstract reliefs are scenery in Mission 24th Concourse. "Big blocky shapes, rectangles, circles, half circles, are scuplted in relief along the rough sides of the enormous open stairwell to the plaza. They're reminiscent of brutalist skyscrapers and stoplights, a pleasing jumble of forms decorating the space. You feel more aware of the secret life of buildings. Their bones, their roots. The way they take up space against the sky."

Understand "shapes", "abstract", "cement", "relief", "concrete", "sculptures", and "stairwell" as the abstract reliefs. 


Calle 24 Plaza is up from Mission 24th Concourse. The surface of Calle 24 Plaza is bumpy.  "All around you are little shops and restaurants, people talking, buses pulling up to the stops on Mission and on 24th Street, music booming from cars going by. [if the player is not blind]Palm trees sway high overhead. Thick metal rails surround the enormous open stairwell that goes down to the station concourse. A huge mural of a train runs across the wall of the taqueria bordering the plaza to the north.[end if]"

The train mural is scenery in Calle 24 Plaza. "A mural of a gleaming BART train carried on the backs of determined workers amid a geometric cityscape."  

A woman called a tamale lady is in Calle 24 Plaza. The description of a tamale lady is "A short, smiling woman in jeans and an army jacket stands next to a cooler on wheels." 

Every turn when the player can see a tamale lady and the turn count is even: 
    say "A tamale lady [one of]watches the people passing by.[or]smiles at you.[or]shifts her weight from one foot to the other. [as decreasingly likely outcomes]";

Every turn when the player can see a tamale lady and the turn count is odd and the player is not deaf:
	say "The tamale lady says [one of] [or]'Tamales de pollo!'[or]'Tamales!'[or]'Tamales de carne!'[as decreasingly likely outcomes]";

A cooler on wheels is an openable container. It is in Calle 24 Plaza. It is scenery. The description is "A red and white cooler with a hinged lid." The sound of the cooler is "As the tamale seller handles the cooler, opening and closing the lid, you can hear that it's made of hollow plastic." 

The tamal is an edible thing in the cooler on wheels. The price of the tamal is $3.00. The description is "A delicious-smelling tamal wrapped in paper and foil."  Understand "tamale" as a tamal.

Does the player mean buying a tamal: it is very likely.

Instead of taking the cooler on wheels:
	say "But that belongs to the nice tamale lady!";

	
A hipster dude on a motorized unicycle is a man in Calle 24 Plaza. The description of a hipster dude is "A guy in jeans, a hoodie, and a black helmet is standing an electric unicycle, tootling along."

A accordion player is a man in Calle 24 Plaza. The description of an accordion player is "A man in full mariachi uniform covered in bright buttons is carrying an accordion."

A guitar player is a man in Calle 24 Plaza. The description of a guitar player is "A mariachi carring a big full bodied guitar and pulling a hand truck loaded with a little amp."

A yelling preacher is a person. In Calle 24 Plaza is a yelling preacher. The description of the preacher is "A short man yells fervently in Spanish into a microphone. You recognize some things from the Bible[if player is not deaf], though it's hard to understand him from the low quality amp at his feet[end if]".

Donuts Corner is west of Calle 24 Plaza. The surface of Donuts Corner is sidewalk. "Just outside the Chinese Food and Donuts shop, this lively streetcorner has buses pulling up along 24th Street, many cars going by, people crossing the street or standing around[if player is not deaf], music blaring from passing cars and from the shops[end if]. [if player is not blind]Along Mission, high overhead, washingtonia palms stretch into the sky.[end if] To the east, there's another plaza."


A funky dude is a man in Donuts Corner. The description of a funky dude is "A guy with long dreads, an army jacket, striped sweatpants, and huge sneakers is playing music from a boombox in his backpack. He seems very much at home on this corner."

A pink-jacketed girl is in Donuts Corner. The description is "A little girl with long braids and a pink jacket. She has a bedazzled Dora the Explorer backpack."


Circle Plaza is south of Donuts Corner. It is bumpy.
The description of Circle Plaza is "[if player is not blind]You head into the crowds of this busy space built around a circular wall. People are selling stuff from tables and little booths. Across 24th street to the north, there's a donut shop. You notice a mural that says something about coffee. [end if][if player is not deaf]Many kinds of music are playing here. [end if][if player is not hearing or player is not sighted]This is a typical, busy, open space on Mission Street.[end if]".

Down from Circle Plaza is Mission 24th Concourse. 

The sound of Circle Plaza is "Norteño blasts its cheerful accordions from a booth, saxophone notes float up from the huge, round stairwell which goes down to the station, songs blare from passing cars."

The gadget table is scenery in Circle Plaza. "Phone cases, cables, chargers, and headphones are laid out on this cheap folding table."
The jewelry table is scenery in Circle Plaza. "You are overwhelmed by the array of cheap rings with big semi-precious stones, earrings made of tiny feathers, and chunky silver bracelets in neat rows."
The textiles booth is scenery in Circle Plaza. "Hanging from the racks set up around the booth are embroidered huipil blouses, woolen ponchos from Peru, Guatemalan woven pants, striped wool shoulder bags, and colorful scarves."
The souvenirs booth is scenery in Circle Plaza. "A rack to the side of this tiny booth is festooned with Mexican flags, belt buckles with the eagle and serpent, 49-ers hats and tshirts, and pink woven plastic shopping bags printed with Frida Kahlo's face."

The textile seller is a person in Circle Plaza. "A very short, very old lady with a million wrinkles and a kind smile."

The gadget seller is a person in Circle Plaza. "A weatherbeaten man in a 49-ers cap."

The stairwell is scenery in Circle Plaza. Understand "wall" as the stairwell. "Burnt red bricks smoothly curve up around the edges of the wall around the big stairwell. There are a few people sitting with their backs against the curve. A couple of medium-sized trees grow out of a planter in a space at the top of the wall. As you study the unusual structure you notice metal gratings set into the plaza, one long strip near the edge where the plaza turns to sidewalk, and gratings around small, spindly saplings. The metal gratings have a circular pattern."

The metal gratings are scenery in Circle Plaza. "Overlapping concentric circles make an unusual and beautiful pattern in the dark metal of these iron gratings. You think of raindrops, clocks, gears interlocking."

The trees are scenery in Circle Plaza. 

The coffee mural is scenery in Circle Plaza. "[if the player is not blind]A huge mural in bright colors splashes across the building to the west of the plaza. Two wide eyed, child-like cartoon characters in Aztec regalia look out from the mural. Above them is a cartoon street sign that reads COFFEE and across it, MISSION. Below the mural is a sloping area and a few steps that make a sort of stage. [end if][if the player is blind]A young guy next to you suddenly speaks up. 'Oh, you're curious about the mural? I know some guys who worked on that with Mel Waters, he's got stuff all over the Mission. The cafe people, Coffee and Mission, they like it, and the characters, they're like, I dunno, chibi Aztec king and queen or something. You ever see Danza Azteca? Xitlalli, they come to the pow-wows. Big feathers, these sort of shell things on their ankles.[end if]" 

The stage is scenery in Circle Plaza. 

A cheerful shopper is a woman in Circle Plaza. The description of a cheerful shopper is "A cheerful seeming woman laden with shopping bags. She has groceries, flowers, and all kinds of other stuff in re-usable bags. Somehow, she's also holding onto her daughter. [if greeted]She nods and says hello.[end if]" 

A wide-eyed child is a girl in Circle Plaza. The description of a wide-eyed child is "A little girl clutching a bottle of mexican coca-cola is staring at everything, holding her mom's hand. [if greeted]She seems shy.[end if]"

A sidewalk artist is a man in Circle Plaza. The description of a sidewalk artist is "[if greeted]Buddy [otherwise] A scruffy man[end if] is lying on the sidewalk, drawing in a carefree way on a notepad with sharpie markers scattered all around him. A duffle bag and a bag of peanut butter cups are open next to him."

A sidewalk artist carries a notepad. 

After greeting a sidewalk artist for the first time:
	say "The artist looks up at you. 'Oh hey.' He says. 'Happy Tuesday!'";
	say "'Name's Buddy. I like to draw the days.'[line break]";
	now the printed name of the sidewalk artist is "Buddy";
	now the sidewalk artist is proper-named;



After talking to the sidewalk artist:
	unless sidewalk artist is greeted: 
		say "He doesn't seem to want to pay attention to you.";
	otherwise:
		say "'You like my drawing? It's Tuesday.";
		say "'That's because it's Tuesday today. It can be Tuesday other times too.'";
		say "'Especially right here in the plaza.'";
		say "Buddy thinks for a minute, considering you.";
		say "'Time is what you make of it. What with that magic marker and all.'";
		say "Buddy laughs and goes back to his notepad.";
		now the magic marker is magical;
		say "The magic marker seems to tingle for a moment in your pocket.";


A flower seller is a person. In Donuts Corner is a flower seller. The description of a flower seller is "[if the player is not blind]A short, smiling woman in a baseball hat and a red checked scarf pushes her wheely cart full of roses and carnations. Her jacket has a ladybug pin. [end if][if player is blind]There's a short woman just next to you, fussing over a metal cart.[end if]" 

Understand "Mariquita" as the flower seller when the flower seller is proper-named.

Instead of examining the flower seller for the first time:
	say "[if the player is not blind]A short, smiling woman in a baseball hat and a red checked scarf pushes her shopping cart full of roses and carnations. Her jacket has a ladybug pin. [end if][if player is blind]A short woman just next to you, fussing over a metal cart.[end if][line break]";
	say "You stop and chat with her. She's very friendly. [line break]Her name is Mariquita.";
	Now the printed name of the flower seller is "Mariquita";
	now the flower seller is proper-named;
	now the flower seller is greeted;
	
Every turn when the turn count is even and the flower seller is proper-named and the player can see a flower seller and the player is not blind: 
    say "Mariquita [one of] [or]beams at you with a big happy grin.[or]calls out, 'Flores!'[or]offers you a little bunch of carnations tied with string.[or]shares a coffee with a friend.[or]fusses over her bunches of flowers, arranging them nicely.[or]watches the people passing by.[or]smiles as she stops to talk with a friend.[as decreasingly likely outcomes]"

A shopping cart is an open transparent container. It is scenery. It is in Donuts Corner. The description of the shopping cart is "A metal folding shopping cart on wheels. "

The little bunch of carnations is a thing in the shopping cart. The price of the carnations is $1.00. The description is "A bunch of red carnations, stems wrapped in paper and tied with green twine." 

Instead of taking the basket:
	say "But that belongs to Mariquita! And she's so nice.";



Calle 24 Corner is east of Circle Plaza. The surface of Calle 24 Corner is sidewalk. "This busy street corner by the McDonalds is grimy. It's basically a crowded spot where people wait to cross the street. Across Mission to the west, there's a nice plaza with a busy market. Across 24th Street to the north, another lovely plaza with musicians, preachers, and some places to sit. [if player is not Deaf]Classical music is blasting from hidden speakers at an obnoxious level, meant to drive loiterers away.[end if]" 

Calle 24 Corner is south of Calle 24 Plaza. The surface of Calle 24 Corner is sidewalk.

A raccoon is a kind of animal.  In Calle 24 Corner is a raccoon. The description of the raccoon is "A greasy looking plump raccoon. It's battered, but unbowed."  
Every turn when the player can see a raccoon and the turn count is even: 
    say "A raccoon [one of]hauls itsef out of a concrete trash bin[or]skulks into a nearby alleyway[or]hides in a little nook, eating some discarded fries[or]has a little nap in a pile of trash[as decreasingly likely outcomes]."

A woman called a stroller-pushing lady is in Calle 24 Corner. The description of the stroller-pushing lady  is "A lady in bright lipstick and a wig slightly askew, pushing a stroller. Wait . . . it's not a baby in there. It's a chihuahua in a sweater and the sweater matches its owner's sweater."

A guy in a yellow vest is a man in Calle 24 Corner. The description of the guy is "A guy in a high visibility vest, sweeping up trash. He's carrying a dustpan on a long handle. He seems a bit careworn."



Brutalist Plaza is a room.  It is uneven. "You pick your way through paths around enormous, rough-hewn blocks of concrete and stone. They tower overhead like the tufa mounds of Mono Lake or a cityscape in a dream. A little to the southwest, the path broadens."

Times Circle is southwest of Brutalist Plaza. It is bumpy. "You are standing in a plaza, a dream echo of the circular plaza of the world you know best. Underfoot, an enormous circle split into sections is set into the stones." 

An artifact is a kind of thing.
The greenstone caiman, the malachite hurricane, the moonstone house, the serpentinite lizard, the chrysoprase serpent, the quartz skull, the aventurine deer, the quartzite rabbit, the azurite wave, the tourmaline dog, the bloodstone monkey, the stone tuft of grass, the jasper reed, the fire opal jaguar, the granite eagle, the obsidian vulture, the sardonyx volcano, the obsidian knife, the amethyst cloud, and the carnelian flower are artifacts.

The calendar is a fixed in place container in Times Circle. The calendar is scenery. The description of the calendar is "An enormous Central American calendar circle. You've heard of them before -- the most famous is the Aztec sun stone of Mexico City. Around the edges of the innermost or first ring are 20 divisions, each containing a different hollowed out space in elaborate shapes. The first ring is oddly compelling. [if the calendar does not contain an artifact]You wish you could read the glyphs. [end if][if the calendar contains an artifact][paragraph break]The calendar glyphs are glowing with strange energy! [end if][if the calendar contains 20 artifacts]The sun circle begins to shake. It floats up into the air![end if]" 


Understand "calendar", "circle", "stones", "ground" and "sun stone" as the calendar.
Understand "ring" or "divisions" or "shapes"  or "glyphs" as the first ring.  

The first ring is scenery in Times Circle. "The hollow glyphs in the first circle draw your attention from the top, around the ring counterclockwise. Dreamlike, you understand what they represent. [paragraph break]
Cipactli, the Caiman[if the greenstone caiman is in the calendar] (filled with the greenstone caiman) (glowing)[end if].[line break]
Ehēcatl, Wind[if the malachite hurricane is in the calendar] (filled with the malachite hurricane)(glowing)[end if].[line break]
Calli, House[if the moonstone house is in the calendar] (filled with the moonstone house) (glowing)[end if].[line break]
Cuetzpalin, the Lizard[if the serpentinite lizard is in the calendar] (filled with the serpentinite lizard) (glowing)[end if].[line break]
Cõātl, the Serpent[if the chrysoprase serpent is in the calendar] (filled with the chrysoprase serpent) (glowing)[end if].[line break]
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
5	caiman	
5	hurricane
5	House
5	Lizard
5	Serpent
5	skull
5	Deer
5	Rabbit
5	Wave
5	Dog
5	Monkey
5	Grass
5	Reed
5	Jaguar
5	Eagle
5	Vulture
5	volcano
5	Knife
5	cloud
5	carnelian flower


After switching on the ART card:
	now Brutalist Plaza is mapped up of Mission 24th Concourse;
	now Mission 24th Concourse is mapped down of Brutalist Plaza;
	
After switching off the ART card:
	now Calle 24 Plaza is mapped up of Mission 24th Concourse;
	now Mission 24th Concourse is mapped down of Calle 24 Plaza;
	
After writing on the ART card:
	now Calle 24 Plaza is mapped up of Mission 24th Concourse.  
	


Chapter 26 - Montgomery

The description of Montgomery is "You are on a BART platform."

Chapter 27 - North Berkeley

The description of North Berkeley is "You are on a BART platform."

Chapter 28 - North Concord/Martinez

The description of North Concord/Martinez is "You are on a BART platform."

Karkin is a room.

Chapter 29 - Oakland 12th St

The description of Oakland 12th St is "You are on a BART platform."

AIM Freedom and Survival School is a room.


Chapter 30 - Oakland 19th St

The description of Oakland 19th St is "You are on a BART platform."

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

The description of Powell is "You are on a BART platform."

Chapter 37 - Richmond

The description of Richmond is "You are on a BART platform."

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

Chapter 48 - West Oakland

The description of West Oakland is "You are on a BART platform."



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
	
After looking:
	if the player is in Liftlandia or the player is in a concourse or the player is in a street level station:
		say "There is an elevator in the north wall.";
	if the player is in a concourse:
		now a ticket reader is in the location of the player;
		say "There is a ticket reader here.";
		continue the action.


A panel in the wall is in the elevator. It is scenery. Understand "buttons"  as A panel in the wall. The description is "There are three buttons on the wall: S, C, and P." 
The S button, the C button, and the P button are parts of the panel in the wall. 
The description of the S button is "A round button printed with a raised S."
The description of the C button is "A round button printed with a raised C."
The description of the P button is "A round button printed with a raised P."

[figure out what level you're entering the elevator from relative to other levels]
After going to the elevator:
	if the player is wearing the powerchair:
		say "You roll your chair into the elevator. The door closes.";
	if the player is not wearing the powerchair:
		say "You step into the elevator. The door closes.";
	now the former location is mapped south of the elevator;
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
		say "The doors open and you look out to [top of shaft] to the south.";
	
Instead of pushing the P button:
	if the former location is bottom of shaft:
		say "You're already at the platform level.";
	otherwise:
		say "You push the P button. [if player is not blind]It lights up.[end if]";
		say "The elevator creaks and slowly goes down.";
		say "Time passes. You smell a lot of things, wishing you couldn't.";
		now the bottom of shaft is mapped south of the elevator;	
		say "There is a horrible jolt. The doors open and you look out to [bottom of shaft] to the south.";
		
Instead of pushing the C button:
	if the former location is middle of shaft:
		say "You're already at the concourse level.";
	if the former location is top of shaft:
		say "You push the C button. [if player is not blind]It lights up.[end if]" ;
		say "The elevator creaks and slowly goes down.";
		now the middle of shaft is mapped south of the elevator;	
		say "The doors open and you look out to [middle of shaft] to the south.";
		stop the action;
	if the former location is bottom of shaft:
		say "You push the C button. It lights up. The elevator creaks and slowly goes up.";
		say "The elevator almost imperceptibly moves up. Time passes. ";
		now the middle of shaft is mapped south of the elevator;	
		say "The doors open and you look out to [middle of shaft] to the south.";


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

Carry out switching on a card:
	say "The card hums with energy.";
	if the player is carrying an ART card:
		say "[The noun] makes you feel fizzy all over.";
		say "You feel creative, perceptive, and more analytical than usual.";
		say "The whole world feels different.";
		say "Maybe you should explore it with this new level of awareness.";
	
Carry out switching off a card:
	say "The card shuts off with a little thump.";
	if the player is carrying an ART card:
		say "The world looks ordinary again. It's kind of a relief.";

		

A writing utensil is a kind of thing. A magic marker is a writing utensil. 
A writing utensil can be magical or mundane. A writing utensil is usually mundane.

A card is a kind of device.  
A BART card, an ART card, a BAT card, a BAR card, a CART card, and a WART card are cards.
 

The description of a BART card is "A [if player is not blind]blue and white card[end if] with a magnetic stripe. It says 'BART' in big [if player is not blind] black[end if] letters that seem oddly like scribbly handwriting. It buzzes very faintly in your hand."

The description of an ART card is "A [if player is not blind]blue and white card[end if] with a magnetic stripe. It says 'ART' in big [if player is not blind] black[end if] letters that seem oddly like scribbly handwriting. The letters blur and seem to move." 

The description of a BAT card is "A [if player is not blind]blue and white card[end if] with a magnetic stripe. It says 'BAT' in big [if player is not blind] black[end if] letters that seem oddly like scribbly handwriting. The letters blur and seem to move."

The player is carrying a magic marker and a BART card.

A magic marker is an object. The description of a magic marker is "A magic marker. [if the marker is magical]It fizzes and tingles with energy as if it were eager to make its mark.[end if]"

After writing on: 
	if the player is not carrying a BAT card:
		now the description of yourself is "As fantabulous as ever. [line break] You are [sightedness], [deafness], and [ambulation].";

Writing on is an action applying to two visible things. Understand "write on [something] with [something]" as writing on. Understand "tag [something] with [something]" or "scribble on [something] with [something]" as writing on. 

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
			say "You check yourself. Everything seems ordinary.";
			now the player is mobile;
		otherwise:
			if a random chance of 1 in 2 succeeds:
				say "You scribble on the card. It fizzes and tingles.";
				now the player is carrying an ART card;
				now the player is mobile;
			otherwise:
				say "You feel very strange.";
				now the player is carrying a BAT card;
				now the description of the player is "You are a huge bat, clutching your possessions in your claws as you flap around in the air.";
				if the player is wearing a wheelchair:
					silently try standing up;
				repeat with the item running through carried things: 
					silently try dropping the item;
				now the player is flying;
	if the noun is a 3-D printer:
		say "Everything contracts to a tiny point, then expands.";
		now the noun is nowhere;
		now a 4-D printer is in the location of the player;
	if the noun is a 4-D printer:
		say "Time seems to stop, then start again.";
		now the noun is nowhere;
		now the 3-D printer is in the location of the player;




Part 10 - Train rules

[train-display]

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

The Blue Line train is a relatively-scheduled train-car. The Blue Line Train is in Daly City. The waiting duration of the Blue Line train is 0 minutes. The t-schedule of the Blue Line train is the Table of Blue Line Schedule. The description is "Some train cars, you aren't sure how many."

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
[Thanks to Danny O'Brien, Milo Kim, Laura Henry, Ada Norton for playtesting.]
[Thanks to Debbie Notkin for local history tips.]



