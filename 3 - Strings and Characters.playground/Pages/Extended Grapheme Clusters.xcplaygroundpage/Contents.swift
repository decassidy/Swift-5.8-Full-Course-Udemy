/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Unicode Scalar Values](Unicode%20Scalar%20Values)
/*:
 ## Extended Grapheme Clusters

 Every instance of Swift’s `Character` type represents a single *extended grapheme cluster*. An extended grapheme cluster is a sequence of one or more Unicode scalars that (when combined) produce a single human-readable character.

 Here’s an example. The letter `é` can be represented as the single Unicode scalar `é` (LATIN SMALL LETTER E WITH ACUTE, or `U+00E9`). However, the same letter can also be represented as a pair of scalars — a standard letter e (LATIN SMALL LETTER E, or `U+0065`), followed by the COMBINING ACUTE ACCENT scalar `(U+0301)`. The COMBINING ACUTE ACCENT scalar is graphically applied to the scalar that precedes it, turning an e into an `é` when it’s rendered by a Unicode-aware text-rendering system.

 In both cases, the letter `é` is represented as a single Swift `Character` value that represents an extended grapheme cluster. In the first case, the cluster contains a single scalar; in the second case, it’s a cluster of two scalars:
*/
let eAcute: Character = "\u{E9}"                         // é
let combinedEAcute: Character = "\u{65}\u{301}"          // e followed by
// eAcute is é, combinedEAcute is é
/*:
 Extended grapheme clusters are a flexible way to represent many complex script characters as a single `Character` value. For example, Hangul syllables from the Korean alphabet can be represented as either a precomposed or decomposed sequence. Both of these representations qualify as a single `Character` value in Swift:
*/
let precomposed: Character = "\u{D55C}"                  // 한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"   // ᄒ, ᅡ, ᆫ
// precomposed is 한, decomposed is 한
/*:
 Extended grapheme clusters enable scalars for enclosing marks (such as COMBINING ENCLOSING CIRCLE, or `U+20DD`) to enclose other Unicode scalars as part of a single `Character` value:
*/
let enclosedEAcute: Character = "\u{E9}\u{20DD}"
// enclosedEAcute is é⃝
/*:
 Unicode scalars for regional indicator symbols can be combined in pairs to make a single `Character` value, such as this combination of REGIONAL INDICATOR SYMBOL LETTER U `(U+1F1FA)` and REGIONAL INDICATOR SYMBOL LETTER S `(U+1F1F8)`:
*/
let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
// regionalIndicatorForUS is 🇺🇸

//: [Counting Characters ->](Counting%20Characters)
