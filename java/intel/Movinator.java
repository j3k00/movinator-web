
public class Movinator {
	
	public int stackElements = 0;
	String program = "";
	
	public Movinator(int max) {
		addLine(true, false, ".section .data");
		constructData_items(max);
		constructData_temp();
		addLine(true, false, ".global _start");
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
			case "movl":
				addLine("", line.replaceAll("^\\s*", ""));
				break;
			
			case "push":
			case "pushl":
				addLine("#mvn: ", line);
				addLine(line);
				/*push(
					num1,  
					sca11, 
					reg12,
					reg11,
					sca12
				);*/
				break;
			
			case "pop":
			case "popl":
				addLine("#mvn: ", line);
				addLine(line);
				/*pop(
					sca11, 
					reg12,
					reg11,
					sca12
				);*/
				break;
			
			case "dec":
				addLine("#mvn: ", line);
				dec32(leftOp);
				break;
				
			case "inc":
			case "incl":
				addLine("#mvn: ", line);
				inc32(leftOp);
				break;
				
			case "add":
			case "addl":
				addLine("#mvn: ", line);
				add32(leftOp, rightOp);
				break;
				
			
			case "sub":
			case "subl":
				addLine("#mvn: ", line);
				sub32(leftOp,rightOp);
				break;
				
			case "xor":
				addLine("#mvn: ", line);
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
	* @param num1 push $num1
	* @param sca11 push sca11(R, R, S)
	* @param reg12 push S(reg12, R, S), push %eax, push (%esp)
	* @param reg11 push S(R, reg11, S)
	* @param sca12 push S(R, reg11, sca12)
	* 
	* @return String This returns the substitute string.
	*/
	/* 
	private void push(
		String num1,
		String sca11,
		String reg12, 
		String reg11
	) {
		String stackRegister = ((stackElements!=0) ? stackElements*4 : "") + "(%esp)";
		
		generateMov(
			generateLeftParam(
				num1,
				sca11,
				reg11,
				reg12,
				sca12
			),
			stackRegister 
		);
		stackElements++;
	}
	*/
	/**
	* This method is used to replace pop instruction into mov.
	* 
	* @param sca11 pop sca11(R, R, S)
	* @param reg12 pop S(reg12, R, S)
	* @param reg11 pop S(R, reg11, S), pop reg11, pop (reg11)
	* @param sca12 pop S(R, reg11, sca12)
	* 
	* @return String This returns the substitute string.
	*/
	/* 
	private void pop(
		String sca11, 
		String reg12,
		String reg11,
	) {
		stackElements--;
		String stackRegister = ((stackElements!=0) ? stackElements*4 : "") + "(%esp)";
		
		
		if (stackElements < 0) {
			addLine("ERROR: Pop instruction is invalid: there are no elements in stack");
			
		} else {
			generateMov(
				generateRightParam(
					sca11,
					reg11,
					reg12,
				),
				stackRegister 
			);
		}
	}
	*/
	/**
	* This method is used to replace inc instruction into mov.
	* 
	* @param reg11 inc %reg11
	* 
	* @return String This returns the substitute string.
	*/ 
	private void inc32(
		Operando leftOp
	) {
		String reg11 = leftOp.registro1;
		String reg12 = leftOp.registro2;
		String sca11 = leftOp.scalare1;
		
		String regSwap = "edx";
		//inc eax
		if (
			reg11 != null &&
			reg12 == null &&
			sca11 == null 
		) {
			generateMov(reg11, "[data_items" + "reg11" + "*4 + 516]");
		} else if (
			reg11 != null &&
			reg12 != null ||
			sca11 != null 
		) {
			//push32(regSwap,null,null);
			generateMov(regSwap, leftOp.toString()); //TODO GENERATE PARAM
			generateMov(regSwap, "[data_items" + " + " + regSwap + "*4 + 516]");
			//pop32(regSwap,null,null);
		}
		addLine(true,true,"");
	}
	
	
	/**
	* This method is used to replace dec instruction into mov.
	* 
	* @param reg11 dec %reg11
	* 
	* @return String This returns the substitute string.
	*/ 
	private void dec32(
		Operando leftOp
	) {
		String reg11 = leftOp.registro1;
		String reg12 = leftOp.registro2;
		String sca11 = leftOp.scalare1;
		String regSwap = "edx";
		// dec eax
		if (
			reg11 != null &&
			reg12 == null &&
			sca11 == null
		) {
			generateMov(reg11, "[data_items" + " + " + "reg11" + "*4" + "508]");
		} else if (
			reg11 != null &&
			reg12 != null ||
			sca11 != null
		) {
			//push32(regSwap,null,null);
			generateMov(regSwap, leftOp.toString()); //TODO GENERATE PARAM
			generateMov(regSwap, "[data_items" +" + " + regSwap + "*4 + 508]");
			//pop32(regSwap,null,null);
		}
		addLine(true,true,"");
	}
	
	/**
	* This method is used to replace add instruction into mov.
	* 
	* @param num1		addl $num1, R addl $num1,M
	* @param sca11		addl sca11(R,R,S) , R
	* @param reg11		addl S(R,reg11,S) , R
	* @param reg12		addl S(reg12,R,S) , R
	* @param sca12		addl S(R,R,sca12) , R
	* @param sca21		addl N , sca12(R,R,S) , addl R , sca12(R,R,S)
	* @param reg21		addl N , S(R,reg21,S) , addl R , S(R,reg21,S)
	* @param reg22		addl N , S(reg22,R,S) , addl R , S(reg22,R,S)
	* @param sca22		addl N , S(R,R,sca22) , addl R , S(R,R,sca22)
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
		String regSwap = "edx";
		String num1 = rightOp.numero;
		String puntatore1 = rightOp.puntatore;
		
		//add registro, intero
		if (
			num1  != null &&
			reg11 != null &&
			reg12 == null &&
			reg21 == null &&
			reg22 == null &&
			sca11 == null &&
			sca21 == null &&
			puntatore == null &&
			puntatore1 == null
		){
			String s = Integer.parseInt(num1)*4 + "";
			// utilizzo lo spostamento per andare a sommare direttamente l intero contenuto nella variabile num1
			generateMov(reg11, "[" + reg11 + "*4 + data_items +" + 512 + "+" + s + "]");
			
		// add registro, registro
		} else if (
			num1  == null &&
			reg11 != null &&
			reg12 == null &&
			reg21 != null &&
			reg22 == null &&
			sca11 == null &&
			sca21 == null &&
			puntatore == null &&
			puntatore1 == null 
		) {
			
			generateMov(reg11, "[" + reg11 + "*8 + data_items + 512]");
			generateMov(reg11, "[" + reg11 + "*8 + data_items + 512]");
			generateMov(reg11, "[" + reg11 + " + " + reg21 +"*4 + data_items + 512]");
		
		// add memoria, intero add DWORD [eax], 5
		} else if (
			num1  != null &&
			reg11 != null &&
			puntatore != null ||
			(reg12 != null || sca11 != null) &&
			reg21 == null &&
			reg22 == null &&
			sca21 == null &&
			puntatore1 == null 
		) {
			
			addLine("push " + regSwap);
			String s = Integer.parseInt(num1)*4 + "";
			generateMov(regSwap, rightOp.toString());
			generateMov(regSwap, "[" + regSwap +"*4 + data_items + 512" + s + "]");
			generateMov(rightOp.toString(), regSwap);
			addLine("pop" + regSwap);
			
		// add memoria, registro
		} else if (
			num1  == null &&
			reg11 != null &&
			puntatore != null ||
			(reg12 != null || sca11 != null) &&
			reg21 != null &&
			reg22 == null &&
			sca21 == null &&
			puntatore1 == null
		) {
			
			addLine("push " + regSwap);
			
			generateMov(regSwap, leftOp.toString());
			generateMov(regSwap, "[" + regSwap + "*8 + data_items + 512]");
			generateMov(regSwap, "[" + regSwap + "*8 + data_items + 512]");
			generateMov(regSwap, "[" + regSwap + " + " + reg21 + "*4 + data_items + 512]");
			generateMov(leftOp.toString(), regSwap);
			
			addLine("pop " + regSwap);
			
		// add registro, memoria
		} else if(
			num1  == null &&
			reg11 != null &&
			puntatore == null &&
			reg12 == null &&
			sca11 == null &&
			reg21 != null && 
			puntatore1 != null ||
			(reg22 == null ||
			sca21 == null)
		) {
			
			addLine("push " + regSwap);
			generateMov(regSwap, rightOp.toString());
			generateMov(reg11, "[" + reg11 + "*8 + data_items + 512]");
			generateMov(reg11, "[" + reg11 + "*8 + data_items + 512]");
			generateMov(reg11, "[" + reg11 + " + " + regSwap +"*4 + data_items + 512]");
			addLine("pop " + regSwap);
			
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
		
		String regSwap = "edx";
		// sub registro intero
		if (
			num1  != null &&
			reg11 != null &&
			reg12 == null &&
			reg21 == null &&
			reg22 == null &&
			sca11 == null &&
			sca21 == null &&
			puntatore == null &&
			puntatore1 == null
		) {
			String s = Integer.parseInt(num1)*4 + "";
			// sposto all indietro il puntatore del mio registro
			generateMov(reg11, "[" + reg11 + "*4 + data_items +" + 512 + "-" + s + "]");
		
		//sub registro, registro
		} else if (
			num1  == null &&
			reg11 != null &&
			reg12 == null &&
			reg21 != null &&
			reg22 == null &&
			sca11 == null &&
			sca21 == null &&
			puntatore == null &&
			puntatore1 == null
		) {
			
			addLine("push " + reg21);
			
			generateMov(reg11, "[" + reg11 + "*8 + data_items + 512]");
			generateMov(reg11, "[" + reg11 + "*8 + data_items + 512]");
			
			generateMov(reg21, "[" + reg21 + "*4 + data_items_negative + 512]");
			generateMov(reg11, "[" + reg11 + " + " + reg21 + "*4 + data_items + 512]");
			addLine("pop" + reg21);
			
		//sub registro, memoria
		} else if ( 
			num1  == null &&
			reg11 != null &&
			puntatore == null &&
			reg12 == null &&
			sca11 == null &&
			reg21 != null && 
			puntatore1 != null ||
			(reg22 == null ||
			sca21 == null) 
		) {
			
			addLine("push " + regSwap);
			generateMov(reg11, "[" + reg11 + "*8 + data_items + 512]");
			generateMov(reg11, "[" + reg11 + "*8 + data_items + 512]");
			
			generateMov(regSwap, rightOp.toString());
			generateMov(regSwap, "[" + regSwap + "*4 + data_items_negative + 512]");
			generateMov(reg11, "[" + reg11 + " + " + regSwap + "*4 + data_items + 512]");
			addLine("pop " + regSwap); 
		
		//sub memoria, registro
		} else if(
			num1  == null &&
			reg11 != null &&
			puntatore != null ||
			(reg12 != null || sca11 != null) &&
			reg21 != null &&
			reg22 == null &&
			sca21 == null &&
			puntatore1 == null
		) {
			
			addLine("push " + regSwap);
			addLine("push " + reg21);
			
			generateMov(regSwap, leftOp.toString());
			
			generateMov(reg21, "[" + reg21 + "*4 + data_items_negative + 512");
			generateMov(regSwap, "[" + regSwap + "*8 + data_items + 512]");
			generateMov(regSwap, "[" + regSwap + "*8 + data_items + 512]");
			
			generateMov(regSwap, "[" + regSwap + " + " + reg21 + "*4 + data_items + 512 ]");
			generateMov(leftOp.toString() , regSwap);
			
			addLine("push " + reg21);
			addLine("push " + regSwap);
			
		//sub memoria, intero
		} else if (
			num1  != null &&
			reg11 != null &&
			puntatore != null ||
			(reg12 != null || sca11 != null) &&
			reg21 == null &&
			reg22 == null &&
			sca21 == null &&
			puntatore1 == null
		) {
			
			addLine("push " + regSwap);
			generateMov(regSwap, rightOp.toString());
			String s = Integer.parseInt(num1)*4 + "";
			// sposto all indietro il puntatore del mio registro
			generateMov(regSwap, "[" + regSwap + "*4 + data_items +" + 512 + "-" + s + "]");
			generateMov(leftOp.toString() , regSwap);
			addLine("pop " + regSwap);
			
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
		addLine("movl\t", param1, ", ", param2);
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
		addLine(true, false,"data_items:");
		addLine(false, true, ".long");
		
		int numMax = max/2;
		
		for (int i = -numMax; i < numMax; i ++) {
			addLine(false, false, " " + i + ((i < numMax-1) ? "," : ""));
		}
		
		addLine(true, false, "");
	}
	
	private void constructData_temp() {
		addLine(true, false,"temp:");
		addLine(true, true, ".long 0");
		
		addLine(true, false,"temp2:");
		addLine(true, true, ".long 0");
	}
	
	private Boolean isMemoryAddress(String s){
		if (s.indexOf("(") < 0) {
			return false;
		}
		
		return true;
	}
}
