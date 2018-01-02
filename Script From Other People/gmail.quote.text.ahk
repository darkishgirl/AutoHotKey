;	t:autohotkey t:script for:
;	t:gmail "quote" selected text
;	hotkey for reply is Escape

#If (WinActive("ahk_exe chrome.exe") || WinActive("ahk_exe firefox.exe"))
Escape::		; hotkey used "Escape key"
Sendmode Event
;SetKeyDelay, 200
save_clipboard := ClipboardAll	; backup current clipboard
clipboard =		; Empty the clipboard
Send  ^c		; copy
Send  r			; reply
sleep 500		;
Send  {return}		; next line
Send  {return}		; next line
Send  ^+9		; format -> quote
Send  ^+v		; paste as plain text
Send  {return}		; next line
Send {Down}		; coursor down
Send {Backspace}	; erase quote in wrong plac
Send  {return}
Send {Up}
Send  {return}		; next line
;Send  ^]		; add tab
clipboard = %save_clipboard%		; restore original clipboard
return
#IfWinActive
