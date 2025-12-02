# Usamos Nginx en su versión Alpine (la más ligera y segura para producción)
FROM nginx:alpine

# Copiamos su archivo HTML al directorio público de Nginx
# Si tiene carpetas de 'css', 'js' o 'assets', descomente las líneas de abajo
COPY index.html /usr/share/nginx/html/index.html
# COPY css /usr/share/nginx/html/css
# COPY js /usr/share/nginx/html/js
# COPY assets /usr/share/nginx/html/assets

# Exponemos el puerto 80 (Estándar Web)
EXPOSE 80

# Nginx se inicia automáticamente, no requiere CMD extra