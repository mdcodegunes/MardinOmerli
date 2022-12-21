funcIzlem()
{
    ;!+t:: ; izlem ekle
    Run, https://evdesaglik.saglik.gov.tr/EvdeSaglik/TSMAlinanHizmetEmirleri/TSMAlinanHizmetEmirleriListesi
    Sleep 1500
    Click, 367 417
    Sleep 1500
    Click, 367 417
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
}

;;excell

myFuncHastaE(isim, adres, tel, işlem, bağımlı, tanı, yaş, tc, aadres)
{
    Send  %isim%
    Sleep 500
    Send, {Tab}
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
    Send, %yaş%
    Sleep 500
    Send, {Tab}
    Sleep, 500
    Send, %tc%
    Sleep, 500
    Send, {Tab}
    Sleep 500
    Send, %aadres%
    Sleep, 500
    Send, {Tab}
    Sleep, 500
    Send, {Enter}
    Sleep, 500
    Send, {Enter}
}
*/


;; docs
myFuncHasta(isim, adres, tel, işlem, bağımlı, tanı, yaş, tc, aadres)
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
}



::*n::
Send,
(
::a,:: ;;
myFuncHasta("", "", , "", "", "", , ,"")
Return
::k,::
funcKayıt(, )
Return
::i,::
)
Return

/*
(
::a,:: ;;
myFuncHasta("", "", , "GTM", "YARI BAĞIMLI", "", , ,"")
Return
::k,::
funcKayıt(, )
Return
::i,::
)
*/

#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

::fua,::
myFuncHasta("FEVZİYE UZUNKAYA", "ÖMERLi", 5054624747, "GTM", "YARI BAĞIMLI", "DM,HL,HT", 82, 65611036312,"YENİ MAH. 3044 SK. NO 5/B ,ÖMERLİ / MARDİN")
Return
::fuk,::
funcKayıt(65611036312, 5054624747)
Return
::fui,::FEVZİYE UZUNKAYA, ÖMERLi, 05054624747, GTM


::vaya,:: ;;
myFuncHasta("VAHDETTİN AYDIN", "KAYNAKKAYA", 5431329155, "SONDA", "YARI BAĞIMLI", "YAŞLILIK", 89, 44935725874,"KAYNAKKAYA MAH , NO :192, ÖMERLİ / MARDİN")
Return
::vayk,::
funcKayıt(44935725874, 5431329155)
Return
::vayi,::VAHDETTİN AYDIN, KAYNAKKAYA, 05431329155, SONDA

::vala,:: ;;
myFuncHasta("VESİLE ALTUNDAĞ", "ÖMERLİ ", 5549325023, "GTM", "YARI BAĞIMLI", "YAŞLILIK", 90, 40357878136,"YENİ MAH.3056 SOK.NO:5 ÖMERLİ / MARDİN")
Return
::valk,::
funcKayıt(40357878136, 5549325023)
Return
::vali,::VESİLE ALTUNDAĞ, ÖMERLİ, 05549325023, GTM

::aşa,:: ;;
myFuncHasta("ADLE ŞEMİN", "YEŞİLLİ", 5334140326, "GTM", "YARI BAĞIMLI", "BAŞ DÖNMESİ VERTİGO", 112, 39433908942,"BAHÇEBAŞI MAH. 19 MAYIS CAD. SAĞLAMLAR SOK NO:22 YEŞİLLİ / MARDİN")
Return
::aşk,::
funcKayıt(39433908942,5334140326)
Return
::aşi,::ADLE ŞEMİN, YEŞİLLİ, 05334140326, GTM

::aöa,:: ;;
myFuncHasta("AHMET ÖLKER", "ÖMERLİ", 5357057379, "GTM", "YARI BAĞIMLI", "YAŞLILIK", 122, 30365211506,"ŞAFAK MAH.1040. SOK. NO7. ÖMERLİ/MARDİN")
Return
::aök,::
funcKayıt(30365211506,5357057379 )
Return
::aöi,::AHMET ÖLKER, ÖMERLİ, 05357057379, GTM

::ahöa,:: ;;
myFuncHasta("AHMET ÖNDER", "KOCAKUYU", 5343760971, "GTM", "YARI BAĞIMLI", "ZİHİNSEL ENGELLİ", 29, 32330089806,"KOCAKUYU KÖYÜ ,ÖMERLİ / MARDİN")
Return
::ahök,::
funcKayıt(32330089806,5343760971)
Return
::ahöi,::AHMET ÖNDER, KOCAKUYU, 05343760971, GTM

::aöza,:: ;;
myFuncHasta("AHMET ÖZDEMİR", "DEREYA YANI", 5335461404, "GTM", "YARI BAĞIMLI", "YAŞLILIK", 88, 43135776624,"DEREYANI MAH. KÖY OKULUN YANI ,YEŞİLLİ / MARDİN")
Return
::aözk,::
funcKayıt(43135776624, 5335461404)
Return
::aözi,::AHMET ÖZDEMİR, DEREYA YANI, 05335461404, GTM

::ahya,:: ;;
myFuncHasta("AHMET YÜKSEL", "BEŞİKKAYA", 5355069896, "GTM", "YARI BAĞIMLI", "SEREBROVASKÜLER BOZUKLUKLAR", 58, 49615569656,"BEŞİKKAYA KÖYÜ NO 46 ÖMERLİ")
Return
::ahyk,::
funcKayıt(49615569656, 5355069896)
Return
::ahyi,::AHMET YÜKSEL, BEŞİKKAYA, 05355069896, GTM

::aga,:: ;;
myFuncHasta("ALİ GÜNDÜZ", "ÖMERLİ", 5434471970, "GTM", "YARI BAĞIMLI", "KRONİK BÖBREK YETMEZLİĞİ", 52, 11654779112,"CUMHURİYET Mah, 2081 Sok, daire:2, Dış Kapı No:3 ,ÖMERLİ/MARDİN")
Return
::agk,::
funcKayıt(11654779112, 5434471970)
Return
::agi,::ALİ GÜNDÜZ, ÖMERLİ, 05434471970, GTM

::aöna,:: ;;
myFuncHasta("ALİHAN ÖNLER", "YEŞİLLİ", 5416200759, "GTM", "YARI BAĞIMLI", "MENTAL GERİLİK", 25, 10046832756,"TEPEBAŞI MAH. ALİHANOĞLU CAD. No : 7,YEŞİLLİ ")
Return
::aönk,::
funcKayıt(10046832756, 05416200759)
Return
::aöni,::ALİHAN ÖNLER, YEŞİLLİ, 05416200759, GTM

::amaa,:: ;;
myFuncHasta("AMŞE AKKUÇ", "YEŞİLLİ", 5397756303, "GTM", "YARI BAĞIMLI", "YAŞLILIK", 91, 35911970432,"GÜL MAH. DEĞİRMENLER CAD.NO:22 YEŞİLLİ / MARDİN")
Return
::amak,::
funcKayıt(35911970432, 5397756303)
Return
::amai,::AMŞE AKKUÇ, YEŞİLLİ, 05397756303, GTM

::aea,:: ;;
myFuncHasta("AYŞE ERDEM", "DEREYANI", 5359843511, "GTM", "YARI BAĞIMLI", "MENTAL VE DAVRANIŞSAL BOZ.", 28, 29945169320,"DEREYANI MAH NO:103 YEŞİLLİ/MARDİN")
Return
::aek,::
funcKayıt(29945169320, 5359843511)
Return
::aei,::AYŞE ERDEM, DEREYANI, 05359843511, GTM

::baa,:: ;;
myFuncHasta("BEDRİ ALTUNDAĞ", "ÖMERLİ", 5359756965, "GTM", "YARI BAĞIMLI", "ARTROPATİ", 94, 34355022486,"yenı mh 11a 3049 sk ömerlı/mardın")
Return
::bak,::
funcKayıt(34355022486, 5359756965)
Return
::bai,::BEDRİ ALTUNDAĞ, ÖMERLİ, 05359756965, GTM

::bya,:: ;;
myFuncHasta("BEDRİYE YILDIZ", "ÖMERLİ", 5423487904, "GTM", "YARI BAĞIMLI", "ESANSİYEL HT", 87, 59290247312,"CUMHURİYET Mahallesi, ÖMERLİ / MARDİN")
Return
::byk,::
funcKayıt(59290247312, 5423487904)
Return
::byi,::BEDRİYE YILDIZ, ÖMERLİ, 05423487904, GTM

::böa,:: ;;
myFuncHasta("BEDRO ÖZELKAN", "KAYAÜSTÜ", 5304678215, "GTM", "YARI BAĞIMLI", " YUMUŞAK DOKU BOZ.", 87, 47314590452,"KAYAÜSTÜ KÖYÜ ÖMERLİ / MARDİN")
Return
::bök,::
funcKayıt(47314590452, 05304678215)
Return
::böi,::BEDRO ÖZELKAN, KAYAÜSTÜ, 05304678215, GTM

::beaa,:: ;;
myFuncHasta("BEHİYE ACU", "YEŞİLLİ", 5379453058, "GTM", "YARI BAĞIMLI", "PARAPLEJİ", 65, 23009456470,"BAHÇEBAŞI , GÜNEY SK. ACULAR SEMTİ NO:18 YEŞİLLİ / MARDİN")
Return
::beak,::
funcKayıt(23009456470, 5379453058)
Return
::beai,::BEHİYE ACU, YEŞİLLİ, 05379453058, GTM

::baka,:: ;;
myFuncHasta("BEHİYE AKDOĞAN", "ÖMERLİ", 5365173003, "GTM", "YARI BAĞIMLI", " YUMUŞAK DOKU BOZUKLUKLARI", 86, 61180184188,"ŞAFAK MAHALLESİ 1009 SOKAK NO:7 ÖMERLİ MARDİN")
Return
::bakk,::
funcKayıt(61180184188, 5365173003)
Return
::baki,::BEHİYE AKDOĞAN, ÖMERLİ, 05365173003, GTM

::cda,:: ;;
myFuncHasta("CEYLAN DEMİR", "YEŞİLLİ", 5435480654, "GTM", "YARI BAĞIMLI", "İM ENJEKSİYON", 63, 66355012020,"KARŞIYAKA MAH. Mahallesi, KARANFİL SK, NO:17, YEŞİLLİ")
Return
::cdk,::
funcKayıt(66355012020, 5435480654)
Return
::cdi,::CEYLAN DEMİR, YEŞİLLİ, 05435480654, GTM

::cya,:: ;;
myFuncHasta("CUMHUR YİLMAZ", "ÖMERLİ", 5468602756, "GTM", "YARI BAĞIMLI", "KIRIK", 85, 45583704242,"Yeni mah. 3076 sk. (bimin arkasındaki sokak)kapı no 28 ömerli")
Return
::cyk,::
funcKayıt(45583704242, 5468602756)
Return
::cyi,::CUMHUR YİLMAZ, ÖMERLİ, 05468602756, GTM

::çka,:: ;;
myFuncHasta("ÇİÇEĞİ KAYMAZ", "ÖMERLİ", 5394695291, "GTM", "YARI BAĞIMLI", "SİSTİT", 77, 11900771310,"CUMHURİYET Mahallesi, LİSE -2043 Sokak, No:10, ÖMERLİ")
Return
::çkk,::
funcKayıt(11900771310, 5394695291)
Return
::çki,::ÇİÇEĞİ KAYMAZ, ÖMERLİ, 05394695291, GTM

::eaa,:: ;;
myFuncHasta("EMİNE ARAZ", "YEŞİLLİ", 5356109185, "GTM", "YARI BAĞIMLI", "ALZHEİMER HASTALIĞI", 89, 46111630552,"Gül Mahallesi, Keklik Sokak, No: 5, YEŞİLLİ / MARDİN")
Return
::eak,::
funcKayıt(46111630552, 5356109185)
Return
::eai,::EMİNE ARAZ, YEŞİLLİ, 05356109185, GTM

::eda,:: ;;
myFuncHasta("EMİNE DEMİRCAN", " İKİPINAR", 5325782395, "GTM", "YARI BAĞIMLI", "GENEL TIBBİ MUAYENE", 72, 10706810766," İKİPINAR KÜME EVLERİ, NO:65, ÖMERLİ")
Return
::edk,::
funcKayıt(10706810766, 5325782395)
Return
::edi,::EMİNE DEMİRCAN,  İKİPINAR, 05325782395, GTM

::emöa,:: ;;
myFuncHasta("EMİNE ÖZÇELİK", "İKİPINAR", 5324778570, "GTM", "YARI BAĞIMLI", "GENEL TIBBİ MUAYENE", 84, 22799407662,"İKİPINAR MAH NO 2 KÖY GİRİŞİ ÖMERLİ / MARDİN")
Return
::emök,::
funcKayıt(22799407662, 5324778570)
Return
::emöi,::EMİNE ÖZÇELİK, İKİPINAR, 05324778570, GTM

::eta,:: ;;
myFuncHasta("EMİNE TAY", "YEŞİLLİ", 5425768444, "GTM", "YARI BAĞIMLI", "OSTEOPOROZ", 88, 19595570348,"BAHÇEBAŞI MH. HASE HATUN CD. NO:93 YEŞİLLİ/MARDİN")
Return
::etk,::
funcKayıt(19595570348, 5425768444)
Return
::eti,::EMİNE TAY, YEŞİLLİ, 05425768444, GTM

::eöza,:: ;;
myFuncHasta("EMRAH ÖZER", "ÖMERLİ", 5073795751, "GTM", "YARI BAĞIMLI", "LÖSEMİ", 34, 49738565726,"YENİ MAH. 3073 SK. NO 6 ÖMERLİ")
Return
::eözk,::
funcKayıt(49738565726, 5073795751)
Return
::eözi,::EMRAH ÖZER, ÖMERLİ, 05073795751, GTM

