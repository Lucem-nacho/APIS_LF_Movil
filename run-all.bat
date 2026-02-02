@echo off
REM run-all.bat - abre ventanas y arranca los 4 microservicios (Windows)
REM Úsalo desde la carpeta: legacyframeapp\backend\APIS_LF_Movil

echo Starting microservices...












echo All services started. Check the opened windows for logs.

:: Productos - puerto 8083
start "Productos" cmd /k "cd /d "%~dp0productos" && call mvnw.cmd spring-boot:run -Dserver.port=8083"

:: Pedidos - puerto 8084
start "Pedidos" cmd /k "cd /d "%~dp0pedidos" && call mvnw.cmd spring-boot:run -Dserver.port=8084"

:: Contacto - puerto 8081
start "Contacto" cmd /k "cd /d "%~dp0contacto" && call mvnw.cmd spring-boot:run -Dserver.port=8081"

:: Auth - puerto 8085
start "Auth" cmd /k "cd /d "%~dp0auth_movil" && call mvnw.cmd spring-boot:run -Dserver.port=8085"

