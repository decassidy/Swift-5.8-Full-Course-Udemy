/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Protocol Conformance](Protocol%20Conformance)
/*:
 ## Extensions
 
 You can extend a class, structure, or enumeration in any access context in which the class, structure, or enumeration is available. Any type members added in an extension have the same default access level as type members declared in the original type being extended. If you extend a public or internal type, any new type members you add have a default access level of internal. If you extend a file-private type, any new type members you add have a default access level of file private. If you extend a private type, any new type members you add have a default access level of private.

 Alternatively, you can mark an extension with an explicit access-level modifier (for example, private) to set a new default access level for all members defined within the extension. This new default can still be overridden within the extension for individual type members.

 You can’t provide an explicit access-level modifier for an extension if you’re using that extension to add protocol conformance. Instead, the protocol’s own access level is used to provide the default access level for each protocol requirement implementation within the extension.
*/
//: [Private Members in Extensions](Private%20Members%20in%20Extensions)