::eoa,:: ;;
myFuncHasta("ESMA ORAL", "KAYNAKKAYA", 53102124798, "GTM", "YARI BAĞIMLI", "YAŞLILIK", 122, 10304575814,"KAYNAKKAYA KÖYÜ. NO 11. ÖMERLİ/ MARDİN")
Return
::eok,::
funcKayıt(10304575814, 53102124798)
Return
::eoi,::ESMA ORAL, KAYNAKKAYA, 053102124798, GTM

::faka,:: ;;
myFuncHasta("FAHREDDİN KOLUMAN", "KAYNAKKAYA", 5312971766, "GTM", "YARI BAĞIMLI", "HEMİPLEJİ", 30, 32102153636,"KAYNAKKAYA Mah,İç Kapı No:1, Dış Kapı No : 23,ÖMERLİ / MARDİN")
Return
::fakk,::
funcKayıt(32102153636, 5312971766)
Return
::faki,::FAHREDDİN KOLUMAN, KAYNAKKAYA, 05312971766, GTM

::fda,:: ;;
myFuncHasta("FATMA DAĞ", "ÖMERLİ", 5324054465, "GTM", "YARI BAĞIMLI", "DİYABETES MELLİTÜS", 35, 51466508364,"FISTIKLI MAH NO 69 ÖMERLİ / MARDİN")
Return
::fdk,::
funcKayıt(51466508364, 5324054465)
Return
::fdi,::FATMA DAĞ, ÖMERLİ, 05324054465, GTM

::faa,:: ;;
myFuncHasta("FEHİME ABA", "YEŞİLLİ", 5424105210, "GTM", "YARI BAĞIMLI", "DM", 84, 39988834574,"GÜL MAH. AYHAN KARTLI CAD DAR 1 SOK ELİF AP ZEMİN KAT YEŞİLLİ / MARDİN")
Return
::fak,::
funcKayıt(39988834574, 5424105210)
Return
::fai,::FEHİME ABA, YEŞİLLİ, 05424105210, GTM

::fba,:: ;;
myFuncHasta("FERHAN BALTA", "YEŞİLLİ", 5455036567, "GTM", "YARI BAĞIMLI", "KAS-İSKELET SİSTEMİ HAST.", 75, 31043132816,"GÜL Mah,BAHAR SK. Dış Kapı No : 8, YEŞİLLİ / MARDİN")
Return
::fbk,::
funcKayıt(31043132816, 5455036567)
Return
::fbi,::FERHAN BALTA, YEŞİLLİ, 05455036567, GTM

::fkua,:: ;;
myFuncHasta("FERHAN KUDAT", "YEŞİLLİ", 5443597550, "GTM", "YARI BAĞIMLI", "ARTROPATİLER", 77, 65611036312,"KARŞIYAKA MAH. DİLEK SOKAK NO:2 ,YEŞİLLİ / MARDİN")
Return
::fkuk,::
funcKayıt(65611036312, 5443597550)
Return
::fkui,::FERHAN KUDAT, YEŞİLLİ, 05443597550, GTM

::feaa,:: ;;
myFuncHasta("FEYZİ ARAZ", "YEŞİLLİ", 5303479466, "GTM", "YARI BAĞIMLI", "BEL FITIĞI", 122, 35980968132,"GÜL MAH. Mahallesi, KONAK CAD. NO:12 YEŞİLLİ / MARDİN")
Return
::feak,::
funcKayıt(35980968132, 5303479466)
Return
::feai,::FEYZİ ARAZ, YEŞİLLİ, 05303479466, GTM

::fya,:: ;;
myFuncHasta("FİKRİYE YÜREK", "ÖMERLİ", 5326489135, "GTM", "YARI BAĞIMLI", "YUMUŞAK DOKU BOZUKLUKLARI", 122, 13451719292,"CUMHURİYET MAH. 1. CAD. NO.37 ÖMERLİ / MARDİN")
Return
::fyk,::
funcKayıt(13451719292, 5326489135)
Return
::fyi,::FİKRİYE YÜREK, ÖMERLİ, 05326489135, GTM

::gya,:: ;;
myFuncHasta("GİNCÖ YILDIZ", "ÖMERLİ", 5465758181, "GTM", "YARI BAĞIMLI", "YAŞLILIK", 122, 47965568886,"YENİ MAHALLE 3001 SOKAK NUMARA 22 / A ÖMERLİ / MARDİN")
Return
::gyk,::
funcKayıt(47965568886, 5465758181)
Return
::gyi,::GİNCÖ YILDIZ, ÖMERLİ, 05465758181, GTM

::göa,:: ;;
myFuncHasta("GÜLFİDAN ÖZTÜRK", "YEŞİLLİ", 5469002247, "GTM", "YARI BAĞIMLI", "BEL AĞRISI", 77, 54199417088,"GÜL MAH. Mahallesi, KONAK CADDESİ 28/1 YEŞİLLİ MARDİN")
Return
::gök,::
funcKayıt(54199417088, 5469002247)
Return
::göi,::GÜLFİDAN ÖZTÜRK, YEŞİLLİ, 05469002247, GTM

::hba,:: ;;
myFuncHasta("HADRA BARAN", "ÖMERLİ", 5315885204, "GTM", "YARI BAĞIMLI", "KOAH,KALP YETMEZLİĞİ,HT, DM", 122, 61147185272,"YENİ MAH. ADLİYE LOJMANI SOKAĞI. NO 8 ÖMERLİ/MARDİN")
Return
::hbk,::
funcKayıt(61147185272, 5315885204)
Return
::hbi,::HADRA BARAN, ÖMERLİ, 05315885204, GTM

::hoa,:: ;;
myFuncHasta("HADRA OLCAY", "YEŞİLLİ", 5448892170, "GTM", "YARI BAĞIMLI", "SVO", 122, 40285880522,"KARŞIYAKA MAH. İSTİKLAL CAD. NO:26 DAİRE:1,YEŞİLLİ / MARDİN")
Return
::hok,::
funcKayıt(40285880522, 5448892170)
Return
::hoi,::HADRA OLCAY, YEŞİLLİ", 05448892170, GTM

::haa,:: ;;
myFuncHasta("HAKİME ALTUNDAĞ", "ÖMERLİ", 5314050107, "GTM", "YARI BAĞIMLI", "YUMUŞAK DOKU BOZUKLUKLARI", 76, 43240782190,"YENİ MAH. orta sk. , 3001 SK. No : 47,ÖMERLİ / MARDİN")
Return
::hak,::
funcKayıt(43240782190, 5314050107)
Return
::hai,::HAKİME ALTUNDAĞ, ÖMERLİ, 05314050107, GTM

::haöa,:: ;;
myFuncHasta("HALİSA ÖTER", "YEŞİLLİ", 5353041454, "GTM", "YARI BAĞIMLI", "ASTIM,HT,DM", 77, 61447175454,"BAHÇEBAŞI Mah., 19 MAYIS Caddesi/SUSAM Sok, Dış KapıNo: 3, YEŞİLLİ / MARDİN")
Return
::haök,::
funcKayıt(61447175454, 5353041454)
Return
::haöi,::HALİSA ÖTER, YEŞİLLİ, 05353041454, GTM

::hmaa,:: ;;
myFuncHasta("HAMDİYE AKINKAN", "KAYAÜSTÜ", 5348406928, "GTM", "YARI BAĞIMLI", " YUMUŞAK DOKU BOZUKLUKLARI ", 66, 27224316052,"KAYAÜSTÜ MAH.,ÖMERLİ / MARDİN")
Return
::hmak,::
funcKayıt(27224316052, 5348406928)
Return
::hmai,::HAMDİYE AKINKAN, KAYAÜSTÜ, 05348406928, GTM

::hga,:: ;;
myFuncHasta("HAMDİYE GÜNEŞ", "ÇINARALTI", 5376747731, "GTM", "YARI BAĞIMLI", " SEREBROVASKÜLER HASTALIK SEKELİ", 60, 60517150476,"ÇINARALTI MAH.No : 111,ÖMERLİ / MARDİN")
Return
::hgk,::
funcKayıt(60517150476, 5376747731)
Return
::hgi,::HAMDİYE GÜNEŞ, ÇINARALTI, 05376747731, GTM

::hmoa,:: ;;
myFuncHasta("HAMDİYE OMPUT", "YEŞİLLİ", 5455395578 , "GTM", "YARI BAĞIMLI", "ESANSİYEL (PRİMER) HİPERTANSİYON", 80, 39634902534,"GÜL MAH. 15 TEMMUZ CAD NO:19 DAİE.2 ,YEŞİLLİ / MARDİN")
Return
::hmok,::
funcKayıt(39634902534, 5455395578)
Return
::hmoi,::HAMDİYE OMPUT, YEŞİLLİ, 05455395578 , GTM


::hala,:: ;;
myFuncHasta("HASAN ALTUNDAĞ", "ÖMERLİ", 5327139447, "GTM", "YARI BAĞIMLI", "YAŞLILIK", 72, 53743431976,"YENİ Mahallesi, 3057Sok.,  Dış Kapı No : 6, ÖMERLİ / MARDİN")
Return
::halk,::
funcKayıt(53743431976, 5327139447)
Return
::hali,::HASAN ALTUNDAĞ, ÖMERLİ, 05327139447, GTM

::haça,:: ;;
myFuncHasta("HASAN ÇAĞLI", "ÖMERLİ", 5355448743, "GTM", "YARI BAĞIMLI", "KALP HASTALIĞI", 89, 32465085452,"YENİ MAH. 3001 sokak, no :26, ,ÖMERLİ / MARDİN")
Return
::haçk,::
funcKayıt(32465085452, 5355448743)
Return
::haçi,::HASAN ÇAĞLI, ÖMERLİ, 05355448743, GTM

::hda,:: ;;
myFuncHasta("HASİNE DEMİR", "YEŞİLLİ", 5353398100, "GTM", "YARI BAĞIMLI", " YUMUŞAK DOKU BOZ.", 59, 25586370668,"KARŞIYAKA MAH. KUDATLAR CAD. NO:12 YEŞİLLİ / MARDİN")
Return
::hdk,::
funcKayıt(25586370668, 5353398100)
Return
::hdi,::HASİNE DEMİR, YEŞİLLİ, 05353398100, GTM

::hya,:: ;;
myFuncHasta("HASİNE YILMAZ", "ÖMERLİ", 5439474022, "GTM", "YARI BAĞIMLI", "ESANSİYEL HT, DM", 73, 35225049640,"YENİ MAH.ŞEHİT KOMİSER ZÜBEYİR DURGAY SOK. NO:1 ÖMERLİ/MARDİN")
Return
::hyk,::
funcKayıt(35225049640, 5439474022)
Return
::hyi,::HASİNE YILMAZ, ÖMERLİ, 05439474022, GTM


::hava,:: ;;
myFuncHasta("HAVLİ AKGÜL", "ÖMERLİ", 5353544205, "GTM", "YARI BAĞIMLI", "YUMUŞAK DOKU BOZUKLUKLARI", 122,42370811084,"YENİ MAH. ŞEHİT MEHMET GÜL SK Dış Kapı No : 19B,ÖMERLİ / MARDİN")
Return
::havk,::
funcKayıt(42370811084, 5353544205)
Return
::havi,::HAVLİ AKGÜL, ÖMERLİ, 05353544205, GTM

::haya,:: ;;
myFuncHasta("HAYRETTİN YAVUZ", "ÖMERLİ", 5436889327, "GTM", "YARI BAĞIMLI", "MENTAL GERİLİK", 34, 23960369086,"ŞAFAK MAH. Mahallesi, 1005 SK. Caddesi/Sokağı, : 8 ÖMERLİ ")
Return
::hayk,::
funcKayıt(23960369086, 5436889327)
Return
::hayi,::HAYRETTİN YAVUZ, ÖMERLİ, 05436889327, GTM

::hsa,:: ;;
myFuncHasta("HAYRİYE SIĞINÇ", "KAYABALI", 5337442102 , "GTM", "YARI BAĞIMLI", " KRONİK OBSTRÜKTİF A.C HASTALIĞI,", 90, 31703166670,"KAYABALI MAH. KAYABALI SK. Dış Kapı No : 112,ÖMERLİ / MARDİN")
Return
::hsk,::
funcKayıt(31703166670, 5337442102)
Return
::hsi,::HAYRİYE SIĞINÇ, KAYABALI, 05337442102 , GTM

::hba,:: ;;
myFuncHasta("HIDIR BAT", "YEŞİLLİ", 5448971950, "GTM", "YARI BAĞIMLI", "KRONİK OBSTRÜKTİF A.C HASTALIĞI", 72, 63988090418,"GÜL MAH:ÖZTÜRKLER CAD:NO/7 YEŞİLLİ/MARDİN")
Return
::hbk,::
funcKayıt(63988090418, 5448971950)
Return
::hbi,::HIDIR BAT, YEŞİLLİ, 05448971950, GTM


::hıga,:: ;;
myFuncHasta("HIDIR GÜNEŞ", "ÖMERLİ", 5352280581, "GTM", "YARI BAĞIMLI", "KALP YETMEZLİĞİ ", 87, 30482151464," YENİ MAH. 3039.SK. NO:30 ÖMERLİ / MARDIN")
Return
::hıgk,::
funcKayıt(30482151464, 5352280581)
Return
::hıgi,::HIDIR GÜNEŞ, ÖMERLİ, 05352280581, GTM

::hfa,:: ;;
myFuncHasta("HÜSEYİN FİDAN", "BEŞİKKAYA", 5360205615, "GTM", "YARI BAĞIMLI", "ARTROPATİ", 78, 61135129806,"BEŞİKKAYA KÖYU YUKARI CAMI NO 48 ÖMERLİ ")
Return
::hfk,::
funcKayıt(61135129806, 5360205615)
Return
::hfi,::HÜSEYİN FİDAN, BEŞİKKAYA, 05360205615, GTM

