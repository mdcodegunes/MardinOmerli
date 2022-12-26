SetTitleMatchMode 2	; put this at the top of your script
SetKeyDelay, -1
/*
::1.::myfunc(1, 1, 1)
::2.::myfunc(2, 1, 1)
::3.::myfunc(3, 1, 1)
::4.::myfunc(4, 1, 1)
*/

myfunc(x, y, z)
{
	Sleep 1000
	Send,{down}
	Send,{Enter 2}
	Sleep 500
	Send, ^l
	Sleep 500
	Send,+{Tab}
	Sleep 500
	Send,+{Tab 6}
	Send, %z%
	Send,+{Tab 3}
	Send, %y%
	Send,+{Tab 1}
	Send, %x%
	Send, ^l
	Sleep 500
	Send,{Tab 30}
}

prospektus(x)
{
	Run "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 10" https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/%x%.pdf
	Send, {Enter}
}

prospektus2(x)
{
	Run "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 10" https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/%x%.pdf113
	Send, {Enter}
}



myfunchaftadakaç(h,x)
{
	Sleep 1000
	Send,{down}
	Send,{Enter 2}
	Sleep 500
	Send, ^l
	Sleep 500
	Send,+{Tab 7}
	Send, %h%
	Send,+{Tab 3}
	Send, %x%
	Send, ^l
	Sleep 500
	Send,{Tab 31}
}

/*
:::: ;;
Send,
myfunc( , , )
return
*/

/*
myfunc( kaç defa, adet, kutu)
*/

#If WinActive("E.RPT.ahk")
::*new::
Send,
(
:::: ;;
Send,
myfunc(,,)
return

::p:: ;;
prospektus()
return
)
return



#IfWinActive

::cp5:: ;; cipro 500
Send,08699578090425
myfunc(2,1,1)
return

::cp5p::
prospektus("5d67bc5c22bd1")
Return


::b8t:: ;;BETASERC TABLET 8 mg 30 tablet
Send,8699820010058
myfunc(3 , 1, 1)
return

::b8tp:: ;;BETASERC TABLET 8 mg 30 tablet
prospektus("5cb1d2ee7c0f3")
return



::lmk:: ;; LANSOR MIKROPELLET KAPSUL 30 mg 14 kapsül
Send,8699536160016
myfunc(1,1,3)
return

::lmkP:: ;; LANSOR MIKROPELLET KAPSUL 30 mg 14 kapsül
prospektus("454dd8ca-7ada-46f0-ba78-792d7570dd59")
return



::ift: ;;IBURAMIN ZERO FILM TABLET 200 mg/2 mg 24 tablet
Send,8699591090129
myfunc(4,1,1)
return

::izt: ;;IBURAMIN ZERO FILM TABLET 200 mg/2 mg 24 tablet
Send,8699591090129
myfunc(4,1,1)
return



::ızt: ;;IBURAMIN ZERO FILM TABLET 200 mg/2 mg 24 tablet
Send,8699591090129
myfunc(4,1,1)
return

::FFT:: ;FLESSI FILM KAPLI TABLET 5 mg 30 tablet
Send,8699832090772
myfunc( 3, 1, 1)
return

::FFTP:: ;FLESSI FILM KAPLI TABLET 5 mg 30 tablet
prospektus("f4f37852-f9f8-491d-b55c-610005c9bdec")
return


::NFE:: ;;NOVORAPID FLEXPEN 100 IU/ml 5x3 ml kalem
Send, 8699676950676
myfunc( 1, 1, 1)
return

::NFEP:: ;;NovoRapid ® FlexPen ®100 U/mL enjeksiyonluk çözelti içeren kullanıma hazır  kalem
prospektus("49094ca4-deca-4547-ae30-ce2c925d1dc1")
return

::LSE:: ;;LANTUS SOLOSTAR KARTUS ICEREN ENJ. KALEMI 100 IU/ml 5x3 ml kalem
Send, 8699809950634
myfunc(1 , 1, 1)
return


::FNJ:: ;; FENİSTİL %0.1 jel
Send, 8681291340178
myfunc(2, 1, 1)
return




::ANS:: ;; ANTEPSIN SUSPANSIYON 1000 mg/5 ml 250 ml şişe
Send, 8699569700081
myfunc(3, 2, 1)
return

::OPG:: ;; OROHEKS PLUS GARGARA 200 ml şişe
Send, 8699772646824
myfunc(3, 1, 1)
return

::ats1200:: ;; ASİST 1200 MG TOZ İÇEREN SAŞE (20 SAŞE)
Send, 08699570240101
myfunc(1, 1, 1)
return

::zft400:: ;; ZIMAKS FILM TABLET 400 mg 10 tablet
Send, 8699569090250
myfunc(1, 1, 1)
return


::IZS:: ;; IBURAMIN ZERO SUSPANSIYON 100 ml şişe
Send, 8699591700240
myfunc(3, 1, 1)
return

::İZS:: ;; IBURAMIN ZERO SUSPANSIYON 100 ml şişe
Send, 8699591700240
myfunc(3, 1, 1)
return

::SLJ:: ;; SOLERAT JEL 30g tüp
Send, 8699844340728
myfunc(2, 1, 1)
return

::KLF:: ;; KLACID FILM KAPLI TABLET 500 mg 14 tablet
Send, 8699548090479
myfunc(2, 1, 1)
return

::BR6:: ;; BRUFEN FILM TABLET 600 mg 20 tablet
Send, 8699548093159
myfunc(2, 1, 1)
return

::ET150:: ;; EUTHYROX TABLET 150 mcg 50 tablet
Send, 8699808010056
myfunc(1, 1, 2)
return



::flt:: ;; FOLBİOL 5 mg Tablet
Send, 8699508010509
myfunc(1, 1, 1)
return

::mks:: ;; MİKOSTATİN 100.000 I.U./ml oral süspansiyon
Send, 8699525706768
myfunc(1, 1, 1)
return

::BTF:: ;; BİTERAL 500 mg Film Kaplı Tablet
Send, 08699525094681
myfunc(2, 1, 1)
return


::RBE:: ;RABELİS 20 MG 28 ENTERİK KAPLI TABLET 3 KUTU
Send, 8697929040150
myfunc(1, 1, 3)
return



::clj:: ;; CALGEL JEL 20g tüp
Send, 8699522345311
myfunc(4, 1, 1)
return





