#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^j::
   Send, Hi ,`n
Send, `n
   Send, This project has been completed in WS.`n
Send, `n
Send, Please find here the final files:`n
Send, `n
Send, Attached is the Q&A sheet.`n
Send, `n
Send, Let us know in case of any questions.`n
Send, Thank you`n

Return
