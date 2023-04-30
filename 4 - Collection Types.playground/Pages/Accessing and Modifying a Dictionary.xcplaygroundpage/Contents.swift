/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Creating a Dictionary with a Dictionary Literal](Creating%20a%20Dictionary%20with%20a%20Dictionary%20Literal)
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
/*:
 ## Accessing and Modifying a Dictionary

 You access and modify a dictionary through its methods and properties, or by using subscript syntax.

 As with an array, you find out the number of items in a `Dictionary` by checking its read-only count property:
*/

print("The airports dictionary contains \(airports.count) items.")
// Prints "The airports dictionary contains 2 items."
/*:
 Use the Boolean `isEmpty` property as a shortcut for checking whether the `count` property is equal to `0`:
*/
if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary isn't empty.")
}
// Prints "The airports dictionary isn't empty."
/*:
 You can add a new item to a dictionary with subscript syntax. Use a new key of the appropriate type as the subscript index, and assign a new value of the appropriate type:
*/
airports["LHR"] = "London"
// the airports dictionary now contains 3 items
/*:
 You can also use subscript syntax to change the value associated with a particular key:
*/
airports["LHR"] = "London Heathrow"
// the value for "LHR" has been changed to "London Heathrow"
/*:
 As an alternative to subscripting, use a dictionary’s `updateValue(_:forKey:)` method to set or update the value for a particular key. Like the subscript examples above, the `updateValue(_:forKey:)` method sets a value for a key if none exists, or updates the value if that key already exists. Unlike a subscript, however, the `updateValue(_:forKey:)` method returns the old value after performing an update. This enables you to check whether or not an update took place.

 The `updateValue(_:forKey:)` method returns an optional value of the dictionary’s value type. For a dictionary that stores `String` values, for example, the method returns a value of type `String?`, or “optional `String`”. This optional value contains the old value for that key if one existed before the update, or `nil` if no value existed:
*/
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}
// Prints "The old value for DUB was Dublin."
/*:
 You can also use subscript syntax to retrieve a value from the dictionary for a particular key. Because it’s possible to request a key for which no value exists, a dictionary’s subscript returns an optional value of the dictionary’s value type. If the dictionary contains a value for the requested key, the subscript returns an optional value containing the existing value for that key. Otherwise, the subscript returns `nil`:
*/
if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport isn't in the airports dictionary.")
}
// Prints "The name of the airport is Dublin Airport."
/*:
 You can use subscript syntax to remove a key-value pair from a dictionary by assigning a value of `nil` for that key:
*/
airports["APL"] = "Apple International"
// "Apple International" isn't the real airport for APL, so delete it
airports["APL"] = nil
// APL has now been removed from the dictionary
/*:
 Alternatively, remove a key-value pair from a dictionary with the `removeValue(forKey:)` method. This method removes the key-value pair if it exists and returns the removed value, or returns `nil` if no value existed:
*/
if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary doesn't contain a value for DUB.")
}
// Prints "The removed airport's name is Dublin Airport."
//: [Iterating Over a Dictionary ->](Iterating%20Over%20a%20Dictionary)
