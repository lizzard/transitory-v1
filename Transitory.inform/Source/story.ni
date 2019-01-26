"Transitory" by lizzard

Include Transit System by Emily Short.
Include Rideable Vehicles by Graham Nelson.

When play begins: now the command prompt is "[time of day] >". 

[temporary start of game location for testing]
Mission 24th St is a room.
Calle 24 Southwest Plaza is a room.
Wraparound mirrorshades are a wearable object.
The player is carrying wraparound mirrorshades. 
A snazzy black powerchair is in Calle 24 Southwest Plaza. A powerchair is a rideable vehicle.


[sightedness ]

Sightedness is a kind of value. The sightednesses are blind, sighted, and unknown. Understand “blind” as blind. Understand “sighted” as sighted.
 
A person has a sightedness. The sightedness of the player is sighted.

Instead of looking when the player is blind: 
	say "It might be more useful to listen, tap with your cane, examine, or feel, since you're blind."


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


[train stops, alphabetically with descriptions]

The description of Antioch is "You are on a BART platform. You hear the noise of cars on a nearby highway."

The description of Ashby is "You are on a BART platform."

The description of Balboa Park is "You are on a BART platform."

The description of Bay Fair is "You are on a BART platform."

The description of Downtown Berkeley is "You are on a BART platform."

The description of Castro Valley is "You are on a BART platform."

The description of Civic Center is "You are on a BART platform."

The description of Coliseum is "You are on a BART platform."

The description of Colma is "You are on a BART platform."

The description of Concord is "You are on a BART platform."

The description of Daly City is "You are on a BART platform. Fog drifts in from the nearby ocean."

The description of Dublin/Pleasanton is "You are on a BART platform. The mysterious suburban world of Dublin/Pleasanton surrounds you."

The description of El Cerrito del Norte is "You are on a BART platform."

The description of El Cerrito Plaza is "You are on a BART platform."

The description of Embarcadero is "You are on a BART platform underground. Lots of people are around and there are muffled announcements over an intercom."

The description of Fremont is "You are on a BART platform."

The description of Fruitvale is "You are on a BART platform."

The description of Glen Park is "You are on a BART platform."

The description of Hayward is "You are on a BART platform."

The description of Lafayette is "You are on a BART platform."

The description of Lake Merritt is "You are on a BART platform."

The description of MacArthur is "You are on a BART platform."

The description of Millbrae is "You are on a BART platform outside. Many people and trains are all around. There are weird looking cement statues of commuters in awkward positions on the platform."

The description of Mission 16th St is "You are on a BART platform."

The description of Montgomery is "You are on a BART platform."

The description of North Berkeley is "You are on a BART platform."

The description of North Concord/Martinez is "You are on a BART platform."

The description of Oakland 12th St is "You are on a BART platform."

The description of Oakland 19th St is "You are on a BART platform."

The description of Oakland International Airport is "You are on a BART platform."

The description of Orinda is "You are on a BART platform."

The description of Pittsburg/Bay Point is "You are on a BART platform."

The description of Pittsburg Center is "You are on a BART platform."

The description of Pleasant Hill is "You are on a BART platform."

The description of Powell is "You are on a BART platform."

The description of Richmond is "You are on a BART platform."

The description of Rockridge is "You are on a BART platform."

The description of San Bruno is "You are on a BART platform."

The description of San Francisco International Airport is "You are on a BART platform."

The description of San Leandro is "You are on a BART platform."

The description of South Hayward is "You are on a BART platform."

The description of South San Francisco is "You are on a BART platform."

The description of Union City is "You are on a BART platform."

The description of Walnut Creek is "You are on a BART platform."

The description of Warm Springs/South Fremont is "You are on a BART platform."

The description of West Dublin/Pleasanton is "You are on a BART platform."

The description of West Oakland is "You are on a BART platform."


[once this section is finished, set up each station as its own section and put this one in order.]
Section 1 - 24th Mission St  

The description of Mission 24th St is "You are underground, on a BART platform. The hollow sound of vibrating train rails echoes through the station. Boxy concrete arches run overhead and then frame the sides of the train tunnel. If you look around, you will probably find the elevator. On the platform itself, the floor is covered with long brick-red tiles, while the median walls are tiled in muted orange, gold, and brown, like a desert sunset." 

Mission 24th Concourse is up from Mission 24th St. "Enormous concrete buttresses soar overhead, like a futuristic 70s airplane hangar. Music echoes hauntingly from a monumental stairwell rising up to the plaza, combining with the wild harmonics of trains below." 

Calle 24 Northeast Plaza is up from Mission 24th Concourse. "Palm trees sway high overhead. Delicate metal rails surround the enormous circular stairwell that goes down to the station concourse. All around you are little shops, restaurants, taquerias, people talking, buses pulling up to the stops on Mission and on 24th Street, music blasting from cars going by. A huge mural runs across the wall of the taqueria bordering the plaza to the north, of a gleaming BART train carried on the backs of determined workers amid a geometric cityscape." 

