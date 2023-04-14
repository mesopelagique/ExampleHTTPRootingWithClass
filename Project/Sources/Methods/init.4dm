//%attributes = {}
Use (Storage:C1525)
	// /, /index, /hello
	Storage:C1525.root:=OB Copy:C1225(cs:C1710.Root.new(); ck shared:K85:29)
End use 

Use (Storage:C1525.root)
	// /subpath/, /subpath/index, /subpath/hello
	Storage:C1525.root.subpath:=OB Copy:C1225(cs:C1710.Root.new(); ck shared:K85:29)
End use 