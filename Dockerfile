# Usa a imagem oficial do Nginx como base
FROM nginx:latest

# Define a porta que o container irá expor
EXPOSE 8080

# Copia o arquivo de configuração customizado do Nginx para o container
# Este é um passo opcional, mas útil para remapear a porta interna
# Você precisará criar um arquivo `nginx.conf`
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html

# Comando para iniciar o Nginx
# Usa 'daemon off;' para que o processo principal do Nginx
# rode em primeiro plano, o que é necessário para o Docker
CMD ["nginx", "-g", "daemon off;"]