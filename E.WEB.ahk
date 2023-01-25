#SingleInstance, Force
/*
acc(x,y:="https://www.youtube.com/feed/subscriptions")
{
    Run,  "C:\Program Files\Google\Chrome\Application\chrome.exe"  --profile-directory="Profile %x%" %y%
}
*/
acc(x,y:="https://www.youtube.com/feed/subscriptions")
{
    Run,  "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile %x%" %y%
}
        ;  "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 17" 
langtro(x)
{
    Send ^t
    Sleep, 999
    Send, chrome://extensions/?options=aggiiclaiamajehmlfpkjmlbadmkledi
    Sleep 999
    Send, {Enter}
    Sleep 999
    Send, {Tab 4}
    Sleep 999
    Send, {Enter}
    Sleep 999
    Send, {Tab}
    Sleep 999
    Send, {Enter}
    Sleep 999
    Send, %x% 
    Send, {Enter}
    Sleep 999
    Send, {Tab 17}
    Sleep 999
    Send, {Enter}
}

::*me::
;Run,"https://medeczane.sgk.gov.tr/hekim/login.faces"
;acc(10, "https://medeczane.sgk.gov.tr/hekim/login.faces")
;acc(10);
Run, "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 10" "https://medeczane.sgk.gov.tr/hekim/login.faces"
Sleep, 2999
Send, #{Up}
Sleep, 1999
Click 597, 565
Return

::*dc::
Run "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 15" "https://www.arte.tv/fr/videos/derniere-chance/"
Sleep, 999
return

::*ger::
langtro("german")
Return

::*fre::
langtro("french")
Return

::*spa::
langtro("spanish")
Return

::*ita::
langtro("italian")
Return




/* tunall 
hel 
*/

::*gp::





::*1::
acc(1)
Return

::*2:: 
acc(2)
Return

::*3:: 
acc(3)
Return

::*code:: 
acc(3)  
Return

::*ai:: 
acc(3, "https://chat.openai.com/chat")  
Return

::*film::
acc(4) 
Return


::*4:: 
acc(4)
Return


::*drc::
acc(4,"https://www1.dramacool.cr/") 
Return


::*5:: 
acc(5)
Return


::*music::
acc(5) 
Return


::*6:: 
acc(6)
Return


::*travel::
acc(6)
Return


::*7:: 
acc(7)
Return


::*soleil:: 
acc(7)
Return 
::*artef:: 
acc(7, "https://www.arte.tv/fr/")
Return 

::*frtv:: 
acc(7, "https://www.france.tv/documentaires/")
Return 



::*8::
acc(8)
Return


::*9:: 
acc(9)
Return


::*books::
acc(17)
Return


::*10:: 
acc(10)
Return



::*11:: 
acc(11)
Return


::*history::
acc(11)
Return


::*12:: 
acc(12)
Return


::*anime::
acc(12) 
Return

::*one::
acc(12,"https://ww1.kiss-anime.ws/Anime/one-piece")
Return


::*13:: 
acc(13)
Return


::*arts::
acc(13)
Return

::*14::
acc(14)
Return


::*15:: 
acc(15)
Return


::*shopping::
acc(15)
Return


::*16:: 
acc(16)
Return


::*invest:: 
acc(16)
Return


::*zwt::
acc(16,"https://ziraatyatirim.matrikswebtrader.com/tr/login")
Return

::*typ::
acc(16, "https://prime.tebyatirim.com.tr/#!/login")
Return

::*ibk::
acc(16,"https://www.interactivebrokers.co.uk/sso/Login?RL=1&locale=en_US")
Return

::*gof::
acc(16, "https://www.google.com/finance/")
Return

::*dht::
acc(16,"https://www.bloomberght.com/")
acc(16,"https://www.doviz.com/")
Return


::*17:: 
acc(17)
Return


::*android::
acc(17)
Return


::*18:: 
acc(18)
Return


::*sunsonne::
acc(18)
Return 


::*19:: 
acc(19)
Return


::*voyager::
acc(19)
Return


::*20:: 
acc(20)
Return


::*documantary::
acc(20)
Return


::*21:: 
acc(21)
Return


::*writer:: 
acc(21)
Return


::*22:: 
acc(22)
Return


::*sun::
acc(22)
Return


::*23:: 
acc(23)
Return


::*soltnse::
::*ukr::
acc(23)
Return

::*24::
acc(24)
Return

::*25::
acc(25)
Return

