; NumLock Enforcer
; To monitor and switch on the NumLock key
; Date: 01/07/2007  ;Last Updated: 01/07/2007
; Refer: hxxp://www.donationcoder.com/Forums/bb/index.php?topic=9018
; Changes since:
; ***** 
;
#SingleInstance force
;#NoTrayIcon  ;if you don't need a tray icon
#InstallKeybdHook
#Persistent

;Menu, tray, Icon, %A_WinDir%\System32\shell32.dll, 105
appname=NumLock Enforcer
SetTimer, EnforceNumLock, 500
Return

EnforceNumLock:
   NumLockStatus := GetKeyState("Numlock", "T")
    IfEqual, NumLockStatus, 0
      {
      SetNumLockState, On
      ;Uncomment the below line if you want some kind of feedback.
      ;TrayTip,%appname%,NumLock Status = On,,1
      }
Return

;Win+p pauses the script,just in case you need the NumLock.
#p::Pause

;Win+q exits...
#q::ExitApp
