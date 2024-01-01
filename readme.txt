Para construir a imagem e executar o contêiner:

	Construa a imagem Docker:

docker build -t meu_app_dash:1.0 .

	Execute o contêiner, especificando a porta desejada ao mapear a porta do contêiner para a porta do host (verifique a variável PORT_NUMBER no Dockerfile, usamos a porta 8080 como padrão):

docker run -p 8080:8080 meu_app_dash:1.0