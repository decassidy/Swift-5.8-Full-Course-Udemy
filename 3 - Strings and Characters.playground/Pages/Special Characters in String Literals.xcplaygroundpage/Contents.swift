/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- String Literals](String%20Literals)
/*:
 ## Special Characters in String Literals

 String literals can include the following special characters:

 * The escaped special characters `\0` (null character), `\\` (backslash), `\t` (horizontal tab), `\n` (line feed), `\r` (carriage return), `\"` (double quotation mark) and `\'` (single quotation mark)

 * An arbitrary Unicode scalar value, written as `\\u{n}`, where n is a 1–8 digit hexadecimal number (Unicode is discussed in [Unicode](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/stringsandcharacters#Unicode) below)

 The code below shows four examples of these special characters. The `wiseWords` constant contains two escaped double quotation marks. The `dollarSign`, `blackHeart`, and `sparklingHeart` constants demonstrate the Unicode scalar format:
*/
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496
/*:
 Because multiline string literals use three double quotation marks instead of just one, you can include a double quotation mark `(")` inside of a multiline string literal without escaping it. To include the text `"""` in a multiline string, escape at least one of the quotation marks. For example:
*/
/*:
 - Callout(Example:): `let threeDoubleQuotationMarks = """` \
 `// Escaping the first quotation mark \"""` \
 `// Escaping all three quotation marks \"\"\"` \
 `"""`
*/
//: [Extended String Delimiters ->](Extended%20String%20Delimiters)
