/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Creating and Initializing an Empty Set](Creating%20and%20Initializing%20an%20Empty%20Set)
/*:
 ## Creating a Set with an Array Literal

 You can also initialize a set with an array literal, as a shorthand way to write one or more values as a set collection.

 The example below creates a set called `favoriteGenres` to store `String` values:
*/
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
// favoriteGenres has been initialized with three initial items
/*:
 The `favoriteGenres` variable is declared as “a set of `String` values”, written as `Set<String>`. Because this particular set has specified a value type of `String`, it’s only allowed to store `String` values. Here, the favoriteGenres set is initialized with three `String` values `("Rock", "Classical", and "Hip hop")`, written within an array literal.
*/
/*:
 - Note: The `favoriteGenres` set is declared as a variable (with the var introducer) and not a constant (with the `let` introducer) because items are added and removed in the examples below.
*/
/*:
 A set type can’t be inferred from an array literal alone, so the type `Set` must be explicitly declared. However, because of Swift’s type inference, you don’t have to write the type of the set’s elements if you’re initializing it with an array literal that contains values of just one type. The initialization of `favoriteGenres` could have been written in a shorter form instead:
*/
//var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
/*:
 Because all values in the array literal are of the same type, Swift can infer that `Set<String>` is the correct type to use for the `favoriteGenres` variable.
*/
//: [Accessing and Modifying a Set ->](Accessing%20and%20Modifying%20a%20Set)