::STJ:: ;; STILEX JEL 30g tüp
Send, 8699514345855
myfunc(2, 1, 1)
return



::mtd:: ;; METSİL ®66.6 mg/mL damla
Send, 8699570590039
myfunc(2, 1, 1)
return

::lbl:: ;; LİBALAKS %53,1 + %37 Rektal Jel
Send, 8699510920100
myfunc(2, 1, 1)
return


::hpk:: ;; HIPOKORT KREM %0.5 30g tüp
Send, 8699561350185
myfunc(2, 1, 1)
return


::CKTX:: ;; CONTRAMAL KAPSUL 50 mg 20 kapsül
Send, 8699514159162
myfunc(2, 1, 1)
return

::ZFTX:: ;; ZALDIAR FILM TABLET 20 tablet
Send, 8699514090021
myfunc(2, 1, 1)
return


::GKTX:: ;; GERALGINE-K TABLET 20 tablet
Send, 8699578011253
myfunc(2, 1, 1)
return


::DGK:: ;; DOLGIT KREM %5 50g tüp
Send, 8699587351661
myfunc(2, 1, 1)
return



::RHJ:: ;; RHEUMON JEL %5 40g tüp
Send, 8698856340146
myfunc(3, 1, 1)
return



::NCR:: ;;NAPROSYN CR TABLET 750 mg 10 tablet
Send, 8699514037491
myfunc(2, 1, 1)
return



::GPTX:: ;; GERALGINE PLUS TABLET 20 tablet
Send, 8699578011277
myfunc(3, 1, 1)
return


::br90:: ; BRILINTA 90 MG 56 FILM TABLET
Send,  8699786090286
myfunc(2, 1, 3)
return


::at20:: ; ATOR 20 MG.30 TB.
Send,  8699536090160
myfunc(1, 1, 3)
return


::cr100:: ; CORASPIN 100 MG.30 TB.
Send,  8699546130238
myfunc(1, 1, 3)
return


::MTY:: ;; METEOSPASMYL YUMUSAK KAPSUL 60/300 mg 40 kapsül
Send, 8699543190020
myfunc(3, 1, 1)
return


::MFT:: ;; MAGNEZİNC 30 mg/300 mg film kaplı tablet
Send, 8699591010363
myfunc(1, 1, 1)
return


::mnt:: ;; MINOSET TABLET
Send, 08699546015597
myfunc(4, 1, 1)
return

::cd3:: ;; CALCİMAX-D3 EFERVESAN TABLET (30 TABLET)
Send, 08697928020184
myfunc(1, 1, 1)
return

::grc:: ;; GRİBO COLD TABLET (30 TABLET)
Send, 08699819010076
myfunc(4, 1, 1)
return


::k14:: ;; KLAMOKS BID 1000 MG FİLM TABLET (14 TABLET)
Send, 8699569090694
myfunc(2, 1, 1)
return


::cls:: ;; CALPOL  SÜSPANSİYON
Send, 08699522705009
myfunc(4, 1, 1)
return

::hmp:: ;; HAMETAN POMAD (30 GR.)
Send, 08699514385721
myfunc(3, 1, 1)
return

::cps:: ;; CALPOL 6-PLUS SÜSPANSİYON
Send, 08699522705160
myfunc(4, 1, 1)
return

::klg:: ;; kloroBen gargara
Send, 8699580640069
myfunc(4, 1, 1)
return

::nct:: ;; nurofen cold
Send, 08690570010008
myfunc(4, 1, 1)
return



::OGK:: ;; ONADRON SIMPLE GOZ-KULAK DAMLASI
Send, 08699508610013
myfunc(4, 1, 1)
return



::prj:: ;; PROFENİD JEL 25 MG-60
Send, 08699809340015
myfunc(2, 1, 1)
return


::znş:: ;; ZINCO ŞURUP (100 ML ŞİŞE)
Send, 08699591570034
myfunc(1, 1, 1)
return

::tfg:: ;; TANFLEX GARGARA
Send, 08699514640523
myfunc(4, 1, 1)
return

::afs:: ;; A-FERİN SİNÜS FİLM TABLET (20 TABLET)
Send, 08699570090119
myfunc(3, 1, 1)
return

::bcd:: ;; BUSCOPAN 10 MG 20 DRAJE
Send, 08699693120014
myfunc(3, 1, 1)
return


::alş:: ;; ALLERSET ŞURUP 5MG/5ML 200
Send,  08699527573788
myfunc(2, 1, 1)
return

::att:: ;; ATARAX 25 mg film
Send,  08699624090058
myfunc(1, 1, 1)
return


::flf:: ;;FLAGYL 500 mg film
Send, 08699809098572
myfunc(2, 1, 1)
return

::plt:: ;;PLETAL 100 MG TABLET, 60 TABLE
Send, 08680683010118
myfunc(2, 1, 3)
return

::C1612:: ;;CANDEXİL PLUS 16 MG/12.5 MG TABLET
Send, 08699525014344
myfunc(1, 1, 1)
return

::TRF:: ;;TRIBEKSOL 30 FİLM TABLET
Send,TRIBEKSOL 30 FİLM TABLE
myfunc(1, 1, 1)
return

