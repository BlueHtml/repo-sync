FROM alpine

LABEL "repository"="https://github.com/BlueHtml/repo-sync"
LABEL "homepage"="https://github.com/BlueHtml/repo-sync"
LABEL "maintainer"="BlueHtml"

RUN apk add --no-cache git openssh-client && \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /

ENTRYPOINT ["sh", "/entrypoint.sh"]
