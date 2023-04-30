/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
/*:
 # Initialization
 ### Set the initial values for a type’s stored properties and perform one-time setup.
*/
/*:
 *Initialization* is the process of preparing an instance of a class, structure, or enumeration for use. This process involves setting an initial value for each stored property on that instance and performing any other setup or initialization that’s required before the new instance is ready for use.

 You implement this initialization process by defining *initializers*, which are like special methods that can be called to create a new instance of a particular type. Unlike Objective-C initializers, Swift initializers don’t return a value. Their primary role is to ensure that new instances of a type are correctly initialized before they’re used for the first time.

 Instances of class types can also implement a *deinitializer*, which performs any custom cleanup just before an instance of that class is deallocated. For more information about deinitializers, see [Deinitialization](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/deinitialization/)\.
*/
//: [Setting Initial Values for Stored Properties ->](Setting%20Initial%20Values%20for%20Stored%20Properties)
