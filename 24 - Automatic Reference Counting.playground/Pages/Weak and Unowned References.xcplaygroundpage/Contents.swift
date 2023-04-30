/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Defining a Capture List](Defining%20a%20Capture%20List)
/*:
 ## Weak and Unowned References
 
 Define a capture in a closure as an unowned reference when the closure and the instance it captures will always refer to each other, and will always be deallocated at the same time.

 Conversely, define a capture as a weak reference when the captured reference may become `nil` at some point in the future. Weak references are always of an optional type, and automatically become `nil` when the instance they reference is deallocated. This enables you to check for their existence within the closure’s body.
*/
/*:
 - Note:If the captured reference will never become `nil`, it should always be captured as an unowned reference, rather than a weak reference.
*/
/*:
 An unowned reference is the appropriate capture method to use to resolve the strong reference cycle in the `HTMLElement` example from [Strong Reference Cycles for Closures](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/automaticreferencecounting/#Strong-Reference-Cycles-for-Closures) above. Here’s how you write the `HTMLElement` class to avoid the cycle:
*/
 class HTMLElement {

     let name: String
     let text: String?

     lazy var asHTML: () -> String = {
             [unowned self] in
         if let text = self.text {
             return "<\(self.name)>\(text)</\(self.name)>"
         } else {
             return "<\(self.name) />"
         }
     }

     init(name: String, text: String? = nil) {
         self.name = name
         self.text = text
     }

     deinit {
         print("\(name) is being deinitialized")
     }

 }
/*:
 This implementation of `HTMLElement` is identical to the previous implementation, apart from the addition of a capture list within the `asHTML` closure. In this case, the capture list is `[unowned self]`, which means “capture self as an unowned reference rather than a strong reference”.

 You can create and print an `HTMLElement` instance as before:
*/
 var paragraph: HTMLElement? = HTMLElement(name: "p", text: "hello, world")
 print(paragraph!.asHTML())
 // Prints "<p>hello, world</p>"
/*:
 Here’s how the references look with the capture list in place:
*/
//: ![](arc11.png)
/*:
 This time, the capture of self by the closure is an unowned reference, and doesn’t keep a strong hold on the HTMLElement instance it has captured. If you set the strong reference from the paragraph variable to nil, the HTMLElement instance is deallocated, as can be seen from the printing of its deinitializer message in the example below:
*/
 paragraph = nil
 // Prints "p is being deinitialized"
/*:
 For more information about capture lists, see [Capture Lists](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/expressions/#Capture-Lists)\.
*/
