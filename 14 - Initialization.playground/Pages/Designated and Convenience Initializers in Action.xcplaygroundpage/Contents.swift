/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Automatic Initializer Inheritance](Automatic%20Initializer%20Inheritance)
/*:
 ## Designated and Convenience Initializers in Action
 
 The following example shows designated initializers, convenience initializers, and automatic initializer inheritance in action. This example defines a hierarchy of three classes called `Food`, `RecipeIngredient`, and `ShoppingListItem`, and demonstrates how their initializers interact.

 The base class in the hierarchy is called `Food`, which is a simple class to encapsulate the name of a foodstuff. The `Food` class introduces a single `String` property called name and provides two initializers for creating `Food` instances:
*/
class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}
/*:
 The figure below shows the initializer chain for the Food class:
*/
//: ![](classFood.png)
/*:
 Classes don’t have a default memberwise initializer, and so the Food class provides a designated initializer that takes a single argument called name. This initializer can be used to create a new `Food` instance with a specific name:
*/
let namedMeat = Food(name: "Bacon")
// namedMeat's name is "Bacon"
/*:
 The `init(name: String)` initializer from the `Food` class is provided as a *designated* initializer, because it ensures that all stored properties of a new `Food` instance are fully initialized. The `Food` class doesn’t have a superclass, and so the `init(name: String)` initializer doesn’t need to call `super.init()` to complete its initialization.

 The Food class also provides a convenience initializer, `init()`, with no arguments. The `init()` initializer provides a default placeholder name for a new food by delegating across to the Food class’s `init(name: String)` with a name value of `[Unnamed]`:
*/
let mysteryMeat = Food()
// mysteryMeat's name is "[Unnamed]"
/*:
 The second class in the hierarchy is a subclass of `Food` called `RecipeIngredient`. The RecipeIngredient class models an ingredient in a cooking recipe. It introduces an `Int` property called `quantity` (in addition to the name property it inherits from Food) and defines two initializers for creating RecipeIngredient instances:
*/
class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}
/*:
 The figure below shows the initializer chain for the RecipeIngredient class:
*/
//: ![](classFood2.png)
/*:
 The `RecipeIngredient` class has a single designated initializer, `init(name: String, quantity: Int)`, which can be used to populate all of the properties of a new `RecipeIngredient` instance. This initializer starts by assigning the passed quantity argument to the quantity property, which is the only new property introduced by `RecipeIngredient`. After doing so, the initializer delegates up to the `init(name: String)` initializer of the `Food` class. This process satisfies safety check 1 from [Two-Phase Initialization](Two-Phase%20Initialization) above.

 `RecipeIngredient` also defines a convenience initializer, `init(name: String)`, which is used to create a `RecipeIngredient` instance by name alone. This convenience initializer assumes a `quantity` of `1` for any `RecipeIngredient` instance that’s created without an explicit quantity. The definition of this convenience initializer makes `RecipeIngredient` instances quicker and more convenient to create, and avoids code duplication when creating several single-quantity `RecipeIngredient` instances. This convenience initializer simply delegates across to the class’s designated initializer, passing in a `quantity` value of `1`.

 The `init(name: String)` convenience initializer provided by `RecipeIngredient` takes the same parameters as the `init(name: String)` designated initializer from `Food`. Because this convenience initializer overrides a designated initializer from its superclass, it must be marked with the override modifier (as described in [Initializer Inheritance and Overriding](Initializer%20Inheritance%20and%20Overriding)).

 Even though `RecipeIngredient` provides the `init(name: String)` initializer as a convenience initializer, `RecipeIngredient` has nonetheless provided an implementation of all of its superclass’s designated initializers. Therefore, `RecipeIngredient` automatically inherits all of its superclass’s convenience initializers too.

 In this example, the superclass for `RecipeIngredient` is `Food`, which has a single convenience initializer called `init()`. This initializer is therefore inherited by `RecipeIngredient`. The inherited version of `init()` functions in exactly the same way as the `Food` version, except that it delegates to the `RecipeIngredient` version of `init(name: String)` rather than the `Food` version.

 All three of these initializers can be used to create new `RecipeIngredient` instances:
*/
let oneMysteryItem = RecipeIngredient()
let oneBacon = RecipeIngredient(name: "Bacon")
let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)
/*:
 The third and final class in the hierarchy is a subclass of `RecipeIngredient` called `ShoppingListItem`. The `ShoppingListItem` class models a recipe ingredient as it appears in a shopping list.

 Every item in the shopping list starts out as “unpurchased”. To represent this fact, `ShoppingListItem` introduces a Boolean property called purchased, with a default value of `false`. `ShoppingListItem` also adds a computed description property, which provides a textual `description` of a `ShoppingListItem` instance:
*/
class ShoppingListItem: RecipeIngredient {
    var purchased = false
    var description: String {
        var output = "\(quantity) x \(name)"
        output += purchased ? " ✔" : " ✘"
        return output
    }
}
/*:
 - Note:`ShoppingListItem` doesn’t define an initializer to provide an initial value for purchased, because items in a shopping list (as modeled here) always start out unpurchased.
*/
/*:
 Because it provides a default value for all of the properties it introduces and doesn’t define any initializers itself, `ShoppingListItem` automatically inherits all of the designated and convenience initializers from its superclass.

 The figure below shows the overall initializer chain for all three classes:
*/
//: ![](classFood3.png)
/*:
 You can use all three of the inherited initializers to create a new `ShoppingListItem` instance:
*/
var breakfastList = [
    ShoppingListItem(),
    ShoppingListItem(name: "Bacon"),
    ShoppingListItem(name: "Eggs", quantity: 6),
]
breakfastList[0].name = "Orange juice"
breakfastList[0].purchased = true
for item in breakfastList {
    print(item.description)
}
// 1 x Orange juice ✔
// 1 x Bacon ✘
// 6 x Eggs ✘
/*:
 Here, a new array called `breakfastList` is created from an array literal containing three new `ShoppingListItem` instances. The type of the array is inferred to be `[ShoppingListItem]`. After the array is created, the name of the `ShoppingListItem` at the start of the array is changed from "`[Unnamed]`" to "`Orange juice`" and it’s marked as having been purchased. Printing the description of each item in the array shows that their default states have been set as expected.
*/
//: [Failable Initializers](Failable%20Initializers)