::RFT:: ;;ROMACTİL FORTE 60 MG KAPSÜL (20 KAPSÜL)
Send, ROMACTİL FORTE 60 MG KAPSÜL (20 KAP
myfunc(2, 1, 1)
return

::TMJ:: ;;TİYOKAS MONO 12,5 MG/1 G JEL
Send, 08699540025882
myfunc(2, 1, 1)
return

::D2F:: ;;DESİFEROL-2000-IU-FİLM-KAPLI-TABLET-(60 TABLET)
Send, 08699591090167
myfunc(1, 1, 1)
return

::vsi:: ;;VERRUTOL SİĞİL İLACI 15 G
Send, 08699561650032
myfunc(2, 1, 1)
return

::NXE:: ;;NEXIUM ENTERİK KAPLI PELLET TABLET 40 MG 28 TABLET
Send, 08699786040045
myfunc(1, 1, 3)
return


::mns:: ;;   monurol SaŞE
Send, 8699569240013
myfunc(1, 1, 1)
return



::duş:: ;;   DUPHALAC ŞURUP 670 MG/ML
Send, 08699820570217
myfunc(2, 2, 1)
return

::olg:: ;;   OLADİN % 0.1 GÖZ DAMLASI
Send, 08699569610229
myfunc(2, 1, 1)
return


::afj:: ;;  AFTOJEL JEL,5G
Send, 08699561340131
myfunc(2, 1, 1)
return


::mml:: ;;  MOMECON LOSYON {`%} 0.1 (30 ML)
Send,  08699569480037
myfunc(2, 1, 1)
return

::mmk:: ;;   MOMECON KREM % 0.1
Send,  08699569350095
myfunc(2, 1, 1)
return

::dl5:: ;;  DELODAY 5 MG FİLM TABLET (20 TABLET)
Send, 08697929090049
myfunc(2, 1, 1)
return


::m14:: ;; MACROL 500 MG 14 MR KONTROLLÜ SALIM TABLET
Send, 08699536030036
myfunc(2, 1, 1)
return


::RGD:: ;; REFRESH TEARS LUBRICANT GÖZ DAMLASI
Send,  08699490561218
myfunc(4, 1, 1)
return

::VNN:: ;; VENTOLİN NEBULES 2.5 MG/2.5 ML
Send,  08699522521494
myfunc(4, 1, 1)
return

::AZS:: ;; AZİTRO 200 MG/5 ML ORAL SÜSPANSİYON HAZIRLAMAK İÇİN KURU TOZ(15 ML,1 ŞİŞE)
Send,  08699525282132
Sleep 1000
Send,{down}
Send,{Enter 2}
Send,^l
Sleep 500
Send, +{Tab 4}
Sleep 500
Send, {Enter}
Sleep 1000
Send, {Tab 2}
Send,  3 GÜN
Sleep 500
Click, 1183 413
Sleep 500
Send,^L
Sleep 1000
Send,{Tab 30}
return


::APŞ:: ;; ASİST {`%} 4 PEDİATRİK ŞURUP HAZIRLAMAK İÇİN 40 G GRANÜL (100 ML)
Send,  08699570570079
myfunc(2, 1, 1)
return

::PLN:: ;; PULMICORT 0,5 MG/ML NEBULIZER SÜSPANSİYON TEK DOZ 2 ML 20 AMP
Send, 08699786520028
myfunc(2, 1, 1)
return

::DPŞ:: ;; DOLVEN 100 MG/5 ML PEDİATRİK ŞURUP (100 ML)
Send,  08699809575158
myfunc(4, 1, 1)
return

::HMK:: ;; HAMETAN KREM (30 GR.)
Send,  08699514355717
myfunc(2, 1, 1)
return

::sPş:: ;; SIPRAKTIN ŞURUP 2 MG/5ML 240 ML
Send,  08699508570027
myfunc(2, 1, 1)
return

::pto:: ;; PATANOL {`%}0.1 STERİL OFTALMİK ÇÖZELTİ
Send,  08699504612073
myfunc(2, 1, 1)
return


::tbo:: ;;  TOBRADEX {`%}0.3 / {`%}0.1 STERİL OFTALMİK SÜSPANSİYON
Send, 08699504710168
myfunc(4, 1, 1)
return

::ct2:: ;;  CİTOLES 20 MG FİLM TABLET,56 TABLET
Send,  08699514090939
myfunc(1, 1, 1)
return


::nppj:: ;;  NAPROSYN PLUS JEL(50G)
Send,  NAPROSYN PLUS JEL(50G
myfunc(3, 1, 1)
return


::rpj:: ;;  REPARİL-GEL N
Send, 08698856340528
myfunc(2, 1, 1)
return


::vlj:: ;;  VOLTAREN EMULGEL (50 G)
Send,  08681291340079
myfunc(3, 1, 1)
return


::gor:: ;;  GE-ORAL REHİDRATASYON TOZU
Send,  GE-ORAL REHİDRATASYON TOZ
myfunc(1, 1, 1)
return



::mdM:: ;;  MADECASSOL MERHEM
Send, 08699546385492
myfunc(2, 1, 1)
return

::TrT:: ;;  TERBİSİL 250 MG TABLET (28 TABLET)
Send,  08699566016017
myfunc(1, 1, 1)
return

::RÇT:: ;;  RENNIE ÇİĞNEME TABLETİ
Send,  08699546085767
myfunc(4, 1, 3)
return

::FsJ:: ;; FASTJEL %2,5 JEL
Send,  08699832340013
myfunc(3, 1, 1)
return

::BLT:: ;;  BILAXTEN 20 MG TABLET (20 TABLET)
Send,  08699832010046
myfunc(1, 1, 1)
return

::ASK:: ;; ASIVIRAL KREM %5 10 G
Send,  08699792351135
myfunc(4, 1, 1)
return

::DRM:: ;;  DERMOVATE MERHEM 50 G
Send,  08699522386307
myfunc(1, 1, 1)
return

::DFF:: ;;  DAFLON 500 MG FİLM TABLET
Send,  08699552090519
myfunc(2, 1, 1)
return

::PGK:: ;;  PROCTO-GLYVENOL 30 GR KREM
Send,  08699559330014
myfunc(2, 1, 1)
return

::PGS:: ;;  PROCTO-GLYVENOL SUPOZİTUVAR
Send,  08699559890037
myfunc(2, 1, 1)
return





::D8F:: ;; DİAFORMİN 850 MG 100 FİLM TABLET
Send, 08699543090122
myfunc(2, 1, 1)
return



::D1t:: ;; DİAFORMİN 1000 MG 100 FİLM TABLET
Send, 08699543090092
myfunc(2, 1, 1)
return

::e1s:: ;; EVOSTEN 175 MG/5 ML ORAL SÜSPANSİYON HAZIRLAMAK İÇİN TOZ (100 ML)
Send, 08699514280057
myfunc(3, 1, 1)
return

::e2s:: ;; EVOSTEN 175 MG/5 ML ORAL SÜSPANSİYON HAZIRLAMAK İÇİN TOZ (200 ML)
Send, 08699514280064
myfunc(3, 1, 1)
return

::kmş:: ;; KREVAL MAX 22.5 MG/5 ML ŞURUP (100 ML)
Send, 08699559570144
myfunc(4, 1, 1)
return


::kfş:: ;;  KREVAL FORTE SURUP 15 mg/5 ml 100 ml şişe
Send, 8699559570069
myfunc(3, 1, 1)
return





::icş:: ;;  İBURAMİN COLD ŞURUP
Send, 08699591570331
myfunc(4, 1, 1)
return





::e3t:: ;;ERDOSTİN 300 MG KAPSÜL
Send, 08699516151164
myfunc(2, 1, 1)
return



::rns:: ;RİNOCLENİL 100 MCG NASAL SPREY
Send, 08699822540096
myfunc(2, 4, 1)
return

::tdk:: ;TRAVAZOL DERİ KREMİ (15 G)
Send, 08699569350040
myfunc(2, 1, 1)
return

::bcp:: ;BACTROBAN %2 POMAD
Send, 08699522385522
myfunc(3, 1, 1)
return

::ürs2:: ;ÜROMİSİN SAŞE(1 SAŞE)
Send, 08699828240013
Sleep 1000
Send,{down}
Send,{Enter 2}
Sleep 500
Send,^l
Sleep 500
Send, +{Tab 4}
Sleep 500
Send, {Enter}
Sleep 1000
Send, {Tab 2}
Send,  3 GÜN ARA İLE 2 DEFA alt üriner sistem enf
Sleep 500
Click, 1183 413
Sleep 500
Send,+{Tab 4}
Send, 2
Send,+{Tab 4}
Send, 1
Sleep 500
Send,^L
Sleep 1000
Send,{Tab 37}
return

::ürs:: ;ÜROMİSİN SAŞE(1 SAŞE)
Send, 08699828240013
myfunc(1, 1, 1)
return


::pne:: ;PANTPAS 40 MG ENTERİK KAPLI TABLET
Send, 08682758040037
myfunc(1, 1, 3)
return



::a14:: ; Augmentin 14 tablet 1 kutu
Send, 8699522095650
myfunc(2, 1, 1)
return



::opb:: ;OTRIVINE PEDIYATRIK DOZ AYARLI BURUN SPREYİ
Send, 08681291540158
myfunc(3, 1, 1)
return

::dpe:: ; DEXPLUS 25/4 MG EFERVESAN TABLET ( 20 EFERVESAN TABLET)
Send, 08681094020437
myfunc(2, 1, 1)
return

::odd:: ;OROFERON DEPO DRAJE
Send, 08699828140030
myfunc(2, 1, 3)
return

::gda:: ;GAVİSCON DOUBLE ACTİON ORAL SÜSPANSİYON
Send, 08690570701067
myfunc(3, 2, 2)
return


::npj:: ; NAPROSYN JEL %10
Send, 08699514340089
myfunc(4, 1, 1)
return


::art:: ;ARVELES 25 MG FİLM TABLET
Send, 08699832090055
myfunc(2, 1, 1)
return

::icf:: ; iburamin cold tablet
Send, 08699591090099
myfunc(4, 1, 1)
return

::iccf:: ; ibucold c tablet
Send, 08680760092235
myfunc(4, 1, 1)
return



::mjg:: ;MAJEZİK %0.25 GARGARA
Send, 08699536640013
myfunc(4, 1, 1)
return

::ngd:: ;NETIRA %0,3 GÖZ DAMLASI 5 ML ŞİŞE
Send, 08696875610073
myfunc(3, 2, 1)
return


::mtt:: ; metpamid
Send, 08699506012055
myfunc(2, 1, 1)
return

::k2s:: ;KLAMOKS BİD 200/28 MG SÜSPANSİYON HAZIRLAMAK İÇİN KURU TOZ (100 ML)
Send, 08699569280385
myfunc(2, 1, 1)
return

::a4s:: ;AUGMENTİN BID 400/57 FORTE ORAL SÜSPANSİYON HAZIRLAMAK İÇİN KURU TOZ (100ML)
Send, 08699522285808
myfunc(2, 1, 1)
return

::a6s:: ;AUGMENTİN ES 600/42.9 MG ORAL SÜSPANSİYON HAZIRLAMAK İÇİN KURU TOZ
Send, 08699522288519
myfunc(2, 1, 1)
return

::a10:: ; Augmentin 10 tablet 2 kutu
Send, 08699522095711
myfunc(2, 1, 2)
return



::kçt:: ;KONTİL ÇİĞNEME TABLETİ (6 TABLET)
Send, 08699570080011
myfunc(1, 3, 1)
return

::prt:: ;PAROL 500 MG TABLET (30 TABLET)
Send, 08699717010093
myfunc(4, 1, 1)
return

::rfş:: ;REFLOR 250 MG LİYOFİLİZE TOZ İÇEREN SAŞE
Send, 08699265250026
myfunc(1, 1, 1)
return

::znt:: ;ZINCO-220 KAPSÜL 50 MG 40 CAP
Send, 08699591150267
myfunc(1, 1, 1)
return


::kll:: ;KALMOSAN LOSYON
Send, 08699512480015
myfunc(3, 1, 1)
return



::eff:: ;ETOL FORT 14 FİLM TABLET
Send, 08699540091115
myfunc(2, 1, 1)
return




::allt:: ;ALLERSET 10 MG FİLM TABLET (20 FİLM TABLET)
Send, 08699527093705
myfunc(1, 1, 1)
return



::exk:: ;EXODERİL {`%}1 KREM 30 G
Send, 8699516350680
myfunc(2, 1, 1)
return

::mc6:: ;MUCOVİT-C 600 MG EFERVESAN TABLET (30 TABLET)
Send, 08680881020735
myfunc(2, 1, 1)
return

::m1f:: ;MAJEZİK 100 MG 15 FİLM TABLET
Send, 08699536090115
myfunc(1, 1, 1)
return

::odb:: ;OTRIVINE DOZ AYARLI BURUN SPREYİ 1 MG/ML
Send, 08681291540134
myfunc(3, 1, 1)
return




::spk:: ;SİPROGUT PLUS KULAK DAMLASI (1 ŞİŞE)
Send, 08699569620020
myfunc(3, 2, 1)
return


::dcj:: ;DİCLOMEC JEL
Send, 08699514346302
myfunc(3, 1, 1)
return

::duş:: ;DUPHALAC ŞURUP 670 MG/ML (300 ML)
Send, 08699820570217
myfunc(2, 2, 1)
return

::kns:: ;KONTİL SÜSPANSİYON
Send, 08699570700018
myfunc(1, 1, 1)
return

::cf6:: ;;CEFTİNEX 600 MG FİLM
Send, 08699569091998
myfunc(1, 1, 1)
return

::hzk:: ;;HAMAZİNC KREM (30 G)
Send, 08699591350353
myfunc(2, 1, 1)
return

::affk:: ;;APRANAX FORT FİLM KAPLI TABLET, 20 TABLET
Send, 08699514091530
myfunc(2, 1, 1)
return

::afk:: ;;APRANAX FİLM KAPLI TABLET 275 MG, 20 TABLE
Send, 08699514091516
myfunc(2, 1, 1)
return

::bgp:: ; BEN-GAY B POMAD
Send, 08699593383021
myfunc(2, 1, 1)
return

::bnt:: ;BENEXOL B12 FİLM KAPLI TABLET
Send, 08699546095100
myfunc(1, 1, 1)
return

::br4:: ;BRUFEN 400 MG 20 FİLM TABLET
Send, 08699548094408
myfunc(1, 1, 1)
return

::dc20:: ;D-COLEFOR 20.000 I.U. YUMUŞAK KAPSÜL (14 KAPSÜL)
Send, 08680131752348
myfunchaftadakaç(h, 2)
return

::dxp:: ;DEXTROCİN-YUZDE-İKİ-POMAD(BİR-TUP-15-G)
Send, 08680760380011
myfunc(3, 1, 1)
return


::dld:: ;DOLOREX DRAJE , 20 DRAJE
Send, 08699514129110
myfunc(1, 1, 1)
return


::ppt:: ;PAROL PLUS
Send, 08699717010116
myfunc(1, 1, 1)
return


::izf::  ;İBURAMİN ZERO 200 MG / 2 MG FİLM KAPLI TABLET (24 TABLET)
Send, 08699591090129
myfunc(4, 1, 1)
return


::m2f:: ; MAJEZİK 200 MG SR
Send, 08699536170053
myfunc(1, 1, 1)
return


::mnk:: ; MANTAZOL KREM (15 G TÜP)
Send, 08680760350014
myfunc(2, 1, 1)
return


::drm:: ; DERMOVATE MERHEM 50 G
Send,08699522386307
myfunc(1, 1, 1)
return


::b12:: ; BEVİT-B12 FİLM TABLET(60 TABLET)
Send, 08699591090051
myfunc(1, 1, 1)
return

::t1610:: ;TANSİFA 16 MG/10 MG TABLET (28 TABLET)
Send, 08699262010234
myfunc(1, 1, 4)
return


::eco1:: ; ECOPİRİN 100 MG ENTERİK KAPLI TABLET, 30 TABLET
Send, 08699514040019
myfunc(1, 1, 3)
return


::kwl:: ;KWELLADA LOSYON 120 ML
Send, 08699543480039
myfunc(1, 1, 1)
return




::pzş:: ;;ZINCO ŞURUP (100 ML ŞİŞE)
Send, ZINCO ŞURUP (100
Sleep 1000
Send,{down}
Send,{Enter 2}
Sleep 500
Send, POLİVİT ŞURUP
Sleep 500
Send,{down}
Send,{Enter 2}
Sleep 500
return



;;A-FERİN SİNÜS FİLM TABLET (20 TABLET)
::AFSP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5d3842d7c612b.pdf
;AFTOJEL JEL,5G
::AFJP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/950d9841-9a30-4971-bd9a-8a05208623a6.pdf
;ALLERSET 10 MG FİLM TABLET (20 FİLM TABLET
::ALLTP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5e81e698cb2e1.pdf
;ALLERSET ŞURUP 5MG/5ML 200
::ALŞP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5e81e698cb74d.pdf
;APRANAX FİLM KAPLI TABLET 275 MG, 20 TABLE
::AFKP::https://web.kamihq.com/web/viewer.html?document_identifier=f14fd421-3bd2-4898-8719-5f15b9e64057
;APRANAX FORT FİLM KAPLI TABLET, 20
::AFFKP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/ae61cd3a-7ca2-4110-9154-d95f1b1d3af4.pdf
;;ARVELES 25 MG FİLM TABLE
::ARTP::https://web.kamihq.com/web/viewer.html?document_identifier=ead66e7a-895d-402c-be75-2a052c90e8ba
;;ASIVIRAL KREM %5 10 G
::ASKP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/zmuuSLNLYkhCDI.pdf
;;ASİST {`%} 4 PEDİATRİK ŞURUP HAZIRLAMAK İÇİN 40 G GRANÜL (100 ML)
::APŞP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/149828bd-f028-4893-b575-a114b1241adf.pdf
;;ATARAX 25 mg film
::ATTP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/92023bc3-7bed-4be8-a828-e6cb369d5d22.pdf
;;ATOR 20 MG.30 TB.
::at20P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/2782191b41837.pdf
;;AUGMENTİN BID 1000 MG FİLM TABLET
::A14P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/cf99ad72-ceff-403e-86b5-cf89f0e9bfb7.pdf
;;AUGMENTİN BID 1000 MG FİLM TABLET, 10
::A10P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/cf99ad72-ceff-403e-86b5-cf89f0e9bfb7.pdf
;;AUGMENTİN BID 400/57 FORTE ORAL SÜSPANSİYON HAZIRLAMAK İÇİN KURU TOZ (100ML)
::A4SP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/1faa4d98-8821-4903-8d76-c3b98b2e67a4.pdf
;;AUGMENTİN ES 600/42.9 MG ORAL SÜSPANSİYON HAZIRLAMAK İÇİN KURU TOZ
::A6SP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/3b920c5b-6039-4c0f-bf0c-1fcca80973fe.pdf
;;AZİTRO 200 MG/5 ML ORAL SÜSPANSİYON
::AZSP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/d843c2c7-e0cd-42b1-929f-a3c7bbbf9249.pdf
;;BACTROBAN {`%}2 POMAD
::BCPP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/vu8989hPWSr4H2.pdf
;;BEN-GAY B POMAD
::BGPP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5cdac32748e6d.pdf
;;BENEXOL B12 FİLM KAPLI T
::BNTP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/2798201886313.pdf
;;BEVİT-B12 FİLM TABLET(60 T
::B12P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/d535589d53496.pdf
;;BILAXTEN 20 MG TABLET (20 TABLET)
::BLTP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5d5a2eb08dbc0.pdf
;;BRILINTA 90 MG 56 FILM TABLET
::br90P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/56837a33-03bb-4671-b445-1a007922fc6a.pdf
;;BRUFEN 400 MG 20 FİLM T
::BR4P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/560cb42922346.pdf
;;BUSCOPAN 10 MG 20 DRAJE
::BCDP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/2ee6cf1c-34eb-4615-a7a5-a4fd5d87d1c2.pdf
;;CALCİMAX-D3 EFERVESAN TABLET (30 TABLET)
::CD3P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/tebrp_kubkt/neutec_732fc0a2-eef7-4e0c-89ba-0576e1ca9a48.pdf
;;CALPOL 6-PLUS SÜSPANSİYON
::CPSP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/7f998539-7a8e-45bb-a4c1-b0199b44a004.pdf
;;CALPOL SÜSPANSİYON
::CLSP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/8bb13ad8-bb60-4d7c-834c-ebabf186d663.pdf
;;CANDEXİL PLUS 16 MG/12.5 MG TABLET
::C1612P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/4160e9d9-afcf-40b1-9521-3e60d923a50c.pdf
;;CEFTİNEX 600 MG FİL
::CF6P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/1d055bba-6499-42db-8161-5afa74f2dfea.pdf
;;CİTOLES 20 MG FİLM TABLET,56 TABLET
::CT2P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/d4526549-eee3-491e-92f7-a7c83b4fe264.pdf
;;CORASPIN 100 MG.30 TB.
::CR100P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/7a57864b43028.pdf
;;D-COLEFOR 20.000 I.U. YUMUŞAK KAPSÜL (14
::DC20P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/a7fe4f29-c0ea-4962-a59c-f17e1e7857f7.pdf
;;DAFLON 500 MG FİLM TABLET
::DFFP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5d5a2eb078da4.pdf
;;DELODAY 5 MG FİLM TABLET
::DL5P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/56zDGEThl8Qb2X.pdf
;;DERMOVATE MERHEM 50
::DRMP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/1cf7e5f8-7249-4801-9df7-df3384c3a5e5.pdf
;;DESİFEROL-2000-IU-FİLM-KAPLI-TABLET-(60 TABLET)
::D2FP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/db4c7b6b-9f3a-450b-9ecb-2d6218cef877.pdf
;;DEXPLUS 25/4 MG EFERVESAN TABLET ( 20 EFERVESAN TABLET
::DPEP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/9f2c5dc1-b70e-40c4-ac2e-25f094afc6fa.pdf
;;DEXTROCİN-YUZDE-İKİ-POMAD(BİR
::DXPP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/sE5lLpg79gDxyi.pdf
;;DİAFORMİN 1000 MG 100 FİLM TABLET
::D1TP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/eee12bff-8308-41ae-9ada-f5fe21d53d82.pdf
;;DİAFORMİN 850 MG 100 FİLM
::D8FP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/98c8879f-47eb-4ab8-abdb-1ed6d91dd6b4.pdf
;;DİCLOMEC JEL
::DCJP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/9f8e4cf5-e7d6-4a61-afb2-45ffa6af21d4.pdf
;;DOLOREX DRAJE , 20
::DLDP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/34854557-bb73-4d5a-a10f-8c360ff249ad.pdf
;;DOLVEN 100 MG/5 ML PEDİATRİK ŞURUP (100 ML)
::DPŞP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5539702b-c2a9-4f66-bd18-c8190f8dfdda.pdf
;;DUPHALAC ŞURUP 670 MG/ML
::DUŞP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/3a244106-53d0-4be9-a799-ab3e862b3686.pdf
;;ECOPİRİN 100 MG ENTERİK KAPLI TABLET, 30 T
::ECO1P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/f0498301-dd34-4fa4-afbe-6b022baea43e.pdf
;;ERDOSTİN 300 MG KAPSÜL
::E3TP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/b2ul1eZixM0wHM.pdf
;;ETOL FORT 14 FİLM TABLE
::EFFP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/HMvWU5wl46e8f5.pdf
;;EVOSTEN 175 MG/5 ML ORAL SÜSPANSİYON HAZIRLAMAK İÇİN TOZ (100 ML)
::E1SP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/LQyUOzgYvAhGzT.pdf
;;EVOSTEN 175 MG/5 ML ORAL SÜSPANSİYON HAZIRLAMAK İÇİN TOZ (200 ML)
::E2SP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/LQyUOzgYvAhGzT.pdf
;;EXODERİL {`%}1 KREM 30
::EXKP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/3cedf53f40221.pdf
;;FASTJEL {`%}2,5 JE
::FSJP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/7456311e-cfca-4411-b389-07d867a4a747.pdf
;;FLAGYL 500 mg film
::FLFP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/9a41e33b86998.pdf
;;GAVİSCON DOUBLE ACTİON ORAL SÜSPANSİYO
::GDAP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/1bee6379-1a85-4cd7-875e-d52cf783521e.pdf
;;GE-ORAL REHİDRATASYON TOZU
::GORP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/3d9d53c656184.pdf
;;GRİBO COLD TABLET (30 TABLET)
::GRCP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5c960c41ead68.pdf
;;HAMAZİNC KREM (30
::HZKP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/hJUNx4tnlwVtDJ.pdf
;;HAMETAN KREM (30 GR.)
::HMKP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5cb6db1f0ca4f.pdf
;;HAMETAN POMAD (30 GR.)
::HMPP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5cb6db1f0ced0.pdf
;;İBURAMİN COLD FİLM KAPLI
::İCFP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/1ckgWHfhSmTLkt.pdf
;;İBURAMİN COLD ŞURUP
::İCŞP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/SK8wr2BcdHYI0L.pdf
;;İBURAMİN ZERO 200 MG / 2 MG FİLM KAPLI TABLET (24 T
::İZFP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/8bff8b6b-83cd-4880-b159-78e30d61c9d1.pdf
;;KALMOSAN LOSYON
::KLLP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5d94871dad37f.pdf
;;KLAMOKS BID 1000 MG FİLM TABLET (14 TABLET)
::K14P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/t%20e%20b%20r%20p.html
;;KLAMOKS BİD 200/28 MG SÜSPANSİYON HAZIRLAMAK İÇİN KURU TOZ (100 ML)
::K2SP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/c028e2b5-5bff-47b3-af7d-9cad35d929af.pdf
;;KLOROBEN 200 ML GARGARA
::KLGP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/4a4b83e6-3b9c-4554-87f9-cf65dfb24db3.pdf
;;OROHEKS PLUS GARGARA 200 ml şişe
::OPGP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/39b4c5c2-984e-4f7f-bae4-ce4c33d66b4f.pdf
;;KONTİL SÜSPANSİYON
::KNSP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5e40df58d527a.pdf
;;KONTİL ÇİĞNEME TABLETİ (6 TAB
::KÇTP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/0adb1bd946397.pdf
;;KREVAL FORTE SURUP
::KFŞP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/0922afbe94832.pdf
;;KREVAL MAX 22.5 MG/5 ML
::KMŞP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/dec2b204-5abb-4ca0-ab17-a4f778d679f1.pdf
;;KWELLADA LOSYON 120
::KWLP::https://web.kamihq.com/web/viewer.html?document_identifier=afb71939-698e-4d11-b192-29d3a7487b58
;;MACROL 500 MG 14 MR KONTROLLÜ SALIM TABLET
::M14P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/GNO6HcAXVv2YVr.pdf
;;MADECASSOL MERHEM
::MDMP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/832f45c573646.pdf
;;MAGNEZİNC 30 mg/300 mg film kaplı tablet
::MFTP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/94f421a4-47bf-4d7c-877a-f75ea334e993.pdf
;;MAJEZİK 100 MG 15 FİLM TABLET
::M1FP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5004fb3d98238.pdf
;;MAJEZİK 200 MG S
::M2TP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/3iftBFgIOWkxLz.pdf
;;MAJEZİK {`%}0.25 GARGAR
::MJGP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/58aY96tI7YZ72u.pdf
;;MANTAZOL KREM (15
::MNKP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5e6a2f7b55293.pdf
;;METEOSPASMYL YUMUSAK KAPSUL 60/300 mg 40 kapsül
::MTYP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5c73e1bd3f392
;;METPAMID TABLET
::MTTP::https://web.kamihq.com/web/viewer.html?document_identifier=a1ba05bf-5f4b-4053-9993-c4a829c74ba3
;;MINOSET TABLET
::MNTP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5d280f535af09.pdf
;;MOMECON KREM % 0.1
::MMKP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/34697b33-8c18-46b8-a61e-e1e7ccbd26a1.pdf
;;MOMECON LOSYON
::MMLP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/1b561da9-b5f0-425e-8bc6-4b053f60387d.pdf
;;monurol SaŞE
::MNSP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/6933c249-4c66-48bb-8c91-b4ed9eef004d.pdf
;;MUCOVİT-C 600 MG EFERVESAN TABLET (30 TABLET)
::MC6P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/Cuefj9lFCdwA5i.pdf
;;NAPROSYN JEL {`%}1
::NPJP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/CushUYDpf4M5fG.pdf
;;NAPROSYN PLUS JEL(50G)
::NPPJP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5cbb1288c7fd7.pdf
;;NETIRA {`%}0,3 GÖZ DAMLASI 5 ML Ş
::NGDP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/26f3f9a4-8548-40d3-b980-670d1be6058e.pdf
;;NEXIUM ENTERİK KAPLI PELLET TABLET 40 MG 28 TABLET
::NXEP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/0027481c-0b03-4eeb-93ba-6029c0c309f1.pdf
;;NUROFEN COLD
::NCTP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/wgxx5cAUxYttUM.pdf
;;OLADİN % 0.1 GÖZ DAMLASI
::OLGP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/d3aa556a-259e-44bd-b19d-190375564a31.pdf
;;ONADRON SIMPLE GOZ-KULAK DAMLASI
::OGKP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/9cf7fb2b-f0dd-4df8-b4b6-35f058217eaa.pdf
;;OROFERON DEPO DRAJ
::ODDP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5e6f6fdc74fc7.pdf
;;OTRIVINE DOZ AYARLI BURUN SPREYİ 1 MG/
::ODBP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/bb3aed1b-7549-42bc-b4dc-715b9b788e4f.pdf
;;OTRIVINE PEDIYATRIK DOZ AYARLI BURUN SPREYİ
::OPBP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/FztumnPAs7aEiF.pdf
;;PANTPAS 40 MG ENTERİK KAPLI TABLET
::PNEP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/d3961b96-60fa-45ed-9690-79ae2b654a3b.pdf
;;PAROL 500 MG TABLET (30 TABLET)
::PRTP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5e49417e9e2eb.pdf
;;PAROL INFUZYON ICIN COZELTI ICEREN FLAKON 10 mg/ml 12x100 ml flako		https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5d280f536457a.pdf
;;PAROL PLUS
::PPTP::https://web.kamihq.com/web/viewer.html?document_identifier=2483c78d-267e-4767-8c23-e5ee86ed61a1
;;PATANOL {`%}0.1 STERİL OFTALMİK ÇÖZELTİ
::PTOP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5d94871daf182.pdf
;;PLETAL 100 MG TABLET, 60 TABLE
::PLTP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5d5bce5f5428e.pdf
;;PROCTO-GLYVENOL 30 GR KREM
::PGKP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/wPPZyPkH8fxOBj.pdf
;;PROCTO-GLYVENOL SUPOZİTUVA
::PGSP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/yoFygljwIsOzna.pdf
;;PROFENİD JEL 25 MG
::PRJP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/fe46a05e-6667-4604-9c1b-93a87d4363a1.pdf
;;PULMICORT 0,5 MG/ML NEBULIZER SÜSPANSİYON TEK DOZ 2 ML 20 AMP
::PLNP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/UezHEsUXt0ox01.pdf
;;REFLOR 250 MG LİYOFİLİZE TOZ İÇEREN SAŞ
::RFŞP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/56d1095e10416.pdf
;;REFRESH TEARS LUBRICANT GÖZ DAMLASI
::RGDP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/7c6a041a-3620-40a7-9029-d79a9a85c065.pdf
;;RENNIE ÇİĞNEME TABLET
::RÇTP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/2f333d3a61066.pdf
;;REPARİL-GEL
::RPJP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5c9f48be81f83.pdf
;;RİNOCLENİL 100 MCG NASAL S
::RNSP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/23b1bc29-f342-48c5-9cf0-5b34f6b2abea.pdf
;;ROMACTİL FORTE 60 MG KAPSÜL (20 KAPSÜL)
::RFTP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/zt4ipaKgvbEPbl.pdf
;;SIPRAKTIN ŞURUP 2 MG/5ML 240 ML
::SPŞP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5d9f248574284.pdf
;;SİPROGUT PLUS KULAK DAMLASI (1 Ş
::SPKP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/a0543a5d-a40b-4dcc-ac4e-2040a9aa27fa.pdf
;;TANFLEX GARGARA
::TFGP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5cbb1288bd09d.pdf
;;TANSİFA 16 MG/10 MG TABLET (28 T
::T1610P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5ce00ece9792b.pdf
;;TERBİSİL 250 MG TABLET (28 TABLET)
::TRTP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com//tebrp_kubkt/df8627f1-16ab-47db-a34a-eafab0533a16.pdf
;;TİYOKAS MONO 12,5 MG/1 G JEL
::TMJP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5e6a2f7b653f0.pdf
;;TOBRADEX {%}0.3 / {%}0.1 STERİL OFTALMİK SÜSPANSİYON
::TBOP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/Lg2uuvxSuh9aEN.pdf
;;TRAVAZOL DERİ KREMİ (15
::TDKP::https://web.kamihq.com/web/viewer.html?document_identifier=6c55b9a5-8e86-4191-8157-e465f144e07f
;;TRIBEKSOL 30 FİLM TABLET
::TRFP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/hIhpbhVGVSARkM.pdf
;;VENTOLİN NEBULES 2.5 MG/2.5 ML
::VNNP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/6d81fdd2-e323-4064-963e-8c24165c0f37.pdf
;;VERRUTOL SİĞİL İLACI 15 G
::VSİP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/cd083ca6-a02d-4fda-a094-cb24d4c3ef3c.pdf
;;VOLTAREN EMULGEL (50 G)
::VLJP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/1a15cb52-7f52-482f-be20-689abee79b09.pdf
;;ZINCO ŞURUP (100 ML ŞİŞE)
::ZNŞP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/8699591570034
;;ZINCO-220 KAPSÜL 50 MG 40 CA
::ZNTP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/t%20e%20b%20r%20p.html
;;ÜROMİSİN SAŞE(1
::ÜRSP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/ed7691d8-131f-44bc-b9ec-e892a45ff3de.pdf

;;GERALGINE PLUS TABLET 20 tablet
;;
::GPTXP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5d25c12bdca9a.pdf
;;RHEUMON JEL %5 40g tüp
::RHJP::https://www.tebrp.com/tebrp_plus/uygulama?operation=urun_detay&u=MTgxODM=
;;NAPROSYN CR TABLET 750 mg 10 tablet
;;
::NCRP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/tebrp_kubkt/ai_fca975e9-ba59-457f-8b67-6bd8ed62eecb.pdf
;;DOLGIT KREM %5 50g tüp
;;
::DGKP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/72412dbd23092.pdf
;;GERALGINE-K TABLET 20 tablet
;;•
::GKTXP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5d25c12bdcdcc.pdf
;;CONTRAMAL KAPSUL 50 mg 20 kapsül
::CKTXP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/10fb1b73-97b7-400c-bb99-8b77422342e7.pdf
;;ZALDIAR FILM TABLET 20 tablet
;;•
::ZFTXP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/tebrp_kubkt/ai_498cfc95-0497-40e9-a949-c01674395c2e.pdf
;;LOCODERM KREM %0.1 30g tüp
::LCKP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5e81e698932e1.pdf
;;HIPOKORT KREM %0.5 30g tüp
;;•
::HPKP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/4bAdZiFQovhtFX.pdf



;;LİBALAKS %53,1 + %37 Rektal Jel
::LBLP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/7289fa91-49aa-4276-ab40-9615801437f1.pdf
;;METSİL ®66.6 mg/mL damla
::MTDP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/hVEg539pyoEORS.pdf
;;STILEX JEL 30g tüp
::STJP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5c9f48be72b9e.pdf
;;CALGEL JEL 20g tüp
::CLJP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/631ec8ab-5ae8-4fec-b843-94bdbb68b09b.pdf
;;RABELİS 20 MG 28 ENTERİK KAPLI TABLET
::RBLP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/aeGZGTB3kWn3bT.pdf
;;BİTERAL 500 mg Film Kaplı Tablet
::BTFP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/tebrp_kubkt/859996b5-c2f4-46d7-90a4-b9d53bef01fe.pdf
;;MİKOSTATİN 100.000 I.U./ml oral süspansiyon
::MKSP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/2f5a257e-62d2-4510-b591-f80734db711e.pdf
;;FOLBİOL ®5 mg Tablet
::FLTP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5d88666b53f53.pdf
;;EUTHYROX TABLET 150 mcg 50 tablet
::ET150P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/af20e9ba-1b21-402c-b94b-159741e1ab0a.pdf
;;BRUFEN FILM TABLET 600 mg 20 tablet
;;•
::BR6P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5d8f8027-5a25-45d5-b0e6-9fb4f236d498.pdf
;;KLACID FILM KAPLI TABLET 500 mg 14 tablet
;;•
::KLFP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/nJZmdpGXBeurfn.pdf
;;SOLERAT JEL 30g tüp
;;•
::SLJP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/b8bb2b2b-8e78-4d68-90eb-4a9301232b80.pdf
;;IBURAMIN ZERO SUSPANSIYON 100 ml şişe
;;•
::izsP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5ccfc65a84746.pdf
;;ZIMAKS FILM TABLET 400 mg 10 tablet
;;•
::ZFT400P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/11220fbf-6b5b-4d85-a6c6-ba85f6264a57.pdf
;;ASİST 1200 MG TOZ İÇEREN SAŞE (20 SAŞE)
::ATS1200P::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/eaDAi4wJWVUKae.pdf
;;ANTEPSIN SUSPANSIYON 1000 mg/5 ml 250 ml şişe
;;•
::ANSP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/2x1k46Rgh84WBF.pdf
;;FENİSTİL %0.1 jel
::FNJP::https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/5ceb7a724696f.pdf
;;		https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/de1cec31-8310-43a2-94c1-bfc2d1abd3cf.pdf