#SingleInstance
SetTitleMatchMode 2	; put this at the top of your script

; Duplicate chrome tabs with ctr^+d
#If WinActive("Panates")

kaydet()
{
Click 66, 106
}
gunesFocus()
{
	Send #5
	Sleep 299
	Send #4
	Sleep 299
}

tanı(x)
{
	;ControlFocus TcxCustomInnerTextEdit12
	;;ControlClick TcxCustomInnerTextEdit12
	;Click 1630, 177
	Click 1567, 207
	Send %x%
	Send {enter}
}

fm()
{
	ControlFocus TcxCustomInnerMemo4
	return
}

şikayet()
{
	ControlFocus TcxCustomInnerMemo3
	return
}

öntanı()
{
	;Click 1446, 177
	Click 1344, 208
}

hastaarama()
{
Click 64, 73
}



poliklinik()
{
Click 146, 75
}



tetkiksonuçları()
{
Click 236, 82
}



enabız()
{
Click 145, 101
}



reçetem()
{
;Click 361, 107
Click 344, 105
}

reçetemilaç()
{
	Send {Tab 28}
	return
}

reçetemilaçf()
{
	Send gı
	Sleep 299
	Send {Tab}
	return
}


::.mar::
tanı("j30.2")
return

::.fae::
tanı("D52.9")
return


^+q:: ; vitamin eksikiği
tanı("E56.9")
tanı("E60")
return

^+W:: ; TİNEA PEDİS
tanı("B35.3")
return

^+e:: ;konjontivit
tanı("H10.2")
return

;; ^+r:: ; öksürük Send, R05 return



^+t:: ; hipotiroidi
tanı("E03")
return

^+y:: ;yumuşak doku bozukluğu
tanı("M73")
tanı("L30")
return

^+U:: ;ÜRİNERSİSTEM ENF
tanı("N39.0")
tanı("N30.0")
return


^+ı:: ; gastoenterit
tanı("k52")
return

^+o:: ; otit
tanı("H66.9")
return

^+p:: ; hasta alt bezi
tanı("n31.8")
tanı("r32")
return

;;^+ğ:: ;
;;return

^+ü:: ;üsye
tanı("J39.9")
return

^+A:: ;AKUT GASTRİT
tanı("K29.1")
return


^+s:: ;;muayeneyi kapat
Send,{F9}
Sleep 499
Send,{F4}
Sleep 499
Send,{Tab}
Send, Ö
Sleep 499
Send,{enter}
Sleep 499
Send,{F9}
Sleep 2499
;Send, ^^+{Tab}
Click 72 77 ;;1680 1050
Sleep 2999
Click 1362, 751
;ControlFocus, TcxGridSite3, Panates
;ControlGetFocus, TcxGridSite3, Panates
return



^+d::
öntanı()
Send, e13.9
Send,{enter}
Sleep 299
Send, {Tab 2}
Sleep 299
Send,{enter}
Sleep 299
Send !{F4}
return

^+F:: ;FE EKSİKLİĞİ
tanı("D50.9")
return

^+g:: ;genel
tanı("Z00.0")
return



^+H:: ;Hipertansiyon
tanı("I10")
return

^+j:: ;allerji
tanı("T78.4")
return


^+K:: ;KABIZLIK
tanı("K59.0")
return

^+l:: ;hiperlipidemi
tanı("E78.5")
return

^+ş:: ;astım
tanı("J45.9")
return

^+i:: ; folat
tanı("D52.9")
return





^+z:: ; pole dön
Click, 500 500
Click, 700 700
Send,{F9}
Sleep 1000
Send, ^^+{Tab}
Sleep 500
Click, 500 500
Send,{down 30}
return

^+x:: ;
Suspend
return

^+c:: ; bulantı kusma
tanı("R11")
return



^+v:: ; vertigo
tanı("R42")
return



^+b:: ; B12
tanı("d51.9")
return


^+n:: ;
tanı("")
return



^+M:: ;MİYALJİ
tanı("M79.1")
return





^+ö:: ;
tanı("")
return

^+ç:: ; kalsiyum
tanı("E58")
return

::.av:: ;Akut vajinit
tanı("N76.0")
Return



^+.:: ;fm
fm()
return

^+,:: ;şikayeti
şikayet()
return


^+1::
poliklinik()
kaydet()
hastaarama()
Sleep 499
ControlClick TcxGridSite3
Click 1362, 751
return


^+2:: ;; polikilink
poliklinik()
return

^+3::
kaydet()
tetkiksonuçları()
return

^+4:: ;; e nabız
poliklinik()
Sleep 199
kaydet()
Sleep 199
gunesFocus()
Sleep 199
enabız()
return

^+5:: ;; reçetem
poliklinik()
kaydet()
gunesFocus()
reçetem()
;Send
Sleep 1999
reçetemilaçf()
return

^+6:: ;;  tetkik
Click, 224 81
Sleep 500
Click, 469 244
Sleep 500
Click, 488 264
Sleep 1000
Click, Right
Send, {Up 2}
Sleep 500
Send, {Enter}
return

return

^+7::

return

^+8::

return

^+9::

return

^+0::
Send !s
Sleep 499
;Click 1473 382
Click 1396, 421
Sleep 499
return


#If WinActive("Reçetem Uygulaması")

^+1::
Click 1579, 963 ;;
Click 1395, 804 ;;receteyi kaydet
Sleep 999
Click 1294, 444 ;imzala
Sleep 499
return


^+2:: ;; polikilink
kaydet()
poliklinik()
return

^+3::
kaydet()
tetkiksonuçları()
return

^+4:: ;; e nabız
kaydet()
gunesFocus()
enabız()
return

^+5:: ;; reçetem
kaydet()
gunesFocus()
reçetem()
Sleep 1999
reçetemilaç()
return

^+6:: 

return

^+7::

return

^+8::

return

^+9::

return

^+0::
Send !s
Sleep 499
Click 1473 382
Sleep 499
return


#If WinActive("Ilaclar e-Nabız")

^+1::
Click 1395, 804 ;;receteyi kaydet
Sleep 999
Click 1294, 444 ;imzala
Sleep 499
return


^+2:: ;; polikilink
kaydet()
poliklinik()
return

^+3::
kaydet()
tetkiksonuçları()
return

^+4:: ;; e nabız
kaydet()
gunesFocus()
enabız()
return

^+5:: ;; reçetem
kaydet()
gunesFocus()
reçetem()
Sleep 1999
reçetemilaç()
return

^+6::

return

^+7::

return

^+8::

return

^+9::

return

^+0::
Send !s
Sleep 499
Click 1473 382
Sleep 499
return












