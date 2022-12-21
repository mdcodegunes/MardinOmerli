funcIzlem()
{
;!+t:: ; izlem ekle
Run, https://evdesaglik.saglik.gov.tr/EvdeSaglik/TSMAlinanHizmetEmirleri/TSMAlinanHizmetEmirleriListesi
Sleep 1500
Click, 367 417
Sleep 1500
Click, 367 417
return
}
funcEhs()
{
;!+e:: ;  ehs ye izlem ekle
Click, 1539 854
Sleep 1500
Send, {Tab 21}
Sleep 1500
Send,{enter}
Sleep 1500
Send, {Tab 5}
Sleep 1500
Send,{enter}
Sleep 1500
Send, {Tab 20}
Sleep 1500
Send,{enter}
Sleep 1500
;;;Send, {Tab 14}
Sleep 1500
Send, {enter}
Sleep 1000
Click, 431 595
Sleep 400
;;;  Tanı gir
Send, Z00.0
Sleep 3000
Send, {down}
Sleep 200
Send,{enter}
Sleep 500
Send, {Tab}
Sleep 200
Send,{enter}
Sleep 500
Send, {Tab 13}
Sleep 1000
Send, y
Sleep 500
Send, {Tab}
Sleep 200
Send, y
Send, {Tab 2}
Sleep 200
Send, y
Send, {Tab 3}
Sleep 200
Send, {Tab}
Sleep 500
Send, {Tab}
Sleep 500
Send, {Tab}
Sleep 500
Send, {Tab}
Sleep 500
Send, h
Send, {Tab}
Sleep 200
Send, h
Send, {Tab}
Sleep 200
return
}

myFuncHasta(isim, adres, tel, işlem, bağımlı, tanı, yaş, tc)
{
Send  %isim%
Sleep 500
Send, {Tab 2}
Sleep 500
Send %adres%
Sleep 500
Send, {Tab}
Sleep 500
Send %tel%
Sleep 500
Send, {Tab}
Sleep 500
Send %işlem%
Sleep 500
Send, {Tab 4}
Sleep 500
Send, #2
Sleep 2500
Send, %isim%
Sleep 500
Send, {Tab}
Sleep 500
Send, %bağımlı%
Sleep 500
Send, {Tab}
Sleep 500
Send, %tanı%
Sleep 500
Send, {Tab}
Sleep 500
Send, %işlem%
Sleep 500
Send, {Tab}
Sleep 500
Send, %yaş%
Sleep 500
Send, {Enter}
Sleep 500
Sleep 500
Send, #3
Sleep 2500
funcIzlem()
Sleep 7500
Send, %tc%
Sleep 1500
funcEhs()
Sleep 3500
Send, %işlem%
Return

}

funcKayıt(tc, tel)
{
Click 39 132
Send, %tc%
Sleep 499
Send {Enter}
Sleep 999
Click, 294 228 2
Sleep 200
Click, 294 228 2
Sleep 1999
;Click 861 324
Click 857, 343
Sleep 2000
Send +{Tab 2}
Sleep 999
Send %tel%
;;Click, 270 384
Click, 339 405
Sleep 500
;; pol
Send, Evde Sa
Sleep 500
Send, {Tab 2}
Sleep 500
;; dr
Send, Ömer
Sleep 500
Send, {F9}
Sleep 599
Send, {Right}
Sleep 299
Send, {Enter}
Sleep 5000
Send, {Esc}
Sleep 3000
Send, {Esc}
Sleep 3000
Send, {Esc}
Sleep 3000
Send, {Esc}
Sleep 3000
Send, {Esc}
return
}


funcKayıtA(tc, tel)
{
Click 39 132
Send, %tc%
Sleep 499
Send {Enter}
Sleep 999
Click, 294 228 2
Sleep 200
Click, 294 228 2
Sleep 9999
;Click 861 324
Click, 857 343
Sleep 2000
Send +{Tab 2}
Sleep 999
Send %tel%
Click, 270 384
Sleep 500
;; pol
Send, Aile
Sleep 500
Send, {Tab 2}
Sleep 500
;; dr
Send, Ömer
Sleep 500
Send, {F9}
Sleep 5000
Send, {Esc}
Sleep 3000
Send, {Esc}
Sleep 3000
Send, {Esc}
return
}


