/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Initializer Parameters Without Argument Labels](Initializer%20Parameters%20Without%20Argument%20Labels)
/*:
 ## Optional Property Types
 
 If your custom type has a stored property that’s logically allowed to have “no value” — perhaps because its value can’t be set during initialization, or because it’s allowed to have “no value” at some later point — declare the property with an optional type. Properties of *optional* type are automatically initialized with a value of `nil`, indicating that the property is deliberately intended to have “no value yet” during initialization.

 The following example defines a class called `SurveyQuestion`, with an optional `String` property called `response`:
*/
class SurveyQuestion {
    var text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
cheeseQuestion.ask()
// Prints "Do you like cheese?"
cheeseQuestion.response = "Yes, I do like cheese."
/*:
 The response to a survey question can’t be known until it’s asked, and so the response property is declared with a type of `String?`, or “optional `String`”. It’s automatically assigned a default value of `nil`, meaning “no string yet”, when a new instance of `SurveyQuestion` is initialized.
*/
//: [Assigning Constant Properties During Initialization](Assigning%20Constant%20Properties%20During%20Initialization)
