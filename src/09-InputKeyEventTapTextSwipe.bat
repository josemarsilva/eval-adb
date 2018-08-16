ECHO.
ECHO a) Ligar para 130 para ouvir a hora
ECHO.
adb shell input keyevent "KEYCODE_HOME"
adb shell input keyevent "KEYCODE_CALL"
adb shell input keyevent "KEYCODE_1" "KEYCODE_3" "KEYCODE_0" 
adb shell input keyevent "KEYCODE_CALL"
CHOICE /T 10 /D N /N /M "waiting ..."
adb shell input keyevent "KEYCODE_ENDCALL"


ECHO.
ECHO b) Ligar para um Contato
ECHO.
adb shell input keyevent "KEYCODE_HOME"
adb shell am start -n com.android.contacts/com.android.contacts.activities.DialtactsActivity
adb shell input tap 230 140
adb shell input tap 120 200
adb shell input text 'Josemar%sSilva'
adb shell input keyevent "KEYCODE_BACK"
adb shell input swipe 240 750 240 250 100
adb shell input swipe 240 250 240 750 100


ECHO.
ECHO c) Enviar uma mensagem para um contato do Whatsapp
ECHO.
adb shell input keyevent "KEYCODE_HOME"
adb shell am start -n com.whatsapp/com.whatsapp.HomeActivity
adb shell input tap 12  50
adb shell input tap 375 50
adb shell input text 'Rodrigo%sGomes'
