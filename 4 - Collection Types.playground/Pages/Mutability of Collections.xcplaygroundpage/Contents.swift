/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Collection Types](Collection%20Types)
/*:
 ## Mutability of Collections

 If you create an array, a set, or a dictionary, and assign it to a variable, the collection that’s created will be *mutable*. This means that you can change (or *mutate*) the collection after it’s created by adding, removing, or changing items in the collection. If you assign an array, a set, or a dictionary to a constant, that collection is *immutable*, and its size and contents can’t be changed.
*/
/*:
 - Note: It’s good practice to create immutable collections in all cases where the collection doesn’t need to change. Doing so makes it easier for you to reason about your code and enables the Swift compiler to optimize the performance of the collections you create.
*/
//: [Arrays ->](Arrays)
