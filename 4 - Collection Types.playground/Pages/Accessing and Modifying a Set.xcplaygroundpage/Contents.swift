/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Creating a Set with an Array Literal](Creating%20a%20Set%20with%20an%20Array%20Literal)
/*:
 ## Accessing and Modifying a Set

 You access and modify a set through its methods and properties.

 To find out the number of items in a set, check its read-only count property:
*/
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]

print("I have \(favoriteGenres.count) favorite music genres.")
// Prints "I have 3 favorite music genres."
/*:
 Use the Boolean `isEmpty` property as a shortcut for checking whether the count property is equal to `0`:
*/
if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}
// Prints "I have particular music preferences."
/*:
 You can add a new item into a set by calling the set’s `insert(_:)` method:
*/
favoriteGenres.insert("[Jazz]")
// favoriteGenres now contains 4 items
/*:
 You can remove an item from a set by calling the set’s `remove(_:)` method, which removes the item if it’s a member of the set, and returns the removed value, or returns nil if the set didn’t contain it. Alternatively, all items in a set can be removed with its `removeAll()` method.
*/
if let removedGenre = favoriteGenres.remove("Rock") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}
// Prints "Rock? I'm over it."
/*:
 To check whether a set contains a particular item, use the `contains(_:)` method.
*/
if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}
// Prints "It's too funky in here."
//: [Iterating Over a Set ->](Iterating%20Over%20a%20Set)
