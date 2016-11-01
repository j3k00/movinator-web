import java.util.*;

public class Movinator {
	
	public final static int OP_INTEGER  = 0;
	public final static int OP_MEMORY   = 1;
	public final static int OP_REGISTER = 2;
	public int stackElements = 0;
	String program = "";
	
	public Movinator(int max) {
		addLine(true, false, "global _start");
		addLine(true, false, "section .data");
		constructData_items(max);
		constructData_items_negative(max);
		constructData_temp();
		addLine(true, false, "section .text");
		addLine(true, false, "_start:");
	}
	
	private void addLine(Boolean newLine, Boolean tab, String... params){
		if (tab) {
			program += "\t";
		}
		
		for (String param: params) {
			program += param;
		}
		
		if (newLine) {
			program += "\n";
		}
	}
	
	private void addLine(String... params){
		addLine(true, true, params);
	}
	
	public String getProgram() {
		return this.program;
	}
	
	public void parseInstruction (
		String ins,
		Operando leftOp,
		Operando rightOp,
		String line
	) {
		System.out.println(ins);
		switch (ins) {
			case "mov":
				addLine("", line.replaceAll("^\\s*", ""));
				break;
			
			case "push":
				addLine(";mvn: ", line);
				push(leftOp);
				break;
			
			case "pop":
				addLine(";mvn: ", line);
				pop(leftOp);
				break;
			
			case "dec":
				addLine(";mvn: ", line);
				dec32(leftOp);
				break;
				
			case "inc":
				addLine(";mvn: ", line);
				inc32(leftOp);
				break;
				
			case "add":
				addLine(";mvn: ", line);
				add32(leftOp, rightOp);
				break;
				
			
			case "sub":
				addLine(";mvn: ", line);
				sub32(leftOp,rightOp);
				break;
				
			case "xor":
				addLine(";mvn: ", line);
				addLine(line);
				/*xor32(
					reg11,
					reg21
				);*/
				break;
				
			default:
				addLine("#mvn ERR", line);
		}
	}
	
	/**
	* This method is used to replace push instruction into mov.
	*
	* @param leftOp		includes all leftOperand
	*
	* @return String This returns the substitute string.
	*/
	
	private void push(Operando leftOp) {
		
		String stackPointer = ((stackElements==0) ? "" : stackElements*4) + "";
		String stackRegister = (stackElements != 0) ? "DWORD [esp + " + stackPointer + "]" : "DWORD [esp]";
		
		String puntatore = leftOp.puntatore; 
		String reg1 = leftOp.registro1;
		String reg2 = leftOp.registro2;
		String scalare1 =  leftOp.scalare1;
		String regSwap = getRegSwap(reg1,reg2,null,null);
		
		if (puntatore == null) {
			
			generateMov(stackRegister,leftOp.toString());
			stackElements++;
			
		} else {
			generateMov("DWORD [temp]", regSwap);
			generateMov(regSwap, leftOp.toString());
			generateMov(stackRegister, regSwap);
			generateMov(regSwap, "DWORD [temp]");
			stackElements++;
		}
		
		addLine(true,true,"");
	}
	
	/**
	* This method is used to replace pop instruction into mov.
	*
    * @param leftOp		includes all leftOperand
	* 
	* @return String This returns the substitute string.
	*/
	
	private void pop(Operando leftOp) {
		stackElements--;
		String stackPointer = ((stackElements==0) ? "" : stackElements*4 ) + "";
		String stackRegister = (stackElements != 0) ? "DWORD [esp + " + stackPointer + "]" : "DWORD [esp]";
		
		String puntatore = leftOp.puntatore; 
		String reg1 = leftOp.registro1;
		String reg2 = leftOp.registro2;
		String regSwap = getRegSwap(reg1,reg2,null,null);
		
		if (stackElements < 0) {
			addLine("ERROR: Pop instruction is invalid: there are no elements in stack");
		} else if(puntatore == null) {
			generateMov(leftOp.toString(),stackRegister); 
		} else {
			generateMov("DWORD [temp]", regSwap);
			generateMov(regSwap,stackRegister); 
			generateMov(leftOp.toString(), regSwap);
			generateMov(regSwap, "DWORD [temp]");
		}
		
		addLine(true,true,"");
	}
	
