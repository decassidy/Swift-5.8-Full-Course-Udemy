/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Special Characters in String Literals](Special%20Characters%20in%20String%20Literals)
/*:
 ## Extended String Delimiters

 You can place a string literal within extended delimiters to include special characters in a string without invoking their effect. You place your string within quotation marks `(")` and surround that with number signs `(#)`. For example, printing the string literal `#`"Line 1`\n`Line 2"`#` prints the line feed escape sequence `(\n)` rather than printing the string across two lines.

 If you need the special effects of a character in a string literal, match the number of number signs within the string following the escape character `(\)`. For example, if your string is `#`"Line 1`\n`Line 2"`#` and you want to break the line, you can use `#`"Line 1`\#n`Line 2"`#` instead. Similarly, `###`"Line1`\###n`Line2"`###` also breaks the line.

 String literals created using extended delimiters can also be multiline string literals. You can use extended delimiters to include the text `"""` in a multiline string, overriding the default behavior that ends the literal. For example:
*/
let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """
"""#
//: [Initializing an Empty String ->](Initializing%20an%20Empty%20String)
