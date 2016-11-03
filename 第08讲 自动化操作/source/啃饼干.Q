[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=9f1f8e68-f5b9-402d-bda4-39c283918e60
Description=¿Ð±ý¸É
Enable=0
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
//http://www.3366.com/flash/1000234.shtml
x1=250
y1=300
x2=500
y2=500
While 1
	cut("002142")
	cut("001122")
Wend
Function cut(c)
	FindCenterColor x1,y1,x2,y2,c,intX,intY
	If intX > 0 And intY > 0 Then 
		MoveTo intX, intY
		LeftDown 1
		Delay 1
		LeftUp 1
	End If
End Function