	/**
	* This method is used to replace inc instruction into mov.
	*
    * @param leftOp		includes all leftOperand
    *
	* @return String This returns the substitute string.
	*/ 
	private void inc32(
		Operando leftOp
	) {
		String reg11 = leftOp.registro1;
		String reg12 = leftOp.registro2;
		String sca11 = leftOp.scalare1;
		
		String regSwap = getRegSwap(reg11,reg12,null,null);
		//inc eax
		
		if (leftOp.typeOperation()== OP_REGISTER) {
			generateMov(reg11, "DWORD [data_items" + " + " + reg11 + "*4 + 516]");
		} else if (leftOp.typeOperation() == OP_MEMORY) {
			generateMov("DWORD [temp]", regSwap);
			generateMov(regSwap, leftOp.toString());
			generateMov(regSwap, "DWORD [data_items" + " + " + regSwap + "*4 + 516]");
			generateMov(regSwap, "DWORD [temp]");
		}
		addLine(true,true,"");
	}
	
	
	/**
	* This method is used to replace dec instruction into mov.
	*
	* @param leftOp		includes all leftOperand
	*
	* @return String This returns the substitute string.
	*/ 
	private void dec32(
		Operando leftOp
	) {
		String reg11 = leftOp.registro1;
		String reg12 = leftOp.registro2;
		String sca11 = leftOp.scalare1;
		String regSwap = getRegSwap(reg11,reg12,null,null);
		// dec eax
		if (leftOp.typeOperation() == OP_REGISTER) {
			generateMov(reg11, "DWORD [data_items" + " + " + reg11 + "*4" + " + 508]");
		} else if (leftOp.typeOperation() == OP_MEMORY) {
			generateMov("DWORD [temp]", regSwap);
			generateMov(regSwap, leftOp.toString());
			generateMov(regSwap, "DWORD [data_items" +" + " + regSwap + "*4 + 508]");
			generateMov(regSwap, "DWORD [temp]");
		}
		addLine(true,true,"");
	}
	
	/**
	* This method is used to replace add instruction into mov.
	* 
	* @param leftOp		includes all leftOperand
	* @param rightOp    includes all rightOperand
	*
	* @return String This returns the substitute string.
	*/
	
