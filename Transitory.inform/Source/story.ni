"Transitory" by lizzard

Include Transit System by Emily Short.
[Include Rideable Vehicles by Graham Nelson.]

Include Exit Lister by Eric Eve.

Use scoring.


Section 4 - Some beginning stuff

When play begins: 
	now the command prompt is "[time of day] >" ;
	now right hand status line is "[number of visited rooms]/[number of rooms] locations";

[temporary start of game location for testing]

Home Base is west of Circle Plaza. "A bare room."

In Home Base is an opaque, closed, openable container called a wardrobe. The wardrobe is scenery. 
The wraparound mirrorshades, headphones, a thick woolly hat, the cruel shoes, and earplugs are in the wardrobe.
A powerchair is in Home Base.


Section 1 - Multisensory
[Written to include and extend Touchy Feely]
[Touchy Feely by Quantum Games begins here. Extended by Liz Henry 2019]

["Allows the player to use the other senses on things much more fully. Works well with, but does not require, Fully Spatial by Quantum Games. Fixed some report rules, Liz, 2019."] [Use authorial modesty.]
[Putting this in main game code for ease of updating for playtesting]
[2019-01-15 Fixed some report rules that didn't work right]
[2019-02-02 Putting more possible default sensory descriptions]

Part I - Feels

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

Part II - Scents

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

Part III - Tastes

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

Part IV - Sounds

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

Part V - Descriptions

Understand "see" as looking.

Understand "see [something]" as examining.




Part VI - Special testing commands - Not for release

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


Section 3 - Disabilities


Part 1 - Sightedness

Sightedness is a kind of value. The sightednesses are blind, sighted, low-vision, and unknown. Understand “blind” as blind. Understand “sighted” as sighted. Understand "low vision" as low-vision.
 
A person has a sightedness. The sightedness of a person is usually sighted. The sightedness of the player is sighted.

wraparound mirrorshades are a wearable object. "Shiny reflecting glasses." 
The description of wraparound mirrorshades is "Astonishingly dorky metallic glasses."
Understand "glasses" or "shades" as wraparound mirrorshades.
  

blue goggles are a wearable object. "Thick blue goggles." 
The description of blue goggles is "Large, thick-lensed, coke-bottle tinted goggles."
Understand "goggles" as blue goggles.


A white cane is an object. "A long white cane."
The description of the white cane is "A long, thin, white cane, used for navigation by people who don't see well or who are blind"

Before wearing the mirrorshades:
	now the player is blind;
	
After taking off the mirrorshades:
	now the player is sighted; 
	
Before wearing the goggles:
	now the player is low-vision; [this doesn't have an effect yet, until i have text munging]
	
After taking off the goggles:
	now the player is sighted;

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

Part 2 - Deafness

Deafness is a kind of value. The deafnesses are Deaf, HoH, hearing, and not known. Understand “Deaf” as Deaf. Understand "hard of hearing" as HoH. 

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
	now the player is HoH;
	
After taking off the thick woolly hat:
	now the player is hearing;
	
earplugs are a wearable object. "Little orange foam earplugs." 
The description is "Foam earplugs, useful for when you don't want to be bothered by noise." 
The sound is "They don't have a sound. That's the whole point."
The feel is "Squashy little bits of foam."


Before wearing the earplugs:
	now the player is Deaf;  [this is meant to be little-d deaf but i havent figured out differentiation]
	
After taking off the earplugs:
	now the player is hearing;

Instead of listening when the player is Deaf: 
	say "Good luck with that one. You can't hear a thing!"
	[weird, this causes a compiler error]

Part 3 - Mobility

Ambulation is a kind of value. The ambulations are wheeling, walking, limping, flying, and hopping. Understand “wheeled” as wheeling. Understand “walking” as walking. Understand "limping" as limping. Understand "hopping" as hopping.
 
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


Before going to any room:
	if the ambulation of the player is flying:
		say "You flap your wings vigorously.";
	if the ambulation of the player is wheeling:
		unless the player is wearing a wheelchair:
			say "You have some trouble getting around.";
			stop the action;
		otherwise:
			say "[one of][or]You wheel across pleasantly flat ground.[or]You zoom on over.[or]This is such a nice, zippy chair.[or]There's a little bumpiness to the floor but no big deal.[or]Pirouetting a bit in place, you wheel on over.[as decreasingly likely outcomes]";
	if the ambulation of the player is walking:
		if the player is carrying a wheelchair:
			say "You have some trouble going anywhere while carrying something that big. Maybe if you wear it.";
			stop the action;
	
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

The last property-aggregation rule (this is the print aggregated properties rule):
	if the number of entries in the tagline is greater than 0:
		say " ([tagline])";
		rule succeeds;
	rule fails. 




Part 4 - Some varied defaults for examining

[replace the look description for examining objects, without assuming sightedness]

The examine undescribed things rule is not listed in any rulebook.

Carry out examining (this is the multisensory examine undescribed things rule):
	if examine text printed is false:
		say "[one of]Nothing special about [the noun].[or]Ordinary enough.[or]Yeah, it's [a noun].[or]You note the presence of [a noun].[purely at random][run paragraph on]";

The description of yourself is "As good-looking as ever. [line break] You are [sightedness], [deafness], and [ambulation]."	
[todo: fix the paragraph breaks after objects with descriptions]	
Studying the vicinity is an action applying to nothing. 

Report studying the vicinity:
	if the player is blind or the player is low-vision:
		say "You explore with your cane tip and free hand, navigating the area. [paragraph break]";
		if the location does not contain something which is scenery:
			say "There's little of interest in the [location]." instead;	
		repeat with point of interest running through scenery in the location:
			say "[point of interest]: [run paragraph on]";
			try examining the point of interest;			
	otherwise:
		say "You should try examining specific things with all available senses."

Understand "tap" or "explore" as studying the vicinity. 



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
    if the time understood is greater than 10 minutes, say "That seems so boring. Maybe looking around or exploring would be better." instead.	

Section 8 - Money stuff

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


Part 5 - All the places

Section 1 - Regions
[Regions]

A room can be a platform.
A room can be a concourse.

A room can be a north endpoint.
A room can be a south endpoint. 
A room can be an east endpoint.
A room can be a west endpoint.

Richmond is a north endpoint.
Millbrae is a south endpoint.

Liftlandia is a region.  [everywhere an elevator might appear]
Mission 24th Concourse is in Liftlandia.

Street Level is a region in Liftlandia. 
Calle 24 Plaza is in Street Level. 

Platforms is a region in Liftlandia.  [everywhere that is a train stop]

Westside is a region in Platforms. Daly City, Balboa Park, Glen Park, Mission 24th St, Mission 16th St, Civic Center, Powell, Montgomery, Embarcadero, and West Oakland are in Westside. 

SFO Extension is a region in Platforms.  Millbrae, San Bruno, South San Francisco, Colma are in SFO Extension.

Oakland Central is a region in Platforms. Oakland 12th St, Oakland 19th St, MacArthur are in Oakland Central.

Yellow Line is a region in Platforms. Rockridge, Orinda, Lafayette,  Walnut Creek, Pleasant Hill, Concord, North Concord/Martinez, Pittsburg/Bay Point, Pittsburg Center, and Antioch are in Yellow Line. 

North Bay is a region in Platforms. Ashby, Downtown Berkeley, North Berkeley, El Cerrito Plaza, El Cerrito del Norte, and Richmond are in North Bay. 

Oakland South is a region in Platforms. Lake Merritt, Fruitvale, Coliseum, San Leandro, and Bay Fair are in Oakland South.

South Bay is a region in Platforms. Hayward, South Hayward, Union City, Fremont, and Warm Springs/South Fremont are in South Bay. 

Blue Line is a region in Platforms. Castro Valley, West Dublin/Pleasanton, and Dublin/Pleasanton are in Blue Line. 

Section 2 - Locations, organized by train stops

[train stops, alphabetically with descriptions]

Chapter 11 - Antioch 

The description of Antioch is "You are on a BART platform. You hear the noise of cars on a nearby highway."

Chapter 12 - Ashby

The description of Ashby is "You are on a BART platform."

Chapter 13 - Balboa Park

The description of Balboa Park is "You are on a BART platform."

Chapter 14 - Bay Fair

The description of Bay Fair is "You are on a BART platform."

Chapter 15 - Downtown Berkeley

The description of Downtown Berkeley is "You are on a BART platform."

Chapter 16 - Castro Valley

The description of Castro Valley is "You are on a BART platform."

Chapter 17 - Civic Center

The description of Civic Center is "You are on a BART platform."

Chapter 18 - Coliseum

The description of Coliseum is "You are on a BART platform."

Chapter 19 - Colma

The description of Colma is "You are on a BART platform."

Chapter 20 - Concord

The description of Concord is "You are on a BART platform."

Chapter 21 - Daly City

The description of Daly City is "You are on a BART platform. Fog drifts in from the nearby ocean."

Chapter 22 - Dublin/Pleasanton

The description of Dublin/Pleasanton is "You are on a BART platform. The mysterious suburban world of Dublin/Pleasanton surrounds you."

Chapter 23 - El Cerrito del Norte

The description of El Cerrito del Norte is "You are on a BART platform."

Chapter 24 - El Cerrito Plaza

The description of El Cerrito Plaza is "You are on a BART platform."

Chapter 25 - Embarcadero

The description of Embarcadero is "You are on a BART platform underground. Lots of people are around and there are muffled announcements over an intercom."

Chapter 26 - Fremont

The description of Fremont is "You are on a BART platform."

Chapter 27 - Fruitvale

The description of Fruitvale is "You are on a BART platform."

Chapter 28 - Glen Park

The description of Glen Park is "You are on a BART platform."

Chapter 29 - Hayward

The description of Hayward is "You are on a BART platform."

Chapter 30 - Lafayette

The description of Lafayette is "You are on a BART platform."

Chapter 31 - Lake Merritt

The description of Lake Merritt is "You are on a BART platform."

Chapter 32 - MacArthur

The description of MacArthur is "You are on a BART platform."

Chapter 33 - Millbrae

The description of Millbrae is "You are on a BART platform outside. Many people and trains are all around. There are weird looking cement statues of commuters in awkward positions on the platform."

Chapter 34 - Mission 16th St

The description of Mission 16th St is "You are underground, on a BART platform. The haunting sound of train wheels on the rails echoes all around. The platform floor is covered with long brick-red tiles, while the median walls are tiled in light and dark blue, green, gold, and brown tiles like the colors of a tropical beach on a sunny day."

Mission 16th Concourse is up from Mission 16th St. Mission 16th is a concourse. "Low but nicely curved arches made of smooth concrete form the ceiling of this long, busy station. Music echoes from the stairwells. The acoustics are great!"

																								

Chapter 35 - Mission 24th St

The description of Mission 24th St is "You are underground, on a BART platform. [if the player is hearing]The hollow sound of vibrating train rails echoes through the station. Boxy concrete arches run overhead and then frame the sides of the train tunnel. [end if][if the player is sighted]On the platform itself, the floor is covered with long brick-red tiles, while the median walls are tiled in muted orange, gold, and brown, like a desert sunset.[end if]" 

Mission 24th Concourse is up from Mission 24th St. Mission 24th Concourse  is a concourse. "[if the player is sighted]Enormous concrete buttresses soar overhead, like a futuristic 70s airplane hangar.[end if] [if the player is hearing]Music echoes hauntingly from a monumental stairwell rising up to the plaza, combining with the wild harmonics of trains below.[end if] [if the player is sighted]Abstract cement shapes are sculpted in relief along the oddly corrugated sides of the stairwell, open to the sky.[end if]" 

Calle 24 Plaza is up from Mission 24th Concourse.  "All around you are little shops and restaurants, people talking, buses pulling up to the stops on Mission and on 24th Street, music booming from cars going by. [if the player is sighted]Palm trees sway high overhead. Thick metal rails surround the enormous open stairwell that goes down to the station concourse. A huge mural of a train runs across the wall of the taqueria bordering the plaza to the north.[end if]"

The train mural is scenery in Calle 24 Plaza. "A mural of a gleaming BART train carried on the backs of determined workers amid a geometric cityscape."  


A tamale lady is a person. In Calle 24 Plaza is a tamale lady. The description of a tamale lady is "A short, smiling woman in jeans and an army jacket stands next to a cooler on wheels." 
Every turn when the player can see a tamale lady and the turn count is even: 
    say "A tamale lady [one of]watches the people passing by[or]says 'Tamales!'[or]shifts her weight from one foot to the other[or]says 'Tamales de pollo!'[or]smiles at you[or]says 'Tamales de carne!'[as decreasingly likely outcomes]"

A cooler on wheels is an openable container. It is in Calle 24 Plaza. The description is "A red and white cooler with a hinged lid." The sound of the cooler is "As the tamale seller handles the cooler, opening and closing the lid, you can hear that it's made of hollow plastic."

The tamal is an edible thing in the cooler on wheels. The price of the tamal is $3.00. The description is "A delicious-smelling tamal wrapped in paper and foil." 

Instead of taking the cooler on wheels:
	say "But that belongs to the nice tamale lady!";

A yelling preacher is a person. In Calle 24 Plaza is a yelling preacher. The description of the preacher is "A short man yells fervently in Spanish into a microphone. You recognize some things from the Bible, though it's hard to understand him from the low quality amp at his feet."

Calle 24 Northwest Corner is west of Calle 24 Plaza. "Just outside the Chinese Food and Donuts shop, this lively streetcorner has buses pulling up along 24th Street, many cars going by, people crossing the street and just standing around, music blaring from passing cars and from the shops all around. Along Mission, high overhead, washingtonia palms stretch into the sky. To the east, there's another BART plaza with an elevator."


Circle Plaza is south of Calle 24 Northwest Corner.
The description of Circle Plaza is "
[if player is sighted]You head into the crowds of this busy space built around a circular wall. People are selling stuff from tables and little booths. Across 24th street to the north, there's a donut shop. You notice a mural that says something about coffee.[end if]
[if player is hearing]Many kinds of music are playing here. Norteño blasts its cheerful accordions from a booth, saxophone notes float up from the huge, round stairwell which goes down to the station, songs blare from passing cars.[end if]
[if player is not hearing or player is not sighted]This is a typical, busy, open space on Mission Street.[end if]"

The gadget table is scenery in Circle Plaza. "Phone cases, cables, chargers, and headphones are laid out on this cheap folding table."
The jewelry table is scenery in Circle Plaza. "You are overwhelmed by the array of cheap rings with big semi-precious stones, earrings made of tiny feathers, and chunky silver bracelets in neat rows."
The textiles booth is scenery in Circle Plaza. "Hanging from the racks set up around the booth are embroidered huipil blouses, woolen ponchos from Peru, Guatemalan woven pants, striped wool shoulder bags, and colorful scarves."
The souvenirs booth is scenery in Circle Plaza. "A rack to the side of this tiny booth is festooned with Mexican flags, belt buckles with the eagle and serpent, 49-ers hats and tshirts, and pink woven plastic shopping bags printed with Frida Kahlo's face."


The stairwell is scenery in Circle Plaza. Understand "wall" as the stairwell. "Burnt red bricks smoothly curve up around the edges of the wall around the big stairwell. There are a few people sitting with their backs against it. A couple of medium-sized trees grow out of a planter in a space at the top of the wall. As you study the unusual structure you notice metal gratings set into the plaza, one long strip near the edge where the plaza turns to sidewalk, and gratings around small, spindly saplings. The metal gratings have a circular pattern."

The metal gratings are scenery in Circle Plaza. "Overlapping concentric circles make an unusual and beautiful pattern in the dark metal of these iron gratings."

The coffee mural is scenery in Circle Plaza. "A huge mural in bright colors splashes across the building to the west of the plaza. Two wide eyed, child-like cartoon characters in Aztec regalia look out from the mural. Above them is a cartoon street sign that reads COFFEE and across it, MISSION. Below the mural is a sloping area and a few steps that make a sort of stage." 

The stage is scenery in Circle Plaza. 

A flower seller is a person. In Circle Plaza is a flower seller. The description of a flower seller is "A short, smiling woman in a baseball hat and a red checked scarf pushes  her wheely cart full of roses and carnations. Her jacket has a ladybug pin. [if player is blind]You can hear a short woman just next to you, fussing over a metal cart.[end if]".

Every turn when the turn count is even and the player can see a flower seller: 
    say "A flower seller [one of]beams at you with a huge happy grin[or]calles out, 'Flores!'[or]offers you a little bunch of carnations tied with string[or]shares a coffee with a friend[or]fusses over her bunches of flowers, arranging them nicely[or]watches the people passing by[or]smiles as she stops to talk with a friend[as decreasingly likely outcomes]."

A shopping basket is an openable container. It is scenery. It is in Circle Plaza. The description of the shopping basket is "A metal folding shopping basket on wheels. "

The little bunch of carnations is a thing in the shopping basket. The price of the carnations is $1.00. The description is "A bunch of red carnations, stems wrapped in paper and tied with green twine." 

Instead of taking the basket:
	say "But that belongs to Mariquita! And she's so nice.";


Calle 24 Southeast Corner is east of Circle Plaza. "This busy street corner by the McDonalds is grimy. It's basically a crowded spot where people wait to cross the street. Across Mission to the west, there's a nice plaza with a busy market. Across 24th Street to the north, another lovely plaza with musicians, preachers, and some places to sit."
Calle 24 Southeast Corner is south of Calle 24 Plaza. 
A raccoon is a kind of animal.  In Calle 24 Southeast Corner is a raccoon. The description of the raccoon is "A greasy looking plump raccoon. It's battered, but unbowed."  
Every turn when the player can see a raccoon and the turn count is even: 
    say "A raccoon [one of]hauls itsef out of a concrete trash bin[or]skulks into a nearby alleyway[or]hides in a little nook, eating some discarded fries[or]has a little nap in a pile of trash[as decreasingly likely outcomes]."


Brutalist Plaza is a room. "You pick your way through paths around enormous, rough-hewn blocks of concrete and stone. They tower overhead like the tufa mounds of Mono Lake or a cityscape in a dream."

Times Circle is southwest of Brutalist Plaza. "You are standing in a dreamlike plaza, an enormous circle split into sections set into the stones underfoot. Each section has a hollowed out shape and shimmering glyphs. You wish you could read them." 

The calendar is a fixed in place container in Times Circle. "An enormous Central American calendar circle. You've heard of them before -- the most famous is the Aztec sun stone of Mexico City. Around the edges of the innermost or first ring are 20 divisions, each containing a different hollowed out space in elaborate shapes. The first ring is oddly compelling." 

Understand "calendar" and "circle" as the calendar.
Understand "ring" or "divisions" or "shapes" as the first ring.  

The first ring is scenery in Times Circle. "The hollow glyphs in the first circle draw your attention from the top, around the ring counterclockwise. Dreamlike, you understand what they represent. [paragraph break]
Cipactli, the Caiman.[line break]
Ehēcatl, Wind.[line break]
Calli, House.[line break]
Cuetzpalin, the Lizard.[line break]
Cõātl, the Serpent.[line break]
Miquiztli, Death.[line break]
Mazātl, the Deer.[line break]
Tōchtli, the Rabbit.[line break]
Ātl, Water.[line break]
Izcuīntli, the Dog.[line break]
Ozomahtli, the Monkey.[line break]
Malīnalli, Grass.[line break]
Ācatl, Reed.[line break]
Ocēlōtl, Jaguar. [line break]
Cuāuhtli, Eagle. [line break]
Cōzcacuāuhtli, Vulture. [line break]
Ōlīn, Earthquake.[line break]
Tecpatl, Obsidian Knife.[line break]
Quiyahuitl, Rain.[line break]
Xōchitl, Flower."



After switching on the ART card:
	now Brutalist Plaza is mapped up of Mission 24th Concourse;
	now Mission 24th Concourse is mapped down of Brutalist Plaza;
	
After switching off the ART card:
	now Calle 24 Plaza is mapped up of Mission 24th Concourse;
	now Mission 24th Concourse is mapped down of Calle 24 Plaza;
	
After writing on the ART card:
	now Calle 24 Plaza is mapped up of Mission 24th Concourse.  
	


Chapter 36 - Montgomery

The description of Montgomery is "You are on a BART platform."

Chapter 37 - North Berkeley

The description of North Berkeley is "You are on a BART platform."

Chapter 38 - North Concord/Martinez

The description of North Concord/Martinez is "You are on a BART platform."

Chapter 39 - Oakland 12th St

The description of Oakland 12th St is "You are on a BART platform."

Chapter 40 - Oakland 19th St

The description of Oakland 19th St is "You are on a BART platform."

Chapter 41 - Oakland International Airport

The description of Oakland International Airport is "You are on a BART platform."

Chapter 42 - Orinda

The description of Orinda is "You are on a BART platform."

Chapter 43 - Pittsburg/Bay Point

The description of Pittsburg/Bay Point is "You are on a BART platform."

Chapter 44 - Pittsburg Center

The description of Pittsburg Center is "You are on a BART platform."

Chapter 45 - Pleasant Hill

The description of Pleasant Hill is "You are on a BART platform."

Chapter 46 - Powell

The description of Powell is "You are on a BART platform."

Chapter 47 - Richmond

The description of Richmond is "You are on a BART platform."

Chapter 48 - Rockridge

The description of Rockridge is "You are on a BART platform."

Chapter 49 - San Bruno

The description of San Bruno is "You are on a BART platform."

Chapter 50 - San Francisco International Airport

The description of San Francisco International Airport is "You are on a BART platform."

Chapter 51 - San Leandro

The description of San Leandro is "You are on a BART platform."

Chapter 52 - South Hayward

The description of South Hayward is "You are on a BART platform."

Chapter 53 - South San Francisco

The description of South San Francisco is "You are on a BART platform."

Chapter 54 - Union City

The description of Union City is "You are on a BART platform."

Chapter 55 - Walnut Creek

The description of Walnut Creek is "You are on a BART platform."

Chapter 56 - Warm Springs/South Fremont

The description of Warm Springs/South Fremont is "You are on a BART platform."

Chapter 57 - West Dublin/Pleasanton

The description of West Dublin/Pleasanton is "You are on a BART platform."

Chapter 58 - West Oakland

The description of West Oakland is "You are on a BART platform."



Section 5 - Elevator 

[a simple 3-level elevator appears in any train station location where it might be, if the player goes there]

The former location is a room that varies. 
 First carry out going rule:
    now the former location is the location. 

The top of shaft is a room that varies. 
The middle of shaft is a room that varies.
The bottom of shaft is a room that varies.

The Elevator is a room. The description of the Elevator is "A grimy elevator that smells like pee. You take a deep sniff and regret it as the stale urine smell mixes horribly with mildew, dusty heating ducts, and old machine oil which the vestiges of industrial strength floor cleaner do nothing to erase. There is a panel in the wall studded with buttons." Understand "elevator" as The Elevator.

[this is a hack because putting the elevator inside another room doesn't work correctly with exiting]
Every turn when the player is in Liftlandia:
	now the elevator is mapped north of the location of the player;
	unless the player is distracted:
		say "There is an elevator in the north wall.";
		continue the action.


A panel in the wall is in the elevator. It is scenery. The description is "There are three buttons on the wall: S, C, and P."
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
	if the former location is bottom of shaft:
		say "You push the C button. It lights up. The elevator creaks and slowly goes up.";
		say "The elevator almost imperceptibly moves up. Time passes. ";
		now the middle of shaft is mapped south of the elevator;	
		say "The doors open and you look out to [middle of shaft] to the south.";


Instead of going up when the player is not in the elevator and the player is wearing a wheelchair:
	say "That's fairly challenging since your wheels won't make it up the stairs." 
Instead of going down when the player is not in the elevator and the player is wearing a wheelchair:
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
		


Section 6 - Ticket reader

[the reader itself]

A ticket reader is a thing.  "A ticket reader machine is here in a little kiosk[if player is hearing], softly humming[end if]."
A ticket reader is fixed in place.
Understand "machine" as a ticket reader.  
The description of the ticket reader is "Its labels, both printed and Braille, are somewhat worn by time. A sign on the machine says 'Swipe *ART card for entry and exit." 

After going to a concourse:
	now a ticket reader is in the location of the player;
	continue the action.
	

Instead of switching on a card when the location of the player is not a concourse:
	say "You need to do that by swiping it on a ticket reader.";
Instead of switching off a card when the location of the player is not a concourse:
	say "You need to do that by swiping it on a ticket reader.";		
	
Understand "swipe [something switched off]" as switching on.
Understand "swipe [something switched on]" as switching off. 



A writing utensil is a kind of thing. A magic marker is a writing utensil.
A card is a kind of device.  
A BART card, an ART card, a BAT card, a BAR card, a CART card, and a WART card are cards.

The description of a BART card is "A [if player is not blind]blue and white card[end if] with a magnetic stripe. It says 'BART' in big [if player is not blind] black[end if] letters that seem oddly like scribbly handwriting."

The description of an ART card is "A [if player is not blind]blue and white card[end if] with a magnetic stripe. It says 'ART' in big [if player is not blind] black[end if] letters that seem oddly like scribbly handwriting. The letters blur and seem to move."

The description of a BAT card is "A [if player is not blind]blue and white card[end if] with a magnetic stripe. It says 'BAT' in big [if player is not blind] black[end if] letters that seem oddly like scribbly handwriting. The letters blur and seem to move."

The player is carrying a magic marker and a BART card.

A magic marker is an object. The description of a magic marker is "A magic marker. It fizzes and tingles with energy as if it were eager to make its mark."


Writing on is an action applying to one visible thing. Understand "write on [something]" as writing on. 

Check writing on:
	if the noun is not a card, say "You decide not to scribble on that." instead.

Carry out writing on:
	now the noun is nowhere;
	if a random chance of 1 in 4 succeeds:
		now the player is carrying a BART card;
	otherwise:
		if a random chance of 1 in 2 succeeds:
			say "You scribble on the card. It fizzes and tingles.";
			now the player is carrying an ART card;
		otherwise:
			say "You feel very strange.";
			now the player is carrying a BAT card;
			now the description of the player is "You are a huge bat, clutching your possessions in your claws as you flap around in the air.";
			now the player is flying;
		



Section 7 - Train rules

[train-display]

Time-till-yellow is a number that varies.
Yellow-relative-position is a number that varies.



Every turn: 
	if the location of the Yellow Line Train is Antioch:
		now the Yellow Line Train is southbound;
	if the location of the Yellow Line Train is Millbrae:
		now the Yellow Line Train is northbound;
	if the location of the player is in SFO Extension or the location of the player is in Westside or the location of the player is in Oakland Central or the location of the player is in Yellow Line:	
		let yellow-now be the location of the Yellow Line Train;
		let here-relative-position be the relative position corresponding to the destination of location in the Table of Yellow Line Schedule;
		if the location of the Yellow Line Train is Transitional Location:
			let yellow-next be next stop of Yellow Line Train;
			now yellow-relative-position is the relative position corresponding to the destination of yellow-next in the Table of Yellow Line Schedule;
			let yellow-position-difference be the absolute value of here-relative-position - yellow-relative-position;
			now the time-till-yellow is yellow-position-difference * 2 to the nearest whole number;
			now the time-till-yellow is time-till-yellow + 1;
		otherwise:
			now yellow-relative-position is the relative position corresponding to the destination of yellow-now in the Table of Yellow Line Schedule;
			let yellow-position-difference be the absolute value of here-relative-position - yellow-relative-position;
			now the time-till-yellow is yellow-position-difference * 2 to the nearest whole number;
		Unless time-till-yellow is 0 or the player is distracted:
			say "Next Yellow Line train to [if the Yellow Line Train is southbound]Millbrae[otherwise]Antioch[end if] in [time-till-yellow] minutes. [run paragraph on][line break]"

Time-till-red is a number that varies.
red-relative-position is a number that varies.


Every turn: 
	if the location of the Red Line Train is Richmond:
		now the Red Line Train is southbound;
	if the location of the Red Line Train is Millbrae:
		now the Red Line Train is northbound;
	if the location of the player is in SFO Extension or the location of the player is in Westside or the location of the player is in Oakland Central or the location of the player is in North Bay:	
		let red-now be the location of the Red Line Train;
		let here-relative-position be the relative position corresponding to the destination of location in the Table of Red Line Schedule;
		if the location of the Red Line Train is Transitional Location:
			let red-next be next stop of Red Line Train;
			now red-relative-position is the relative position corresponding to the destination of red-next in the Table of Red Line Schedule;
			let red-position-difference be the absolute value of here-relative-position - red-relative-position;
			now the time-till-red is red-position-difference * 2 to the nearest whole number;
			now the time-till-red is time-till-red + 1;
		otherwise:
			now red-relative-position is the relative position corresponding to the destination of red-now in the Table of Red Line Schedule;
			let red-position-difference be the absolute value of here-relative-position - red-relative-position;
			now the time-till-red is red-position-difference * 2 to the nearest whole number;
		Unless time-till-red is 0 or the player is distracted:
			say "Next Red Line train to [if the Red Line Train is southbound]Millbrae[otherwise]Richmond[end if] in [time-till-red] minutes. [run paragraph on][line break]"

	
Time-till-green is a number that varies.
green-relative-position is a number that varies.

Every turn: 
	if the location of the player is in Westside or the location of the player is in Oakland South or the location of the player is in South Bay:	
		let green-now be the location of the Green Line Train;
		let here-relative-position be the relative position corresponding to the destination of location in the Table of Green Line Schedule;
		if the location of the Green Line Train is Transitional Location:
			let green-next be next stop of Green Line Train;
			now green-relative-position is the relative position corresponding to the destination of green-next in the Table of Green Line Schedule;
			let green-position-difference be the absolute value of here-relative-position - green-relative-position;
			now the time-till-green is green-position-difference * 2 to the nearest whole number;
			now the time-till-green is time-till-green + 1;
		otherwise:
			now green-relative-position is the relative position corresponding to the destination of green-now in the Table of Green Line Schedule;
			let green-position-difference be the absolute value of here-relative-position - green-relative-position;
			now the time-till-green is green-position-difference * 2 to the nearest whole number;
		Unless time-till-green is 0 or the player is distracted:
			say "Next Green Line train in [time-till-green] minutes. [run paragraph on][line break]"
			
Time-till-blue is a number that varies.
blue-relative-position is a number that varies.

Every turn: 
	if the location of the player is in Westside or the location of the player is in Oakland South or the location of the player is in Blue Line:	
		let blue-now be the location of the Blue Line Train;
		let here-relative-position be the relative position corresponding to the destination of location in the Table of Blue Line Schedule;
		if the location of the Blue Line Train is Transitional Location:
			let blue-next be next stop of Blue Line Train;
			now blue-relative-position is the relative position corresponding to the destination of blue-next in the Table of Blue Line Schedule;
			let blue-position-difference be the absolute value of here-relative-position - blue-relative-position;
			now the time-till-blue is blue-position-difference * 2 to the nearest whole number;
			now the time-till-blue is time-till-blue + 1;
		otherwise:
			now blue-relative-position is the relative position corresponding to the destination of blue-now in the Table of Blue Line Schedule;
			let blue-position-difference be the absolute value of here-relative-position - blue-relative-position;
			now the time-till-blue is blue-position-difference * 2 to the nearest whole number;
		Unless time-till-blue is 0 or the player is distracted:
			say "Next Blue Line train in [time-till-blue] minutes."
			
Time-till-orange is a number that varies.
orange-relative-position is a number that varies.

Every turn: 
	if the location of the player is in North Bay or the location of the player is in Oakland Central or the location of the player is in Oakland South or the location of the player is in  South Bay:	
		let orange-now be the location of the Orange Line Train;
		let here-relative-position be the relative position corresponding to the destination of location in the Table of Orange Line Schedule;
		if the location of the Orange Line Train is Transitional Location:
			let orange-next be next stop of Orange Line Train;
			now orange-relative-position is the relative position corresponding to the destination of orange-next in the Table of Orange Line Schedule;
			let orange-position-difference be the absolute value of here-relative-position - orange-relative-position;
			now the time-till-orange is orange-position-difference * 2 to the nearest whole number;
			now the time-till-orange is time-till-orange + 1;
		otherwise:
			now orange-relative-position is the relative position corresponding to the destination of orange-now in the Table of Orange Line Schedule;
			let orange-position-difference be the absolute value of here-relative-position - orange-relative-position;
			now the time-till-orange is orange-position-difference * 2 to the nearest whole number;
		Unless time-till-orange is 0 or the player is distracted:
			say "Next Orange Line train in [time-till-orange] minutes. [run paragraph on][line break]"
			
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
1 minute	Dublin/Pleasanton	4
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