/*
::a.::
Send, ^c
Sleep 99
Send, ^c
Sleep 99
Send,myFuncHasta(%clipboard%)
return

:z.::
Send, ^c
Sleep 99
Send, ^c
Sleep 99
Send,funcKayıt(%clipboard%)
return
*/

::*n::
Send,
(
::a,:: ;;
myFuncHasta("", "", , "", "", "", , )
Return
::k,::
funcKayıt(, )
Return
)
Return

::ala,:: ;;
myFuncHasta("ALİ AKAY", "ÖMERLİ", 5414662840, "GTM", "YARI BAĞIMLI", "KIRIK", 81, 19235582656)
Return
::alak,::
funcKayıt(19235582656,5414662840)
Return
::alad,::xx


::ifa,:: ;;
myFuncHasta("İDİ FİLİZ", "ÖMERLİ", 5425461074, "PANSUMAN", "TAM BAĞIMLI", "GENEL DURUM BOZUKLUĞU", 90, 49363577958)
Return
::ifk,::
funcKayıt(49363577958,5425461074)
Return
::ifd,::


::şega,:: ;;
myFuncHasta("ŞEYHMUS GÜNEŞ", "ÖMERLİ ", 5353804320, "PANSUMAN", "YARI BAĞIMLI", "KIRIK", 48, 63565104538)
Return
::şegk,::
funcKayıt(63565104538,5353804320)
Return



::güaa,:: ;;
myFuncHasta("GÜLSEVİM ARAZ", "YEŞİLLİ", 5442070951, "PANSUMAN", "YARI BAĞIMLI", "PROTEZ CERRAHİSİ", 66, 58387221488)
Return
::güak,::
funcKayıt(58387221488,5442070951 )
Return
::güai,::GÜLSEVİM ARAZ, 05442070951, PANSUMAN , YEŞİLLİ



::hata,:: ;;
myFuncHasta("HASİNE TUNÇ", "ÇINARALTI", 5310216104, "GTM", "YARI BAĞIMLI", "KOAH", 90, 25586370668)
Return
::hatk,::
funcKayıt(25586370668,5310216104 )
Return


::kama,:: ;;
myFuncHasta("KADRİ MERKİT", "YEŞİLLİ", 5050868475, "GTM", "YARI BAĞIMLI", "SEREBRAL PALSİ", 30, 63556049176)
Return
::kamk,::
funcKayıt(63556049176,5050868475 )
Return

::haka,:: ;;
myFuncHasta("HASİBE KETTE", "YEŞİLLİ", 5467811127, "PANSUMAN", "YARI BAĞIMLI", "YUMUŞAK DOKU BOZUKLUĞU", 75, 10733809832)
Return
::hakk,::
funcKayıt(10733809832, 5467811127)
Return

::edaa,:: ;;
myFuncHasta("EDİBE AKGÜNDÜZ", "ÖMERLİ", 5309582127, "IM ENJEKSİYON", "YARI BAĞIMLI", "OSTEOPOROZ", 80, 33371111044)
Return
::edak,::
funcKayıt(33371111044,5309582127)
Return

::hiya,:: ;;
myFuncHasta("HİLMİ YILMAZ", "DEREYANI", 5353834606, "İV TEDAVİ", "YARI BAĞIMLI", "YUMUŞAK DOKU ZEDELENMESİ", 51, 30482151464)
Return
::hiyk,::
funcKayıt(30482151464,5353834606 )
Return
::hiyi,:: HİLMİ YILMAZ, 05353834606, İV TEDAVİ, DEREYANI

::abba,:: ;;
myFuncHasta("ABDURRAHMAN BİNKAY", "YEŞİLLİ", 5520112236, "GTM", "YARI BAĞIMLI", "YAŞLILIK", 89, 15173661842)
Return
::abbk,::
funcKayıt(15173661842, 5520112236)
Return

::muara,:: ;;
myFuncHasta("MURVET ARTUK", "SANCAR", 5368920993, "GTM", "TAM BAĞIMLI", "SEREBRAL PALSİ", 18, 22538416450)
Return
::muark,::
funcKayıt(22538416450, 5368920993)
Return

