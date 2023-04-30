/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Customizing Initialization](Customizing%20Initialization)
/*:
 ## Initialization Parameters
 
 You can provide *initialization parameters* as part of an initializer’s definition, to define the types and names of values that customize the initialization process. Initialization parameters have the same capabilities and syntax as function and method parameters.

 The following example defines a structure called `Celsius`, which stores temperatures expressed in degrees `Celsius`. The `Celsius` structure implements two custom initializers called `init(fromFahrenheit:)` and `init(fromKelvin:)`, which initialize a new instance of the structure with a value from a different temperature scale:
*/
struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}
let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
// boilingPointOfWater.temperatureInCelsius is 100.0
let freezingPointOfWater = Celsius(fromKelvin: 273.15)
// freezingPointOfWater.temperatureInCelsius is 0.0
/*:
 The first initializer has a single initialization parameter with an argument label of `fromFahrenheit` and a parameter name of `fahrenheit`. The second initializer has a single initialization parameter with an argument label of `fromKelvin` and a parameter name of kelvin. Both initializers convert their single argument into the corresponding `Celsius` value and store this value in a property called `temperatureInCelsius`.
*/
//: [Parameter Names and Argument Labels](Parameter%20Names%20and%20Argument%20Labels)
