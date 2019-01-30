"Transitory" by lizzard

Include Transit System by Emily Short.
Include Rideable Vehicles by Graham Nelson.
Use scoring.

Section 1 - Testing descriptions - Not for release 

When play begins (this is the run property checks at the start of play rule):
	repeat with item running through things:
 		if description of the item is "":
			say "[item] has no description." 

Section 2 - Some rules and stuff

When play begins: 
	now the command prompt is "[time of day] >" ;
	now right hand status line is "[number of visited rooms]/[number of rooms] locations";


[temporary start of game location for testing]
Calle 24 Southwest Plaza is a room.

A snazzy black powerchair is in Calle 24 Southwest Plaza. A powerchair is a rideable vehicle.
The player is on the powerchair. 

Wraparound mirrorshades are a wearable object.
The player is carrying wraparound mirrorshades. 

A BART card is an device. The description of a BART card is "A blue and white card with a magnetic stripe. It says 'BART' in big black letters that look oddly like handwriting."
The player is carrying a BART card. 

A magic marker is an object. The description of a magic marker is "A magic marker. It fizzes and tingles with energy as if it were eager to make its mark."
The player is carrying a magic marker.

A room can be a platform.
A room can be a concourse.

Mission 24th St is a room.

[sightedness ]

Sightedness is a kind of value. The sightednesses are blind, sighted, and unknown. Understand “blind” as blind. Understand “sighted” as sighted.
 
A person has a sightedness. The sightedness of the player is sighted.

Before wearing the mirrorshades:
	now the player is blind;
	
After taking off the mirrorshades:
	now the player is sighted;

Instead of looking when the player is blind: 
	say "It might be more useful to listen, tap with your cane, examine, or feel, since you're blind."
	
Section 3 - Money stuff

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

The player carries a wallet. The wallet contains money. The price of the money is $20.00. The printed name of the money is "[price of the money] in cash". Understand "cash" as the money. 

Instead of taking the money:
	say "Best to leave it alone until you need to buy something." 

Instead of buying something free:
	say "[The noun] can't be bought." 

Instead of buying the money:
	say "The money belongs to you; you buy things with it." 


Section 4 - Regions
[Regions]

Liftlandia is a region.  [everywhere an elevator might appear]
Mission 24th Concourse, and Calle 24 Northeast Plaza are in Liftlandia.

Platforms is a region in Liftlandia.  [everywhere that is a train stop]

Westside is a region in Platforms. Daly City, Balboa Park, Glen Park, Mission 24th St, Mission 16th St, Civic Center, Powell, Montgomery, Embarcadero, and West Oakland are in Westside. 

SFO Extension is a region in Platforms.  Millbrae, San Bruno, South San Francisco, Colma are in SFO Extension.

Oakland Central is a region in Platforms. Oakland 12th St, Oakland 19th St, MacArthur are in Oakland Central.

Yellow Line is a region in Platforms. Rockridge, Orinda, Lafayette,  Walnut Creek, Pleasant Hill, Concord, North Concord/Martinez, Pittsburg/Bay Point, Pittsburg Center, and Antioch are in Yellow Line. 

North Bay is a region in Platforms. Ashby, Downtown Berkeley, North Berkeley, El Cerrito Plaza, El Cerrito del Norte, and Richmond are in North Bay. 

Oakland South is a region in Platforms. Lake Merritt, Fruitvale, Coliseum, San Leandro, and Bay Fair are in Oakland South.

South Bay is a region in Platforms. Hayward, South Hayward, Union City, Fremont, and Warm Springs/South Fremont are in South Bay. 

Blue Line is a region in Platforms. Castro Valley, West Dublin/Pleasanton, and Dublin/Pleasanton are in Blue Line. 

Section 5 - Locations, organized by train stops

[train stops, alphabetically with descriptions]

Chapter 6 - Antioch 

The description of Antioch is "You are on a BART platform. You hear the noise of cars on a nearby highway."

Chapter 7 - Ashby

The description of Ashby is "You are on a BART platform."

Chapter 8 - Balboa Park

The description of Balboa Park is "You are on a BART platform."

Chapter 9 - Bay Fair

The description of Bay Fair is "You are on a BART platform."

Chapter 10 - Downtown Berkeley

The description of Downtown Berkeley is "You are on a BART platform."

Chapter 11 - Castro Valley