	private void add32(
		Operando leftOp,
		Operando rightOp
	) {
		String reg11 = leftOp.registro1;
		String reg12 = leftOp.registro2;
		String sca11 = leftOp.scalare1;
		String reg21 = rightOp.registro1;
		String puntatore = leftOp.puntatore;
		String reg22 = rightOp.registro2;
		String sca21 = rightOp.scalare1;
		String num1 = rightOp.numero;
		String puntatore1 = rightOp.puntatore;
		
		String regSwap = getRegSwap(reg11,reg12,reg21,reg22);
		
		//add registro, intero
		if (
			leftOp.typeOperation() == OP_REGISTER &&
			rightOp.typeOperation() == OP_INTEGER
		){
			String s = Integer.parseInt(num1)*4 + "";
			// utilizzo lo spostamento per andare a sommare direttamente l intero contenuto nella variabile num1
			generateMov(reg11, " DWORD [" + reg11 + "*4 + data_items +" + 512 + "+" + s + "]");
			
		// add registro, registro
		} else if (
			leftOp.typeOperation() == OP_REGISTER &&
			rightOp.typeOperation() == OP_REGISTER
		) {
			generateMov("DWORD [temp]", regSwap);
			generateMov(regSwap,reg21);
			generateMov(reg11, "DWORD [" + reg11 + "*8 + data_items + 512]");
			generateMov(reg11, "DWORD [" + reg11 + "*8 + data_items + 512]");
			generateMov(reg11, "DWORD [" + reg11 + " + " + reg21 +"*4 + data_items + 512]");
			generateMov(regSwap, "DWORD [temp]");
			
		// add memoria, intero add DWORD [eax], 5
		} else if (
			leftOp.typeOperation() == OP_MEMORY &&
			rightOp.typeOperation() == OP_INTEGER
		) {
			generateMov("DWORD [temp]", regSwap);
			String s = Integer.parseInt(num1)*4 + "";
			generateMov(regSwap, rightOp.toString());
			generateMov(regSwap, "DWORD [" + regSwap +"*4 + data_items + 512" + s + "]");
			generateMov(rightOp.toString(), regSwap);
			generateMov(regSwap, "DWORD [temp]");
			
			
		// add memoria, registro
		} else if (
			leftOp.typeOperation() == OP_MEMORY &&
			rightOp.typeOperation() == OP_REGISTER
		) {
			generateMov("DWORD [temp]", regSwap);
			generateMov(regSwap, leftOp.toString());
			generateMov(regSwap, "DWORD [" + regSwap + "*8 + data_items + 512]");
			generateMov(regSwap, "DWORD [" + regSwap + "*8 + data_items + 512]");
			generateMov(regSwap, "DWORD [" + regSwap + " + " + reg21 + "*4 + data_items + 512]");
			generateMov(leftOp.toString(), regSwap);
			generateMov(regSwap, "DWORD [temp]");
			
		// add registro, memoria
		} else if(
			leftOp.typeOperation() == OP_REGISTER &&
			rightOp.typeOperation() == OP_MEMORY
		) {
			generateMov("DWORD [temp]", regSwap);
			generateMov(regSwap, rightOp.toString());
			generateMov(reg11, "DWORD [" + reg11 + "*8 + data_items + 512]");
			generateMov(reg11, "DWORD [" + reg11 + "*8 + data_items + 512]");
			generateMov(reg11, "DWORD [" + reg11 + " + " + regSwap +"*4 + data_items + 512]");
			generateMov(regSwap, "DWORD [temp]");
			
		} else {
			addLine(";Error parse add instruction");
		}
		
		addLine(true,true,"");
	}
	
	
	private void sub32(
		Operando leftOp,
		Operando rightOp
	) {
		String reg11 = leftOp.registro1;
		String reg12 = leftOp.registro2;
		String sca11 = leftOp.scalare1;
		String reg21 = rightOp.registro1;
		String puntatore = leftOp.puntatore;
		String reg22 = rightOp.registro2;
		String sca21 = rightOp.scalare1;
		String num1 = rightOp.numero;
		String puntatore1 = rightOp.puntatore;
		
		String regSwap = getRegSwap(reg11,reg12,reg21,reg22);
		// sub registro intero
		if (
			leftOp.typeOperation() == OP_REGISTER &&
			rightOp.typeOperation() == OP_INTEGER
		) {
			String s = Integer.parseInt(num1)*4 + "";
			// sposto all indietro il puntatore del mio registro
			generateMov(reg11, "DWORD [" + reg11 + "*4 + data_items +" + 512 + "-" + s + "]");
		
		//sub registro, registro
		} else if (
			leftOp.typeOperation() == OP_REGISTER &&
			rightOp.typeOperation() == OP_REGISTER
		) {
			generateMov("DWORD [temp]", regSwap);
			generateMov(regSwap, reg21);
			generateMov(reg11, "DWORD [" + reg11 + "*8 + data_items + 512]");
			generateMov(reg11, "DWORD [" + reg11 + "*8 + data_items + 512]");
			generateMov(regSwap, "DWORD [" + regSwap + "*4 + data_items_negative + 512]");
			generateMov(reg11, "DWORD [" + reg11 + " + " + regSwap + "*4 + data_items + 512]");
			generateMov(regSwap, "DWORD [temp]");
			
		//sub registro, memoria
		} else if (
			leftOp.typeOperation() == OP_REGISTER &&
			rightOp.typeOperation() == OP_MEMORY
		) {
			generateMov("DWORD [temp]", reg21);
			generateMov(reg11, "DWORD [" + reg11 + "*8 + data_items + 512]");
			generateMov(reg11, "DWORD [" + reg11 + "*8 + data_items + 512]");
			generateMov(regSwap, rightOp.toString());
			generateMov(regSwap, "DWORD [" + regSwap + "*4 + data_items_negative + 512]");
			generateMov(reg11, "DWORD [" + reg11 + " + " + regSwap + "*4 + data_items + 512]");
			generateMov(reg21, "DWORD [temp]");
		
		//sub memoria, registro
		} else if(
			leftOp.typeOperation() == OP_MEMORY &&
			rightOp.typeOperation() == OP_REGISTER
		) {
			generateMov("DWORD [temp2]", regSwap);
			generateMov("DWORD [temp]", reg21);
			
			generateMov(regSwap, leftOp.toString());
			
			generateMov(reg21, "DWORD [" + reg21 + "*4 + data_items_negative + 512");
			generateMov(regSwap, "DWORD [" + regSwap + "*8 + data_items + 512]");
			generateMov(regSwap, "DWORD [" + regSwap + "*8 + data_items + 512]");
			
			generateMov(regSwap, "DWORD [" + regSwap + " + " + reg21 + "*4 + data_items + 512 ]");
			generateMov(leftOp.toString() , regSwap);
			
			generateMov(reg21, "DWORD [temp]");
			generateMov(regSwap, "DWORD [temp2]");
			
		//sub memoria, intero
		} else if (
			leftOp.typeOperation() == OP_MEMORY &&
			rightOp.typeOperation() == OP_INTEGER
		) {
			generateMov("DWORD [temp]", regSwap);
			generateMov(regSwap, rightOp.toString());
			String s = Integer.parseInt(num1)*4 + "";
			// sposto all indietro il puntatore del mio registro
			generateMov(regSwap, "DWORD [" + regSwap + "*4 + data_items +" + 512 + "-" + s + "]");
			generateMov(leftOp.toString() , regSwap);
			generateMov(regSwap, "DWORD [temp]");
			
		} else {
			addLine("Errore: parse add instruction");
		}
		
		addLine(true,true,"");
	}
	
	
	/*
	 * Utils Method
	*/
	
	
	/**
	* This method is used to create mov instructions like:
	* movl $4, %eax
	* movl %eax, %ebx
	* movl (%eax), %ebx
	* 
	* or
	* 
	* movl $4, %eax
	* movl %eax, (%eax)
	* ...
	* 
	* @param num1 push $num1
	* 
	* @return String This returns the substitute string.
	*/ 
	private void generateMov(String param1, String param2) {
		addLine("mov\t", param1, ", ", param2);
	}
	