::*26::
acc(26)
Return


::*27:: 
acc(27)
Return


::*ilios::
acc(27)
Return

::*28::
acc(28)
Return

::*29::
acc(29)
Return


::*30:: 
acc(30)
Return


::*surya::
acc(30)
Return

::*31::
acc(31)
Return

::*32::
acc(32)
Return


::*33:: 
acc(33)
Return


::*osol::
acc(33)
Return


::*34:: 
acc(34)
Return


::*slonce::
acc(34)
Return



::*35:: 
acc(35)
Return


::*sol::
acc(35)
Return


::*36:: 
acc(36)
Return


::*zon::
acc(36)
Return

::*37::
acc(37)
Return


::*38:: 
acc(38)
Return


::*sonne::
acc(38)
Return


::*39:: 
acc(39)
Return



::*hus::
acc(39) 
Return 


::*40:: 
acc(40)
Return

::*taiyo::
acc(40)
Return


::*41:: 
acc(41)
Return


::*taeyang::
acc(41)
Return


::*42:: 
acc(42)
Return


::*sole::
acc(42)
Return

::*raip::
acc(42, "https://www.raiplay.it/")
Return
::*rai::
acc(42,"https://www.raiplay.it/documentari")
Return


::*43:: 
acc(43)
Return


::*shams::
acc(43)
Return



::*44:: 
acc(44)
Return


::*sunce::
acc(44)
Return


::*45:: 
acc(45)
Return


::*taiyang::
acc(45)
Return

::*46::
acc(46)
Return

::*47::
acc(47)
Return


::*48:: 
acc(48)
Return


::*soln::
acc(48)
Return


::*49:: 
acc(49)
Return


::*philosopher::
::*phi::
acc(49)
Return


::*50:: 
acc(50)
Return


::*technology::
::*tech::
acc(50)
Return

::*51::
acc(51)
Return


::*52:: 
acc(52)
Return


::*space::
acc(52)
Return


::*53:: 
acc(53)
Return


::*soare::
acc(53)
Return


::*54:: 
acc(54)
Return


::*architect::
acc(54)
Return



::*55:: 
acc(55)
Return


::*earth::
acc(55)
Return


::*56:: 
acc(56)
Return


::*magazine::
acc(56)
Return

::*57::
acc(57)
Return


::*58:: 
acc(58)
Return


::*math::
acc(58)
Return


::*59:: 
acc(59)
Return


::*lifestyle::
::*life::
acc(59)
Return
::*cal::
acc(59,"https://calendar.google.com/calendar/u/0/r/week")
Return
::*dia::
acc(59,"https://www.notion.so/Diary-82aa7119aa124245ac378304aad8306a")
Return

::*60::
acc(60)
Return


::*61:: 
acc(61)
Return


::*plants::
acc(61)
Return


::*62:: 
acc(62)
Return


::*kunes::
acc(62)
Return


::*63:: 
acc(63)
Return


::*graphicdesigner:: 
::*grde:: 
acc(63)
Return

::*64::
acc(64)
Return


::*65:: 
acc(65)
Return


::*aurinko::
acc(65)
Return


::*66:: 
acc(66)
Return


::*knowledge::
acc(66)
Return


::*67:: 
acc(67)
Return


::*science::
acc(67)
Return


::*68:: 
acc(68)
Return


::*dr::
acc(68)
Return

::*tip::
acc(68,"https://www.notion.so/TIP-5757f7594d0b48248d1723d7b77c5e81")
Return

::*rpt::
acc(68,"https://www.notion.so/cb7c266d5cea4ddbb7a361a125e9cc35?v=12efbb52b03e449db4520f1d58afe043")
Return

::*trp::
acc(68,"https://www.tebrp.com/tebrp_plus/uygulama?operation=alt_giris")
Return


::*69::
acc(69)
Return


::*70:: 
acc(70)
Return


::*animals::
acc(70)
Return



::*71:: 
acc(71)
Return


::*araw:: 
acc(71)
Return

::*72::
acc(72)
Return


::*73:: 
acc(73)
Return


::*cooking::
acc(73)
Return

::*74::
acc(74)
Return

::*75::
acc(75)
Return


::*76:: 
acc(76)
Return


::*solntse::
::*russ::
acc(76)
Return


::*77:: 
acc(77)
Return


::*encyclopedia::
::*ency::
acc(77)
Return

::*78::
acc(78)
Return

