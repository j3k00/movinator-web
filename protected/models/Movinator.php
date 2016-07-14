<?php

class Movinator extends CFormModel  {
	
	public $program;
	
	public function generateCode($max, $file) {
		$this->addLine(true, false, ".section .data");
		$this->constructData_items($max);
		$this->constructData_temp();
		$this->addLine(true, false, ".global _start");
		$this->addLine(true, false, "_start:"); 
		$this->parseFile($file);
	}
	
	private function addLine($newLine = NULL,$tab = NULL, $params){
		if ($tab || $tab == NULL) {
			$this->program .= "\t";
		}
		
		$this->program .= $params;
		
		if ($newLine || $newLine == NULL) {
			$this->program .= "\n";
		}
	}
	
	private function parseFile($file){
		$handle = fopen($file, "r");
		
		if ($handle) {
			while (($line = fgets($handle)) !== false) {
				
				if(preg_match('/\s*([\w*]+)\s*(?:([$]-?[0x\d]+)|([(][%][\w]+[)])|(?:(-?[\d]+)?\s*(?:[(]\s*([%][\w]+)?)?\s*,?\s*([%][\w]+)\s*,?\s*([\d]+)?[)]?))\s*(?:,\s*(?:([(][%][\w]+[)])|(?:(-?[\d]+)?\s*[(]?\s*([%][\w]+)?\s*,?\s*([%][\w]+)\s*,?\s*([\d]+)?[)]?)))?\s*$/', $line, $patternGroup)){ 
					
					foreach( $patternGroup as $key => $pattern) {
						echo $key.': '.$pattern.'<br />'. $line;
					}
					
					$ins  = isset($patternGroup[1]) ? $patternGroup[1] : NULL;
					$num1 = isset($patternGroup[2]) ? $patternGroup[2] : NULL;
					$sca11= isset($patternGroup[4]) ? $patternGroup[4] : NULL;
					$reg12= isset($patternGroup[5]) ? $patternGroup[5] : NULL;
					
					$pattern6 = isset($patternGroup[6]) ? $patternGroup[6] : NULL;
					if (isset($patternGroup[3])) {
						$reg11= isset($patternGroup[3]) ? $pattern6 : $patternGroup[3];
					} else {
						$reg11= !isset($patternGroup[3]) ? $pattern6 : $patternGroup[3];
					}
					$sca12= isset($patternGroup[7])? $patternGroup[7] : NULL;
					$sca21= isset($patternGroup[9]) ? $patternGroup[8] : NULL;
					$reg22= isset($patternGroup[10]) ? $patternGroup[10] : NULL;
					
					$pattern11= isset($patternGroup[11]) ? $patternGroup[11] : NULL;
					
					if (isset($patternGroup[8])) {
						$reg21= isset($patternGroup[8]) ? $pattern11 : $patternGroup[8];
					} else {
						$reg21= !isset($patternGroup[8]) ? $pattern11 : $patternGroup[8];
					}
					$sca22= isset($patternGroup[12]) ? $patternGroup[12] : NULL;
					
					/* test regular expression
					print_r( "ins: ". $ins . "</br>" . 
							"num1:" . $num1 . "</br>" . 
							"sca11:" . $sca11 . "</br>" .
							"reg12:" . $reg12 . "</br>" . 
							"pattern6" .$pattern6 . "</br>" .
							"reg11" .$reg11 . "</br>" .
							"sca12" . $sca12 . "</br>" .
							"sca21" . $sca21 . "</br>" .
							"reg22" .$reg22 . "</br>" .
							"pattern11" .$pattern11 . "</br>" .
							"reg21" .$reg21 . "</br>" .
							"sca22" .$sca22 . "</br>" );
						*/
					$this->parseInstruction(
						$ins,
						$num1,
						$sca11,
						$reg12,
						$reg11,
						$sca12,
						$sca21,
						$reg22,
						$reg21,
						$sca22,
						$line
					);
				}
			}
		fclose($handle);
		}
	}
	
	
	public function parseInstruction (
		$ins,
		$num1,
		$sca11, 
		$reg12,
		$reg11,
		$sca12,
		$sca21,
		$reg22, 
		$reg21, 
		$sca22,
		$line
	) {
		/* test input param
		print_r( "ins: ". $ins . "</br>" . 
		"num1:" . $num1 . "</br>" . 
		"sca11:" . $sca11 . "</br>" .
		"reg12:" . $reg12 . "</br>" . 
		"reg11" .$reg11 . "</br>" .
		"sca12" . $sca12 . "</br>" .
		"sca21" . $sca21 . "</br>" .
		"reg22" .$reg22 . "</br>" .
		"reg21" .$reg21 . "</br>" .
		"sca22" .$sca22 . "</br>" );
		*/
		switch ($ins) {
			case "mov":
			case "movl":
				$this->addLine(true,true,preg_replace("/^\s*/", "", $line));
				break;
			
			case "push":
			case "pushl":
				$this->addLine(true,true,"# " . $line);
				$this->push(
					$num1,  
					$sca11, 
					$reg12,
					$reg11,
					$sca12
				);
				break;
			
			case "pop":
			case "popl":
				$this->addLine(true,true,"# " . $line);
				$this->pop(
					$sca11, 
					$reg12,
					$reg11,
					$sca12
				);
				break;
			
			case "decl":
				$this->addLine(true,true,"# " . $line);
				$this->dec32(
					$sca11,
					$reg11,
					$reg12,
					$sca12
				);
				break;
				
			case "inc":
			case "incl":
				$this->addLine(true,true,"# " . $line);
				$this->inc32(
					$sca11,
					$reg11,
					$reg12,
					$sca12
				);
				break;
				
			case "add":
			case "addl":
				$this->addLine(true,true,"# " . $line);
				$this->add32(
					$num1, 
					$sca11, 
					$reg11,
					$reg12,
					$sca12,
					$sca21, 
					$reg21, 
					$reg22,
					$sca22
				);
				break;
				
			
			case "sub":
			case "subl":
				$this->addLine(true,true,"# " . $line);
				$this->sub32(
					$num1,  
					$sca11, 
					$reg11,
					$reg12,
					$sca12,
					$sca21, 
					$reg21, 
					$reg22,
					$sca22
				);
				break;
				
			case "xor":
				$this->addLine(true,true,"# " . $line);
				$this->xor32(
					$reg11,
					$reg21
				);
				break;
				
			default:
				$this->addLine(true,true,"ERROR: Default case in switch: " . $line);
		}
	}
	
