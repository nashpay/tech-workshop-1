# 1. Base OS Image
FROM ubuntu:16.04
# 2. Create the Ethereum directory
ADD geth-1.8.13 /app
COPY client.toml /app/client.toml
# 3. Setup entrypoint
WORKDIR /app
RUN chmod +x /app/geth
# 4. Setup NTP
CMD timedatectl set-ntp no
CMD apt-get install ntp
# ENTRYPOINT ["/app/geth", "--config","/app/client.toml >> /app/data/stdout.log 2>> /app/data/stderr.log"]
ENTRYPOINT ["/bin/sh", "-c", "/app/geth --config /app/client.toml >> /app/data/stdout.log 2>> /app/data/stderr.log"]
