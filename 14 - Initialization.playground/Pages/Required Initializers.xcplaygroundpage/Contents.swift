/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [The init! Failable Initializer](The%20init!%20Failable%20Initializer)
/*:
 ## Required Initializers
 
 Write the required modifier before the definition of a class initializer to indicate that every subclass of the class must implement that initializer:
*/
class SomeClass {
    required init() {
        // initializer implementation goes here
    }
}
/*:
 You must also write the required modifier before every subclass implementation of a required initializer, to indicate that the initializer requirement applies to further subclasses in the chain. You don’t write the `override` modifier when overriding a required designated initializer:
*/
class SomeSubclass: SomeClass {
    required init() {
        // subclass implementation of the required initializer goes here
    }
}
/*:
 - Note:You don’t have to provide an explicit implementation of a required initializer if you can satisfy the requirement with an inherited initializer.
*/
//: [Setting a Default Property Value with a Closure or Function](Setting%20a%20Default%20Property%20Value%20with%20a%20Closure%20or%20Function)
