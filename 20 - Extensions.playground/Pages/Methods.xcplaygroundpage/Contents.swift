/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Initializers](Initializers)
/*:
 ## Methods
 
 Extensions can add new instance methods and type methods to existing types. The following example adds a new instance method called `repetitions` to the `Int` type:
*/
 extension Int {
     func repetitions(task: () -> Void) {
         for _ in 0..<self {
             task()
         }
     }
 }
/*:
 The `repetitions(task:)` method takes a single argument of type `() -> Void`, which indicates a function that has no parameters and doesn’t return a value.

 After defining this extension, you can call the `repetitions(task:)` method on any integer to perform a task that many number of times:
*/
 3.repetitions {
     print("Hello!")
 }
 // Hello!
 // Hello!
 // Hello!
//: [Mutating Instance Methods](Mutating%20Instance%20Methods)
