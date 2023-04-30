/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- The Sorted Method](The%20Sorted%20Method)
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
/*:
 ## Closure Expression Syntax

 Closure expression syntax has the following general form:
*/
/*:
 ````
 { (<#parameters#>) -> <#return type#> in
    <#statements#>
 }
 ````
*/
/*:
 The *parameters* in closure expression syntax can be in-out parameters, but they can’t have a default value. Variadic parameters can be used if you name the variadic parameter. Tuples can also be used as parameter types and return types.

 The example below shows a closure expression version of the `backward(_:_:)` function from above:
*/
var reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
/*:
 Note that the declaration of parameters and return type for this inline closure is identical to the declaration from the `backward(_:_:)` function. In both cases, it’s written as `(s1: String, s2: String) -> Bool`. However, for the inline closure expression, the parameters and return type are written *inside* the curly braces, not outside of them.

 The start of the closure’s body is introduced by the `in` keyword. This keyword indicates that the definition of the closure’s parameters and return type has finished, and the body of the closure is about to begin.

 Because the body of the closure is so short, it can even be written on a single line:
*/
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )
/*:
 This illustrates that the overall call to the `sorted(by:)` method has remained the same. A pair of parentheses still wrap the entire argument for the method. However, that argument is now an inline closure.
*/
//: [Inferring Type From Context ->](Inferring%20Type%20From%20Context)
