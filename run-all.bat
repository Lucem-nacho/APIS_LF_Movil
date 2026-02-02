@echo off
REM run-all.bat - abre ventanas y arranca los 4 microservicios (Windows)
REM Úsalo desde la carpeta: legacyframeapp\backend\APIS_LF_Movil

echo Starting microservices...












pauseecho All services started. Check the opened windows for logs.start "Productos" cmd /k "cd /d "%~dp0productos" && call mvnw.cmd spring-boot:run -Dserver.port=8084":: Productos - puerto 8084start "Pedidos" cmd /k "cd /d "%~dp0pedidos" && call mvnw.cmd spring-boot:run -Dserver.port=8083"
n:: Pedidos - puerto 8083start "Contacto" cmd /k "cd /d "%~dp0contacto" && call mvnw.cmd spring-boot:run -Dserver.port=8082"
n:: Contacto - puerto 8082start "Auth" cmd /k "cd /d "%~dp0auth_movil" && call mvnw.cmd spring-boot:run -Dserver.port=8081"n:: Auth - puerto 8081