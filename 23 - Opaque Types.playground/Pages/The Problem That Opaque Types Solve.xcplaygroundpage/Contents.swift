/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Opaque Types](Opaque%20Types)
/*:
 ## The Problem That Opaque Types Solve
 
 For example, suppose you’re writing a module that draws ASCII art shapes. The basic characteristic of an ASCII art shape is a `draw()` function that returns the string representation of that shape, which you can use as the requirement for the `Shape` protocol:
*/
 protocol Shape {
     func draw() -> String
 }

 struct Triangle: Shape {
     var size: Int
     func draw() -> String {
        var result: [String] = []
        for length in 1...size {
            result.append(String(repeating: "*", count: length))
        }
        return result.joined(separator: "\n")
     }
 }
 let smallTriangle = Triangle(size: 3)
 print(smallTriangle.draw())
 // *
 // **
 // ***
/*:
 You could use generics to implement operations like flipping a shape vertically, as shown in the code below. However, there’s an important limitation to this approach: The flipped result exposes the exact generic types that were used to create it.
*/
 struct FlippedShape<T: Shape>: Shape {
     var shape: T
     func draw() -> String {
         let lines = shape.draw().split(separator: "\n")
         return lines.reversed().joined(separator: "\n")
     }
 }
 let flippedTriangle = FlippedShape(shape: smallTriangle)
 print(flippedTriangle.draw())
 // ***
 // **
 // *
/*:
 This approach to defining a `JoinedShape<T: Shape, U: Shape>` structure that joins two shapes together vertically, like the code below shows, results in types like `JoinedShape<FlippedShape<Triangle>, Triangle>` from joining a flipped triangle with another triangle.
*/
 struct JoinedShape<T: Shape, U: Shape>: Shape {
     var top: T
     var bottom: U
     func draw() -> String {
        return top.draw() + "\n" + bottom.draw()
     }
 }
 let joinedTriangles = JoinedShape(top: smallTriangle, bottom: flippedTriangle)
 print(joinedTriangles.draw())
 // *
 // **
 // ***
 // ***
 // **
 // *
/*:
 Exposing detailed information about the creation of a shape allows types that aren’t meant to be part of the ASCII art module’s public interface to leak out because of the need to state the full return type. The code inside the module could build up the same shape in a variety of ways, and other code outside the module that uses the shape shouldn’t have to account for the implementation details about the list of transformations. Wrapper types like `JoinedShape` and `FlippedShape` don’t matter to the module’s users, and they shouldn’t be visible. The module’s public interface consists of operations like joining and flipping a shape, and those operations return another Shape value.
*/
//: [Returning an Opaque Type](Returning%20an%20Opaque%20Type)
