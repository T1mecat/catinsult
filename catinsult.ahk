F3::
WinGet, active_id, ID, A
WinGet, id, list,,,
Loop, %id%
{
this_id := id%A_Index%
if this_id = %active_id%   
{
index := A_Index + 1
idnext := id%index%
break
}
}
WinGetPos, aidx, aidy, aidw, aidh, ahk_id %active_id% 
WinGetPos, iidx, iidy, iidw, iidh, ahk_id %idnext%
WinMove, ahk_id %active_id%,, %iidx%, %iidy%, %iidw%, %iidh%
WinMove, ahk_id %idnext%,, %aidx%, %aidy%, %aidw%, %aidh%
Return