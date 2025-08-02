# comece puxando a imagem python
FROM python:3.10-alpine

# copie o arquivo de requisitos para a imagem
COPY ./requirements.txt /app/requirements.txt

# alternar diretório de trabalho
WORKDIR /app

# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt

# copy every content from the local file to the image
COPY . /app

# configurar o contêiner para ser executado de maneira executada
ENTRYPOINT [ "python" ]

CMD ["main.py" ]