SetTitleMatchMode 2	; put this at the top of your script

; Duplicate chrome tabs with ctr+d
#If WinActive("Panates") or  WinActive("Tedavi İstem")

tedaviyetıkla()
{
	Click, 1335 346
	Sleep 501
	Click, 140 121
	Sleep 99
	Send ^a
	Sleep 99
	Send {Backspace}
	Sleep 99
}

dekubityarapansumanı()
{
	Send,530581
	Sleep  102
	Send, {Enter}
	Sleep 102
	Send, {Enter}
	Sleep 102
}

yarapansumanı()
{
	Send,530580
	Sleep  102
	Send, {Enter}
	Sleep 102
	Send, {Enter}
	Sleep 102
}

yaradebridmanı()
{
	Send,530560
	Sleep  102
	Send, {Enter}
	Sleep 102
	Send, {Enter}
	Sleep 102
}

dekubityaradebridmanı()
{
	Send,530561
	Sleep  102
	Send, {Enter}
	Sleep 102
	Send, {Enter}
	Sleep 102
}


imenj()
{
	Send,530140
	Sleep  102
	Send, {Enter}
	Sleep 102
	Send, {Enter}
	Sleep 102
}

lokalanestezi()
{
	Send,530290
	Sleep  102
	Send, {Enter}
	Sleep 102
	Send, {Enter}
	Sleep 102
}

damaryolu()
{
	Send,530080
	Sleep  102
	Send, {Enter}
	Sleep 102
	Send, {Enter}
	Sleep 102
}

ivilaç()
{
	Send,530160
	Sleep  102
	Send, {Enter}
	Sleep 102
	Send, {Enter}
	Sleep 102
}

glukotest()
{
	Send,901490
	Sleep  102
	Send, {Enter}
	Sleep 102
	Send, {Enter}
	Sleep 102
}

65yaş()
{
	Send, 520042
	Sleep  200
	Send, {Enter}
	Sleep 102
	Send, {Enter}
	Sleep 102
}

diabet()
{
	Send, 530090
	Sleep  200
	Send, {Enter}
	Sleep 102
	Send, {Enter}
	Sleep 102
}

koah()
{
	Send 701076
	Sleep 399
}

sonlandır()
{
	Send,{Esc}
	Sleep 199
	Send,{Esc}
	Sleep 199
	Send,{Esc}
	Sleep 1000
	Send,{F9}
	Sleep 1000
	Send,{F4}
	Sleep 1000
	Click 119 331
	Sleep 1000
	Send, s
	Sleep 500
	Send,{Tab}
	Send, Ö
	Sleep 500
	Send,{enter}
	Send,{F9}
	Sleep 1000
	Send, s
	Sleep 1000
	Send,{Tab}
	Send, Ö
	Click 67 82
	Sleep 1000
	Click 568 830
	Sleep 2000
	Send, {Down}
}

sonlandıry()
{
	Send,{Esc}
	Sleep 199
	Send,{Esc}
	Sleep 199
	Send,{Esc}
	Sleep 1000
	Send,{F9}
	Sleep 1000
	Send,{F4}
	Sleep 1000
	Click 119 331
	Sleep 1000
	Send, y
	Sleep 500
	Send,{Tab}
	Send, Ö
	Sleep 500
	Send,{enter}
	Send,{F9}
	Sleep 1000
	Send, y
	Sleep 1000
	Send,{Tab}
	Send, Ö
	Click 67 82
	Sleep 1000
	Click 568 830
	Sleep 2000
	Send, {Down}
}



sonlandır2()
{
	Send, {Esc}
	Sleep 500
	Send,{F9}
	Sleep 1000
	Send,{F4}
	Sleep 1000
	Send,{F9}
	Sleep 2000
	Click 67 82
	Sleep 1000
	Click 568 830
	Sleep 2000
	Send, {Down}
	Sleep 1000
}

muayenesonlandıriptal()
{
Send {F5}
Sleep 99
}

dönbiralta()
{
	Click 67 82
	Sleep 1000
	Click 568 830
	Sleep 1000
	Send, {Down}
}

hastanakil()
{
	Send, HASTA N
	Sleep 1500
	Send, {Enter}
	Sleep 1000
	Send, {Enter}
	Sleep 1000
}

address(x)
{
	Click, 140 121 2
	Sleep 500
	Send, evde
	Sleep 500
	Send, {Up 50}
	Sleep 1000
	Send, {down %x%}
	Sleep 500
	Send, {Enter}
	Sleep 1000
	Send, {Enter}
	Sleep 2000
}



çık()
{
	Send {Esc}
	Send {Esc}
}

+q:: ; PANSUMAN  dekubit yara pansumanı* yara pansumanı* yara debridmanı* im* la*
tedaviyetıkla()
yarapansumanı()
yaradebridmanı()
imenj()
lokalanestezi()
;;çık()
return


+W:: ;  ;;;; yara pansumanı* ;;ım enjeksiyon* ;;damar yolu açılması* ;; iv ilaç infüzyonu* ;; gluko test*
tedaviyetıkla()
yarapansumanı()
imenj()
lokalanestezi()
damaryolu()
ivilaç()
glukotest()
;;çık()
return

