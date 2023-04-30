/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Initializer Delegation for Class Types](Initializer%20Delegation%20for%20Class%20Types)
/*:
 ## Two-Phase Initialization
 
 Class initialization in Swift is a two-phase process. In the first phase, each stored property is assigned an initial value by the class that introduced it. Once the initial state for every stored property has been determined, the second phase begins, and each class is given the opportunity to customize its stored properties further before the new instance is considered ready for use.

 The use of a two-phase initialization process makes initialization safe, while still giving complete flexibility to each class in a class hierarchy. Two-phase initialization prevents property values from being accessed before they’re initialized, and prevents property values from being set to a different value by another initializer unexpectedly.
*/
/*:
 - Note:Swift’s two-phase initialization process is similar to initialization in Objective-C. The main difference is that during phase 1, Objective-C assigns zero or null values (such as `0` or `nil`) to every property. Swift’s initialization flow is more flexible in that it lets you set custom initial values, and can cope with types for which `0` or `nil` isn’t a valid default value.
*/
/*:
 Swift’s compiler performs four helpful safety-checks to make sure that two-phase initialization is completed without error:
*/
/*:
 Safety check 1
 
 A designated initializer must ensure that all of the properties introduced by its class are initialized before it delegates up to a superclass initializer.

 
 As mentioned above, the memory for an object is only considered fully initialized once the initial state of all of its stored properties is known. In order for this rule to be satisfied, a designated initializer must make sure that all of its own properties are initialized before it hands off up the chain.
 
 
 Safety check 2
 
 A designated initializer must delegate up to a superclass initializer before assigning a value to an inherited property. If it doesn’t, the new value the designated initializer assigns will be overwritten by the superclass as part of its own initialization.

 
 Safety check 3
 
 A convenience initializer must delegate to another initializer before assigning a value to *any* property (including properties defined by the same class). If it doesn’t, the new value the convenience initializer assigns will be overwritten by its own class’s designated initializer.

 
 Safety check 4
 
 An initializer can’t call any instance methods, read the values of any instance properties, or refer to `self` as a value until after the first phase of initialization is complete.

 
 The class instance isn’t fully valid until the first phase ends. Properties can only be accessed, and methods can only be called, once the class instance is known to be valid at the end of the first phase.
*/
/*:
 Here’s how two-phase initialization plays out, based on the four safety checks above:

 
 Phase 1

 - A designated or convenience initializer is called on a class.

 - Memory for a new instance of that class is allocated. The memory isn’t yet initialized.

 - A designated initializer for that class confirms that all stored properties introduced by that class have a value. The memory for these stored properties is now initialized.

 - The designated initializer hands off to a superclass initializer to perform the same task for its own stored properties.

 - This continues up the class inheritance chain until the top of the chain is reached.

 - Once the top of the chain is reached, and the final class in the chain has ensured that all of its stored properties have a value, the instance’s memory is considered to be fully initialized, and phase 1 is complete.

 
 Phase 2

 - Working back down from the top of the chain, each designated initializer in the chain has the option to customize the instance further. Initializers are now able to access self and can modify its properties, call its instance methods, and so on.

 - Finally, any convenience initializers in the chain have the option to customize the instance and to work with self.

*/
/*:
 Here’s how phase 1 looks for an initialization call for a hypothetical subclass and superclass:
*/
//: ![](superclass2.png)
/*:
 In this example, initialization begins with a call to a convenience initializer on the subclass. This convenience initializer can’t yet modify any properties. It delegates across to a designated initializer from the same class.

 The designated initializer makes sure that all of the subclass’s properties have a value, as per safety check 1. It then calls a designated initializer on its superclass to continue the initialization up the chain.

 The superclass’s designated initializer makes sure that all of the superclass properties have a value. There are no further superclasses to initialize, and so no further delegation is needed.

 As soon as all properties of the superclass have an initial value, its memory is considered fully initialized, and phase 1 is complete.

 Here’s how phase 2 looks for the same initialization call:
*/
//: ![](superclass3.png)
/*:
 The superclass’s designated initializer now has an opportunity to customize the instance further (although it doesn’t have to).

 Once the superclass’s designated initializer is finished, the subclass’s designated initializer can perform additional customization (although again, it doesn’t have to).

 Finally, once the subclass’s designated initializer is finished, the convenience initializer that was originally called can perform additional customization.
*/
//: [Initializer Inheritance and Overriding](Initializer%20Inheritance%20and%20Overriding)
