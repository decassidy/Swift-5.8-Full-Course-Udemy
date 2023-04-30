/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Printing Constants and Variables](Printing%20Constants%20and%20Variables)
/*:
 ## Comments
 
 Use comments to include text in your code, as a note or reminder to yourself. Comments are ignored by the Swift compiler when your code is compiled.

 
 Comments in Swift are very similar to comments in C. Single-line comments begin with two forward-slashes (`//`):
 
 - Callout(Example:): `// This is a comment.`
*/
//: ![](single-line-comment.gif)
/*:
 Multiline comments start with a forward-slash followed by an asterisk and end with an asterisk followed by a forward-slash.
*/

/* This is also a comment
but is written over multiple lines. */
/*:
 Unlike multiline comments in C, multiline comments in Swift can be nested inside other multiline comments. You write nested comments by starting a multiline comment block and then starting a second multiline comment within the first block. The second block is then closed, followed by the first block:
*/
/* This is the start of the first multiline comment.
    /* This is the second, nested multiline comment. */
This is the end of the first multiline comment. */
/*:
 Nested multiline comments enable you to comment out large blocks of code quickly and easily, even if the code already contains multiline comments.
*/
//: [Semicolons ->](Semicolons)
