/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Performing Set Operations](Performing%20Set%20Operations)
/*:
 ## Fundamental Set Operations

 The illustration below depicts two sets — `a` and `b` — with the results of various set operations represented by the shaded regions.
*/
//: ![](set-operations.png)
/*:
 * Use the `intersection(_:)` method to create a new set with only the values common to both sets.

 * Use the `symmetricDifference(_:)` method to create a new set with values in either set, but not both.

 * Use the `union(_:)` method to create a new set with all of the values in both sets.

 * Use the `subtracting(_:)` method to create a new set with values not in the specified set.
*/
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]


oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted()
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]
//: [Set Membership and Equality ->](Set%20Membership%20and%20Equality)
