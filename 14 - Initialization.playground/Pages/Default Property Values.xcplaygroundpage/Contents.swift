/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Initializers](Initializers)
/*:
 ## Default Property Values

 You can set the initial value of a stored property from within an initializer, as shown above. Alternatively, specify a *default property* value as part of the property’s declaration. You specify a default property value by assigning an initial value to the property when it’s defined.
*/
/*:
 - Note: If a property always takes the same initial value, provide a default value rather than setting a value within an initializer. The end result is the same, but the default value ties the property’s initialization more closely to its declaration. It makes for shorter, clearer initializers and enables you to infer the type of the property from its default value. The default value also makes it easier for you to take advantage of default initializers and initializer inheritance, as described later in the course.
*/
/*:
 You can write the Fahrenheit structure from above in a simpler form by providing a default value for its temperature property at the point that the property is declared:
*/
struct Fahrenheit {
    var temperature = 32.0
}
//: [Customizing Initialization ->](Customizing%20Initialization)
