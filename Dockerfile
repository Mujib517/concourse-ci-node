FROM python:3

RUN apt update

RUN pip install nodejsscan

RUN apt install jq -y

CMD [ "python" ]
