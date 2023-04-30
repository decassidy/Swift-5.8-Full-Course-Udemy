/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Structure and Class Instances](Structure%20and%20Class%20Instances)
struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()
/*:
 ## Accessing Properties

 You can access the properties of an instance using *dot syntax*. In dot syntax, you write the property name immediately after the instance name, separated by a period `(.)`, without any spaces:
*/
print("The width of someResolution is \(someResolution.width)")
// Prints "The width of someResolution is 0"
/*:
 In this example, `someResolution.width` refers to the `width` property of `someResolution`, and returns its default initial value of `0`.

 You can drill down into subproperties, such as the `width` property in the `resolution` property of a `VideoMode`:
*/
print("The width of someVideoMode is \(someVideoMode.resolution.width)")
// Prints "The width of someVideoMode is 0"
/*:
 You can also use dot syntax to assign a new value to a variable property:
*/
someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")
// Prints "The width of someVideoMode is now 1280"
//: [Memberwise Initializers for Structure Types ->](Memberwise%20Initializers%20for%20Structure%20Types)
