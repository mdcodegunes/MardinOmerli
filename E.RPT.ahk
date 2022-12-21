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
	Send https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/%x%.pdf
	Send, {Enter}
}

prospektus2(x)
{
	Send https://web.kamihq.com/web/viewer.html?file=https://tebrp.mncdn.com/kk/%x%.pdf
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



