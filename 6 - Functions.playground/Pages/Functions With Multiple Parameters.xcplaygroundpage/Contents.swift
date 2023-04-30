/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Functions Without Parameters](Functions%20Without%20Parameters)
func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}
/*:
 ## Functions With Multiple Parameters

 Functions can have multiple input parameters, which are written within the function’s parentheses, separated by commas.

 This function takes a person’s name and whether they have already been greeted as input, and returns an appropriate greeting for that person:
*/
func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person, alreadyGreeted: false)
    }
}
print(greet(person: "Tim", alreadyGreeted: true))
// Prints "Hello again, Tim!"
/*:
 You call the `greet(person:alreadyGreeted:)` function by passing it both a `String` argument value labeled person and a `Bool` argument value labeled `alreadyGreeted` in parentheses, separated by commas. Note that this function is distinct from the `greet(person:)` function shown in an earlier section. Although both functions have names that begin with greet, the `greet(person:alreadyGreeted:)` function takes two arguments but the `greet(person:)` function takes only one.
*/
//: [Functions Without Return Values ->](Functions%20Without%20Return%20Values)
