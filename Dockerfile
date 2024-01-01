#copia a imagem de referencia
FROM python:3.9-slim

#cria o diretorio da aplicacao
WORKDIR /app
COPY app.py /app

# Instala as dependências
COPY requeriments.txt /app
RUN pip install -r requeriments.txt #--upgrade

# Expõe a porta 8080 para a aplicação
EXPOSE 8080

# Comando para iniciar o Dash App com Gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:server"] 
#app é o nome do arquivo/modulo e server é o nome da variável dentro do arquivo 'server = app.server'