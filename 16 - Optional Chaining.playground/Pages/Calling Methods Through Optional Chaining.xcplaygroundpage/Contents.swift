class Person {
    var residence: Residence?
}

class Residence {
    var rooms: [Room] = []
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
    }
    var address: Address?
}

class Room {
    let name: String
    init(name: String) { self.name = name }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if let buildingNumber = buildingNumber, let street = street {
            return "\(buildingNumber) \(street)"
        } else if buildingName != nil {
            return buildingName
        } else {
            return nil
        }
    }
}
let john = Person()
//let roomCount = john.residence!.numberOfRooms
// this triggers a runtime error
let someAddress = Address()
someAddress.buildingNumber = "29"
someAddress.street = "Acacia Road"
john.residence?.address = someAddress
/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Accessing Properties Through Optional Chaining](Accessing%20Properties%20Through%20Optional%20Chaining)
/*:
 ## Calling Methods Through Optional Chaining
 
 You can use optional chaining to call a method on an optional value, and to check whether that method call is successful. You can do this even if that method doesn’t define a return value.

 The `printNumberOfRooms()` method on the `Residence` class prints the current value of `numberOfRooms`. Here’s how the method looks:
*/
 func printNumberOfRooms() {
//     print("The number of rooms is \(numberOfRooms)")
 }
/*:
 This method doesn’t specify a return type. However, functions and methods with no return type have an implicit return type of Void, as described in [Functions Without Return Values](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions/#Functions-Without-Return-Values). This means that they return a value of `()`, or an empty tuple.

 If you call this method on an optional value with optional chaining, the method’s return type will be `Void?`, not `Void`, because return values are always of an optional type when called through optional chaining. This enables you to use an if statement to check whether it was possible to call the `printNumberOfRooms()` method, even though the method doesn’t itself define a return value. Compare the return value from the `printNumberOfRooms` call against `nil` to see if the method call was successful:
*/
 if john.residence?.printNumberOfRooms() != nil {
     print("It was possible to print the number of rooms.")
 } else {
     print("It was not possible to print the number of rooms.")
 }
 // Prints "It was not possible to print the number of rooms."
/*:
 The same is true if you attempt to set a property through optional chaining. The example above in Accessing Properties Through Optional Chaining attempts to set an address value for john.residence, even though the residence property is nil. Any attempt to set a property through optional chaining returns a value of type Void?, which enables you to compare against nil to see if the property was set successfully:
*/
 if (john.residence?.address = someAddress) != nil {
     print("It was possible to set the address.")
 } else {
     print("It was not possible to set the address.")
 }
 // Prints "It was not possible to set the address."
//: [Accessing Subscripts Through Optional Chaining](Accessing%20Subscripts%20Through%20Optional%20Chaining)
