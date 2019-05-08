FROM python:alpine3.9

LABEL maintainer="Sebastian Svensson <ss@tinbox.nu>"

RUN apk add --no-cache dumb-init

COPY ./app /app
WORKDIR /app
RUN pip3 install -r requirements.txt

EXPOSE 5001
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["python3", "app.py"]
