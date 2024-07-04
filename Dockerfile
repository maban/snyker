FROM python:3.12.4-slim-bookworm

RUN mkdir /project
WORKDIR /project
RUN pip install poetry
COPY pyproject.toml poetry.lock .
RUN poetry install
COPY . .
RUN poetry run pytest