::yaa,:: ;;
myFuncHasta("YUSUF AKDOĞAN", "ÖMERLİ", 5368599887, "GTM", "YARI BAĞIMLI", "GONARTROZ BPH", 72, 52873460948)
Return
::yak,::
funcKayıt(52873460948,5368599887)
Return

::sda,:: ;;
myFuncHasta("SUNAY DAŞ", "ÖMERLİ", 5360142185, "GTM", "YARI BAĞIMLI", "SEREBRAL PALSİ", 29,23414443218 )
Return
::sdk,::
funcKayıt(23414443218,5360142185)
Return

::aya,:: ;;
myFuncHasta("ABUDE YILMAZ", "DEREYANI", 5355928327, "GTM", "YARI BAĞIMLI", "YUMUŞAK DOKU,HT", 79, 30485151300)
Return
::ayk,::
funcKayıt(30485151300,5355928327 )
Return


::şdi,::ŞEYHMUS	DAĞ ANITTEPE  GTM ;;5399161047
::şda,:: ;;
myFuncHasta("ŞEYHMUS DAĞ", "ANITTEPE", 5399161047, "GTM", "YARI BAĞIMLI ", "DM", 80,59746231940 )
Return
::şdk,::
funcKayıt(59746231940,5399161047 )
Return
::şdk*::
funcKayıtA(59746231940,5399161047 )
Return

::nhi,::NURELHUDA HÜSEYİN,05375533047,  ÖMERLİ, NAKİL 🚑🚑🚑, 
::nha,:: ;;
myFuncHasta("NURELHUDA HÜSEYİN", "ÖMERLİ", 5375533047, "GTM", "TAM BAĞIMLI ", "EPİLEPSİ", 31,46757012620 )
Return
::nhk,::
funcKayıt(46757012620,5375533047)
Return

::nbi,::NAZLİYE BAYHOCA, YEŞİLLİ,5439738130 "SONDA",
::nba,:: ;;
myFuncHasta("NAZLİYE BAYHOCA", "YEŞİLLİ",5439738130 , "SONDA", "TAM BAĞIMLI", "ÜRİNER İNKONTİNAS", 84,31895104528 )
Return
::nbk,::
funcKayıt(31895104528,5439738130 )
Return

::osi,::OSMAN SAVAŞ", "YEŞİLLİ", 5413799944, "PANSUMAN"
::osa,:: ;;
myFuncHasta("OSMAN SAVAŞ", "YEŞİLLİ", 5413799944, "PANSUMAN", "TAM BAĞIMLI", "KBY", 74, 49711510682)
Return
::osk,::
funcKayıt(49711510682, 5413799944)
Return

::hki,::HALİMİ KAYA GTM ÖMERLİ
::hkt,::41137852124
::hkp,::5307870444
::hka,:: ;;
myFuncHasta("HALİMİ KAYA" ,"ÖMERLİ", 5307870444, "GTM", "YARI BAĞIMLI", "DM", 85, 41137852124)
Return
::hkk,::
funcKayıt(41137852124, 5307870444)
return


::şgi,::ŞÜKRİYE GÜMÜŞ GTM SALİHKÖY
::şgt,::21140518798
::şgp,::5397348360
::şga,:: ;;
myFuncHasta("ŞÜKRİYE GÜMÜŞ", "SALİHKÖY", 5397348360 , "GTM", "YARI BAĞIMLI",  "DM, HL, KBY", 40, 21140518798)
Return
::şgk,::
funcKayıt(21140518798, 5397348360)
return

::ppi,::PERİHAN PERK GTM YEŞİLLİ
::ppt,::50464485578
::ppp,::5536956347
::ppa,:: ;;
myFuncHasta("PERİHAN PERK", "YEŞİLLİ", 5536956347, "GTM", "TAM BAĞIMLI", "HT", 91, 50464485578)
Return
::ppk,::
funcKayıt(50464485578,5536956347)
return








