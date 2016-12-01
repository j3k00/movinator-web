import re
class operando:
	
	def __init__(self,operand):
		self.reg1 = None
		self.num1 = None
		self.reg2 = None
		self.puntatore = None
		self.scalare = None
		self.splitOperand(operand)

	def splitOperand(self,operand):
		if operand.isdigit():
			operando.num1 = operand
		else:
			instructionMatch = '(?:(?P<puntatore>\w*)\s*\[(?:(?P<reg1a>\w*)[+]?(?P<reg2>\w*)?(?P<scalare>[+]?[-]?\d*))\])|(?P<reg1>\w*)'
			op = re.match(instructionMatch, operand)
			self.puntatore = op.group('puntatore')
			self.scalare = op.group('scalare')
			self.reg1 = op.group('reg1') if op.group('reg1') else op.group('reg1a')
			self.reg2 = op.group('reg2')
	
	def toString(self):
		if self.num1 is not None:
			return self.num1
		elif self.num1 is None and self.reg1 is not None and self.reg2 is None and self.puntatore is None and self.scalare is None:
			return self.reg1
		elif self.num1 is None and self.reg1 is not None and self.reg2 is None and self.puntatore is not None and self.scalare is None:
			return self.puntatore + '[' + self.reg1 + ']'
		elif self.num1 is None and self.reg1 is not None and self.reg2 is not None and self.puntatore is not None and self.scalare is None:
			return self.puntatore + '[' + self.reg1 + ' + ' + self.reg2 + ']'
		elif self.num1 is None and self.reg1 is not None and self.reg2 is not  None and self.puntatore is not None and self.scalare is not None:
			return self.puntatore + '[' + self.reg1 + ' + ' + self.reg2 + self.scalare + ']'
		else:
			return ''