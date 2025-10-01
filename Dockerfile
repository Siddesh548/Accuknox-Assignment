FROM debian:stable-slim

ENV DEBIAN_FRONTEND=noninteractive
ENV PATH="$PATH:/usr/games"

WORKDIR /app

COPY wisecow.sh .

# Installing dependencies 
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        bash \
        netcat-openbsd \
        cowsay \
        fortune-mod \
        fortunes && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    chmod +x wisecow.sh

EXPOSE 4499

CMD ["./wisecow.sh"]
