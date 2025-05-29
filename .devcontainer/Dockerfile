FROM python:3.12.10-slim-bullseye

# uv
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends curl ca-certificates \
    build-essential \
    curl \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/* \
    python3-dev \
    libatlas-base-dev \
    gfortran

WORKDIR /opt/code

# uv
RUN uv venv .venv \
    && uv python install 3.12 \
    && uv python pin 3.12

COPY ../ .

EXPOSE 8080