::dai,::DAVUT ARSLAN 05325724453 PANSUMAN ZEYTİNLİ
::DAt,::36700944306
::DAp,::5325724453
::DAa,:: ;;
myFuncHasta("DAVUT ARSLAN", "YEŞİLLİ", 5325724453, "PANSUMAN", "TAM BAĞIMLI", "SVO", 84, 36700944306)
Return
::DAk,::
funcKayıt(36700944306,5325724453)
return




::tki,::TÜRKİYE KABA YEŞİLLİ İV TEDAVİ
::tkt,::32900070944
::tkp,::5333196644
::tka,:: ;;
myFuncHasta("TÜRKİYE KABA", "YEŞİLLİ", 5333196644, "İV TEDAVİ", "YARI BAĞIMLI", "DM OSTEOPOROZ", 83, 32900070944)
Return
::tkk,::
funcKayıt(32900070944,5333196644)
return




::şöi,::ŞEYHMUS ÖZ GTM KAYNAKKAYA
::şöt,::40117886432
::şöp,::5444835961
::şöa,:: ;;
myFuncHasta("ŞEYHMUS ÖZ", "KAYNAKKAYA", 5444835961,  "GTM", "YARI BAĞIMLI", "PARKİNSON YUMUŞAK DOKU BOZUKLUĞU", 71, 40117886432)
return
::şök,::
funcKayıt(40117886432, 5444835961)
return




::vöi,::VEYSİ ÖZTEKİN PANSUMAN ÖMERLİ
::vöt,::49543571974
::vöp,::5330229704
::vöa,:: ;;
myFuncHasta( "VEYSİ ÖZEKİN", "ÖMERLİ", 5330229704, "PANSUMAN", "YARI BAĞIMLI", "KIRIK", 56, 49543571974)
Return
::vök,::
funcKayıt(49543571974, 5330229704)
return




::ttt,::31283124824
::ttp,::5424953857
::tta,:: ;;
myFuncHasta("TÜRKİYE TANIŞ", "YEŞİLLİ", 5424953857, "SONDA", "TAM BAĞIMLI", "SİSTİT", 74, 31283124824)
Return
::TTk,::
funcKayıt(31283124824, 5424953857)
return





::ait,::11654779112
::aip,::5414292319
::aia,:: ;;
myFuncHasta("ALİ İLTER", "YEŞİLLİ", 5414292319, "GTM", "BAĞIMSIZ", "YUMUŞAK DOKU BOZUKLUĞU", 79, 11654779112)
Return
::aik,::
funcKayıt(11654779112, 5414292319)
return




::nit,::11615780492
::nip,::5414292319
::nia,:: ;;
myFuncHasta("NAİLE İLTER", "YEŞİLLİ",5414292319, "GTM", "YARI BAĞIMLI", "YAŞLILIK", 77,11615780492)
Return
::nik,::
funcKayıt(11615780492, 5414292319)

return








::şözt,::12785797624
::şözp,::5456940659
::şöza,:: ;;
myFuncHasta("ŞEYHO ÖZDEMİR", "ÖMERLİ",5456940659, "GTM", "TAM BAĞIMLI", "VERTİGO", 92,12785797624)
Return
::şözk,::
funcKayıt(12785797624,5456940659)
return




::aakt,::19235582656
::aakp,::5417662840
::aaka,:: ;;
 myFuncHasta("ALİ AKAY", "TAŞGEDİK",5417662840, "GTM", "YARI BAĞIMLI", "KIRIK SONRASI İYİLEŞME", 84,19235582656)
Return

::aakk,::
funcKayıt(19235582656, 5417662840)

return





::şbt,::42988734690
::şbp,::5413264747
::şba,:: ;;
myFuncHasta("ŞEYHMUZ BATMAZ", "YEŞİLLİ",5413264747, "GTM", "YARI BAĞIMLI", "KBY", 78,42988734690)
Return
::şbk,::
funcKayıt(42988734690, 5413264747)
return




::mbi,::MİHDİYE BATMAZ İM TEDAVİ YEŞİLLİ
::mbt,::42940736274
::mbp,::5413264747
::mba,:: ;;
myFuncHasta("MİHDİYE BATMAZ", "YEŞİLLİ",5413264747, "İM TEDAVİ", "YARI BAĞIMLI", "ESANSİYEL (PRİMER) HİPERTANSİYON", 69,42940736274)
Return

