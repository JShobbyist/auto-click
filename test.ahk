#persistent
; run at Time.
HH = 23			;Hour
MM = 8			;Minute
SS = 00			;Second
MSS = 000		;Millisecond

TTarget := (HH-A_Hour)*3600000 + (MM-A_Min)*60000 + (SS-A_Sec)*1000 + (MSS-A_MSec)
;MsgBox success! %TTarget1%-%NTime%---%TTarget%
if TTarget < 0
{
     MsgBox The target time is already past! %A_Now%%A_MSec%
     return
}
if TTarget == 30000
{
	Reload
}
TTarget := TTarget - 15
SetTimer, ClickTimer, %TTarget%
return

ClickTimer:
MouseClick, left
SetTimer, ClickTimer, off  ; do only one click
;MsgBox The target time success! %A_Now%%A_MSec%
return