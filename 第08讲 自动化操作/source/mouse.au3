$old=MouseGetPos()
MouseMove(10,10)
For $i=0 to 50
   MouseMove(10+$i*10,10+$i*5)
Next
MouseMove($old[0],$old[1])
MouseClick("right")

