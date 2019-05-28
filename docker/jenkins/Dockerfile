FROM bitnami/jenkins:2

MAINTAINER JP Caparas <jp@jpcaparas.com>

USER root

# Overrides the default run cmd
COPY --chown=root:root ./scripts/run.sh /run.sh
RUN chmod 775 /run.sh

RUN apt-get update && apt-get install -y tree nano curl sudo
RUN curl https://get.docker.com/builds/Linux/x86_64/docker-latest.tgz | tar xvz -C /tmp/ && mv /tmp/docker/docker /usr/bin/docker
RUN curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod 755 /usr/local/bin/docker-compose
RUN usermod -a -G sudo bitnami
RUN echo "bitnami ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers

# https://hub.docker.com/r/bitnami/jenkins/dockerfile
EXPOSE 8080 8443 5000

ENTRYPOINT [ "/app-entrypoint.sh" ]
CMD [ "/run.sh" ] 