The description of Castro Valley is "You are on a BART platform."

Chapter 12 - Civic Center

The description of Civic Center is "You are on a BART platform."

Chapter 13 - Coliseum

The description of Coliseum is "You are on a BART platform."

Chapter 14 - Colma

The description of Colma is "You are on a BART platform."

Chapter 15 - Concord

The description of Concord is "You are on a BART platform."

Chapter 16 - Daly City

The description of Daly City is "You are on a BART platform. Fog drifts in from the nearby ocean."

Chapter 17 - Dublin/Pleasanton

The description of Dublin/Pleasanton is "You are on a BART platform. The mysterious suburban world of Dublin/Pleasanton surrounds you."

Chapter 18 - El Cerrito del Norte

The description of El Cerrito del Norte is "You are on a BART platform."

Chapter 19 - El Cerrito Plaza

The description of El Cerrito Plaza is "You are on a BART platform."

Chapter 20 - Embarcadero

The description of Embarcadero is "You are on a BART platform underground. Lots of people are around and there are muffled announcements over an intercom."

Chapter 21 - Fremont

The description of Fremont is "You are on a BART platform."

Chapter 22 - Fruitvale

The description of Fruitvale is "You are on a BART platform."

Chapter 23 - Glen Park

The description of Glen Park is "You are on a BART platform."

Chapter 24 - Hayward

The description of Hayward is "You are on a BART platform."

Chapter 25 - Lafayette

The description of Lafayette is "You are on a BART platform."

Chapter 26 - Lake Merritt

The description of Lake Merritt is "You are on a BART platform."

Chapter 27 - MacArthur

The description of MacArthur is "You are on a BART platform."

Chapter 28 - Millbrae

The description of Millbrae is "You are on a BART platform outside. Many people and trains are all around. There are weird looking cement statues of commuters in awkward positions on the platform."

Chapter 29 - Mission 16th St

The description of Mission 16th St is "You are underground, on a BART platform. The haunting sound of train wheels on the rails echoes all around. The platform floor is covered with long brick-red tiles, while the median walls are tiled in light and dark blue, green, gold, and brown tiles like the colors of a tropical beach on a sunny day."

Mission 16th Concourse is up from Mission 16th St. Mission 16th Concourse is a concourse. "Low but nicely curved arches made of smooth concrete form the ceiling of this long, busy station. Music echoes from the stairwells. The acoustics are great!"

																								

Chapter 30 - Mission 24th St

The description of Mission 24th St is "You are underground, on a BART platform. The hollow sound of vibrating train rails echoes through the station. Boxy concrete arches run overhead and then frame the sides of the train tunnel. On the platform itself, the floor is covered with long brick-red tiles, while the median walls are tiled in muted orange, gold, and brown, like a desert sunset." 

Mission 24th Concourse is up from Mission 24th St. Mission 24th Concourse is a concourse. "Enormous concrete buttresses soar overhead, like a futuristic 70s airplane hangar. Music echoes hauntingly from a monumental stairwell rising up to the plaza, combining with the wild harmonics of trains below. Abstract cement shapes are sculpted in relief along the oddly corrugated sides of the stairwell, open to the sky." 

Calle 24 Northeast Plaza is up from Mission 24th Concourse. "Palm trees sway high overhead. Delicate metal rails surround the enormous circular stairwell that goes down to the station concourse. All around you are little shops, restaurants, taquerias, people talking, buses pulling up to the stops on Mission and on 24th Street, music blasting from cars going by. A huge mural runs across the wall of the taqueria bordering the plaza to the north, of a gleaming BART train carried on the backs of determined workers amid a geometric cityscape." 

[Every turn:
	if Calle 24 Northeast Plaza is visited and Calle 24 Northeast Plaza was not visited:
		say "If you look around past the crowds you might find the elevator.".]

A tamale lady is a person. In Calle 24 Northeast Plaza is a tamale lady. The description of a tamale lady is "A short, smiling woman in jeans and an army jacket stands next to a cooler on wheels." 
Every turn when the player can see a tamale lady: 
    say "A tamale lady [one of]watches the people passing by[or]says 'Tamales!'[or]shifts her weight from one foot to the other[or]says 'Tamales de pollo!'[or]smiles at you[or]says 'Tamales de carne!'[as decreasingly likely outcomes]."

