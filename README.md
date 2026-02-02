# APIS_LF_Movil — Instrucciones de desarrollo local

Este directorio contiene los 4 microservicios del proyecto: `auth_movil`, `contacto`, `pedidos` y `productos`.

## Requisitos
- Java 17 (JDK)
- Git
- Maven (o usa los wrappers `mvnw.cmd` incluidos)
- Windows (Laragon recomendado para terminales) o cualquier terminal con capacidad de abrir varias ventanas

## Inicializar submódulo (si clonaste el monorepo)
```bash
git submodule update --init --recursive
```

## Arrancar todos los servicios (Windows)
Se incluye `run-all.bat` para abrir 4 ventanas y ejecutar cada microservicio en puertos distintos:

- auth_movil -> 8081
- contacto -> 8082
- pedidos -> 8083
- productos -> 8084

Uso desde `legacyframeapp/backend/APIS_LF_Movil`:
```bat
run-all.bat
```

Cada ventana muestra los logs del servicio correspondiente.

## Arranque manual (opcional)
En cada carpeta de servicio puedes ejecutar:
```bat
mvnw.cmd spring-boot:run -Dserver.port=8081
```
(cambia el puerto según el servicio)

## Conectar la app Android
- Emulador Android: usa `http://10.0.2.2:<puerto>` para acceder a `localhost` de tu máquina.
- Dispositivo físico: usa `http://<IP_de_tu_PC>:<puerto>` y asegúrate de abrir el puerto en el firewall.

Ejemplo de endpoints:
- Auth: `http://10.0.2.2:8081`
- Productos: `http://10.0.2.2:8084`

## Tips y solución de problemas
- Si un puerto está ocupado, cambia `-Dserver.port=` en `run-all.bat` o arranca manualmente con otro puerto.
- Si la app móvil no conecta, revisa CORS, firewall y usa `curl` o el navegador para validar que los endpoints responden.

---
Made for local development with Laragon / Windows.
