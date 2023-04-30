/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Specifying Argument Labels](Specifying%20Argument%20Labels)
/*:
 ## Omitting Argument Labels

 If you don’t want an argument label for a parameter, write an `underscore (_)` instead of an explicit argument label for that parameter.
*/
func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
someFunction(1, secondParameterName: 2)
/*:
 If a parameter has an argument label, the argument must be labeled when you call the function.
*/
//: [Default Parameter Values ->](Default%20Parameter%20Values)
