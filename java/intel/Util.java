public class Util {
	
	public static String generateMov(String param1, String param2) {
		return "movl\t" + " " + param1 + ", " + param2;
	}
	
	public static String addLine(Boolean newLine, Boolean tab, String... params){
		String program = "";
		if (tab) {
			program += "\t";
		}
		
		for (String param: params) {
			program += param;
		}
		
		if (newLine) {
			program += "\n";
		}
		
		return program;
	}
	
	public static String constructData_items(int max) {
		String result = "";
		result += addLine(true, false,"data_items:");
		result += addLine(false, true, ".long");
		
		int numMax = max/2;
		
		for (int i = -numMax; i < numMax; i ++) {
			result += addLine(false, false, " " + i + ((i < numMax-1) ? "," : ""));
		}
		
		result += addLine(true, false, "");
		return result;
	}
	
	public static String constructData_temp() {
		String result = "";
		result += addLine(true, false,"temp:");
		result += addLine(true, true, ".long 0");
		
		result += addLine(true, false,"temp2:");
		result += addLine(true, true, ".long 0");
	}
	
	public static Boolean isMemoryAddress(String s){
		if (s.indexOf("(") < 0) {
			return false;
		}
		
		return true;
	}
}