	/**
	* This method is used to replace push instruction into mov.
	* 
	* @param num1 push $num1
	* @param sca11 push sca11(R, R, S)
	* @param reg12 push S(reg12, R, S), push %eax, push (%esp)
	* @param reg11 push S(R, reg11, S)
	* @param sca12 push S(R, reg11, sca12)
	* 
	* @return String This returns the substitute string.
	*/ 
	public function push(
		$num1,
		$sca11,
		$reg12, 
		$reg11,
		$sca12
	) {
		$stackRegister = (($this->stackElements!=0) ? $this->stackElements*4 : "") . "(%esp)";
		
		$this->generateMov(
			$this->generateLeftParam(
				$num1,
				$sca11,
				$reg11,
				$reg12,
				$sca12
			),
			$stackRegister 
		);
		$this->stackElements++;
	}
	
	/**
	* This method is used to replace pop instruction into mov.
	* 
	* @param sca11 pop sca11(R, R, S)
	* @param reg12 pop S(reg12, R, S)
	* @param reg11 pop S(R, reg11, S), pop reg11, pop (reg11)
	* @param sca12 pop S(R, reg11, sca12)
	* 
	* @return String This returns the substitute string.
	*/ 
	public function pop(
		$sca11, 
		$reg12,
		$reg11,
		$sca12
	) {
		$this->stackElements--;
		$stackRegister = (($this->stackElements!=0) ? $this->stackElements*4 : "") + "(%esp)";
		
		
		if ($this->stackElements < 0) {
			$this->addLine("ERROR: Pop instruction is invalid: there are no elements in stack");
			
		}else {
			$this->generateMov(
				$this->generateRightParam(
					$sca11,
					$reg11,
					$reg12,
					$sca12
				),
				$stackRegister 
			);
		}
	}
	
