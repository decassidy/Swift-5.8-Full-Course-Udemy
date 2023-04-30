/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Global and Local Variables](Global%20and%20Local%20Variables)
/*:
 ## Type Properties

 Instance properties are properties that belong to an instance of a particular type. Every time you create a new instance of that type, it has its own set of property values, separate from any other instance.

 You can also define properties that belong to the type itself, not to any one instance of that type. There will only ever be one copy of these properties, no matter how many instances of that type you create. These kinds of properties are called type properties.

 Type properties are useful for defining values that are universal to *all* instances of a particular type, such as a constant property that all instances can use (like a static constant in C), or a variable property that stores a value that’s global to all instances of that type (like a static variable in C).

 Stored type properties can be variables or constants. Computed type properties are always declared as variable properties, in the same way as computed instance properties.
*/
/*:
 - Note: Unlike stored instance properties, you must always give stored type properties a default value. This is because the type itself doesn’t have an initializer that can assign a value to a stored type property at initialization time. Stored type properties are lazily initialized on their first access. They’re guaranteed to be initialized only once, even when accessed by multiple threads simultaneously, and they don’t need to be marked with the `lazy` modifier.
*/
//: [Type Property Syntax ->](Type%20Property%20Syntax)