	/**
	* This method is used to generate left side of instruction
	* 
	* @param $num1, $0x0
	* @param sca1 sca1(R, R, S)
	* @param reg1 S(R, reg1, S)
	* @param reg2 S(reg2, R, S)
	* @param sca2 S(R, R, sca2)
	* 
	* @return String This returns the substitute string.
	*/ 
	private String generateLeftParam(
		String num1,
		String sca1,
		String reg1,
		String reg2,
		String sca2
	) {
		String result = "";
		
		if (num1 != null) {
			result = num1;
		} else {
			result = generateParam(
				sca1,
				reg1,
				reg2,
				sca2
			);
		}
		
		return result;
	}
	
	/**
	* This method is used to generate right side of instruction
	* 
	* @param sca1 sca1(R, R, S)
	* @param reg1 S(R, reg1, S)
	* @param reg2 S(reg2, R, S)
	* @param sca2 S(R, R, sca2)
	* 
	* @return String This returns the substitute string.
	*/ 
	private String generateRightParam(
		String sca1,
		String reg1,
		String reg2,
		String sca2
	) {
		String result = "";
		
		result = generateParam(
			sca1,
			reg1,
			reg2,
			sca2
		);
		
		return result;
	} 
	
	/**
	* This method is used to generate combinations about params
	* 
	* @param sca1 add N, sca21(R, R, S)
	* @param reg1 add N, S(R, reg21, S)
	* @param reg2 add N, S(reg22, R, S)
	* @param sca2 add N, S(R, R, sca22)
	* 
	* @return String This returns the substitute string.
	*/ 
	private String generateParam(
		String sca1,
		String reg1,
		String reg2,
		String sca2
	) {
		String result = "";
		// %esp, (%esp)
		if (
			sca1 == null && 
			sca2 == null && 
			reg1 != null &&
			reg2 == null 
		) {
			result = "[" + reg1 + "]";
			
		// 4(%esp)
		} else if (
			sca1 != null && 
			sca2 == null && 
			reg1 != null &&
			reg2 == null 
		) {
			result = sca1 + "[" + reg1 + "]";
			
		// (, %esp, 4)
		} else if (
			sca1 == null &&
			sca2 != null &&
			reg1 != null &&
			reg2 == null
		) {
			result = "[" + reg1 + "+ " + sca2 + "]";
			
		// 4(, %esp, 4)
		} else if (
			sca1 != null && 
			sca2 != null && 
			reg1 != null &&
			reg2 == null 
		) {
			result = "[ " + reg1 + "+ "+ sca1 + "+ " + sca2 + "]";
			
		// (%esp, %esi, 4)
		} else if (
			sca1 == null && 
			sca2 != null && 
			reg1 != null &&
			reg2 != null 
		) {
			result = "[" + reg2 + "+ " + reg1 + "+ " + sca2 + "]";
			
		// 4(%esp, %esi, 4)
		} else if (
			sca1 != null && 
			sca2 != null && 
			reg1 != null &&
			reg2 != null 
		) {
			result = "[" + reg2 + "+ " + reg1 + "+" + sca1 + "+ " + sca2 + "]";
			
		} else {
			result = "ERROR FUNCTION: generateParam";
		}
		
		return result;
	}
	
