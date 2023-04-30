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
/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Defining Model Classes for Optional Chaining](Defining%20Model%20Classes%20for%20Optional%20Chaining)
/*:
 ## Accessing Properties Through Optional Chaining
 
 As demonstrated in [Optional Chaining as an Alternative to Forced Unwrapping](Optional%20Chaining%20as%20an%20Alternative%20to%20Forced%20Unwrapping), you can use optional chaining to access a property on an optional value, and to check if that property access is successful.

 Use the classes defined above to create a new `Person` instance, and try to access its `numberOfRooms` property as before:
*/
 let john = Person()
 if let roomCount = john.residence?.numberOfRooms {
     print("John's residence has \(roomCount) room(s).")
 } else {
     print("Unable to retrieve the number of rooms.")
 }
 // Prints "Unable to retrieve the number of rooms."
/*:
 Because `john.residence` is `nil`, this optional chaining call fails in the same way as before.

 You can also attempt to set a property’s value through optional chaining:
*/
 let someAddress = Address()
 someAddress.buildingNumber = "29"
 someAddress.street = "Acacia Road"
 john.residence?.address = someAddress
/*:
 In this example, the attempt to set the address property of `john.residence` will fail, because `john.residence` is currently `nil`.

 The assignment is part of the optional chaining, which means none of the code on the right-hand side of the = operator is evaluated. In the previous example, it’s not easy to see that someAddress is never evaluated, because accessing a constant doesn’t have any side effects. The listing below does the same assignment, but it uses a function to create the address. The function prints “Function was called” before returning a value, which lets you see whether the right-hand side of the = operator was evaluated.
*/
 func createAddress() -> Address {
     print("Function was called.")

     let someAddress = Address()
     someAddress.buildingNumber = "29"
     someAddress.street = "Acacia Road"

     return someAddress
 }
 john.residence?.address = createAddress()
/*:
 You can tell that the `createAddress()` function isn’t called, because nothing is printed.
*/
//: [Calling Methods Through Optional Chaining](Calling%20Methods%20Through%20Optional%20Chaining)
