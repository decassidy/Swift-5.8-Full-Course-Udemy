/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Parameter Names and Argument Labels](Parameter%20Names%20and%20Argument%20Labels)
/*:
 ## Initializer Parameters Without Argument Labels
 
 If you don’t want to use an argument label for an initializer parameter, write an underscore (`_`) instead of an explicit argument label for that parameter to override the default behavior.

 Here’s an expanded version of the `Celsius` example from the previous lesson, [Initialization Parameters](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/initialization/#Initialization-Parameters), with an additional initializer to create a new `Celsius` instance from a `Double` value that’s already in the `Celsius` scale:
*/
struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    init(_ celsius: Double) {
        temperatureInCelsius = celsius
    }
}
let bodyTemperature = Celsius(37.0)
// bodyTemperature.temperatureInCelsius is 37.0
/*:
 The initializer call `Celsius(37.0)` is clear in its intent without the need for an argument label. It’s therefore appropriate to write this initializer as `init(_ celsius: Double)` so that it can be called by providing an unnamed `Double` value.
*/
//: [Optional Property Types](Optional%20Property%20Types)
