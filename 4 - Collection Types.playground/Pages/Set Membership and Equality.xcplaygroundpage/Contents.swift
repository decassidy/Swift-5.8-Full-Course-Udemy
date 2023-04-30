/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Fundamental Set Operations](Fundamental%20Set%20Operations)
/*:
 ## Set Membership and Equality

 The illustration below depicts three sets — `a`, `b` and `c` — with overlapping regions representing elements shared among sets. Set `a` is a *superset* of set `b`, because a contains all elements in `b`. Conversely, set `b` is a subset of set `a`, because all elements in `b` are also contained by `a`. Set `b` and set `c` are disjoint with one another, because they share no elements in common.
*/
//: ![](set-member.png)
/*:
 * Use the “is equal” operator `(==)` to determine whether two sets contain all of the same values.

 * Use the `isSubset(of:)` method to determine whether all of the values of a set are contained in the specified set.

 * Use the `isSuperset(of:)` method to determine whether a set contains all of the values in a specified set.

 * Use the `isStrictSubset(of:)` or `isStrictSuperset(of:)` methods to determine whether a set is a subset or superset, but not equal to, a specified set.

 * Use the `isDisjoint(with:)` method to determine whether two sets have no values in common.
*/
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]


houseAnimals.isSubset(of: farmAnimals)
// true
farmAnimals.isSuperset(of: houseAnimals)
// true
farmAnimals.isDisjoint(with: cityAnimals)
// true
//: [Dictionaries ->](Dictionaries)
