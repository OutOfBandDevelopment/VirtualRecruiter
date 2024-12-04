
SETLOCAL

SET PROJECT_EXTENSION=
IF NOT "%1"=="" SET PROJECT_EXTENSION=-%1

CALL docker compose ^
--project-name openwebui ^
--file docker-compose%PROJECT_EXTENSION%.yaml ^
up ^
--detach 

ENDLOCAL