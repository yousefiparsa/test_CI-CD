FROM python:3.6

WORKDIR /test

COPY . /test

RUN pip install --trusted-host pypi.python.org -r requirements.txt

CMD [ "./run_server.sh" ]
