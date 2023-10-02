FROM python:3.11.5-alpine3.18

WORKDIR /tmp/app

COPY requirements.txt requirements.txt

USER root

# RUN python -m venv /tmp/venv && \
#     . /tmp/venv/bin/activate && \
RUN pip install -r requirements.txt --no-cache-dir

COPY . .

CMD ["python", "main.py"]