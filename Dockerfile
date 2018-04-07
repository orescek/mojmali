FROM debian:stable-slim

ENV FLASK_APP app.py

RUN apt-get update && apt-get install -y python python-pip --no-install-recommends && apt-get install -y python-setuptools && pip install Flask

COPY app /home/app/

WORKDIR /home/app

EXPOSE 8989

CMD python -m flask run --port=8989 --host=0.0.0.0
