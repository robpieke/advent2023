# Advent of Code 2023

Here's my go at solving the puzzles from https://adventofcode.com/2023 - with the extra challenge of using a different programming language for each day.

All the icons below are clickable links to my solutions and some notes/thoughts on the language used that day. Most of the notes were written well after-the-fact so, for better or worse, probably aren't as brilliant as they could be at capturing my emotional "at the moment" opinions.

| Day                                        | Language | Part 1                                     | Part 2                                     | Notes                                 |
| -----------------------------------------: | :------: | :----------------------------------------: | :----------------------------------------: | :-----------------------------------: |
| [01](https://adventofcode.com/2023/day/1)  | Perl     | [:white_check_mark:](01_Perl/01a.pl)       | [:white_check_mark:](01_Perl/01b.pl)       | [:spiral_notepad:](#day-1---perl)     |
| [02](https://adventofcode.com/2023/day/2)  | Bash     | [:white_check_mark:](02_Bash/02a.sh)       | [:white_check_mark:](02_Bash/02b.sh)       | [:spiral_notepad:](#day-2---bash)     |
| [03](https://adventofcode.com/2023/day/3)  | Kotlin   | [:white_check_mark:](03_Kotlin/03a.kts)    | [:white_check_mark:](03_Kotlin/03b.kts)    | [:spiral_notepad:](#day-3---kotlin)   |
| [04](https://adventofcode.com/2023/day/4)  | Crystal  | [:white_check_mark:](04_Crystal/04a.cr)    | [:white_check_mark:](04_Crystal/04b.cr)    | [:spiral_notepad:](#day-4---crystal)  |
| [05](https://adventofcode.com/2023/day/5)  | Go       | [:white_check_mark:](04_Go/05a.go)         | [:white_check_mark:](05_Go/05b.go)         | [:spiral_notepad:](#day-5---go)       |
| [06](https://adventofcode.com/2023/day/6)  | R        | [:white_check_mark:](06_R/06a.r)           | [:white_check_mark:](06_R/06b.cr)          | [:spiral_notepad:](#day-6---r)        |
| [07](https://adventofcode.com/2023/day/7)  | NodeJS   | [:white_check_mark:](07_NodeJS/07a.js)     | [:white_check_mark:](07_NodeJS/07b.js)     | [:spiral_notepad:](#day-7---nodejs)   |
| [08](https://adventofcode.com/2023/day/8)  | Lua      | [:white_check_mark:](08_Lua/08a.lua)       | [:white_check_mark:](08_Lua/08b.lua)       | [:spiral_notepad:](#day-8---lua)      |
| [09](https://adventofcode.com/2023/day/9)  | Awk      | [:white_check_mark:](09_Awk/09a.awk)       | [:white_check_mark:](09_Awk/09b.awk)       | [:spiral_notepad:](#day-9---awk)      |
| [10](https://adventofcode.com/2023/day/10) | Groovy   | [:white_check_mark:](10_Groovy/10a.groovy) |                                            | [:spiral_notepad:](#day-10---groovy)  |
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

Wow, I really enjoyed programming in Crystal. Pretty much everything I wanted to do could be achieved extremely concisely, with a tremendously rich amount of functionality in all the classes. The only question mark I have was whether I could have tightened up [the code for effectively doing a `map` on a limited `Range` of an `Array`](04_Crystal/04b.cr#L6-L8). I liked the general design and constructs of the language, feeling like there were fewer characters to type than with most other languages (e.g., no semi-colons, far fewer brackets, etc). And the amount of example code in the [API documentation](https://crystal-lang.org/api/) ... amazing.

### Day 5 - Go

I don't really have a lot to say about using Go for this task. Nothing really got in my way, but nothing really amazed me either. It felt more concise than what I'd expect if I were writing the same in C++, but probably less so than if I were doing it in Python. I'm not super-happy with the [almost identically repeated code]((05_Go/05b.cr#L53-L70)) in my solution for the second part, but I just couldn't be bothered to extract it into a function.

### Day 6 - R

I pretty quickly worked out using a quadratic formula to find the min/max hold times, which could be expressed pretty easily using any programming language. R was a good choice for the first challenge since it lets you both write expressions that are simultaneously applied across the elements of a vector (i.e., [finding the number of ways to win for each race](06_R/06a.r#L5-L8)) and to collapse vectors into single elements (i.e., [multiplying the elements to get the final answer](06_R/06a.r#L10)). When faced with the second challenge, I was lucky to discover R has [an easy way to concatenate numeric columns](06_R/06b.r#L2).

### Day 7 - NodeJS

This day's solutions really benefitted from me doing this write-up. I was initially planning to highlight [one place I'd used `map`](07_NodeJS/07a.js#L35-L36) and "complain" about another place where I had a long block of code for looping with an embedded `switch` statement, but as I looked at it with increasing disgust I realised it could be replaced with a [one-line `map`/`reduce`](07_NodeJS/07a.js#L20) as well. The general chaining of functions with `.` is a generally useful idiom, but I wonder at what point it crosses the line into hard-to-make-sense-of territory.

### Day 8 - Lua

This is very much a story in two parts. The first part of the puzzle went very smoothly, with Lua's tables being an excellent match for doing the traversal. The second part, however, was pretty frustrating. I'd argue the puzzle description omitted certain assumptions that could be made about the input data (as it turns out, each `??A` starting state only ever passes one `??Z` state, and it always does it on the same point in the rule string, and the first and second crossing have the same move count - i.e., the length from `??A` -> `??Z` is the same as the cycle length from `??Z` -> `??Z`). All this makes the problem a lot more practical to solve, but I felt dirty encoding these assumptions in my solution given they weren't explicitly included in the problem description. I'll also mention I was too lazy to implement least-common-multiple and used [the example from Rosetta Code](https://rosettacode.org/wiki/Least_common_multiple#Lua) instead. Other than the 1-indexing, I still love Lua.

### Day 9 - Awk

I remember being really impressed by Awk last year, and I was really looking forward to using it again this year. I was not disappointed. Granted I waited for a puzzle that I thought would be a good fit, but I was really pleased how simple it was to express exactly that I wanted to do - processing a file line-by-line, token-by-token, aggregating and producing a final result. Really great ... looking forward to using it again next year (I've still not found a use for it in my day-to-day life).

### Day 10 - Groovy

I'm not sure this puzzle (or at least my solution to it) really allowed the language to shine. Some of the [indexed iteration](10_Groovy/10a.groovy#L21) was nice, but if I look at my usage of Groovy from last year, I didn't get to use any regular expressions or multiple return values (unpacking?). I also didn't like [constantly using `New`](10_Groovy/10a.groovy#L2-L15).
