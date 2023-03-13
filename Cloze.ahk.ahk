#IfWinActive
clozeNumber := 0

;press \ to set cloze sequence


\::
++clozeNumber
Clipboard :=
Send, ^c
Sleep, 100
ClipWait,1
cloze={{c%clozeNumber%::%clipboard%}}
Clipboard := cloze
Clipwait,1
Sleep, 100   
send, ^v
Return

;press tab or enter or esc to reset cloze sequence

~Tab::
clozeNumber := 0
return

~Enter::
clozeNumber := 0
return

~Esc::
clozeNumber := 0
return

;press ctrl+\ to remap cloze numbering
^\::
Inputbox, Num, Set Cloze Number, Please type cloze number., , 300, 120
if ErrorLevel 
Exit
else
clipboard := 
Sleep, 100
Send, ^c
ClipWait,1
var = %clipboard%
Num1 := "{{c"Num
txt := RegExReplace(var, "{{(c[0-9]{1,3})", Num1)
Clipboard := txt
ClipWait,1
Sleep, 100
Send, ^v
Return

;press shift+\ to remove cloze numbering
+\::
clipboard := 
Sleep, 100
Send, ^c
ClipWait,1
var = %clipboard%
txt := RegExReplace(var, "{{(c[0-9]{1,3}::)(.*?)}}", "$2")
Clipboard := txt
ClipWait,1
Sleep, 100
Send, ^v
Return

;press Ctrl+Shift+[num] to create a corresponding cloze field with numbers 1-9
^+1::
Clipboard :=
Send, ^c
Sleep, 100
ClipWait,1
cloze={{c1::%clipboard%}}
Clipboard := cloze
Clipwait,1
Sleep, 100   
send, ^v
Return

^+2::
Clipboard :=
Send, ^c
Sleep, 100
ClipWait,1
cloze={{c2::%clipboard%}}
Clipboard := cloze
Clipwait,1
Sleep, 100   
send, ^v
Return

^+3::
Clipboard :=
Send, ^c
Sleep, 100
ClipWait,1
cloze={{c3::%clipboard%}}
Clipboard := cloze
Clipwait,1
Sleep, 100   
send, ^v
Return

^+4::
Clipboard :=
Send, ^c
Sleep, 100
ClipWait,1
cloze={{c4::%clipboard%}}
Clipboard := cloze
Clipwait,1
Sleep, 100   
send, ^v
Return

^+5::
Clipboard :=
Send, ^c
Sleep, 100
ClipWait,1
cloze={{c5::%clipboard%}}
Clipboard := cloze
Clipwait,1
Sleep, 100   
send, ^v
Return

^+6::
Clipboard :=
Send, ^c
Sleep, 100
ClipWait,1
cloze={{c6::%clipboard%}}
Clipboard := cloze
Clipwait,1
Sleep, 100   
send, ^v
Return

^+7::
Clipboard :=
Send, ^c
Sleep, 100
ClipWait,1
cloze={{c7::%clipboard%}}
Clipboard := cloze
Clipwait,1
Sleep, 100   
send, ^v
Return

^+8::
Clipboard :=
Send, ^c
Sleep, 100
ClipWait,1
cloze={{c8::%clipboard%}}
Clipboard := cloze
Clipwait,1
Sleep, 100   
send, ^v
Return

^+9::
Clipboard :=
Send, ^c
Sleep, 100
ClipWait,1
cloze={{c9::%clipboard%}}
Clipboard := cloze
Clipwait,1
Sleep, 100   
send, ^v
Return

^+0::
Inputbox, Num, Set Cloze Number, Please type cloze number., , 300, 120
if ErrorLevel 
Exit
else
Clipboard :=
Send, ^c
Sleep, 100
ClipWait,1
cloze={{c%Num%::%clipboard%}}
Clipboard := cloze
Clipwait,1
Sleep, 100   
send, ^v
Return