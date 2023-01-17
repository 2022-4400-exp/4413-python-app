FROM python:3.11-alpine

RUN pip install Flask

WORKDIR /app
COPY src /app

CMD ["python", "index.py"]