::hola,:: ;;
myFuncHasta("HÜSEYİN OLCAY", "YEŞİLLİ", 5469477602, "GTM", "YARI BAĞIMLI", "DİŞ ÇÜRÜKLERİ", 122, 30302157584,"KARŞIYAKA Mahallesi, İSTİKLAL CAD. Caddesİ, Dış Kapı No : 30,YEŞİLLİ / MARDİN")
Return
::holk,::
funcKayıt(30302157584, 5469477602)
Return
::holi,::HÜSEYİN OLCAY, YEŞİLLİ, 05469477602, GTM

::hüya,:: ;;
myFuncHasta("HÜSEYİN YILDIRIM", "ÖMERLİ", 5347125672, "GTM", "YARI BAĞIMLI", "GENEL TIBBİ MUAYENE", 88, 16388677376,"CUMHURİYET MAH. UZUN SK. No : 14,ÖMERLİ / MARDİN")
Return
::hüyk,::
funcKayıt(16388677376, 5347125672)
Return
::hüyi,::HÜSEYİN YILDIRIM, ÖMERLİ, 05347125672, GTM


::işa,:: ;;
myFuncHasta("İBRAHİM ŞAHİN", "KAYABALI", 5423649481, "GTM", "YARI BAĞIMLI", "YUMUŞAK DOKU BOZUKLUKLARI", 122, 33113063808,"KAYABALI MAH ÖMERLİ / MARDİN")
Return
::işk,::
funcKayıt(33113063808, 5423649481)
Return
::işi,::İBRAHİM ŞAHİN, KAYABALI, 05423649481, GTM

::ima,:: ;;
myFuncHasta("İDİ METE", "YEŞİLLİ", 5437602315, "GTM", "YARI BAĞIMLI", "YUMUŞAK DOKU", 122, 55165328858,"BAHÇEBAŞI MAH. , 19 MAYIS CAD. No : 35,YEŞİLLİ / MARDİN")
Return
::imk,::
funcKayıt(55165328858, 5437602315)
Return
::imi,::İDİ METE, YEŞİLLİ, 05437602315, GTM

::ita,:: ;;
myFuncHasta("İDİ TANIŞ", "YEŞİLLİ", 5362436774, "GTM", "YARI BAĞIMLI", "YUMUŞAK DOKU BOZUKLUKLARI", 88, 50575537524,"GÜL Mah, KONUTLAR Cad, İç Kapı No : 3 Dış Kapı No : 17,YEŞİLLİ / MARDİN")
Return
::itk,::
funcKayıt(50575537524, 5362436774)
Return
::iti,::İDİ TANIŞ, YEŞİLLİ, 05362436774, GTM

::kaa,:: ;;
myFuncHasta("KADRİYE ARSLAN", "MUTLUCA", 5358999979, "GTM", "YARI BAĞIMLI", " SİROZ-YUMUŞAK DOKU BOZ.", 48, 31238126422,"MUTLUCA MAH. NO:6 ÖMERLİ / MARDİN")
Return
::kak,::
funcKayıt(31238126422, 5358999979)
Return
::kai,::KADRİYE ARSLAN, MUTLUCA, 05358999979, GTM


::kta,:: ;;
myFuncHasta("KAMİLE TEMİZ", "ÖMERLİ", 5360636004, "GTM", "YARI BAĞIMLI", "GENEL TIBBİ MUAYENE", 55, 41494840284,"ŞAFAK Mahallesi, 1042 Sokağı Dış Kapı No :16 ÖMERLİ / MARDİN")
Return
::ktk,::
funcKayıt(41494840284, 5360636004)
Return
::kti,::KAMİLE TEMİZ, ÖMERLİ, 05360636004, GTM

::köa,:: ;;
myFuncHasta("KÖÇERİ ÖZ", "KAYNAKKAYA", 5342666912, "GTM", "YARI BAĞIMLI", "ESANSİYEL HT", 80, 57358255774,"KAYNAKKAYA MAHALLESİ NO/242 ÖMERLİ / MARDİN")
Return
::kök,::
funcKayıt(57358255774, 5342666912)
Return
::köi,::KÖÇERİ ÖZ, KAYNAKKAYA, 05342666912, GTM

::loa,:: ;;
myFuncHasta("LATİFA ORDU", "YEŞİLLİ", 5367872938, "GTM", "YARI BAĞIMLI", " ALZHEİMER HASTALIĞI", 94, 51121519476,"GÜL MAH. ESKİ MARDİN YOLU NO:28 , YEŞİLLİ / MARDİN")
Return
::lok,::
funcKayıt(51121519476, 5367872938)
Return
::loi,::LATİFA ORDU, YEŞİLLİ, 05367872938, GTM

::lga,:: ;;
myFuncHasta("LATİFE GÜNDÜZ", "BEŞİKKAYA", 5353093481, "GTM", "YARI BAĞIMLI", "MİYALJİ", 92, 63640102046,"BEŞİKKAYA MAH. AŞAĞI CAMİ CAD. KAPI NO:70 ,ÖMERLİ / MARDİN")
Return
::lgk,::
funcKayıt(63640102046, 5353093481)
Return
::lgi,::LATİFE GÜNDÜZ, BEŞİKKAYA, 05353093481, GTM

::lka,:: ;;
myFuncHasta("LATİFE KERMOOĞLU", "YEŞİLLİ", 5368445283, "GTM", "YARI BAĞIMLI", "ALZHEİMER", 122, 51298457786,"19 MAYIS CAD. BAHÇEBAŞI MAH. GÜNEY SK. NO:1 YEŞİLLİ / MARDİN")
Return
::lkk,::
funcKayıt(51298457786, 5368445283)
Return
::lki,::LATİFE KERMOOĞLU, YEŞİLLİ, 05368445283, GTM

::maka,:: ;;
myFuncHasta("MAHMUT KERMOOĞLU", "YEŞİLLİ", 5368445283, "GTM", "YARI BAĞIMLI", "PARKİNSON ", 122, 27230259954,"19 MAYIS CAD. BAHÇEBAŞI MAH. GÜNEY SK. NO:1 YEŞİLLİ / MARDİN")
Return
::makk,::
funcKayıt(27230259954, 5368445283)
Return
::maki,::MAHMUT KERMOOĞLU, YEŞİLLİ, 05368445283, GTM

::msa,:: ;;
myFuncHasta("MAKBULE SİNCAR", "ÖMERLİ", 5336116206, "GTM", "YARI BAĞIMLI", "GENEL TIBBİ MUAYENE", 78, 12899793468,"YENİ MAH 3003 SK NO 3 ÖMERLİ MARDİN")
Return
::msk,::
funcKayıt(12899793468, 5336116206)
Return
::msi,::MAKBULE SİNCAR, ÖMERLİ, 05336116206, GTM

::maba,:: ;;
myFuncHasta("MEHMET ALİ BEYTAROĞLU", "YEŞİLLİ", 5360320085, "GTM", "YARI BAĞIMLI", "KAS İSKELET SİSTEMİ HASTALIKLARI", 4, 60808196862,"Tepebaşı Mahallesi, 19 Mayıs Caddesi, No: 14/1, YEŞİLLİ / MARDİN")
Return
::mabk,::
funcKayıt(60808196862, 5360320085)
Return
::mabi,::MEHMET ALİ BEYTAROĞLU, YEŞİLLİ, 05360320085, GTM


::mala,:: ;;
myFuncHasta("MEHMET ALTINDAĞ", "ÖMERLİ", 5326638637, "GTM", "YARI BAĞIMLI", "KRONİK İSKEMİK KALP HASTALIĞI", 81, 39454908204,"CUMHURİYET MAH. HÜRRİYET CAD.No :139 ÖMERLİ")
Return
::malk,::
funcKayıt(39454908204, 5326638637)
Return
::mali,::MEHMET ALTINDAĞ, ÖMERLİ, 05326638637, GTM

::meba,:: ;;
myFuncHasta("MEHMET BAT", "YEŞİLLİ", 5360352783, "GTM", "YARI BAĞIMLI", "KOAH HASTASI", 76, 35827973442,"TEPEBAŞI MAH. ELVANİ SK NO 13 YEŞİLLİ")
Return
::mebk,::
funcKayıt(35827973442, 5360352783)
Return
::mebi,::MEHMET BAT, YEŞİLLİ, 05360352783, GTM

::mmta,:: ;;
myFuncHasta("MEHMET MÜHDİ TURAN", "KAYNAKKAYA", 5355201499, "GTM", "YARI BAĞIMLI", " YUMUŞAK DOKU BOZUKLUKLARI", 73, 65560038160,"KAYNAKKAYA MAH ÖMERLİ / MARDİN")
Return
::mmtk,::
funcKayıt(65560038160, 5355201499)
Return
::mmti,::MEHMET MÜHDİ TURAN, KAYNAKKAYA, 05355201499, GTM

::moa,:: ;;
myFuncHasta("MEHMET ONUR", "ALIÇLI", 5333091672, "GTM", "YARI BAĞIMLI", "KIRIK", 122, 54676400800,"ALIÇLI KME EVLERİ ÖMERLİ")
Return
::mok,::
funcKayıt(54676400800, 5333091672)
Return
::moi,::MEHMET ONUR, ALIÇLI, 05333091672, GTM


::msba,:: ;;
myFuncHasta("MEHMET SALİH BATUK", "ÖMERLİ", 5383668794, "GTM", "YARI BAĞIMLI", "GENEL TIBBİ MUAYENE", 87, 11531839304,"YENİ MAH. 3033 SK. NO:29 ÖMERLİ / MARDİN")
Return
::msbk,::
funcKayıt(11531839304, 5383668794)
Return
::msbi,::MEHMET SALİH BATUK, ÖMERLİ, 05383668794, GTM

::msda,:: ;;
myFuncHasta("MEHMET SALİH DEMİRTAŞ", "KOCASIRT", 5424894814, "GTM", "YARI BAĞIMLI", " YUMUŞAK DOKU BOZ.", 63, 64117086104,"KOCASIRT KÖYÜ / GİRİŞTEKİ SARI EV, ÖMERLİ /MARDİN")
Return
::msdk,::
funcKayıt(64117086104, 5424894814)
Return
::msdi,::MEHMET SALİH DEMİRTAŞ, KOCASIRT, 05424894814, GTM

::mşaa,:: ;;
myFuncHasta("MEHMET ŞERİF ALTUN", "ÖMERLİ", 5366293419, "GTM", "YARI BAĞIMLI", "YAŞLILIK", 122, 32159151524,"YENİ MAH. 2001 SK. ÖMERLİ / MARDİN")
Return
::mşak,::
funcKayıt(32159151524, 5366293419)
Return
::mşai,::MEHMET ŞERİF ALTUN, ÖMERLİ, 05366293419, GTM

::möa,:: ;;
myFuncHasta("MEKKİYE ÖNEN", "KAYNAKKAYA", 5358820617, "GTM", "YARI BAĞIMLI", "YAŞLILIK", 92, 12560748834,"KAYNAKKAYA Mah. İç Kapı No: 1, Dış Kapı No: 112,ÖMERLİ / MARDİN")
Return
::mök,::
funcKayıt(12560748834, 5358820617)
Return
::möi,::MEKKİYE ÖNEN, KAYNAKKAYA, 05358820617, GTM


::meka,:: ;;
myFuncHasta("MENİFE KILIÇ", "SANCAR", 5071746879, "GTM", "YARI BAĞIMLI", "OSTEOPOROZ", 72, 13712710518,"SANCAR MAH. SANCAR SK. NO:33 YEŞİLLİ / MARDİN")
Return
::mekk,::
funcKayıt(13712710518, 5071746879)
Return
::meki,::MENİFE KILIÇ, SANCAR, 05071746879, GTM

::mia,:: ;;
myFuncHasta("MERVE İLİŞ", "YEŞİLLİ", 5464958842, "GTM", "YARI BAĞIMLI", "PRESEREBRAL DAMARLARIN ARTERİOVENÖZ MALFORMASYONU", 23, 39952883782,"GÜL MAH. Mahallesi, ŞEHİT ÖĞRETMEN ZEKİ ÖDÜK SK. NO:7/2 YEŞİLLİ")
Return
::mik,::
funcKayıt(39952883782, 5464958842)
Return
::mii,::MERVE İLİŞ, YEŞİLLİ, 05464958842, GTM

::mşa,:: ;;
myFuncHasta("MERYEM ŞEN", "YEŞİLLİ", 5415910047, "GTM", "YARI BAĞIMLI", "YAŞLILIK", 89, 43147785188,"BAHÇEBAŞI MAH SUSAM SK NO 1 YEŞİLLİ")
Return
::mşk,::
funcKayıt(43147785188, 5415910047)
Return
::mşi,::MERYEM ŞEN, YEŞİLLİ, 05415910047, GTM

::meöa,:: ;;
myFuncHasta("MESUDE ÖNER", "ÖMERLİ", 5314050107, "GTM", "YARI BAĞIMLI", "YUMUŞAK DOKU BOZ.", 83, 43147785188,"ŞAFAK MAH. 2001 SK. NO:53 ÖMERLİ / MARDİN")
Return
::meök,::
funcKayıt(43147785188, 5314050107)
Return
::möi,::MESUDE ÖNER, ÖMERLİ, 05314050107, GTM

::mga,:: ;;
myFuncHasta("MESUT GÜMÜŞ", "SALİHKÖY", 5397348360, "GTM", "YARI BAĞIMLI", "MENTAL RETARDASYON", 28, 65287047650,"salih köyü, no :3, ,ÖMERLİ")
Return
::mgk,::
funcKayıt(65287047650, 5397348360)
Return
::mgi,::MESUT GÜMÜŞ, SALİHKÖY, 05397348360, GTM

::miaa,:: ;;
myFuncHasta("MİHDİYE ARSLAN", "ÖMERLİ", 5426955766, "GTM", "YARI BAĞIMLI", "YAŞLILIK", 83, 42940736274, "TEKKUYU Mah.Dış Kapı No : 17 ÖMERLİ / MARDİN")
Return
::miak,::
funcKayıt(42940736274, 5426955766)
Return
::miai,::MİHDİYE ARSLAN, ÖMERLİ, 05426955766, GTM

