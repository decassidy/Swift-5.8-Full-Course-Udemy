enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}
let favoriteSnacks = [
    "Alice": "Chips",
    "Bob": "Licorice",
    "Eve": "Pretzels",
]
func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnacks[person] ?? "Candy Bar"
    try vendingMachine.vend(itemNamed: snackName)
}

struct Item {
    var price: Int
    var count: Int
}

class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    var coinsDeposited = 0

    func vend(itemNamed name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }

        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }

        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }

        coinsDeposited -= item.price

        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem

        print("Dispensing \(name)")
    }
}
/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [Propagating Errors Using Throwing Functions](Propagating%20Errors%20Using%20Throwing%20Functions)
/*:
 ## Handling Errors Using Do-Catch
 
 You use a do-catch statement to handle errors by running a block of code. If an error is thrown by the code in the do clause, it’s matched against the catch clauses to determine which one of them can handle the error.

 Here is the general form of a do-catch statement:

 ````
 do {
     try <#expression#>
     <#statements#>
 } catch <#pattern 1#> {
     <#statements#>
 } catch <#pattern 2#> where <#condition#> {
     <#statements#>
 } catch <#pattern 3#>, <#pattern 4#> where <#condition#> {
     <#statements#>
 } catch {
     <#statements#>
 }
 ````
 
 You write a pattern after catch to indicate what errors that clause can handle. If a catch clause doesn’t have a pattern, the clause matches any error and binds the error to a local constant named error. For more information about pattern matching, see Patterns.

 For example, the following code matches against all three cases of the VendingMachineError enumeration.
*/
 var vendingMachine = VendingMachine()
 vendingMachine.coinsDeposited = 8
 do {
     try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
     print("Success! Yum.")
 } catch VendingMachineError.invalidSelection {
     print("Invalid Selection.")
 } catch VendingMachineError.outOfStock {
     print("Out of Stock.")
 } catch VendingMachineError.insufficientFunds(let coinsNeeded) {
     print("Insufficient funds. Please insert an additional \(coinsNeeded) coins.")
 } catch {
     print("Unexpected error: \(error).")
 }
 // Prints "Insufficient funds. Please insert an additional 2 coins."
/*:
 In the above example, the buyFavoriteSnack(person:vendingMachine:) function is called in a try expression, because it can throw an error. If an error is thrown, execution immediately transfers to the catch clauses, which decide whether to allow propagation to continue. If no pattern is matched, the error gets caught by the final catch clause and is bound to a local error constant. If no error is thrown, the remaining statements in the do statement are executed.

 The catch clauses don’t have to handle every possible error that the code in the do clause can throw. If none of the catch clauses handle the error, the error propagates to the surrounding scope. However, the propagated error must be handled by some surrounding scope. In a nonthrowing function, an enclosing do-catch statement must handle the error. In a throwing function, either an enclosing do-catch statement or the caller must handle the error. If the error propagates to the top-level scope without being handled, you’ll get a runtime error.

 For example, the above example can be written so any error that isn’t a VendingMachineError is instead caught by the calling function:
*/
 func nourish(with item: String) throws {
     do {
         try vendingMachine.vend(itemNamed: item)
     } catch is VendingMachineError {
         print("Couldn't buy that from the vending machine.")
     }
 }

 do {
     try nourish(with: "Beet-Flavored Chips")
 } catch {
     print("Unexpected non-vending-machine-related error: \(error)")
 }
 // Prints "Couldn't buy that from the vending machine."
/*:
 In the nourish(with:) function, if vend(itemNamed:) throws an error that’s one of the cases of the VendingMachineError enumeration, nourish(with:) handles the error by printing a message. Otherwise, nourish(with:) propagates the error to its call site. The error is then caught by the general catch clause.

 Another way to catch several related errors is to list them after catch, separated by commas. For example:
*/
 func eat(item: String) throws {
     do {
         try vendingMachine.vend(itemNamed: item)
     } catch VendingMachineError.invalidSelection, VendingMachineError.insufficientFunds, VendingMachineError.outOfStock {
         print("Invalid selection, out of stock, or not enough money.")
     }
 }
/*:
 The eat(item:) function lists the vending machine errors to catch, and its error text corresponds to the items in that list. If any of the three listed errors are thrown, this catch clause handles them by printing a message. Any other errors are propagated to the surrounding scope, including any vending-machine errors that might be added later.
*/
//: [Converting Errors to Optional Values](Converting%20Errors%20to%20Optional%20Values)
