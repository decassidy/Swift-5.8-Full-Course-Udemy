/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Converting Errors to Optional Values](Converting%20Errors%20to%20Optional%20Values)
/*:
 ## Disabling Error Propagation
 
 Sometimes you know a throwing function or method won’t, in fact, throw an error at runtime. On those occasions, you can write `try!` before the expression to disable error propagation and wrap the call in a runtime assertion that no error will be thrown. If an error actually is thrown, you’ll get a runtime error.

 For example, the following code uses a `loadImage(atPath:)` function, which loads the image resource at a given path or throws an error if the image can’t be loaded. In this case, because the image is shipped with the application, no error will be thrown at runtime, so it’s appropriate to disable error propagation.

 ````
 let photo = try! loadImage(atPath: "./Resources/John Appleseed.jpg")
 ````
*/
//: [Specifying Cleanup Actions](Specifying%20Cleanup%20Actions)
