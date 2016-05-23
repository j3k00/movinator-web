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
	
	public static void main(String args[]){
		
		try {
			String line = "";
			String program = "";
			
			File file = new File(args[0]);
			BufferedReader bufferedFile = new BufferedReader(new FileReader(file));
			
			
			//Pattern instruction = Pattern.compile("^\\s*(?<ins>[\\w*]+)\\s*(?:(?<num1>[$]-?[0x\\d]+)|(?<reg1>[(][%][\\w]+[)])|(?:(?<sca11>-?[\\d]+)?\\s*(?:[(]\\s*(?<reg12>[%][\\w]+)?)?\\s*,?\\s*(?<reg11>[%][\\w]+)\\s*,?\\s*(?<sca12>[\\d]+)?[)]?))\\s*(?:,\\s*(?:(?<reg2>[(][%][\\w]+[)])|(?:(?<sca21>-?[\\d]+)?\\s*[(]?\\s*(?<reg22>[%][\\w]+)?\\s*,?\\s*(?<reg21>[%][\\w]+)\\s*,?\\s*(?<sca22>[\\d]+)?[)]?)))?\\s*$");
			Pattern instruction = Pattern.compile("^\\s*(?<ins>[\\w*]+)\\s*(?:(?<num1>[$]-?[0x\\d]+)|(?<reg1>[(][%][\\w]+[)])|(?:(?<sca11>-?[\\d]+)?\\s*(?:[(]\\s*(?<reg12>[%][\\w]+)?)?\\s*,?\\s*(?<reg11>[%][\\w]+)\\s*,?\\s*(?<sca12>[\\d]+)?[)]?)|(?:(?<var1>[$]?[\\w]+)))\\s*(?:,(?:\\s*(?:(?<reg2>[(][%][\\w]+[)])|(?:(?<sca21>-?[\\d]+)?\\s*[(]?\\s*(?<reg22>[%][\\w]+)?\\s*,?\\s*(?<reg21>[%][\\w]+)\\s*,?\\s*(?<sca22>[\\d]+)?[)]?))|(?:(?<var2>[$]?[\\w]+))))?\\s*$");
			
			Pattern emptyLine = Pattern.compile("^$|^(\\s*(?:(?<comm>[#]\\w*)|[.]\\w*(?:\\s*(?:[.]|[_]))?\\w*|\\w*[:])\\s*)$");
			Matcher instructionMatcher;
			Movinator checker = new Movinator(256);
			while ((line = bufferedFile.readLine()) != null ) {
				instructionMatcher = emptyLine.matcher(line);
				
				try {
					if (!instructionMatcher.matches()) {
						instructionMatcher = instruction.matcher(line);
						instructionMatcher.matches();
						
						// Print 
						/*
						System.out.println("************ RIGA ************: "+line);
						
						System.out.println("ins: " + instructionMatcher.group("ins"));
						System.out.println("num1: " + instructionMatcher.group("num1"));
						System.out.println("sca11: " + instructionMatcher.group("sca11"));
						System.out.println("reg12: " + instructionMatcher.group("reg12"));
						System.out.println("reg11: " + ((instructionMatcher.group("reg1") == null )?instructionMatcher.group("reg11"):instructionMatcher.group("reg1")));  
						System.out.println("sca12: " + instructionMatcher.group("sca12"));
						System.out.println("var1: " + instructionMatcher.group("var1"));
						System.out.println("sca21: " + instructionMatcher.group("sca21"));
						System.out.println("reg22: " + instructionMatcher.group("reg22"));
						System.out.println("reg21: " + ((instructionMatcher.group("reg2") == null )?instructionMatcher.group("reg21"):instructionMatcher.group("reg2"))); 
						System.out.println("sca22: " + instructionMatcher.group("sca22"));
						System.out.println("var2: " + instructionMatcher.group("var2"));
						*/
						
						checker.parseInstruction(
							instructionMatcher.group("ins"),
							instructionMatcher.group("num1"),   
							instructionMatcher.group("sca11"),
							instructionMatcher.group("reg12"), 
							(instructionMatcher.group("reg1") == null )?instructionMatcher.group("reg11"):instructionMatcher.group("reg1"),
							instructionMatcher.group("sca12"),
							instructionMatcher.group("var1"),
							instructionMatcher.group("sca21"),  
							instructionMatcher.group("reg22"), 
							(instructionMatcher.group("reg2") == null )?instructionMatcher.group("reg21"):instructionMatcher.group("reg2"),
							instructionMatcher.group("sca22"),
							instructionMatcher.group("var2"),
							line
						);
					}
				} catch (IllegalStateException e) {}
			}
			System.out.println(checker.getProgram());
			
		} catch (Exception e){
			System.out.println("Errore: " + e.getMessage());
		}
	}
}


//javascript regular expression
//^\s*([\w*]+)\s*(?:([$]-?[0x\d]+)|([(][%][\w]+[)])|(?:(-?[\d]+)?\s*(?:[(]\s*([%][\w]+)?)?\s*,?\s*([%][\w]+)\s*,?\s*([\d]+)?[)]?)|(?:([$]?[\w]+)))\s*(?:,(?:\s*(?:([(][%][\w]+[)])|(?:(-?[\d]+)?\s*[(]?\s*([%][\w]+)?\s*,?\s*([%][\w]+)\s*,?\s*([\d]+)?[)]?))|(?:([$]?[\w]+))))?\s*$

//java regular expression
//^\\s*(?<ins>[\\w*]+)\\s*(?:(?<num1>[$]-?[0x\\d]+)|(?<reg1>[(][%][\\w]+[)])|(?:(?<sca11>-?[\\d]+)?\\s*(?:[(]\\s*(?<reg12>[%][\\w]+)?)?\\s*,?\\s*(?<reg11>[%][\\w]+)\\s*,?\\s*(?<sca12>[\\d]+)?[)]?)|(?:(?<var1>[$]?[\\w]+)))\\s*(?:,(?:\\s*(?:(<reg2>[(][%][\\w]+[)])|(?:(?<sca21>-?[\\d]+)?\\s*[(]?\\s*(?<reg22>[%][\\w]+)?\\s*,?\\s*(?<reg21>[%][\\w]+)\\s*,?\\s*(?<sca22>[\\d]+)?[)]?))|(?:(<var2>[$]?[\\w]+))))?\\s*$
