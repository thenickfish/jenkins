FROM jenkinsci/blueocean:1.11.1

# install plugins
RUN install-plugins.sh configuration-as-code:1.7 \
    configuration-as-code-support:1.7 \
    github:1.29.4 \
    metrics:4.0.2.3 \
    role-strategy:2.10

COPY jenkins.yaml /var/jenkins_home