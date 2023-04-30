/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Accessing Properties](Accessing%20Properties)
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
/*:
 ## Memberwise Initializers for Structure Types

 All structures have an automatically generated *memberwise initializer*, which you can use to initialize the member properties of new structure instances. Initial values for the properties of the new instance can be passed to the memberwise initializer by name:
*/
 let vga = Resolution(width: 640, height: 480)
/*:
 Unlike structures, class instances don’t receive a default memberwise initializer. Initializers are described in more detail in [Initialization](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/initialization/)\.
 */
//: [Structures and Enumerations Are Value Types ->](Structures%20and%20Enumerations%20Are%20Value%20Types)