Every turn:
	if Calle 24 Northeast Plaza is visited and Calle 24 Northeast Plaza was not visited:
		say "If you look around past the crowds you might find the elevator.".

A tamale lady is a person. In Calle 24 Northeast Plaza is a tamale lady. The description of a tamale lady is "A short, smiling woman in jeans and an army jacket stands next to a cooler on wheels." 
Every turn when the player can see a tamale lady: 
    say "A tamale lady [one of]watches the people passing by[or]says 'Tamales!'[or]shifts her weight from one foot to the other[or]says 'Tamales de pollo!'[or]smiles at you[or]says 'Tamales de carne!'[as decreasingly likely outcomes]."

A yelling preacher is a person. In Calle 24 Northeast Plaza is a yelling preacher. The description of the preacher is "A short man yells fervently in Spanish into a microphone. You recognize some things from the Bible, though it is hard to understand him from the low quality amp at his feet."

Calle 24 Northwest Corner is west of Calle 24 Northeast Plaza. "Just outside the Chinese Food and Donuts shop, this lively streetcorner has buses pulling up along 24th Street, many cars going by, people crossing the street and just standing around, music blaring from passing cars and from the shops all around. Along Mission, high overhead, washingtonia palms stretch into the sky. To the east, there's another BART plaza with an elevator."

Calle 24 Southwest Plaza is south of Calle 24 Northwest Corner. "Little tables and tent-covered booths are scattered throughout this busy plaza, with people selling souvenirs from Mexico and Guatemala, shopping bags, embroidered huipil blouses, woolen ponchos, phone chargers and cases, jewelry, and flowers. Many kinds of music are playing here – norteño blasts its cheerful accordions from speakers at a booth, saxophone notes float up from the huge, round stairwell which goes down to the station, songs blare from passing cars. There is a sloping area useful as a stage underneath the Coffee and Mission mural. Across 24th street to the north, there's a donut shop."

A flower seller is a person. In Calle 24 Southwest Plaza is a flower seller. The description of a flower seller is "A short, smiling woman in a baseball hat and a red checked scarf pushes  her wheely cart full of roses and carnations. Her jacket has a ladybug pin." 
Every turn when the player can see a flower seller: 
    say "A flower seller [one of]beams at you with a huge happy grin[or]called out, 'Flores!'[or]offers you a little bunch of carnations tied with string[or]shares a coffee with a friend[or]fusses over her bunches of flowers, arranging them nicely[or]watches the people passing by[or]smiles as she stops to talk with a friend[as decreasingly likely outcomes]."

Calle 24 Southeast Corner is east of Calle 24 Southwest Plaza. "This busy street corner by the McDonalds is grimy. It's basically a crowded spot where people wait to cross the street. Across Mission to the west, there's a nice plaza with a busy market. Across 24th Street to the north, another lovely plaza with musicians, preachers, and some places to sit."
Calle 24 Southeast Corner is south of Calle 24 Northeast Plaza. 
A raccoon is a kind of animal.  In Calle 24 Southeast Corner is a raccoon. The description of the raccoon is "A greasy looking plump raccoon. It's battered, but unbowed."  
Every turn when the player can see a raccoon: 
    say "A raccoon [one of]hauls itsef out of a concrete trash bin[or]skulks into a nearby alleyway[or]hides in a little nook, eating some discarded fries[or]has a little nap in a pile of trash[as decreasingly likely outcomes]."


[a simple elevator appears in any location where it might be, if the player goes there]

The Void is a room. In The Void is the elevator.

Every turn when the location of the player is in Liftlandia, now the elevator is in the location of the player.

The elevator is a vehicle. The description of the elevator is "A grimy elevator that smells like pee. You take a deep sniff and regret it as the stale urine smell mixes horribly with mildew, dusty heating ducts, and old machine oil which the vestiges of industrial strength floor cleaner do nothing to erase."

The C button is a device that is part of the elevator.  [this doesn't work but maybe for the future]

After entering the elevator, say "You get into the elevator. The doors close. Best to go up or down as fast as possible to get out of the stench."

Instead of going up when the player is not in the elevator and the location is in Liftlandia:
	say "That's fairly challenging since your wheels won't make it up the stairs." 
After going up:
	say " The elevator almost imperceptibly moves up. Time passes. You smell a lot of things, wishing you couldn't. The doors open again.";
	continue the action. 	
Instead of going down when the player is not in the elevator and the location is in Liftlandia:
	say "Quite challenging, since your wheels won't make it down the stairs." 
After going down:
	say "The elevator almost imperceptibly moves down. Time passes. You smell a lot of things, wishing you couldn't. The doors open again.";
	continue the action. 


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

