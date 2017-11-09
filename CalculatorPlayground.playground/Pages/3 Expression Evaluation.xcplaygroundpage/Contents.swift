/*:
[Previous](@previous)
# Expression Evaluation

I added a few simple functions in the Expression+DSL.swift file in the sources folder of this page. Now you can write expression trees like a boss:
*/

let exp: Expression = 2 + 3 * 5 - 4 / 2
print(exp)

/*:
There's also an extension for pretty printing the expression tree. Check the output on the console.

Since it would be nice to be able to evaluate the expression tree we add an extension with an evaluation method:
*/

// TODO: Add an `evaluate` method to `Expression`


//let result = exp.evaluate()
//print("                        Result: \(result)")
//
//print(e)
//: [Next](@next)
