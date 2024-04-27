FROM python:latest

COPY requirments.txt .

RUN python -m pip install -r requirments.txt

WORKDIR /app
COPY . /app

EXPOSE 8081

ENTRYPOINT ["python3"]

CMD ["main.py"]