	/**
	* This method is used to replace inc instruction into mov.
	* 
	* @param reg11 inc %reg11
	* 
	* @return String This returns the substitute string.
	*/ 
	public function inc32(
		$sca11,
		$reg11,
		$reg12,
		$sca12
	) {
		$regSwap = "%edx";
		$regSwap2 = "%ecx";
		
		if ($reg12 == null){
			if (strpos($reg11,'%edx')) {
				$regSwap = "%eax";
			}
		}else {
			if (strpos($reg11,'%edx') || strpos($reg12,'%edx')) {
				$regSwap = "%eax";
			}
			if (strpos($reg11,'%ecx') || strpos($reg12,'%ecx')) {
				$regSwap = "%ebx";
			}
		}
		//incl %eax
		
		if (
			$reg11 != null &&
			$sca11 == null &&
			$sca12 == null &&
			$reg12 == null &&
			!($this->isMemoryAddress($reg11))
		){
			$this->generateMov($regSwap , "temp");
			$this->generateMov("$4", $regSwap);
			$this->generateMov("data_items+512(" . $regSwap . ", " . $reg11 . ", 4)", $reg11);
			$this->generateMov("temp", $regSwap);
			
		//incl mem
		}else{
			$this->generateMov($regSwap , "temp");
			$this->generateMov($regSwap2 , "temp2");
			
			$this->generateMov("$4", $regSwap);
			
			$this->generateMov($this->generateRightParam($sca11,$reg11,$reg12,$sca12),$regSwap2);
			$this->generateMov("data_items+512(" . $regSwap . ", " . $regSwap2 . ", 4)", $regSwap2);
			
			$this->generateMov($regSwap2,$this->generateRightParam($sca11,$reg11,$reg12,$sca12));
			
			$this->generateMov("temp", $regSwap);
			$this->generateMov("temp2", $regSwap2);
		}
	}
	
	
	/**
	* This method is used to replace dec instruction into mov.
	* 
	* @param reg11 dec %reg11
	* 
	* @return String This returns the substitute string.
	*/ 
	public function dec32(
		$sca11, 
		$reg11,
		$reg12,
		$sca12
	) {
		$regSwap = "%edx";
		$regSwap2 = "%ecx";
		
		if ($reg12 == null){
			if (strpos($reg11,'%edx')) {
				$regSwap = "%eax";
			}
		}else {
			if (strpos($reg11,'%edx') || strpos($reg12,'%edx')) {
				$regSwap = "%eax";
			}
			if (strpos($reg11,'%ecx') || strpos($reg12,'%ecx')) {
				$regSwap = "%ebx";
			}
		}

		//decl %eax
		if (
			$reg11 != null &&
			$sca11 == null &&
			$sca12 == null &&
			$reg12 == null &&
			!($this->isMemoryAddress($reg11))
		){
			
			$this->generateMov($regSwap , "temp");
			$this->generateMov("$-4", $regSwap);
			$this->generateMov("data_items+512(" . $regSwap . ", " . $reg11 . ", 4)", $reg11);
			$this->generateMov("temp", $regSwap);
			
		//decl mem
		}else{
			$this->generateMov($regSwap , "temp");
			$this->generateMov($regSwap2 , "temp2");
			
			$this->generateMov("$-4", $regSwap);
			$this->generateMov($this->generateRightParam($sca11,$reg11,$reg12,$sca12),$regSwap2);
			$this->generateMov("data_items+512(" . $regSwap . ", " . $regSwap2 . ", 4)", $regSwap2);
			
			$this->generateMov($regSwap2,$this->generateRightParam($sca11,$reg11,$reg12,$sca12));
			
			$this->generateMov("temp", $regSwap);
			$this->generateMov("temp2", $regSwap2);
		}
	}
	/**
	* This method is used to replace add instruction into mov.
	* 
	* @param num1		addl $num1, R addl $num1,M
	* @param sca11		addl sca11(R,R,S) , R
	* @param reg11		addl S(R,reg11,S) , R
	* @param reg12		addl S(reg12,R,S) , R
	* @param sca12		addl S(R,R,sca12) , R
	* @param sca21		addl N , sca12(R,R,S) , addl R , sca12(R,R,S)
	* @param reg21		addl N , S(R,reg21,S) , addl R , S(R,reg21,S)
	* @param reg22		addl N , S(reg22,R,S) , addl R , S(reg22,R,S)
	* @param sca22		addl N , S(R,R,sca22) , addl R , S(R,R,sca22)
	* 
	* @return String This returns the substitute string.
	*/
		
