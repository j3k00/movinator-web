public class Add {
	
	public static String AddFunction(Operando leftOp, Operando rigthOp) {
		String num1 = leftOp.num1;
		
		String num1  = leftOp.numero;  
		String reg11 = leftOp.registro1;
		String reg12 = leftOp.registro2;
		String reg21 = rigthOp.registro1;
		String reg22 = rigthOp.registro2;
		String sca11 = leftOp.scalare1;
		String sca22 = rigthOp.registro1;
		String num2  = rigthOp.numero;

		String regSwap = "edx";
		//add registro, intero
		if (
			num1  != null &&
			reg11 != null &&
			reg12 == null &&
			reg21 == null &&
			reg22 == null &&
			sca11 == null &&
			sca12 == null &&
			sca21 == null &&
			sca22 == null
		){
			String s = Integer.parseInt(num1)*4 + "";
			// utilizzo lo spostamento per andare a sommare direttamente l intero contenuto nella variabile num1
			generateMov(reg11, "[" + reg11 + "*4 + data_items +" + 512 + "+" + s + "]");
			
		// add registro, registro
		} else if (
			num1  == null &&
			reg11 != null &&
			reg12 == null &&
			reg21 != null &&
			reg22 == null &&
			sca11 == null &&
			sca12 == null &&
			sca21 == null &&
			sca22 == null
		) {
			
			generateMov(reg11, "[" + reg11 + "*8 + data_items + 512]");
			generateMov(reg11, "[" + reg11 + "*8 + data_items + 512]");
			generateMov(reg11, "[" + reg11 + reg21 +"*4 + data_items + 512]");
		
		// add memoria, intero add DWORD [eax], 5
		} else if (/* controllo add registro memoria*/true) {
			
			addLine("push" + regSwap);
			String s = Integer.parseInt(num1)*4 + "";
			generateMov(regSwap, generateRightParam(reg21,reg22,sca21,sca22));
			generateMov(regSwap, "[" + regSwap +"*4 + data_items + 512" + s + "]");
			generateMov(generateLeftParam(num1,reg21,reg22,sca21,sca22), regSwap);
			addLine("pop" + regSwap);
			
		// add memoria, registro
		} else if (true) {
			
			addLine("push" + regSwap);
			
			generateMov(regSwap, generateRightParam(reg11,reg12,sca11,sca12));
			generateMov(regSwap, "[" + regSwap + "*8 + data_items + 512]");
			generateMov(regSwap, "[" + regSwap + "*8 + data_items + 512]");
			generateMov(regSwap, "[" + regSwap + " + " + reg21 + "*4 + data_items + 512]");
			generateMov(generateLeftParam(num1,reg11,reg12,sca11,sca12), regSwap);
			
			addLine("pop " + regSwap);
			
		// add registro, memoria
		} else if(true) {
			
			addLine("push" + regSwap);
			generateMov(regSwap, generateRightParam(reg21,reg22,sca21,sca22));
			generateMov(reg11, "[" + reg11 + "*8 + data_items + 512]");
			generateMov(reg11, "[" + reg11 + "*8 + data_items + 512]");
			generateMov(reg11, "[" + reg11 + " + " + regSwap +"*4 + data_items + 512]");
			addLine("pop " + regSwap);
		} else {
			addLine(";Error parse add instruction");
		}
	}
}
