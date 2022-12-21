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
	Send #3
	Sleep 299
	Send #4
	Sleep 299
}

tanı()
{
	;ControlFocus TcxCustomInnerTextEdit12
	;;ControlClick TcxCustomInnerTextEdit12
	;Click 1630, 177

	Click 1567, 207
	return
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
	Send gi
	Sleep 299
	Send {Tab}
	return
}



^+q:: ; vitamin eksikiği
tanı()
Send, E56.9
Send,{enter}
Send, E60
Send,{enter}
return

^+W:: ; TİNEA PEDİS
tanı()
Send, B35.3
Send,{enter}
return

^+e:: ;konjontivit
tanı()
Send, H10.2
Send,{enter}
return

;; ^+r:: ; öksürük Send, R05 return



^+t:: ; hipotiroidi
tanı()
Send, E03
Send,{enter}
return

^+y:: ;yumuşak doku bozukluğu
tanı()tanı()
Send, M73
Send,{enter}
Send, L30
Send,{enter}
return

^+U:: ;ÜRİNERSİSTEM ENF
tanı()
Send, N39.0
Send,{enter}
Send, N30.0
Send,{enter}
return


^+ı:: ; gastoenterit
tanı()
Send, k52
Send,{enter}
return

^+o:: ; otit
tanı()
Send, H66.9
Send,{enter}
return

^+p:: ; hasta alt bezi
tanı()
Send, n31.8
Send,{enter}
Send, r32
Send,{enter}
return

;;^+ğ:: ;
;;return

^+ü:: ;üsye
tanı()
Sleep 200
Send, J39.9
Send,{enter}
return

^+A:: ;AKUT GASTRİT
tanı()
Send, K29.1
Send,{enter}
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
tanı()
Send, D50.9
Send,{enter}
return

^+g:: ;genel
tanı()
Send, Z00.0
Send,{enter}
return



^+H:: ;Hipertansiyon
tanı()
Send, I10
Send,{enter}
return

^+j:: ;allerji
tanı()
Send, T78.4
Send,{enter}
return


^+K:: ;KABIZLIK
tanı()
Send, K59.0
Send,{enter}
return

^+l:: ;hiperlipidemi
tanı()
Send, E78.5
Send,{enter}
return

^+ş:: ;astım
tanı()
Send, J45.9
Send,{enter}
return

^+i:: ; folat
tanı()
Send, D52.9
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
tanı()
Send, R11
return



^+v:: ; vertigo
tanı()
Send, R42
Send,{enter}
return



^+b:: ; B12
tanı()
Send, d51.9
Send,{enter}
return


^+n:: ;
tanı()
return



^+M:: ;MİYALJİ
tanı()
Send, M79.1
Send,{enter}
return





^+ö:: ;
tanı()
return

^+ç:: ; kalsiyum
tanı()
Send, E58
return

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












