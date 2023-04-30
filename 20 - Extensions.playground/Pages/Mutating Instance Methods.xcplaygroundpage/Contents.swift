/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Methods](Methods)
/*:
 ## Mutating Instance Methods
 
 Instance methods added with an extension can also modify (or *mutate*) the instance itself. Structure and enumeration methods that modify `self` or its properties must mark the instance method as `mutating`, just like mutating methods from an original implementation.

 The example below adds a new mutating method called square to Swift’s `Int` type, which squares the original value:
*/
extension Int {
    mutating func square() {
        self = self * self
    }
}
var someInt = 3
someInt.square()
// someInt is now 9
//: [Subscripts](Subscripts)
