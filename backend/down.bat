@ECHO OFF

SETLOCAL

CALL container-config %*

IF /I "%1" EQU "ALL" (
    SET EXTRA_ARGS=--volumes 
)

CALL docker compose ^
--project-name %APP_PROJECT% ^
--file docker-compose-%APP_MODE%.yaml ^
down %EXTRA_ARGS%

GOTO :EOF

:ERROR
ECHO Error Code: %LAST_ERROR%
EXIT /B %LAST_ERROR%

:EOF
ENDLOCAL