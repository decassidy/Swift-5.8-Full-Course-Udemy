/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Initializer Inheritance and Overriding](Initializer%20Inheritance%20and%20Overriding)
/*:
 ## Automatic Initializer Inheritance
 
 As mentioned above, subclasses don’t inherit their superclass initializers by default. However, superclass initializers are automatically inherited if certain conditions are met. In practice, this means that you don’t need to write initializer overrides in many common scenarios, and can inherit your superclass initializers with minimal effort whenever it’s safe to do so.

 Assuming that you provide default values for any new properties you introduce in a subclass, the following two rules apply:
 
 Rule 1
 
 If your subclass doesn’t define any designated initializers, it automatically inherits all of its superclass designated initializers.

 Rule 2
 
 If your subclass provides an implementation of all of its superclass designated initializers — either by inheriting them as per rule 1, or by providing a custom implementation as part of its definition — then it automatically inherits all of the superclass convenience initializers.

 These rules apply even if your subclass adds further convenience initializers.
*/
/*:
 - Note:A subclass can implement a superclass designated initializer as a subclass convenience initializer as part of satisfying rule 2.
*/
//: [Designated and Convenience Initializers in Action](Designated%20and%20Convenience%20Initializers%20in%20Action)
