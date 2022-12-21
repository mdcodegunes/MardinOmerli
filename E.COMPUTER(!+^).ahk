#WinActivateForce ; Prevent task bar buttons from flashing when different windows are activated quickly one after the other.
; AppAddress: The address to the .exe (Eg: "C:\Windows\System32\SnippingTool.exe")

SetKeyDelay, -1

OpenOrShowAppBasedOnExeName(AppAddress)
{


	AppExeName := SubStr(AppAddress, InStr(AppAddress, "\", false, -1) + 1)


	IfWinExist ahk_exe %AppExeName%
	{

		IfWinActive
		{
			WinMinimize
			Return
		}
		else
		{
			WinActivate
			Return
		}

	}
	else
	{

		Run, %AppAddress%, UseErrorLevel
        If ErrorLevel
        {
            Msgbox, File %AppAddress% Not Found
            Return
        }
		else
		{
			WinWait, ahk_exe %AppExeName%
			WinActivate ahk_exe %AppExeName%
			Return
		}

	}
}

; WindowTitleWord: Usually the word at the end of the app window title (Eg: in: "New Document - Word" will be "Word")
; AppAddress: The address to the .exe (Eg: "C:\Windows\System32\SnippingTool.exe")

OpenOrShowAppBasedOnWindowTitle(WindowTitleWord, AppAddress)
{

	SetTitleMatchMode, 2


    IfWinExist, %WindowTitleWord%
    {

		IfWinActive
		{
			WinMinimize
			Return
		}
		else
		{
			WinActivate
			Return
		}

	}
    else
    {
        Run, %AppAddress%, UseErrorLevel
        If ErrorLevel
        {
            Msgbox, File %AppAddress% Not Found
            Return
        }
		else
		{
			WinActivate
			Return
		}
    }
}



; AppTitle: Usually the word at the end of the app window title(Eg: in: "New Document - Word" will be "Word")
; AppModelUserID: A comprehensive guide on how to find the AppModelUserID of a windows store app can be found here: https://jcutrer.com/windows/find-aumid

OpenOrShowAppBasedOnAppModelUserIDExe(AppExeName, AppModelUserID)
{

	SetTitleMatchMode, 2

    IfWinExist, ahk_exe %AppExeName%
    {

		IfWinActive
		{
			WinMinimize
			Return
		}
		else
		{

			WinActivateBottom ahk_exe %AppExeName%
			Return

		}

	}
    else
    {

        Run, shell:AppsFolder\%AppModelUserID%, UseErrorLevel
        If ErrorLevel
        {
            Msgbox, File %AppModelUserID% Not Found
            Return
        }
        else
		{
			WinActivate
			Return
		}

    }
}



; ahk_class CabinetWClass
OpenOrShowAppBasedOnAppModelUserIDClass(AppClassName, AppModelUserID)
{
	SetTitleMatchMode, 2

    IfWinExist, ahk_class %AppClassName%
    {

		IfWinActive
		{
			WinMinimize
			Return
		}
		else
		{

			 WinActivateBottom ahk_class %AppClassName%
			 ControlFocus, DirectUIHWND2, A
    		 Return


		}

	}
    else
    {

        Run, shell:AppsFolder\%AppModelUserID%, UseErrorLevel
        If ErrorLevel
        {
            Msgbox, File %AppModelUserID% Not Found
            Return
        }
        else
		{
			WinActivate
			ControlFocus, DirectUIHWND3, A
    	 	Return
		}

    }
}

OpenOrShowAppBasedOnAppModelUserID(AppTitle, AppModelUserID)
{

	SetTitleMatchMode, 2

    IfWinExist, %AppTitle%
    {

		IfWinActive
		{
			WinMinimize
			Return
		}
		else
		{

			WinActivateBottom %AppTitle%


		}

	}
    else
    {

        Run, shell:AppsFolder\%AppModelUserID%, UseErrorLevel
        If ErrorLevel
        {
            Msgbox, File %AppModelUserID% Not Found
            Return
        }
        else
		{
			WinActivate
			Return
		}

    }
}



ExtractAppTitle(FullTitle)
{
	AppTitle := SubStr(FullTitle, InStr(FullTitle, " ", false, -1) + 1)
	Return AppTitle
}


hastaaltbezi()
{
	;; yıl
	;Click, 304 270
	Click 272 296
	Send, 2
	Sleep 1500
	;Click, 392 273
	Click, 392 296
	Sleep 1500
	Send, y
	Sleep 1500
	;Click, 57 444
	Click, 57 470
	Sleep 1500
	Send,{Enter}
	Sleep 1500
	;Click, 65 530
	Click, 65 556
	Sleep 1500
	;Click, 487 583
	Click, 487 609
	;Send, İDRAR GAİTA KONTROLÜ YOK, MESANE REKTUM KONTROLÜ YOK
	Send, İDRAR  KONTROLÜ YOK, MESANE  KONTROLÜ YOK
	;Click, 290 362
	Click, 290 388
	Sleep 1500
	;Click, 387 386
	Click, 387 412
	Sleep 1500
	;Click, 604 364
	Click, 604 390
	Sleep 1500
	;Click, 55 391
	Click, 55 417
	Sleep 1500
	Send, A10049
	Send,{down}
	Sleep 1500
	Send,{Enter}
	Sleep 1500
	;Click, 698 454
	Click, 698 480
	Sleep 1500
	Send, F
	Sleep 1500
	Send,{Enter}
	Sleep 1500
	;Click, 868 455
	Click, 868 481
	Sleep 1500
	Send, K
	Sleep 1500
	Send,{Enter}
	Sleep 1500
	;Click, 1070 457
	Click, 1070 483
	Sleep 1500
	Send, 1
	Sleep 1500
	;Click, 1221 458
	Click, 1221 484
	Sleep 1500
	Send, G
	Sleep 1500
	Send,{Enter}
	Sleep 1500
	;Click, 1312 452
	Click, 1312 478
	Sleep 1500
	Send, 4
	Sleep 1500
	Click, 54 730
	;Click, 54 756
	Sleep 1500
	Send,{down}
	Sleep 1500
	Send,{Enter}
	Sleep 1500
	Click, 54 730
	;Click, 54 756
	Sleep 1500
	Send,{down 2}
	Sleep 1500
	Send,{Enter}
	Sleep 1500
	Send, {F9}
	Sleep 500
	Send, {F9}
	Sleep 1500
	Send,{Enter}
	Sleep 1500
	Send,{Enter}
	Sleep 1500
	Send,{Enter}
	Sleep 1500
	Click, 1028 84
	Sleep 1500
	Click, 1028 106
	Sleep 1500
	Send,{Enter}
	Sleep 1500
	Send,{Enter}
	Sleep 1500
	Send,{Enter}
	Sleep 1500
	Click, 1296 82
	Sleep 1500
	Click, 1296 217
	Sleep 1500
	Click, 1146 217
	Sleep 1500
	Send, {Tab}
	Sleep 1500
	Send, s2472O81
	Sleep 1500
	Send,{Enter}
	Sleep 1500
}

DoktorPerformans()
{
	Run "C:\panates\DoktorPerformans.exe"
	Sleep 2000
	Send, ÖKOCABAŞ
	Send, {Tab}
	Send, Sol18493..
	Send, {Enter}
	Sleep 10000
	Click 119, 785, 4
	Sleep 2000
	Click 140, 112
	Sleep 2000
	Click 82, 276
	Sleep 5000
	Click 269, 166
	Sleep 200
	Send, {Enter}
}

günlükverimailigönder()
{
	Run, "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 9" https://eposta.saglik.gov.tr/owakontrol/
	Sleep 5000
	Click 223 606
	Sleep 5000
	Click 276 179
	Sleep 5000
	Send mardin
	Sleep 2000
	Send {enter}
	Sleep 1000
	Send {Tab 3}
	Sleep 1000
	Send ÖMERLİ
	Sleep 1000
	Click 827 724
	Sleep 1000
	ControlGetFocus, DirectUIHWND2
	Send, +^!t
	Sleep, 299
	Send, {Enter}
}


ebyshesabagiriş()
{
	Run "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 9" https://evdesaglik.saglik.gov.tr/Account/Login
	Sleep 3000
	Click 716 440
	Sleep 5000
	Click 307 303
	Sleep 5000
	Click 812 782
	Sleep 1000
	Send 537623
	Sleep 1000
	Click 653 668
	Sleep 10000
	Click 846 365
	Sleep 1000
	Click 1271 212
	Send {Left}
	Sleep 99
	Send {Enter}
	Sleep 199
	Click 1212 471
	Sleep 199
	Click 872 723
}

ailehek()
{
	Click 549 49
	Sleep 1000
	Send A
	Sleep 500
	Send {Down}
	Sleep 500
	;Send {Enter}
	;Sleep 1200
	Click 514 77
	Sleep 1200
	;;Click 361 111
	Click 168 108
	Sleep, 499 
	Click, 1308, 783
	Sleep, 499 
	;ControlGetFocus, TcxGridSite3
}

evdesağlık()
{
	Click 549 49
	Sleep 1000
	Send E
	Sleep 500
	Send {Down}
	Sleep 500
	Send {Enter}
	Sleep 1200
	Click 361 111
	;Click 168 108
	Sleep, 499 
	Click, 1308, 783
	Sleep, 499 
	;ControlGetFocus, TcxGridSite3
}

içhastalıkları()
{
	Click 549 49
	Sleep 1000
	Send i
	Sleep 500
	;;Send {Down}
	Sleep 500
	Click 473 111
	Sleep 1200
	;;Click 361 111
	Click 168 108
}


lock()
{
	Send, Aa123
	Sleep 200
	Send, {Enter}
}

panates()
{
	Send, ÖKOCABAŞ
	Send, {Tab}
	Send, Sol18493..
	Send, {Enter}
}








; msgbox hi!




; ^SPACE::  Winset, Alwaysontop, , A


#IfWinActive
+^!q::OpenOrShowAppBasedOnWindowTitle("Poliklinik","C:\panates\Poliklinik.exe")


#IfWinActive
+^!w::OpenOrShowAppBasedOnAppModelUserID("WhatsApp", "5319275A.WhatsAppDesktop_cv1g1gvanyjgm!App")

+^!e:: ;;OpenOrShowAppBasedOnWindowTitle("MusicBee","C:\Program Files (x86)\MusicBee\MusicBee.exe")
;;copyala diğer pencereye yapıştır
Send, ^c
Sleep, 199
Send, !{Tab}
Sleep, 499
;Send, ,"
Send, ^v
Sleep, 499
;Send, {BackSpace 2}
Return

+^!r:: ;;OpenOrShowAppBasedOnWindowTitle("Telegram", "C:\Users\Sun\AppData\Roaming\Telegram Desktop\Telegram.exe")


;+^!t::OpenOrShowAppBasedOnWindowTitle("qBittorrent","C:\Program Files (x86)\qBittorrent\qbittorrent.exe")

^+!t:: ;; bügün tarihi
FormatTime, CurrentDateTime,, dd.MM.yyyy
Sleep 99
SendInput %CurrentDateTime%
return

+^!y::OpenOrShowAppBasedOnWindowTitle("Internet Download Manager","C:\Program Files (x86)\Internet Download Manager\IDMan.exe")

;; u skip open folder pot
;; skip o open file pot
;;  skip p open file gom

+^!u::OpenOrShowAppBasedOnAppModelUserID("PyCharm","C:\Program Files\JetBrains\PyCharm 2022.2\bin\pycharm64.exe")


+^!o::OpenOrShowAppBasedOnWindowTitle("WebStorm","C:\Program Files\JetBrains\WebStorm 2022.2\bin\webstorm64.exe")


+^!p::OpenOrShowAppBasedOnWindowTitle("PotPlayer","C:\PotPlayer\PotPlayerMini64.exe")


+^!a::OpenOrShowAppBasedOnWindowTitle("Window Spy","C:\Program Files\AutoHotkey\WindowSpy.ahk")



+^!s::OpenOrShowAppBasedOnExeName("C:\Spotify.Music.1.1.96.785.Portable\App\Spotify.exe")


^!+d:: ;
DoktorPerformans()
return


;;;;;;;; skip f  full pot

;;;;;;;; skip g full gom

; +^!f::OpenOrShowAppBasedOnExeName("Explorer.EXE")
+^!f::OpenOrShowAppBasedOnAppModelUserIDClass("CabinetWClass","Microsoft.Windows.Explorer")


+^!g::OpenOrShowAppBasedOnWindowTitle("GOM Player","C:\Program Files\GOM\GOMPlayerPlus\GOM64.EXE")



+^!h:: ;; Google selected text in vs code ?
Send, ^c
Send, +{F2}
Sleep 150
Run, http://www.google.com/search?q=%Clipboard%
Sleep 150
Run, https://www.youtube.com/results?search_query=+%Clipboard%&sp=EgQIBRAB
Sleep 500
Send, q
Return



+^!j:: ;;
Return

^!+k::OpenOrShowAppBasedOnWindowTitle("Hasta Kayıt","C:\Users\EVDESAĞLIK\Desktop\panates\HastaKayit.exe")



+^!l:: ;;
günlükverimailigönder()
return






+^!z:: ;; 
ebyshesabagiriş()
return



+^!x:: ;;kill all autohotkeys
Run cmd.exe /c "taskkill /f /im autohotkey.exe"
return

+^!c::OpenOrShowAppBasedOnWindowTitle("Chrome","C:\Program Files\Google\Chrome\Application\chrome.exe")



+^!v::OpenOrShowAppBasedOnWindowTitle("Visual Studio Code","C:\Users\EVDESAĞLIK\AppData\Local\Programs\Microsoft VS Code\Code.exe")





^!+n:: ;
return



^!+M:: ; 
return







+^!Up::
ControlFocus, , ahk_exe Spotify.exe,
ControlSend, , ^{Left}, ahk_exe Spotify.exe
Return

+^!Down::
ControlFocus, , ahk_exe Spotify.exe,
ControlSend, , ^{Right}, ahk_exe Spotify.exe
Return

/*
+^!Up::
ControlFocus, , ahk_exe Spotify.exe,
ControlSend, , ^{Up}, ahk_exe Spotify.exe
Return


+^!Down::
ControlFocus, , ahk_exe Spotify.exe,
ControlSend, , ^{Down}, ahk_exe Spotify.exe
Return
*/

+^!Space::
ControlFocus, , ahk_exe Spotify.exe,
ControlSend, , {Space}, ahk_exe Spotify.exe
Return

+^!*:: ;; didnt work
ControlFocus, , ahk_exe "C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 4"
ControlSend, ,^w, ahk_exe "C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 4"
Return







^!+,:: ;
lock()
return

^!+.:: ;;
panates()
return



;#If WinActive("Poliklinik.exe")

+^!Left:: ;;
Click, 19 106
return

+^!Right:: ;;
Click, 115 106
return



^+!=:: ;;
return


^!+-:: ;
return



^!+`:: ;
return



^!+1:: ;;
ailehek()
return

^!+2:: ;;;
evdesağlık()
return

^!+3:: ;;;
içhastalıkları()
return

^!+4:: ;;;
return

^!+5:: ;;;
return


^!+6:: ;;hasta altbezi
hastaaltbezi()
Return


^!+7:: ;;;
return


^!+8:: ;;;

return

^!+9:: ;;;
Click 475, 527
Sleep, 499
Click 181, 178
Sleep, 599
Send, !{Tab}
return


+^!0::OpenOrShowAppBasedOnExeName("C:\Windows\system32\SnippingTool.exe")



