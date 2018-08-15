# eval-adb
Evaluation Android Debug Bridge

# README #

## 1. Introdução ##

Este repositório projeto de avaliação da ferramenta **ADB - Android Debug Bridge**. 

### 2. Documentação ###

### 2.1. Diagrama de Caso de Uso (Use Case Diagram) ###

![UseCaseDiagram](https://github.com/josemarsilva/eval-adb/blob/master/doc/UseCaseDiagram-01.png) 


### 2.2. Diagrama de Implantação (Deploy Diagram) ###

```image-file
./doc/DeployDiagram*.jpg
```
![DeployDiagram](https://github.com/josemarsilva/eval-adb/blob/master/doc/images/DeployDiagram-01.png) 


### 2.3. Diagrama Modelo Banco de Dados (Database Data Model) ###

* não aplicável

## 3. Projeto ##

### 3.1. Pré-requisitos ###

* Windows 8 ou 10 (também é possível linux)


### 3.2. Guia para Desenvolvimento ###

* n/a


### 3.3. Guia para Configuração ###

* n/a


### 3.4. Guia para Teste ###

#### 3.4.1. Identificando o dispositivo conectado (pelo cabo USB)

* passo 1: Comando "adb devices" mostra os dispositivos conectados.
```adb
C:\My Git\workspace-github\eval-adb\src>adb devices
List of devices attached
* daemon not running; starting now at tcp:5037
* daemon started successfully
I7QGOZYH6D5LS8VO        device
```


#### 3.4.2. Executando comandos no dispositivo através do modo interativo

* passo 1: Entrar em modo interativo
```adb
C:\My Git\workspace-github\eval-adb\src>adb shell
shell@me1ds:/ $
```

* passo 2: Executar comandos no modo interativo como se fosse um Linux
```adb
1|shell@me1ds:/ $ df
Filesystem                 Size         Used         Free    Blksize
/dev                    465.88M      104.00K      465.78M       4096
/sys/fs/cgroup          465.88M       12.00K      465.87M       4096
/mnt/asec               465.88M        0.00K      465.88M       4096
/mnt/obb                465.88M        0.00K      465.88M       4096
/mnt/media_rw           465.88M        0.00K      465.88M       4096
/storage/usbotg         465.88M        0.00K      465.88M       4096
/storage/emulated       465.88M        0.00K      465.88M       4096
/system                   2.33G        2.30G       28.74M       4096
/data                     4.15G        3.39G      770.16M       4096
/cache                  192.84M       21.11M      171.73M       4096
/protect_f                5.83M       48.00K        5.78M       4096
/protect_s                5.83M       48.00K        5.78M       4096
/nvdata                  28.47M        2.39M       26.08M       4096
/persist                 43.23M       48.00K       43.19M       4096
/persist-lg               3.86M      292.00K        3.57M       4096
/cust                    94.42M       17.68M       76.74M       4096
/mpt                     17.64M       14.46M        3.18M       4096
/mnt/cd-rom               1.22M        1.22M        0.00K       2048
/mnt/shell/emulated       4.15G        3.39G      770.16M       4096
/mnt/media_rw/external_SD      7.40G       56.59M        7.34G      32768
/mnt/secure/asec: Permission denied
/storage/external_SD      7.40G       56.59M        7.34G      32768
/mnt/asec/com.netflix.mediaclient-1     42.98M       34.82M        8.15M       4096
```


#### 3.4.3. Escreva um texto qualquer um um textBox

* passo 1: Abra um aplicativo browser de navegação (Chrome) na página de pesquisa do Google. Em seguida posicione o cursor em um textBox para entrada

* passo 2: Digite o texto de busca para os comandos do adb. Lembre-se de substituir o espaço por "%s"
```adb
C:\My Git\workspace-github\eval-adb\src>adb shell input text adb%stutorial%scomandos
```


#### 3.4.4. Obtenha os detalhes de versões do hardware do dispositivo

* passo 1: Execute comando que mostra detalhes do dispositivo
```adb
C:\My Git\workspace-github\eval-adb\src>adb devices -l
List of devices attached
I7QGOZYH6D5LS8VO       device product:me1ds_global_com_nr model:LG_K130 device:me1ds transport_id:2
```

* passo 2: Execute comando que mostra todas algumas das propriedades mais importantes do dispositivo neste momento. Observamos detalhes do produto em "ro.product.name", "ro.product.model" e "ro.product.device":
```adb
C:\My Git\workspace-github\eval-adb\src>adb shell getprop | find "ro.product"
[ro.product.board]: []
[ro.product.brand]: [lge]
[ro.product.cpu.abi2]: [armeabi]
[ro.product.cpu.abi]: [armeabi-v7a]
[ro.product.cpu.abilist32]: [armeabi-v7a,armeabi]
[ro.product.cpu.abilist64]: []
[ro.product.cpu.abilist]: [armeabi-v7a,armeabi]
[ro.product.device]: [me1ds]
[ro.product.first_api_level]: [22]
[ro.product.locale.language]: [pt]
[ro.product.locale.region]: [BR]
[ro.product.manufacturer]: [LGE]
[ro.product.model]: [LG-K130]
[ro.product.name]: [me1ds_global_com_nr]
```


#### 3.4.5. Envie o clique no botão de home

* passo 1: Execute comando que clica na "Key" de home
```adb
C:\My Git\workspace-github\eval-adb\src>adb shell input keyevent "KEYCODE_HOME"
```


#### 3.4.6. Monitorar as atividades pelo application manager

* passo 1: Consulte o help do "am (Activity Manager)"
```adb
C:\My Git\workspace-github\eval-adb\src>adb shell am
usage: am [subcommand] [options]
usage: am start [-D] [-W] [-P <FILE>] [--start-profiler <FILE>]
               [--sampling INTERVAL] [-R COUNT] [-S] [--opengl-trace]
               [--user <USER_ID> | current] <INTENT>
       am startservice [--user <USER_ID> | current] <INTENT>
       am stopservice [--user <USER_ID> | current] <INTENT>
       am force-stop [--user <USER_ID> | all | current] <PACKAGE>
       am kill [--user <USER_ID> | all | current] <PACKAGE>
       am kill-all
       am broadcast [--user <USER_ID> | all | current] <INTENT>
       am instrument [-r] [-e <NAME> <VALUE>] [-p <FILE>] [-w]
               [--user <USER_ID> | current]
               [--no-window-animation] [--abi <ABI>] <COMPONENT>
       am profile start [--user <USER_ID> current] <PROCESS> <FILE>
       am profile stop [--user <USER_ID> current] [<PROCESS>]
       am dumpheap [--user <USER_ID> current] [-n] <PROCESS> <FILE>
       am set-debug-app [-w] [--persistent] <PACKAGE>
       am clear-debug-app
       am monitor [--gdb <port>]
       am hang [--allow-restart]
       am restart
       am idle-maintenance
       am screen-compat [on|off] <PACKAGE>
       am to-uri [INTENT]
       am to-intent-uri [INTENT]
       am to-app-uri [INTENT]
       am switch-user <USER_ID>
       am start-user <USER_ID>
       am stop-user <USER_ID>
       am stack start <DISPLAY_ID> <INTENT>
       am stack movetask <TASK_ID> <STACK_ID> [true|false]
       am stack resize <STACK_ID> <LEFT,TOP,RIGHT,BOTTOM>
       am stack list
       am stack info <STACK_ID>
       am lock-task <TASK_ID>
       am lock-task stop
       am get-config
```

* passo 2: Monitorar as atividades das aplicações usando o "am (Activity Manager)". No dispositivo, inicie manualmente a aplicação da câmera ou outra aplicação qualquer e observe o monitoramento das atividades desta aplicação. Em seguida feche todas as aplicações para o próximo passo.
```adb
C:\My Git\workspace-github\eval-adb\src>adb shell am start com.lge.camera
Starting: Intent { act=android.intent.action.MAIN cat=[android.intent.category.LAUNCHER] pkg=com.lge.camera }
C:\My Git\workspace-github\eval-adb\src>adb shell am monitor
Monitoring activity manager...  available commands:
(q)uit: finish monitoring
** Activity starting: com.lge.camera
q
```

* passo 3: Iniciar pelo adb a aplicação de câmera usando o "am (Activity Manager)".
```adb
C:\My Git\workspace-github\eval-adb\src>adb shell am start com.lge.camera
Starting: Intent { act=android.intent.action.MAIN cat=[android.intent.category.LAUNCHER] pkg=com.lge.camera }
```

* passo 4: Iniciar pelo adb a aplicação Chrome Browser usando o "am (Activity Manager)".
```adb
C:\My Git\workspace-github\eval-adb\src>adb shell am start com.android.chrome
Starting: Intent { act=android.intent.action.MAIN cat=[android.intent.category.LAUNCHER] pkg=com.android.chrome }
```

* passo 5: Iniciar pelo adb a aplicação Whatsapp usando o "am (Activity Manager)".
```adb
C:\My Git\workspace-github\eval-adb\src>adb shell am start com.whatsapp
Starting: Intent { act=android.intent.action.MAIN cat=[android.intent.category.LAUNCHER] pkg=com.whatsapp }
Error: Activity not started, unable to resolve Intent { act=android.intent.action.MAIN cat=[android.intent.category.LAUNCHER] flg=0x10000000 pkg=com.whatsapp }
```

* passo 6: Clique em uma conversa no meio da tela, em seguida na parte infeiror para escrever algo no textBox
```adb
C:\My Git\workspace-github\eval-adb\src>adb shell input tap 240 425
C:\My Git\workspace-github\eval-adb\src>adb shell input tap 240 750
C:\My Git\workspace-github\eval-adb\src>adb shell input text kkk
C:\My Git\workspace-github\eval-adb\src>adb shell input tap 240 425
```


#### 3.4.5. Capturar o log do device 

* passo 1: Capturar log do device
```adb
C:\My Git\workspace-github\eval-adb\src>adb shell logcat
--------- beginning of system
V/NetworkPolicy(  869): [VT_INTENT_PROC] updateNotificationsLocked() : under warning
I/thermal_repeater(  311): oh, queryMdThermalInfo (0)Success
I/thermal_repeater(  311): [recvMdThermalInfo] ret=27, strLen=127,  3, 32, -127, -1, 32767, 18
E/NetlinkListener(  285): onDataAvailable socket:4,buffer'change@/devices/platform/battery/power_supply/battery' size:941,format:0
E/NetlinkEvent(  285): NetlinkEvent::decode(): buffer'change@/devices/platform/battery/power_supply/battery' size:941,format:0
```


#### 3.4.6. Extrair um Dump do sistema do device

* passo 1: Extrair um Dump do sistema do device
```adb
C:\My Git\workspace-github\eval-adb\src>adb shell dumpsys 
Currently running services:
  CCModeService
  DockObserver
  GuiExtService
  Jphone
  NvRAMAgent
  PPLAgent
  SurfaceFlinger
  UniversalMusicPlayer
  accessibility
  account
  activity
  alarm
  android.apps.ILGPService
  android.security.key
```

#### 3.4.7. Extrair 

* passo 1: Extrair 
```adb
C:\Users\Josemarsilva>adb shell dumpsys display
DISPLAY MANAGER (dumpsys display)
  mOnlyCode=false
  mSafeMode=false
  mPendingTraversal=false
  mGlobalDisplayState=ON
  mNextNonDefaultDisplayId=1
  mDefaultViewport=DisplayViewport{valid=true, displayId=0, orientation=0, logicalFrame=Rect(0, 0 - 480, 854), physicalFrame=Rect(0, 0 - 480, 854), deviceWidth=480, deviceHeight=854}
  mExternalTouchViewport=DisplayViewport{valid=false, displayId=0, orientation=0, logicalFrame=Rect(0, 0 - 0, 0), physicalFrame=Rect(0, 0 - 0, 0), deviceWidth=0, deviceHeight=0}
  mSingleDisplayDemoMode=false
  mWifiDisplayScanRequestCount=0

Display Adapters: size=3
  LocalDisplayAdapter
  OverlayDisplayAdapter
    mCurrentOverlaySetting=
    mOverlays: size=0
  VirtualDisplayAdapter
```


### 3.5. Guia para Demonstração ###

* n/a

## Referências ##

* Introdução
  * [Como funciona o ADB - Android Debug Bridge](https://developer.android.com/studio/command-line/)
* Instalação
  * https://www.tecmundo.com.br/android/92890-instalar-drivers-adb-dispositivos-android-windows.htm
  * http://adbdriver.com/
  * https://www.youtube.com/watch?v=vF6KWI29ONU
  * http://adbdriver.com/documentation/how-to-install-adb-driver-on-windows-8-10-x64.html
  * https://www.youtube.com/watch?v=GjRvJ7zxRWY
  * https://www.firmware-stockrom.com.br/p/lg-usb-universal-mobile-drivers.html
  * https://www.lg.com/br/suporte/suporte-celular/lg-K130F
  * https://support.microsoft.com/en-ca/help/4026206/windows-get-to-safe-mode-and-other-startup-settings-in-windows-10
  * http://apkinstaller.com/downloads/
* Comandos
  * https://developer.zebra.com/community/home/blog/2015/03/09/introduction-to-adb-shell-commands
  * [KeyCode list](https://stackoverflow.com/questions/7789826/adb-shell-input-events)
