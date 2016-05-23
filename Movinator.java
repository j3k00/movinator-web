public class Movinator {
	
	public int stackElements = 0;
	public int imullCall = 0;
	public int idivCall = 0;
	String program = "";
	
	public Movinator(int max) {
		addLine(true, false, ".section .data");
		constructData_items(max);
		constructData_temp();
		constructData_items_negative(max);
		addLine(true, false, ".section .text");
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
		String num1,
		String sca11, 
		String reg12,
		String reg11,
		String sca12,
		String var1,
		String sca21,
		String reg22, 
		String reg21, 
		String sca22,
		String var2,
		String line
	) {
		
		switch (ins) {
			case "mov":
			case "movl":
				addLine(line.replaceAll("^\\s*", ""));
				break;
			
			case "push":
			case "pushl":
				addLine("# ", line);
				push(
					num1,  
					sca11, 
					reg12,
					reg11,
					sca12
				);
				break;
			
			case "pop":
			case "popl":
				addLine("# ", line);
				pop(
					sca11, 
					reg12,
					reg11,
					sca12
				);
				break;
			
			case "decl":
				addLine("# ", line);
				dec32(
					sca11,
					reg11,
					reg12,
					sca12
				);
				break;
				
			case "inc":
			case "incl":
				addLine("# ", line);
				inc32(
					sca11,
					reg11,
					reg12,
					sca12
				);
				break;
				
			case "add":
			case "addl":
				addLine("# ", line);
				add32(
					 num1, 
					 sca11, 
					 reg11,
					 reg12,
					 sca12,
					 sca21, 
					 reg21, 
					 reg22,
					 sca22
				);
				break;
				
			case "sub":
			case "subl":
				addLine("# ", line);
				sub32(
					 num1,  
					 sca11, 
					 reg11,
					 reg12,
					 sca12,
					 sca21, 
					 reg21, 
					 reg22,
					 sca22
				);
				break;
				
			case "xor":
				addLine("# ", line);
				xor32(
					 num1,
					 sca11,
					 reg11,
					 reg12,
					 sca12,
					 sca21,
					 reg21,
					 reg22,
					 sca22
				);
				break;
			
			case "imull":
				addLine("# ",line);
				imull32(
					 num1,
					 sca11,
					 reg11,
					 reg12,
					 sca12,
					 sca21,
					 reg21,
					 reg22,
					 sca22
				);
				break;
			
			case "not":
			case "notl":
				addLine("#",line);
				not32(
					sca11,
					reg11,
					reg12,
					sca12
					);
					break;
			//idiv 
			case "idiv":
				addLine("#",line);
				idiv32(
					sca11,
					reg11,
					reg12,
					sca12
					);
					break;
			
			default:
				addLine("ERROR: Default case in switch: " + line);
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
	private void push(
		String num1,
		String sca11,
		String reg12, 
		String reg11,
		String sca12
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
	private void pop(
		String sca11, 
		String reg12,
		String reg11,
		String sca12
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
					sca12
				),
				stackRegister 
			);
		}
	}
	
	/**
	* This method is used to replace inc instruction into mov.
	* 
	* @param reg11 inc %reg11
	* 
	* @return String This returns the substitute string.
	*/ 
	private void inc32(
		String sca11,
		String reg11,
		String reg12,
		String sca12
	) {
		String regSwap = "%edx";
		String regSwap2 = "%ecx";
		
		if (reg12 == null){
			if (reg11.contains("%edx")) {
				regSwap = "%eax";
			}
		}else {
			if (reg11.contains("%edx") || reg12.contains("%edx")) {
				regSwap = "%eax";
			}
			if (reg11.contains("%ecx") || reg12.contains("%ecx")) {
				regSwap = "%ebx";
			}
		}
		
		//incl %eax
		if (
			reg11 != null &&
			sca11 == null &&
			sca12 == null &&
			reg12 == null &&
			!isMemoryAddress(reg11)
		){
			
			generateMov(regSwap , "temp");
			generateMov("$4", regSwap);
			generateMov("data_items+512(" + regSwap + ", " + reg11 + ", 4)", reg11);
			generateMov("temp", regSwap);
			
		//incl mem
		}else{
			generateMov(regSwap , "temp");
			generateMov(regSwap2 , "temp2");
			
			generateMov("$4", regSwap);
			
			generateMov(generateRightParam(sca11,reg11,reg12,sca12),regSwap2);
			generateMov("data_items+512(" + regSwap + ", " + regSwap2 + ", 4)", regSwap2);
			
			generateMov(regSwap2,generateRightParam(sca11,reg11,reg12,sca12));
			
			generateMov("temp", regSwap);
			generateMov("temp2", regSwap2);
		}
	}
	
	
	/**
	* This method is used to replace dec instruction into mov.
	* 
	* @param reg11 dec %reg11
	* 
	* @return String This returns the substitute string.
	*/ 
	private void dec32(
		String sca11, 
		String reg11,
		String reg12,
		String sca12
	) {
		String regSwap = "%edx";
		String regSwap2 = "%ecx";
		
		if (reg12 == null){
			if (reg11.contains("%edx")) {
				regSwap = "%eax";
			}
		}else {
			if (reg11.contains("%edx") || reg12.contains("%edx")) {
				regSwap = "%eax";
			}
			if (reg11.contains("%ecx") || reg12.contains("%ecx")) {
				regSwap = "%ebx";
			}
		}
		
		//decl %eax
		if (
			reg11 != null &&
			sca11 == null &&
			sca12 == null &&
			reg12 == null &&
			!isMemoryAddress(reg11)
		){
			
			generateMov(regSwap , "temp");
			generateMov("$-4", regSwap);
			generateMov("data_items+512(" + regSwap + ", " + reg11 + ", 4)", reg11);
			generateMov("temp", regSwap);
			
		//decl mem
		}else{
			generateMov(regSwap , "temp");
			generateMov(regSwap2 , "temp2");
			
			generateMov("$-4", regSwap);
			
			generateMov(generateRightParam(sca11,reg11,reg12,sca12),regSwap2);
			generateMov("data_items+512(" + regSwap + ", " + regSwap2 + ", 4)", regSwap2);
			
			generateMov(regSwap2,generateRightParam(sca11,reg11,reg12,sca12));
			
			generateMov("temp", regSwap);
			generateMov("temp2", regSwap2);
		}
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
		String num1,
		String sca11,
		String reg11,
		String reg12,
		String sca12,
		String sca21,
		String reg21,
		String reg22,
		String sca22
	) {
		String regSwap  = "%edx"; //TODO usare stack
		String regSwap2 = "%ecx"; //usare stack

		//add intReg --> add $3,%eax --> FIXATO
		if (
			num1 != null && 
			reg21 != null && 
			!isMemoryAddress(reg21) && 
			sca21 == null && 
			sca22 == null &&
			reg22 == null
		) {
			//control who the reg21 isn't equals to edx
			if (reg21.contains("%edx")) {
				regSwap = "%eax";
			}
			
			//move into reg21 the value corresponding of its memory cell. Es. value 4 is stored in memory cell 16
			generateMov("data_items+512(," + reg21 +",8)", reg21);
			generateMov("data_items+512(," + reg21 +",8)", reg21);
			
			//Save content of edx in a temporary variable
			generateMov(regSwap, "temp");
			
			//move leftExp into edx
			generateMov(num1, regSwap);
			
			//recover the momory cell corresponding at the sum leftExp+RighExp
			generateMov("data_items+512(" + reg21 + "," + regSwap + ",4)", reg21 );
			
			//restore the value of edx
			generateMov("temp" , regSwap );
		
		//add intMem --> add $3,(%eax) , add $3, 4(%eax) , ...
		}else if (
			num1  != null &&
			reg21 != null &&
			(isMemoryAddress(reg21) ||
				(reg22 != null || 
				sca21 != null || 
				sca22 != null)
			)
		){
			
			//control swap Registers, don't lose the prevoius values
			if (reg22 == null){
				if (reg21.contains("%edx") ) {
					regSwap  = "%eax";
				}
			}else{
			
				if (reg21.contains("%edx") || reg22.contains("%edx") ) {
					regSwap  = "%eax";
				} 
				if ( reg22.contains("%ecx") || reg21.contains("%ecx") ) {
					regSwap2 = "%ebx";
				}
			}
			//save value into temp register
			generateMov(regSwap, "temp");
			generateMov(regSwap2, "temp2");
			
			generateMov(generateRightParam(sca21 , reg21 , reg22 , sca22) , regSwap);
			
			//move the pointer value into itself
			generateMov( "data_items+512(," + regSwap + ",8)" , regSwap ); 
			generateMov( "data_items+512(," + regSwap + ",8)" , regSwap ); 
			
			generateMov( num1 , regSwap2 );
			
			generateMov( "data_items+512("+ regSwap + "," + regSwap2 + ",4)" , regSwap );
			
			generateMov( regSwap , generateRightParam( sca21 , reg21 , reg22 , sca22 ));
			
			//restore previuos values
			generateMov("temp", regSwap);
			generateMov("temp2", regSwap2);
		
		//add reg,reg --> add %eax,%ebx
		}else if (
			num1  == null &&
			reg11 != null &&
			reg21 != null &&
			reg12 == null &&
			reg22 == null &&
			sca11 == null &&
			sca12 == null &&
			sca21 == null &&
			sca22 == null &&
			!isMemoryAddress(reg11) &&
			!isMemoryAddress(reg21) 
		){
			
			generateMov( "data_items+512(," + reg21 +",8)" ,  reg21 );
			generateMov( "data_items+512(," + reg21 +",8)" ,  reg21 );
			
			generateMov( "data_items+512(" + reg21 + "," + reg11 +",4)" ,reg21 );
			
		//addl mem,reg --> add (%eax),%ebx, add 4(%eax),%ebx, ... 
		}else if (
			num1  == null &&
			reg11 != null &&
			reg21 != null &&
			reg22 == null &&
			sca21 == null &&
			sca22 == null &&
			( isMemoryAddress(reg11) ||
				(sca11 != null || sca12 != null || reg12 != null)
			)
		) {
			
			//control who the reg21 isn't equals to edx
			if (reg21.contains("%edx")) {
				regSwap = "%eax";
			}
			
			generateMov(regSwap, "temp");
			
			generateMov( "data_items+512(," + reg21 +",8)" , reg21 );
			generateMov( "data_items+512(," + reg21 +",8)" , reg21 );
			
			generateMov(generateLeftParam(num1,sca11,reg11,reg12,sca12) , regSwap );
			
			generateMov( "data_items+512(" + reg21 + "," + regSwap +",4)" , reg21) ;
			
			generateMov("temp", regSwap);
			
		//addl reg,mem --> addl 
		} else if (
			num1  == null &&
			reg11 != null &&
			reg21 != null &&
			reg12 == null &&
			sca11 == null &&
			sca12 == null &&
			(isMemoryAddress(reg21) ||
			(reg22 != null || sca21 != null || sca22 != null)
			)
		) {
			
			//control who the reg21 isn't equals to edx
			if (reg21.contains("%edx")) {
				regSwap = "%eax";
			}
			
			generateMov(regSwap, "temp");
			
			generateMov(generateRightParam(sca21,reg21,reg22,sca22) , regSwap );
			
			generateMov("data_items+512(," + regSwap + ",8)" , regSwap );
			generateMov("data_items+512(," + regSwap + ",8)" , regSwap );
			
			generateMov("data_items+512(" + regSwap + "," + reg11 + ",4)" , regSwap );
			generateMov(regSwap , generateRightParam(sca21,reg21,reg22,sca22));
			
			generateMov("temp" , regSwap);
		} else {
			addLine("ERRORE: parse add instruction");
		}
	}
	
	
	private void sub32(
		String num1,
		String sca11,
		String reg11,
		String reg12,
		String sca12,
		String sca21,
		String reg21,
		String reg22,
		String sca22
	) {
		String regSwap  = "%edx"; 
		String regSwap2 = "%ecx";
		
		//sub intReg --> sub $3,%eax
		if (
			num1 != null && 
			reg21 != null && 
			!isMemoryAddress(reg21) && 
			sca21 == null && 
			sca22 == null
		) {
			//control who the reg21 isn't equals to edx
			if (reg21.contains("%edx")) {
				regSwap = "%eax";
			}
			
			//move into reg21 the value corresponding of its memory cell. Es. value 4 is stored in memory cell 16
			generateMov("data_items+512(," + reg21 +",8)", reg21);
			generateMov("data_items+512(," + reg21 +",8)", reg21);
			
			//Save content of edx in a temporary variable
			generateMov(regSwap, "temp");
			
			//move leftExp into edx
			generateMov(num1, regSwap);
			
			//recover negative value
			generateMov("data_items_negative+512(," + regSwap + ",4)",regSwap);
			
			//recover the momory cell corresponding at the sum leftExp+RighExp
			generateMov("data_items+512(" + reg21 + "," + regSwap + ",4)", reg21 );
			
			//restore the value of edx
			generateMov("temp" , regSwap );
		
		//sub intMem --> sub $3,(%eax) , sub $3, 4(%eax) , ...
		}else if (
			num1  != null &&
			reg21 != null &&
			(isMemoryAddress(reg21) ||
				(reg22 != null || 
				sca21 != null || 
				sca22 != null)
			)
		){
			
			//control swap Registers, don't lose the prevoius values
			if (reg22 == null){
				if (reg21.contains("%edx") ) {
					regSwap  = "%eax";
				}
			}else{
			
				if (reg21.contains("%edx") || reg22.contains("%edx") ) {
					regSwap  = "%eax";
				} 
				if ( reg22.contains("%ecx") || reg21.contains("%ecx") ) {
					regSwap2 = "%ebx";
				}
			}
			
			//save value into temp register
			generateMov(regSwap, "temp");
			generateMov(regSwap2, "temp2");
			
			generateMov(generateRightParam(sca21 , reg21 , reg22 , sca22) , regSwap);
			
			//move the pointer value into itself
			generateMov( "data_items+512(," + regSwap + ",8)" , regSwap ); 
			generateMov( "data_items+512(," + regSwap + ",8)" , regSwap ); 
			
			generateMov( num1 , regSwap2 );
			
			//recover negative value
			generateMov( "data_items_negative+512(," + regSwap2 + ",4)",regSwap2);
			
			generateMov( "data_items+512("+ regSwap + "," + regSwap2 + ",4)" , regSwap );
			
			generateMov( regSwap , generateRightParam( sca21 , reg21 , reg22 , sca22 ));
			
			//restore previuos values
			generateMov("temp", regSwap);
			generateMov("temp2", regSwap2);
		//sub reg,reg --> sub %eax,%ebx
		}else if (
			num1  == null &&
			reg11 != null &&
			reg21 != null &&
			reg12 == null &&
			reg22 == null &&
			sca11 == null &&
			sca12 == null &&
			sca21 == null &&
			sca22 == null &&
			!isMemoryAddress(reg11) &&
			!isMemoryAddress(reg21) 
		){
			
			if (reg21.contains("%edx")) {
				regSwap = "%eax";
			}
			
			generateMov(regSwap , "temp");
			generateMov(reg11 ,regSwap);
			
			generateMov("data_items_negative+512(," + regSwap + ",4)",regSwap);
			
			generateMov( "data_items+512(," + reg21 +",8)" ,  reg21 );
			generateMov( "data_items+512(," + reg21 +",8)" ,  reg21 );
			
			generateMov( "data_items+512(" + reg21 + "," + regSwap +",4)" ,reg21 );
			generateMov( "temp" , regSwap);
			
			
		//sub mem,reg --> sub (%eax),%ebx, sub 4(%eax),%ebx, ... 
		}else if (
			num1  == null &&
			reg11 != null &&
			reg21 != null &&
			reg22 == null &&
			sca21 == null &&
			sca22 == null &&
			( isMemoryAddress(reg11) ||
				(sca11 != null || sca12 != null || reg12 != null)
			)
		) {
			
			//control who the reg21 isn't equals to edx
			if (reg21.contains("%edx")) {
				regSwap = "%eax";
			}
			
			generateMov(regSwap, "temp");
			
			generateMov( "data_items+512(," + reg21 +",8)" , reg21 );
			generateMov( "data_items+512(," + reg21 +",8)" , reg21 );
			
			generateMov(generateLeftParam(num1,sca11,reg11,reg12,sca12) , regSwap );
			generateMov("data_items_negative+512(," + regSwap + ",4)",regSwap);
			
			generateMov( "data_items+512(" + reg21 + "," + regSwap +",4)" , reg21) ;
			
			generateMov("temp", regSwap);
			
		//sub reg,mem --> sub 
		} else if (
			num1  == null &&
			reg11 != null &&
			reg21 != null &&
			reg12 == null &&
			sca11 == null &&
			sca12 == null &&
			(isMemoryAddress(reg21) ||
			(reg22 != null || sca21 != null || sca22 != null)
			)
		) {
			
			//control who the reg21 isn't equals to edx
			if (reg22 == null){
				if (reg21.contains("%edx") ) {
					regSwap  = "%eax";
				}
			}else{
			
				if (reg21.contains("%edx") || reg22.contains("%edx") ) {
					regSwap  = "%eax";
				} 
				if ( reg22.contains("%ecx") || reg21.contains("%ecx") ) {
					regSwap2 = "%ebx";
				}
			}
			
			generateMov(regSwap, "temp");
			generateMov(regSwap2, "temp2");
			
			generateMov(generateRightParam(sca21,reg21,reg22,sca22) , regSwap );
			generateMov(reg11, regSwap2);
			
			generateMov("data_items_negative+512(," + regSwap2 + ",4)",regSwap2);
			
			generateMov("data_items+512(," + regSwap + ",8)" , regSwap );
			generateMov("data_items+512(," + regSwap + ",8)" , regSwap );
			
			generateMov("data_items+512(" + regSwap + "," + regSwap2 + ",4)" , regSwap );
			
			generateMov(regSwap , generateRightParam(sca21,reg21,reg22,sca22));
			
			generateMov("temp" , regSwap);
			generateMov("temp2" , regSwap2);
			
		} else {
			addLine("Errore: parse add instruction");
		}
	}
	
	private void imull32(
		String num1,
		String sca11,
		String reg11,
		String reg12,
		String sca12,
		String sca21,
		String reg21,
		String reg22,
		String sca22
	){
		 String regSwap  = "%edx";
		 String regSwap2 = "%ecx";
		
		//imull $3,%eax
		if ( 
			num1  != null &&
			reg21 != null &&
			reg11 == null &&
			reg12 == null &&
			reg22 == null &&
			sca11 == null &&
			sca12 == null &&
			sca21 == null &&
			sca22 == null 
		){
			
			//control who the reg21 isn't equals to edx
			
			if (reg21.contains("%edx") ) {
				regSwap  = "%eax";
			}
			
			if ( reg21.contains("%ecx") ) {
				regSwap2 = "%ebx";
			}
			
			imullCall++;
			//save temporary variables
			generateMov(regSwap,"temp_mull");
			generateMov(regSwap2,"temp_mull2");
			
			generateMov(num1,regSwap);
			generateMov(reg21,regSwap2);
			
			generateInstruction("imull_start" + imullCall + ":", null,null);
			
			//add %eax,%eax
			add32(null,null,regSwap2,null,null,null,reg21,null,null);
			
			//decrement "%ecx"
			dec32(null,regSwap,null,null);
			generateInstruction("cmp","$1",regSwap);
			generateInstruction("jne","imull_start" + imullCall,null);
			generateInstruction("je","imull_end" + imullCall ,null);
			
			generateInstruction("imull_end" + imullCall + ":",null,null);
			generateMov("temp_mull",regSwap);
			generateMov("temp_mull2",regSwap2);
			
		// imull $1,mem
		}else if(
			num1  != null &&
			reg21 != null &&
			(isMemoryAddress(reg21) ||
				( reg22 != null || 
				  sca21 != null || 
				  sca22 != null)
			)
		){
		
			if (reg22 == null){
				if (reg21.contains("%edx") ) {
					regSwap  = "%eax";
				}
			}else{
			
				if (reg21.contains("%edx") || reg22.contains("%edx") ) {
					regSwap  = "%eax";
				} 
				if ( reg22.contains("%ecx") || reg21.contains("%ecx") ) {
					regSwap2 = "%ebx";
				}
			}
			imullCall++;
			//save temporary variables
			generateMov(regSwap,"temp_mull");
			generateMov(regSwap2,"temp_mull2");
			
			generateMov(num1,regSwap);
			generateMov(generateRightParam(sca21,reg21,reg22,sca22),regSwap2);
			
			generateInstruction("imull_start" + imullCall + ":", null,null);
			
			//add %eax,%eax
			add32(null,null,regSwap2,null,null,sca21,reg21,reg22,sca22);
			
			//decrement "%ecx"
			dec32(null,regSwap,null,null);
			generateInstruction("cmp","$1",regSwap);
			generateInstruction("jne","imull_start"  + imullCall ,null);
			generateInstruction("je","imull_end"  + imullCall ,null);
			
			generateInstruction("imull_end"  + imullCall + ":",null,null);
			generateMov("temp_mull",regSwap);
			generateMov("temp_mull2",regSwap2);			
		
		// imull %eax,%ebx
		}else if (
			num1  == null &&
			reg11 != null &&
			reg12 == null &&
			reg21 != null &&
			reg22 == null &&
			sca11 == null &&
			sca12 == null &&
			sca21 == null &&
			sca22 == null &&
			!isMemoryAddress(reg11)
		){
			if (reg21.contains("%edx") ) {
				regSwap  = "%eax";
			}
			
			imullCall++;
			//save temporary variables
			generateMov(reg11,"temp_mull");
			generateMov(regSwap,"temp_mull2");
			generateMov(reg21,regSwap);
			
			generateInstruction("imull_start" + imullCall + ":", null,null);
			
			//add %eax,%eax
			add32(null,null,regSwap,null,null,null,reg21,null,null);
			
			//decrement "%ecx"
			dec32(null,reg11,null,null);
			generateInstruction("cmp","$1",reg11);
			generateInstruction("jne","imull_start" + imullCall ,null);
			generateInstruction("je","imull_end" + imullCall ,null);
			
			generateInstruction("imull_end" + imullCall + ":",null,null);
			generateMov("temp_mull",reg11);
			generateMov("temp_mull2",regSwap);
			
		//imull mem,reg
		}else if (
			num1  == null &&
			reg11 != null &&
			reg21 != null &&
			reg22 == null &&
			sca21 == null &&
			sca22 == null &&
			( isMemoryAddress(reg11) ||
				(sca11 != null ||
				 sca12 != null ||
				 reg12 != null)
			)
		){
			
			if (reg22 == null){
				if (reg21.contains("%edx") ) {
					regSwap  = "%eax";
				}
			}else{
			
				if (reg21.contains("%edx") || reg22.contains("%edx") ) {
					regSwap  = "%eax";
				} 
				if ( reg22.contains("%ecx") || reg21.contains("%ecx") ) {
					regSwap2 = "%ebx";
				}
			}
			
			imullCall++;
			//save regSwap registers
			generateMov(regSwap , "temp_mull");
			generateMov(regSwap2, "temp_mull2");
			
			generateMov(reg21,regSwap);
			generateMov(generateRightParam(sca11,reg11,reg12,sca12),regSwap2);
			
			generateInstruction("imull_start" + imullCall + ":", null,null);
			
			add32(null,null,regSwap,null,null,null,reg21,null,null);
			
			dec32(null,regSwap2,null,null);
			generateInstruction("cmp","$1",regSwap2);
			generateInstruction("jne","imull_start" + imullCall ,null);
			generateInstruction("je","imull_end" + imullCall ,null);
			
			generateInstruction("imull_end"  + imullCall + ":",null,null);
			generateMov("temp_mull",regSwap);
			generateMov("temp_mull2",regSwap2);
		
		//imull reg,mem
		}else if (
			num1  == null &&
			reg11 != null &&
			reg21 != null &&
			reg12 == null &&
			sca11 == null &&
			sca12 == null &&
			(isMemoryAddress(reg21) ||
			(reg22 != null || sca21 != null || sca22 != null)
			)
		){
			
			if (reg22 == null){
				if (reg21.contains("%edx") ) {
					regSwap  = "%eax";
				}
			}else{
			
				if (reg21.contains("%edx") || reg22.contains("%edx") ) {
					regSwap  = "%eax";
				} 
				if ( reg22.contains("%ecx") || reg21.contains("%ecx") ) {
					regSwap2 = "%ebx";
				}
			}
			imullCall++;
			generateMov(regSwap,"temp_mull");
			generateMov(regSwap2,"temp_mull2");
			
			generateMov(reg11,regSwap);
			generateMov(generateRightParam(sca21,reg21,reg22,sca22),regSwap2);
			
			generateInstruction("imull_start "  + imullCall + ":", null,null);
			
			add32(null,null,regSwap2,null,null,sca21,reg21,reg22,sca22);
			dec32(null,reg11,null,null);
			generateInstruction("cmp","$1",reg11);
			generateInstruction("jne","imull_start"  + imullCall,null);
			generateInstruction("je","imull_end" + imullCall ,null);
			
			generateInstruction("imull_end"  + imullCall + ":",null,null);
			generateMov("temp_mull",regSwap);
			generateMov("temp_mull2",regSwap2);
			
		}else {
			addLine("IMULL: parse Error");
		}
	}
	
	private void not32(
		String sca11,
		String reg11,
		String reg12,
		String sca12
	){
		String regSwap = "%edx";
		String regSwap2= "%ecd";
		
		if (reg12 == null){
			if (reg11.contains("%edx")) {
				regSwap = "%eax";
			}
		}else {
			if (reg11.contains("%edx") || reg12.contains("%edx")) {
				regSwap = "%eax";
			}
			if (reg11.contains("%ecx") || reg12.contains("%ecx")) {
				regSwap2 = "%ebx";
			}
		}
		
		//not reg
		if (
			reg11 != null &&
			reg12 == null &&
			sca11 == null &&
			sca12 == null &&
			!isMemoryAddress(reg11)
		){
			
			generateMov("data_items_negative+512(," + reg11 + ", 4)",reg11);
			dec32(sca11,reg11,reg12,sca12);
			
		//not mem
		}else {
			
			generateMov((isMemoryAddress(reg11) ? reg11.substring(1,5) : reg11),"temp3");
			generateMov(regSwap,"temp4");
			
			generateMov(generateRightParam(sca11,reg11,reg12,sca12),(isMemoryAddress(reg11) ? reg11.substring(1,5) : reg11));
			generateMov("data_items_negative+512(," + (isMemoryAddress(reg11) ? reg11.substring(1,5) : reg11) + ", 4)",(isMemoryAddress(reg11) ? reg11.substring(1,5) : reg11));
			
			dec32(null,(isMemoryAddress(reg11) ? reg11.substring(1,5) : reg11),null,null);
			
			generateMov((isMemoryAddress(reg11) ? reg11.substring(1,5) : reg11),regSwap);
			generateMov("temp3",(isMemoryAddress(reg11) ? reg11.substring(1,5) : reg11));
			
			generateMov(regSwap,generateRightParam(sca11,reg11,reg12,sca12));
			generateMov("temp4",regSwap);
			
		}
	}
	
	//idiv %ebx -> %eax/%ebx
	private void idiv32(
		String sca11,
		String reg11,
		String reg12,
		String sca12
	){
		//TODO arrotondiamo all intero superiore
		
		generateInstruction("initialdiv" + idivCall + ":",null,null);
		sub32(null,null,reg11,null,null,null,"%eax",null,null);
		generateInstruction("incl","divresult",null);
		generateInstruction("cmp","%eax","0");
		generateInstruction("jg","initialdiv" + idivCall,null);
		generateInstruction("jle","enddiv"+ idivCall,null);
		generateInstruction("enddiv" + idivCall + ":",null,null);
		generateMov("divresult","%eax");
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
	
	private void generateInstruction(String instruction,String param1, String param2) {
		if (
			instruction != null &&
			param1      != null &&
			param2      != null
		){
			addLine(instruction + "\t" , param1, ", ", param2);
			
		}else if (
			instruction != null &&
			param1      != null &&
			param2      == null
		){
			addLine(instruction + "\t" , param1);
			
		}else if (
			instruction != null &&
			param1      == null &&
			param2      == null
		){
			addLine(instruction + "\t" );
			
		}
		 
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
			result = reg1;
			
		// 4(%esp)
		} else if (
			sca1 != null && 
			sca2 == null && 
			reg1 != null &&
			reg2 == null 
		) {
			result = sca1 + "(" + reg1 + ")";
			
		// (, %esp, 4)
		} else if (
			sca1 == null &&
			sca2 != null &&
			reg1 != null &&
			reg2 == null
		) {
			result = "(, " + reg1 + ", " + sca2 + ")";
			
		// 4(, %esp, 4)
		} else if (
			sca1 != null && 
			sca2 != null && 
			reg1 != null &&
			reg2 == null 
		) {
			result = sca1 + "(, " + reg1 + ", " + sca2 + ")";
		
		// (%esp,%eax)
		}else if ( 
			sca1 == null &&
			sca2 == null &&
			reg1 != null &&
			reg2 != null 
		) {
			result = "(" + reg2 + "," + reg1 + ")";
			
		// (%esp, %esi, 4)
		} else if (
			sca1 == null && 
			sca2 != null && 
			reg1 != null &&
			reg2 != null 
		) {
			result = "(" + reg2 + ", " + reg1 + ", " + sca2 + ")";
			
		// 4(%esp, %esi, 4)
		} else if (
			sca1 != null && 
			sca2 != null && 
			reg1 != null &&
			reg2 != null 
		) {
			result = sca1 + "(" + reg2 + ", " + reg1 + ", " + sca2 + ")";
			
		} else {
			result = "ERROR FUNCTION: generateParam";
		}
		
		return result;
	}
	
	private void xor32(
		String num1,
		String sca11,
		String reg11,
		String reg12,
		String sca12,
		String sca21,
		String reg21,
		String reg22,
		String sca22
	) {
		String regSwap = "%edx";
		String regSwap2 = "%ecx";
		
		//xor %eax,%eax
		if (
			reg11 != null &&
			reg21 != null &&
			reg12 == null &&
			reg22 == null &&
			sca12 == null &&
			sca11 == null &&
			sca21 == null &&
			sca22 == null
		){
			if (reg11.contains("%edx") || reg21.contains("%edx") ) {
				regSwap  = "%eax";
			} 
			if ( reg11.contains("%ecx") || reg21.contains("%ecx") ) {
				regSwap2 = "%ebx";
			}
			
			generateMov(regSwap  , "temp");
			generateMov(regSwap2 , "temp2");
			
			generateMov(reg11 , regSwap);
			generateMov(reg21 , regSwap2);
			
			generateMov("data_items+512(," + regSwap + ",8)", regSwap);
			generateMov("data_items+512(," + regSwap + ",8)", regSwap);
			
			generateMov("data_items+512(," + regSwap2 + ",8)", regSwap2);
			generateMov("data_items+512(," + regSwap2 + ",8)", regSwap2);
			
			generateMov("$0","data_items+512(" + regSwap + ")" );
			generateMov("$1","data_items+512(" + regSwap2 + ")" );
			
			generateMov("data_items+512(" + regSwap + ")" , "%esi");
			
			generateMov(reg11 , "data_items+512(" + regSwap + ")" );
			generateMov(reg21 , "data_items+512(" + regSwap2 + ")" );
			
			generateMov("temp", regSwap  );
			generateMov("temp2" ,regSwap2 );
			
		//xor mem,reg
		}else if (
			num1  == null &&
			reg11 != null &&
			reg21 != null &&
			reg22 == null &&
			sca21 == null &&
			sca22 == null &&
			( isMemoryAddress(reg11) ||
				( sca11 != null ||
				  sca12 != null ||
				  reg12 != null )
			)
		){
			
			if (reg11.contains("%edx") || reg21.contains("%edx") ) {
				regSwap  = "%eax";
			} 
			if ( reg11.contains("%ecx") || reg21.contains("%ecx") ) {
				regSwap2 = "%ebx";
			}
			
			generateMov(regSwap  , "temp");
			generateMov(regSwap2 , "temp2");
			
			generateMov(generateRightParam(sca11,reg11,reg12,sca12) , regSwap);
			generateMov(reg21 , regSwap2);
			
			generateMov("data_items+512(," + regSwap + ",8)", regSwap);
			generateMov("data_items+512(," + regSwap + ",8)", regSwap);
			
			generateMov("data_items+512(," + regSwap2 + ",8)", regSwap2);
			generateMov("data_items+512(," + regSwap2 + ",8)", regSwap2);
			
			generateMov("$0","data_items+512(" + regSwap + ")" );
			generateMov("$1","data_items+512(" + regSwap2 + ")" );
			
			generateMov("data_items+512(" + regSwap + ")" , "%esi");
			
			generateMov(reg11 , "data_items+512(" + regSwap + ")" );
			generateMov(reg21 , "data_items+512(" + regSwap2 + ")" );
			
			generateMov("temp", regSwap  );
			generateMov("temp2" ,regSwap2 );
		
		// xor reg,mem
		}else if (
			num1  == null &&
			reg11 != null &&
			reg21 != null &&
			reg12 == null &&
			sca11 == null &&
			sca12 == null &&
			(isMemoryAddress(reg21) ||
				( reg22 != null || 
				  sca21 != null || 
				  sca22 != null )
			)
		){
			
			if (reg11.contains("%edx") || reg21.contains("%edx") ) {
				regSwap  = "%eax";
			} 
			if ( reg11.contains("%ecx") || reg21.contains("%ecx") ) {
				regSwap2 = "%ebx";
			}
			
			generateMov(regSwap  , "temp");
			generateMov(regSwap2 , "temp2");
			
			generateMov(reg11 , regSwap);
			generateMov(generateRightParam(sca21,reg21,reg22,sca22), regSwap2);
			
			generateMov("data_items+512(," + regSwap + ",8)", regSwap);
			generateMov("data_items+512(," + regSwap + ",8)", regSwap);
			
			generateMov("data_items+512(," + regSwap2 + ",8)", regSwap2);
			generateMov("data_items+512(," + regSwap2 + ",8)", regSwap2);
			
			generateMov("$0","data_items+512(" + regSwap + ")" );
			generateMov("$1","data_items+512(" + regSwap2 + ")" );
			
			generateMov("data_items+512(" + regSwap + ")" , "%esi");
			
			generateMov(reg11 , "data_items+512(" + regSwap + ")" );
			generateMov(reg21 , "data_items+512(" + regSwap2 + ")" );
			
			generateMov("temp", regSwap  );
			generateMov("temp2" ,regSwap2 );
			
		}
	}
	
	/**
	* This method is used to create an array with
	* as many elements as specified in input
	* 
	* @param max the max namber of the array's elements
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
	
	private void constructData_items_negative(int max){
		addLine(true,false,"data_items_negative:");
		addLine(false,true,".long");
		
		int numMax = max/2;
		
		for (int i = 0; i<max ;i++){
			addLine(false,false," " + numMax-- + ((i < max-1) ? "," : ""));
		}
		
		addLine(true,false,"");
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
