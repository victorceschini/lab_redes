FROM python:3-slim

LABEL version="1.0.0" description="Exemplo de Servidor TCP do Kurose" maintainer="Victor Ceschini <victorceschinie@academico.ufs.br>"

WORKDIR /usr/src/tcpcapital

COPY . .

EXPOSE 12000

CMD [ "python3", "./TCPServer.py" ]
