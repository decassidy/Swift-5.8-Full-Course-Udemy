/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Constants and Variables](Constants%20and%20Variables)
/*:
 ## Declaring Constants and Variables
 
 Constants and variables must be declared before they’re used. You declare constants with the `let` keyword and variables with the `var` keyword. Here’s an example of how constants and variables can be used to track the number of login attempts a user has made:
 */
/*:
 - Callout(Example:): *Here’s an example of how constants and variables can be used to track the number of login attempts a user has made:*\
 \
 `let maximumNumberOfLoginAttempts = 10`\
 `var currentLoginAttempt = 0`
*/
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0
/*:
 This code can be read as:

 “Declare a new constant called `maximumNumberOfLoginAttempts`, and give it a value of `10`. Then, declare a new variable called `currentLoginAttempt`, and give it an initial value of `0`.”

 In this example, the maximum number of allowed login attempts is declared as a constant, because the maximum value never changes. The current login attempt counter is declared as a variable, because this value must be incremented after each failed login attempt.
*/
/*:
 - Callout(Example:): *You can declare multiple constants or multiple variables on a single line, separated by commas:*\
 \
 `var x = 0.0, y = 0.0, z = 0.0`
*/
var x = 0.0, y = 0.0, z = 0.0
/*:
 - Important: \
If a stored value in your code won’t change, always declare it as a constant with the `let` keyword.
\
Use variables only for storing values that need to be able to change.
*/
//: [Type Annotations ->](Type%20Annotations)
