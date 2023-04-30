/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Access Levels for Frameworks](Access%20Levels%20for%20Frameworks)
/*:
 ## Access Levels for Unit Test Targets
 
 When you write an app with a unit test target, the code in your app needs to be made available to that module in order to be tested. By default, only entities marked as open or public are accessible to other modules. However, a unit test target can access any internal entity, if you mark the import declaration for a product module with the `@testable` attribute and compile that product module with testing enabled.
*/
//: [Access Control Syntax](Access%20Control%20Syntax)
