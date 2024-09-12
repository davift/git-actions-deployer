FROM debian:12
RUN apt update
RUN apt install nano htop curl wget -y
RUN wget -O /tmp/cloudflared.deb -q https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb
RUN dpkg -i /tmp/cloudflared.deb && rm /tmp/cloudflared.deb
CMD ["sh", "-c", "/usr/bin/cloudflared --no-autoupdate tunnel run --token <CLOUDFLARE>"]
