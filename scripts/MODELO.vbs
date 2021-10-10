' INIT SCRIPT '
Rem - Cria  função que verifica se impressora existe -
Function PrinterExist(strPrinterPath)
	PrinterExist=False
	strPrinterPath=ucase(strPrinterPath)
	
	Set WshNetwork = WScript.CreateObject("WScript.Network")
	Set WSHPrinters = WSHNetwork.EnumPrinterConnections

	For i = 0 To WSHPrinters.Count - 1 Step 2
		if ucase(WSHPrinters.Item(i+1))=strPrinterPath then
			PrinterExist=true
			exit function
		end if
	Next
end function

Rem - função que verifica se impressora existe -
Set WshNetwork=Wscript.CreateObject("Wscript.Network")
if printerexist("\\SERVIDOR QUE DEVE SER SUBSTITUIDO\NOME DA IMPRESSORA") then
	WshNetwork.removePrinterConnection "\\SERVIDOR QUE DEVE SER SUBSTITUIDO\NOME DA IMPRESSORA"
end if

Rem - Script para adicionar Impressoras -
Set WshNetwork = CreateObject("WScript.Network")
WshNetwork.AddWindowsPrinterConnection "\\SERVIDOR NOVO\NOME DA IMPRESSORA"
Rem - Definir a Impressora como padrão -
WshNetwork.SetDefaultPrinter "\\SERVIDOR NOVO\NOME DA IMPRESSORA"

' END SCRIPT '