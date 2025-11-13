# Imagen base
FROM public.ecr.aws/docker/library/nginx:alpine

# Copiamos nuestro HTML al directorio público de nginx2
COPY index.html /usr/share/nginx/html/index.html

# Exponemos el puerto 80
EXPOSE 80

# Iniciar nginx
CMD ["nginx", "-g", "daemon off;"]
