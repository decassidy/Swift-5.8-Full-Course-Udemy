/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Class Inheritance and Initialization](Class%20Inheritance%20and%20Initialization)
/*:
 ## Designated Initializers and Convenience Initializers
 
 Designated initializers are the primary initializers for a class. A designated initializer fully initializes all properties introduced by that class and calls an appropriate superclass initializer to continue the initialization process up the superclass chain.

 Classes tend to have very few designated initializers, and it’s quite common for a class to have only one. Designated initializers are “funnel” points through which initialization takes place, and through which the initialization process continues up the superclass chain.

 Every class must have at least one designated initializer. In some cases, this requirement is satisfied by inheriting one or more designated initializers from a superclass, as described in [Automatic Initializer Inheritance](Automatic%20Initializer%20Inheritance) below.

 Convenience initializers are secondary, supporting initializers for a class. You can define a convenience initializer to call a designated initializer from the same class as the convenience initializer with some of the designated initializer’s parameters set to default values. You can also define a convenience initializer to create an instance of that class for a specific use case or input value type.

 You don’t have to provide convenience initializers if your class doesn’t require them. Create convenience initializers whenever a shortcut to a common initialization pattern will save time or make initialization of the class clearer in intent.
*/
//: [Syntax for Designated and Convenience Initializers](Syntax%20for%20Designated%20and%20Convenience%20Initializers)
