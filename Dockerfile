FROM ubuntu:22.04

LABEL maintainer="yourname"

RUN apt-get update && \
    apt-get install -y cowsay fortune netcat-openbsd && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY wisecow.sh /app/wisecow.sh

RUN chmod +x /app/wisecow.sh

EXPOSE 4499

CMD ["./wisecow.sh"]