::mbk,::
funcKayıt(42940736274, 5413264747)
return





::ASt,::25676311786
::ASp,::5013189578
::ASa,:: ;;
myFuncHasta("ALİ SENÜK", "YEŞİLLİ",5013189578, "PANSUMAN", "TAM BAĞIMLI", "YUMUŞAK DOKU BOZUKLUĞU", 51,25676311786)

Return

::ASk,::
funcKayıt(25676311786, 5013189578)
return





::vat,::53935369766
::vap,::5446411888
::vaa,:: ;;
myFuncHasta("VEHBİYE AĞAN", "YEŞİLLİ",5446411888, "NAKİL", "TAM BAĞIMLI", "HT DM", 63,53935369766)
Return
::vak,::
funcKayıt(53935369766, 5446411888)
return




::hıt,::63931092766
::hıp,::5377277836
::hıa,:: ;;
myFuncHasta("HIDIR İRMAK", "KOVANLI",5377277836, "GTM", "TAM BAĞIMLI", "KIRIK", 67,63931092766)
return
::hık,::
funcKayıt(63931092766, 5377277836)
return




::fkt,::51466508364
::fkp,::5352727779
::fka,:: ;;
myFuncHasta("FATMA KAYA", "ÖMERLİ",5352727779, "GTM", "TAM BAĞIMLI", "EPİLEPSİ", 23,51466508364)
return
::fkk,::
funcKayıt(51466508364, 5352727779)
Return



::ekt,::10706810766
::ekp,::5452010869
::eka,:: ;;
myFuncHasta("EMİNE KETTE", "YEŞİLLİ",5452010869, "PANSUMAN", "TAM BAĞIMLI", "DM", 80,10706810766)
return

::ekk,::
funcKayıt(10706810766,5452010869)
Return


;; index 50
::şai,::ŞEYHMUS ACU PANSUMAN YEŞİLLİ
::şat,::47350589236
::şap,::5432256458
::şaa,:: ;;
myFuncHasta("ŞEYHMUS ACU", "YEŞİLLİ",5432256458, "PANSUMAN", "YARI BAĞIMLI", "YANIK", 63,47350589236)

return

;; panates kayıt
::şak,::
funcKayıt(47350589236,5432256458)
Return




::eöt,::10304575814
::eöp,::5468034285
::eöa,:: ;;
myFuncHasta("ESRA ÖTER", "ÖMERLİ",5468034285, "GTM",  "TAM BAĞIMLI", "EPİLEPSİ", 18,10304575814)

return
;; panates kayıt
::eök,::
funcKayıt(10304575814, 5468034285)


Return





::stt,::22052432516
::stp,::5456554566
::sta,:: ;;
 myFuncHasta("SELİM TEKİN", "YEŞİLLİ",5456554566, "İV TEDAVİ", "TAM BAĞIMLI", "SVO", 58,22052432516)
return
;; panates kayıt
::stk,::
funcKayıt(22052432516,5456554566)


Return



::muai,::MUNİR AKGÜL B12 İM ÖMERLİ
::muat,::46861661806
::muap,::5386861406
::muaa,:: ;;
myFuncHasta("MUNİR AKGÜL", "ÖMERLİ",5386861406, "İM TEDAVİ", "YARI BAĞIMLI", "SVO", 61,46861661806)

return

;; panates kayıt
::muak,::
funcKayıt(46861661806,5386861406)


Return




::şkt,::44380688304
::şkp,::5432252064
::şka,:: ;;
myFuncHasta("ŞEYHMUS KORKUT", "YEŞİLLİ",5432252064, "GTM", "YARI BAĞIMLI", "ALZHEİMER", 74,44380688304)

return

;; panates kayıt
::şkk,::
funcKayıt(44380688304, 5432252064)

Return



::MEt,::14429686684
::MEp,::5432934988
::MEa,:: ;;
myFuncHasta("MEHMET ELBAN", "YEŞİLLİ",5432934988, "GTM", "TAM BAĞIMLI","SVO", 82,14429686684)

