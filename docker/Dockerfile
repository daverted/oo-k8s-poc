FROM ubuntu

WORKDIR /opt/overops
RUN mkfifo /tmp/mypipe
COPY wait.sh .

COPY kubectl /usr/local/bin/kubectl
COPY patch.yaml .

CMD [ "./wait.sh" ]

# kubectl patch deployment patch-me-deployment --patch "$(cat patch.yaml)"
