/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Functions Without Return Values](Functions%20Without%20Return%20Values)
/*:
 ## Functions with Multiple Return Values

 You can use a tuple type as the return type for a function to return multiple values as part of one compound return value.

 The example below defines a function called `minMax(array:)`, which finds the smallest and largest numbers in an array of `Int` values:
*/
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
/*:
 The `minMax(array:)` function returns a tuple containing two `Int` values. These values are labeled `min` and `max` so that they can be accessed by name when querying the function’s return value.

 The body of the `minMax(array:)` function starts by setting two working variables called `currentMin` and `currentMax` to the value of the first integer in the array. The function then iterates over the remaining values in the array and checks each value to see if it’s smaller or larger than the values of `currentMin` and `currentMax` respectively. Finally, the overall minimum and maximum values are returned as a tuple of two Int values.

 Because the tuple’s member values are named as part of the function’s return type, they can be accessed with dot syntax to retrieve the minimum and maximum found values:
*/
let bounds = minMax(array: [8, -6, 2, 109, 3, 71])!
print("min is \((bounds.min)) and max is \((bounds.max))")
// Prints "min is -6 and max is 109"
/*:
 Note that the tuple’s members don’t need to be named at the point that the tuple is returned from the function, because their names are already specified as part of the function’s return type.
*/
/*:
 ## Optional Tuple Return Types

 If the tuple type to be returned from a function has the potential to have “no value” for the entire tuple, you can use an *optional* tuple return type to reflect the fact that the entire tuple can be `nil`. You write an optional tuple return type by placing a question mark after the tuple type’s closing parenthesis, such as `(Int, Int)?` or `(String, Int, Bool)?`.
*/
/*:
 - Note: An optional tuple type such as `(Int, Int)?` is different from a tuple that contains optional types such as `(Int?, Int?)`. With an optional tuple type, the entire tuple is optional, not just each individual value within the tuple.
*/
/*:
 The `minMax(array:)` function above returns a tuple containing two `Int` values. However, the function doesn’t perform any safety checks on the array it’s passed. If the array argument contains an empty array, the `minMax(array:)` function, as defined above, will trigger a runtime error when attempting to access `array[0]`.

 To handle an empty array safely, write the `minMax(array:)` function with an optional tuple return type and return a value of `nil` when the array is empty:
*/
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
/*:
 You can use optional binding to check whether this version of the `minMax(array:)` function returns an actual tuple value or `nil`:
*/
if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}
// Prints "min is -6 and max is 109"
//: [Functions With an Implicit Return ->](Functions%20With%20an%20Implicit%20Return)
