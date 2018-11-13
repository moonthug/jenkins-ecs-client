FROM amazonlinux:1

RUN cd /tmp/ && \
    curl https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest > ecs-cli && \
    cp ecs-cli /usr/bin/ecs-cli && \
    rm ecs-cli

RUN chmod +x /usr/bin/ecs-cli
