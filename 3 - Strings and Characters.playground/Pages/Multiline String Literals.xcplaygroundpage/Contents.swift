/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- String Literals](String%20Literals)
/*:
 ## Multiline String Literals

 If you need a string that spans several lines, use a multiline string literal — a sequence of characters surrounded by three double quotation marks:
*/
let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""
/*:
 A multiline string literal includes all of the lines between its opening and closing quotation marks. The string begins on the first line after the opening quotation marks `(""")` and ends on the line before the closing quotation marks, which means that neither of the strings below start or end with a line break:
*/
let singleLineString = "These are the same."
let multilineString = """
These are the same.
"""
/*:
 When your source code includes a line break inside of a multiline string literal, that line break also appears in the string’s value. If you want to use line breaks to make your source code easier to read, but you don’t want the line breaks to be part of the string’s value, write a backslash `(\)` at the end of those lines:
*/
let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""
/*:
 To make a multiline string literal that begins or ends with a line feed, write a blank line as the first or last line. For example:
*/
let lineBreaks = """

This string starts with a line break.
It also ends with a line break.

"""
/*:
 A multiline string can be indented to match the surrounding code. The whitespace before the closing quotation marks `(""")` tells Swift what whitespace to ignore before all of the other lines. However, if you write whitespace at the beginning of a line in addition to what’s before the closing quotation marks, that whitespace *is* included.
*/
//: ![](Multiline.png)
/*:
 In the example above, even though the entire multiline string literal is indented, the first and last lines in the string don’t begin with any whitespace. The middle line has more indentation than the closing quotation marks, so it starts with that extra four-space indentation.
*/
//: [Special Characters in String Literals ->](Special%20Characters%20in%20String%20Literals)
