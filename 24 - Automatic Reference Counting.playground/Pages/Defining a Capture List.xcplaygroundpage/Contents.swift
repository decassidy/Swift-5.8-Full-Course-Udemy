/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Resolving Strong Reference Cycles for Closures](Resolving%20Strong%20Reference%20Cycles%20for%20Closures)
/*:
 ## Defining a Capture List
 
 Each item in a capture list is a pairing of the weak or unowned keyword with a reference to a class instance (such as `self`) or a variable initialized with some value (such as `delegate = self.delegate`). These pairings are written within a pair of square braces, separated by commas.

 Place the capture list before a closure’s parameter list and return type if they’re provided:
*/
/*:
 ````
 lazy var someClosure = {
         [unowned self, weak delegate = self.delegate]
         (index: Int, stringToProcess: String) -> String in
     // closure body goes here
 }
 ````
*/
/*:
 If a closure doesn’t specify a parameter list or return type because they can be inferred from context, place the capture list at the very start of the closure, followed by the in keyword:
*/
/*:
 ````
 lazy var someClosure = {
         [unowned self, weak delegate = self.delegate] in
     // closure body goes here
 }
 ````
*/
//: [Weak and Unowned References](Weak%20and%20Unowned%20References)
