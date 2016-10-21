import java.nio.file.OpenOption;
import java.util.HashMap;

public class Juice implements Comparable{
    Semantic s = new Semantic(); // è la stringa di tipo 'i1i2s1i3'
    long juice;

    public Juice (Semantic s) {
        this.s = s;
        juice = squeeze();
    }
    public String juice = "";
    private String istruzione = "";
    private HashMap<String,String> matchInstruction;

    public Juice (String istruzione, Operando leftParam, Operando rightParam) {
        instantiateHashMap();
        constuctJuice(istruzione, leftParam, rightParam);
    }

    /**
     * @param istruzione: tipo di istruzione da cui ricaveremo l'equazione
     * @param parametri: parametri dell istruzione
     */

    private void constuctJuice(String istruzione, Operando leftParam, Operando rightParam) {
        switch (istruzione) {
            case "mov":
                juice = movEquations(leftParam, rightParam);
        }
    }

    /**
     * @param leftParam
     * @param rightParams
     * @return
     */
    private String movEquations(Operando leftParam, Operando rightParams){
        String result = "";

        //mov registro, intero
        if (
            leftParam.typeOperation().compareTo("registro") == 0 &&
            rightParams.typeOperation().compareTo("intero") == 0
        ) {
            result = matchInstruction.get(leftParam.registro1) + " + " + rigthParams.numero;

        //mov registro, registro
        } else if (
            leftParam.typeOperation().compareTo("registro") == 0 &&
            rightParams.typeOperation().compareTo("registro") == 0
        ) {
            result = matchInstruction.get(leftParam.registro1) + " + " + matchInstruction.get(rigthParams.registro1) + ".value";

        //mov registro, memoria
        } else if (
            leftParam.typeOperation().compareTo("registro") == 0 &&
            rightParams.typeOperation().compareTo("memoria") == 0
        ) {
            String registro1 = matchInstruction.get(rightParams.registro1) + ".value";
            String registro2 = (rightParams.registro2 != null) ? matchInstruction.get(rightParams.registro2) + ".value" : "";
            String scalare1  = (rightParams.scalare1 != null) ? rightParams.scalare1 : "";
            String scalare2  = (rightParams.scalare2 != null) ? "*" + rightParams.scalare2 : "";

            result = matchInstruction.get(leftParam.registro1) + " mem(" + registro1 + " + " + registro2 + scalare2 + " + " + scalare1 + " )";
        }
        return result;
    }


    /**
     * @param register
     * @return
     */
    private void instantiateHashMap() {

        matchInstruction = new HashMap<String, String>();
        matchInstruction.put("eax", "RD1");
        matchInstruction.put("ebx", "RD2");
        matchInstruction.put("ecx", "RD3");
        matchInstruction.put("edx", "RD4");
        matchInstruction.put("eip", "RP1");
        matchInstruction.put("esp", "RP2");
        matchInstruction.put("ebp", "RP3");
        matchInstruction.put("esi", "RI1");
        matchInstruction.put("esi", "RI2");

    }
/*
    private String squeeze(); {
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
*/
    @Override
    public int compareTo(Juice other) {
        //return Math.abs(this.juice - other.juice);
        return 0;
    }

}
