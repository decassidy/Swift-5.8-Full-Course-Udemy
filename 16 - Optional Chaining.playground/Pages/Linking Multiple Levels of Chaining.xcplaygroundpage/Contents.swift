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
//: [Accessing Subscripts of Optional Type](@Accessing%20Subscripts%20of%20Optional%20Type)
/*:
 ## Linking Multiple Levels of Chaining
 
 You can link together multiple levels of optional chaining to drill down to properties, methods, and subscripts deeper within a model. However, multiple levels of optional chaining don’t add more levels of optionality to the returned value.

 To put it another way:

 - If the type you are trying to retrieve isn’t optional, it will become optional because of the optional chaining.

 - If the type you are trying to retrieve is already optional, it will not become more optional because of the chaining.

 Therefore:

 - If you try to retrieve an `Int` value through optional chaining, an `Int?` is always returned, no matter how many levels of chaining are used.

 - Similarly, if you try to retrieve an `Int?` value through optional chaining, an `Int?` is always returned, no matter how many levels of chaining are used.

 The example below tries to access the street property of the address property of the `residence` property of `john`. There are two levels of optional chaining in use here, to chain through the `residence` and `address` properties, both of which are of optional type:
*/
 if let johnsStreet = john.residence?.address?.street {
     print("John's street name is \(johnsStreet).")
 } else {
     print("Unable to retrieve the address.")
 }
 // Prints "Unable to retrieve the address."
/*:
 The value of `john.residence` currently contains a valid `Residence` instance. However, the value of `john.residence.address` is currently `nil`. Because of this, the call to `john.residence?.address?.street` fails.

 Note that in the example above, you are trying to retrieve the value of the street property. The type of this property is `String?`. The return value of `john.residence?.address?.street` is therefore also `String?`, even though two levels of optional chaining are applied in addition to the underlying optional type of the property.

 If you set an actual `Address` instance as the value for `john.residence.address`, and set an actual value for the address’s street property, you can access the value of the street property through multilevel optional chaining:
*/
 let johnsAddress = Address()
 johnsAddress.buildingName = "The Larches"
 johnsAddress.street = "Laurel Street"
 john.residence?.address = johnsAddress

 if let johnsStreet = john.residence?.address?.street {
     print("John's street name is \(johnsStreet).")
 } else {
     print("Unable to retrieve the address.")
 }
 // Prints "John's street name is Laurel Street."
/*:
 In this example, the attempt to set the `address` property of `john.residence` will succeed, because the value of `john.residence` currently contains a valid `Residence` instance.
*/
//: [Chaining on Methods with Optional Return Values](Chaining%20on%20Methods%20with%20Optional%20Return%20Values)
