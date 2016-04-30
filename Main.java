import java.io.File;
import java.io.FileReader;
import java.io.BufferedReader;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
* <h1>Movinator</h1>
* The Movinator program implements an application that
* simply changes the following instructions into
* a sequence of mov instructions
* 
* <b>Note:</b> Giving proper comments in your program makes it more
* user friendly and it is assumed as a high quality code.
*
* @author  Andrea Colato
* @author  Tommaso Bonetti
* @author  Nicolo Manzatti
* 
* @version 0.1
* @since   05-04-2016
*/

public class Main {
	
	public static int stackElements = 0;
	
	public static String parseInstruction (
		String ins,
		String num1,
		String sca11, 
		String reg12,
		String reg11,
		String sca12,
		String sca21,
		String reg22, 
		String reg21, 
		String sca22,
		String line
	) {
		String replace = "";
		
		switch (ins) {
			case "mov":
			case "movl":
				replace += "\t" + line + "\n";
				break;
			
			case "push":
			case "pushl":
				replace += push(
					num1,   
					sca11, 
					reg12,
					reg11,
					sca12
				);
				break;
			
			case "pop":
			case "popl":
				replace += pop(
					sca11, 
					reg12,
					reg11,
					sca12
				);
				break;
			
			case "dec":
			case "decl":
				replace += dec32(reg11);
				break;
				
			case "inc":
			case "incl":
				replace += inc32(reg11);
				break;
				
			case "add":
			case "addl":
				replace += add32(
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
				
			default:
				replace += "	ERROR: Default case in switch\n";
		}
		
		return replace;
	}
	
	/**
	* This method is used to replace push instruction into mov.
	* 
	* @param num1 push $num1
	* @param sca11  push sca11(R, R, S)
	* @param reg12  push S(reg12, R, S), push %eax, push (%esp)
	* @param reg11  push S(R, reg11, S)
	* @param sca12  push S(R, reg11, sca12)
	* 
	* @return String This returns the substitute string.
	*/ 
	private static String push(
		String num1,
		String sca11,
		String reg12, 
		String reg11,
		String sca12
	) {
		
		String result = "";
		String stackRegister = ((stackElements!=0) ? stackElements*4 : "") + "(%esp)";
		
		result = generateMov(
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
		
		return result;
	}
	
	/**
	* This method is used to replace pop instruction into mov.
	* 
	* @param sca11  pop sca11(R, R, S)
	* @param reg12  pop S(reg12, R, S)
	* @param reg11  pop S(R, reg11, S), pop reg11, pop (reg11)
	* @param sca12  pop S(R, reg11, sca12)
	* 
	* @return String This returns the substitute string.
	*/ 
	private static String pop(
		String sca11, 
		String reg12,
		String reg11,
		String sca12
	) {
		String result = "";
		String stackRegister = ((stackElements!=0) ? stackElements*4 : "") + "(%esp)";
		stackElements--;
		
		if (stackElements == 0) {
			result = "\tERROR: Pop instruction is invalid: there are no elements in stack";
			
		} else {
			result = generateMov(
				generateRightParam(
					sca11,
					reg11,
					reg12,
					sca12
				),
				stackRegister 
			);
		}
		
		return result;
	}
	
	/**
	* This method is used to replace inc instruction into mov.
	* 
	* @param reg11 inc %reg11
	* 
	* @return String This returns the substitute string.
	*/ 
	private static String inc32(String reg11) {
		String result = "";
		
		generateMov("%edx", "temp");
		generateMov("$4", "%edx");
		generateMov("data_items(%edx, " + reg11 + ", 4)", reg11);
		generateMov("temp", "%edx");
		
		return result;
	}
	
	/**
	* This method is used to replace dec instruction into mov.
	* 
	* @param reg11 dec %reg11
	* 
	* @return String This returns the substitute string.
	*/ 
	private static String dec32(String reg11) {
		String result = "";
		
		generateMov("%edx", "temp");
		generateMov("$-4", "%edx");
		generateMov("data_items(%edx, " + reg11 + ", 4)", reg11);
		generateMov("temp", "%edx");
		
		return result;
	}

	/**
	* This method is used to replace add instruction into mov.
	* 
	* @param num1		addl $num1, R  addl $num1,M
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
		
	private static String add32(
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
		String result = "";
		
		String regSwap  = "%edx"; //TODO usare stack
		String regSwap2 = "%ecx"; //usare stack
		
		// Add intReg --> add $3,%eax
		if (
			num1 != null && 
			reg21 != null && 
			!isMemoryAddress(reg21) && 
			sca21 == null && 
			sca22 == null
		) {
			// Control who the reg21 isn't equals to edx
			if (reg21.contains("%edx")) {
				regSwap = "%eax";
			}
			
			// Move into reg21 the value corresponding of its memory cell. Es. value 4 is stored in memory cell 16
			result += generateMov("data_items(," + reg21 +",8)", reg21);
			result += generateMov("data_items(," + reg21 +",8)", reg21);
			
			// Save content of edx in a temporary variable
			result += generateMov(regSwap, "temp");
			
			//Move leftExp into edx
			result += generateMov(num1, regSwap);
			
			// Recover the momory cell corresponding at the sum leftExp+RighExp
			result += generateMov("data_items(" + reg21 + "," + regSwap + ",4)", reg21 );
			
			// Restore the value of edx
			result += generateMov("temp" , regSwap );
		
		// Add intMem --> add $3,(%eax) , add $3, 4(%eax) , ...
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
			result += generateMov(regSwap, "temp");
			result += generateMov(regSwap2, "temp2");
			
			result += generateMov(generateRightParam(sca21 , reg21 , reg22 , sca22) , regSwap);
			
			//move the pointer value into itself
			result += generateMov( "data_items(," + regSwap + ",8)" , regSwap ); 
			result += generateMov( "data_items(," + regSwap + ",8)" , regSwap ); 
			
			result += generateMov( num1 , regSwap2 );
			
			result += generateMov( "data_items("+ regSwap + "," + regSwap2 + ",4)" , regSwap );
			
			result += generateMov( regSwap , generateRightParam( sca21 , reg21 , reg22 , sca22 ));
			
			//restore previuos values
			result += generateMov("temp", regSwap);
			result += generateMov("temp2", regSwap2);
			
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
			
			result += generateMov( "data_items(," + reg21 +",8)" ,  reg21 );
			result += generateMov( "data_items(," + reg21 +",8)" ,  reg21 );
			
			result += generateMov( "data_items(" + reg21 + "," + reg11 +",4)" ,reg21 );
			
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
			
			result += generateMov(regSwap, "temp");
			
			result += generateMov( "data_items(," + reg21 +",8)" , reg21 );
			result += generateMov( "data_items(," + reg21 +",8)" , reg21 );
			
			result += generateMov(generateLeftParam(num1,sca11,reg11,reg12,sca12) , regSwap );
			
			result += generateMov( "data_items(" + reg21 + "," + regSwap +",4)" , reg21) ;
			
			result += generateMov("temp", regSwap);
			
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
			
			result += generateMov(regSwap, "temp");
			
			result += generateMov(generateRightParam(sca21,reg21,reg22,sca22) , regSwap );
			
			result += generateMov("data_items(," + regSwap + ",4)" , regSwap );
			result += generateMov("data_items(," + regSwap + ",4)" , regSwap );
			
			result += generateMov("data_items(" + regSwap + "," + reg11 + ",4)" , regSwap );
			result += generateMov(regSwap , generateRightParam(sca21,reg21,reg22,sca22));
			
			result += generateMov("temp" , regSwap);
		} else {
			result += "Errore: parse add instruction";
		}
		
		return result;
	}
	
	public static void main(String args[]){
		
		try {
			String line = "";
			String program = "";
			
			File file = new File(args[0]);
			BufferedReader bufferedFile = new BufferedReader(new FileReader(file));
			
			
			Pattern instruction = Pattern.compile("^\\s*(?<ins>[\\w*]+)\\s*(?:(?<num1>[$]-?[0x\\d]+)|(?<reg1>[(][%][\\w]+[)])|(?:(?<sca11>-?[\\d]+)?\\s*[(]?\\s*(?<reg12>[%][\\w]+)?\\s*,?\\s*(?<reg11>[%][\\w]+)\\s*,?\\s*(?<sca12>[\\d]+)?[)]?))\\s*(?:,\\s*(?:(?<reg2>[(][%][\\w]+[)])|(?:(?<sca21>-?[\\d]+)?\\s*[(]?\\s*(?<reg22>[%][\\w]+)?\\s*,?\\s*(?<reg21>[%][\\w]+)\\s*,?\\s*(?<sca22>[\\d]+)?[)]?)))?\\s*$");
			Pattern emptyLine = Pattern.compile("^\\s*#\\w*\\s*$");
			Matcher instructionMatcher;
			
			while ((line = bufferedFile.readLine()) != null ) {
				instructionMatcher = emptyLine.matcher(line);
				
				program += "\t# " + line + "\n";
				
				// If line is not empty and line is not a comment I can search instructions inside it
				if (!instructionMatcher.matches()) {
					instructionMatcher = instruction.matcher(line);
					instructionMatcher.matches();
					
					// Print 
					System.out.println("************ RIGA ************: "+line);
				
					System.out.println("ins: " + instructionMatcher.group("ins"));
					System.out.println("num1: " + instructionMatcher.group("num1"));   
					System.out.println("sca11: " + instructionMatcher.group("sca11")); 
					System.out.println("reg12: " + instructionMatcher.group("reg12"));
					System.out.println("reg11: " + ((instructionMatcher.group("reg1") == null )?instructionMatcher.group("reg11"):instructionMatcher.group("reg1")));  
					System.out.println("sca12: " + instructionMatcher.group("sca12")); 
					System.out.println("sca21: " + instructionMatcher.group("sca21")); 
					System.out.println("reg22: " + instructionMatcher.group("reg22")); 
					System.out.println("reg21: " + ((instructionMatcher.group("reg2") == null )?instructionMatcher.group("reg21"):instructionMatcher.group("reg2"))); 
					System.out.println("sca22: " + instructionMatcher.group("sca22")); 
					
					program += parseInstruction(
						instructionMatcher.group("ins"),
						instructionMatcher.group("num1"),   
						instructionMatcher.group("sca11"),
						instructionMatcher.group("reg12"), 
						(instructionMatcher.group("reg1") == null )?instructionMatcher.group("reg11"):instructionMatcher.group("reg1"),
						instructionMatcher.group("sca12"),
						instructionMatcher.group("sca21"),  
						instructionMatcher.group("reg22"), 
						(instructionMatcher.group("reg2") == null )?instructionMatcher.group("reg21"):instructionMatcher.group("reg2"),
						instructionMatcher.group("sca22"),
						line
					);
				} else {
					
					program += line.replaceAll("^\\s*", "\t") + "\n";
				}
			}
			System.out.println(program);
			
		} catch (Exception e){
			System.out.println("Errore: " + e.getMessage());
		}
	}
	
	/*
	 *  Utils Method
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
	private static String generateMov(String param1, String param2) {
		return "\tmov " + param1 + ", " + param2 + "\n";
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
	private static String generateLeftParam(
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
	private static String generateRightParam(
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
	private static String generateParam(
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
			result =reg1;
			
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
			result = "\tERROR FUNCTION: generateParam \n";
		}
		
		return result;
	}
	
	/**
	* This method is used to create an array with
	* as many elements as specified in input
	* 
	* @param max the max namber of the array's elements
	* 
	* @return String This returns the assembly initialization of array.
	*/
	// TODO: va istanziato dopo .data
	private static String constructData_items(int max) {
		String result = "";
		result += "data_items:\n\t.long ";
		
		for (int i = 0; i < max; i ++) {
			result += i + ((i < max-1) ? ",\n" : "1n");
		}
		
		result += "\n";
		return result;
	}
	
	private static Boolean isMemoryAddress(String s){
		if (s.indexOf("(") < 0) {
			return false;
		}
		
		return true;
	}
}
