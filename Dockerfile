FROM python:3.9
RUN git clone -b Kazu-Userbot https://github.com/ionmusic/Kazu-Userbot /home/Kazuuserbot/ \
    && chmod 777 /home/Kazuuserbot \
    && mkdir /home/Kazuuserbot/bin/

COPY ./sample_config.env ./config.env* /home/Kazuuserbot/

WORKDIR /home/Kazuuserbot/

RUN pip install --upgrade pip
RUN pip install --upgrade pip setuptools wheel

CMD ["bash","start"]
