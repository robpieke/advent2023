# Advent of Code 2023

Here's my go at solving the puzzles from https://adventofcode.com/2023 - with the extra challenge of using a different programming language for each day.

All the icons below are clickable links to my solutions and some notes/thoughts on the language used that day. Most of the notes were written well after-the-fact so, for better or worse, probably aren't as brilliant as they could be at capturing my emotional "at the moment" opinions.

| Day                                        | Language | Part 1                                     | Part 2                                     | Notes                                 |
| -----------------------------------------: | :------: | :----------------------------------------: | :----------------------------------------: | :-----------------------------------: |
| [01](https://adventofcode.com/2023/day/1)  | Perl     | [:white_check_mark:](01_Perl/01a.pl)       | [:white_check_mark:](01_Perl/01b.pl)       | [:spiral_notepad:](#day-1---perl)     |
| [02](https://adventofcode.com/2023/day/2)  | Bash     | [:white_check_mark:](02_Bash/02a.sh)       | [:white_check_mark:](02_Bash/02b.sh)       | [:spiral_notepad:](#day-2---bash)     |
| [03](https://adventofcode.com/2023/day/3)  | Kotlin   | [:white_check_mark:](03_Kotlin/03a.kts)    | [:white_check_mark:](03_Kotlin/03b.kts)    | [:spiral_notepad:](#day-3---kotlin)   |
| [04](https://adventofcode.com/2023/day/4)  | Crystal  | [:white_check_mark:](04_Crystal/04a.cr)    | [:white_check_mark:](04_Crystal/04b.cr)    | [:spiral_notepad:](#day-3---crystal)  |
| [05](https://adventofcode.com/2023/day/5)  |          |                                            |                                            |                                       |
| [06](https://adventofcode.com/2023/day/6)  |          |                                            |                                            |                                       |
| [07](https://adventofcode.com/2023/day/7)  |          |                                            |                                            |                                       |
| [08](https://adventofcode.com/2023/day/8)  |          |                                            |                                            |                                       |
| [09](https://adventofcode.com/2023/day/9)  |          |                                            |                                            |                                       |
| [10](https://adventofcode.com/2023/day/10) |          |                                            |                                            |                                       |
| [11](https://adventofcode.com/2023/day/11) |          |                                            |                                            |                                       |
| [12](https://adventofcode.com/2023/day/12) |          |                                            |                                            |                                       |
| [13](https://adventofcode.com/2023/day/13) |          |                                            |                                            |                                       |
| [14](https://adventofcode.com/2023/day/14) |          |                                            |                                            |                                       |
| [15](https://adventofcode.com/2023/day/15) |          |                                            |                                            |                                       |
| [16](https://adventofcode.com/2023/day/16) |          |                                            |                                            |                                       |
| [17](https://adventofcode.com/2023/day/17) |          |                                            |                                            |                                       |
| [18](https://adventofcode.com/2023/day/18) |          |                                            |                                            |                                       |
| [19](https://adventofcode.com/2023/day/19) |          |                                            |                                            |                                       |
| [20](https://adventofcode.com/2023/day/20) |          |                                            |                                            |                                       |
| [21](https://adventofcode.com/2023/day/21) |          |                                            |                                            |                                       |
| [22](https://adventofcode.com/2023/day/22) |          |                                            |                                            |                                       |
| [23](https://adventofcode.com/2023/day/23) |          |                                            |                                            |                                       |
| [24](https://adventofcode.com/2023/day/24) |          |                                            |                                            |                                       |
| [25](https://adventofcode.com/2023/day/25) |          |                                            |                                            |                                       |

## Notes/Diary

### Day 1 - Perl

This actually proved more frustrating than I'd expected for Day 1. I initially started the puzzle using Bash and zipped through the first half, before getting stuck on the second half. Then I swtiched to Perl which had better `index`/`rindex` support, fairly quickly zipped through the second half, and then got stuck on syntax when trying to redo the first half again. It took a while before I figured out that `my $val = ($str =~ m/.../);` and `my ($val) = ($str =~ m/.../);` were not the same thing. My bad.

### Day 2 - Bash

I'm happy I was able to quickly return to Bash after my Day 1 failure. It all went quite smoothly, though it took a fair bit of Googling to understand how to split strings into arrays of words, the nuance of single `[` vs double `[[`, where you can/can't do math, and just generally knowing when having a whitespace was important to have/omit. I think the short of it is that I'm glad to be able to check this language off the list while the solutions are still very short to write. I really don't think I'd have wanted to write hundreds of lines of this stuff.

### Day 3 - Kotlin

This set of exercises went really smoothly. I found the [Kotlin docs](https://kotlinlang.org/docs/home.html) to be excellent, and the language felt very comfortable to write (in particular with my primarily-C++ day job). I particularly liked having `start .. end` ranges, and that collections had built-in methods for iterating, such as `forEachIndexed`. The only thing that felt a bit weird was the need to use helper functions (such as `mutableMapOf`) to create new collection objects, rather than calling some constructor or `New` function on the class. Based just on this taster, I'd be interested in trying Kotlin further.

### Day 4 - Crystal

Wow, I really enjoyed programming in Crystal. Pretty much everything I wanted to do could be achieved extremely concisely, with a tremendously rich amount of functionality in all the classes. The only question mark I have was whether I could have tightened up the code for effectively doing a `map` on a limited `Range` of an `Array` in [part b](04_Crystal/04b.cr#L6-L8). I liked the general design and constructs of the language, feeling like there were fewer characters to type than with most other languages (e.g., no semi-colons, far fewer brackets, etc). And the amount of example code in the [API documentation](https://crystal-lang.org/api/) ... amazing.