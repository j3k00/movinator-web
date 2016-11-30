import java.nio.file.OpenOption;
import java.util.HashMap;
/*
public class Movinjuice implements Comparable {
	String[] juice;
	long[] movid;
	Linkedlist<String> semantics;
	Linkedlist<String> prova[] = 
							eax		ecx.......................esi
		['m(d(eax)+3);3;.......................']
		['mem(def(eax)+3)']
		['mem(def(eax)+3)']
		['mem(def(eax)+3)']
		['mem(def(eax)+3)']
	
	public Movinjuice (Linkedlist<String> semantics) {
		this.semantics = semantics;
		this.juice = generateJuice();
		this.movid = squeeze();
	}
	
	private String[] generateJuice() {
		String juice = "";
		
		for()
		
		return juice;
	}
	
	private long squeeze() {
		long result = 0;
		// prendo 'i1i2s1i3'
		// ne estraggo un numero e via di log, esempio: eax puo contenere
		// intero
		// char
		// indirizzo di memoria
		// assegno un bit per ogni rappresentazione:
		// intero -> 00
		// char -> 01
		// indirizzo di memoria -> 10
		// perchè non traduco semplicemente 'i1i2s1i3' in binario? perchè ogni char occupa 16 bit, meglio fare una cosa ad hoc (DOC -> https://docs.oracle.com/javase/tutorial/java/nutsandbolts/datatypes.html)
		// quindi dimezzo, faccio stare 'i1' al posto che in 32 bit..in 16
		// short -> 16 bit
		// facciamo che useremo:
		// 2 bit piu significativi che identificano il tipo di valore contenuto nel registo, e i 14 bit meno significativi il numero progressivo:
		// esempio: 'i1'
		
		// <-tipo->|<-----------------valore------------------------------->
		// -----------------------------------------------------------------
		// | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 |
		// -----------------------------------------------------------------
		// esempio: 'c3'
		// -----------------------------------------------------------------
		// | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 |
		// -----------------------------------------------------------------
		
		new short array[];
		
		while (leggo due caratteri alla volta) {
			// s è tipo 'i1'
			short couple;
			switch (s[0]) {
				case 'i':
					couple = (short)0b0000000000000000;
					break;
				case 'c':
					couple = (short)0b0100000000000000;
					break;
				case 'm':
					couple = (short)0b1000000000000000;
					break;
			}
		
			//ora devo agganciare i successivi 14 bit, posso usare l'and
			couple = couple | ((short)s[1] & 0b0011111111111111)s;
		
			//aggiungiamo all'array di short
			array[] = couple;
		}
		
		return Math.log10(????);
	}
	
	private String squeeze(); {
		
	}
	
	@Override
	public int compareTo(Juice other) {
		// integrale da a a b(sqrt(1+f'(x)^2)))
		return Math.abs(this.movid - other.movid);
	}
}
*/