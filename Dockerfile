FROM --platform=${BUILDPLATFORM} python:3.11-alpine AS build

RUN pip install Flask


FROM gcr.io/distroless/python3

ENV PYTHONPATH=/opt/python-app/lib

WORKDIR /app

COPY --from=build /usr/local/lib/*/site-packages /opt/python-app/lib
COPY src /app

CMD ["index.py"]