
simpler, quicker, punchier, sillier assignments

follow escape room game:

fun theme
coherent plot
interesting characters
puzzles thematically related

basic puzzle structures:

In all cases, we are trying to find a particular piece of information, from an untamed sea of data.
The information may be a particular value in the dataset, or it may be a synthesis of many values, or an event may be inferred from the relationships.
This information solves a puzzle or a part of a puzzle, which gets us satisfyingly closer to the stated goal of the mission.

The target information could be:
  - address of next location
  - clue to the address of the next location
  - a clue as to what to do with the address (interview, search, arrest)

Given a small amount of information, presented in prose form (an interview, or the assignment itself), player has to:

1. Find The Value From Given Keys

  - figure out which dataset to use, and download it
  - import the data into their preferred data environment
  - write a query to return the desired value(s)

Complications:
  - +1 range of values  (between X and Y; around X)
  - +3 spatial distance from locations, or time distance possibly with timezones
  - +2 given values on two datasets, need to join on unspecified key
    - +1 clean up key ("Last, First" -> "First Last")
  - multiple rows
    - +? single row can be inferred from other data
      - inferences must be straightforward--this is a data game, not a sherlock game.  a teenager who knows little about the world but who is good with data should be able to solve the puzzle whether it is steeped in Vegas or Missoula or Tokyo.
    - can be brute-forced; this can be a kind of legal 'cheat' around the inferences that people may get stuck on
      - brute-force should never be necessary; if there's not a single definite answer, there's a clue you've missed.

Example:
    Bartender provides year, duration, and genre, as keys into karaoke catalog, to find song title which clues to next location.  Or join with lyrics database to and discover clue in lyrics.

2. Compute a Statistic on a Group of Rows

Extension of #1.  Useful values can be:

  - number of rows
  - sum of one column
  - smallest/largest value in one column
  - average/median value

Complications:
  - +1 massage the input values or the output values
  - +2 misshaped data; values in multiple columns

Example:
A: whats your address?
B: laughton ave
A: number?
B: churches in vegas

So the address is [number of churches in Vegas] Laughton Ave.

3. Discover Outlier

Dataset has a normal distribution of values in a column, except for one or a few outliers.
Player explores dataset with:
  - frequency table
  - plot of value over time or location

Complications:
  - +1 two or more variables must be combined

Example:

- The transaction log has no entries on Sundays, except for one, and the associated entry contains the clue.

4. Find The Row With/Without a Match in Another Dataset

Requires understanding the nuances of the different kinds of JOINs.

  - find row in A without a match in B (diff join)
  - find row in A with a match in B (inner join)

Complications:
  - +1 join on computed value
  - +2 second dataset requires query
  - more than 2 tables

Example:
The receipt and the store ledger have different sums. perform a diff join to see which item is missing from the receipt.

5. Needle in Haystack

The information can be easily synthesized from multiple rows, but is dispersed among thousands of other irrelevant rows.

Complications:
  - +1 straightforward filter omits essential rows; filter must be tuned

Example:
  - Cell phone log has list of all messages from source by date.
  - Only messages from one contact are relevant.
  - Actual contact has two different phone numbers.

6. Decode Data

Like an extended form of #1, a code (intentional or unintentional) is presented as values which must found in the dataset each in turn and substituted.
A straightforward substitution cipher.

Player has to deduce which dataset is used, by value type, format, date range.
Should not have to brute force download all datasets to figure out which one is relevant.
However, a separate interview may provide the clue as to which dataset.


Complications:
  - +1 keys present multiple times, must be filtered first

Example:
  - Suspect has written down house values and dates.  3 of the dates are in the past but the fourth is very soon.  Several houses in the house listing dataset have that value, but only one is in the same neighborhood that the other three are in.

7. Weird Data Format

The provided datasets are usually in a basic and easily parse-able format; this is a data challenge, it can't feel like actual work.
But sometimes, it's in a funky format that requires you to be at least a little clever.

Example:
  - open dicom metadata; get the name of a physician

8. Construct Reasonable Subset
    - sometimes you will get too much data than you can feasible look through
    - what is a reasonable subset, that will get you the information you need?
    - for use with one of the above

Example:
    - you are looking at 311 data, and you are only interested in a specific timespan

9. Jigsaw Puzzle
    - put the pieces together in the correct configuration, to reveal a pattern

Example:
    - sort by one column, to spell out a pattern in another

10. New Data Every Day
    - same data structure, same puzzle, but has to be repeated 3+ times
    - pipeline/script

11. Weird Data Structure

