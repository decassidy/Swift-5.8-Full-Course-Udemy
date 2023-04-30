/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Unicode](Unicode)
/*:
 ## Unicode Scalar Values

 Behind the scenes, Swift’s native `String` type is built from *Unicode scalar values*. A Unicode scalar value is a unique 21-bit number for a character or modifier, such as `U+0061` for LATIN SMALL LETTER A `("a")`, or `U+1F425` for FRONT-FACING BABY CHICK `("🐥")`.

 Note that not all 21-bit Unicode scalar values are assigned to a character — some scalars are reserved for future assignment or for use in UTF-16 encoding. Scalar values that have been assigned to a character typically also have a name, such as LATIN SMALL LETTER A and FRONT-FACING BABY CHICK in the examples above.
*/
//: [Extended Grapheme Clusters ->](Extended%20Grapheme%20Clusters)
