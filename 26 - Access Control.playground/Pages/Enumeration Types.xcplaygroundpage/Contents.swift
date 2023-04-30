/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Function Types](Function%20Types)
/*:
 ## Enumeration Types
 
 The individual cases of an enumeration automatically receive the same access level as the enumeration they belong to. You can’t specify a different access level for individual enumeration cases.

 In the example below, the `CompassPoint` enumeration has an explicit access level of public. The enumeration cases `north`, `south`, `east`, and `west` therefore also have an access level of public:
*/
 public enum CompassPoint {
     case north
     case south
     case east
     case west
 }
/*:
 ## Raw Values and Associated Values
 
 The types used for any raw values or associated values in an enumeration definition must have an access level at least as high as the enumeration’s access level. For example, you can’t use a private type as the raw-value type of an enumeration with an internal access level.
*/
//: [Nested Types](Nested%20Types)
