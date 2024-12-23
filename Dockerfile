FROM python:3.14-rc-slim-bookworm

WORKDIR /app
COPY ./analytics/. /app

RUN apt update -y && apt install -y build-essential libpq-dev && \
pip install -r requirements.txt

EXPOSE 5153

CMD ["python", "app.py]
