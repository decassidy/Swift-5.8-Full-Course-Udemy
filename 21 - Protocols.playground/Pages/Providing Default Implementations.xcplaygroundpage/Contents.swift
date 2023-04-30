protocol TextRepresentable {
    var textualDescription: String { get }
}
protocol PrettyTextRepresentable: TextRepresentable {
    var prettyTextualDescription: String { get }
}
/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Protocol Extensions](Protocol%20Extensions)
/*:
 ## Providing Default Implementations
 
 You can use protocol extensions to provide a default implementation to any method or computed property requirement of that protocol. If a conforming type provides its own implementation of a required method or property, that implementation will be used instead of the one provided by the extension.
*/
/*:
 - Note:Protocol requirements with default implementations provided by extensions are distinct from optional protocol requirements. Although conforming types don’t have to provide their own implementation of either, requirements with default implementations can be called without optional chaining.
*/
/*:
 For example, the `PrettyTextRepresentable` protocol, which inherits the `TextRepresentable` protocol can provide a default implementation of its required `prettyTextualDescription` property to simply return the result of accessing the `textualDescription` property:
*/
 extension PrettyTextRepresentable  {
     var prettyTextualDescription: String {
         return textualDescription
     }
 }
//: [Adding Constraints to Protocol Extensions](Adding%20Constraints%20to%20Protocol%20Extensions)
