/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Structures and Enumerations Are Value Types](Structures%20and%20Enumerations%20Are%20Value%20Types)
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

let hd = Resolution(width: 1920, height: 1080)
/*:
 ## Classes Are Reference Types

 Unlike value types, *reference types* are *not* copied when they’re assigned to a variable or constant, or when they’re passed to a function. Rather than a copy, a reference to the same existing instance is used.

 Here’s an example, using the `VideoMode` class defined above:
*/
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0
/*:
 This example declares a new constant called `tenEighty` and sets it to refer to a new instance of the `VideoMode` class. The video mode is assigned a copy of the HD resolution of `1920` by `1080` from before. It’s set to be interlaced, its name is set to `"1080i"`, and its frame rate is set to `25.0` frames per second.

 Next, `tenEighty` is assigned to a new constant, called `alsoTenEighty`, and the frame rate of `alsoTenEighty` is modified:
*/
let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
/*:
 Because classes are reference types, `tenEighty` and `alsoTenEighty` actually both refer to the same `VideoMode` instance. Effectively, they’re just two different names for the same single instance, as shown in the figure below:
*/
//: ![](before-after2.png)
/*:
 Checking the `frameRate` property of `tenEighty` shows that it correctly reports the new frame rate of `30.0` from the underlying `VideoMode` instance:
*/
print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")
// Prints "The frameRate property of tenEighty is now 30.0"
/*:
 This example also shows how reference types can be harder to reason about. If `tenEighty` and `alsoTenEighty` were far apart in your program’s code, it could be difficult to find all the ways that the video mode is changed. Wherever you use `tenEighty`, you also have to think about the code that uses `alsoTenEighty`, and vice versa. In contrast, value types are easier to reason about because all of the code that interacts with the same value is close together in your source files.

 Note that `tenEighty` and `alsoTenEighty` are declared as *constants*, rather than variables. However, you can still change `tenEighty.frameRate` and `alsoTenEighty.frameRate` because the values of the `tenEighty` and `alsoTenEighty` constants themselves don’t actually change. `tenEighty` and `alsoTenEighty` themselves don’t “store” the `VideoMode` instance — instead, they both refer to a `VideoMode` instance behind the scenes. It’s the `frameRate` property of the underlying `VideoMode` that’s changed, not the values of the constant references to that `VideoMode`.
*/
//: [Identity Operations ->](Identity%20Operations)
