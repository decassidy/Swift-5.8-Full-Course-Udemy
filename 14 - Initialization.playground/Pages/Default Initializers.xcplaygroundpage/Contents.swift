/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Assigning Constant Properties During Initialization](Assigning%20Constant%20Properties%20During%20Initialization)
/*:
 ## Default Initializers
 
 Swift provides a *default initializer* for any structure or class that provides default values for all of its properties and doesn’t provide at least one initializer itself. The default *initializer* simply creates a new instance with all of its properties set to their default values.

 This example defines a class called `ShoppingListItem`, which encapsulates the name, quantity, and purchase state of an item in a shopping list:
*/
class ShoppingListItem {
    var name: String?
    var quantity = 1
    var purchased = false
}
var item = ShoppingListItem()
/*:
 Because all properties of the `ShoppingListItem` class have default values, and because it’s a base class with no superclass, `ShoppingListItem` automatically gains a default initializer implementation that creates a new instance with all of its properties set to their default values. (The name property is an optional `String` property, and so it automatically receives a default value of `nil`, even though this value isn’t written in the code.) The example above uses the default initializer for the `ShoppingListItem` class to create a new instance of the class with initializer syntax, written as `ShoppingListItem()`, and assigns this new instance to a variable called item.
*/
//: [Memberwise Initializers for Structure Types](Memberwise%20Initializers%20for%20Structure%20Types)
