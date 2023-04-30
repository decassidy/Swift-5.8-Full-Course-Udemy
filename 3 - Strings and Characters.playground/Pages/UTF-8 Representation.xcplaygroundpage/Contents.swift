/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- UTF-8 Representation](UTF-8%20Representation)
/*:
 ## UTF-8 Representation

 You can access a UTF-8 representation of a `String` by iterating over its `utf8` property. This property is of type `String.UTF8View`, which is a collection of unsigned 8-bit `(UInt8)` values, one for each byte in the string’s UTF-8 representation:
*/
//: ![](utf-8.png)
let dogString = "Dog‼🐶"

for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}
print("")
// Prints "68 111 103 226 128 188 240 159 144 182 "
/*:
 In the example above, the first three decimal `codeUnit` values `(68, 111, 103)` represent the characters `D`, `o`, and `g`, whose UTF-8 representation is the same as their ASCII representation. The next three decimal `codeUnit` values `(226, 128, 188)` are a three-byte UTF-8 representation of the DOUBLE EXCLAMATION MARK character. The last four `codeUnit` values `(240, 159, 144, 182)` are a four-byte UTF-8 representation of the DOG FACE character.
*/
//: [UTF-16 Representation ->](UTF-16%20Representation)
