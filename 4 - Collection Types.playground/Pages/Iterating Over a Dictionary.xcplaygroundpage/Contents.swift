/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Accessing and Modifying a Dictionary](Accessing%20and%20Modifying%20a%20Dictionary)
var airports: [String: String] = ["YYZ": "Toronto Pearson", "LHR": "London Heathrow"]
/*:
 ## Iterating Over a Dictionary

 You can iterate over the key-value pairs in a dictionary with a `for-in` loop. Each item in the dictionary is returned as a `(key, value)` tuple, and you can decompose the tuple’s members into temporary constants or variables as part of the iteration:
*/
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}
// LHR: London Heathrow
// YYZ: Toronto Pearson
/*:
 For more about the `for-in` loop, see [For-In Loops](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow/#For-In-Loops)\.

 You can also retrieve an iterable collection of a dictionary’s keys or values by accessing its keys and values properties:
*/
for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}
// Airport code: LHR
// Airport code: YYZ


for airportName in airports.values {
    print("Airport name: \(airportName)")
}
// Airport name: London Heathrow
// Airport name: Toronto Pearson
/*:
 If you need to use a dictionary’s keys or values with an API that takes an `Array` instance, initialize a new array with the `keys` or `values` property:
*/
let airportCodes = [String](airports.keys)
// airportCodes is ["LHR", "YYZ"]


let airportNames = [String](airports.values)
// airportNames is ["London Heathrow", "Toronto Pearson"]
/*:
 Swift’s `Dictionary` type doesn’t have a defined ordering. To iterate over the keys or values of a dictionary in a specific order, use the `sorted()` method on its `keys` or `values` property.
*/
//: [Control Flow ->](Control%20Flow)
