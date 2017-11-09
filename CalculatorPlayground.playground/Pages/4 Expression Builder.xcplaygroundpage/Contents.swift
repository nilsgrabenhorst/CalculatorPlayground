/*:
[Previous](@previous)
# Expression Builder

Too bad our ViewController won't be able to use these functions to create an expression tree.

We need to write an expression builder that takes a sequence of numbers and operators to incrementally build an expression tree. To get the operator precedence right we have to expose the precedence value of an `Expression`:
*/

extension Expression {
	var precedence: Int {
		switch self {
		case .value:
			return Int.max
		case .binary(_, let op, _):
			return op.precedence
		}
	}
}

/*:
We have the building blocks for the expression builder.
What type should we use? `enum`s are not the natural answer here since we
do not want to model discrete things. Two other basic types are _classes_ and
_structs_.

Structs are also surprisingly powerful. Of course they can hold values, but they
can also have methods, computed properties and extensions. Classes support inheritance and have reference semantics.

We don't need inheritance or reference semantics, so let's choose a struct:
*/

struct ExpressionBuilder {
	// TODO: Implement ExpressionBuilder, but leave updateExpression blank for now.
}
/*:
The `updateExpression` method is where the action is. We will implement this on the next page.
*/

extension ExpressionBuilder {
	private mutating func updateExpression() {
		// ??? (See next page)
	}
}

//: [Next](@next)


