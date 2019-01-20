"Transitory" by lizzard

Include Transit System by Emily Short.


Calle 24 Southwest Plaza is a room.



[train stop endpoints]

Embarcadero is a room. "You are on a BART platform underground. Lots of people are around and there are muffled announcements over an intercom."

Richmond is a room. "You are on a BART platform."

Millbrae is a room. "You are on a BART platform outside. Many people and trains are all around. There are weird looking cement statues of commuters in awkward positions on the platform."

Antioch is a room. "You are on a BART platform. You hear the noise of cars on a nearby highway."

Daly City is a room. "You are on a BART platform. Fog drifts in from the nearby ocean."

Dublin/Pleasanton is a room. "You are on a BART platform outside. The mysterious suburban world of Dublin/Pleasanton surrounds you."

Warm Springs/South Fremont is a room. "You are on a BART platform in the unknown reaches of outer Fremont."

[other train stops]

El Cerrito del Norte is a room.
El Cerrito Plaza is a room.
North Berkeley is a room.
Downtown Berkeley is a room.
Ashby is a room.
MacArthur is a room.
Oakland 19th St is a room.
Oakland 12th St is a room.
Montgomery is a room.
Powell is a room.
Civic Center is a room.
Mission 16th St is a room.
Mission 24th St is a room.   
Glen Park is a room.
Balboa Park is a room.


West Oakland is a room. "You are underground, on a BART platform. Sounds of trains are all around you."

Bay Fair is a room. "You are on a BART platform. Feels like the East Bay somewhere."


Section 1 - 24th Mission St

The description of Mission 24th St is "You are underground, on a BART platform. The hollow sound of vibrating train rails echoes through the station. Boxy concrete arches run overhead and then frame the sides of the train tunnel. An elevator is in the median wall to the north. On the platform itself, the floor is covered with long brick-red tiles, while the median walls are tiled in muted orange, gold, and brown, like a desert sunset." 

Mission 24th Concourse is up from Mission 24th St. "Enormous concrete buttresses soar overhead, like a futuristic 70s airplane hangar. Music echoes hauntingly from a monumental stairwell rising up to the plaza, combining with the wild harmonics of trains below. There is an elevator to the platform to the north, and another elevator to the street to the northwest." 

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

Liftlandia is a region. Mission 24th Concourse, Mission 24th St, and Calle 24 Northeast Plaza are in Liftlandia.

The elevator is a vehicle. The description of the elevator is "A grimy elevator that smells like pee. You take a deep sniff and regret it as the stale urine smell mixes horribly with mildew, dusty heating ducts, and old machine oil which the vestiges of industrial strength floor cleaner do nothing to erase."

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



[train rules]

A train-car can be northbound or southbound. 

The Red Line train is a relatively-scheduled train-car. The Red Line Train is in El Cerrito del Norte. The waiting duration of the Red Line train is 1 minute. The t-schedule of the Red Line train is the Table of Red Line Schedule. 

The Yellow Line train is a relatively-scheduled train-car. The Yellow Line Train is in Millbrae. The waiting duration of the Yellow Line train is 1 minute. The t-schedule of the Yellow Line train is the Table of Yellow Line Schedule.

The Blue Line train is a relatively-scheduled train-car. The Blue Line Train is in Daly City. The waiting duration of the Blue Line train is 1 minute. The t-schedule of the Blue Line train is the Table of Blue Line Schedule.

The Green Line train is a relatively-scheduled train-car. The Green Line Train is in Daly City. The waiting duration of the Green Line train is 1 minute. The t-schedule of the Green Line train is the Table of Green Line Schedule.

The Orange Line train is a relatively-scheduled train-car. The Orange Line Train is in Richmond. The waiting duration of the Green Line train is 1 minute. The t-schedule of the Orange Line train is the Table of Orange Line Schedule.


[train schedules]

Table of Red Line Schedule
transit time	destination
1 minute 	Richmond
1 minute	El Cerrito del Norte
1 minute	El Cerrito Plaza
1 minute	North Berkeley
1 minute	Downtown Berkeley
1 minute	Ashby
1 minute	MacArthur
1 minute	Oakland 19th St
1 minute	Oakland 12th St
1 minute	West Oakland	
1 minute	Embarcadero
1 minute	Montgomery
1 minute	Powell
1 minute	Civic Center
1 minute	Mission 16th St
1 minute	Mission 24th St
1 minute	Glen Park
1 minute	Balboa Park
1 minute	Daly City
1 minute	Millbrae
1 minute	Daly City
1 minute	Balboa Park
1 minute	Glen Park
1 minute	Mission 24th St
1 minute	Mission 16th St
1 minute	Civic Center
1 minute	Powell
1 minute	Montgomery
1 minute	Embarcadero
1 minute	West Oakland
1 minute	Oakland 12th St 	
1 minute	Oakland 19th St 	
1 minute	MacArthur
1 minute	Ashby
1 minute	Downtown Berkeley
1 minute	North Berkeley
1 minute	El Cerrito Plaza
1 minute	El Cerrito del Norte

Table of Yellow Line Schedule
transit time	destination
1 minute	Antioch
1 minute	West Oakland
1 minute	Embarcadero
1 minute	Millbrae
1 minute	Embarcadero
1 minute	West Oakland	

Table of Blue Line Schedule
transit time	destination
1 minute	Daly City
1 minute	Embarcadero
1 minute	West Oakland
1 minute	Dublin/Pleasanton
1 minute	West Oakland
1 minute	Embarcadero

Table of Green Line Schedule
transit time	destination
1 minute	Daly City
1 minute	Embarcadero
1 minute	West Oakland
1 minute	Warm Springs/South Fremont
1 minute	West Oakland
1 minute	Embarcadero

Table of Orange Line Schedule
transit time	destination
1 minute	Richmond
1 minute	Bay Fair
1 minute	Warm Springs/South Fremont
1 minute	Bay Fair	
