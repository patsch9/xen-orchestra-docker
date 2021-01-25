FROM node:current-buster-slim

WORKDIR /srv/xo

ADD https://raw.githubusercontent.com/Jarli01/xenorchestra_installer/master/xo_install.sh xo_install.sh

RUN bash xo_install.sh

WORKDIR /opt/xen-orchestra/packages/xo-server

COPY startup.sh startup.sh

RUN rm -rfv /srv/xo

CMD bash startup.sh