	public function add32(
		$num1,
		$sca11,
		$reg11,
		$reg12,
		$sca12,
		$sca21,
		$reg21,
		$reg22,
		$sca22
	) {
		$regSwap  = "%edx"; //TODO usare stack
		$regSwap2 = "%ecx"; //usare stack
		
		//add intReg --> add $3,%eax --> FIXATO
		if (
			$num1 != null && 
			$reg21 != null && 
			!($this->isMemoryAddress($reg21)) && 
			$sca21 == null && 
			$sca22 == null
		) {
			//control who the reg21 isn't equals to edx
			if (strpos($reg21,"%edx")) {
				$regSwap = "%eax";
			}
			
			//move into reg21 the value corresponding of its memory cell. Es. value 4 is stored in memory cell 16
			$this->generateMov("data_items+512(," . $reg21 .",8)", $reg21);
			$this->generateMov("data_items+512(," . $reg21 .",8)", $reg21);
			
			//Save content of edx in a temporary variable
			$this->generateMov($regSwap, "temp");
			
			//move leftExp into edx
			$this->generateMov($num1, $regSwap);
			
			//recover the momory cell corresponding at the sum leftExp+RighExp
			$this->generateMov("data_items+512(" . $reg21 . "," . $regSwap . ",4)", $reg21 );
			
			//restore the value of edx
			$this->generateMov("temp" , $regSwap );
		
		//add intMem --> add $3,(%eax) , add $3, 4(%eax) , ...
		}else if (
			$num1  != null &&
			$reg21 != null &&
			($this->isMemoryAddress($reg21) ||
				($reg22 != null || 
				$sca21 != null || 
				$sca22 != null)
			)
		){
			
			//control swap Registers, don't lose the prevoius values
			if ($eg22 == null){
				if (strpos($reg21,'%edx')) {
					$regSwap  = "%eax";
				}
			}else{
			
				if (strpos($reg21,'%edx') || strpos($reg22,'%edx')) {
					$regSwap  = "%eax";
				} 
				if (strpos($reg21,'%ecx') || strpos($reg22,'%ecx')) {
					$regSwap2 = "%ebx";
				}
			}
			
			//save value into temp register
			$this->generateMov($regSwap, "temp");
			$this->generateMov($regSwap2, "temp2");
			
			$this->generateMov($this->generateRightParam($sca21 , $reg21 , $reg22 , $sca22) , $regSwap);
			
			//move the pointer value into itself
			$this->generateMov( "data_items+512(," . $regSwap . ",8)" , $regSwap ); 
			$this->generateMov( "data_items+512(," . $regSwap . ",8)" , $regSwap ); 
			
			$this->generateMov( $num1 , $regSwap2 );
			
			$this->generateMov( "data_items+512(" . $regSwap . "," . $regSwap2 . ",4)" , $regSwap );
			
			$this->generateMov( $regSwap , $this->generateRightParam( $sca21 , $reg21 , $reg22 , $sca22 ));
			
			//restore previuos values
			$this->generateMov("temp", $regSwap);
			$this->generateMov("temp2", $regSwap2);
		
		//add reg,reg --> add %eax,%ebx
		}else if (
			$num1  == null &&
			$reg11 != null &&
			$reg21 != null &&
			$reg12 == null &&
			$reg22 == null &&
			$sca11 == null &&
			$sca12 == null &&
			$sca21 == null &&
			$sca22 == null &&
			!($this->isMemoryAddress($reg11)) &&
			!($this->isMemoryAddress($reg21)) 
		){
			echo !($this->isMemoryAddress($reg11)) . " " .
			!($this->isMemoryAddress($reg21)) ;
			echo $reg11;
			echo $reg21;
			$this->generateMov( "data_items+512(," . $reg21 .",8)" , $reg21 );
			$this->generateMov( "data_items+512(," . $reg21 .",8)" , $reg21 );
			
			$this->generateMov( "data_items+512(" . $reg21 . "," . $reg11 .",4)" ,$reg21 );
			
		//addl mem,reg --> add (%eax),%ebx, add 4(%eax),%ebx, ... 
		}else if (
			$num1  == null &&
			$reg11 != null &&
			$reg21 != null &&
			$reg22 == null &&
			$sca21 == null &&
			$sca22 == null &&
			( $this->isMemoryAddress($reg11) ||
				($sca11 != null || $sca12 != null || $reg12 != null)
			)
		) {
			
			//control who the reg21 isn't equals to edx
			if (strpos($reg21,"%edx")) {
				$regSwap = "%eax";
			}
			
			$this->generateMov($regSwap, "temp");
			
			$this->generateMov( "data_items+512(," . $reg21 .",8)" , $reg21 );
			$this->generateMov( "data_items+512(," . $reg21 .",8)" , $reg21 );
				
			$this->generateMov($this->generateLeftParam($num1,$sca11,$reg11,$reg12,$sca12) , $regSwap );
			
			$this->generateMov( "data_items+512(" . $reg21 . "," . $regSwap . ",4)" , $reg21) ;
			
			$this->generateMov("temp", $regSwap);
			
		//addl reg,mem --> addl 
		} else if (
			$num1  == null &&
			$reg11 != null &&
			$reg21 != null &&
			$reg12 == null &&
			$sca11 == null &&
			$sca12 == null &&
			($this->isMemoryAddress($reg21) ||
			($reg22 != null || $sca21 != null || $sca22 != null)
			)
		) {
			
			//control who the reg21 isn't equals to edx
			if (strpos($reg21,"%edx")) {
				$regSwap = "%eax";
			}
			
			$this->generateMov($regSwap, "temp");
			
			$this->generateMov($this->generateRightParam($sca21,$reg21,$reg22,$sca22) , $regSwap );
			
			$this->generateMov("data_items+512(," . $regSwap . ",8)" , $regSwap );
			$this->generateMov("data_items+512(," . $regSwap . ",8)" , $regSwap );
			
			$this->generateMov("data_items+512(" . $regSwap . "," . $reg11 . ",4)" , $regSwap );
			$this->generateMov($regSwap , $this->generateRightParam($sca21,$reg21,$reg22,$sca22));
			
			$this->generateMov("temp" , $regSwap);
		} else {
			$this->addLine(true,true,"ERRORE: parse add instruction");
		}
	}
	
	
	public function sub32(
		$num1,
		$sca11,
		$reg11,
		$reg12,
		$sca12,
		$sca21,
		$reg21,
		$reg22,
		$sca22
	) {
		$regSwap  = "%edx"; 
		$regSwap2 = "%ecx";
		
		//sub intReg --> sub $3,%eax
		if (
			$num1 != null && 
			$reg21 != null && 
			!($this->isMemoryAddress($reg21)) && 
			$sca21 == null && 
			$sca22 == null
		) {
			//control who the reg21 isn't equals to edx
			if (strpos($reg21,"%edx")) {
				$regSwap = "%eax";
			}
			
			//move into reg21 the value corresponding of its memory cell. Es. value 4 is stored in memory cell 16
			$this->generateMov("data_items+512(," . $reg21 . ",8)", $reg21);
			$this->generateMov("data_items+512(," . $reg21 . ",8)", $reg21);
			
			//Save content of edx in a temporary variable
			$this->generateMov($regSwap, "temp");
			
			//move leftExp into edx
			$this->generateMov($num1, $regSwap);
			
			//recover negative value
			$this->generateMov("data_items_negative(," . $regSwap . ",4)",$regSwap);
			
			//recover the momory cell corresponding at the sum leftExp+RighExp
			$this->generateMov("data_items+512(" . $reg21 . "," . $regSwap . ",4)", $reg21 );
			
			//restore the value of edx
			$this->generateMov("temp" , $regSwap );
		
		//sub intMem --> sub $3,(%eax) , sub $3, 4(%eax) , ...
		}else if (
			$num1  != null &&
			$reg21 != null &&
			($this->isMemoryAddress($reg21) ||
				($reg22 != null || 
				$sca21 != null || 
				$sca22 != null)
			)
		){
			
			//control swap Registers, don't lose the prevoius values
			if ($reg22 == null){
				if (strpos($reg21,"%edx")) {
					$regSwap  = "%eax";
				}
			}else{
			
				if (strpos($reg21,"%edx") || strpos($reg22,"%edx") ) {
					$regSwap  = "%eax";
				} 
				if ( strpos($reg22,"%ecx") || strpos($reg21,"%ecx")) {
					$regSwap2 = "%ebx";
				}
			}
			
			//save value into temp register
			$this->generateMov($regSwap, "temp");
			$this->generateMov($regSwap2, "temp2");
			
			$this->generateMov($this->generateRightParam($sca21 , $reg21 , $reg22 , $sca22) , $regSwap);
			
			//move the pointer value into itself
			$this->generateMov( "data_items+512(," . $regSwap . ",8)" , $regSwap ); 
			$this->generateMov( "data_items+512(," . $regSwap . ",8)" , $regSwap ); 
			
			$this->generateMov( $num1 , $regSwap2 );
			
			//recover negative value
			$this->generateMov("data_items_negative(," . $regSwap2 . ",4)",$regSwap2);
			
			$this->generateMov( "data_items+512(" . $regSwap . "," . $regSwap2  . ",4)" , $regSwap );
			
			$this->generateMov( $regSwap , $this->generateRightParam( $sca21 , $reg21 , $reg22 , $sca22 ));
			
			//restore previuos values
			$this->generateMov("temp", $regSwap);
			$this->generateMov("temp2", $regSwap2);
		//sub reg,reg --> sub %eax,%ebx
		}else if (
			$num1  == null &&
			$reg11 != null &&
			$reg21 != null &&
			$reg12 == null &&
			$reg22 == null &&
			$sca11 == null &&
			$sca12 == null &&
			$sca21 == null &&
			$sca22 == null &&
			!($this->isMemoryAddress($reg11)) &&
			!($this->isMemoryAddress($reg21)) 
		){
			
			if (strpos($reg21,"%edx")) {
				$regSwap = "%eax";
			}
			
			$this->generateMov($regSwap , "temp");
			$this->generateMov($reg11 ,$regSwap);
			
			$this->generateMov("data_items_negative(," . $regSwap . ",4)",$regSwap);
			
			$this->generateMov( "data_items+512(," . $reg21 .",8)" ,  $reg21 );
			$this->generateMov( "data_items+512(," . $reg21 .",8)" ,  $reg21 );
			
			$this->generateMov( "data_items(" . $reg21 . "," . $regSwap  . ",4)" ,$reg21 );
			$this->generateMov( "temp" , $regSwap);
			
			
		//sub mem,reg --> sub (%eax),%ebx, sub 4(%eax),%ebx, ... 
		}else if (
			$num1  == null &&
			$reg11 != null &&
			$reg21 != null &&
			$reg22 == null &&
			$sca21 == null &&
			$sca22 == null &&
			( $this->isMemoryAddress($reg11) ||
				($sca11 != null || $sca12 != null || $reg12 != null)
			)
		) {
			
			//control who the reg21 isn't equals to edx
			if (strpos($reg21,"%edx")) {
				$regSwap = "%eax";
			}
			
			$this->generateMov($regSwap, "temp");
			
			$this->generateMov( "data_items+512(," . $reg21 . ",8)" , $reg21 );
			$this->generateMov( "data_items+512(," . $reg21 . ",8)" , $reg21 );
			
			$this->generateMov($this->generateLeftParam($num1,$sca11,$reg11,$reg12,$sca12) , $regSwap );
			$this->generateMov("data_items_negative(," . $regSwap . ",4)",$regSwap);
			
			$this->generateMov( "data_items+512(" . $reg21 . "," . $regSwap . ",4)" , $reg21) ;
			
			$this->generateMov("temp", $regSwap);
			
		//sub reg,mem --> sub 
		} else if (
			$num1  == null &&
			$reg11 != null &&
			$reg21 != null &&
			$reg12 == null &&
			$sca11 == null &&
			$sca12 == null &&
			($this->isMemoryAddress($reg21) ||
			($reg22 != null || $sca21 != null || $sca22 != null)
			)
		) {
			
			//control who the reg21 isn't equals to edx
			if ($reg22 == null){
				if ( strpos($reg21,"%edx") ) {
					$regSwap  = "%eax";
				}
			}else{
			
				if ( strpos($reg21,"%edx") || strpos($reg22,"%edx") ) {
					$regSwap  = "%eax";
				} 
				if ( strpos($reg22,"%ecx") || strpos($reg21,"%ecx") ) {
					$regSwap2 = "%ebx";
				}
			}
			
			$this->generateMov($regSwap, "temp");
			$this->generateMov($regSwap2, "temp2");
			
			$this->generateMov($this->generateRightParam($sca21,$reg21,$reg22,$sca22) , $regSwap );
			$this->generateMov($reg11, $regSwap2);
			
			$this->generateMov("data_items_negative(," . $regSwap2 . ",4)",$regSwap2);
			
			$this->generateMov("data_items+512(," . $regSwap . ",8)" , $regSwap );
			$this->generateMov("data_items+512(," . $regSwap . ",8)" , $regSwap );
			
			$this->generateMov("data_items+512(" . $regSwap . "," . $regSwap2 . ",4)" , $regSwap );
			
			$this->generateMov($regSwap , $this->generateRightParam($sca21,$reg21,$reg22,$sca22));
			
			$this->generateMov("temp" , $regSwap);
			$this->generateMov("temp2" , $regSwap2);
			
		} else {
			$this->addLine(true,true,"Errore: parse add instruction");
		}
	}
	
	
	/*
	 * Utils Method
	*/
	
	
	/**
	* This method is used to create mov instructions like:
	* movl $4, %eax
	* movl %eax, %ebx
	* movl (%eax), %ebx
	* 
	* or
	* 
	* movl $4, %eax
	* movl %eax, (%eax)
	* ...
	* 
	* @param num1 push $num1
	* 
	* @return String This returns the substitute string.
	*/ 
	public function generateMov($param1, $param2) {
		$this->addLine(true,true,"movl\t". $param1 . ", " . $param2);
	}
	
