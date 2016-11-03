Func IsPrime($n)
	If $n = 2 Or $n = 3 Then
		Return True 
	EndIf
	If (Mod($n, 2) = 0 Or $n < 2) Then
		Return False
	EndIf
	
	Return True
EndFunc
MsgBox(0,"autoit","开始素数测试")
Run("notepad.exe")
WinWaitActive("无标题 - 记事本")
For $i = 1 To 100
	If IsPrime($i) Then
		Send($i & ", ")
	EndIf
Next
MsgBox(0,"winxos","Is That Cool?")
WinClose("无标题 - 记事本")
WinWaitActive("记事本")
Send("!N")

