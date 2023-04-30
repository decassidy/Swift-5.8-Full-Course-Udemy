/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Creating an Array with a Default Value](Creating%20an%20Array%20with%20a%20Default%20Value)
/*:
 ## Creating an Array with an Array Literal

 You can also initialize an array with an *array literal*, which is a shorthand way to write one or more values as an array collection. An array literal is written as a list of values, separated by commas, surrounded by a pair of square brackets:
 
 ````
 [<#value 1#>, <#value 2#>, <#value 3#>]
 ````
*/
//: The example below creates an array called `shoppingList` to store `String` values:
var shoppingList: [String] = ["Eggs", "Milk"]
// shoppingList has been initialized with two initial items
/*:
 - Note: The `shoppingList` array is declared as a variable (with the `var` introducer) and not a constant (with the `let` introducer) because more items are added to the shopping list in the examples below.
*/
/*:
 In this case, the array literal contains two `String` values and nothing else. This matches the type of the `shoppingList` variable’s declaration (an array that can only contain `String` values), and so the assignment of the array literal is permitted as a way to initialize shoppingList with two initial items.

 Thanks to Swift’s type inference, you don’t have to write the type of the array if you’re initializing it with an array literal containing values of the same type. The initialization of `shoppingList` could have been written in a shorter form instead:
*/
//var shoppingList = ["Eggs", "Milk"]
/*:
 Because all values in the array literal are of the same type, Swift can infer that `[String]` is the correct type to use for the `shoppingList` variable.
*/
//: [Accessing and Modifying an Array ->](Accessing%20and%20Modifying%20an%20Array)