	/**
	* This method is used to generate left side of instruction
	* 
	* @param $num1, $0x0
	* @param sca1 sca1(R, R, S)
	* @param reg1 S(R, reg1, S)
	* @param reg2 S(reg2, R, S)
	* @param sca2 S(R, R, sca2)
	* 
	* @return String This returns the substitute string.
	*/ 
	public function generateLeftParam(
		$num1,
		$sca1,
		$reg1,
		$reg2,
		$sca2
	) {
		$result = "";
		
		if ($num1 != null) {
			$result = $num1;
		} else {
			$result = $this->generateParam(
				$sca1,
				$reg1,
				$reg2,
				$sca2
			);
		}
		
		return $result;
	}
	
	/**
	* This method is used to generate right side of instruction
	* 
	* @param sca1 sca1(R, R, S)
	* @param reg1 S(R, reg1, S)
	* @param reg2 S(reg2, R, S)
	* @param sca2 S(R, R, sca2)
	* 
	* @return String This returns the substitute string.
	*/ 
	public function generateRightParam(
		$sca1,
		$reg1,
		$reg2,
		$sca2
	) {
		$result = "";
		
		$result = $this->generateParam(
			$sca1,
			$reg1,
			$reg2,
			$sca2
		);
		
		return $result;
	} 
	
