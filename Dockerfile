# Fase de construção
FROM google/dart:latest AS build

WORKDIR /app


# Instalar as ferramentas necessárias
RUN apt-get update && apt-get install -y unzip git

# Instalar Flutter
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter
ENV PATH="$PATH:/usr/local/flutter/bin"

# Crie um novo usuário para evitar a execução como root e dê a ele as permissões necessárias
# RUN useradd -ms /bin/bash flutteruser && chown -R flutteruser: /usr/local/flutter
# USER flutteruser

# Copia o projeto para o container
COPY  . .
# COPY --chown=flutteruser . .

# Pega as dependências do Flutter
# RUN su flutteruser -c "flutter pub get"
RUN flutter pub get

# Compila para a web
RUN flutter build web

# Fase de execução - Usando Nginx para servir os arquivos estáticos
FROM nginx:alpine AS runtime

# Copia os arquivos compilados do estágio de construção para o servidor Nginx
COPY --from=build /app/build/web /usr/share/nginx/html

# Exponha a porta 80 para acessar o servidor web
EXPOSE 80

# Nginx inicia automaticamente, então não precisamos especificar um CMD
