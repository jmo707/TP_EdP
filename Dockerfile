FROM archlinux
MAINTAINER Juan Manuel Oppedisano - TUIA - Entorno de Programación

### Definimos el puerto expuesto del contenedor.
EXPOSE 80
### Partimos de la raíz para crear la estructura de directorio.
WORKDIR /
RUN mkdir -p /home/jmo/contenedor/
### Cambiamos al directorio creado para copiar el programa.
WORKDIR /home/jmo/contenedor
COPY . .
### Ejecutamos el programa.
ENTRYPOINT [ "bash", "-c", "bash /home/jmo/contenedor/Menú.sh", "FOREGROUND" ]