	/**
	* This method is used to generate combinations about params
	* 
	* @param sca1 add N, sca21(R, R, S)
	* @param reg1 add N, S(R, reg21, S)
	* @param reg2 add N, S(reg22, R, S)
	* @param sca2 add N, S(R, R, sca22)
	* 
	* @return String This returns the substitute string.
	*/ 
	public function generateParam(
		$sca1,
		$reg1,
		$reg2,
		$sca2
	) {
		
		$result = "";
		// %esp, (%esp)
		if (
			$sca1 == null && 
			$sca2 == null && 
			$reg1 != null &&
			$reg2 == null 
		) {
			$result = $reg1;
			
		// 4(%esp)
		} else if (
			$sca1 != null && 
			$sca2 == null && 
			$reg1 != null &&
			$reg2 == null 
		) {
			$result = $sca1 . "(" . $reg1 . ")";
			
		// (, %esp, 4)
		} else if (
			$sca1 == null &&
			$sca2 != null &&
			$reg1 != null &&
			$reg2 == null
		) {
			$result = "(, ". $reg1 . ", ". $sca2 . ")";
			
		// 4(, %esp, 4)
		} else if (
			$sca1 != null && 
			$sca2 != null && 
			$reg1 != null &&
			$reg2 == null 
		) {
			$result = $sca1 . "(, " . $reg1 . ", " . $sca2 . ")";
			
		// (%esp, %esi, 4)
		}else if ( 
			$sca1 == null &&
			$sca2 == null &&
			$reg1 != null &&
			$reg2 != null 
		) {
			$result = "(" . $reg2 . "," . $reg1 . ")";
			
		// (%esp, %esi, 4)
		} else if (
			$sca1 == null && 
			$sca2 != null && 
			$reg1 != null &&
			$reg2 != null 
		) {
			$result = "(" . $reg2 . ", " . $reg1 . ", " . $sca2 . ")";
			
		// 4(%esp, %esi, 4)
		} else if (
			$sca1 != null && 
			$sca2 != null && 
			$reg1 != null &&
			$reg2 != null 
		) {
			$result = $sca1 . "(" . $reg2 . ", " . $reg1 . ", " . $sca2 . ")";
			
		} else {
			$result = "ERROR FUNCTION: generateParam";
		}
		
		return $result;
	}
	
