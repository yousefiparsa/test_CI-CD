FROM python:3.6

RUN pip3 install --trusted-host pypi.python.org -r requirements.txt

CMD [ "gunicorn", "-w", "4", "-b" , "0.0.0.0:80", "app:app" ]
