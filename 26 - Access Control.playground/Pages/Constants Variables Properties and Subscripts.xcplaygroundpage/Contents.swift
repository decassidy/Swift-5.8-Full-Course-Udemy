private class SomePrivateClass {                // explicitly private class
    func somePrivateMethod() {}                  // implicitly private class member
}
/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Subclassing](Subclassing)
/*:
 ## Constants, Variables, Properties, and Subscripts
 
 A constant, variable, or property can’t be more public than its type. It’s not valid to write a public property with a private type, for example. Similarly, a subscript can’t be more public than either its index type or return type.

 If a constant, variable, property, or subscript makes use of a private type, the constant, variable, property, or subscript must also be marked as `private`:
*/
 private var privateInstance = SomePrivateClass()
//: [Getters and Setters](Getters%20and%20Setters)
