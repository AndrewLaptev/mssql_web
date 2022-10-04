FROM python:3.9-alpine as build-image
RUN apk add build-base
RUN apk add curl
RUN apk add gpg
RUN apk add unixodbc-dev

RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
ENV PYTHONUNBUFFERED=1

WORKDIR /service
COPY . /service
RUN sh install_odbc.sh
RUN pip install --disable-pip-version-check --upgrade --no-cache-dir -r requirements.txt

ENTRYPOINT ["python", "initializator.py"]