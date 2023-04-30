/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Providing Default Implementations](Providing%20Default%20Implementations)
/*:
 ## Adding Constraints to Protocol Extensions
 
 When you define a protocol extension, you can specify constraints that conforming types must satisfy before the methods and properties of the extension are available. You write these constraints after the name of the protocol you’re extending by writing a generic `where` clause. For more about generic `where` clauses, see [Generic Where Clauses](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/generics/#Generic-Where-Clauses)\.

 For example, you can define an extension to the `Collection` protocol that applies to any collection whose elements conform to the `Equatable` protocol. By constraining a collection’s elements to the `Equatable` protocol, a part of the standard library, you can use the `==` and `!=` operators to check for equality and inequality between two elements.
*/
 extension Collection where Element: Equatable {
     func allEqual() -> Bool {
         for element in self {
             if element != self.first {
                 return false
             }
         }
         return true
     }
 }
/*:
 The `allEqual()` method returns `true` only if all the elements in the collection are equal.

 Consider two arrays of integers, one where all the elements are the same, and one where they aren’t:
*/
 let equalNumbers = [100, 100, 100, 100, 100]
 let differentNumbers = [100, 100, 200, 100, 200]
/*:
 Because arrays conform to `Collection` and integers conform to `Equatable`, `equalNumbers` and `differentNumbers` can use the `allEqual()` method:
*/
 print(equalNumbers.allEqual())
 // Prints "true"
 print(differentNumbers.allEqual())
 // Prints "false"
/*:
 - Note:If a conforming type satisfies the requirements for multiple constrained extensions that provide implementations for the same method or property, Swift uses the implementation corresponding to the most specialized constraints.
*/
