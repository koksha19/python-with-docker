FROM python:3.11.5-alpine

WORKDIR /usr/src/python-with-docker

COPY    ./requirements/backend.in ./
RUN pip install --no-cache-dir -r backend.in

COPY build ./build
COPY spaceship ./spaceship
EXPOSE 8080

CMD ["uvicorn", "spaceship.main:app", "--host", "0.0.0.0", "--port", "8080"]