return
;; panates kayıt
::mek,::
funcKayıt(14429686684,5432934988)


Return









::höt,::39634902534
::höp,::5342666912
::höa,:: ;;
myFuncHasta("HAMDİYE ÖZ", "KAYNAKKKAYA",5342666912, "GTM TAHLİL", "YARI BAĞIMLI", "YUMUŞAK DOKU BOZUKLUĞU", 71,39634902534)

return

;; panates kayıt
::hök,::
funcKayıt(39634902534, 5342666912)
Return






::zöt,::63373111308
::zöp,::5449308947
::zöa,:: ;;
myFuncHasta("ZEKİYE ÖKMEN", "KOVANLI",5449308947, "TAHLİL", "YARI BAĞIMLI", "SEREBRAL ENFARKTÜS", 71,63373111308)

return

;; panates kayıt
::zök,::
funcKayıt(63373111308,5449308947)
return










;; barter yapıldı
::sakp,::5510781005
::sakt,::33389110480
::saka,:: ;;
myFuncHasta("SEKİNE AKGÜNDÜZ", "ÖMERLİ",5510781005,"NAKİL","YARI BAĞIMLI", "DM YUMUŞAK DOKU BOZ", 87,33389110480)

return

;; panates kayıt
::sakk,::
funcKayıt(33389110480, 5510781005)


Return





::mçp,::5422674647
::mçt,::39334856472
::mça,:: ;;
myFuncHasta("MUAYYET ÇAM","YEŞİLLİ",5422674647,"GTM","TAM BAĞIMLI","SEREBRAL PALSİ", 31,39334856472)

return

;; panates kayıt
::mçk,::
funcKayıt(39334856472,5422674647)
Return





::hçp,::5422674647
::hçt,::39538849638
::hça,:: ;;
myFuncHasta("HANİMİ ÇAM", "YEŞİLLİ",5422674647, "GTM", "YARI BAĞIMLI", "YAŞLILIK", 79,39538849638)

return
;; panates kayıt
::hçk,::
funcKayıt(39538849638,5422674647)
Return




::smi,::SAKİNE MALKOÇ YEŞİLLİ NAKİL
::smp,::5423561219
::smt,::59044246554
::sma,::
myFuncHasta("SAKİNE MALKOÇ", "YEŞİLLİ",5423561219,"GTM","TAM BAĞIMLI", "KIRIK",55,59044246554)
return

::smk,::
funcKayıt(59044246554, 5423561219)
Return




::hmlp,::5462941970
return
::hmlt,::23960369086
::hmla,:: ;;
myFuncHasta("HAYRİYE MALKAÇ", "YEŞİLLİ", 5462941970, "GTM", "TAM BAĞIMLI", "SEREBRAL PALSİ", 44,23960369086)
return

::hmlk,::
funcKayıt(23960369086, 5462941970)
Return





::hmp,::5462941970
::hmt,::64492017946
::hma,:: ;;
myFuncHasta("HASİBE MALKAÇ", "YEŞİLLİ", 5462941970, "GTM", "TAM BAĞIMLI", "HT", 72, 64492017946)
Return

;; panates kayıt
::hmk,::
funcKayıt(64492017946,5462941970)


Return




::fert,::35980968132
::ferp,::5386894707
::fera,:: ;;
myFuncHasta("FEYZİ ERDEM", "DEREYANI", 5386894707, "NAKİL",  "TAM BAĞIMLI",  "YUMUŞAK DOKU BOZUKLUĞU", 38, 35980968132)

return

::ferk,::
funcKayıt(35980968132,5386894707)
Return




::mari,::MEHMET ARSLAN  SUBKUTAN ENJEKSİYON YAYLATEPE
::mara,:: ;;
myFuncHasta("MEHMET ARSLAN", "YAYLATEPE",5326440677, "SUBCUTAN ENJEKSİYON",  "YARI BAĞIMLI",  "AKCİĞER CA", 52,37759964796)

return

::mark,::
funcKayıt(37759964796, 5326440677)
Return

::iöa,:: ;;
 myFuncHasta("İSMAİL ÖNEY", "YEŞİLLİ", 5412654055, "SONDA",  "TAM BAĞIMLI",  "KIRIK", 80,21494451178)

