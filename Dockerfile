FROM nginx

#Definindo diretório de trabalho
WORKDIR /meu-site 
# arquivos que serão copiados
COPY meu-site /usr/nginx/html

COPY . /usr/share/nginx/html/

# PORTA QUE SERÁ EXPOSTA
EXPOSE 80

# comando usado para que inicie em primeiro plano 
CMD ["nginx", "-g", "daemon off;"]