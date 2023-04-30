/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Understanding Conflicting Access to Memory](Understanding%20Conflicting%20Access%20to%20Memory)
/*:
 ## Characteristics of Memory Access
 
 There are three characteristics of memory access to consider in the context of conflicting access: whether the access is a read or a write, the duration of the access, and the location in memory being accessed. Specifically, a conflict occurs if you have two accesses that meet all of the following conditions:

 - At least one is a write access or a nonatomic access.

 - They access the same location in memory.

 - Their durations overlap.

 The difference between a read and write access is usually obvious: a write access changes the location in memory, but a read access doesn’t. The location in memory refers to what is being accessed — for example, a variable, constant, or property. The duration of a memory access is either instantaneous or long-term.

 An operation is atomic if it uses only C atomic operations; otherwise it’s nonatomic. For a list of those functions, see the `stdatomic(3)` man page.

 An access is *instantaneous* if it’s not possible for other code to run after that access starts but before it ends. By their nature, two instantaneous accesses can’t happen at the same time. Most memory access is instantaneous. For example, all the read and write accesses in the code listing below are instantaneous:
*/
 func oneMore(than number: Int) -> Int {
     return number + 1
 }

 var myNumber = 1
 myNumber = oneMore(than: myNumber)
 print(myNumber)
 // Prints "2"
/*:
 However, there are several ways to access memory, called *long-term* accesses, that span the execution of other code. The difference between instantaneous access and long-term access is that it’s possible for other code to run after a long-term access starts but before it ends, which is called overlap. A long-term access can overlap with other long-term accesses and instantaneous accesses.

 Overlapping accesses appear primarily in code that uses in-out parameters in functions and methods or mutating methods of a structure. The specific kinds of Swift code that use long-term accesses are discussed in the sections below.
*/
//: [Conflicting Access to In-Out Parameters](Conflicting%20Access%20to%20In-Out%20Parameters)
