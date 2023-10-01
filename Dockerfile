FROM python:3.11.5-alpine3.18

COPY requirements.txt requirements.txt
RUN pip install -r --no-cache-dir requirements.txt
RUN python main.py
