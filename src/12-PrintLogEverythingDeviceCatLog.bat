ECHO OFF
ECHO ATENCAO:
ECHO   - Para testar o monitoramento do catlog é preciso que você   execute
ECHO     operações manualmente no dispositivo e observe o resultado do log.
ECHO     Sugestão: inicie o WhatsApp, depois feche-o e em seguida    inicie
ECHO     qualquer outro aplicativo. Este log é verboso demais, então fica a
ECHO     dica de usar "| grep" no modo shell ou "| find" no modo linha   de
ECHO     comando. Exemplo: Suponha que você deseja monitorar a iniciação do
ECHO     aplicativo WhatsApp porque quer identificar qual a activity (intent)
ECHO     inicial de chamada do aplicativo.
ECHO     C:\> adb shell logcat | find "com.whatsapp"
ECHO   - Observe que tudo o que acontece com o device é mostrado na tela, a
ECHO     exemplo das conexões de rede, ActivityManager iniciando aplicações
ECHO     NotificationManager mostrando chegada de mensagens em background
ECHO     mostradas pelo monitoramento
ECHO   - Para sair digite ^C


adb shell logcat