::mfa,:: ;;
myFuncHasta("MUHAMMED FİDAN", "ANITTEPE", 5358834240, "GTM", "YARI BAĞIMLI", "EPİLEPSİ", 19, 24074421486,"ANITTEPE Mahallesi, İç Kapı No : , Dış Kapı No : 16, ÖMERLİ / MARDİN")
Return
::mfk,::
funcKayıt(24074421486, 5358834240)
Return
::mfi,::MUHAMMED FİDAN, ANITTEPE, 05358834240, GTM

::mea,:: ;;
myFuncHasta("MUSTAFA ERDOĞAN", "ÖMERLİ", 5357663299, "GTM", "YARI BAĞIMLI", "YUMUŞAK DOKU BOZUKLUĞU", 79, 37495558792,"CUMHURİYET MAH, 2016 SK, NO:1, ÖMERLİ / MARDİN")
Return
::mek,::
funcKayıt(37495558792, 5357663299)
Return
::mei,::MUSTAFA ERDOĞAN, ÖMERLİ, 05357663299, GTM


::müöa,:: ;;
myFuncHasta("MÜKRİME ÖNEY", "YEŞİLLİ ", 5458469990, "GTM", "YARI BAĞIMLI", "ASTIM", 76, 56641335452,"BAHÇEBAŞI MAH. SARAY SOK Dış Kapı No : 223 ,YEŞİLLİ ")
Return
::müök,::
funcKayıt(56641335452, 5458469990)
Return
::müöi,::

::müoa,:: ;;
myFuncHasta("MÜNİRE ORAL", "ANITTEPE", 5302059028, "GTM", "YARI BAĞIMLI", "HİPOTİROİDİZM", 88, 11615780492,"ANITTEPE MAH. KAPI NO:4 ÖMERLİ / MARDİN")
Return
::müok,::
funcKayıt(11615780492, 5302059028)
Return
::müoi,::MÜNİRE ORAL, ANITTEPE, 05302059028, GTM

::nça,:: ;;
myFuncHasta("NECLA ÇAKAR", "SALİHKÖY", 5348415212, "GTM", "YARI BAĞIMLI", " SEREBROVASKÜLER HASTALIK ", 48, 42838795512,"SALİHKÖY MAH. NO 85 ÖMERLİ / MARDİN")
Return
::nçk,::
funcKayıt(42838795512, 5348415212)
Return
::nçi,::NECLA ÇAKAR, SALİHKÖY, 05348415212, GTM

::nöa,:: ;;
myFuncHasta("NESİME ÖZTÜRK", "ÇALIŞAN", 5370538223, "GTM", "YARI BAĞIMLI", "KAS İSKELET SİSTEMİ HAST.", 78, 40288880468,"ÇALIŞAN MAH. ÖMERLİYE 15 KM YAKIN ÖMERLİ / MARDİN")
Return
::nök,::
funcKayıt(40288880468, 5370538223)
Return
::nöi,::NESİME ÖZTÜRK, ÇALIŞAN, 05370538223, GTM

::naa,:: ;;
myFuncHasta("NEVİM ALTUNDAĞ", "ÖMERLİ", 5417186780, "GTM", "YARI BAĞIMLI", "SVO", 57, 63481051626,"YENİ MAH. , 3051 SK. No : 21 ,ÖMERLİ ")
Return
::nak,::
funcKayıt(63481051626, 5417186780)
Return
::nai,::NEVİM ALTUNDAĞ, ÖMERLİ, 05417186780, GTM

::nma,:: ;;
myFuncHasta("NOFA MERKİT", "YEŞİLLİ", 5530647247, "GTM", "YARI BAĞIMLI", " YUMUŞAK DOKU BOZ.", 66, 55165376682,"ŞİRİNEVLER MAH.ALİ BÜROL CD.GAZİ SOK NO:96/6 YEŞİLLİ / MARDİN")
Return
::nmk,::
funcKayıt(55165376682, 5530647247)
Return
::nmi,::NOFA MERKİT, YEŞİLLİ, 05530647247, GTM

::pöa,:: ;;
myFuncHasta("PEYRUZE ÖTER", "ÖMERLİ", 5468034285, "GTM", "YARI BAĞIMLI", "ARTROPATİLER", 78, 48511606540," CUMHURİYET MAH.2081 SK. B-BLOK DAİRE:1 ÖMERLİ / MARDİN")
Return
::pök,::
funcKayıt(48511606540, 5468034285)
Return
::pöi,::PEYRUZE ÖTER, ÖMERLİ, 05468034285, GTM


::rsa,:: ;;
myFuncHasta("RAMAZAN SIĞINÇ", "KAYABALI", 5378532136, "GTM", "YARI BAĞIMLI", "Ortopedik, Zihinsel Engelli", 21, 60478151710,"KAYABALI MAH. (KÖYÜ ) ÖMERLİ / MARDİN")
Return
::rsk,::
funcKayıt(60478151710, 5378532136)
Return
::rsi,::RAMAZAN SIĞINÇ, KAYABALI, 05378532136, GTM


::rba,:: ;;
myFuncHasta("REMAZAN BULUT", "KAYNAKKAYA", 5393685401, "GTM", "YARI BAĞIMLI", "SİSTİT", 93, 42214816558,"KAYNAKKAYA KÖYÜ ÖMERLİ")
Return
::rbk,::
funcKayıt(42214816558, 5393685401)
Return
::rbi,::REMAZAN BULUT, KAYNAKKAYA, 05393685401, GTM


::rda,:: ;;
myFuncHasta("REMZİ DOĞAN", "KAYNAKKAYA", 5397659276, "GTM", "YARI BAĞIMLI", "KALP YETMEZLİĞİ", 122, 66058021930,"KAYNAKKAYA KÖYÜ KÜME EVLERİ ÖMERLİ MARDİN")
Return
::rdk,::
funcKayıt(66058021930, 5397659276)
Return
::rdi,::REMZİ DOĞAN, KAYNAKKAYA, 05397659276, GTM


::ria,:: ;;
myFuncHasta("RESTEM İLİŞ", "YEŞİLLİ", 5444751146, "GTM", "YARI BAĞIMLI", "GENEL TIBBİ MUAYENE", 90, 10724866936,"GÜL MAH. Mahallesi, MAHİR SK, Dış Kapı No : 15,YEŞİLLİ / MARDİN")
Return
::rik,::
funcKayıt(10724866936, 5444751146)
Return
::rii,::RESTEM İLİŞ, YEŞİLLİ, 05444751146, GTM


::raa,:: ;;
myFuncHasta("RİFAT ARSLAN", "KAYNAKKAYA", 5373028107, "GTM", "YARI BAĞIMLI", "SEREBRAL PALSİ", 16, 65644035238,"KAYNAKKAYA MAH. İç Kapı No : 1, Dış Kapı No : 116,ÖMERLİ / MARDİN")
Return
::rak,::
funcKayıt(65644035238, 5373028107)
Return
::rai,::RİFAT ARSLAN, KAYNAKKAYA, 05373028107, GTM


::rua,:: ;;
myFuncHasta("RUHİYE UZUNKAYA", "ÖMERLİ", 5423487904, "GTM", "YARI BAĞIMLI", "DM", 83, 61213182914,"CUMHURİYET Mah, 2004 Sok, İç KapıNo :1, Dış KapıNo:10, ÖMERLİ / MARDİN")
Return
::ruk,::
funcKayıt(61213182914, 5423487904)
Return
::rui,::RUHİYE UZUNKAYA, ÖMERLİ, 05423487904, GTM


::sça,:: ;;
myFuncHasta("SABİHA ÇİFTÇİ", "ÖMERLİ", 5061189189, "GTM", "YARI BAĞIMLI", "DİZİN İÇ BOZUKLUĞU", 58, 22532416500,"HÜRRİYET CAD. 2011 SOK. NO:1 ÖMERLİ ")
Return
::sçk,::
funcKayıt(22532416500, 5061189189)
Return
::sçi,::SABİHA ÇİFTÇİ, ÖMERLİ, 05061189189, GTM


::sba,:: ;;
myFuncHasta("SACİDE BARMAN", "YEŞİLLİ", 5468022664, "GTM", "YARI BAĞIMLI", "BAKTERİYEL PNÖMONİ", 81, 43852705846,"BAHÇEBAŞI MAH. MENDERES CAD. NO 21 YEŞİLLİ / MARDİN")
Return
::sbk,::
funcKayıt(43852705846, 5468022664)
Return
::sbi,::SACİDE BARMAN, YEŞİLLİ, 05468022664, GTM


::sara,:: ;;
myFuncHasta("SAFİYE ARAZ", "YEŞİLLİ", 5453028488, "GTM", "YARI BAĞIMLI", "PNÖMONİ", 76, 59119197002,"GÜL MAH. BAL SK NO 18 YEŞİLLİ")
Return
::sark,::
funcKayıt(59119197002, 5453028488)
Return
::sari,::SAFİYE ARAZ, YEŞİLLİ, 05453028488, GTM


::seba,:: ;;
myFuncHasta("SEKİNE BATUK", "ÖMERLİ", 5326488680, "GTM", "YARI BAĞIMLI", "ZONA", 84, 66055021612,"CUMHURİYET MAH.HÜRRİYET CAD.NO:195 ÖMERLİ / MARDİN ")
Return
::sebk,::
funcKayıt(66055021612, 5326488680)
Return
::sebi,::SEKİNE BATUK, ÖMERLİ, 05326488680, GTM


::sea,:: ;;
myFuncHasta("SEKİNE EFETÜRK", "ÖMERLİ", 5374239847, "GTM", "YARI BAĞIMLI", "KALP YETMEZLİĞİ", 122, 31493173674,"YENİ MAH. 3025 SOK. NO:10 ÖMERLİ / MARDİN")
Return
::sek,::
funcKayıt(31493173674, 5374239847)
Return
::sei,::SEKİNE EFETÜRK, ÖMERLİ, 05374239847, GTM


::söa,:: ;;
myFuncHasta("SEKİNE ÖNCÜ", "ÖMERLİ", 5315066141, "GTM", "YARI BAĞIMLI", "ALZHEİMER HASTALIĞINDA", 83, 64423351132,"YENİ Mah No : 31,ÖMERLİ / MARDİN")
Return
::sök,::
funcKayıt(64423351132, 5315066141)
Return
::söi,::SEKİNE ÖNCÜ, ÖMERLİ, 05315066141, GTM


::seöa,:: ;;
myFuncHasta("SELİM ÖDEN", "YEŞİLLİ", 5424586091, "GTM", "YARI BAĞIMLI", " EKLEM BOZUKLUKLARI", 68, 52771408622,"BAHÇEBAŞI Mah, GÖNÜL SK., Dış Kapı No : 14,YEŞİLLİ / MARDİN")
Return
::seök,::
funcKayıt(52771408622, 5424586091)
Return
::seöi,::


::seaa,:: ;;
myFuncHasta("SEMİRE ALİHANOĞLU", "YEŞİLLİ", 5422299647, "GTM", "YARI BAĞIMLI", "MENTAL GERİLİK VE STEROTİPİK HAREKETLERLE BAĞLANTILI OVERAKTİF BOZUKLUK", 41, 64573015236,"TEPEBAŞI MAH. ALİHANOĞLU CAD. YAYLA SOK. NO.8 YEŞİLLİ / MARDİN")
Return
::seak,::
funcKayıt(64573015236, 5422299647)
Return
::seai,::SEMİRE ALİHANOĞLU, YEŞİLLİ, 05422299647, GTM


::sema,:: ;;
myFuncHasta("SEMİYE MALKOÇOĞLU", "YEŞİLLİ", 5433444070, "GTM", "YARI BAĞIMLI", "ESANSİYEL HT", 75, 64780008328,"GÜL MAH. MENEKŞE SK. MEHMET İDER APT. NO:1 KAT:1 DAİRE:1 YEŞİLLİ / MARDİN")
Return
::semk,::
funcKayıt(64780008328, 5433444070)
Return
::semi,::SEMİYE MALKOÇOĞLU, YEŞİLLİ, 05433444070, GTM


::seda,:: ;;
myFuncHasta("SEYFETTİN DEMİRCAN", "ÖMERLİ", 5467835414, "GTM", "YARI BAĞIMLI", "ESANSİYEL HT", 90, 12785797624,"YENİ MAH HÜRRİYET CAD NO 30 ÖMERLİ")
Return
::sedk,::
funcKayıt(12785797624, 5467835414)
Return
::sedi,::SEYFETTİN DEMİRCAN, ÖMERLİ, 05467835414, GTM


::suta,:: ;;
myFuncHasta("SULTANE TUNÇ", "KAYNAKKAYA", 5395907891, "GTM", "YARI BAĞIMLI", "KALP YETMEZLİĞİ", 79, 44245692736,"KAYNAKKAYA KÖYÜ NO :7 ÖMERLİ / MARDİN")
Return
::sutk,::
funcKayıt(44245692736, 5395907891)
Return
::suti,::SULTANE TUNÇ, KAYNAKKAYA, 05395907891, GTM


::suba,:: ;;
myFuncHasta("SULTANİ BARS", "YEŞİLLİ", 5558361350, "GTM", "YARI BAĞIMLI", "HİPERTANSİF HASTALIKLAR", 72, 23414443218,"BAHÇEBAŞI Mahi, ASYA SOK.Dış Kapı No : 14, YEŞİLLİ / MARDİN")
Return
::subk,::
funcKayıt(23414443218, 5558361350)
Return
::subi,::SULTANİ BARS, YEŞİLLİ, 05558361350, GTM


