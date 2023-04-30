/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Optional Property Types](Optional%20Property%20Types)
/*:
 ## Assigning Constant Properties During Initialization
 
 You can assign a value to a constant property at any point during initialization, as long as it’s set to a definite value by the time initialization finishes. Once a constant property is assigned a value, it can’t be further modified.
*/
/*:
 - Note: For class instances, a constant property can be modified during initialization only by the class that introduces it. It can’t be modified by a subclass.
*/
/*:
 You can revise the SurveyQuestion example from above to use a constant property rather than a variable property for the text property of the question, to indicate that the question doesn’t change once an instance of SurveyQuestion is created. Even though the text property is now a constant, it can still be set within the class’s initializer:
*/
class SurveyQuestion {
    let text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
let beetsQuestion = SurveyQuestion(text: "How about beets?")
beetsQuestion.ask()
// Prints "How about beets?"
beetsQuestion.response = "I also like beets. (But not with cheese.)"
//: [Default Initializers](Default%20Initializers)
