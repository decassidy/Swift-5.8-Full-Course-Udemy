/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Default Initializers](Default%20Initializers)
/*:
 ## Default Memberwise Initializers for Structure Types
 
 The default memberwise initializer for a structure type is considered private if any of the structure’s stored properties are private. Likewise, if any of the structure’s stored properties are file private, the initializer is file private. Otherwise, the initializer has an access level of internal.

 As with the default initializer above, if you want a public structure type to be initializable with a memberwise initializer when used in another module, you must provide a public memberwise initializer yourself as part of the type’s definition.
*/
//: [Protocols](Protocols)
