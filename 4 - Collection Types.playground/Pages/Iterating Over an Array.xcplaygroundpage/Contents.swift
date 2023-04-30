/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Accessing and Modifying an Array](Accessing%20and%20Modifying%20an%20Array)
var shoppingList = ["Six eggs", "Milk", "Flour", "Baking Powder", "Bananas"]
/*:
 ## Iterating Over an Array

 You can iterate over the entire set of values in an array with the `for-in` loop:
*/
for listItem in shoppingList {
    print(listItem)
}
// Six eggs
// Milk
// Flour
// Baking Powder
// Bananas
/*:
 If you need the integer index of each item as well as its value, use the `enumerated()` method to iterate over the array instead. For each item in the array, the `enumerated()` method returns a tuple composed of an integer and the item. The integers start at zero and count up by one for each item; if you enumerate over a whole array, these integers match the items’ indices. You can decompose the tuple into temporary constants or variables as part of the iteration:
*/
for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}
// Item 1: Six eggs
// Item 2: Milk
// Item 3: Flour
// Item 4: Baking Powder
// Item 5: Bananas
/*:
 For more about the for-in loop, see [For-In Loops](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow/#For-In-Loops)\.
*/
//: [Sets ->](Sets)
