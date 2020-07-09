; win10 bug?:
;------------
; win10 waits for key up event to take action. 
; from my traces, the key up eventof a bluetooth headset
; calling the 'media-play' command never happens.

; what this script does:
;-----------------------
; however, autohotkey can intercept this and take
; action on our behalf.

; usage :
;---------
; have the script enabled in system tray, it will
; simply echo the cmd sent by your bluetooth device
; e.g. play, pause, next. I know, sounds ridiculous
; but after testing on multiple win10 home devices
; this does achieve the desired result
; 
; side effect: using keyboard buttons (play, pause)
; will not work, as this script will invoke override
; effectively doing nothing.
;
; usage for multimedia keys on KB:
;---------------------------------
; if you take your BT headset off, and want to use
; KB only, then right click and disable this script,
; and then your multimedia KB will work as expected

I_Icon = C:\Users\me\Documents\icons\headphones.ico
IfExist, %I_Icon%
  Menu, Tray, Icon, %I_Icon%
return

; win 10 waits for key up , but that never happens on BT so
; we'll echo the cmd and have the expected result
Media_Play_Pause::Media_Play_Pause
Media_Next::Media_Next
Media_Prev::Media_Prev

; example to remap the keys of the headset and send a diff keybind
;Media_Play_Pause::Send, +{Media_Play_Pause}
;Media_Next::Send, +{Media_Next}
;Media_Prev::Send, +{Media_Prev}
