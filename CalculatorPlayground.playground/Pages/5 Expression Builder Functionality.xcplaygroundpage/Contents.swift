//: [Previous](@previous)

struct ExpressionBuilder {
	
	var expression: Expression?
	var pendingNumber: Double?
	var pendingOperator: BinaryOperator?
	
	mutating func reset() {
		pendingNumber = expression?.evaluate()
		expression = nil
		pendingOperator = nil
	}
	
	mutating func append(_ number: Double) {
		self.pendingNumber = number
		self.updateExpression()
	}
	
	mutating func append(_ op: BinaryOperator) {
		pendingOperator = op
		updateExpression()
	}
}


extension ExpressionBuilder {
	mutating func updateExpression() {
		switch (self.expression, pendingOperator, pendingNumber) {
		
			// TODO: Add all relevant cases!
			
		default:
			assertionFailure("Missing a case? e: \(String(describing: expression)), o: \(String(describing: pendingOperator)), n: \(String(describing: pendingNumber))")
			break
		}
	}
}



var builder = ExpressionBuilder()

//builder.append(2)
//builder.append(.addition)
//builder.append(3)
//builder.append(.multiplication)
//builder.append(5)

if let e = builder.expression {
	print(e)
} else {
	print("nil")
}


//: [Next](@next)
