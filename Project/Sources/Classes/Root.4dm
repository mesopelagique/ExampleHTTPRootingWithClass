Class constructor
	
Function manage($path : Variant)
	
	var $elements : Collection
	Case of 
		: (Value type:C1509($path)=Is text:K8:3)
			If ((Length:C16($path)>0) && ($path[[1]]="/"))
				$path:=Delete string:C232($path; 1; 1)
			End if 
			
			$elements:=Split string:C1554($path; "/")
		: (Value type:C1509($path)=Is collection:K8:32)
			$elements:=$path
		Else 
			ASSERT:C1129(False:C215; "Not correct path type"+String:C10(Value type:C1509($path)))
			return 
	End case 
	
	If ($elements.length=0)
		This:C1470.index()
	Else 
		var $element : Text
		$element:=$elements.shift()
		
		Case of 
			: (OB Instance of:C1731(This:C1470[$element]; 4D:C1709.Function))
				This:C1470[$element].call(This:C1470)
				
			: ((Value type:C1509(This:C1470[$element])=Is object:K8:27) && (OB Instance of:C1731(This:C1470[$element].manage; 4D:C1709.Function)))
				
				This:C1470[$element].manage($elements)
				
			Else 
				
				// error
				
		End case 
		
	End if 
	
	// MARK:- entry point
	
	
	// call for /
Function index()
	WEB SEND TEXT:C677("root")
	
	
	// call for /hello
Function hello()
	WEB SEND TEXT:C677("world")