A cooler on wheels is an openable container. It is in Calle 24 Northeast Plaza. 

The tamal is an edible thing in the cooler on wheels. The price of the tamal is $3.00. The description is "A delicious-smelling tamal wrapped in paper and foil." 

Instead of taking the cooler on wheels:
	say "But that belongs to the nice tamale lady!";

A yelling preacher is a person. In Calle 24 Northeast Plaza is a yelling preacher. The description of the preacher is "A short man yells fervently in Spanish into a microphone. You recognize some things from the Bible, though it's hard to understand him from the low quality amp at his feet."

Calle 24 Northwest Corner is west of Calle 24 Northeast Plaza. "Just outside the Chinese Food and Donuts shop, this lively streetcorner has buses pulling up along 24th Street, many cars going by, people crossing the street and just standing around, music blaring from passing cars and from the shops all around. Along Mission, high overhead, washingtonia palms stretch into the sky. To the east, there's another BART plaza with an elevator."

Calle 24 Southwest Plaza is south of Calle 24 Northwest Corner. "Little tables and tent-covered booths are scattered throughout this busy plaza, with people selling souvenirs from Mexico and Guatemala, shopping bags, embroidered huipil blouses, woolen ponchos, phone chargers and cases, jewelry, and flowers. Many kinds of music are playing here – norteño blasts its cheerful accordions from speakers at a booth, saxophone notes float up from the huge, round stairwell which goes down to the station, songs blare from passing cars. There is a sloping area useful as a stage underneath the Coffee and Mission mural. Across 24th street to the north, there's a donut shop."

A flower seller is a person. In Calle 24 Southwest Plaza is a flower seller. The description of a flower seller is "A short, smiling woman in a baseball hat and a red checked scarf pushes  her wheely cart full of roses and carnations. Her jacket has a ladybug pin." 
Every turn when the player can see a flower seller: 
    say "A flower seller [one of]beams at you with a huge happy grin[or]called out, 'Flores!'[or]offers you a little bunch of carnations tied with string[or]shares a coffee with a friend[or]fusses over her bunches of flowers, arranging them nicely[or]watches the people passing by[or]smiles as she stops to talk with a friend[as decreasingly likely outcomes]."

A shopping basket is an openable container. It is in Calle 24 Southwest Plaza. 

The little bunch of carnations  is a thing in the shopping basket. The price of the carnations is $1.00. The description is "A bunch of red carnations, stems wrapped in paper and tied with green twine." 

Instead of taking the basket:
	say "But that belongs to Mariquita! And she's so nice.";

Calle 24 Southeast Corner is east of Calle 24 Southwest Plaza. "This busy street corner by the McDonalds is grimy. It's basically a crowded spot where people wait to cross the street. Across Mission to the west, there's a nice plaza with a busy market. Across 24th Street to the north, another lovely plaza with musicians, preachers, and some places to sit."
Calle 24 Southeast Corner is south of Calle 24 Northeast Plaza. 
A raccoon is a kind of animal.  In Calle 24 Southeast Corner is a raccoon. The description of the raccoon is "A greasy looking plump raccoon. It's battered, but unbowed."  
Every turn when the player can see a raccoon: 
    say "A raccoon [one of]hauls itsef out of a concrete trash bin[or]skulks into a nearby alleyway[or]hides in a little nook, eating some discarded fries[or]has a little nap in a pile of trash[as decreasingly likely outcomes]."

Chapter 31 - Montgomery

The description of Montgomery is "You are on a BART platform."

Chapter 32 - North Berkeley

The description of North Berkeley is "You are on a BART platform."

Chapter 33 - North Concord/Martinez

The description of North Concord/Martinez is "You are on a BART platform."

Chapter 34 - Oakland 12th St

The description of Oakland 12th St is "You are on a BART platform."

Chapter 35 - Oakland 19th St

The description of Oakland 19th St is "You are on a BART platform."

Chapter 36 - Oakland International Airport

The description of Oakland International Airport is "You are on a BART platform."

Chapter 37 - Orinda

The description of Orinda is "You are on a BART platform."

Chapter 38 - Pittsburg/Bay Point

The description of Pittsburg/Bay Point is "You are on a BART platform."

Chapter 39 - Pittsburg Center

The description of Pittsburg Center is "You are on a BART platform."

Chapter 40 - Pleasant Hill