::süça,:: ;;
myFuncHasta("SÜLEYMAN ÇİFTÇİ", "ÖMERLİ ", 5364398369, "GTM", "YARI BAĞIMLI", "SİSTİT", 88, 45721694244,"CUMHURİYET MAH HÜRRİYET CAD. NO:65 ÖMERLİ ")
Return
::süçk,::
funcKayıt(45721694244, 5364398369)
Return
::süçi,::SÜLEYMAN ÇİFTÇİ, ÖMERLİ, 05364398369, GTM


::şaba,:: ;;
myFuncHasta("ŞAKİRE BATUK", "ÖMERLİ", 5342802911, "GTM", "YARI BAĞIMLI", "ESANSİYEL HT", 74, 29258248156,"YENİ MAH. 3002 SK ÖMERLİ/MARDİN")
Return
::şabk,::
funcKayıt(29258248156, 5342802911)
Return
::şabi,::ŞAKİRE BATUK, ÖMERLİ, 05342802911, GTM


::şaa,:: ;;
myFuncHasta("ŞEMSİ ALTUNDAŞ", "ÖMERLİ", 5353804262, "GTM", "YARI BAĞIMLI", "YUMUŞAK DOKU BOZUKLUKLARI", 78, 26912326304,"ŞAFAK MAH 1022 SK.NO:47 ÖMERLİ / MARDİN")
Return
::şak,::
funcKayıt(26912326304, 5353804262)
Return
::şai,::ŞEMSİ ALTUNDAŞ, ÖMERLİ, 05353804262, GTM 


::şeka,:: ;;
myFuncHasta("ŞEMSİ KAYMAZ", "ANITTEPE", 5326261047, "GTM", "YARI BAĞIMLI", "ESANSİYEL HT", 79, 22730465706,"ANITTEPE Mah, İç Kapı No : 1, Dış Kapı No : 58,ÖMERLİ / MARDİN")
Return
::şekk,::
funcKayıt(22730465706, 5326261047)
Return
::şeki,::ŞEMSİ KAYMAZ, ANITTEPE, 05326261047, GTM


::şeöa,:: ;;
myFuncHasta("ŞEMSİ ÖZELKAN", "KAYAÜSTÜ", 5304678215, "GTM", "YARI BAĞIMLI", " YUMUŞAK DOKU BOZ.", 94, 47668634420,"KAYAÜSTÜ MAH. ÖMERLİ / MARDİN")
Return
::şeök,::
funcKayıt(47668634420, 5304678215)
Return
::şeöi,::ŞEMSİ ÖZELKAN, KAYAÜSTÜ, 05304678215, GTM


::şia,:: ;;
myFuncHasta("ŞÜKRİYE İDER", "YEŞİLLİ", 5449704447, "GTM", "YARI BAĞIMLI", "OSTEOPATİLER", 45, 13475718400," Dış Kapı No : 13,YEŞİLLİ ")
Return
::şik,::
funcKayıt(13475718400, 5449704447)
Return
::şii,::ŞÜKRİYE İDER, YEŞİLLİ, 05449704447, GTM


::tuaa,:: ;;
myFuncHasta("TURKÖ ALTUN", "AKYOKUŞ", 5354727958, "GTM", "YARI BAĞIMLI", "ESANSİYEL HT", 81, 26969268626,"AKYOKUŞ KÖYÜ ÖMERLİ/MARDİN")
Return
::tuak,::
funcKayıt(5354727958, 26969268626)
Return
::tuai,::TURKÖ ALTUN, AKYOKUŞ, 05354727958, GTM


::tda,:: ;;
myFuncHasta("TÜRKAN DEMİR", "KARŞIYAKA", 5435615119, "GTM", "YARI BAĞIMLI", "YAŞLILIK", 83, 18050565998,"KARŞIYAKA MAH. SAĞLIK SK NO :3, YEŞİLLİ ")
Return
::tdk,::
funcKayıt(18050565998, 5435615119)
Return
::tdi,::TÜRKAN DEMİR, KARŞIYAKA, 05435615119, GTM


::tüaa,:: ;;
myFuncHasta("TÜRKİYE AYAZ", "KAYABALI", 5366292179, "GTM", "YARI BAĞIMLI", "EPİLEPSİ", 35, 32900070944,"KAYABALI MAH. KAYABALI SK.No : 87,ÖMERLİ / MARDİN")
Return
::tüak,::
funcKayıt(32900070944, 5366292179)
Return
::tüai,::TÜRKİYE AYAZ, KAYABALI, 05366292179, GTM


::vfa,:: ;;
myFuncHasta("VASFİYE FİDAN", "ÖMERLİ", 5355606747, "GTM", "YARI BAĞIMLI", "ESANSİYEL HT", 81, 14621680244,"CUMHURİYET MAH. 2043 SOK. NO:8 DAİRE:4 ÖMERLİ / MARDİN")
Return
::vfk,::
funcKayıt(14621680244, 5355606747)
Return
::vfi,::VASFİYE FİDAN, ÖMERLİ, 05355606747, GTM


::zma,:: ;;
myFuncHasta("ZEKİYE METE", "YEŞİLLİ", 5415364274, "GTM", "YARI BAĞIMLI", "KOAH HASTASI", 75, 29792174584,"BAHÇEBAŞI MAH. Mahallesi, 19 MAYIS CAD, no:35, YEŞİLLİ")
Return
::zmk,::
funcKayıt(29792174584, 5415364274)
Return
::zmi,::ZEKİYE METE, YEŞİLLİ, 05415364274, GTM


::zya,:: ;;
myFuncHasta("ZEKİYE YILDIZ", "ÖMERLİ", 5452970790, "GTM", "YARI BAĞIMLI", "DELİRYUM, DEMANS ", 81, 61006189854,"YENİ Mah., 3039 Sokağı, İç Kapı No:1, Dış Kapı No: 44,ÖMERLİ / MARDİN")
Return
::zyk,::
funcKayıt(61006189854, 5452970790)
Return
::zyi,::


::zça,:: ;;
myFuncHasta("ZEYNEP ÇİFTÇİ", "ÖMERLİ", 5335656217, "GTM", "YARI BAĞIMLI", "MUSKÜLERDİSTROFİ", 33, 61006189854,"CUMHURİYET Mah, 2081 Sok, İç Kapı No:2, Dış Kapı:16, ÖMERLİ/MARDİN")
Return
::zçk,::
funcKayıt(61006189854, 5335656217)
Return
::zçi,::ZEYNEP ÇİFTÇİ, ÖMERLİ, 05335656217, GTM


::zka,:: ;;
myFuncHasta("ZEYNEP KAHRAMAN", "YEŞİLLİ", 5452424006, "GTM", "YARI BAĞIMLI", "YAŞLILIK", 66, 24215360452,"BAHÇEBAŞI Mah, FIRAT SK,No : 2,YEŞİLLİ / MARDİN")
Return
::zkk,::
funcKayıt(24215360452, 5452424006)
Return
::zki,::ZEYNEP KAHRAMAN, YEŞİLLİ, 05452424006, GTM


::zca,:: ;;
myFuncHasta("ZÜBEYDE CAN", "ÖMERLİ", 5054535595, "GTM", "YARI BAĞIMLI", "MULTİPL MİYELOM", 66, 32468141100,"YENİ MAH. 3065 SK. Dış Kapı No : 9, ÖMERLİ / MARDİN")
Return
::zck,::
funcKayıt(32468141100, 5054535595)
Return
::zci,::ZÜBEYDE CAN, ÖMERLİ, 05054535595, GTM

::abaa,:: ;;
myFuncHasta("ABDULRAHMAN BARS", "YEŞİLLİ", 5412064842, "PANSUMAN", "YARI BAĞIMLI", "KOAH", yaş, 44329689904,"BAHÇEBAŞI MAH. KIZILAY SK NO 14 YEŞİLLİ / MARDİN")
Return
::abak,::
funcKayıt(44329689904, 5412064842)
Return
::abai,::ABDULRAHMAN BARS, YEŞİLLİ, 05412064842, PANSUMAN

::böza,:: ;;
myFuncHasta("BEDRİYE ÖZELKAN", "ÖMERLİ", 5465758181 , "GTM", "YARI BAĞIMLI", "tanı", yaş, 59290247312,"YENİ MAH. Mahallesi, 3001 SOKAK , no :15, ÖMERLİ / MARDİN")
Return
::bözk,::
funcKayıt(59290247312, 5465758181)
Return
::bözi,::BEDRİYE ÖZELKAN, ÖMERLİ, 05465758181 , GTM

::fkıa,:: ;;
myFuncHasta("FAZİLA KILIÇ", "YEŞİLLİ", 5398288612 , "PANSUMAN", "YARI BAĞIMLI", "KIRIK", yaş, 19334523178,"KARŞIYAKA MAH. KUDUPLAR CAD. NO.13 YEŞİLLİ / MARDİN")
Return
::fkık,::
funcKayıt(19334523178, 5398288612)
Return
::fkıi,::FAZİLA KILIÇ, YEŞİLLİ, 05398288612 , PANSUMAN

::gga,:: ;;
myFuncHasta("GÜLÇİN GÜMÜŞ", "ÖMERLİ", 5387817744, "GTM", "YARI BAĞIMLI", "tanı", yaş, 35513039650,"YENİ MAH. 3032 SK. NO:7 ÖMERLİ / MARDİN")
Return
::ggk,::
funcKayıt(35513039650, 5387817744)
Return
::ggi,::GÜLÇİN GÜMÜŞ, ÖMERLİ, 05387817744, GTM

::hua,:: ;;
myFuncHasta("HABİBE UZUNKAYA", "ÖMERLİ", 5353356077, "GTM", "YARI BAĞIMLI", "tanı", yaş, 65407043166,"CUMHURİYET MAH. 2016 SK. NO 3 ÖMERLİ / MARDİN")
Return
::huk,::
funcKayıt(65407043166, 5353356077)
Return
::hui,::HABİBE UZUNKAYA, ÖMERLİ, 05353356077, GTM

::hbba,:: ;;
myFuncHasta("HABİP BARTU", "YEŞİLLİ", 5428125347, "GTM", "YARI BAĞIMLI", "tanı", yaş, 42448752646,"ŞİRİNEVLER MAH. ALİ BİRO CAD. , Dış Kapı No : 68,YEŞİLLİ / MARDİN")
Return
::hbbk,::
funcKayıt(42448752646, 5428125347)
Return
::hbbi,::HABİP BARTU, YEŞİLLİ, 05428125347, GTM

::hbaa,:: ;;
myFuncHasta("HANİMİ BAYHOCA", "YEŞİLLİ", 5363198006, "GTM", "YARI BAĞIMLI", "tanı", 92, 37912903846,"TEPEBAŞI MAH. Mahallesi, GÜVEN SK. Caddesi/Sokağı, Dış Kapı No : 17/1,YEŞİLLİ / MARDİN")
Return
::hbak,::
funcKayıt(37912903846, 5363198006)
Return
::hbai,::HANİMİ BAYHOCA, YEŞİLLİ, 05363198006, GTM

::haba,:: ;;
myFuncHasta("HANİMİ BİNKAY", "YEŞİLLİ", 5355747731, "GTM", "YARI BAĞIMLI", "tanı", 92, 15149662644,"GÜL MAH. ESKİ MARDİN CD. Dış Kapı No : 34,YEŞİLLİ / MARDİN")
Return
::habk,::
funcKayıt(15149662644, 5355747731)
Return
::habi,::HANİMİ BİNKAY, YEŞİLLİ, 05355747731, GTM

::höza,:: ;;
myFuncHasta("HASİBE ÖZKOÇ", "YEŞİLLİ", 5432155129, "GTM", "YARI BAĞIMLI", "tanı", yaş, 32465085452,"BAHÇEBAŞI MAH. 19 MAYIS CAD. NO 72 YEŞİLLİ / MARDİN")
Return
::hözk,::
funcKayıt(32465085452, 5432155129)
Return
::hözi,::HASİBE ÖZKOÇ, YEŞİLLİ, 05432155129, GTM

::hea,:: ;;
myFuncHasta("HAVLE ERDOĞAN", "ÖMERLİ", 5422305464, "GTM", "YARI BAĞIMLI", "İNME", yaş, 10820862726,"CUMHURİYET MAH. 2028 SK. KAT 1 İç Kapı No : 1, Dış Kapı No : 36,ÖMERLİ / MARDİN")
Return
::hek,::
funcKayıt(5422305464, 10820862726)
Return
::hei,::HAVLE ERDOĞAN, ÖMERLİ, 05422305464, GTM

::lya,:: ;;
myFuncHasta("LATİFE YAVUZ", "ÖMERLİ", 5342297308, "GTM", "YARI BAĞIMLI", "tanı", yaş, 42613802916,"Şafak Mah. 1025 Sokak, No: 9, Ömerli / MARDİN")
Return
::lyk,::
funcKayıt(42613802916, 5342297308)
Return
::lyi,::LATİFE YAVUZ, ÖMERLİ, 05342297308, GTM

::meşa,:: ;;
myFuncHasta("MERYEM ŞAM", "YEŞİLLİ", 5449556592 , "GTM", "YARI BAĞIMLI", "tanı", yaş, 39952883782,"GÜL MAHALLESİ ULUÇ SOKAK NO:32 YEŞİLLİ / MARDİN")
Return
::meşk,::
funcKayıt(39952883782, 5449556592)
Return
::meşi,::MERYEM ŞAM, YEŞİLLİ, 05449556592 , GTM

::muea,:: ;;
myFuncHasta("MURAT EMEN", "ÖMERLİ", 5353356077, "GTM", "YARI BAĞIMLI", "tanı", yaş, 51955491504,"Cumhuriyet Mahallesi, 2003 Sokak, No: 2, ÖMERLİ / MARDİN")
Return
::muek,::
funcKayıt(51955491504, 5353356077)
Return
::muei,::MURAT EMEN, ÖMERLİ, 05353356077, GTM

