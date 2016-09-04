import java.io.File;
import java.io.FileReader;
import java.io.BufferedReader;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.StringTokenizer;

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
			
			Operando rOperand;
			Operando lOperand;
			String instr;
			int count = 0;
			Pattern emptyLine = Pattern.compile("^$|^(\\s*(?:(?<comm>[#]\\w*)|[.]\\w*(?:\\s*(?:[.]|[_]))?\\w*|\\w*[:])\\s*)$");
			Pattern instruction = Pattern.compile("^\\s*(?<instruction>\\w+)\\s*(?<body>.*)$");
			
			Matcher instructionMatcher;
			Movinator checker = new Movinator(256);
			while ((line = bufferedFile.readLine()) != null ) {
				instructionMatcher = emptyLine.matcher(line);
				try {
					if (!instructionMatcher.matches()) {
						instructionMatcher = instruction.matcher(line);
						
						if (instructionMatcher.matches()) {
							instr = instructionMatcher.group("instruction");
							
							if (line.contains(",")) {
								String[] split = instructionMatcher.group("body").split(",");
								lOperand = new Operando(split[0]); 
								rOperand = (split.length > 1) ? new Operando(split[1]) : null;
							} else {
								lOperand = new Operando(instructionMatcher.group("body"));
								rOperand = null;
							}
							
							checker.parseInstruction(instr,lOperand,rOperand,line);
						}
					}
				} catch (IllegalStateException e) {}
			}
			System.out.println(checker.getProgram());
			
		} catch (Exception e){
			System.out.println("Errore: " + e.getMessage());
		}
	}
}
