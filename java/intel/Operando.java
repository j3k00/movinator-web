import java.io.File;
import java.io.FileReader;
import java.io.BufferedReader;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Operando {
	
	String registro1 = "";
	String registro2 = "";
	String scalare1  = "";
	String scalare2  = "";
	String puntatore = "";
	String registroSpeciale = "";
	
	public Operando(String leftOperando) {
		constructOperando(leftOperando);
	}
	private void constructOperando(String leftOperando) {
			Pattern instruction = Pattern.compile("^\\s*(?:(\\w+)|([0x]\\w+)|((\\w*\\s\\w*\\s*)[[](\\w*)\\s*(?:([+]\\s\\w+\\s*([+]?[-]?\\s*[0x]\\w+)?)|([-]?[+]?\\s*[0x]\\w*))?[\\]]\\s*)|((\\w*\\s\\w*\\s*)(\\w*)[:]([0x]\\w+)))?\\s*$");
			Matcher instructionMatcher;
			instructionMatcher = instruction.matcher(leftOperando);
			instructionMatcher.matches();
			System.out.println(instructionMatcher.group());
			System.out.println(512+4*4);
	}
	
}

//^\s*(?:(\w+)|([0x]\w+)|((\w*\s\w*\s*)[[](\w*)\s*(?:([+]\s\w+\s*([+]?[-]?\s*[0x]\w+)?)|([-]?[+]?\s*[0x]\w*))?[\]]\s*)|((\w*\s\w*\s*)(\w*)[:]([0x]\w+)))?\s*$
