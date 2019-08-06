# Where in the Data is Carmen Sanmateo?

An puzzle game for data nerds.

Use your knowledge of data to find clues, interview witnesses, interrogate suspects, follow Carmen's henchmen, and ultimately arrest Carmen Sanmateo herself.

Each episode centers on one crime grounded in a particular location, with primary clues given in the form of realistic datasets.

## Game mechanics

- You get a url which leads to an opening narrative, offering you an assignment
- narrative contains:
   - setup for the episode along with theme and context
   - link to the internals resources page with "public" datasets that will be generally useful
   - instructions to query data with a certain keyword
- that query yields a dataset: text messages, call logs, GPS coordinates, something
- You investigate the dataset, using common sense and deductive reasoning (nothing nonsensical or too difficult)
- You decide which clues to follow up with additional queries

### internal resources page

Command central for the player.

- You can download from a short list of relevant/available public data:
  - list of all places with their addresses, coordinates, classification (home/business)

- You can query certain classified databases:
  - provide telephone number and get billing name/address
  - provide IMEI and get GPS coords for last day or so
  - provide two telephone numbers to get text messages between them

- You can issue interview requests:
  - provide address to find person and pick them up for questioning
  - interview is run by NPC agent
  - you can specify keywords to ask about
  - you get a transcript of the interrogation

- You can file for a warrant:
   - to search an address and get a report
   - to arrest a person at an address
   - may require keyword as evidence to be approved

### Difficulty level can be tuned

  - provide data in more 'difficult' formats (json, fixed width, xls, etc)
  - more difficult data (unspecified units; ambiguous date format)
  - dirty data (extra spaces; capitalization errors; SNPs; transpositions; sound-alikes)

## Character development and backstory

The interviews, interrogations, and communications for each episode are necessary to provide tension, excitement, flavor.
The story, mystery, characters, and writing must be sufficient payoff for the effort required to get clues from the data.


## Technical mechanics

- mostly text, maybe a few images for flavor or additional hints (images are not essential to winning)
- answers encoded in urls; correct answers yield story progession
- incorrect answers lead to 404s with randomly-generated quizzicisms
- static website
   - progress within a mission encoded in actual clues
   - a bit of javascript to encode urls and generate 404 content
   - browser cookie tracks statistics
---


# Assignment Idea #1

## Opening Narrative

CSM, the criminal mastermind, is known to deal in illicit substances.
One of our agents was tailing a suspected member of CSM, and saw them discard a cell phone while crossing a bridge.
The suspect was apprehended with a large amount of an illicit substance; they are in custody but aren't talking.
Our agent was able to retrieve the discarded phone.

## Player walkthrough

You can:
   - download the contacts list, call log, and message history from the phone SIM card
   - read the messages and find that they had stated plans to meet several people that day
   - see an incoming phone call from a hidden number
   - subpoena lat/long coords of the discarded phone sampled at 5min intervals
     - after the phone call, they went straightaway to a bank (known from list of public locations)
     - then met with a contact (which contact is known from messages around that time)
     - then went to non-public location
     - then dumped the burner phone
   - lookup address of contact either by lat/long of meeting, or by contact phone number
   - reverse lookup the non-public lat/long to get private address
   - bring in the contact for questioning, get the transcript
      - must provide contact address to bring in for questioning
      - if asked about the private address, transcript includes juicy breakdown and names resident
   - get arrest warrant for resident of that address
      - using transcript quote as evidence
   - when our agent gets there, the resident/contact has fled
   - good work!  we missed them this time, but are one step closer to taking down CSM and her gang.

# Footnotes

Back in the 80s, there was a computer game "edutainment" franchise called [Where in the World is Carmen San Diego?](https://en.wikipedia.org/wiki/Where_in_the_World_Is_Carmen_Sandiego%3F_(1985_video_game)).
Each game of the series has a particular theme and subject, where the player must use their knowledge to find Carmen Sandiego or any of her innumerable henchmen.
Players would get clues to eliminate suspects, travel to the next location deduced from geography trivia, capture villains, and ultimately arrest Carmen herself.
In the 90s, the game was adapted into a PBS game show, and new games in the franchise are still being released today.

