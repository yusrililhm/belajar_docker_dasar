FROM redis:7.2.3

ARG backup=backup
EXPOSE 6379/tcp

COPY test.log /data

RUN mkdir ${backup}
RUN mv /data/test.log ${backup}

CMD redis-server
