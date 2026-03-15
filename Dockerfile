FROM python:3.9-slim-buster

WORKDIR /app

copy requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

copy . .

CMD ["python3", "-m" ,"flask", "run", "--host=0.0.0.0"]