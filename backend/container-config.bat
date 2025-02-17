
IF EXIST "%CUDA_PATH%"=="" (
    SET APP_MODE=cuda
) ELSE (
    IF EXIST "%PROGRAMFILES%\NVIDIA Corporation" (
        SET APP_MODE=cuda
    )
)

SET CONTAINER_GROUP=openwebui
SET TARGET_MACHINE=open-webui

SET CONTAINER_DATABASE_NAME=test_database
SET CONTAINER_DATABASE_USER=sa
SET CONTAINER_DATABASE_PASSWORD=L0c@lD3v

SET SERVER_PORT_SQL_SERVER_2019=1433
SET SERVER_PORT_SQL_SERVER_2022=1434
SET SERVER_PORT_OPEN_WEBUI=3003
SET SERVER_PORT_SEARXNG=8080
SET SERVER_PORT_STIRLING_PDF=8081
SET SERVER_PORT_CVAT_UI=8082
SET SERVER_PORT_CVAT_SERVER=8083
SET SERVER_PORT_LABEL_STUDIO=8084
SET SERVER_PORT_JUYPTERLAB=8888
SET SERVER_PORT_GOTENBERG=9001
SET SERVER_PORT_APACHE_TIKA=9998
SET SERVER_PORT_OLLAMA=11434

SET CONTAINER_OLLAMA_NAME=ollama
SET CONTAINER_OLLAMA_MODELS=phi3 llama3.2 llava-phi3

SET OPENAI_API_BASE_URLS=https://api.groq.com/openai/v1
SET OPENAI_API_KEYS=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

SET OPEN_WEBUI_BASE_URL=http://192.168.0.69:%SERVER_PORT_OPEN_WEBUI%
SET OLLAMA_BASE_URL=http://%CONTAINER_GROUP%-ollama-1:11434
SET SEARXNG_QUERY_URL=http://%CONTAINER_GROUP%-searxng-1:8080/search?q=^<query^>
SET TIKA_SERVER_URL=http://%CONTAINER_GROUP%-apache-tika-1:9998

SET EXTRA_ARGS=

IF "%APP_PROJECT%"=="" SET APP_PROJECT=%CONTAINER_GROUP%
IF "%APP_MODE%"=="" SET APP_MODE=cpu
