/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- UTF-8 Representation](UTF-8%20Representation)
/*:
 ## UTF-16 Representation

 You can access a UTF-16 representation of a `String` by iterating over its `utf16` property. This property is of type `String.UTF16View`, which is a collection of unsigned 16-bit `(UInt16)` values, one for each 16-bit code unit in the string’s UTF-16 representation:
*/
//: ![](utf-16.png)
let dogString = "Dog‼🐶"

for codeUnit in dogString.utf16 {
    print("\(codeUnit) ", terminator: "")
}
print("")
// Prints "68 111 103 8252 55357 56374 "
/*:
 Again, the first three `codeUnit` values `(68, 111, 103)` represent the characters `D`, `o`, and `g`, whose UTF-16 code units have the same values as in the string’s UTF-8 representation (because these Unicode scalars represent ASCII characters).

 The fourth `codeUnit` value `(8252)` is a decimal equivalent of the hexadecimal value `203C`, which represents the Unicode scalar `U+203C` for the DOUBLE EXCLAMATION MARK character. This character can be represented as a single code unit in UTF-16.

 The fifth and sixth `codeUnit` values (`55357` and `56374`) are a UTF-16 surrogate pair representation of the DOG FACE character. These values are a high-surrogate value of `U+D83D` (decimal value `55357`) and a low-surrogate value of `U+DC36` (decimal value `56374`).
*/
//: [Unicode Scaler Representation ->](Unicode%20Scaler%20Representation)
