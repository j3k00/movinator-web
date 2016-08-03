import java.io.File;
import java.io.FileReader;
import java.io.BufferedReader;

import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.Map;

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
		Map<String, Integer> freq = new HashMap<String, Integer>();
		
		for (String fileName: args) {
			try {
				String line = "";
				String program = "";
				
				File file = new File(fileName);
				BufferedReader bufferedFile = new BufferedReader(new FileReader(file));
				
				
				Pattern instruction = Pattern.compile("^\\s*(?<ins>[\\w*]+).*$");
				Matcher instructionMatcher;
				
				while ((line = bufferedFile.readLine()) != null) {
					try {
						instructionMatcher = instruction.matcher(line);
						instructionMatcher.matches();
						
						String ins = instructionMatcher.group("ins");
						
						if (freq.get(ins) != null) {
							freq.put(ins, freq.get(ins)+1);
						} else {
							freq.put(ins, 0);
						}
					} catch (IllegalStateException e) {}
				}
				
			} catch (Exception e){
				System.out.println("Errore: " + e.getMessage());
			}
		}
		
		System.out.println("Instructions\t" + "| Frequency\n---------------------------");
		for(Map.Entry<String, Integer> entry : freq.entrySet()) {
			System.out.println(entry.getKey() + "\t\t| " + entry.getValue());
			System.out.println("---------------------------");
		}
	}
}



