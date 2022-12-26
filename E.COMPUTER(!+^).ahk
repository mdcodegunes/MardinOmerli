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

OpenOrShowAppBasedOnWindowTitleEvdeSağlık(WindowTitleWord, AppAddress)
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
		Sleep, 3999
		Send, !+^.
		Sleep, 999
		Send, evde sa
		sleep 999
		Send, {Enter}
		Sleep, 6999
		ControlFocus, TcxGridSite3

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
	Send, İDRAR GAİTA KONTROLÜ YOK, MESANE REKTUM KONTROLÜ YOK
	;Send, İDRAR  KONTROLÜ YOK, MESANE  KONTROLÜ YOK
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
	Sleep, 399
	Send, +{Tab 2}
}


ebyshesabagiriş()
{
	Run "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 9" https://evdesaglik.saglik.gov.tr/Account/Login
	Sleep 3000
	Click 716 440
	Sleep 5000
	Click 847, 663
	;Click 648, 477
	Sleep, 1999
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
	Sleep 399
	Click 1212 471
	Sleep 399
	Click 872 723
	Sleep 2999
	Click 948, 857
	Sleep 2999
	Click 1554, 850
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



esysdenyenihastakayıt()
{
	;;isim
	Click 550 330 5
	Sleep, 299
	Send, ^c 
	Sleep, 499
	Send, !{Tab}
	Sleep, 499
	Send, ^v
	Sleep, 499
	Send, {BackSpace 2}
	Sleep, 499
	Send, {Space}
	Sleep, 499
	Send, !{Tab}
	Sleep, 499

	;;soyisim
	Click 550 370 5
	Sleep, 299
	Send, ^c 
	Sleep, 499
	Send, !{Tab}
	Sleep, 499
	Send, ^v
	Sleep, 499
	Send, {BackSpace 2}
	Sleep, 499
	;Send, !{Tab}
	Sleep, 499
	Send, {Right 4}
	Sleep, 499
	Send, !{Tab}
	Sleep, 499

	;;adres
	Click 550 440 5
	Sleep, 299
	Send, ^c 
	Sleep, 499
	Send, !{Tab}
	Sleep, 499
	Send, ^v
	Sleep, 499
	Send, {BackSpace 2}
	Sleep, 499
	Send, {Right 3}
	Sleep, 499
	Send, !{Tab}
	Sleep, 499
	;;tel
	Click 550 400 5
	Sleep, 299
	Send, ^c 
	Sleep, 499
	Send, !{Tab}
	Sleep, 499
	Send, ^v
	Sleep, 499
	Send, {BackSpace 2}
	Sleep, 499
	Send, {Right 3}
	Sleep, 499
	Send, GTM
	Sleep, 999
	Send, {Right 4}
	Sleep, 499
	Send, YARI BAĞIMLI
	Sleep, 999
	Send, {Right 4}
	Sleep, 999
	Send, !{Tab}
	Sleep, 499
	;;tanı
	Click 550 620 5
	Sleep, 299
	Sleep, 999
	Send, ^c 
	Sleep, 499
	Send, !{Tab}
	Sleep, 499
	Send, ^v
	Sleep, 499
	Send, {BackSpace 2}
	Sleep, 499
	Send, {Right 3}
	Sleep, 499
	Send, !{Tab}
	Sleep, 499

	;;yaş
	Click 550 290 5
	Sleep, 299
	Send, ^c 
	Sleep, 499
	Send, !{Tab}
	Sleep, 499
	Send, ^v
	Sleep, 499
	Send, {BackSpace 2}
	Sleep, 499
	Send, {Right 2}
	Sleep, 499
	Send, !{Tab}
	Sleep, 499

	;;tc
	Click 550 290 5
	Sleep, 299
	Send, ^c 
	Sleep, 499
	Send, !{Tab}
	Sleep, 499
	Send, ^v
	Sleep, 499
	Send, {BackSpace 2}
	Sleep, 499
	Send, {Right 2}
	Sleep, 499
	Send, !{Tab}
	Sleep, 499

	;;adress
	Click 550 440 5
	Sleep, 299
	Send, ^c 
	Sleep, 499
	;Send, {Left 13}
	;Sleep, 999
	Send, !{Tab}
	Sleep, 499
	Send, ^v
	Sleep, 499
	Send, {BackSpace 2}

}

imzala()
{
	Click 1500, 813
	Sleep 3999
	Click 1228, 444
	Sleep 3999
	Click 1388, 387 3
	Sleep 999
	Send,  ^c
}


; msgbox hi!




; ^SPACE::  Winset, Alwaysontop, , A


#IfWinActive
;+^!q::OpenOrShowAppBasedOnWindowTitle("Poliklinik","C:\panates\Poliklinik.exe")
+^!q::OpenOrShowAppBasedOnWindowTitleEvdeSağlık("Poliklinik","C:\panates\Poliklinik.exe")


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

+^!u::  ;OpenOrShowAppBasedOnAppModelUserID("PyCharm","C:\Program Files\JetBrains\PyCharm 2022.2\bin\pycharm64.exe");
ControlFocus, TcxGridSite3, ahk_exe Poliklinik.exe
Return


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
esysdenyenihastakayıt()
Return

^!+k::OpenOrShowAppBasedOnWindowTitle("Hasta Kayıt","C:\Users\EVDESAĞLIK\panates\HastaKayit.exe")



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
Run "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 10" https://recetem.enabiz.gov.tr/RBS/Prescription/Create
Sleep 2999
Click 99, 333
Sleep 1999
Click 1561, 233
return


^!+M:: ; imzala
Click 1500, 813
Sleep 3999
Click 1228, 444
Sleep 3999
Click 1388, 387 3
Sleep 999
Send,  ^c
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
Send, Sol18493..
Sleep, 99
Send {Enter}
return



^!+`::

Return




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


^!+7:: ;;;;;  dış kuruma nakil
Send,{Tab}
Send, M
Send,{down 2}
Send,{Enter}
Send,{Tab}
Send, ...
Sleep 500
Send,{Tab 2}
Send, N
Sleep 500
Send,{Enter}
Send,{Tab 2}
Send, Ö
Sleep 500
Send,{Enter}
Send,{Tab 2}
Send, m
Sleep 500
Send,{Enter}
Send,{Tab}
Send,UZMAN
Sleep 500
Send,{Enter}
Send,{Tab}
Send,y
Sleep 500
Send,{Enter}
Send,{Tab}
Send,MARDİN
Sleep 500
Send,{Enter}
Send,{Tab 2}
Send,N
Sleep 500
Send, {Down 4}
Send,{Enter}
Send,{Tab 7}
Send,T
Sleep 500
Send,{Enter}
return


^!+8:: ;;;
Send, !+^z
Sleep, 499
Run, C:\Users\EVDESAĞLIK\Desktop\ESHS\ESHS 2022.xlsx
Sleep, 3999
FormatTime, CurrentDateTime,, dd.MM.yyyy
Sleep 299
Run, C:\Users\EVDESAĞLIK\Desktop\ARALIK AYI VERİLERİ 2022\%CurrentDateTime%.docx
Sleep, 3999
Click 445, 740
return

^!+9:: ;;;
Click 475, 527
Sleep, 499
Click 181, 178
Sleep, 599
Send, !{Tab}
return


+^!0::OpenOrShowAppBasedOnExeName("C:\Windows\system32\SnippingTool.exe")