	private void xor32(
		String reg11,
		String reg21
	) {
		
		String regSwap1 = "";
		String regSwap2 = "";
		
		generateMov(regSwap1, reg11);
		generateMov(regSwap2, reg21);
		
		generateMov(reg11 , "[ numbers + 512 +" + regSwap1 + "*8 ]");
		generateMov(reg11 , "[ numbers + 512 +" + regSwap1 + "*8 ]");
		
		generateMov(reg21 , "[ numbers + 512 +" + regSwap2 + "*8 ]");
		generateMov(reg21 , "[ numbers + 512 +" + regSwap2 + "*8 ]");
		
		generateMov("[ numbers + 512 +" + regSwap1 + " ]", "0");
		generateMov("[ numbers + 512 +" + regSwap2 + " ]", "1");
		
		generateMov("esi", "[ numbers + 512 + " + regSwap1 + " ]");
		
		generateMov("[ numbers + 512 + " + regSwap1 + " ]" , reg11);
		generateMov("[ numbers + 51 2 + " + regSwap2 + " ]" , reg21);
		
	}
	
	/**
	* This method is used to create an array with
	* as many elements as specified in input
	* 
	* @param max the max namber of the array"s elements
	* 
	* @return String This returns the assembly initialization of array.
	*/
	
	private void constructData_items(int max) {
		addLine(false, false,"data_items DD ");
		
		int numMax = max/2;
		
		for (int i = -numMax; i < numMax; i ++) {
			addLine(false, false, " " + i + ((i < numMax-1) ? "," : ""));
		}
		
		addLine(true, false, "");
	}
	
	private void constructData_items_negative(int max) {
		addLine(false, false,"data_items_negative DD ");
		
		int numMax = max/2;
		
		for (int i = -numMax; i < numMax; i ++) {
			int num = (i > 0) ? -i : -i;
			addLine(false, false, " " + num + ((i < numMax-1) ? "," : ""));
		}
		
		addLine(true, false, "");
	}
	
	private void constructData_temp() {
		addLine(true, false,"temp DD 0");
		addLine(true, false,"temp2 DD 0");
	}
	
	private Boolean isMemoryAddress(String s){
		if (s.indexOf("(") < 0) {
			return false;
		}
		
		return true;
	}
	
	private String getRegSwap(String reg1, String reg2, String reg3, String reg4) {
		List<String> s = Arrays.asList(reg1, reg2, reg3, reg4);
		
		if (!(s.contains("eax"))) {
			return "eax";
		} else if (!(s.contains("ebx"))) {
			return "ebx";
		} else if (!(s.contains("ecx"))) {
			return "ecx";
		}
		
		return "edx";
	}
}
