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
MacroID=ec9495ee-0273-47d6-a66b-c482815a49f6
Description=æ¢ŒËÕ≈
Enable=1
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
//http://zy.anjian.com/lab/content_01.html
//x y ◊Û…œΩ«∂•µ„
x =228  
y =117

While true
    IfColor x+124+300,y+269,"3399ff",0 Then
        a=0
        For 4
            IfColor x+124+a*100-12,y+269-23,"3399ff",0 Then
                KeyPress 40,1
            Else 
                IfColor x+124+a*100+13,y+269+24,"3399ff",0 Then
                    KeyPress 38,1
                Else 
                    IfColor x+124+a*100+24,y+269-12,"3399ff",0 Then
                        KeyPress 37,1
                    Else 
                        IfColor x+124+a*100-23,y+269+13,"3399ff",0 Then
                            KeyPress 39,1
                        Else 
                        End If 
                    End If 
                End If 
            End If 
            a=a+1
        Next 
    Else 
        IfColor x+353,y+173,"99ff",1 Then
            KeyPress 32,1
        End If 
        Delay 5
    End If 
Wend
   