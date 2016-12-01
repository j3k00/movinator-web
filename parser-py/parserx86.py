import sys
from operando import operando
'''
this function split the assembly x-86 operation into instruction and body
'''
def splitInstruction(line):
	count = 0
	instr = ''
	body = ''
	for char in line:
		if char == ' ':
			break
		else:
			count = count +1
			instr += char
	#substring from count to length
	body = line[count:]
	return instr, body.strip()

def semantic(line):
	instr,body = splitInstruction(line)
	op1 = ''
	op2 = ''
	if ',' in body:
		arrayOp = body.split(',')
		op1 = operando(arrayOp[0])
		op2 = operando(arrayOp[1].strip())
	else:
		op1 = operando(body)
	
	#dictionary that assign at instruction key its routine
	switcher = {
		'mov': movSemantic(op1,op2),
		'add': addSemantic(op1,op2),
	}
	
	#return routine function
	return switcher.get(instr)

def readFile(file):
	try:
		this = open(file,'r')
		return this
	except:
		print "File doesn't exist"

#Semantic function
def movSemantic(op1,op2):
	return 'mov ' + op1.toString() + ', ' + op2.toString()

def addSemantic(op1,op2):
	return 'add ' #+ op1.reg1 + ',' + op2.reg2
		
if __name__ == "__main__":
	this = readFile(sys.argv[1])
	juice = ''
	for line in this:
		juice += semantic(line) + '\n'
	print juice
