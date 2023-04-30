/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Handling Errors Using Do-Catch](Handling%20Errors%20Using%20Do-Catch)
/*:
 ## Converting Errors to Optional Values
 
 You use `try?` to handle an error by converting it to an optional value. If an error is thrown while evaluating the `try?` expression, the value of the expression is `nil`. For example, in the following code `x` and `y` have the same value and behavior:
*/
/*:
 ````
 func someThrowingFunction() throws -> Int {
     // ...
 }

 let x = try? someThrowingFunction()

 let y: Int?
 do {
     y = try someThrowingFunction()
 } catch {
     y = nil
 }
 ````
*/
/*:
 If `someThrowingFunction()` throws an error, the value of `x` and `y` is `nil`. Otherwise, the value of `x` and `y` is the value that the function returned. Note that `x` and `y` are an optional of whatever type `someThrowingFunction()` returns. Here the function returns an integer, so `x` and `y` are optional integers.

 Using `try?` lets you write concise error handling code when you want to handle all errors in the same way. For example, the following code uses several approaches to fetch data, or returns `nil` if all of the approaches fail.
*/
/*:
 ````
 func fetchData() -> Data? {
     if let data = try? fetchDataFromDisk() { return data }
     if let data = try? fetchDataFromServer() { return data }
     return nil
 }
 ````
*/
//: [Disabling Error Propagation](Disabling%20Error%20Propagation)
