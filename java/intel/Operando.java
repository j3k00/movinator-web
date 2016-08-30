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
	String numero = "";
	String rChiamata = "";
	String spostamento = "";
	
	public Operando (String operand) {
		constructOperando(operand);
	}
	
	private void constructOperando(String operand) {
		try {
			Pattern instruction = Pattern.compile("^\\s*(?:(?<reg1>[a-zA-Z]+)|(?<numero>[0x][\\w]+)|\\s*(?:(?<puntatore>[a-zA-Z]+\\s*[a-zA-Z]+\\s*)[\\[]\\s*(?<registro1>[\\w]+)\\s*(?:(?:[+]?\\s*(?<registro2>[\\w]*)\\s*(?<scalare1>[+]?[-]?\\s*[0x][\\w]+)?))?[\\]]\\s*)|(?:(?<puntatore1>[\\w]*\\s[\\w]*\\s*)(?<rChiamata>[\\w]*)[:](?<spostamento>[0x][\\w]+)))?\\s*$");
			Pattern instruction1 = Pattern.compile("^\\s*(?:(?<puntatore>[a-zA-Z]+\\s*[a-zA-Z]+\\s*)[\\[]\\s*(?<registro1>[\\w]+)\\s*(?:(?:[+]?\\s*(?<registro2>[\\w]+)\\s*(?<scalare1>[+]?[-]?\\s*[0x][\\w]+)?))?[\\]]\\s*)$");
			Matcher instructionMatcher;
			
			// inizializzazione del matcher
			instructionMatcher = instruction.matcher(operand);
			instructionMatcher.matches();
			
			//salvataggio dei parametri nelle variabili
			registro1 = (instructionMatcher.group("reg1") != null) ? instructionMatcher.group("reg1") : instructionMatcher.group("registro1");
			numero = instructionMatcher.group("numero");
			puntatore = (instructionMatcher.group("puntatore") != null) ? instructionMatcher.group("puntatore") : instructionMatcher.group("puntatore1");
			registro2 = instructionMatcher.group("registro2");
			scalare1 = instructionMatcher.group("scalare1");
			rChiamata = instructionMatcher.group("rChiamata");
			spostamento = instructionMatcher.group("spostamento");
			
			System.out.println(instructionMatcher.group());
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public String toString() {
		return "registro1 = " + registro1 + "\n" +
			"registro2 = " + registro2 + "\n" +
			"numero = " + numero + "\n" +
			"puntatore = " + puntatore + "\n" +
			"scalare1 = " + scalare1 + "\n" +
			"rChiamata = " + rChiamata + "\n" +
			"spostamento = " + spostamento + "\n"; 
	}
	
}

//^\\s*(?:(?<reg1>[a-zA-Z]+)|(?<numero>[0x][\\w]+)|(?:(?<puntatore>[\\w]*\\s[\\w]*\\s*)[\\[](?<registro1>[\\w]*[*]?[\\d]?)\\s*(?:(?:[+]\\s(?<registro2>[\\w]+[*]?[\\d]?)\\s*(?<scalare1>[+]?[-]?\\s*[0x][\\w]+)?)|(<?scalare1>[-]?[+]?\\s*[0x][\\w]*))?[\\]]\\s*)|(?:(?<puntatore1>[\\w]*\\s[\\w]*\\s*)(?<rChiamata>[\\w]*)[:](?<spostamento>[0x][\\w]+)))?\\s*$
//^\s*(?:([a-zA-Z]+)|([0x][\w]+)|(?:([\w]*\s[\w]*\s*)[\[]([\w]*[*]?[\d]?)\s*(?:(?:[+]\s([\w]+[*]?[\d]?)\s*([+]?[-]?\s*[0x][\w]+)?)|([-]?[+]?\s*[0x][\w]*))?[\]]\s*)|(?:([\w]*\s[\w]*\s*)([\w]*)[:]([0x][\w]+)))?\s*$
