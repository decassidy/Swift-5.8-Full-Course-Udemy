/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Setting Initial Values for Stored Properties](Setting%20Initial%20Values%20for%20Stored%20Properties)
/*:
 ## Initializers

 *Initializers* are called to create a new instance of a particular type. In its simplest form, an initializer is like an instance method with no parameters, written using the `init` keyword:
*/
/*:
  - Example:\
  \
  `init() {`\
   `   // perform some initialization here`\
  `}`
*/
/*:
 The example below defines a new structure called `Fahrenheit` to store temperatures expressed in the Fahrenheit scale. The Fahrenheit structure has one stored property, `temperature`, which is of type `Double`:
*/
struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
}
var f = Fahrenheit()
print("The default temperature is \(f.temperature)° Fahrenheit")
// Prints "The default temperature is 32.0° Fahrenheit"
/*:
 The structure defines a single initializer, `init`, with no parameters, which initializes the stored temperature with a value of `32.0` (the freezing point of water in degrees Fahrenheit).
*/
//: [Default Property Values ->](Default%20Property%20Values)
