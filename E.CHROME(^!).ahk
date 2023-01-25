#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


KamiLinkCopy() ;;;copy name of fıle at the last tab-paste to first tab chrome-turn to last tab
{
	Click 703, 132
	Sleep, 99
	Send, ^a
	Sleep, 99
	Send, ^c
	Sleep 99
	Send, ^1
	Sleep, 699
	Send, ^v
	Sleep, 499
	Send, ^9
	Sleep, 299
	Send ^l
	Sleep, 299
	Send, ^c
	Sleep, 299
	Send, ^1
	Sleep, 699
	Send, ^a
	Sleep, 499
	Send, ^v
	Sleep, 499
	Send, {Enter}
	Sleep, 499
	Send, ^9
}

ENabızSonuçPdf() ;;;; tahlil taihini seçtikten sonra- e nabız uzun ismi kopyala-tarih adı altında dosyaya kaydet 
{
	Click 460, 507, 5
	Sleep, 499
	Send ^c
	Sleep, 499
	Click 23, 323, 5
	Sleep 499
	Send ^c
	Sleep, 499
	Click 1525, 242
	Sleep, 999
	;Send, ^v
	Sleep, 2999
	;Send, {Space}
	Sleep, 999
	Send, #v
	Sleep, 999
	Send, {Down}
	Sleep, 999
	Send, {Enter}
	Sleep, 999
	Send, {BackSpace 7}
	Sleep, 999
	Send, ^l
	Sleep, 999
	Send, C:\Users\EVDESAĞLIK\Desktop\2023\Hasta Sonuçları\
	Sleep, 999
	Send, #v
	Sleep, 999
	Send, {Enter}
	Sleep, 999
	Send, {Enter}
	Sleep, 999
	Send, {Tab 10}
	Sleep, 999
	Send, {Tab 8}
}


ENabızSonuçPdf2() ;; tahlil taihini seçtikten sonra- e nabız kısa ismi kopyala-tarih adı altında dosyaya kaydet 
{
	;Click 536, 490, 5
	Click 493, 504, 5
	Sleep, 499
	Send ^c
	Sleep, 499
	Click 119, 215, 5
	Sleep 499
	Send ^c
	Sleep, 499
	Click 1525, 242
	Sleep, 999
	;Send, ^v
	Sleep, 2999
	;Send, {Space}
	Sleep, 999
	Send, #v
	Sleep, 999
	Send, {Down}
	Sleep, 999
	Send, {Enter}
	Sleep, 999
	Send, {BackSpace 7}
	Sleep, 999
	Send, ^l
	Sleep, 999
	Send, C:\Users\EVDESAĞLIK\Desktop\2023\Hasta Sonuçları\
	Sleep, 999
	Send, #v
	Sleep, 999
	Send, {Enter}
	Sleep, 999
	Send, {Enter}
	Sleep, 999
	Send, {Tab 10}
	Sleep, 999
	Send, {Tab 8}
}


ArteFullScreen() ;;arte full screen
{
	Click 1547, 662
	Sleep 1299
	Click 1551, 667
	

}

ArteSubs()
{
	Click 1466, 676
}

YouTubeSubs()
{
	Click 885, 707
	Sleep, 499
	Click 929, 597
}


YouTubeFullScreen()
{
	Click 1034, 710
}

#IfWinActive,
vpn()
{
	Click 1460, 62
	Sleep 999
	Click 246, 165
    Sleep 499
    Send {Esc}
}



^!q:: ;;;copy name of fıle at the last tab-paste to first tab chrome-turn to last tab
KamiLinkCopy()
Return




^!w:: ;; tahlil taihini seçtikten sonra- e nabız uzun ismi kopyala-tarih adı altında dosyaya kaydet 
ENabızSonuçPdf()
Return

^!e:: ;; tahlil taihini seçtikten sonra- e nabız kısa ismi kopyala-tarih adı altında dosyaya kaydet 
ENabızSonuçPdf2()
Return



^!r:: ;;
vpn()
Return



^!t:: ;;

Return


^!y:: ;;

Return

^!u:: ;;

Return

^!+i:: ;;
Return

^!o:: ;;

Return

^!p:: ;;
Send, ^l
Sleep 200
Send, ^c
Sleep 200
Send, +^!p
Sleep 2500
Send, ^u
Sleep 499
Send, ^v
Sleep 500
Send,{Enter}
Return

;Hotkey to trigger the script
    
^!a::
    Send ^l
	Sleep, 299
    Send ^c
	Sleep, 299
    URL := Clipboard
	Sleep, 299
    Clipboard := ""
	Sleep, 299

    StringLower, URL, URL
	Sleep, 299

    if (InStr(URL, "arte.tv"))
    {
	Sleep, 299
        ArteFullScreen()
    }
    else if (InStr(URL, "youtube.com"))
    {
	Sleep, 299
        YouTubeFullScreen()
    }
    else if (InStr(URL, "notion.so"))
    {
	Sleep, 299
        MsgBox Notion Website
    }
    return




^!s:: ;;
Send ^l
	Sleep, 299
    Send ^c
	Sleep, 299
    URL := Clipboard
	Sleep, 299
    Clipboard := ""
	Sleep, 299

    StringLower, URL, URL
	Sleep, 299

    if (InStr(URL, "arte.tv"))
    {
	Sleep, 299
		ArteSubs()
        
    }
    else if (InStr(URL, "youtube.com"))
    {
	
        YouTubeSubs()
    }
    else if (InStr(URL, "notion.so"))
    {
	Sleep, 299
        MsgBox Notion Website
    }
    return
Return

^!d:: ;;
Click, 733 816
Sleep 300
Click, 1158 425
Return

^!f:: ;;

Return



^!g:: ;;
Send, ^l
Sleep 200
Send, ^c
Sleep 200
Send, +^!g
Sleep 2500
Send, ^u
Sleep 499
Send, ^v
Sleep 500
Send,{Enter}
Return

^!h:: ;;

Return

^!j:: ;;

Return

^!k:: ;;

Return

^!l:: ;;
Return

^!z:: ;;

Return

^!x:: ;

Return

^!c:: ;

Return

^!v:: ;;

Return

^!b:: ;;
Return

^!n:: ;;

Return

^!m:: ;;

Return

^!1:: ;;
Click 	957, 511
return





