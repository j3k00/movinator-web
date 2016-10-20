public class Juice implements Comparable{

	public String juice = "";
	private String istruzione = "";
	
	

	public Juice (String istruzione, String parametri) {
		constuctJuice(istruzione, parametri);
	}

	/**
	 * @param istruzione: tipo di istruzione da cui ricaveremo l'equazione
	 * @param parametri: parametri dell istruzione
	 */
	private void constuctJuice(String istruzione,String parametri) {
		switch (istruzione) {
			case "mov":
				juice = movEquations(parametri);
		}
	}

	/**
	 * @param parametri
	 * @return
	 */
	private String movEquations(String parametri){
		Operando op = new Operando(parametri);
		String result = "";

		//
		// TODO
		//
		if () {

		} else if () {

		}

		return result;
	}

	/**
	 * @param register
	 * @return
	 */
	private String returnIdentifierRegister(String register) {
		switch (register) {
			case "eax":
				return "r1";

			case "ebx":
				return "r2";

			case "ecx":
				return "r3";

			case "edx":
				return "r4";

			case "eip":
				return "RP1";

			case "esp":
				return "RP2";

			case "ebp":
				return "RP3";

			case "esi":
				return "RI1";

			case "edi":
				return "RI2";

			default:
				return "";
		}
	}
	
	@Override
	public int compareTo(Juice otherJuice) {       
		
		// calcolare log in base dieci di this e di otherJuice
		//ritornare il risultato della sottrazione normalizzato
		
		return 0;
	}
}
