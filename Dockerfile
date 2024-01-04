FROM python:3.10

WORKDIR /ubot
RUN chmod 777 /ubot

# Installing Requirements
RUN pip3 install -U pip
COPY requirements.txt .
RUN pip3 install -U -r req*

# If u want to use /update feature, uncomment the following and edit
#RUN git config --global user.email "your_email"
#RUN git config --global user.name "git_username"

# Copying All Source
COPY . .

# Starting Bot
CMD ["bash", "start"]
