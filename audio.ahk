#Warn,UseUnsetLocal
#NoEnv
#SingleInstance force
SetBatchLines,-1

SoundGet,Volume
Volume:=Round(Volume)
TrayTip:="Volume: " . Volume . "%" . " - Win + Alt + Arrows"
TrayIconFile:=A_WinDir . "\System32\DDORes.dll" ; get tray icon from DDORes.dll
TrayIconNum:="-2032" ; use headphones as tray icon (icon 2032 in DDORes)
Menu,Tray,Tip,%TrayTip%
Menu,Tray,Icon,%TrayIconFile%,%TrayIconNum%
Return


; !# meants Alt + Win

!#Down::Send {Volume_Mute}
!#Left::Send {Volume_Down}
!#Right::Send {Volume_Up}
Return
