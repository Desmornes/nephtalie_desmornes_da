FROM python:3.11-slim

WORKDIR /app
COPY app.py .

RUN pip install flask mysql-connector-python

CMD ["python", "app.py"]