::psa,:: ;;
myFuncHasta("PEYRUZE SINCAR", "GÜZELAĞAÇ", 5374591968, "GTM", "YARI BAĞIMLI", "tanı", 90, 48511606540,"Güzelağaç Köyü, ÖMERLİ / MARDİN  Ev köy girişinde olmakta. Sorulunca gösterilebilir")
Return
::psk,::
funcKayıt(48511606540, 5374591968)
Return
::psi,::PEYRUZE SINCAR, GÜZELAĞAÇ, 05374591968, GTM

::svda,:: ;;
myFuncHasta("SEVİM DURĞAY", "ÖMERLİ", 5433919483, "GTM", "YARI BAĞIMLI", "tanı", 76, 44041755314,"YENİ MAH HÜRRÜYET CAD NO 2 DAİRE 2 ÖEMERLİ MARDİN AYTAÇ DURAK PARK KARŞISI")
Return
::svdk,::
funcKayıt(44041755314, 5433919483)
Return
::svdi,::SEVİM DURĞAY, ÖMERLİ, 05433919483, GTM

::suaa,:: ;;
myFuncHasta("SUPHİYE ATIŞ", "YEŞİLLİ", 5456723452, "GTM", "YARI BAĞIMLI", "tanı", 76, 45022666810,"BAHÇEBAŞI MAH.19 MAYIS CAD YILDIZ SOK NO 9 YEŞİLLİ / MARDİN")
Return
::suak,::
funcKayıt(45022666810, 5456723452)
Return
::suai,::SUPHİYE ATIŞ, YEŞİLLİ, 05456723452, GTM

::sya,:: ;;
myFuncHasta("SÜLEYMAN YAVUZ", "ÖMERLİ", 5370591697, "GTM", "YARI BAĞIMLI", "tanı", yaş, 52399477062,"KAYAGÖZE MAH. ÖMERLİ / MARDİN")
Return
::syk,::
funcKayıt(52399477062, 5370591697)
Return
::syi,::SÜLEYMAN YAVUZ, ÖMERLİ, 05370591697, GTM

::zöza,:: ;;
myFuncHasta("ZEKİYE ÖZTÜRK", "YEŞİLLİ", 5398637247, "GTM", "YARI BAĞIMLI", "tanı", yaş, 47890571326,"KEMAL MALKOÇ CAD. GÜL MAH NO.55 YEŞİLLİ / MARDİN")
Return
::zözk,::
funcKayıt(47890571326, 5398637247)
Return
::zözi,::ZEKİYE ÖZTÜRK, YEŞİLLİ, 05398637247, GTM






::msga,:: ;;
myFuncHasta("MEHMET SELİM GÜLTEKİN", "ÇINARALTI", 5347325649, "GTM", "YARI BAĞIMLI", "HT", 72, 31463174762,"ÇINARALTI Mahallesi, No : 75,ÖMERLİ / MARDİN")
Return
::msgk,::
funcKayıt(31463174762, 5347325649)
Return
::msgi,::MEHMET SELİM GÜLTEKİN, ÇINARALTI, 05347325649, GTM

::yba,:: ;;
myFuncHasta("YÜKSEL BARMAN", "YEŞİLLİ", 5433985648, "PANSUMAN", "BAĞIMSIZ", "DM, YUMUŞAK DOKU BOZUKLUĞU", 50, 43423720162,"BAHÇEBAŞI ŞİRİNEVLER MAH. MENDERES CAD. NO 20 ,YEŞİLLİ / MARDİN")
Return
::ybk,::
funcKayıt(43423720162,5433985648)
Return
::ybi,::YÜKSEL BARMAN, YEŞİLLİ, 05433985648, PANSUMAN

::bka,:: ;;
myFuncHasta("BEHİYE KAYMAZ", "ANITTEPE", 5446894747, "İM TEDAVİ", "YARI BAĞIMLI", "HT,HL", 55,61180184188,"ANITTEPE MAH. Mahallesi, No : 25,ÖMERLİ / MARDİN")
Return
::bkk,::
funcKayıt(61180184188, 5446894747)
Return
::BKi,::BEHİYE KAYMAZ, ANITTEPE, 05446894747, İM TEDAVİ

::vka,:: ;;
myFuncHasta("VEZİRİ KURŞAT", "YEŞİLLİ", 5353352861, "GTM", "YARI BAĞIMLI", "DM", 87, 43387721410,"GÜL MAH ESKİ MARDİN CAD NO .6 YEŞİLLİ / MARDİN")
Return
::vkk,::
funcKayıt(43387721410,5353352861)
Return
::vki,::VEZİRİ KURŞAT, YEŞİLLİ, 05353352861, GTM

::hzka,:: ;;
myFuncHasta("HAMZA KAYA", "ÖMERLİ", 5394839000, "GTM", "YARI BAĞIMLI", "YUMUŞAK DOKU BOZUKLUĞU", 18,22439475938,"YAYLATEPE MAHALLESİ, DIŞ KAPI NO : 25, ÖMERLİ / MARDİN")
Return
::hzkk,::
funcKayıt(22439475938,5394839000 )
Return
::hzki,::HAMZA KAYA, ÖMERLİ, 05394839000, GTM


::ifa,:: ;;
myFuncHasta("İDİ FİLİZ", "ÖMERLİ", 5425461074, "GTM", "TAM BAĞIMLI", "GENEL DURUM BOZUKLUĞU", 90, 49363577958,"ŞAFAK MAH. 1005 SK. NO :4,ÖMERLİ / MARDİN")
Return
::ifk,::
funcKayıt(49363577958,5425461074)
Return
::ifi,::İDİ FİLİZ, ÖMERLİ, 05425461074, PANSUMAN


::şega,:: ;;
myFuncHasta("ŞEYHMUS GÜNEŞ", "ÖMERLİ ", 5353804320, "PANSUMAN", "YARI BAĞIMLI", "KIRIK", 48, 63565104538,"YENİ MAH. HÜRRİYET CAD. NO 97 ÖMERLİ / MARDİN")
Return
::şegk,::
funcKayıt(63565104538,5353804320)
Return
::şegi,::ŞEYHMUS GÜNEŞ, ÖMERLİ, 05353804320, PANSUMAN


::güaa,:: ;;
myFuncHasta("GÜLSEVİM ARAZ", "YEŞİLLİ", 5442070951, "PANSUMAN", "YARI BAĞIMLI", "PROTEZ CERRAHİSİ", 66, 58387221488,"KARŞIYAKA MAH. İSTİKLAL CAD. NO:34, YEŞİLLİ / MARDİN")
Return
::güak,::
funcKayıt(58387221488,5442070951 )
Return
::güai,::GÜLSEVİM ARAZ, YEŞİLLİ, 05442070951, PANSUMAN 



::hata,:: ;;
myFuncHasta("HASİNE TUNÇ", "ÇINARALTI", 5310216104, "GTM", "YARI BAĞIMLI", "KOAH", 90, 25586370668,"ÇINARALTI Mahallesi, Dış Kapı No : 79, ÖMERLİ / MARDİN")
Return
::hatk,::
funcKayıt(25586370668,5310216104 )
Return
::hati,::HASİNE TUNÇ, ÇINARALTI, 05310216104, GTM


::kama,:: ;;
myFuncHasta("KADRİ MERKİT", "YEŞİLLİ", 5050868475, "GTM", "TAM BAĞIMLI", "SEREBRAL PALSİ", 30, 63556049176,"ŞİRİNEVLER MAH. Mahallesi, GAZİ SK. Caddesi/Sokağı, İç Kapı No : 1, Dış Kapı No : 30,YEŞİLLİ / MARDİN")
Return
::kamk,::
funcKayıt(63556049176,5050868475 )
Return
::kami,::KADRİ MERKİT, YEŞİLLİ, 05050868475, GTM

::haka,:: ;;
myFuncHasta("HASİBE KETTE", "YEŞİLLİ", 5467811127, "PANSUMAN", "YARI BAĞIMLI", "YUMUŞAK DOKU BOZUKLUĞU", 75, 10733809832,"GÜL MAH KONUTLAR SK. No : 3,YEŞİLLİ / MARDİN")
Return
::hakk,::
funcKayıt(10733809832, 5467811127)
Return
::haki,::HASİBE KETTE, YEŞİLLİ, 05467811127, PANSUMAN

::edaa,:: ;;
myFuncHasta("EDİBE AKGÜNDÜZ", "ÖMERLİ", 5309582127, "IM ENJEKSİYON", "YARI BAĞIMLI", "OSTEOPOROZ", 80, 33371111044,"YENİ MAH 3054 SK NO 5 ÖMERLİ / MARDİN")
Return
::edak,::
funcKayıt(33371111044,5309582127)
Return
::edai,::EDİBE AKGÜNDÜZ, ÖMERLİ, 05309582127, IM ENJEKSİYON

::hiya,:: ;;
myFuncHasta("HİLMİ YILMAZ", "DEREYANI", 5353834606, "İV TEDAVİ", "YARI BAĞIMLI", "YUMUŞAK DOKU ZEDELENMESİ", 51, 30482151464,"DEREYANI KÖYÜ ,YEŞİLLİ / MARDİN")
Return
::hiyk,::
funcKayıt(30482151464,5353834606 )
Return
::hiyi,:: HİLMİ YILMAZ, DEREYANI, 05353834606, İV TEDAVİ

::abba,:: ;;
myFuncHasta("ABDURRAHMAN BİNKAY", "YEŞİLLİ", 5520112236, "GTM", "YARI BAĞIMLI", "YAŞLILIK", 89, 15173661842,"GÜL MAH. ESKİ MARDİN CAD. BUCA SK. NO.9, YEŞİLLİ / MARDİN")
Return
::abbk,::
funcKayıt(15173661842, 5520112236)
Return
::abbi,::ABDURRAHMAN BİNKAY, YEŞİLLİ, 05520112236, GTM

::muara,:: ;;
myFuncHasta("MURVET ARTUK", "SANCAR", 5368920993, "GTM", "TAM BAĞIMLI", "SEREBRAL PALSİ", 18, 22538416450,"Sancar Köyü, No: 29, Yeşilli / MARDİN")
Return
::muark,::
funcKayıt(22538416450, 5368920993)
Return
::muari,::MURVET ARTUK, SANCAR, 05368920993, GTM

::yaa,:: ;;
myFuncHasta("YUSUF AKDOĞAN", "ÖMERLİ", 5368599887, "GTM", "YARI BAĞIMLI", "GONARTROZ BPH", 72, 52873460948,"CUMHURİYET MAH. 2002.SK.ESKİ DEMİRCİLER Sokağı No 16 ,ÖMERLİ / MARDİN")
Return
::yak,::
funcKayıt(52873460948,5368599887)
Return
::yai,::YUSUF AKDOĞAN, ÖMERLİ, 05368599887, GTM

::sda,:: ;;
myFuncHasta("SUNAY DAŞ", "ÖMERLİ", 5360142185, "GTM", "YARI BAĞIMLI", "SEREBRAL PALSİ", 29,23414443218,"ŞAFAK MAH. 2016 SOKAK NO:26/2 ,ÖMERLİ / MARDİN" )
Return
::sdk,::
funcKayıt(23414443218,5360142185)
Return
::sdi,::SUNAY DAŞ, ÖMERLİ, 05360142185, GTM

::aya,:: ;;
myFuncHasta("ABUDE YILMAZ", "DEREYANI", 5355928327, "GTM", "YARI BAĞIMLI", "YUMUŞAK DOKU,HT", 79, 30485151300,"DERYANI KÖYÜ , YEŞİLLİ / MARDİN")
Return
::ayk,::
funcKayıt(30485151300,5355928327 )
Return
::ayi,::ABUDE YILMAZ, DEREYANI, 05355928327, GTM


::şda,:: ;;
myFuncHasta("ŞEYHMUS DAĞ", "ANITTEPE", 5399161047, "GTM", "YARI BAĞIMLI ", "DM", 80,59746231940,"ANITTEPE KÖYÜ, KAPI NO YOKMUŞ , ÖMERLİ / MARDİN" )
Return
::şdk,::
funcKayıt(59746231940,5399161047)
Return
::şdi,::ŞEYHMUS	DAĞ, ANITTEPE, 05399161047, GTM 

::nha,:: ;;
myFuncHasta("NURELHUDA HÜSEYİN", "ÖMERLİ", 5375533047, "GTM", "TAM BAĞIMLI ", "EPİLEPSİ", 31,46757012620,"CUMHURİYT MAH. 2004 SK. NO 6 ÖMERLİ / MARDİN")
Return
::nhk,::
funcKayıt(46757012620,5375533047)
Return
::nhi,::NURELHUDA HÜSEYİN, ÖMERLİ, 05375533047, NAKİL 🚑🚑🚑 

::nba,:: ;;
myFuncHasta("NAZLİYE BAYHOCA", "YEŞİLLİ",5439738130 , "SONDA", "TAM BAĞIMLI", "ÜRİNER İNKONTİNAS", 84,31895104528,"TEPEBAŞI MAH. HAS SK. NO:29 YEŞİLLİ / MARDİN")
Return
::nbk,::
funcKayıt(31895104528,5439738130 )
Return
::nbi,::NAZLİYE BAYHOCA, YEŞİLLİ, 05439738130, SONDA,

::osa,:: ;;
myFuncHasta("OSMAN SAVAŞ", "YEŞİLLİ", 5413799944, "PANSUMAN", "TAM BAĞIMLI", "KBY", 74, 49711510682,"GÜL MAH. ALPARSLAN SOKAK . İç Kapı No : 2, Dış Kapı No : 5,YEŞİLLİ / MARDİN")
Return
::osk,::
funcKayıt(49711510682, 5413799944)
Return
::osi,::OSMAN SAVAŞ, YEŞİLLİ, 05413799944, PANSUMAN MALZEMESİ

::hkt,::41137852124
::hkp,::5307870444
::hka,:: ;;
myFuncHasta("HALİMİ KAYA" ,"ÖMERLİ", 5307870444, "GTM", "YARI BAĞIMLI", "DM", 85, 41137852124,"CUMHURİYET MAH KAYA SK NO 20 ,ÖMERLİ / MARDİN")
Return
::hkk,::
funcKayıt(41137852124, 5307870444)
return
::hki,::HALİMİ KAYA, ÖMERLİ, 05307870444, GTM 


