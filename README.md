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

* [01-ListDevicesConnected.bat](./src/01-ListDevicesConnected.bat)
* [02-EnterDeviceShellCommandLine.bat](02-EnterDeviceShellCommandLine.bat)
* [03-GetDeviceProperties.bat](03-GetDeviceProperties.bat)
* [04-KeyEventsToDevice.bat](04-KeyEventsToDevice.bat)
* [05-AdbAmCommand.bat](05-AdbAmCommand.bat)
* [06-DumpsysPackage.bat](06-DumpsysPackage.bat)
* [07-ListPackagesInstalled.bat](07-ListPackagesInstalled.bat)
* [08-GetWindowCurrentFocus.bat](08-GetWindowCurrentFocus.bat)
* [09-InputKeyEventTapTextSwipe.bat](09-InputKeyEventTapTextSwipe.bat)
* [10-Reboot.bat](10-Reboot.bat)
* [11-ShellAmMonitor.bat](11-ShellAmMonitor.bat)
* [12-PrintLogEverythingDeviceCatLog.bat](12-PrintLogEverythingDeviceCatLog.bat)
* [13-ScreencapPull.bat](13-ScreencapPull.bat)


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
  * [LinuxTopia - Guide Android adb](https://www.linuxtopia.org/online_books/android/devguide/guide/developing/tools/android_adb_shellcommands.html)
  * [http://adbshell.com/commands](http://adbshell.com/commands)
* Opcionais
  * [Home Page Tesseract OCR para download binario](https://github.com/UB-Mannheim/tesseract/wiki)
