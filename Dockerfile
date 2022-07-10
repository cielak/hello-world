FROM python:3.9

COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY ./hello-world /app
WORKDIR /app

RUN echo "Hello, world!"
CMD [ "hy", "server.hy"]
