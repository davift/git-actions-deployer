FROM debian:12
# Commands run as root
RUN apt update
RUN apt install git docker.io nano htop curl wget fuse-overlayfs sudo -y
RUN apt-get install libkrb5-3 zlib1g liblttng-ust1 libssl3 libicu72 -y
RUN echo '{ "storage-driver": "vfs", "insecure-registries" : ["10.10.10.100:32000"] }' > /etc/docker/daemon.json
COPY ./kubectl /usr/local/bin/kubectl
RUN adduser --disabled-password --gecos "" runner
RUN usermod -aG docker runner
# Command run as service account runner
USER runner
RUN mkdir -p /home/runner/.kube
COPY kube_config /home/runner/.kube/config
RUN mkdir -p /home/runner/actions-runner/
RUN wget -q https://github.com/actions/runner/releases/download/v2.319.1/actions-runner-linux-x64-2.319.1.tar.gz -O /home/runner/actions-runner/actions-runner-linux-x64-2.319.1.tar.gz
RUN tar xzf /home/runner/actions-runner/actions-runner-linux-x64-2.319.1.tar.gz -C /home/runner/actions-runner/
RUN rm /home/runner/actions-runner/actions-runner-linux-x64-2.319.1.tar.gz
RUN cd /home/runner/actions-runner ; ./config.sh --unattended --url https://github.com/davift/github-actions --token <TOKEN> --replace --name actions-<ENV>
COPY entrypoint.sh /home/runner/entrypoint.sh
# Entry-point
USER root
CMD ["sh", "-c", "/home/runner/entrypoint.sh"]
