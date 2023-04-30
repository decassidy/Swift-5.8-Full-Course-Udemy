/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Extending an Existing Type to Specify an Associated Type](Extending%20an%20Existing%20Type%20to%20Specify%20an%20Associated%20Type)
/*:
 ## Adding Constraints to an Associated Type
 
 You can add type constraints to an associated type in a protocol to require that conforming types satisfy those constraints. For example, the following code defines a version of `Container` that requires the items in the container to be equatable.
*/
protocol Container {
    associatedtype Item: Equatable
    mutating func append(_ item: Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }
}
/*:
 To conform to this version of `Container`, the container’s Item type has to conform to the `Equatable` protocol.
*/
//: [Using a Protocol in Its Associated Type’s Constraints](Using%20a%20Protocol%20in%20Its%20Associated%20Types%20Constraints)
