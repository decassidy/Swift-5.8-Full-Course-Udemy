/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Function Argument Labels and Parameter Names](Function%20Argument%20Labels%20and%20Parameter%20Names)
/*:
 ## Specifying Argument Labels

 You write an argument label before the parameter name, separated by a space:
*/
func someFunction(argumentLabel parameterName: Int) {
    // In the function body, parameterName refers to the argument value
    // for that parameter.
}
/*:
 Here’s a variation of the `greet(person:)` function that takes a person’s name and hometown and returns a greeting:
*/
func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))
// Prints "Hello Bill!  Glad you could visit from Cupertino."
/*:
 The use of argument labels can allow a function to be called in an expressive, sentence-like manner, while still providing a function body that’s readable and clear in intent.
*/
//: [Omitting Argument Labels ->](Omitting%20Argument%20Labels)