::şgt,::21140518798
::şgp,::5397348360
::şga,:: ;;
myFuncHasta("ŞÜKRİYE GÜMÜŞ", "SALİHKÖY", 5397348360 , "GTM", "YARI BAĞIMLI",  "DM, HL, KBY", 40, 21140518798,"SALİHKÖY NO:3 ÖMERLİ / MARDİN")
Return
::şgk,::
funcKayıt(21140518798, 5397348360)
return
::şgi,::ŞÜKRİYE GÜMÜŞ, SALİHKÖY, 05397348360, GTM 

::ppt,::50464485578
::ppp,::5536956347
::ppa,:: ;;
myFuncHasta("PERİHAN PERK", "YEŞİLLİ", 5536956347, "GTM", "TAM BAĞIMLI", "HT", 91, 50464485578,"GÜL MAH. Mahallesi, HALI SAHA SK. Caddesi/Sokağı, İç Kapı No : 1, Dış Kapı No : 4,YEŞİLLİ / MARDİN")
Return
::ppk,::
funcKayıt(50464485578,5536956347)
return
::ppi,::PERİHAN PERK, YEŞİLLİ, 05536956347, GTM 








::DAt,::36700944306
::DAp,::5325724453
::DAa,:: ;;
myFuncHasta("DAVUT ARSLAN", "YEŞİLLİ", 5325724453, "PANSUMAN", "TAM BAĞIMLI", "SVO", 84, 36700944306,"ZEYTİNLİ KÖYÜ YEŞİLLİ / MARDİN")
Return
::DAk,::
funcKayıt(36700944306,5325724453)
return
::dai,::DAVUT ARSLAN, ZEYTİNLİ, 05325724453, PANSUMAN 




::tkt,::32900070944
::tkp,::5333196644
::tka,:: ;;
myFuncHasta("TÜRKİYE KABA", "YEŞİLLİ", 5333196644, "İV TEDAVİ", "YARI BAĞIMLI", "DM OSTEOPOROZ", 83, 32900070944,"BAHÇEBAŞI MAH. Mahallesi, İSTİKLAL SK. 19 MAYIS Caddesi/Sokağı, NO 3 İç Kapı No : 1, Dış Kapı No : 9,YEŞİLLİ / MARDİN")
Return
::tkk,::
funcKayıt(32900070944,5333196644)
return
::tki,::TÜRKİYE KABA, YEŞİLLİ, 05333196644, İV TEDAVİ




::şöt,::40117886432
::şöp,::5444835961
::şöa,:: ;;
myFuncHasta("ŞEYHMUS ÖZ", "KAYNAKKAYA", 5444835961,  "GTM", "YARI BAĞIMLI", "PARKİNSON YUMUŞAK DOKU BOZUKLUĞU", 71, 40117886432,"KAYNAKKAYA KÖYÜ , NO.310, ÖMERLİ / MARDİN")
return
::şök,::
funcKayıt(40117886432, 5444835961)
return
::şöi,::ŞEYHMUS ÖZ, KAYNAKKAYA, 05444835961, GTM 




::vöt,::49543571974
::vöp,::5330229704
::vöa,:: ;;
myFuncHasta( "VEYSİ ÖZEKİN", "ÖMERLİ", 5330229704, "PANSUMAN", "YARI BAĞIMLI", "KIRIK", 56, 49543571974,"CUMHURİYET MAH. Mahallesi, 2021 SK. NO:5 ÖMERLİ / MARDİN")
Return
::vök,::
funcKayıt(49543571974, 5330229704)
return
::vöi,::VEYSİ ÖZTEKİN, ÖMERLİ, 05330229704, PANSUMAN 




::ttt,::31283124824
::ttp,::5424953857
::tta,:: ;;
myFuncHasta("TÜRKİYE TANIŞ", "YEŞİLLİ", 5424953857, "SONDA", "TAM BAĞIMLI", "SİSTİT", 74, 31283124824,"GÜL MAHALLESİ KEMAL MALKOÇ CADDESİ ( OPAK MARKETİN 300 METRE İLERSİ ) YEŞİLLİ / MARDİN")
Return
::TTk,::
funcKayıt(31283124824, 5424953857)
return
::TTi,::TÜRKİYE TANIŞ, YEŞİLLİ, 05424953857, SONDA





::ait,::11654779112
::aip,::5414292319
::aia,:: ;;
myFuncHasta("ALİ İLTER", "YEŞİLLİ", 5414292319, "GTM", "BAĞIMSIZ", "YUMUŞAK DOKU BOZUKLUĞU", 79, 11654779112,"GÜL Mahallesi, CUMHURİYET MEYDANI, İç Kapı No : 1, Dış Kapı No : 10,YEŞİLLİ / MARDİN")
Return
::aik,::
funcKayıt(11654779112, 5414292319)
return
::aii,::ALİ İLTER, YEŞİLLİ, 05414292319, GTM




::nit,::11615780492
::nip,::5414292319
::nia,:: ;;
myFuncHasta("NAİLE İLTER", "YEŞİLLİ",5414292319, "GTM", "YARI BAĞIMLI", "YAŞLILIK", 77,11615780492,"GÜL Mahallesi, CUMHURİYET MEYDANI, İç Kapı No : 1, Dış Kapı No : 10,YEŞİLLİ / MARDİN")
Return
::nik,::
funcKayıt(11615780492, 5414292319)
return
::nii,::NAİLE İLTER, YEŞİLLİ, 05414292319, GTM








::şözt,::12785797624
::şözp,::5456940659
::şöza,:: ;;
myFuncHasta("ŞEYHO ÖZDEMİR", "ÖMERLİ",5456940659, "GTM", "TAM BAĞIMLI", "VERTİGO", 92,12785797624,"CUMHURİYET MAH. 2054 SOK. NO:32A ÖMERLİ / MARDİN")
Return
::şözk,::
funcKayıt(12785797624,5456940659)
return
::şözi,::ŞEYHO ÖZDEMİR, ÖMERLİ, 05456940659, GTM




::aakt,::19235582656
::aakp,::5417662840
::aaka,:: ;;
 myFuncHasta("ALİ AKAY", "ÖMERLİ",5417662840, "GTM", "YARI BAĞIMLI", "KIRIK SONRASI İYİLEŞME", 84,19235582656,"YENİ MAH. 3058 SK.  NO: 1/1 ÖMERLİ / MARDİN")
Return
::aakk,::
funcKayıt(19235582656, 5417662840)
return
::aaki,::ALİ AKAY, ÖMERLİ, 05417662840, GTM





::şbt,::42988734690
::şbp,::5413264747
::şba,:: ;;
myFuncHasta("ŞEYHMUZ BATMAZ", "YEŞİLLİ",5413264747, "GTM", "YARI BAĞIMLI", "KBY", 78,42988734690,"BAHÇE BAŞI MAHALLESİ 19 MAYIS CADDESİ NUMARA 171 YEŞİLLİ MARDİN")
Return
::şbk,::
funcKayıt(42988734690, 5413264747)
return
::şbi,::ŞEYHMUZ BATMAZ, YEŞİLLİ, 05413264747, GTM




::mbt,::42940736274
::mbp,::5413264747
::mba,:: ;;
myFuncHasta("MİHDİYE BATMAZ", "YEŞİLLİ",5413264747, "İM TEDAVİ", "YARI BAĞIMLI", "ESANSİYEL (PRİMER) HİPERTANSİYON", 69,42940736274,"BAHÇE BAŞI MAHALLESİ 19 MAYIS CADDESİ NUMARA 171 YEŞİLLİ MARDİN")
Return
::mbk,::
funcKayıt(42940736274, 5413264747)
return
::mbi,::MİHDİYE BATMAZ, YEŞİLLİ, 05413264747, İM TEDAVİ 





::ASt,::25676311786
::ASp,::5013189578
::ASa,:: ;;
myFuncHasta("ALİ SENÜK", "YEŞİLLİ",5013189578, "PANSUMAN", "TAM BAĞIMLI", "YUMUŞAK DOKU BOZUKLUĞU", 51,25676311786,"BAHÇEBAŞI MAH. YILDIZ SK. NO 52 YEŞİLLİ / MARDİN")
Return
::ASk,::
funcKayıt(25676311786, 5013189578)
return
::ASi,::ALİ SENÜK, YEŞİLLİ, 05013189578, PANSUMAN





::vat,::53935369766
::vap,::5446411888
::vaa,:: ;;
myFuncHasta("VEHBİYE AĞAN", "YEŞİLLİ",5446411888, "NAKİL", "TAM BAĞIMLI", "HT DM", 63,53935369766,"SANCAR köyü ,YEŞİLLİ / MARDİN")
Return
::vak,::
funcKayıt(53935369766, 5446411888)
return
::vai,::VEHBİYE AĞAN, YEŞİLLİ, 05446411888, NAKİL




::hıt,::63931092766
::hıp,::5377277836
::hıa,:: ;;
myFuncHasta("HIDIR İRMAK", "KOVANLI",5377277836, "GTM", "TAM BAĞIMLI", "KIRIK", 67,63931092766,"KOVANLI KÖYÜ, NO:19, ÖMERLİ / MARDİN")
return
::hık,::
funcKayıt(63931092766, 5377277836)
return
::hıi,::HIDIR İRMAK, KOVANLI, 05377277836, GTM




::fkt,::51466508364
::fkp,::5352727779
::fka,:: ;;
myFuncHasta("FATMA KAYA", "YAYLATEPE",5352727779, "GTM", "TAM BAĞIMLI", "EPİLEPSİ", 23,51466508364,"YAYLATEPE Mahallesi, İç Kapı No : , Dış Kapı No : 34, ÖMERLİ / MARDİN")
return
::fkk,::
funcKayıt(51466508364, 5352727779)
Return
::fki,::FATMA KAYA, YAYLATEPE, 05352727779, GTM



::ekt,::10706810766
::ekp,::5452010869
::eka,:: ;;
myFuncHasta("EMİNE KETTE", "YEŞİLLİ",5452010869, "PANSUMAN", "TAM BAĞIMLI", "DM", 80,10706810766,"GÜL MAH. ORDU APT. KAT 6 DAİRE 11 YEŞİLLİ/MARDİN")
return
::ekk,::
funcKayıt(10706810766,5452010869)
Return
::eki,::EMİNE KETTE, YEŞİLLİ, 05452010869, PANSUMAN


;; index 50
::şat,::47350589236
::şap,::5432256458
::şaa,:: ;;
myFuncHasta("ŞEYHMUS ACU", "YEŞİLLİ",5432256458, "PANSUMAN", "YARI BAĞIMLI", "YANIK", 63,47350589236,"BAHÇEBAŞI MAH, SARAY SK, NO:54, YEŞİLLİ / MARDİN")
return
::şak,::
funcKayıt(47350589236,5432256458)
Return
::şai,::ŞEYHMUS ACU, YEŞİLLİ, 05432256458, PANSUMAN 




::eöt,::10304575814
::eöp,::5468034285
::eöa,:: ;;
myFuncHasta("ESRA ÖTER", "ÖMERLİ",5468034285, "GTM",  "TAM BAĞIMLI", "EPİLEPSİ", 18,10304575814,"YENİ MAH.3076 SK.NO:28 ÖMERLİ MARDİN")
return
;; panates kayıt
::eök,::
funcKayıt(10304575814, 5468034285)
Return
::eöi,::ESRA ÖTER, ÖMERLİ, 05468034285, GTM




::stt,::22052432516
::stp,::5456554566
::sta,:: ;;
 myFuncHasta("SELİM TEKİN", "YEŞİLLİ",5456554566, "İV TEDAVİ", "TAM BAĞIMLI", "SVO", 58,22052432516,"ŞİRİNEVLER MAH. TEKİNLER CAD NO:40 YEŞİLLİ / MARDİN")
return
;; panates kayıt
::stk,::
funcKayıt(22052432516,5456554566)
Return
::sti,::SELİM TEKİN, YEŞİLLİ, 05456554566, İV TEDAVİ



::muat,::46861661806
::muap,::5386861406
::muaa,:: ;;
myFuncHasta("MUNİR AKGÜL", "ÖMERLİ",5386861406, "İM TEDAVİ", "YARI BAĞIMLI", "SVO", 61,46861661806,"YENİ MAH. ŞEHİT ZÜBEYİR DURGAY SOK. NO: 10 D: 2 ÖMERLİ / MARDİN")
return
::muak,::
funcKayıt(46861661806,5386861406)
Return
::muai,::MUNİR AKGÜL, ÖMERLİ, 05386861406, GTM 





::şkt,::44380688304
::şkp,::5432252064
::şka,:: ;;
myFuncHasta("ŞEYHMUS KORKUT", "YEŞİLLİ",5432252064, "GTM", "YARI BAĞIMLI", "ALZHEİMER", 74,44380688304,"GÜL MAH. Mahallesi, VATAN CAD. Caddesi/Sokağı, Dış Kapı No : 14,YEŞİLLİ / MARDİN")
return
::şkk,::
funcKayıt(44380688304, 5432252064)
Return
::şki,::ŞEYHMUS KORKUT, YEŞİLLİ, 05432252064, GTM




::höt,::39634902534
::höp,::5342666912
::höa,:: ;;
myFuncHasta("HAMDİYE ÖZ", "KAYNAKKKAYA",5342666912, "GTM TAHLİL", "YARI BAĞIMLI", "YUMUŞAK DOKU BOZUKLUĞU", 71,39634902534,"KAYNAKKAYA Mahallesi, NO:219 AŞAĞI MAH. ÖMERLİ / MARDİN")
return
::hök,::
funcKayıt(39634902534, 5342666912)
Return
::höi,::HAMDİYE ÖZ, KAYNAKKKAYA, 05342666912, GTM TAHLİL






