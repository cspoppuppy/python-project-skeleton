FROM python:3.10-alpine

WORKDIR /app

# RUN apt-get update && apt-get upgrade -y
RUN apk update
RUN apk add curl gcc musl-dev libffi-dev bash

RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH /root/.local/bin:$PATH

COPY pyproject.toml poetry.lock /app/

RUN poetry config virtualenvs.create false \
  && poetry install --no-interaction --no-ansi

COPY . /app

CMD ["/bin/bash"]
