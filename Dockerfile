FROM python:3.8


RUN apt-get -y update
RUN apt-get install -y ffmpeg



COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 1337

USER 1000

CMD [ "python", "./server.py" ]