return

;; panates kayıt
::iök,::
funcKayıt(21494451178,5412654055)

Return

::nida,:: ;;
myFuncHasta("NURİ DURĞAY", "ÖMERLİ", 5388842335, "İM TEDAVİ","TAM BAĞIMLI","YAŞLILIK",93,44119752788)
return

;; panates kayıt
::nidk,::
funcKayıt(44119752788, 5388842335)
Return




::aba,:: ;;
myFuncHasta("AHMET BULUT", "ÇINARALTI", 5364555809, "SONDA", "TAM BAĞIMLI", "ÜRİNER İNKONTİNAS", 92,29843228716)
return

::abk,::
funcKayıt(29843228716, 5364555809)
Return




::aala,:: ;;
myFuncHasta("AHMET ALTUNDAĞ", "ÖMERLİ", 5550042140, "İM TEDAVİ",  "TAM BAĞIMLI",  "ALZHEİMER", 69,39433908942)
Return
::aalk,::
funcKayıt(39433908942,5550042140)
Return


::mka,:: ;;
myFuncHasta("MEHMET KARADAŞ", "ÖMERLİ", 5465758181, "GTM",  "TAM BAĞIMLI",  "YAŞLILIK", 89,30161218068)
Return

::mkk,::
 funcKayıt(30161218068, 5465758181)


Return

::fea,:: ;;
myFuncHasta("FATİME ERCAN", "KOCAKUYU", 5363558698, "NAKİL",  "TAM BAĞIMLI",  "SEREBROVASKÜLER HASTALIK",  48,27488307414)
Return

;; panates kayıt
::fek,::
funcKayıt(27488307414, 5363558698)


Return


::sşa,:: ;;
myFuncHasta("SEKİNE ŞAHİN", "ÖMERLİ", 5052467978, "TAHLİL",  "YARI BAĞIMLI",  "DM", 94,64423351132)
Return

;; panates kayıt
::sşk,::
funcKayıt(64423351132, 5052467978)
Return


::maa,:: ;;
myFuncHasta("MEHDİYE ACU", "YEŞİLLİ", 5416152629, "SONDA",  "YARI BAĞIMLI",  "DM HT", 83,47395587716)
Return

::mak,::
funcKayıt(47395587716,5416152629)
Return


::nya,:: ;;
myFuncHasta("NURETTİN YÜKSEL", "ÖMERLİ", 5541342797, "GTM  TAHLİL",  "TAM BAĞIMLI",  "YUMUŞAK DOKU BOZUKLUĞU", 97,18254615338)
Return
::nyk,::
funcKayıt(18254615338, 5541342797)
Return




::tai,::TÜRKİYE ALP SC ENJ  YEŞİLLİ
::taa,:: ;;
myFuncHasta("TÜRKİYE ALP", "YEŞİLLİ", 5469261565, "SC ENJEKSİYON",  "YARI BAĞIMLI",  "ROMATİT ARTİT", 81,18050565998)
Return
::tak,::
funcKayıt(18050565998, 5469261565)

Return


::ahala,:: ;;
myFuncHasta("AHMET ALGAN", "ÖMERLİ", 5051471848, "GTM",  "YARI BAĞIMLI",  "YAŞLILIK", 80, 26156351896)
Return


;; panates kayıt
::ahalk,::
funcKayıt(26156351896, 5051471848)
Return

::ata,:: ;;
myFuncHasta("ALİ TEKİN", "YEŞİLLİ", 5531339199, "SONDA",  "TAM BAĞIMLI",  "BPH", 86,22568415362)
Return
::atk,::
funcKayıt(22568415362, 5531339199)
Return

;; index 0
::aaa,:: ;; 
myFuncHasta("ADLE AY", "ÖMERLİ", 5531166474, "GTM","TAM BAĞIMLI", "YAŞLILIK", 89,22490473720)
Return
::aak,::
funcKayıt(22490473720, 5531166474)
return
::aai,::ADLE AY, 5531166474, GTM,ÖMERLİ,


