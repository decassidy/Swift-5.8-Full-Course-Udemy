/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Accessing Superclass Methods, Properties, and Subscripts](Accessing%20Superclass%20Methods,%20Properties,%20and%20Subscripts)
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
 ## Overriding Methods

 You can override an inherited instance or type method to provide a tailored or alternative implementation of the method within your subclass.

 The following example defines a new subclass of `Vehicle` called `Train`, which overrides the `makeNoise()` method that `Train` inherits from `Vehicle`:
*/
class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}
/*:
 If you create a new instance of `Train` and call its `makeNoise()` method, you can see that the `Train` subclass version of the method is called:
*/
let train = Train()
train.makeNoise()
// Prints "Choo Choo"
//: [Overriding Properties ->](Overriding%20Properties)