::*79::
acc(79)
Return

::*80::
acc(80)
Return


::*81:: 
acc(81)
Return


::*forms::
acc(81)
Return



::*82:: 
acc(82)
Return


::*freelancer::
::*free::
acc(82)
Return

::*frl::
acc(82, "https://www.freelancer.com/dashboard")
Return

::*fvr::
acc(82, "https://www.fiverr.com/inbox")
Return

::*upw::
acc(82, "https://www.upwork.com/nx/find-work/best-matches")
Return

::*83::
acc(83)
Return 



::*84:: 
acc(84)
Return


::*logo::
acc(84) 
Return

::*85::
acc(85)
Return


::*86:: 
acc(86)
Return


::*martialarts::
::*mara::
acc(86)
Return


::*87:: 
acc(87)
Return


::*mattroi::
acc(87) 
Return


::*88:: 
acc(88)
Return


::*matahari::
acc(88)
Return

::*89::
acc(89)
Return


::*90:: 
acc(90)
Return


::*news::
acc(90)
Return


::*91:: 
acc(91)
Return


::*omer::
acc(91)
Return


::*92:: 
acc(92)
Return


::*googleplay::
::*gopl::
acc(92)
Return

::*gpc::
acc(92,"https://play.google.com/console/u/0/developers/4629818275751217761/app-list")
Return


::*93:: 
acc(93)
Return


::*photography::
::*phot::
acc(93)
Return

::*94::
acc(94)
Return



::*95:: 
acc(95)
Return


::*plab::
acc(95)
Return



::*96:: 
acc(96)
Return


::*podcast::
::*podc::
acc(96)
Return


::*97::
acc(97)
Return

::*98::
acc(98)
Return


::*99:: 
acc(99)
Return


::*politics::
::*poli::
acc(99)
Return


::*100:: 
acc(100)
Return


::*sold::
acc(100)
Return


::*101:: 
acc(101)
Return


::*solen::
acc(101)
Return



::*102:: 
acc(102)
Return


::*sport::
acc(102)
Return


::*103:: 
acc(103)
Return


::*survival::
acc(103)
Return


::*104:: 
acc(104)
Return


::*testesterone::
::*test::
acc(104)
Return

::*105::
acc(105)
Return

::*106::
acc(106)
Return

::*107::
acc(107)
Return


::*108:: 
acc(108)
Return


::*languages::
::*lang::
acc(108)
Return


::*109:: 
acc(109)
Return


::*evdesaglik::
::*evde::
acc(109)
Return

::*110::
acc(110)
Return






















/* adder */
*/

#IfWinActive, youtube

::ty*::
Send ^l
Sleep 99
Send {Right}
Sleep 99
Send +&sp=EgIIBQ%253D%253D
Sleep 199
Send {Enter}
return

::tm*::
Send ^l
Sleep 99
Send {Right}
Sleep 99
Send &sp=EgQIBBAB
Sleep 199
Send {Enter}
return










SetTitleMatchMode, 2 ; match anywhere within the title
#IfWinActive, ahk_exe chrome.exe

::pw.::chrome://settings/passwords

::noext.::
Run,C:\DontChangeLocationName\Chr\Code - Chrome.lnk
Run,https://www.notion.so/cf8c9af3566749baab30049fb82dd93f?v=eab266e3933e4636bf24addc368b1aa5
Return

::e.ex::
ExitApp
Return


;;;language
::lnr.::https://chrome.google.com/webstore/detail/language-reactor/hoombieeljmmljlkjmnheibnpciblicm
::rev.::https://chrome.google.com/webstore/detail/reverso-–-translation-dic/onhiacboedfinnofagfgoaanfedhmfab?hl=de
::revo.::chrome-extension://onhiacboedfinnofagfgoaanfedhmfab/dist/index.html?navigateTo=options
::tro.::https://chrome.google.com/webstore/detail/transover/aggiiclaiamajehmlfpkjmlbadmkledi
::troo.::chrome://extensions/?options=aggiiclaiamajehmlfpkjmlbadmkledi


;;;youtube
::yph.::https://chrome.google.com/webstore/detail/youtube-playlist-helper/ibdakohjhchaagmccfedeejmeillongg
::ypho.::chrome-extension://ibdakohjhchaagmccfedeejmeillongg/options/options.html
::aby.::https://chrome.google.com/webstore/detail/adblock-for-youtube/cmedhionkhpnakcndndgjdbohmhepckk
::wmy.::https://chrome.google.com/webstore/detail/watchmarker-for-youtube/pfkkfbfdhomeagojoahjmkojeeepcolc
::vrs.::https://chrome.google.com/webstore/detail/video-resumer/bongjkoajofkfpofginnhecihgaeldpe?hl=tr