::sat,::64780008328
::sai,::SEYFETTİN AKKOÇ PANSUMAN YEŞİLLİ
::saa,:: ;;
myFuncHasta("SEYFETTİN AKKOÇ", "YEŞİLLİ", 5397756303, "PANSUMAN", "TAM BAĞIMLI", "DM APOPLEKSİ",67,64780008328)
return
::sak,::
funcKayıt(64780008328, 5397756303)
Return




;;açmıyor
::via,:: ;; 
myFuncHasta("VEZİRİ İLETMİŞ", "YEŞİLLİ", 5315168667, "PANSUMAN", "TAM BAĞIMLI", "YUMUŞAK DOKU BOZUKLUĞU", 81, 35683978100)
Return
::vik,::
funcKayıt(35683978100, 5315168667)
Return


::fta,:: ;;  ulaşılamadı
myFuncHasta("FATMA TURAN", "ÖMERLİ", 5317207711, "GTM", "YARI BAĞIMLI", "OSTEOPOROZ", 93, 25952358368)
Return
::ftk,::
funcKayıt(25952358368, 5317207711)
Return


::izlem,:: ;izlem ekle izlem ekle ehsys tıkladıktan sonrası
Send, Z00.0
Sleep 3000
Send, {down}
Sleep 200
Send,{enter}
Sleep 500
Send, {Tab}
Sleep 200
Send,{enter}
Sleep 500
Send, {Tab 13}
Sleep 1000
Send, y
Sleep 500

Send, {Tab}
Sleep 200
Send, y

Send, {Tab 2}
Sleep 200
Send, y

Send, {Tab 3}
Sleep 200
Send, {Tab}
Sleep 500
Send, {Tab}
Sleep 500
Send, {Tab}
Sleep 500
Send, {Tab}
Sleep 500
Send, h

Send, {Tab}
Sleep 200
Send, h

Send, {Tab}
Sleep 200
return

::yeniizlem,:: ; ehs ye izlem ekle ***yeni
Send, Z00.0
Sleep 3000
Send, {down}
Sleep 200
Send,{enter}
Sleep 500
Send, {Tab}
Sleep 200
Send,{enter}
Sleep 500
Send, {Tab 13}
Sleep 1000
Send, y
Sleep 500
Send, {Tab}
Sleep 500
Send, e
Sleep 500
Send, {Tab}
Sleep 500
Send, h
Sleep 500
Send, {Tab}
Sleep 500
Send, h
Sleep 500
Send, {Tab}
Sleep 500
Send, y
Sleep 500
Send, {Tab}
Sleep 500
Send, e
Sleep 500
Send, {Tab}
Sleep 500
Send, h
Sleep 500
Send, {Tab}
Sleep 500
Send, y
Sleep 500
Send, {Tab}
Sleep 500
Send, a
Sleep 500
Send, {Tab}
Sleep 500
Send, h
Sleep 500
Send, {Tab}
Sleep 500
Send, h
Sleep 500
Send, {Tab}
Sleep 500
Send, h
Sleep 500
Send, {Tab}
Sleep 500
;;;; hastalık
;Send, y
;Sleep 500
;Send, {Tab 4}
;Sleep 500
;Send, h
;Sleep 500
;Send, {Tab}
;Sleep 500
;Send, h
;Sleep 500
;Send, {Tab}
;Sleep 500
Send, k
Sleep 500
Send, {Tab}
Sleep 500
Send, k
Sleep 500
Send, {Tab}
Sleep 500
Send, {Tab}
Sleep 500
Send, {Tab}
Sleep 500
Send, h
Sleep 500
Send, {Tab}
Sleep 500
Send, h
Sleep 500
Send, {Tab}
Sleep 500
Send, h
Sleep 500
Send, {Tab}
Sleep 500
return


;; panates kayıt
::abimk,::
funcKayıt(28367365426, 5344040136)
Click 39 132
Send, 28367365426
Sleep 499
Send {Enter}
Sleep 999
Click, 294 228 2
Sleep 200
Click, 294 228 2
Sleep 9999
Click 861 324
Sleep 2000
Send +{Tab 2}
Sleep 999
Send 5344040136
Send +!a
Sleep 1000
return