	public function xor32(
		$reg11,
		$reg21
	) {
		$regSwap = "%edx";
		$regSwap2 = "%ecx";
		
		if ( strpos($reg11,"%edx") || strpos($reg21,"%edx") ) {
			$regSwap  = "%eax";
		} 
		if ( strpos($reg11,"%ecx") || strpos($reg21,"%ecx") ) {
			$regSwap2 = "%ebx";
		}
		
		$this->generateMov($regSwap  , "temp");
		$this->generateMov($regSwap2 , "temp2");
		
		$this->generateMov($reg11 , $regSwap);
		$this->generateMov($reg21 , $regSwap2);
		
		$this->generateMov("data_items+512(," . $regSwap . ",8)", $regSwap);
		$this->generateMov("data_items+512(," . $regSwap . ",8)", $regSwap);
		
		$this->generateMov("data_items+512(," . $regSwap2 . ",8)", $regSwap2);
		$this->generateMov("data_items+512(," . $regSwap2 . ",8)", $regSwap2);
		
		$this->generateMov("$0","data_items+512(" . $regSwap . ")" );
		$this->generateMov("$1","data_items+512(" . $regSwap2 . ")" );
		
		$this->generateMov("data_items+512(" . $regSwap . ")" , "%esi");
		
		$this->generateMov($reg11 , "data_items+512(" . $regSwap . ")" );
		$this->generateMov($reg21 , "data_items+512(" . $regSwap2 . ")" );
		
		$this->generateMov("temp", $regSwap  );
		$this->generateMov("temp2" ,$regSwap2 );
	}
	
	/**
	* This method is used to create an array with
	* as many elements as specified in input
	* 
	* @param max the max namber of the array's elements
	* 
	* @return String This returns the assembly initialization of array.
	*/
	public function constructData_items($max) {
		$this->addLine(true, false,"data_items:");
		$this->addLine(false, true, ".long");
		
		$numMax = $max/2;
		
		for ($i = -$numMax; $i < $numMax; $i++) {
			$this->addLine(false, false, " " . $i . (($i < $numMax-1) ? "," : ""));
		}
		
		$this->addLine(true, false, "");
	}
	
	public function constructData_temp() {
		$this->addLine(true, false,"temp:");
		$this->addLine(true, true, ".long 0");
		
		$this->addLine(true, false,"temp2:");
		$this->addLine(true, true, ".long 0");
	}
	
	public function isMemoryAddress($s){
		if (strpos($s,"(")) {
			return true;
		}
		
		return false;
	}
	
}
 
