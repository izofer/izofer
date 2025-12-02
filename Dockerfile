# 1. Usamos la base ligera de Nginx
FROM nginx:alpine

# 2. Copiamos el cerebro (HTML)
COPY index.html /usr/share/nginx/html/index.html

# 3. Copiamos el alma (La imagen)
# IMPORTANTE: El nombre del archivo aquí debe ser IDÉNTICO al real (mayúsculas/minúsculas importan en Linux)
COPY izofer.svg /usr/share/nginx/html/izofer.svg
COPY favicon.png /usr/share/nginx/html/favicon.png

# Si tuviera más imágenes, una carpeta entera es más eficiente:
# COPY assets/ /usr/share/nginx/html/assets/

# 4. Abrimos el puerto
EXPOSE 80