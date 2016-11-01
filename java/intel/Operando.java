import java.io.File;
import java.io.FileReader;
import java.io.BufferedReader;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Operando {
	public final static OP_INTEGER = 0;
	public final static OP_MEMORY = 1;
	public final static OP_REGISTER = 2;
	
	public String registro1 = "";
	public String registro2 = "";
	public String scalare1 = "";
	public String scalare2 = "";
	public String puntatore = "";
	public String registroSpeciale = "";
	public String numero = "";
	public String rChiamata = "";
	public String spostamento = "";
	
	public Operando(String operand) {
		constructOperando(operand);
	}
	
	private void constructOperando(String operand) {
		try {
			Pattern instruction = Pattern.compile("^\\s*(?:(?<reg1>[a-zA-Z]+)|(?<numero>[0x]?[\\w]+)|\\s*(?:(?<puntatore>[a-zA-Z]+\\s*[a-zA-Z]+\\s*)[\\[]\\s*(?<registro1>[\\w]+)\\s*((?:[+]?\\s*(?:(?<registro2>[\\w]+)[*]?(?<scalare2>[\\d]*)?)?\\s*(?<scalare1>[+]?[-]?\\s*[0x]?[\\w]+)?))?[\\]]\\s*)|(?:(?<puntatore1>[\\w]*\\s[\\w]*\\s*)(?<rChiamata>[\\w]*)[:](?<spostamento>[0x][\\w]+)))?\\s*$");
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
			scalare2 = instructionMatcher.group("scalare2");
			rChiamata = instructionMatcher.group("rChiamata");
			spostamento = instructionMatcher.group("spostamento");
			
			System.out.println("registro1 = " + registro1 + "\n" + "numero = " + numero + "\n" + "puntatore = " + puntatore + "\n" + "registro2 = " + registro2 + "\n" + "scalare1 = " + scalare1);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public String toString() {
		String toString = "";
		
		if (
			registro1 != null &&
			puntatore == null &&
			registro2 == null &&
			scalare1  == null &&
			scalare2  == null
		) {
			toString = "eax";
		} else if (
			registro1 != null &&
			puntatore != null &&
			registro2 == null &&
			scalare1  == null &&
			scalare2  == null
		) {
			toString = puntatore + "[" + registro1 + "]";
		} else if (
			registro1 != null &&
			puntatore != null &&
			registro2 != null &&
			scalare1  == null &&
			scalare2  == null
		) {
			toString = puntatore + "[" + registro1 + "+" + registro2 + "]";
		} else if (
			registro1 != null &&
			puntatore != null &&
			registro2 == null &&
			scalare1  != null &&
			scalare2  == null
		) {
			toString = puntatore + "[" + registro1 + scalare1 + "]";
		} else if (
			registro1 != null &&
			puntatore != null &&
			registro2 != null &&
			scalare1  != null &&
			scalare2  == null
		) {
			toString = puntatore + "[" + registro1 + "+" + registro2 + " " + scalare1 + "]";
		} else if(
			registro1 != null &&
			puntatore != null &&
			registro2 != null &&
			scalare1  != null &&
			scalare2  != null
		) {
			toString = puntatore + "[" + registro1 + "+" + registro2 + "*" + scalare2 + scalare1 + "]";
		} else if (
			registro1 != null &&
			puntatore != null &&
			registro2 != null &&
			scalare1  == null &&
			scalare2  != null
		) {
			toString = puntatore + "[" + registro1 + "+" + registro2 + "*" + scalare2 + "]";
		} else if (numero != null) {
			toString = numero;
		} else {
			toString = "Errore";
		}
		return toString;
	}
	
	public int typeOperation() {
		if (
			registro1 != null &&
			puntatore == null &&
			registro2 == null &&
			scalare1  == null &&
			scalare2  == null
		) {
			return OP_REGISTER;
		} else if (
			registro1 != null &&
			puntatore != null &&
			registro2 == null &&
			scalare1  == null &&
			scalare2  == null
		) {
			return OP_MEMORY;
		} else if (
			registro1 != null &&
			puntatore != null &&
			registro2 != null &&
			scalare1  == null &&
			scalare2  == null
		) {
			return OP_MEMORY;
		} else if (
			registro1 != null &&
			puntatore != null &&
			registro2 == null &&
			scalare1  != null &&
			scalare2  == null
		) {
			return OP_MEMORY;
		} else if (
			registro1 != null &&
			puntatore != null &&
			registro2 != null &&
			scalare1  != null &&
			scalare2  == null
		) {
			return OP_MEMORY;
		}else if(
			registro1 != null &&
			puntatore != null &&
			registro2 != null &&
			scalare1  != null &&
			scalare2  != null
		) {
			return OP_MEMORY;
		} else if (
			registro1 != null &&
			puntatore != null &&
			registro2 != null &&
			scalare1  == null &&
			scalare2  != null
		) {
			return OP_MEMORY;
		} else if (numero != null) {
			return OP_INTEGER;
		}
	}
}

// regular expression from js to javascript
//^\s*(?:([a-zA-Z]+)|([0x][\w]+)|(?:([\w]*\s[\w]*\s*)[\[]([\w]*[*]?[\d]?)\s*(?:(?:[+]\s([\w]+[*]?[\d]?)\s*([+]?[-]?\s*[0x][\w]+)?)|([-]?[+]?\s*[0x][\w]*))?[\]]\s*)|(?:([\w]*\s[\w]*\s*)([\w]*)[:]([0x][\w]+)))?\s*$
//^\s*(?:(?<reg1>[a-zA-Z]+)|(?<numero>[0x]?[\w]+)|\s*(?:(?<puntatore>[a-zA-Z]+\s*[a-zA-Z]+\s*)[\[]\s*(?<registro1>[\w]+)\s*(?:(?:[+]?\s*(?<registro2>[\w]+[*]?[\d]*)?\s*(?<scalare1>[+]?[-]?\s*[0x]?[\w]+)?))?[\]]\s*)|(?:(?<puntatore1>[\w]*\s[\w]*\s*)(?<rChiamata>[\w]*)[:](?<spostamento>[0x][\w]+)))?\s*$
