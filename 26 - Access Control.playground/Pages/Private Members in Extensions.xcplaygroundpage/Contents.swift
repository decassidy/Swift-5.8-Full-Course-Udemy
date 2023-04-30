/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Extensions](Extensions)
/*:
 ## Private Members in Extensions
 
 Extensions that are in the same file as the class, structure, or enumeration that they extend behave as if the code in the extension had been written as part of the original type’s declaration. As a result, you can:

 - Declare a private member in the original declaration, and access that member from extensions in the same file.

 - Declare a private member in one extension, and access that member from another extension in the same file.

 - Declare a private member in an extension, and access that member from the original declaration in the same file.

 This behavior means you can use extensions in the same way to organize your code, whether or not your types have private entities. For example, given the following simple protocol:
*/
 protocol SomeProtocol {
     func doSomething()
 }
/*:
 You can use an extension to add protocol conformance, like this:
*/
 struct SomeStruct {
     private var privateVariable = 12
 }

 extension SomeStruct: SomeProtocol {
     func doSomething() {
         print(privateVariable)
     }
 }
//: [Generics](Generics)