+e:: ;; pansuman + iv tedavi ;; dekubit yara pansumanı* ;;;; yara pansumanı*
tedaviyetıkla()
dekubityaradebridmanı()
dekubityarapansumanı()
yarapansumanı()
yaradebridmanı()
imenj()
lokalanestezi()
;;çık()
return

+r:: ;
tedaviyetıkla()
dekubityarapansumanı()
yarapansumanı()
;;çık()
return



+t:: ; 65 yaş üstü
tedaviyetıkla()
dekubityaradebridmanı()
dekubityarapansumanı()
yarapansumanı()
yaradebridmanı()
imenj()
lokalanestezi()
ivilaç()
glukotest()


;;çık()
return

+y:: ;
tedaviyetıkla()
dekubityaradebridmanı()
dekubityarapansumanı()
return



+U:: ;65 YAŞ üstü ana sayfaya dön direk ekle dön başka bir şey yapma
Send, {Esc}
Sleep 2000
Send, ^2
Sleep 3000
65yaş()
Sleep 1000
Send,{enter}
Sleep 1500
Send,{enter}
Sleep 1500
Send,{Esc}
Sleep 1000
Send,{Esc}
Sleep 1000
;;çık()
return


+ı:: ;iç hastalkları

yarapansumanı()
return

+o:: ; ; 65 yaş üstü
tedaviyetıkla()
65yaş()
;;çık()
return

+p:: ;
tedaviyetıkla()
diabet()
return

+ü:: ;
muayenesonlandıriptal()
tedaviyetıkla()

return




+a:: ; 65 PANSUMAN  dekubit yara pansumanı* yara pansumanı* yara debridmanı*
tedaviyetıkla()
yarapansumanı()
yaradebridmanı()
imenj()
lokalanestezi()
65yaş()
;;çık()
return

+s:: ;  ;;;; 65 yara pansumanı* ;;ım enjeksiyon* ;;damar yolu açılması* ;; iv ilaç infüzyonu* ;; gluko test*
tedaviyetıkla()
yarapansumanı()
imenj()
lokalanestezi()
damaryolu()
ivilaç()
glukotest()
65yaş()
;;çık()
return


+d:: ;; pansuman + iv tedavi ;; dekubit yara pansumanı* ;;;; yara pansumanı*
tedaviyetıkla()
dekubityaradebridmanı()
dekubityarapansumanı()
yarapansumanı()
yaradebridmanı()
imenj()
lokalanestezi()
65yaş()
;;çık()
return





+F:: ;; pansuman
tedaviyetıkla()
dekubityarapansumanı()
yarapansumanı()
65yaş()
;;çık()
return


+g:: ;
tedaviyetıkla()
dekubityarapansumanı()
yarapansumanı()
yaradebridmanı()
imenj()
lokalanestezi()
ivilaç()
glukotest()
65yaş()
return



+H:: ;
tedaviyetıkla()
dekubityaradebridmanı()
dekubityarapansumanı()
yaradebridmanı()
yarapansumanı()
65yaş()
return

+j:: ;
return


+K:: ;
;  DÜŞÜLEN TEDAVİLERİ İPTAL ET
Loop 10
{
Click, 629 243
Sleep 200
Click, R
Sleep 500
Send, {down}
Sleep 500
Send, {enter}
Sleep 5000
}

return

+l:: ;
tedaviyetıkla()
hastanakil()
return

+ş:: ;
return

+i:: ;
return





+<:: ; pole dön
Click, 500 500
Click, 700 700
Send,{F9}
Sleep 1000
Send, ^+{Tab}
Sleep 500
Click, 500 500
Send,{down 30}
return



+z:: ;şehiriçi
tedaviyetıkla()
address(43)
;;çık()
return

+x:: ;yeşilli
tedaviyetıkla()
address(1)
;;çık()

return

+c:: ;çınaraltı
tedaviyetıkla()
address(7)
;;çık()

return




+v:: ;kovanlı()
tedaviyetıkla()
address(31)
;;çık()
return



+b:: ;yaylatepe
tedaviyetıkla()
address(38)
;;çık()
return

+n:: ;anıttepe()
tedaviyetıkla()
address(0)
;;çık()
return



+M:: ;kaynakkaya
tedaviyetıkla()
address(9)
;;çık()
return





+ö:: ;
sonlandıry()
return




+ç:: ;
;  DÜŞÜLEN TEDAVİLERİ İPTAL ET
Loop 10
{
Click, 629 243
Sleep 200
Click, R
Sleep 500
Send, {down}
Sleep 500
Send, {enter}
Sleep 5000
}


/*
tedaviyetıkla()
hastanakil()
;;çık()
*/
return



+*::  ;;
;  DÜŞÜLEN TEDAVİLERİ İPTAL ET
Loop 10
{
Click, 629 243
Sleep 200
Click, R
Sleep 500
Send, {down}
Sleep 500
Send, {enter}
Sleep 5000
}

return



+,:: ;;
sonlandır2()
return



+.:: ;
sonlandır()
return








