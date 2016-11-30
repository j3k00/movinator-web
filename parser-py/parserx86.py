import sys

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
	switcher = {
		'mov': movSemantic(body),
		'add': addSemantic(body),
	}
	return switcher.get(instr)

def readFile(file):
	try:
		this = open(file,'r')
		return this
	except:
		print "File doesn't exist"

#Semantic function
def movSemantic(body):
	return 'mov ' + body

def addSemantic(body):
	return 'add ' + body
		
if __name__ == "__main__":
	this = readFile(sys.argv[1])
	juice = ''
	for line in this:
		juice += semantic(line) + '\n'
	print juice
