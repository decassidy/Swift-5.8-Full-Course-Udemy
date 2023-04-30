/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Overriding a Failable Initializer](Overriding%20a%20Failable%20Initializer)
/*:
 ## The init! Failable Initializer
 
 You typically define a failable initializer that creates an optional instance of the appropriate type by placing a question mark after the `init` keyword (`init?`). Alternatively, you can define a failable initializer that creates an implicitly unwrapped optional instance of the appropriate type. Do this by placing an exclamation point after the `init` keyword (`init!`) instead of a question mark.

 You can delegate from `init?` to `init!` and vice versa, and you can override `init?` with `init!` and vice versa. You can also delegate from `init` to `init!`, although doing so will trigger an assertion if the init! initializer causes initialization to fail.
*/
//: [Required Initializers](Required%20Initializers)
