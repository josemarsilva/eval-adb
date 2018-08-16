ECHO OFF
ECHO ATENCAO:
ECHO   - Para testar o monitoramento do activity manager é preciso que você
ECHO     execute operações manualmente no dispositivo e observe o resultado
ECHO     do monitoramento. Sugestão: inicie o WhatsApp, depois feche-o e em
ECHO     seguida inicie qualquer outro aplicativo
ECHO   - Observe que todo activity de todas as aplicações iniciadas   serão
ECHO     mostradas pelo monitoramento
ECHO   - Para sair digite 'q'
adb shell am monitor
