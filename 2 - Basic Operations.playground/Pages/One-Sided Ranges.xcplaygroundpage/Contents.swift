/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- Half-Open Range Operator](Half-Open%20Range%20Operator)
/*:
 ## One-Sided Ranges

 The closed range operator has an alternative form for ranges that continue as far as possible in one direction — for example, a range that includes all the elements of an array from index 2 to the end of the array. In these cases, you can omit the value from one side of the range operator. This kind of range is called a one-sided range because the operator has a value on only one side. For example:
*/
let names = ["Anna", "Alex", "Brian", "Jack"]

for name in names[2...] {
    print(name)
}
// Brian
// Jack


for name in names[...2] {
    print(name)
}
// Anna
// Alex
// Brian
/*:
 The half-open range operator also has a one-sided form that’s written with only its final value. Just like when you include a value on both sides, the final value isn’t part of the range. For example:
 */
for name in names[..<2] {
    print(name)
}
// Anna
// Alex
/*:
 One-sided ranges can be used in other contexts, not just in subscripts. You can’t iterate over a one-sided range that omits a first value, because it isn’t clear where iteration should begin. You can iterate over a one-sided range that omits its final value; however, because the range continues indefinitely, make sure you add an explicit end condition for the loop. You can also check whether a one-sided range contains a particular value, as shown in the code below.
*/
let range = ...5
range.contains(7)   // false
range.contains(4)   // true
range.contains(-1)  // true
//: [Logical Operators ->](Logical%20Operators)
