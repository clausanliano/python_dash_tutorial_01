#copia a imagem de referencia
FROM python:3.9-slim

# Define a porta como uma variável de ambiente
ENV PORT_NUMBER=8080

#cria o diretorio da aplicacao
WORKDIR /app
COPY app.py /app

# Instala as dependências
COPY requeriments.txt /app
RUN pip install -r requeriments.txt #--upgrade

# Expõe a porta (descrita na variável $PORT_NUMBER) para a aplicação
EXPOSE $PORT_NUMBER

# Comando para iniciar o Dash App com Gunicorn
CMD gunicorn -b 0.0.0.0:$PORT_NUMBER app:server
#app é o nome do arquivo/modulo e server é o nome da variável dentro do arquivo 'server = app.server'