The description of Pleasant Hill is "You are on a BART platform."

Chapter 41 - Powell

The description of Powell is "You are on a BART platform."

Chapter 42 - Richmond

The description of Richmond is "You are on a BART platform."

Chapter 43 - Rockridge

The description of Rockridge is "You are on a BART platform."

Chapter 44 - San Bruno

The description of San Bruno is "You are on a BART platform."

Chapter 45 - San Francisco International Airport

The description of San Francisco International Airport is "You are on a BART platform."

Chapter 46 - San Leandro

The description of San Leandro is "You are on a BART platform."

Chapter 47 - South Hayward

The description of South Hayward is "You are on a BART platform."

Chapter 48 - South San Francisco

The description of South San Francisco is "You are on a BART platform."

Chapter 49 - Union City

The description of Union City is "You are on a BART platform."

Chapter 50 - Walnut Creek

The description of Walnut Creek is "You are on a BART platform."

Chapter 51 - Warm Springs/South Fremont

The description of Warm Springs/South Fremont is "You are on a BART platform."

Chapter 52 - West Dublin/Pleasanton

The description of West Dublin/Pleasanton is "You are on a BART platform."

Chapter 53 - West Oakland

The description of West Oakland is "You are on a BART platform."



Section 5 - Elevator 

[a simple 3-level elevator appears in any train station location where it might be, if the player goes there]

The former location is a room that varies. 
 First carry out going rule:
    now the former location is the location. 

The top of shaft is a room that varies. 
The middle of shaft is a room that varies.
The bottom of shaft is a room that varies.

The elevator is a room. The description of the elevator is "A grimy elevator that smells like pee. You take a deep sniff and regret it as the stale urine smell mixes horribly with mildew, dusty heating ducts, and old machine oil which the vestiges of industrial strength floor cleaner do nothing to erase."

