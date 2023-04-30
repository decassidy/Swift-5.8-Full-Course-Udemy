/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Syntax for Designated and Convenience Initializers](Syntax%20for%20Designated%20and%20Convenience%20Initializers)
/*:
 ## Initializer Delegation for Class Types
 
 To simplify the relationships between designated and convenience initializers, Swift applies the following three rules for delegation calls between initializers:
 ````
 Rule 1
 A designated initializer must call a designated initializer from its immediate superclass.

 Rule 2
 A convenience initializer must call another initializer from the same class.

 Rule 3
 A convenience initializer must ultimately call a designated initializer.
 ````
*/
/*:
 A simple way to remember this is:

 Designated initializers must always delegate up.

 Convenience initializers must always delegate across.

 These rules are illustrated in the figure below:
*/
//: ![](superclass.png)
/*:
 Here, the superclass has a single designated initializer and two convenience initializers. One convenience initializer calls another convenience initializer, which in turn calls the single designated initializer. This satisfies rules 2 and 3 from above. The superclass doesn’t itself have a further superclass, and so rule 1 doesn’t apply.

 The subclass in this figure has two designated initializers and one convenience initializer. The convenience initializer must call one of the two designated initializers, because it can only call another initializer from the same class. This satisfies rules 2 and 3 from above. Both designated initializers must call the single designated initializer from the superclass, to satisfy rule 1 from above.
*/
/*:
 - Note:These rules don’t affect how users of your classes create instances of each class. Any initializer in the diagram above can be used to create a fully initialized instance of the class they belong to. The rules only affect how you write the implementation of the class’s initializers.
*/
/*:
 The figure below shows a more complex class hierarchy for four classes. It illustrates how the designated initializers in this hierarchy act as “funnel” points for class initialization, simplifying the interrelationships among classes in the chain:
*/
//: ![](designated.png)
//: [Two-Phase Initialization](Two-Phase%20Initialization)
