#SingleInstance, Force

acc(x,y:="https://www.youtube.com/feed/subscriptions")
{
    Run,  "C:\Program Files\Google\Chrome\Application\chrome.exe"  --profile-directory="Profile %x%" %y%
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