::zöt,::63373111308
::zöp,::5449308947
::zöa,:: ;;
myFuncHasta("ZEKİYE ÖKMEN", "KOVANLI",5449308947, "TAHLİL", "YARI BAĞIMLI", "SEREBRAL ENFARKTÜS", 71,63373111308,"KOVANLI MAH. Dış Kapı No : 9,ÖMERLİ / MARDİN")
return
::zök,::
funcKayıt(63373111308,5449308947)
return
::zöi,::ZEKİYE ÖKMEN, KOVANLI, 05449308947, TAHLİL



;; barter yapıldı
::sakp,::5510781005
::sakt,::33389110480
::saka,:: ;;
myFuncHasta("SEKİNE AKGÜNDÜZ", "ÖMERLİ",5510781005,"NAKİL","YARI BAĞIMLI", "DM YUMUŞAK DOKU BOZ", 87,33389110480,"YENİ MAH. 3049 SK NO 2 ÖMERLİ / MARDİN")
return
::sakk,::
funcKayıt(33389110480, 5510781005)
::saki,::SEKİNE AKGÜNDÜZ, ÖMERLİ , 05510781005, NAKİL


Return





::mçp,::5422674647
::mçt,::39334856472
::mça,:: ;;
myFuncHasta("MUAYYET ÇAM","YEŞİLLİ",5422674647,"GTM","TAM BAĞIMLI","SEREBRAL PALSİ", 31,39334856472,"BAHÇEBAŞI MAH. HANSE HATUN CAD. DAİRE : 3, Dış Kapı No : 120,YEŞİLLİ / MARDİN")
return
::mçk,::
funcKayıt(39334856472,5422674647)
Return
::mçi,::MUAYYET ÇAM, YEŞİLLİ, 05422674647, GTM





::hçp,::5422674647
::hçt,::39538849638
::hça,:: ;;
myFuncHasta("HANİMİ ÇAM", "YEŞİLLİ",5422674647, "GTM", "YARI BAĞIMLI", "YAŞLILIK", 79,39538849638,"BAHÇEBAŞI MAH. HANSE HATUN CAD. DAİRE : 3, Dış Kapı No : 120,YEŞİLLİ / MARDİN")
return
::hçk,::
funcKayıt(39538849638,5422674647)
Return
::hçi,::HANİMİ ÇAM, YEŞİLLİ, 05422674647, GTM




::smp,::5423561219
::smt,::59044246554
::sma,::
myFuncHasta("SAKİNE MALKOÇ", "YEŞİLLİ",5423561219,"GTM","TAM BAĞIMLI", "KIRIK",55,59044246554,"KARŞIYAKA MAH KUDATLAR CAD NO 6 KAT 1 YEŞİLLİ / MARDİN")
return
::smk,::
funcKayıt(59044246554, 5423561219)
Return
::smi,::SAKİNE MALKOÇ, YEŞİLLİ, 05423561219, NAKİL




::hmlp,::5462941970
return
::hmlt,::23960369086
::hmla,:: ;;
myFuncHasta("HAYRİYE MALKAÇ", "YEŞİLLİ", 5462941970, "GTM", "TAM BAĞIMLI", "SEREBRAL PALSİ", 44,23960369086,"GÜL MAH. , malkoçlar CAD. No : 56,YEŞİLLİ / MARDİN")
return
::hmlk,::
funcKayıt(23960369086, 5462941970)
Return
::hmli,::HAYRİYE MALKAÇ, YEŞİLLİ, 05462941970, GTM





::hmp,::5462941970
::hmt,::64492017946
::hma,:: ;;
myFuncHasta("HASİBE MALKAÇ", "YEŞİLLİ", 5462941970, "GTM", "TAM BAĞIMLI", "HT", 72, 64492017946,"GÜL MAHALLESİ HACI KEMAL MALKOÇ CADDESİ NO/54 YEŞİLLİ / MARDİN")
Return
::hmk,::
funcKayıt(64492017946,5462941970)
Return
::hmi,::HASİBE MALKAÇ, YEŞİLLİ, 05462941970, GTM




::fert,::35980968132
::ferp,::5386894707
::fera,:: ;;
myFuncHasta("FEYZİ ERDEM", "DEREYANI", 5386894707, "NAKİL",  "TAM BAĞIMLI",  "YUMUŞAK DOKU BOZUKLUĞU", 38, 35980968132,"DEREYANI MAHALLESİ, DEREYANI KÜME EVLERİ, Dış Kapı No : 123,  DEREYANI İLKÖĞRETİM OKULU YANI  YEŞİLLİ / MARDİN")
return
::ferk,::
funcKayıt(35980968132,5386894707)
Return
::feri,::FEYZİ ERDEM, DEREYANI, 05386894707, NAKİL




::mara,:: ;;
myFuncHasta("MEHMET ARSLAN", "YAYLATEPE",5326440677, "SUBCUTAN ENJEKSİYON",  "YARI BAĞIMLI",  "AKCİĞER CA", 52,37759964796,"YENİ MAH. 3059 SOK. NO:6 ÖMERLİ / MARDİN")
return
::mark,::
funcKayıt(37759964796, 5326440677)
Return
::mari,::MEHMET ARSLAN, YAYLATEPE, 05326440677, SUBKUTAN ENJEKSİYON, 

::iöa,:: ;;
 myFuncHasta("İSMAİL ÖNEY", "YEŞİLLİ", 5412654055, "SONDA",  "TAM BAĞIMLI",  "KIRIK", 80,21494451178,"BAHÇEBAŞI MAH. Mahallesi, 19 MAYIS CAD. Caddesi/Sokağı, İç Kapı No : 2, Dış Kapı No : 221,YEŞİLLİ / MARDİN")
return
::iök,::
funcKayıt(21494451178,5412654055)
::iöi,::İSMAİL ÖNEY, YEŞİLLİ, 05412654055, SONDA

Return

::nida,:: ;;
myFuncHasta("NURİ DURĞAY", "ÖMERLİ", 5388842335, "İM TEDAVİ","TAM BAĞIMLI","YAŞLILIK",93,44119752788,"ŞEHİT KOMİSER ZÜBEYİR DURGAY SK NO : 33 ,ÖMERLİ / MARDİN")
return
::nidk,::
funcKayıt(44119752788, 5388842335)
Return
::nidi,::NURİ DURĞAY, ÖMERLİ, 05388842335, İM TEDAVİ




::aba,:: ;;
myFuncHasta("AHMET BULUT", "ÇINARALTI", 5364555809, "SONDA", "TAM BAĞIMLI", "ÜRİNER İNKONTİNAS", 92,29843228716,"ÇINARALTI Mahallesi, İç Kapı No : , Dış Kapı No : 48, ÖMERLİ / MARDİN")
return
::abk,::
funcKayıt(29843228716, 5364555809)
Return
::abi,::AHMET BULUT, ÇINARALTI, 05364555809, SONDA




::aala,:: ;;
myFuncHasta("AHMET ALTUNDAĞ", "ÖMERLİ", 5550042140, "İM TEDAVİ",  "TAM BAĞIMLI",  "ALZHEİMER", 69,39433908942,"YENİ Mahallesi, 3051 Sokağı, İç Kapı No : 1, Dış Kapı No : 7,ÖMERLİ / MARDİN")
Return
::aalk,::
funcKayıt(39433908942,5550042140)
Return
::aali,::AHMET ALTUNDAĞ, ÖMERLİ, 05550042140, İM TEDAVİ


::mka,:: ;;
myFuncHasta("MEHMET KARADAŞ", "ÖMERLİ", 5465758181, "GTM",  "TAM BAĞIMLI",  "YAŞLILIK", 89,30161218068,"YENİ MAH. HÜRRİYET CAD. NO:23 /1 ÖMERLİ / MARDİN")
Return
::mkk,::
 funcKayıt(30161218068, 5465758181)
::mki,::MEHMET KARADAŞ, ÖMERLİ, 05465758181, GTM


Return

::fea,:: ;;
myFuncHasta("FATİME ERCAN", "KOCAKUYU", 5363558698, "NAKİL",  "TAM BAĞIMLI",  "SEREBROVASKÜLER HASTALIK",  48,27488307414,"KOCAKUYU MAH. ,ÖMERLİ / MARDİN")
Return
::fek,::
funcKayıt(27488307414, 5363558698)
::fei,::FATİME ERCAN, KOCAKUYU, 05363558698, NAKİL


Return


::sşa,:: ;;
myFuncHasta("SEKİNE ŞAHİN", "ÖMERLİ", 5052467978, "TAHLİL",  "YARI BAĞIMLI",  "DM", 94,64423351132,"CUMHURİYET MAH. MİLLİ EĞİTİM LOMANLI. KAT:2 NO:3 ÖMERLİ / MARDİN")
Return
::sşk,::
funcKayıt(64423351132, 5052467978)
Return
::sşi,::SEKİNE ŞAHİN, ÖMERLİ, 05052467978, TAHLİL


::maa,:: ;;
myFuncHasta("MEHDİYE ACU", "YEŞİLLİ", 5416152629, "SONDA",  "YARI BAĞIMLI",  "DM HT", 83,47395587716,"BAHÇEBAŞI MAH. SARAY SOKAK İÇ KAPI NO:2 NO:54 YEŞİLLİ / MARDİN")
Return
::mak,::
funcKayıt(47395587716,5416152629)
Return
::mai,::MEHDİYE ACU, YEŞİLLİ, 05416152629, SONDA


::nya,:: ;;
myFuncHasta("NURETTİN YÜKSEL", "ÖMERLİ", 5541342797, "GTM  TAHLİL",  "TAM BAĞIMLI",  "YUMUŞAK DOKU BOZUKLUĞU", 97,18254615338,"CUMHURİYET MAH. HÜRRİYET CAD. HALEFOĞLU APT, ŞOK ÜSTÜ, NO 3 KAT 5 ÖMERLİ / MARDİN")
Return
::nyk,::
funcKayıt(18254615338, 5541342797)
Return
::nyi,::NURETTİN YÜKSEL, ÖMERLİ, 05541342797, GTM 




::taa,:: ;;
myFuncHasta("TÜRKİYE ALP", "YEŞİLLİ", 5469261565, "SC ENJEKSİYON",  "YARI BAĞIMLI",  "ROMATİT ARTİT", 81,18050565998,"KARŞIYAKA MAH. İSTİKLAL CAD. Dış Kapı No : 15, YEŞİLLİ / MARDİN")
Return
::tak,::
funcKayıt(18050565998, 5469261565)
Return
::tai,::TÜRKİYE ALP, YEŞİLLİ, 05469261565, SC ENJ 



::ahala,:: ;;
myFuncHasta("AHMET ALGAN", "ÖMERLİ", 5051471848, "GTM",  "YARI BAĞIMLI",  "YAŞLILIK", 80, 26156351896,"YENİ MAH. KAYAÜSTÜ YOL ÜZERİ Dış Kapı No : 6,ÖMERLİ / MARDİN MEHMETÇİK İLKOKUL YANI ")
Return
::ahalk,::
funcKayıt(26156351896, 5051471848)
Return
::ahali,::AHMET ALGAN, ÖMERLİ, 05051471848, GTM

::ata,:: ;;
myFuncHasta("ALİ TEKİN", "YEŞİLLİ", 5531339199, "SONDA",  "TAM BAĞIMLI",  "BPH", 86,22568415362,"bahçe başı ŞİRİNEVLER Mahallesi, tekinler semti No : 2,YEŞİLLİ / MARDİN")
Return
::atk,::
funcKayıt(22568415362, 5531339199)
Return
::ati,::ALİ TEKİN, YEŞİLLİ, 05531339199, SONDA

;; index 0
::aaa,:: ;; 
myFuncHasta("ADLE AY", "ÖMERLİ", 5531166474, "GTM","TAM BAĞIMLI", "YAŞLILIK", 89,22490473720,"YENİ MAHALLE, KÜME EVLERİ, DIŞKAPI NO : 3, ÖMERLİ / MARDİN")
Return
::aak,::
funcKayıt(22490473720, 5531166474)
return
::aai,::ADLE AY, ÖMERLİ, 05531166474, GTM


::sat,::64780008328
::saa,:: ;;
myFuncHasta("SEYFETTİN AKKOÇ", "YEŞİLLİ", 5397756303, "PANSUMAN", "TAM BAĞIMLI", "DM APOPLEKSİ",67,64780008328,"Kemal Malkoç Mah. İlvan Apt. Kapı No: 25, Yeşilli / MARDİN")
return
::sak,::
funcKayıt(64780008328, 5397756303)
Return
::sai,::SEYFETTİN AKKOÇ, YEŞİLLİ, 05366081687, PANSUMAN MALZEMESİ, YARA TEMİZLİĞİ İÇİN SERUM, BATİKON, SARGI BEZİ, FLASTER, SONDA 




;;açmıyor
::via,:: ;; 
myFuncHasta("VEZİRİ İLETMİŞ", "YEŞİLLİ", 5315168667, "PANSUMAN", "TAM BAĞIMLI", "YUMUŞAK DOKU BOZUKLUĞU", 81, 35683978100,"Şirinevler Mah. Gazi Sokak, No: 16/1, Yeşilli / MARDİN")
Return
::vik,::
funcKayıt(35683978100, 5315168667)
Return
::vii,::VEZİRİ İLETMİŞ, YEŞİLLİ, 05315168667, GTM


::fta,:: ;;  ulaşılamadı
myFuncHasta("FATMA TURAN", "ÖMERLİ", 5317207711, "GTM", "YARI BAĞIMLI", "OSTEOPOROZ", 93, 25952358368,"YENİ MAH. NO :10 HÜRRİYET CAD. BELEDİYE KARŞISI ,ÖMERLİ / MARDİN")
Return
::ftk,::
funcKayıt(25952358368, 5317207711)
Return
::fti,::FATMA TURAN, ÖMERLİ, 05317207711, GTM



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
