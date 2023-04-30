/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Tuples](Tuples)
/*:
 ## Optionals

 You use *optionals* in situations where a value may be absent. An optional represents two possibilities: Either there *is* a value, and you can unwrap the optional to access that value, or there *isn’t* a value at all.
*/
/*:
 - Note: The concept of optionals doesn’t exist in C or Objective-C. The nearest thing in Objective-C is the ability to return `nil` from a method that would otherwise return an object, with `nil` meaning “the absence of a valid object.” However, this only works for objects — it doesn’t work for structures, basic C types, or enumeration values. For these types, Objective-C methods typically return a special value (such as `NSNotFound`) to indicate the absence of a value. This approach assumes that the method’s caller knows there’s a special value to test against and remembers to check for it. Swift’s optionals let you indicate the absence of a value for *any type at all*, without the need for special constants.
*/
/*:
 Here’s an example of how optionals can be used to cope with the absence of a value. Swift’s `Int` type has an initializer which tries to convert a `String` value into an `Int` value. However, not every string can be converted into an integer. The string `"123"` can be converted into the numeric value `123`, but the string `"hello, world"` doesn’t have an obvious numeric value to convert to.

 The example below uses the initializer to try to convert a `String` into an `Int`:
*/
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// convertedNumber is inferred to be of type "Int?", or "optional Int"
/*:
 Because the initializer might fail, it returns an *optional* `Int`, rather than an `Int`. An optional `Int` is written as `Int?`, not `Int`. The question mark indicates that the value it contains is optional, meaning that it might contain some `Int` value, or it might contain *no value at all*. (It can’t contain anything else, such as a `Bool` value or a `String` value. It’s either an `Int`, or it’s nothing at all.)
*/
//: [nil ->](nil)
