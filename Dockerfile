FROM python:3.9.12-slim-bullseye
RUN apt update
#RUN apt-get install -y git

RUN git clone https://github.com/nzmichaelh/vedirect.git

WORKDIR "/vedirect"

RUN python3 setup.py install

CMD vedirect