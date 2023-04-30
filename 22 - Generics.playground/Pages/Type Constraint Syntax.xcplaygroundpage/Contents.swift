/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Type Constraints](Type%20Constraints)
/*:
 ## Type Constraint Syntax
 
 You write type constraints by placing a single class or protocol constraint after a type parameter’s name, separated by a colon, as part of the type parameter list. The basic syntax for type constraints on a generic function is shown below (although the syntax is the same for generic types):
*/
/*:
 ````
 func someFunction<T: SomeClass, U: SomeProtocol>(someT: T, someU: U) {
     // function body goes here
 }
 ````
 */
/*:
 The hypothetical function above has two type parameters. The first type parameter, `T`, has a type constraint that requires `T` to be a subclass of `SomeClass`. The second type parameter, `U`, has a type constraint that requires `U` to conform to the protocol `SomeProtocol`.
*/
//: [Type Constraints in Action](Type%20Constraints%20in%20Action)
