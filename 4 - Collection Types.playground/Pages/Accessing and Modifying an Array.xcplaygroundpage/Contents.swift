/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Creating an Array with an Array Literal](Creating%20an%20Array%20with%20an%20Array%20Literal)
/*:
 ## Accessing and Modifying an Array

 You access and modify an array through its methods and properties, or by using subscript syntax.

 To find out the number of items in an array, check its read-only count property:
*/
var shoppingList = ["Eggs", "Milk"]

print("The shopping list contains \(shoppingList.count) items.")
// Prints "The shopping list contains 2 items."
/*:
 Use the Boolean `isEmpty` property as a shortcut for checking whether the count property is equal to `0`:
*/
if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list isn't empty.")
}
// Prints "The shopping list isn't empty."
/*:
 You can add a new item to the end of an array by calling the array’s `append(_:)` method:
*/
shoppingList.append("Flour")
// shoppingList now contains 3 items, and someone is making pancakes
/*:
 Alternatively, append an array of one or more compatible items with the addition assignment operator `(+=)`:
*/
shoppingList += ["Baking Powder"]
// shoppingList now contains 4 items
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
// shoppingList now contains 7 items
/*:
 Retrieve a value from the array by using *subscript syntax*, passing the index of the value you want to retrieve within square brackets immediately after the name of the array:
*/
var firstItem = shoppingList[0]
// firstItem is equal to "Eggs"
/*:
 - Note: The first item in the array has an index of `0`, not `1`. Arrays in Swift are always zero-indexed.
*/
//: You can use subscript syntax to change an existing value at a given index:
shoppingList[0] = "Six eggs"
// the first item in the list is now equal to `"Six eggs"` rather than `"Eggs"`
/*:
 When you use subscript syntax, the index you specify needs to be valid. For example, writing `shoppingList[shoppingList.count] = "Salt"` to try to append an item to the end of the array results in a runtime error.

 You can also use subscript syntax to change a range of values at once, even if the replacement set of values has a different length than the range you are replacing. The following example replaces `"Chocolate Spread"`, `"Cheese"`, and `"Butter"` with `"Bananas"` and `"Apples"`:
*/
shoppingList[4...6] = ["Bananas", "Apples"]
// shoppingList now contains 6 items
/*:
 To insert an item into the array at a specified index, call the array’s `insert(_:at:)` method:
*/
shoppingList.insert("Maple Syrup", at: 0)
// shoppingList now contains 7 items
// "Maple Syrup" is now the first item in the list
/*:
 This call to the `insert(_:at:)` method inserts a new item with a value of `"Maple Syrup"` at the very beginning of the shopping list, indicated by an index of `0`.

 Similarly, you remove an item from the array with the `remove(at:)` method. This method removes the item at the specified index and returns the removed item (although you can ignore the returned value if you don’t need it):
*/
let mapleSyrup = shoppingList.remove(at: 0)
// the item that was at index 0 has just been removed
// shoppingList now contains 6 items, and no Maple Syrup
// the mapleSyrup constant is now equal to the removed "Maple Syrup" string
/*:
 - Note: If you try to access or modify a value for an index that’s outside of an array’s existing bounds, you will trigger a runtime error. You can check that an index is valid before using it by comparing it to the array’s count property. The largest valid index in an array is `count - 1` because arrays are indexed from zero — however, when `count` is `0` (meaning the array is empty), there are no valid indexes.
*/
/*:
 Any gaps in an array are closed when an item is removed, and so the value at index `0` is once again equal to `"Six eggs"`:
*/
firstItem = shoppingList[0]
// firstItem is now equal to "Six eggs"
/*:
 If you want to remove the final item from an array, use the `removeLast()` method rather than the `remove(at:)` method to avoid the need to query the array’s count property. Like the `remove(at:)` method, `removeLast()` returns the removed item:
*/
let apples = shoppingList.removeLast()
// the last item in the array has just been removed
// shoppingList now contains 5 items, and no apples
// the apples constant is now equal to the removed "Apples" string

print(shoppingList)
//: [Iterating Over an Array ->](Iterating%20Over%20an%20Array)