;; wallpaper
::evg.::https://chrome.google.com/webstore/detail/earth-view-from-google-ea/bhloflhklmhfpedakmangadcdofhnnoh
::gac.::https://chrome.google.com/webstore/detail/google-arts-culture/akimgimeeoiognljlfchpbkpfbmeapkh?hl=de


;; order
::ext.::https://chrome.google.com/webstore/detail/extensity/jjmflmamggggndanpgfnpelongoepncg


;; keyboard
::git.::https://chrome.google.com/webstore/detail/google-input-tools/mclkkofklkfljcocdinagocijmpgbhab?hl=de


;; notes
::kam.::https://chrome.google.com/webstore/detail/kami-for-google-chrome/ecnphlgnajanjnkcmbpancdjoidceilk?hl=de
::whp.::https://chrome.google.com/webstore/detail/weava-highlighter-pdf-web/cbnaodkpfinfiipjblikofhlhlcickei




;; password
::lfp.::https://chrome.google.com/webstore/detail/lastpass-free-password-ma/hdokiejnpimakedhajhdlcegeplioahd


;;search
::sel.::https://chrome.google.com/webstore/detail/selection-search/gipnlpdeieaidmmeaichnddnmjmcakoe
::selo.::chrome-extension://gipnlpdeieaidmmeaichnddnmjmcakoe/options/options.html
::hov.::https://chrome.google.com/webstore/detail/hover/eiiibfemcfcehadokcldlcdljfdlmolj?hl=en


;;vpn
::tvp.::https://chrome.google.com/webstore/detail/touch-vpn-secure-and-unli/bihmplhobchoageeokmgbdihknkjbknd?hl=de


;;adblocker
::ubo.::https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm
::ubl.::https://chrome.google.com/webstore/detail/ublacklist/pncfbmialoiaghdehhbnbhkkgmjanfhe


;; video
::vir.::https://chrome.google.com/webstore/detail/video-resumer/bongjkoajofkfpofginnhecihgaeldpe
::vsc.::https://chrome.google.com/webstore/detail/video-speed-controller/nffaoalbilbmmfgbnbgppjihopabppdk?hl=de
::vsco.::chrome-extension://nffaoalbilbmmfgbnbgppjihopabppdk/options.html
::pip.::https://chrome.google.com/webstore/detail/pic-in-pic-for-chrome-bro/obfdmhekhgnjollgnhjhedapplpmbpka?hl=en



;; wikipedia
::wwm.::https://chrome.google.com/webstore/detail/wikiwand-wikipedia-modern/emffkefkbkpkgpdeeooapgaicgmcbolj


;;; shortcuts
::vim.::https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en
::vimo.::chrome-extension://dbepggeogbaibhgnhhndojpepiihcmeb/pages/options.html#
::lcl.::https://chrome.google.com/webstore/detail/linkclump/lfpjkncokllnfokkgpkobnkbkmelfefj
::lclo.::chrome-extension://lfpjkncokllnfokkgpkobnkbkmelfefj/pages/options.html

::vimo..::
Run chrome-extension://dbepggeogbaibhgnhhndojpepiihcmeb/pages/options.html#
Sleep 1000
;Send +{Tab 6}
;Sleep 1000
;Send {Enter}
Sleep 500
Send +{Tab 7}
Sleep 1000
Send {Enter}
Sleep 500
Send ^l
Sleep 1000
Send C:\DontChangeLocationName





/*
;; ::kc.::https://chrome.google.com/webstore/detail/keyboard-control-for-chro/mhofehfbkjmeldlgkbleegeffhaocceg
;; ::mh.::https://chrome.google.com/webstore/detail/moly-hah/pjoacnohgednppackhamgfalpkffeeek
;; ::mho.::chrome-extension://pjoacnohgednppackhamgfalpkffeeek/options.html
*/

::che.::chrome://extensions/
::shc.::chrome://extensions/shortcuts
::cws.::https://chrome.google.com/webstore/category/extensions?hl=tr


;;; download
::idm.::https://chrome.google.com/webstore/detail/idm-integration-module/ngpampappnmepgilojfohadhhmbhlaek

















