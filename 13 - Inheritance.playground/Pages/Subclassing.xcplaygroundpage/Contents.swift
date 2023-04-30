/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Defining a Base Class](Defining%20a%20Base%20Class)
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}
/*:
 ## Subclassing

 *Subclassing* is the act of basing a new class on an existing class. The subclass inherits characteristics from the existing class, which you can then refine. You can also add new characteristics to the subclass.

 To indicate that a subclass has a superclass, write the subclass name before the superclass name, separated by a colon:
 
 ````
 class SomeSubclass: SomeSuperclass {
     // subclass definition goes here
 }
 ````
*/
/*:
 The following example defines a subclass called Bicycle, with a superclass of Vehicle:
*/
class Bicycle: Vehicle {
    var hasBasket = false
}
/*:
 The new `Bicycle` class automatically gains all of the characteristics of `Vehicle`, such as its `currentSpeed` and `description` properties and its `makeNoise()` method.

 In addition to the characteristics it inherits, the `Bicycle` class defines a new stored property, `hasBasket`, with a default value of `false` (inferring a type of `Bool` for the property).

 By default, any new `Bicycle` instance you create will not have a basket. You can set the hasBasket property to `true` for a particular `Bicycle` instance after that instance is created:
*/
let bicycle = Bicycle()
bicycle.hasBasket = true
/*:
 You can also modify the inherited `currentSpeed` property of a `Bicycle` instance, and query the instance’s inherited `description` property:
*/
bicycle.currentSpeed = 15.0
print("Bicycle: \(bicycle.description)")
// Bicycle: traveling at 15.0 miles per hour
/*:
 Subclasses can themselves be subclassed. The next example creates a subclass of `Bicycle` for a two-seater bicycle known as a “tandem”:
*/
class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}
/*:
 `Tandem` inherits all of the properties and methods from `Bicycle`, which in turn inherits all of the properties and methods from `Vehicle`. The `Tandem` subclass also adds a new stored property called `currentNumberOfPassengers`, with a default value of `0`.

 If you create an instance of Tandem, you can work with any of its new and inherited properties, and query the read-only description property it inherits from Vehicle:
*/
let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print("Tandem: \(tandem.description)")
// Tandem: traveling at 22.0 miles per hour
//: [Overriding ->](Overriding)
