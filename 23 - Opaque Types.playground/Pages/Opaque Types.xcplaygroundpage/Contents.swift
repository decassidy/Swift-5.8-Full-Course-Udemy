/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
/*:
 ## Opaque Types
 
 ### Hide implementation details about a value’s type.
 
 A function or method with an opaque return type hides its return value’s type information. Instead of providing a concrete type as the function’s return type, the return value is described in terms of the protocols it supports. Hiding type information is useful at boundaries between a module and code that calls into the module, because the underlying type of the return value can remain private. Unlike returning a value whose type is a protocol type, opaque types preserve type identity — the compiler has access to the type information, but clients of the module don’t.
*/
//: [The Problem That Opaque Types Solve](The%20Problem%20That%20Opaque%20Types%20Solve)
