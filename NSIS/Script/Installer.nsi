; Constant defines.
!define APP_NAME "SponsoringSlideshow"

; Name of the installer.
Name ${APP_NAME}

; Installer destination.
OutFile "..\Installer\${APP_NAME}_setup.exe"

; Request application privileges for Windows Vista.
RequestExecutionLevel user

; Build Unicode installer.
Unicode True

; The default installation directory
InstallDir $DESKTOP\${APP_NAME}

;--------------------------------
; Pages
Page directory
Page instfiles

;--------------------------------

; The stuff to install.
Section "" ;No components page, name is not important.

  ; Set output path to the installation directory.
  SetOutPath $INSTDIR
  
  ; Put files there.
  File ..\..\SponsoringSlideshow\bin\Debug\*.exe
  File ..\..\SponsoringSlideshow\bin\Debug\*.config
  
SectionEnd
