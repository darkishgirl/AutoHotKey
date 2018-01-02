#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#NoEnv
#NoTrayIcon
Master = Master.ahk              ;name of master file

Loop *.ahk                       ;loop through all AHK scripts in current folder
{
	if (A_LoopFileName != Master) ;as long as it is not the master script
	{
		Run %A_LoopFileName%       ;run the current script
	}
}

ExitApp
