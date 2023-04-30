/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Error Handling](Error%20Handling)
/*:
 ## Assertions and Preconditions

 *Assertions* and *preconditions* are checks that happen at runtime. You use them to make sure an essential condition is satisfied before executing any further code. If the Boolean condition in the assertion or precondition evaluates to `true`, code execution continues as usual. If the condition evaluates to `false`, the current state of the program is invalid; code execution ends, and your app is terminated.

 You use assertions and preconditions to express the assumptions you make and the expectations you have while coding, so you can include them as part of your code. Assertions help you find mistakes and incorrect assumptions during development, and preconditions help you detect issues in production.

 In addition to verifying your expectations at runtime, assertions and preconditions also become a useful form of documentation within the code. Unlike the error conditions discussed in [Error Handling](Error%20Handling) above, assertions and preconditions aren’t used for recoverable or expected errors. Because a failed assertion or precondition indicates an invalid program state, there’s no way to catch a failed assertion.

 Using assertions and preconditions isn’t a substitute for designing your code in such a way that invalid conditions are unlikely to arise. However, using them to enforce valid data and state causes your app to terminate more predictably if an invalid state occurs, and helps make the problem easier to debug. Stopping execution as soon as an invalid state is detected also helps limit the damage caused by that invalid state.

 The difference between assertions and preconditions is in when they’re checked: Assertions are checked only in debug builds, but preconditions are checked in both debug and production builds. In production builds, the condition inside an assertion isn’t evaluated. This means you can use as many assertions as you want during your development process, without impacting performance in production.
*/
//: [Debugging with Assertions ->](Debugging%20with%20Assertions)
