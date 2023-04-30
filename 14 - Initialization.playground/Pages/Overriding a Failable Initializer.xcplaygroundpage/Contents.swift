/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Propagation of Initialization Failure](Propagation%20of%20Initialization%20Failure)
/*:
 ## Overriding a Failable Initializer
 
 You can override a superclass failable initializer in a subclass, just like any other initializer. Alternatively, you can override a superclass failable initializer with a subclass nonfailable initializer. This enables you to define a subclass for which initialization can’t fail, even though initialization of the superclass is allowed to fail.

 Note that if you override a failable superclass initializer with a nonfailable subclass initializer, the only way to delegate up to the superclass initializer is to force-unwrap the result of the failable superclass initializer.
*/
/*:
 - Note:You can override a failable initializer with a nonfailable initializer but not the other way around.
*/
/*:
 The example below defines a class called `Document`. This class models a document that can be initialized with a name property that’s either a nonempty string value or `nil`, but can’t be an empty string:
*/
class Document {
    var name: String?
    // this initializer creates a document with a nil name value
    init() {}
    // this initializer creates a document with a nonempty name value
    init?(name: String) {
        if name.isEmpty { return nil }
        self.name = name
    }
}
/*:
 The next example defines a subclass of `Document` called `AutomaticallyNamedDocument`. The `AutomaticallyNamedDocument` subclass overrides both of the designated initializers introduced by `Document`. These overrides ensure that an `AutomaticallyNamedDocument` instance has an initial name value of "`[Untitled]`" if the instance is initialized without a name, or if an empty string is passed to the `init(name:)` initializer:
*/
class AutomaticallyNamedDocument: Document {
    override init() {
        super.init()
        self.name = "[Untitled]"
    }
    override init(name: String) {
        super.init()
        if name.isEmpty {
            self.name = "[Untitled]"
        } else {
            self.name = name
        }
    }
}
/*:
 The `AutomaticallyNamedDocument` overrides its superclass’s failable `init?(name:)` initializer with a nonfailable `init(name:)` initializer. Because `AutomaticallyNamedDocument` copes with the empty string case in a different way than its superclass, its initializer doesn’t need to fail, and so it provides a nonfailable version of the initializer instead.

 You can use forced unwrapping in an initializer to call a failable initializer from the superclass as part of the implementation of a subclass’s nonfailable initializer. For example, the `UntitledDocument` subclass below is always named "`[Untitled]`", and it uses the failable `init(name:)` initializer from its superclass during initialization.
*/
class UntitledDocument: Document {
    override init() {
        super.init(name: "[Untitled]")!
    }
}
/*:
 In this case, if the `init(name:)` initializer of the superclass were ever called with an empty string as the name, the forced unwrapping operation would result in a runtime error. However, because it’s called with a string constant, you can see that the initializer won’t fail, so no runtime error can occur in this case.
*/
//: [The init! Failable Initializer](The%20init!%20Failable%20Initializer)
