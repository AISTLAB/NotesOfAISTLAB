@echo off
mode con: cols=65 lines=1100
color 2e
setlocal enabledelayedexpansion
set t0=24
::此处可修改上面"t0"的值以实现其他点数的求解，例如36点游戏就是"t0=36"。
title %t0%点游戏的求解--康康编写
set t1= 请按由大到小的顺序输入第
set t2=━━━━━━━━━━━
set t3=[满足要求]
set t4=copyright@ 康康
:z
cls
echo,&echo, %t2% %t4% %t2%
echo,&set/p M1=%t1%1个数 ___ 
echo,&set/p M2=%t1%2个数 ___ 
echo,&set/p M3=%t1%3个数 ___ 
echo,&set/p M4=%t1%4个数 ___ 
set/a qq=10000,kk=100
echo,&echo,&echo, --[查找程式启动中...]--
for /l %%A in (90,-2,22) do (
for /l %%B in (1,1,%%A) do (
pause>nul)
set/p=^>
)<nul
for /l %%A in (23,3,110) do (
for /l %%B in (1,1,%%A) do (
pause>nul)
set/p=^>
)<nul
echo,
for %%A in (1234,1324,1423,2314,2413,3412) do (
set a=%%A
set/a N4=M!a:~0,1!,N5=M!a:~1,1!,N2=M!a:~2,1!,N3=M!a:~3,1!
set/a f1=0
if !N5!==0 (set/a yu1=2) else (set/a yu1=!N4!%%!N5!)
for %%B in (+,-,#,/) do (
set/a f1+=1
set yu1=!yu1:~0,1!
if !f1!!yu1! leq 40 (
set BB=%%B
set BB=!BB:#=*!
set/a N1=!N4!!BB!!N5!&set S1=^(!N4!!BB!!N5!^)
if !N1! geq !N2! (set/a b1=1,b2=2,b3=3,e1=1,e2=1,e3=3)
if !N1! lss !N2! (if !N1! geq !N3! (set/a b1=2,b2=1,b3=3,e1=2,e2=3,e3=1))
if !N1! lss !N3! (set/a b1=2,b2=3,b3=1,e1=3,e2=2,e3=2)
for %%C in (!b1!!b2!!b3!!e1!,!b1!!b3!!b2!!e2!,!b2!!b3!!b1!!e3!) do (
set c=%%C
set/a P3=N!c:~0,1!,P4=N!c:~1,1!,P2=N!c:~2,1!,e=!c:~3,1!
set/a f2=0
if !P4!==0 (set/a yu2=2) else (set/a yu2=!P3!%%!P4!)
for %%D in (+,-,#,/) do (
set/a f2+=1
set yu2=!yu2:~0,1!
if !f2!!yu2! leq 40 (
set DD=%%D
set DD=!DD:#=*!
set/a P1=!P3!!DD!!P4!
if !e!==1 set SS1=[!S1!!DD!!P4!]&set S2=!P2!
if !e!==2 set SS1=[!P3!!DD!!S1!]&set S2=!P2!
if !e!==3 set S2=!S1!&set SS1=^(!P3!!DD!!P4!^)
if !P1! geq !P2! (set/a R1=!P1!,R2=!P2!&set SR1=!SS1!&set SR2=!S2!) else (set/a R1=!P2!,R2=!P1!&set SR1=!S2!&set SR2=!SS1!)
set/a f3=0
if !R2!==0 (set/a yu3=2) else (set/a yu3=!R1!%%!R2!)
for %%E in (+,-,#,/) do (
set/a f3+=1
set yu3=!yu3:~0,1!
if !f3!!yu3! leq 40 (
set EE=%%E
set EE=!EE:#=*!
set/a qq+=1
set/a Q=!R1!!EE!!R2!
set SS=!SR1!!EE!!SR2! = !Q! 
if !Q!==%t0% (set/a kk+=1&echo, ┏%t2%┓&echo, !qq:~1!┃!SS:~0,22!┣!kk:~1!━%t3%&echo, ┗%t2%┛&set SS!kk!=!SS!) else (echo, !qq:~1! !SR1!!EE!!SR2! = !Q!)))))))))
echo,
for %%A in (1234,1243,1324,1342,1423,1432,2134,2143,2314,2341,2413,2431,3124,3142,3214,3241,3412,3421,4123,4132,4213,4231,4312,4321) do (
set a=%%A
set/a N1=M!a:~0,1!,N2=M!a:~1,1!,N3=M!a:~2,1!,N4=M!a:~3,1!
for %%B in (+,-) do (
if not !N2!==0 (
set/a yu=!N3!%%!N2!
if not !yu!==0 (
set/a qq+=1
set/a Q=^(^(!N3!*!N4!^)/!N2!^)%%B^(!N1!*!N4!^),yu=^(!N3!*!N4!^)%%!N2!
set SS=[^(!N3!/!N2!^)%%B!N1!]*!N4! = !Q! 
if !yu!==0 (set yu=) else (set yu=+[!yu!/!N2!])
if !yu!!Q!==%t0% (set/a kk+=1&echo, ┏%t2%┓&echo, !qq:~1!┃!SS:~0,22!┣!kk:~1!━%t3%&echo, ┗%t2%┛&set SS!kk!=!SS!) else (echo, !qq:~1! !SS:~0,24!!yu!)
))
if not !N1!==0 if not !N3!==0 (
set/a yu=!N2!%%!N1!,yu1=!N4!%%!N3!
if not !yu!!yu1!==00 (
set/a qq+=1
set/a fm=!N1!*!N3!
set/a Q=^(^(!N2!*!N3!^)%%B^(!N4!*!N1!^)^)/!fm!,yu=^(^(!N2!*!N3!^)%%B^(!N4!*!N1!^)^)%%!fm!
set SS=^(!N2!/!N1!^)%%B^(!N4!/!N3!^) = !Q! 
if !yu!==0 (set yu=) else (set yu=+[!yu!/!fm!])
if !yu!!Q!==%t0% (set/a kk+=1&echo, ┏%t2%┓&echo, !qq:~1!┃!SS:~0,22!┣!kk:~1!━%t3%&echo, ┗%t2%┛&set SS!kk!=!SS!) else (echo, !qq:~1! !SS:~0,24!!yu!)
)))
if not !N2!==0 (
set/a yu=!N3!%%!N2!
if not !yu!==0 (
set/a qq+=1
set/a Q=^(!N1!*!N4!^)-^(^(!N3!*!N4!^)/!N2!^),yu=^(!N3!*!N4!^)%%!N2!
set SS=[!N1!-^(!N3!/!N2!^)]*!N4! = !Q! 
if !yu!==0 (set yu=) else (set yu=-[!yu!/!N2!])
if !yu!!Q!==%t0% (set/a kk+=1&echo, ┏%t2%┓&echo, !qq:~1!┃!SS:~0,22!┣!kk:~1!━%t3%&echo, ┗%t2%┛&set SS!kk!=!SS!) else (echo, !qq:~1! !SS:~0,24!!yu!)
)))
echo,&echo,&echo, --[查找完毕,有!kk:~1!个式子可行]--&echo,
for /l %%A in (101,1,!kk!) do (
set kk=%%A
echo, !kk:~1! !SS%%A!
)
echo,&echo, %t2% %t4% %t2%&echo,&echo, 按任意键重新开始...
pause>nul
goto z