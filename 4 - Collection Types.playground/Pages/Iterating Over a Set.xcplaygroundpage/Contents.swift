/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Accessing and Modifying a Set](Accessing%20and%20Modifying%20a%20Set)
var favoriteGenres: Set<String> = ["Classical", "Jazz", "Hip hop"]
/*:
 ## Iterating Over a Set

 You can iterate over the values in a set with a `for-in` loop.
*/
for genre in favoriteGenres {
    print("\(genre)")
}
// Classical
// Jazz
// Hip hop
/*:
 For more about the `for-in` loop, see [For-In Loops](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow/#For-In-Loops)\.
 
 Swift’s `Set` type doesn’t have a defined ordering. To iterate over the values of a set in a specific order, use the `sorted()` method, which returns the set’s elements as an array sorted using the `<` operator.
*/
for genre in favoriteGenres.sorted() {
    print("\(genre)")
}
// Classical
// Hip hop
// Jazz
//: [Performing Set Operations ->](Performing%20Set%20Operations)
