FROM akbennett/lava:debian-sid

RUN export LANG=en_US.UTF-8

RUN apt-get update && apt-get -y install postgresql

ADD preseed.txt /data/
ADD stop.sh .
ADD start.sh .

RUN apt-get update && \
    debconf-set-selections < /data/preseed.txt && \
    service postgresql start && DEBIAN_FRONTEND=noninteractive apt-get -y install lava && \
    a2dissite 000-default && \
    a2ensite lava-server && \
    /stop.sh

CMD bash -C '/start.sh' && \
            '/bin/bash'

