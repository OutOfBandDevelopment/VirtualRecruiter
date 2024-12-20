
SETLOCAL

SET PROJECT_EXTENSION=
IF NOT "%1"=="" SET PROJECT_EXTENSION=-%1

CALL container-config.bat

CALL docker compose ^
--project-name %CONTAINER_GROUP% ^
--file docker-compose%PROJECT_EXTENSION%.yaml ^
up ^
--detach 

ENDLOCAL