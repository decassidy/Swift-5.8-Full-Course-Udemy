/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Access Levels for Single-Target Apps](Access%20Levels%20for%20Single-Target%20Apps)
/*:
 ## Access Levels for Frameworks
 
 When you develop a framework, mark the public-facing interface to that framework as open or public so that it can be viewed and accessed by other modules, such as an app that imports the framework. This public-facing interface is the application programming interface (or API) for the framework.
*/
/*:
 - Note:Any internal implementation details of your framework can still use the default access level of internal, or can be marked as private or file private if you want to hide them from other parts of the framework’s internal code. You need to mark an entity as open or public only if you want it to become part of your framework’s API.
*/
//: [Access Levels for Unit Test Targets](Access%20Levels%20for%20Unit%20Test%20Targets)
