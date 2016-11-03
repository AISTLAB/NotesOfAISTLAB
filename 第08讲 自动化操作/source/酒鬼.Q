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
MacroID=54330424-cd1d-419d-a930-9e9dd658d59d
Description=¾Æ¹í
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
//http://www.3366.com/flash/1000044.shtml
ed = 0
ep = 0
CENT=390
While 1
	FindColorEx 100,100,700,350,"B06E38",0,0.9,intX,intY
	If intX > 0 And intY > 0 Then 
		ed=CENT-intX-ep
		ep = CENT - intX
		k = ep*15 + ed*7
		TracePrint k
		If k > 400 Then k = 400
		If k < -400  Then k = -400 
		MoveTo intX + k,400
	End If
	Delay 5
Wend
