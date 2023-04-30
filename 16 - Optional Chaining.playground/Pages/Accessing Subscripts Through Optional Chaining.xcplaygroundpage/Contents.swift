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
//: [Calling Methods Through Optional Chaining](Calling%20Methods%20Through%20Optional%20Chaining)
/*:
 ## Accessing Subscripts Through Optional Chaining
 
 You can use optional chaining to try to retrieve and set a value from a subscript on an optional value, and to check whether that subscript call is successful.
*/
/*:
 - Note: When you access a subscript on an optional value through optional chaining, you place the question mark before the subscript’s brackets, not after. The optional chaining question mark always follows immediately after the part of the expression that’s optional.
*/
/*:
 The example below tries to retrieve the name of the first room in the rooms array of the john.residence property using the subscript defined on the Residence class. Because john.residence is currently nil, the subscript call fails:
*/
 if let firstRoomName = john.residence?[0].name {
     print("The first room name is \(firstRoomName).")
 } else {
     print("Unable to retrieve the first room name.")
 }
 // Prints "Unable to retrieve the first room name."
/*:
 The optional chaining question mark in this subscript call is placed immediately after john.residence, before the subscript brackets, because john.residence is the optional value on which optional chaining is being attempted.

 Similarly, you can try to set a new value through a subscript with optional chaining:
*/
 john.residence?[0] = Room(name: "Bathroom")
/*:
 This subscript setting attempt also fails, because residence is currently nil.
 
 If you create and assign an actual Residence instance to john.residence, with one or more Room instances in its rooms array, you can use the Residence subscript to access the actual items in the rooms array through optional chaining:
*/
 let johnsHouse = Residence()
 johnsHouse.rooms.append(Room(name: "Living Room"))
 johnsHouse.rooms.append(Room(name: "Kitchen"))
 john.residence = johnsHouse

 if let firstRoomName = john.residence?[0].name {
     print("The first room name is \(firstRoomName).")
 } else {
     print("Unable to retrieve the first room name.")
 }
 // Prints "The first room name is Living Room."
//: [Accessing Subscripts of Optional Type](Accessing%20Subscripts%20of%20Optional%20Type)
