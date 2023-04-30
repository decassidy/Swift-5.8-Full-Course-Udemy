/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Comparing Strings](Comparing%20Strings)
/*:
 ## String and Character Equality

 String and character equality is checked with the “equal to” operator `(==)` and the “not equal to” operator `(!=)`, as described in [Comparison Operators](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/basicoperators/#Comparison-Operators)\:
*/
let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    print("These two strings are considered equal")
}
// Prints "These two strings are considered equal"
/*:
 Two `String` values (or two `Character` values) are considered equal if their extended grapheme clusters are *canonically equivalent*. Extended grapheme clusters are canonically equivalent if they have the same linguistic meaning and appearance, even if they’re composed from different Unicode scalars behind the scenes.

 For example, LATIN SMALL LETTER E WITH ACUTE `(U+00E9)` is canonically equivalent to LATIN SMALL LETTER E `(U+0065)` followed by COMBINING ACUTE ACCENT `(U+0301)`. Both of these extended grapheme clusters are valid ways to represent the character `é`, and so they’re considered to be canonically equivalent:
*/
// "Voulez-vous un café?" using LATIN SMALL LETTER E WITH ACUTE
let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"


// "Voulez-vous un café?" using LATIN SMALL LETTER E and COMBINING ACUTE ACCENT
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"


if eAcuteQuestion == combinedEAcuteQuestion {
    print("These two strings are considered equal")
}
// Prints "These two strings are considered equal"
/*:
 Conversely, LATIN CAPITAL LETTER A (`U+0041`, or "`A`"), as used in English, is not equivalent to CYRILLIC CAPITAL LETTER A (`U+0410`, or "`А`"), as used in Russian. The characters are visually similar, but don’t have the same linguistic meaning:
*/
let latinCapitalLetterA: Character = "\u{41}"

let cyrillicCapitalLetterA: Character = "\u{0410}"

if latinCapitalLetterA != cyrillicCapitalLetterA {
    print("These two characters aren't equivalent.")
}
// Prints "These two characters aren't equivalent."
/*:
 - Note: String and character comparisons in Swift aren’t locale-sensitive.
*/
//: [Prefix and Suffix Equality ->](Prefix%20and%20Suffix%20Equality)
