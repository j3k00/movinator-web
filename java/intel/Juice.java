import java.nio.file.OpenOption;
import java.util.HashMap;

public class Juice {

    public String juice = "";
    private String istruzione = "";
    private HashMap<String,String> matchInstruction;

    public Juice (String istruzione, Operando leftParam, Operando rigthParam) {
        instantiateHashMap();
        constuctJuice(istruzione, leftParam, rigthParam);
    }

    /**
     * @param istruzione: tipo di istruzione da cui ricaveremo l'equazione
     * @param parametri: parametri dell istruzione
     */

    private void constuctJuice(String istruzione, Operando leftParam, Operando rigthParam) {
        switch (istruzione) {
            case "mov":
                juice = movEquations(leftParam, rigthParam);
        }
    }

    /**
     * @param parametri
     * @return
     */
    private String movEquations(Operando leftParam, Operando rigthParams){
        String result = "";

        if (
            rigthParams.numero    != null &&
            rigthParams.registro1 == null &&
            rigthParams.registro2 == null &&
            rigthParams.scalare1  == null &&
            rigthParams.scalare2  == null &&
            leftParam.registro1   != null &&
            leftParam.registro2   == null &&
            leftParam.scalare2    == null &&
            leftParam.scalare1    == null
        ) {
            result = matchInstruction.get(leftParam.registro1) + rigthParams.numero;
        } else if (
            rigthParams.numero    == null &&
            rigthParams.registro1 != null &&
            rigthParams.registro2 == null &&
            rigthParams.scalare1  == null &&
            rigthParams.scalare2  == null &&
            leftParam.registro1   != null &&
            leftParam.registro2   == null &&
            leftParam.scalare2    == null &&
            leftParam.scalare1    == null
        ) {
            result = matchInstruction.get(leftParam.registro1) + matchInstruction.get(rigthParams.registro1) + ".value";
        } else if (
            rigthParams.numero    == null &&
            rigthParams.registro1 != null &&
            rigthParams.registro2 != null &&
            rigthParams.scalare1  == null &&
            rigthParams.scalare2  == null &&
            leftParam.registro1   != null &&
            leftParam.registro2   == null &&
            leftParam.scalare2    == null &&
            leftParam.scalare1    == null
        ) {

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
}
