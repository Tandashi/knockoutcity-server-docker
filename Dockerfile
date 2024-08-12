FROM --platform=linux/amd64 alpine:3.18

LABEL org.opencontainers.image.source "https://github.com/Tandashi/knockoutcity-server-docker"
LABEL org.opencontainers.image.description "A Docker Container Image that runs a Knockout City Private Server"

RUN apk add --update wine 

COPY --chmod=0755 entrypoint.sh entrypoint.sh

ENTRYPOINT ["sh", "entrypoint.sh"]
