/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Closure Expressions](Closures%20Expressions)
/*:
 ## The Sorted Method

 Swift’s standard library provides a method called `sorted(by:)`, which sorts an array of values of a known type, based on the output of a sorting closure that you provide. Once it completes the sorting process, the `sorted(by:)` method returns a new array of the same type and size as the old one, with its elements in the correct sorted order. The original array isn’t modified by the `sorted(by:)` method.

 The closure expression examples below use the `sorted(by:)` method to sort an array of `String` values in reverse alphabetical order. Here’s the initial array to be sorted:
*/
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
/*:
 The `sorted(by:)` method accepts a closure that takes two arguments of the same type as the array’s contents, and returns a `Bool` value to say whether the first value should appear before or after the second value once the values are sorted. The sorting closure needs to return `true` if the first value should appear before the second value, and `false` otherwise.

 This example is sorting an array of String values, and so the sorting closure needs to be a function of type `(String, String) -> Bool`.

 One way to provide the sorting closure is to write a normal function of the correct type, and to pass it in as an argument to the `sorted(by:)` method:
*/
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
// reversedNames is equal to ["Ewa", "Daniella", "Chris", "Barry", "Alex"]
/*:
 If the first string `(s1)` is greater than the second string `(s2)`, the `backward(_:_:)` function will return `true`, indicating that `s1` should appear before `s2` in the sorted array. For characters in strings, “greater than” means “appears later in the alphabet than”. This means that the letter `"B"` is “greater than” the letter `"A"`, and the string `"Tom"` is greater than the string `"Tim"`. This gives a reverse alphabetical sort, with `"Barry"` being placed before `"Alex"`, and so on.

 However, this is a rather long-winded way to write what is essentially a single-expression function `(a > b)`. In this example, it would be preferable to write the sorting closure inline, using closure expression syntax.
*/
//: [Closure Expression Syntax ->](Closure%20Expression%20Syntax)
