/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Two-Phase Initialization](Two-Phase%20Initialization)
/*:
 ## Initializer Inheritance and Overriding
 
 Unlike subclasses in Objective-C, Swift subclasses don’t inherit their superclass initializers by default. Swift’s approach prevents a situation in which a simple initializer from a superclass is inherited by a more specialized subclass and is used to create a new instance of the subclass that isn’t fully or correctly initialized.
*/
/*:
 - Note:Superclass initializers are inherited in certain circumstances, but only when it’s safe and appropriate to do so. For more information, see [Automatic Initializer Inheritance](Automatic%20Initializer%20Inheritance) below.
*/
/*:
 If you want a custom subclass to present one or more of the same initializers as its superclass, you can provide a custom implementation of those initializers within the subclass.

 When you write a subclass initializer that matches a superclass *designated* initializer, you are effectively providing an `override` of that designated initializer. Therefore, you must write the override modifier before the subclass’s initializer definition. This is true even if you are overriding an automatically provided default initializer, as described in [Default Initializers](Default%20Initializers).

 As with an overridden property, method or subscript, the presence of the `override` modifier prompts Swift to check that the superclass has a matching designated initializer to be overridden, and validates that the parameters for your overriding initializer have been specified as intended.
*/
/*:
 - Note:You always write the `override` modifier when overriding a superclass designated initializer, even if your subclass’s implementation of the initializer is a convenience initializer.
*/
/*:
 Conversely, if you write a subclass initializer that matches a superclass *convenience* initializer, that superclass convenience initializer can never be called directly by your subclass, as per the rules described above in [Initializer Delegation for Class Types](Initializer%20Delegation%20for%20Class%20Types). Therefore, your subclass is not (strictly speaking) providing an override of the superclass initializer. As a result, you don’t write the `override` modifier when providing a matching implementation of a superclass convenience initializer.

 The example below defines a base class called `Vehicle`. This base class declares a stored property called `numberOfWheels`, with a default Int value of 0. The numberOfWheels property is used by a computed property called `description` to create a `String` description of the vehicle’s characteristics:
*/
class Vehicle {
    var numberOfWheels = 0
    var description: String {
        return "\(numberOfWheels) wheel(s)"
    }
}
/*:
 The `Vehicle` class provides a default value for its only stored property, and doesn’t provide any custom initializers itself. As a result, it automatically receives a default initializer, as described in [Default Initializers](Default%20Initializers). The default initializer (when available) is always a designated initializer for a class, and can be used to create a new `Vehicle` instance with a `numberOfWheels` of `0`:
*/
let vehicle = Vehicle()
print("Vehicle: \(vehicle.description)")
// Vehicle: 0 wheel(s)
/*:
 The next example defines a subclass of Vehicle called Bicycle:
*/
class Bicycle: Vehicle {
    override init() {
        super.init()
        numberOfWheels = 2
    }
}
/*:
 The Bicycle subclass defines a custom designated initializer, `init()`. This designated initializer matches a designated initializer from the superclass of `Bicycle`, and so the `Bicycle` version of this initializer is marked with the `override` modifier.

 The `init()` initializer for `Bicycle` starts by calling `super.init()`, which calls the default initializer for the `Bicycle` class’s superclass, `Vehicle`. This ensures that the `numberOfWheels` inherited property is initialized by `Vehicle` before `Bicycle` has the opportunity to modify the property. After calling `super.init()`, the original value of `numberOfWheels` is replaced with a new value of `2`.

 If you create an instance of `Bicycle`, you can call its inherited description computed property to see how its `numberOfWheels` property has been updated:
*/
let bicycle = Bicycle()
print("Bicycle: \(bicycle.description)")
// Bicycle: 2 wheel(s)
/*:
 If a subclass initializer performs no customization in phase 2 of the initialization process, and the superclass has a synchronous, zero-argument designated initializer, you can omit a call to `super.init()` after assigning values to all of the subclass’s stored properties. If the superclass’s initializer is asynchronous, you need to write await `super.init()` explicitly.

 This example defines another subclass of `Vehicle`, called `Hoverboard`. In its initializer, the Hoverboard class sets only its `color` property. Instead of making an explicit call to `super.init()`, this initializer relies on an implicit call to its superclass’s initializer to complete the process.
*/
class Hoverboard: Vehicle {
    var color: String
    init(color: String) {
        self.color = color
        // super.init() implicitly called here
    }
    override var description: String {
        return "\(super.description) in a beautiful \(color)"
    }
}
/*:
 An instance of Hoverboard uses the default number of wheels supplied by the `Vehicle` initializer.
*/
let hoverboard = Hoverboard(color: "silver")
print("Hoverboard: \(hoverboard.description)")
// Hoverboard: 0 wheel(s) in a beautiful silver
/*:
 - Note:Subclasses can modify inherited variable properties during initialization, but can’t modify inherited constant properties.
*/
//: [Automatic Initializer Inheritance](Automatic%20Initializer%20Inheritance)
