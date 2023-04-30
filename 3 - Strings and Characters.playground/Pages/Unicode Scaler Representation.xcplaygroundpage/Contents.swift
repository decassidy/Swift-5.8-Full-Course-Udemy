/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Unicode Scaler Representation](Unicode%20Scaler%20Representation)
/*:
 ## Unicode Scalar Representation

 You can access a Unicode scalar representation of a `String` value by iterating over its `unicodeScalars` property. This property is of type `UnicodeScalarView`, which is a collection of values of type `UnicodeScalar`.

 Each `UnicodeScalar` has a value property that returns the scalar’s 21-bit value, represented within a `UInt32` value:
*/
//: ![](UnicodeScaler.png)
let dogString = "Dog‼🐶"

for scalar in dogString.unicodeScalars {
    print("\(scalar.value) ", terminator: "")
}
print("")
// Prints "68 111 103 8252 128054 "
/*:
 The `value` properties for the first three `UnicodeScalar` values `(68, 111, 103)` once again represent the characters `D`, `o`, and `g`.

 The fourth `codeUnit` value (`8252`) is again a decimal equivalent of the hexadecimal value `203C`, which represents the Unicode scalar `U+203C` for the DOUBLE EXCLAMATION MARK character.

 The value property of the fifth and final `UnicodeScalar`, `128054`, is a decimal equivalent of the hexadecimal value `1F436`, which represents the Unicode scalar `U+1F436` for the DOG FACE character.

 As an alternative to querying their `value` properties, each `UnicodeScalar` value can also be used to construct a new `String` value, such as with string interpolation:
*/
for scalar in dogString.unicodeScalars {
    print("\(scalar) ")
}
// D
// o
// g
// ‼
// 🐶
//: [Collection Types ->](Collection%20Types)
