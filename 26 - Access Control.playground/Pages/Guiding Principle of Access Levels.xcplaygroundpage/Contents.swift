/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Access Levels](Access%20Levels)
/*:
 ## Guiding Principle of Access Levels
 
 Access levels in Swift follow an overall guiding principle: *No entity can be defined in terms of another entity that has a lower (more restrictive) access level*.

 For example:

 - A public variable can’t be defined as having an internal, file-private, or private type, because the type might not be available everywhere that the public variable is used.

 - A function can’t have a higher access level than its parameter types and return type, because the function could be used in situations where its constituent types are unavailable to the surrounding code.

 The specific implications of this guiding principle for different aspects of the language are covered in detail below.
*/
//: [Default Access Levels](Default%20Access%20Levels)
