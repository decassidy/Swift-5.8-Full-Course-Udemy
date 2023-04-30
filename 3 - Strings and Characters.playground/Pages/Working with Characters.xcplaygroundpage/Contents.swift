/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Strings Are Value Types](Strings%20Are%20Value%20Types)
/*:
 ## Working with Characters

 You can access the individual `Character` values for a `String` by iterating over the string with a `for-in` loop:
*/
for character in "Dog!🐶" {
    print(character, terminator: "")
}
// D
// o
// g
// !
// 🐶
/*:
 The `for-in` loop is described in [For-In Loops](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow/#For-In-Loops)\.

 Alternatively, you can create a stand-alone `Character` constant or variable from a single-character string literal by providing a `Character` type annotation:
*/
let exclamationMark: Character = "!"
/*:
 `String` values can be constructed by passing an array of `Character` values as an argument to its initializer:
*/
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print("\n" + catString)
// Prints "Cat!🐱"
//: [Concantenating Strings and Characters ->](Concatenating%20Strings%20and%20Characters)
