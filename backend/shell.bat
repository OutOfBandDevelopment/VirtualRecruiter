@ECHO OFF
SETLOCAL

SET TARGET_MACHINE=open-web-ui
IF NOT "%1"=="" SET TARGET_MACHINE=%1

CALL container-config

CALL docker exec -it --user root %TARGET_MACHINE% bash

ENDLOCAL