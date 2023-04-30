/*:
 ### Swift 5.8 Full Course
 Instructor: Derrick Cassidy
*/
//: [<- While Loops](While%20Loops)
/*:
 ## While

 A `while` loop starts by evaluating a single condition. If the condition is `true`, a set of statements is repeated until the condition becomes `false`.

 Here’s the general form of a while loop:
 
 ````
 while <#condition#> {
    <#statements#>
 }
 ````
*/
/*:
 This example plays a simple game of *Snakes and Ladders* (also known as *Chutes and Ladders*):
*/
//: ![](ladders.png)
/*:
 The rules of the game are as follows:

 * The board has 25 squares, and the aim is to land on or beyond square 25.

 * The player’s starting square is “square zero”, which is just off the bottom-left corner of the board.

 * Each turn, you roll a six-sided dice and move by that number of squares, following the horizontal path indicated by the dotted arrow above.

 * If your turn ends at the bottom of a ladder, you move up that ladder.

 * If your turn ends at the head of a snake, you move down that snake.

 The game board is represented by an array of `Int` values. Its size is based on a constant called `finalSquare`, which is used to initialize the array and also to check for a win condition later in the example. Because the players start off the board, on “square zero”, the board is initialized with 26 zero `Int` values, not 25.
*/
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
/*:
 Some squares are then set to have more specific values for the snakes and ladders. Squares with a ladder base have a positive number to move you up the board, whereas squares with a snake head have a negative number to move you back down the board.
*/
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
/*:
 Square `3` contains the bottom of a ladder that moves you up to square `11`. To represent this, `board[03]` is equal to `+08`, which is equivalent to an integer value of `8` (the difference between `3` and `11`). To align the values and statements, the unary plus operator `(+i)` is explicitly used with the unary minus operator `(-i)` and numbers lower than `10` are padded with zeros. (Neither stylistic technique is strictly necessary, but they lead to neater code.)
*/
var square = 0
var diceRoll = 0
while square < finalSquare {
    // roll the dice
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    // move by the rolled amount
    square += diceRoll
    if square < board.count {
        // if we're still on the board, move up or down for a snake or a ladder
        square += board[square]
    }
}
print("Game over!")
/*:
 The example above uses a very simple approach to dice rolling. Instead of generating a random number, it starts with a `diceRoll` value of `0`. Each time through the while loop, `diceRoll` is incremented by one and is then checked to see whether it has become too large. Whenever this return value equals `7`, the dice roll has become too large and is reset to a value of `1`. The result is a sequence of `diceRoll` values that’s always `1, 2, 3, 4, 5, 6, 1, 2` and so on.

 After rolling the dice, the player moves forward by `diceRoll` squares. It’s possible that the dice roll may have moved the player beyond square `25`, in which case the game is over. To cope with this scenario, the code checks that `square` is less than the board array’s count property. If square is valid, the value stored in `board[square]` is added to the current square value to move the player up or down any ladders or snakes.
*/
/*:
 - Note: If this check isn’t performed, `board[square]` might try to access a value outside the bounds of the board array, which would trigger a runtime error.
*/
/*:
 The current while loop execution then ends, and the loop’s condition is checked to see if the loop should be executed again. If the player has moved on or beyond square number 25, the loop’s condition evaluates to false and the game ends.

 A `while` loop is appropriate in this case, because the length of the game isn’t clear at the start of the `while` loop. Instead, the loop is executed until a particular condition is satisfied.
*/
//: [Repeat-While ->](Repeat-While)
