/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Prefix and Suffix Equality](Prefix%20and%20Suffix%20Equality)
/*:
 ## Unicode Representations of Strings

 When a Unicode string is written to a text file or some other storage, the Unicode scalars in that string are encoded in one of several Unicode-defined *encoding forms*. Each form encodes the string in small chunks known as *code units*. These include the UTF-8 encoding form (which encodes a string as 8-bit code units), the UTF-16 encoding form (which encodes a string as 16-bit code units), and the UTF-32 encoding form (which encodes a string as 32-bit code units).

 Swift provides several different ways to access Unicode representations of strings. You can iterate over the string with a `for-in` statement, to access its individual `Character` values as Unicode extended grapheme clusters. This process is described in [Working with Characters](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/stringsandcharacters/#Working-with-Characters)\.

 Alternatively, access a String value in one of three other Unicode-compliant representations:
 
 * A collection of UTF-8 code units (accessed with the string’s `utf8` property)

 * A collection of UTF-16 code units (accessed with the string’s `utf16` property)

 * A collection of 21-bit Unicode scalar values, equivalent to the string’s UTF-32 encoding form (accessed with the string’s `unicodeScalars` property)

Each example below shows a different representation of the following string, which is made up of the characters D, o, g, ‼ (DOUBLE EXCLAMATION MARK, or Unicode scalar `U+203C`), and the 🐶 character (DOG FACE, or Unicode scalar `U+1F436`):
*/
let dogString = "Dog‼🐶"
//: [UTF-8 Representation ->](UTF-8%20Representation)