[this is a hack because putting the elevator inside another room doesn't work correctly with exiting]
Every turn when the elevator does not enclose the player and the player is in Liftlandia:
	say "There is an elevator in the north wall.";
	now the elevator is mapped north of the location of the player;


A panel in the wall is in the elevator. It is fixed in place. "There are three buttons on the wall: S, C, and P."
The S button, the C button, and the P button are parts of the panel in the wall. 

[figure out what level you're entering the elevator from relative to other levels]
After going to the elevator when the player is on the powerchair:
	say "You roll your chair into the elevator. The door closes.";
	now the powerchair is in the elevator;
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
		say "You push the S button. It lights up. The elevator creaks and slowly goes up.";
		say "Time passes. You smell a lot of things, wishing you couldn't.";
		now the top of shaft is mapped south of the elevator;	
		say "The doors open and you look out to [top of shaft] to the south.";
	
Instead of pushing the P button:
	if the former location is bottom of shaft:
		say "You're already at the platform level.";
	otherwise:
		say "You push the P button. It lights up. The elevator creaks and slowly goes down.";
		say "Time passes. You smell a lot of things, wishing you couldn't.";
		now the bottom of shaft is mapped south of the elevator;	
		say "There is a horrible jolt. The doors open and you look out to [bottom of shaft] to the south.";
		
Instead of pushing the C button:
	if the former location is middle of shaft:
		say "You're already at the concourse level.";
	if the former location is top of shaft:
		say "You push the C button. It lights up. The elevator creaks and slowly goes down.";
		now the middle of shaft is mapped south of the elevator;	
		say "The doors open and you look out to [middle of shaft] to the south.";
	if the former location is bottom of shaft:
		say "You push the C button. It lights up. The elevator creaks and slowly goes up.";
		say "The elevator almost imperceptibly moves up. Time passes. ";
		now the middle of shaft is mapped south of the elevator;	
		say "The doors open and you look out to [middle of shaft] to the south.";


Instead of going up when the player is not in the elevator and the player is on the powerchair:
	say "That's fairly challenging since your wheels won't make it up the stairs." 
Instead of going down when the player is not in the elevator and the player is on the powerchair:
	say "It would be a short and brutal trip for you and your powerchair. Best not." 


Section 6 - Ticket reader

[the reader itself]
A ticket reader is a thing. It is fixed in place. "A ticket reader machine is here in a little kiosk, softly humming." 
The description of the ticket reader is "Its labels are somewhat worn by time. A sign on the machine says 'Swipe *ART card for entry and exit." 
Understand "machine" as a ticket reader.   

Every turn when the location of the player is a concourse:
	now a ticket reader is in the location of the player;

[the ticket]
Instead of switching off the card when the card is switched off, silently try switching on the card.

Instead of switching on the card when the card is switched on, try switching off the card.
	
Instead of switching on the BART card when the location of the player is not a concourse:
	say "You need to do that by swiping it on a ticket reader.";
Instead of switching off the BART card when the location of the player is not a concourse:
	say "You need to do that by swiping it on a ticket reader.";	


	
	
Understand "swipe [something]" as switching on. 

Section 7 - Train rules

[train-display]

Time-till-yellow is a number that varies.
Yellow-relative-position is a number that varies.

Every turn: 
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
		Unless time-till-yellow is 0:
			say "Next Yellow Line train in [time-till-yellow] minutes."

Time-till-red is a number that varies.
red-relative-position is a number that varies.

Every turn: 
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
		Unless time-till-red is 0:
			say "Next Red Line train in [time-till-red] minutes."
	
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
		Unless time-till-green is 0:
			say "Next Green Line train in [time-till-green] minutes."
			
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
		Unless time-till-blue is 0:
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
		Unless time-till-orange is 0:
			say "Next Orange Line train in [time-till-orange] minutes."
			
[train rules]

A train-car can be northbound or southbound. 

The Red Line train is a relatively-scheduled train-car. The Red Line Train is in El Cerrito del Norte. The waiting duration of the Red Line train is 1 minute. The t-schedule of the Red Line train is the Table of Red Line Schedule. 

The Yellow Line train is a relatively-scheduled train-car. The Yellow Line Train is in Millbrae. The waiting duration of the Yellow Line train is 1 minute. The t-schedule of the Yellow Line train is the Table of Yellow Line Schedule.

The Blue Line train is a relatively-scheduled train-car. The Blue Line Train is in Daly City. The waiting duration of the Blue Line train is 1 minute. The t-schedule of the Blue Line train is the Table of Blue Line Schedule.

The Green Line train is a relatively-scheduled train-car. The Green Line Train is in Daly City. The waiting duration of the Green Line train is 1 minute. The t-schedule of the Green Line train is the Table of Green Line Schedule.

The Orange Line train is a relatively-scheduled train-car. The Orange Line Train is in Richmond. The waiting duration of the Orange Line train is 1 minute. The t-schedule of the Orange Line train is the Table of Orange Line Schedule.


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
1 minute	Millbrae	19
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
1 minute	Daly City	0
1 minute	Balboa Park	1
1 minute	Glen Park	2
1 minute	Mission 24th	3
1 minute	Mission 16th St	4
1 minute	Civic Center	5
1 minute	Powell	6
1 minute	Montgomery	7
1 minute	Embarcadero	8
1 minute	West Oakland	9
1 minute	Oakland 12th St	10
1 minute	Oakland 19th St	11
1 minute	MacArthur	12
1 minute	Rockridge	13
1 minute	Orinda	14
1 minute	Lafayette	15
1 minute	Walnut Creek	16
1 minute	Pleasant Hill	17
1 minute	Concord	18
1 minute	North Concord/Martinez	19
1 minute	Pittsburg/Bay Point	20
1 minute	Pittsburg Center	21
1 minute	Antioch	22
1 minute	Pittsburg Center	21
1 minute	Pittsburg/Bay Point	20
1 minute	North Concord/Martinez	19
1 minute	Concord	18
1 minute	Pleasant Hill	17	
1 minute	Walnut Creek	16
1 minute	Lafayette	15
1 minute	Orinda	14
1 minute	Rockridge	13
1 minute	MacArthur	12
1 minute	Oakland 19th St	11
1 minute	Oakland 12th St	10
1 minute	West Oakland	9
1 minute	Embarcadero	8
1 minute	Montgomery	7
1 minute	Powell	6
1 minute	Civic Center	5
1 minute	Mission 16th St	4
1 minute	Mission 24th St	3
1 minute	Glen Park	2
1 minute	Balboa Park	1
	

Table of Blue Line Schedule
transit time	destination	relative position
1 minute	Daly City	0
1 minute	Balboa Park	1
1 minute	Glen Park	2
1 minute	Mission 24th	3
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


